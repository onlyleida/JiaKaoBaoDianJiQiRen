package cn.mucang.sundial.android.tcp.upload;

import android.graphics.Bitmap;
import android.text.TextUtils;
import cn.mucang.android.core.config.MucangConfig;
import cn.mucang.android.core.utils.g;
import cn.mucang.android.core.utils.n0;
import cn.mucang.android.core.utils.p0;
import cn.mucang.android.core.utils.u;
import cn.mucang.sundial.android.SundialManager;
import cn.mucang.sundial.android.db.entity.PhotoRecord;
import cn.mucang.sundial.android.eventbus.LiveBus;
import cn.mucang.sundial.android.eventbus.event.UploadImageEvent;
import cn.mucang.sundial.android.log.SundialLog;
import cn.mucang.sundial.android.tcp.data.DataManager;
import cn.mucang.sundial.android.tcp.data.gnss.GNSSData;
import cn.mucang.sundial.android.tcp.message.Parameter;
import cn.mucang.sundial.android.tcp.message.training.send.ReportQueryPhotoResponse;
import cn.mucang.sundial.android.tcp.message.training.send.UploadPhotoPacketRequest;
import cn.mucang.sundial.android.tcp.message.training.send.UploadPhotoStartRequest;
import cn.mucang.sundial.android.tcp.utils.BitmapUtil;
import cn.mucang.sundial.android.tcp.utils.PictureUtil;
import cn.mucang.sundial.library.device.BaseCamera;
import com.mobile.auth.gatewayauth.ResultCode;
import java.io.ByteArrayOutputStream;
import java.io.File;
import java.io.FileFilter;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.LinkedList;
import java.util.List;
import java.util.concurrent.ExecutionException;
import java.util.concurrent.TimeUnit;

/* JADX INFO: loaded from: classes5.dex */
public class UploadImageManager {
    private static final int COMPRESS_MAX_SIZE_MAX = 100;
    public static final String TAG = "UploadImageManager";
    private final List<PhotoRecord> classroomPhotoTaskList;
    private volatile UploadPhotoStartRequest initRequest;
    private volatile UploadPhotoPacketRequest packetRequest;
    private volatile PhotoRecord photoRecord;
    private final Runnable timeOutRunnable;

    private static class UploadImageManagerHolder {
        private static final UploadImageManager sInstance = new UploadImageManager();

        private UploadImageManagerHolder() {
        }
    }

