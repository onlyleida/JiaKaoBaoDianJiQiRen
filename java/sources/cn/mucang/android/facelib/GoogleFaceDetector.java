package cn.mucang.android.facelib;

import android.graphics.Bitmap;
import android.graphics.PointF;
import cn.mucang.jiakaoyi.uilib.login.face.IFaceDetector;
import cn.mucang.jiakaoyi.uilib.login.face.LandmarkEntity;
import cn.mucang.jiakaoyi.uilib.login.face.OpencvHelper;
import com.google.android.datatransport.runtime.TransportContext;
import com.google.android.datatransport.runtime.scheduling.jobscheduling.WorkScheduler;
import com.google.android.exoplayer2.DefaultRenderersFactory;
import com.google.android.gms.tasks.OnFailureListener;
import com.google.android.gms.tasks.OnSuccessListener;
import com.google.android.gms.tasks.Task;
import com.google.mlkit.vision.common.InputImage;
import com.google.mlkit.vision.face.Face;
import com.google.mlkit.vision.face.FaceDetector;
import com.google.mlkit.vision.face.FaceLandmark;
import java.util.Iterator;
import java.util.List;
import kotlin.Metadata;
import kotlin.jvm.internal.r;
import org.opencv.android.Utils;
import org.opencv.core.CvType;
import org.opencv.core.Mat;
import org.opencv.core.Rect;
import org.opencv.imgproc.Imgproc;