    static /* synthetic */ boolean a(long j, File file) {
        return file.lastModified() < j;
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX INFO: renamed from: b, reason: merged with bridge method [inline-methods] */
    public /* synthetic */ void c() {
        try {
            SundialLog.com("上传照片超时");
            uploadComplete(UploadImageResult.ERROR, null);
        } catch (Exception unused) {
        }
    }

    private String createFileName(String str) {
        String str2;
        long jCurrentTimeMillis = System.currentTimeMillis();
        if (str == null) {
            str2 = jCurrentTimeMillis + BaseCamera.SUFFIX_JPEG;
        } else {
            str2 = jCurrentTimeMillis + str + BaseCamera.SUFFIX_JPEG;
        }
        return new File(new File(PictureUtil.getPicDir(MucangConfig.getContext())), str2).getAbsolutePath();
    }

    private byte[] createPhotoData(String str, String str2, int i) throws ExecutionException, InterruptedException {
        if (TextUtils.isEmpty(str)) {
            return new byte[0];
        }
        Bitmap bitmap = BitmapUtil.getBitmap(str);
        if (bitmap == null || bitmap.isRecycled()) {
            return new byte[0];
        }
        Bitmap zoomImageByMatrix = PictureUtil.getZoomImageByMatrix(bitmap, 1280, 720, false);
        int intParameter = Parameter.getIntParameter(112L, 5);
        if (intParameter < 1 || intParameter > 10) {
            intParameter = 6;
        }
        ByteArrayOutputStream byteArrayOutputStreamCompressStream = PictureUtil.compressStream(zoomImageByMatrix, 100 - (intParameter * 10));
        if (zoomImageByMatrix != bitmap) {
            zoomImageByMatrix.recycle();
        }
        if (MucangConfig.v()) {
            PictureUtil.savePic(byteArrayOutputStreamCompressStream, createFileName("_compressed"));
        }
        return byteArrayOutputStreamCompressStream != null ? byteArrayOutputStreamCompressStream.toByteArray() : new byte[0];
    }

    private void deleteOldData() {
        File[] fileArrListFiles;
        try {
            final long jCurrentTimeMillis = System.currentTimeMillis() - TimeUnit.DAYS.toMillis(3L);
            File file = new File(PictureUtil.getPicDir(MucangConfig.getContext()));
            if (!file.exists() || (fileArrListFiles = file.listFiles(new FileFilter() { // from class: cn.mucang.sundial.android.tcp.upload.c
                @Override // java.io.FileFilter
                public final boolean accept(File file2) {
                    return UploadImageManager.a(jCurrentTimeMillis, file2);
                }
            })) == null) {
                return;
            }
            for (File file2 : fileArrListFiles) {
                file2.delete();
            }
        } catch (Exception unused) {
        }
    }

    public static UploadImageManager getInstance() {
        return UploadImageManagerHolder.sInstance;
    }

    private boolean initializeRequest(PhotoRecord photoRecord) throws ExecutionException, InterruptedException {
        if (photoRecord == null) {
            return false;
        }
        if (!SundialManager.getInstance().hasConnection()) {
            SundialLog.com("没有网络连接，取消照片上传");
            return false;
        }
        deleteOldData();
        SundialLog.com("开始上传照片，photoId = " + photoRecord.getPhotoId());
        UploadPhotoPacketRequest uploadPhotoPacketRequest = new UploadPhotoPacketRequest();
        uploadPhotoPacketRequest.setPhotoId(photoRecord.getPhotoId());
        byte[] bArrCreatePhotoData = createPhotoData(photoRecord.getPath(), photoRecord.getUserCode(), photoRecord.getEventType());
        if (bArrCreatePhotoData == null || bArrCreatePhotoData.length == 0) {
            return false;
        }
        uploadPhotoPacketRequest.setPhotoData(bArrCreatePhotoData);
        int iG = g.g(SundialManager.getInstance().createRawMessage(uploadPhotoPacketRequest));
        this.packetRequest = uploadPhotoPacketRequest;
        UploadPhotoStartRequest uploadPhotoStartRequest = new UploadPhotoStartRequest();
        uploadPhotoStartRequest.setPhotoId(photoRecord.getPhotoId());
        uploadPhotoStartRequest.setUserCode(photoRecord.getUserCode());
        uploadPhotoStartRequest.setUploadMode(photoRecord.getUploadMode());
        uploadPhotoStartRequest.setCameraChannel(0);
        uploadPhotoStartRequest.setImageSize(4);
        uploadPhotoStartRequest.setEventType(photoRecord.getEventType());
        uploadPhotoStartRequest.setTotalCount(iG);
        uploadPhotoStartRequest.setPhotoDataSize(bArrCreatePhotoData.length);
        uploadPhotoStartRequest.setClassroomId(photoRecord.getClassroomId());
        String gnssData = photoRecord.getGnssData();
        uploadPhotoStartRequest.setGnssData(n0.e(gnssData) ? GNSSData.getGNSSData().encode() : GNSSData.toBytes(gnssData));
        uploadPhotoStartRequest.setFaceDetection(100);
        this.initRequest = uploadPhotoStartRequest;
        this.photoRecord = photoRecord;
        SundialLog.com("图片上传初始化：" + uploadPhotoStartRequest);
        u.d(this.timeOutRunnable, 25000L);
        SundialManager.getInstance().sendMessage(uploadPhotoStartRequest);
        return true;
    }

    private String watermark(String str, String str2, int i, int i2) {
        Bitmap bitmap;
        try {
            if (!TextUtils.isEmpty(str) && (bitmap = BitmapUtil.getBitmap(str)) != null && !bitmap.isRecycled()) {
                Bitmap bitmapDrawTextToBitmap = BitmapUtil.drawTextToBitmap(bitmap, str2, i, i2);
                String strCreateFileName = createFileName("_watermark");
                PictureUtil.savePic(bitmapDrawTextToBitmap, strCreateFileName);
                if (!bitmapDrawTextToBitmap.isRecycled()) {
                    bitmapDrawTextToBitmap.recycle();
                }
                return strCreateFileName;
            }
        } catch (Exception e2) {
            SundialLog.normal("打水印失败 " + e2.getLocalizedMessage());
        }
        return str;
    }

    public PhotoRecord createPhotoRecord(String str, long j, int i, int i2, String str2, int i3) {
        return createPhotoRecord(str, j, i, i2, str2, i3, System.currentTimeMillis());
    }

    public synchronized UploadPhotoPacketRequest getPackageRequest() {
        return this.packetRequest;
    }

    public synchronized PhotoRecord getPhotoRecord() {
        return this.photoRecord;
    }

    public synchronized boolean isIdle() {
        boolean z;
        boolean z2;
        boolean z3;
        z = this.packetRequest == null;
        z2 = this.initRequest == null;
        z3 = this.photoRecord == null;
        SundialLog.com("是否闲置状态: " + z + "," + z2 + "," + z3);
        return z && z2 && z3;
    }

    public synchronized void queryPhotoRecord(long j, long j2) {
        SundialLog.com("查询照片记录" + p0.b(j) + "至" + p0.b(j2));
        List<PhotoRecord> photoRecordByTime = DataManager.getInstance().getPhotoRecordByTime(j, j2);
        ReportQueryPhotoResponse reportQueryPhotoResponse = new ReportQueryPhotoResponse();
        boolean zIsEmpty = photoRecordByTime.isEmpty();
        if (!zIsEmpty) {
            Iterator<PhotoRecord> it = photoRecordByTime.iterator();
            while (true) {
                if (it.hasNext()) {
                    if (it.next().getUploadStatus() == 0) {
                        zIsEmpty = false;
                        break;
                    }
                } else {
                    zIsEmpty = true;
                    break;
                }
            }
        } else {
            SundialLog.com("查询结果为空");
        }
        reportQueryPhotoResponse.setFinished(zIsEmpty);
        ArrayList arrayList = new ArrayList();
        int i = 0;
        for (int i2 = 0; i2 < photoRecordByTime.size(); i2++) {
            i++;
            arrayList.add(photoRecordByTime.get(i2).getPhotoId());
        }
        reportQueryPhotoResponse.setTotalCount(i);
        reportQueryPhotoResponse.setPhotoList(arrayList);
        SundialLog.com("上报照片查询结果，数量为：" + arrayList.size());
        SundialManager.getInstance().sendMessage(reportQueryPhotoResponse);
    }

    public void savePhotoRecord(PhotoRecord photoRecord) {
        SundialLog.normal("保存照片记录：" + photoRecord);
        DataManager.getInstance().savePhotoRecord(photoRecord);
    }

    public synchronized boolean startUploadNextPhoto() throws ExecutionException, InterruptedException {
        List<PhotoRecord> list = this.classroomPhotoTaskList;
        if (list.isEmpty()) {
            return false;
        }
        PhotoRecord photoRecord = list.get(0);
        SundialLog.com("开始自动上传下一张照片，photoId = " + photoRecord.getPhotoId());
        return initializeRequest(photoRecord);
    }

    public synchronized void uploadComplete(int i, String str) throws ExecutionException, InterruptedException {
        u.e(this.timeOutRunnable);
        this.initRequest = null;
        this.packetRequest = null;
        PhotoRecord photoRecord = this.photoRecord;
        StringBuilder sb = new StringBuilder();
        sb.append("上传照片 ");
        sb.append(i == UploadImageResult.SUCCESS ? ResultCode.MSG_SUCCESS : ResultCode.MSG_FAILED);
        sb.append("，photoId = ");
        sb.append(photoRecord != null ? photoRecord.getPhotoId() : -1);
        SundialLog.com(sb.toString());
        if (photoRecord != null) {
            this.photoRecord = null;
            if (i == UploadImageResult.SUCCESS) {
                DataManager.getInstance().setPhotoRecordUploaded(photoRecord.getPhotoId());
            }
            this.classroomPhotoTaskList.remove(photoRecord);
            LiveBus.post(new UploadImageEvent(i, str, photoRecord.getPhotoId()));
            if (!startUploadNextPhoto()) {
                Iterator<PhotoRecord> it = this.classroomPhotoTaskList.iterator();
                while (it.hasNext()) {
                    LiveBus.post(new UploadImageEvent(UploadImageResult.ERROR, "", it.next().getPhotoId()));
                }
            }
        }
    }

    public synchronized void uploadPhoto(String str, boolean z) throws ExecutionException, InterruptedException {
        PhotoRecord photoRecord = DataManager.getInstance().getPhotoRecord(str);
        if (photoRecord != null) {
            if (z) {
                photoRecord.setEventType(EventType.PLATFORM_QUERY.valueOf());
                photoRecord.setUploadMode(UploadMode.PLATFORM_QUERY.valueOf());
            }
            uploadPhoto(photoRecord);
        }
    }

    public synchronized void uploadPhotoByClassroom(PhotoRecord photoRecord) throws ExecutionException, InterruptedException {
        SundialLog.normal("上传同一课堂照片集合，课堂ID：" + photoRecord.getClassroomId());
        if (!isIdle()) {
            LiveBus.post(new UploadImageEvent(UploadImageResult.TASK_BUSY, photoRecord.getPhotoId()));
            return;
        }
        List<PhotoRecord> photoRecordByClassroom = DataManager.getInstance().getPhotoRecordByClassroom(photoRecord.getClassroomId());
        this.classroomPhotoTaskList.clear();
        for (int i = 0; i < photoRecordByClassroom.size(); i++) {
            if (TextUtils.equals(photoRecordByClassroom.get(i).getPhotoId(), photoRecord.getPhotoId())) {
                photoRecordByClassroom.remove(i);
                break;
            }
        }
        photoRecordByClassroom.add(photoRecord);
        this.classroomPhotoTaskList.addAll(photoRecordByClassroom);
        if (!startUploadNextPhoto()) {
            Iterator<PhotoRecord> it = this.classroomPhotoTaskList.iterator();
            while (it.hasNext()) {
                LiveBus.post(new UploadImageEvent(UploadImageResult.ERROR, "", it.next().getPhotoId()));
            }
        }
    }

    private UploadImageManager() {
        this.classroomPhotoTaskList = new LinkedList();
        this.timeOutRunnable = new Runnable() { // from class: cn.mucang.sundial.android.tcp.upload.b
            @Override // java.lang.Runnable
            public final void run() {
                this.f10372a.c();
            }
        };
    }

    public PhotoRecord createPhotoRecord(String str, long j, int i, int i2, String str2, int i3, long j2) {
        String strWatermark = watermark(str2, str, i2, i3);
        PhotoRecord photoRecord = new PhotoRecord();
        photoRecord.setPhotoId((j2 / 1000) + "");
        photoRecord.setUserCode(str);
        photoRecord.setClassroomId(j);
        photoRecord.setUploadMode(i);
        photoRecord.setEventType(i2);
        photoRecord.setPath(strWatermark);
        photoRecord.setRecordTime(j2);
        photoRecord.setGnssData(GNSSData.toString(GNSSData.getGNSSData(j2).encode()));
        return photoRecord;
    }

    public synchronized void uploadPhoto(PhotoRecord photoRecord) throws ExecutionException, InterruptedException {
        SundialLog.normal("上传照片");
        if (!isIdle()) {
            LiveBus.post(new UploadImageEvent(UploadImageResult.TASK_BUSY, photoRecord != null ? photoRecord.getPhotoId() : ""));
        } else {
            if (!initializeRequest(photoRecord)) {
                LiveBus.post(new UploadImageEvent(UploadImageResult.ERROR, photoRecord != null ? photoRecord.getPhotoId() : ""));
            }
        }
    }
}