/* JADX INFO: renamed from: cn.mucang.android.facelib.t, reason: from Kotlin metadata */
/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000N\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0000\n\u0002\u0010\u0012\n\u0002\b\u0007\n\u0002\u0010\u0007\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0006\u0018\u00002\u00020\u0001:\u0001\"B\r\u0012\u0006\u0010\u0002\u001a\u00020\u0003¢\u0006\u0002\u0010\u0004J*\u0010\u000e\u001a\u0004\u0018\u00010\u000f2\u0006\u0010\u0010\u001a\u00020\u00112\u0006\u0010\u0012\u001a\u00020\u00132\u0006\u0010\u0014\u001a\u00020\u00112\u0006\u0010\u0015\u001a\u00020\u0011H\u0002J\"\u0010\u0016\u001a\u0004\u0018\u00010\u000f2\u0006\u0010\u0017\u001a\u00020\u00132\u0006\u0010\u0014\u001a\u00020\u00112\u0006\u0010\u0015\u001a\u00020\u0011H\u0016J\"\u0010\u0018\u001a\u0004\u0018\u00010\u000f2\u0006\u0010\u0019\u001a\u00020\u00132\u0006\u0010\u0014\u001a\u00020\u00112\u0006\u0010\u0015\u001a\u00020\u0011H\u0016J\b\u0010\u001a\u001a\u00020\u001bH\u0016J\b\u0010\u001c\u001a\u00020\u001dH\u0016J \u0010\u001e\u001a\u00020\f2\u0006\u0010\u001f\u001a\u00020\b2\u0006\u0010\u0014\u001a\u00020\u00112\u0006\u0010\u0015\u001a\u00020\u0011H\u0016J\b\u0010 \u001a\u00020\fH\u0016J\b\u0010!\u001a\u00020\u001dH\u0016R\u0010\u0010\u0005\u001a\u0004\u0018\u00010\u0006X\u0082\u000e¢\u0006\u0002\n\u0000R\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004¢\u0006\u0002\n\u0000R\u0010\u0010\u0007\u001a\u0004\u0018\u00010\bX\u0082\u000e¢\u0006\u0002\n\u0000R\u0010\u0010\t\u001a\u0004\u0018\u00010\nX\u0082\u000e¢\u0006\u0002\n\u0000R\u000e\u0010\u000b\u001a\u00020\fX\u0082\u000e¢\u0006\u0002\n\u0000R\u0010\u0010\r\u001a\u0004\u0018\u00010\nX\u0082\u000e¢\u0006\u0002\n\u0000¨\u0006#"}, d2 = {"Lcn/mucang/android/facelib/GoogleFaceDetector;", "Lcn/mucang/jiakaoyi/uilib/login/face/IFaceDetector;", "detector", "Lcom/google/mlkit/vision/face/FaceDetector;", "(Lcom/google/mlkit/vision/face/FaceDetector;)V", "bitmap", "Landroid/graphics/Bitmap;", "faceRect", "Lorg/opencv/core/Rect;", "frame", "Lorg/opencv/core/Mat;", "isDestroy", "", "rgb", "containFace", "Lcn/mucang/jiakaoyi/uilib/login/face/FaceResult;", "code", "", "data", "", "preViewW", "preViewH", "containFaceI420", "i420Data", "containFaceNv21", "nv21Yuv", "getContainRatio", "", "init", "", "intercept", "rect", "isActive", "release", "EmptyScheduler", "facelib_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
public final class GoogleFaceDetector implements IFaceDetector {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final FaceDetector f3038a;
    private Mat b;
    private Mat c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private Bitmap f3039d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private Rect f3040e;

    /* JADX INFO: renamed from: cn.mucang.android.facelib.t$a */
    @Metadata(d1 = {"\u0000$\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0000\n\u0002\u0010\u000b\n\u0000\u0018\u00002\u00020\u0001B\u0005¢\u0006\u0002\u0010\u0002J\u001a\u0010\u0003\u001a\u00020\u00042\b\u0010\u0005\u001a\u0004\u0018\u00010\u00062\u0006\u0010\u0007\u001a\u00020\bH\u0016J\"\u0010\u0003\u001a\u00020\u00042\b\u0010\u0005\u001a\u0004\u0018\u00010\u00062\u0006\u0010\u0007\u001a\u00020\b2\u0006\u0010\t\u001a\u00020\nH\u0016¨\u0006\u000b"}, d2 = {"Lcn/mucang/android/facelib/GoogleFaceDetector$EmptyScheduler;", "Lcom/google/android/datatransport/runtime/scheduling/jobscheduling/WorkScheduler;", "()V", "schedule", "", "p0", "Lcom/google/android/datatransport/runtime/TransportContext;", "p1", "", "p2", "", "facelib_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
    public static final class a implements WorkScheduler {
        @Override // com.google.android.datatransport.runtime.scheduling.jobscheduling.WorkScheduler
        public void schedule(TransportContext p0, int p1) {
            cn.mucang.android.jiakaoyi.framework.log.f.o("google job service: 发送job2");
        }

        @Override // com.google.android.datatransport.runtime.scheduling.jobscheduling.WorkScheduler
        public void schedule(TransportContext p0, int p1, boolean p2) {
            cn.mucang.android.jiakaoyi.framework.log.f.o("google job service: 发送job3");
        }
    }

    public GoogleFaceDetector(FaceDetector detector) {
        r.e(detector, "detector");
        this.f3038a = detector;
    }

    private final synchronized cn.mucang.jiakaoyi.uilib.login.face.m e(int i, byte[] bArr, int i2, int i3) {
        InputImage inputImageFromByteArray;
        Task<List<Face>> taskProcess;
        Task<List<Face>> taskAddOnSuccessListener;
        List<Face> result;
        Object next;
        if (this.b == null) {
            this.b = new Mat((i3 * 3) / 2, i2, CvType.CV_8UC1);
        }
        if (this.c == null) {
            this.c = new Mat();
        }
        Mat mat = this.b;
        if (mat != null) {
            mat.put(0, 0, bArr);
        }
        Imgproc.cvtColor(this.b, this.c, i);
        if (i == 100) {
            if (this.f3039d == null) {
                Mat mat2 = this.c;
                r.c(mat2);
                int iWidth = mat2.width();
                Mat mat3 = this.c;
                r.c(mat3);
                this.f3039d = Bitmap.createBitmap(iWidth, mat3.height(), Bitmap.Config.ARGB_8888);
            }
            Utils.matToBitmap(this.c, this.f3039d);
            Bitmap bitmap = this.f3039d;
            r.c(bitmap);
            inputImageFromByteArray = InputImage.fromBitmap(bitmap, 0);
        } else {
            inputImageFromByteArray = InputImage.fromByteArray(bArr, i2, i3, 0, 17);
        }
        r.d(inputImageFromByteArray, "if (code == Imgproc.COLO…GE_FORMAT_NV21)\n        }");
        FaceDetector faceDetector = this.f3038a;
        Task<List<Face>> taskAddOnFailureListener = (faceDetector == null || (taskProcess = faceDetector.process(inputImageFromByteArray)) == null || (taskAddOnSuccessListener = taskProcess.addOnSuccessListener(new OnSuccessListener() { // from class: cn.mucang.android.facelib.k
            @Override // com.google.android.gms.tasks.OnSuccessListener
            public final void onSuccess(Object obj) {
                GoogleFaceDetector.f((List) obj);
            }
        })) == null) ? null : taskAddOnSuccessListener.addOnFailureListener(new OnFailureListener() { // from class: cn.mucang.android.facelib.j
            @Override // com.google.android.gms.tasks.OnFailureListener
            public final void onFailure(Exception exc) {
                GoogleFaceDetector.g(exc);
            }
        });
        r.d(taskAddOnFailureListener, "detector?.process(image)…lureListener {\n\n        }");
        long jCurrentTimeMillis = System.currentTimeMillis();
        while (!taskAddOnFailureListener.isComplete() && !taskAddOnFailureListener.isCanceled()) {
            if (System.currentTimeMillis() - jCurrentTimeMillis > DefaultRenderersFactory.DEFAULT_ALLOWED_VIDEO_JOINING_TIME_MS) {
                cn.mucang.android.jiakaoyi.framework.log.f.g("google人脸检测超时");
                break;
            }
            Thread.sleep(16L);
        }
        if (taskAddOnFailureListener.isSuccessful() && (result = taskAddOnFailureListener.getResult()) != null) {
            Iterator<T> it = result.iterator();
            if (it.hasNext()) {
                next = it.next();
                if (it.hasNext()) {
                    Face face = (Face) next;
                    int iWidth2 = face.getBoundingBox().width() * face.getBoundingBox().height();
                    do {
                        Object next2 = it.next();
                        Face face2 = (Face) next2;
                        int iWidth3 = face2.getBoundingBox().width() * face2.getBoundingBox().height();
                        if (iWidth2 < iWidth3) {
                            next = next2;
                            iWidth2 = iWidth3;
                        }
                    } while (it.hasNext());
                }
            } else {
                next = null;
            }
            Face face3 = (Face) next;
            if (face3 != null) {
                if (this.f3040e == null) {
                    this.f3040e = new Rect();
                }
                android.graphics.Rect boundingBox = face3.getBoundingBox();
                if (boundingBox.left < 0 || boundingBox.top < 0 || boundingBox.right > i2 || boundingBox.bottom > i3 || Math.max(boundingBox.width(), boundingBox.height()) / Math.min(boundingBox.width(), boundingBox.height()) >= 2) {
                    return null;
                }
                LandmarkEntity.a aVar = LandmarkEntity.k;
                FaceLandmark landmark = face3.getLandmark(4);
                PointF position = landmark == null ? null : landmark.getPosition();
                FaceLandmark landmark2 = face3.getLandmark(10);
                PointF position2 = landmark2 == null ? null : landmark2.getPosition();
                FaceLandmark landmark3 = face3.getLandmark(6);
                PointF position3 = landmark3 == null ? null : landmark3.getPosition();
                FaceLandmark landmark4 = face3.getLandmark(5);
                PointF position4 = landmark4 == null ? null : landmark4.getPosition();
                FaceLandmark landmark5 = face3.getLandmark(11);
                PointF position5 = landmark5 == null ? null : landmark5.getPosition();
                FaceLandmark landmark6 = face3.getLandmark(0);
                PointF position6 = landmark6 == null ? null : landmark6.getPosition();
                FaceLandmark landmark7 = face3.getLandmark(3);
                PointF position7 = landmark7 == null ? null : landmark7.getPosition();
                FaceLandmark landmark8 = face3.getLandmark(9);
                PointF position8 = landmark8 == null ? null : landmark8.getPosition();
                FaceLandmark landmark9 = face3.getLandmark(1);
                PointF position9 = landmark9 == null ? null : landmark9.getPosition();
                FaceLandmark landmark10 = face3.getLandmark(7);
                LandmarkEntity landmarkEntityA = aVar.a(position, position2, position3, position4, position5, position6, position7, position8, position9, landmark10 == null ? null : landmark10.getPosition());
                if (landmarkEntityA == null) {
                    return null;
                }
                Rect rect = this.f3040e;
                if (rect != null) {
                    rect.x = face3.getBoundingBox().left;
                    rect.width = face3.getBoundingBox().width();
                    rect.y = face3.getBoundingBox().top;
                    rect.height = face3.getBoundingBox().height();
                    if (!OpencvHelper.f9399a.a(rect, i2, i3)) {
                        return null;
                    }
                }
                return new cn.mucang.jiakaoyi.uilib.login.face.m(this.c, this.f3040e, face3.getHeadEulerAngleX(), face3.getHeadEulerAngleY(), face3.getHeadEulerAngleZ(), landmarkEntityA);
            }
        }
        return null;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void f(List list) {
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void g(Exception it) {
        r.e(it, "it");
    }

    @Override // cn.mucang.jiakaoyi.uilib.login.face.IFaceDetector
    public float a() {
        return 0.2f;
    }

    @Override // cn.mucang.jiakaoyi.uilib.login.face.IFaceDetector
    public cn.mucang.jiakaoyi.uilib.login.face.m b(byte[] nv21Yuv, int i, int i2) {
        r.e(nv21Yuv, "nv21Yuv");
        return e(92, nv21Yuv, i, i2);
    }

    @Override // cn.mucang.jiakaoyi.uilib.login.face.IFaceDetector
    public boolean c(Rect rect, int i, int i2) {
        r.e(rect, "rect");
        return false;
    }

    @Override // cn.mucang.jiakaoyi.uilib.login.face.IFaceDetector
    public cn.mucang.jiakaoyi.uilib.login.face.m d(byte[] i420Data, int i, int i2) {
        r.e(i420Data, "i420Data");
        return e(100, i420Data, i, i2);
    }

    @Override // cn.mucang.jiakaoyi.uilib.login.face.IFaceDetector
    public void init() {
    }

    @Override // cn.mucang.jiakaoyi.uilib.login.face.IFaceDetector
    public synchronized void release() {
        Mat mat = this.b;
        if (mat != null) {
            mat.release();
        }
        this.b = null;
        Mat mat2 = this.c;
        if (mat2 != null) {
            mat2.release();
        }
        this.c = null;
    }
}
