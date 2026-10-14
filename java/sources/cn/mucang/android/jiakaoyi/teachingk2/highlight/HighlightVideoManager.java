package cn.mucang.android.jiakaoyi.teachingk2.highlight;

import android.annotation.SuppressLint;
import android.app.Activity;
import android.content.Intent;
import android.content.res.AssetFileDescriptor;
import android.graphics.Point;
import android.media.MediaCodec;
import android.media.MediaExtractor;
import android.media.MediaFormat;
import android.media.MediaMuxer;
import android.util.Pair;
import androidx.lifecycle.a0;
import cn.mucang.android.core.config.MucangConfig;
import cn.mucang.android.core.utils.n0;
import cn.mucang.android.core.utils.u;
import cn.mucang.android.jiakaoyi.engine.trace.TraceExtraData;
import cn.mucang.android.jiakaoyi.framework.bus.LiveBus;
import cn.mucang.android.jiakaoyi.framework.dataprovider.DataProviderRegister;
import cn.mucang.android.jiakaoyi.framework.utils.q0;
import cn.mucang.android.jiakaoyi.teachingk2.config.LocalConfig;
import cn.mucang.android.jiakaoyi.teachingk2.config.LocalConfigManager;
import cn.mucang.android.jiakaoyi.teachingk2.highlight.video.VideoRecorder;
import cn.mucang.android.jiakaoyi.teachingk2.login.LoginHelper;
import cn.mucang.android.jiakaoyi.teachingk2.login.RobotAccount;
import cn.mucang.android.jiakaoyi.teachingk2.p007unity.models.train.TrainConfigModel;
import cn.mucang.android.jiakaoyi.teachingk2.videosplit.Segment;
import cn.mucang.jiakaoyi.uilib.broadcast.LauncherBroadcastSender;
import cn.mucang.jiakaoyi.uilib.login.model.XyUserModel;
import cn.mucang.jiakaoyi.uilib.ui.setting.AbsSettingProvider;
import com.alibaba.fastjson.JSON;
import com.tencent.tauth.AuthActivity;
import java.io.File;
import java.io.IOException;
import java.nio.ByteBuffer;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import kotlin.Metadata;
import kotlin.Result;
import kotlin.v;
import kotlinx.coroutines.j0;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000r\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\b\u000b\n\u0002\u0010\b\n\u0000\n\u0002\u0010\u0007\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0002\b\u0007\bÆ\u0002\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J\u0012\u0010\u0018\u001a\u0004\u0018\u00010\u00192\u0006\u0010\u001a\u001a\u00020\u0019H\u0003J6\u0010\u001b\u001a\u00020\u001c2\u0006\u0010\u001d\u001a\u00020\u001e2\u0006\u0010\u001f\u001a\u00020\u00192\f\u0010 \u001a\b\u0012\u0004\u0012\u00020\"0!2\u0006\u0010#\u001a\u00020\u00192\u0006\u0010$\u001a\u00020\u0019H\u0002J\u0010\u0010%\u001a\u00020\u001c2\u0006\u0010&\u001a\u00020\u0006H\u0007J\u0006\u0010'\u001a\u00020\u001cJ\u0006\u0010(\u001a\u00020\u001cJ\u0006\u0010)\u001a\u00020\u001cJ\u0010\u0010*\u001a\u00020\u001c2\u0006\u0010\u001d\u001a\u00020\u001eH\u0016J*\u0010+\u001a\u00020\u001c2\u0006\u0010\u001d\u001a\u00020\u001e2\f\u0010 \u001a\b\u0012\u0004\u0012\u00020\"0!2\n\b\u0002\u0010\u0007\u001a\u0004\u0018\u00010\u0004H\u0007J \u0010,\u001a\u00020\u001c2\u0006\u0010-\u001a\u00020.2\u0006\u0010/\u001a\u0002002\u0006\u00101\u001a\u000200H\u0002J\b\u00102\u001a\u00020\u001cH\u0007J\u0010\u00103\u001a\u00020\u001c2\u0006\u00104\u001a\u00020\u001eH\u0007J\u0018\u00105\u001a\u00020\u001c2\u0006\u00106\u001a\u0002072\u0006\u00108\u001a\u00020\u001eH\u0007J\u0010\u00109\u001a\u00020\u001c2\u0006\u00106\u001a\u000207H\u0007J\u0010\u0010:\u001a\u00020\u001c2\u0006\u0010;\u001a\u00020.H\u0007J2\u0010<\u001a\u00020\u001c2\u0006\u0010=\u001a\u00020\u00192\u0006\u0010$\u001a\u00020\u00192\b\u0010\u0007\u001a\u0004\u0018\u00010\u00042\u0006\u0010\u001f\u001a\u00020\u00192\u0006\u0010\u001d\u001a\u00020\u001eH\u0002R\u0010\u0010\u0003\u001a\u0004\u0018\u00010\u0004X\u0082\u000e¢\u0006\u0002\n\u0000R\u000e\u0010\u0005\u001a\u00020\u0006X\u0082\u000e¢\u0006\u0002\n\u0000R\u000e\u0010\u0007\u001a\u00020\u0004X\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\b\u001a\u00020\u0006X\u0082\u000e¢\u0006\u0002\n\u0000R&\u0010\t\u001a\u0004\u0018\u00010\n8\u0006@\u0006X\u0087\u000e¢\u0006\u0014\n\u0000\u0012\u0004\b\u000b\u0010\u0002\u001a\u0004\b\f\u0010\r\"\u0004\b\u000e\u0010\u000fR\u0014\u0010\u0010\u001a\u0004\u0018\u00010\u00118\u0002@\u0002X\u0083\u000e¢\u0006\u0002\n\u0000R\u0014\u0010\u0012\u001a\b\u0012\u0004\u0012\u00020\u00140\u0013X\u0082\u0004¢\u0006\u0002\n\u0000R\u0014\u0010\u0015\u001a\b\u0012\u0004\u0012\u00020\u00160\u0013X\u0082\u0004¢\u0006\u0002\n\u0000R\u0014\u0010\u0017\u001a\b\u0012\u0004\u0012\u00020\u00040\u0013X\u0082\u0004¢\u0006\u0002\n\u0000¨\u0006>"}, d2 = {"Lcn/mucang/android/jiakaoyi/teachingk2/highlight/HighlightVideoManager;", "Lcn/mucang/android/jiakaoyi/teachingk2/highlight/ScreenRecorder$VideoRecordListener;", "()V", "cacheEntity", "Lcn/mucang/android/jiakaoyi/teachingk2/highlight/HighlightVideoEntity;", "enable", "", "entity", "focusMode", "mediaProjectionCloneData", "Landroid/content/Intent;", "getMediaProjectionCloneData$annotations", "getMediaProjectionCloneData", "()Landroid/content/Intent;", "setMediaProjectionCloneData", "(Landroid/content/Intent;)V", "screenRecorder", "Lcn/mucang/android/jiakaoyi/teachingk2/highlight/ScreenRecorder;", "traceIdObserver", "Landroidx/lifecycle/Observer;", "Lcn/mucang/android/jiakaoyi/engine/trace/TraceExtraData;", "traceUploadObserver", "Lcn/mucang/android/jiakaoyi/engine/trace/upload/UploadCurrentMsg;", "updateObserver", "addAudio", "Ljava/io/File;", "videoFile", "cutVideo", "", "filePath", "", "originFile", "segments", "", "Lcn/mucang/android/jiakaoyi/teachingk2/videosplit/Segment;", "compressFile", "compressFaceFile", "finishRecord", "needSave", "init", "onEnter", "onExit", "onRecordFinished", "processVideo", "sendBroadcast", AuthActivity.ACTION_KEY, "", "x", "", "y", "sendClickBroadCast", "setFocusMode", "mode", "showShareDialog", "activity", "Landroid/app/Activity;", "shareUrl", "showVideoDialog", "startRecord", "stepInt", "zipVideo", "finalFile", "teachbase_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
public final class HighlightVideoManager implements ScreenRecorder.a {
    private static Intent b;

    @SuppressLint({"StaticFieldLeak"})
    private static ScreenRecorder c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private static boolean f7137d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private static boolean f7138e;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private static HighlightVideoEntity f7140g;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final HighlightVideoManager f7136a = new HighlightVideoManager();

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private static final HighlightVideoEntity f7139f = new HighlightVideoEntity();

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private static final a0<TraceExtraData> f7141h = new a0() { // from class: cn.mucang.android.jiakaoyi.teachingk2.highlight.k
        @Override // androidx.lifecycle.a0
        public final void onChanged(Object obj) {
            HighlightVideoManager.x((TraceExtraData) obj);
        }
    };
    private static final a0<cn.mucang.android.jiakaoyi.engine.trace.upload.e> i = new a0() { // from class: cn.mucang.android.jiakaoyi.teachingk2.highlight.l
        @Override // androidx.lifecycle.a0
        public final void onChanged(Object obj) {
            HighlightVideoManager.y((cn.mucang.android.jiakaoyi.engine.trace.upload.e) obj);
        }
    };
    private static final a0<HighlightVideoEntity> j = new a0() { // from class: cn.mucang.android.jiakaoyi.teachingk2.highlight.m
        @Override // androidx.lifecycle.a0
        public final void onChanged(Object obj) {
            HighlightVideoManager.z((HighlightVideoEntity) obj);
        }
    };

    private HighlightVideoManager() {
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void A(final HighlightVideoEntity it) {
        Object objM139constructorimpl;
        try {
            Result.Companion companion = Result.INSTANCE;
            UploadVideoApi uploadVideoApi = new UploadVideoApi(null, null, null, 7, null);
            kotlin.jvm.internal.r.d(it, "it");
            final String shareUrl = uploadVideoApi.b(it).getShareUrl();
            if (shareUrl == null) {
                shareUrl = "";
            }
            u.c(new Runnable() { // from class: cn.mucang.android.jiakaoyi.teachingk2.highlight.j
                @Override // java.lang.Runnable
                public final void run() {
                    HighlightVideoManager.B(it, shareUrl);
                }
            });
            objM139constructorimpl = Result.m139constructorimpl(v.f15822a);
        } catch (Throwable th) {
            Result.Companion companion2 = Result.INSTANCE;
            objM139constructorimpl = Result.m139constructorimpl(kotlin.k.a(th));
        }
        Throwable thM142exceptionOrNullimpl = Result.m142exceptionOrNullimpl(objM139constructorimpl);
        if (thM142exceptionOrNullimpl != null) {
            cn.mucang.android.jiakaoyi.framework.log.f.o("精彩时刻：上传视频失败," + it.getTrackId() + ',' + ((Object) cn.mucang.android.core.utils.t.g(thM142exceptionOrNullimpl)));
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void B(HighlightVideoEntity highlightVideoEntity, String result) {
        kotlin.jvm.internal.r.e(result, "$result");
        HighlightDbManager.f7161a.j(highlightVideoEntity.getTrackId(), result);
    }

    private final void C(File file, File file2, HighlightVideoEntity highlightVideoEntity, File file3, String str) throws IOException {
        VideoUtils videoUtils = VideoUtils.f7169a;
        String absolutePath = file.getAbsolutePath();
        kotlin.jvm.internal.r.d(absolutePath, "finalFile.absolutePath");
        long jF = videoUtils.f(absolutePath);
        kotlin.io.g.j(file, videoUtils.i(file), true, 0, 4, null);
        File parentFile = file2.getParentFile();
        if (parentFile != null && parentFile.isDirectory()) {
            if (cn.mucang.android.jiakaoyi.engine.trace.upload.d.a(parentFile.getAbsolutePath())) {
                cn.mucang.android.core.utils.m.g(parentFile.getAbsolutePath());
            }
            if (highlightVideoEntity == null) {
                HighlightDbManager highlightDbManager = HighlightDbManager.f7161a;
                String absolutePath2 = file3.getAbsolutePath();
                kotlin.jvm.internal.r.d(absolutePath2, "originFile.absolutePath");
                String absolutePath3 = file.getAbsolutePath();
                kotlin.jvm.internal.r.d(absolutePath3, "finalFile.absolutePath");
                highlightDbManager.p(absolutePath2, absolutePath3, kotlin.jvm.internal.r.m(parentFile.getAbsolutePath(), ".zip"), jF);
                return;
            }
            String absolutePath4 = file.getAbsolutePath();
            kotlin.jvm.internal.r.d(absolutePath4, "finalFile.absolutePath");
            highlightVideoEntity.setCompressPath(absolutePath4);
            highlightVideoEntity.setZipPath(kotlin.jvm.internal.r.m(parentFile.getAbsolutePath(), ".zip"));
            highlightVideoEntity.setCompressDuration(jF);
            highlightVideoEntity.setUpdateTime(System.currentTimeMillis());
            if (HighlightDbManager.f7161a.o(highlightVideoEntity) == -1) {
                cn.mucang.android.jiakaoyi.framework.log.f.o(kotlin.jvm.internal.r.m("精彩时刻：数据库更新失败:", str));
                return;
            }
            if (MucangConfig.v()) {
                return;
            }
            File fileC = videoUtils.c(str, false);
            if (fileC != null) {
                fileC.delete();
            }
            if (file3.delete()) {
                highlightVideoEntity.setOriginPath("");
            }
        }
    }

    @SuppressLint({"WrongConstant"})
    private final File c(File file) {
        MediaFormat trackFormat;
        int iAddTrack;
        MediaFormat trackFormat2;
        int iAddTrack2;
        cn.mucang.android.jiakaoyi.framework.log.f.o("精彩时刻：开始合成音频");
        String absolutePath = file.getAbsolutePath();
        kotlin.jvm.internal.r.d(absolutePath, "videoFile.absolutePath");
        File file2 = new File(kotlin.text.t.x(absolutePath, ".tmp", ".mp4", false, 4, null));
        if (file2.exists()) {
            file2.delete();
        }
        try {
            file2.createNewFile();
            MediaExtractor mediaExtractor = new MediaExtractor();
            mediaExtractor.setDataSource(file.getAbsolutePath());
            int i2 = 0;
            MediaMuxer mediaMuxer = new MediaMuxer(file2.getAbsolutePath(), 0);
            try {
                mediaExtractor.selectTrack(0);
                trackFormat = mediaExtractor.getTrackFormat(0);
                try {
                    iAddTrack = mediaMuxer.addTrack(trackFormat);
                } catch (Throwable unused) {
                    int trackCount = mediaExtractor.getTrackCount();
                    cn.mucang.android.jiakaoyi.framework.log.f.o(kotlin.jvm.internal.r.m("精彩时刻：视频解析失败，尝试轨道遍历，轨道数:", Integer.valueOf(trackCount)));
                    if (trackCount <= 0) {
                        iAddTrack = -100000;
                        break;
                    }
                    int i3 = 0;
                    while (true) {
                        int i4 = i3 + 1;
                        trackFormat = mediaExtractor.getTrackFormat(i3);
                        String string = trackFormat.getString("mime");
                        kotlin.jvm.internal.r.c(string);
                        if (kotlin.text.t.B(string, "video/", false, 2, null)) {
                            iAddTrack = mediaMuxer.addTrack(trackFormat);
                            break;
                        }
                        if (i4 >= trackCount) {
                            iAddTrack = -100000;
                            break;
                        }
                        i3 = i4;
                    }
                }
            } catch (Throwable unused2) {
                trackFormat = null;
            }
            if (iAddTrack != -100000 && trackFormat != null) {
                MediaExtractor mediaExtractor2 = new MediaExtractor();
                AssetFileDescriptor assetFileDescriptorOpenFd = MucangConfig.getContext().getAssets().openFd("highlight.aac");
                kotlin.jvm.internal.r.d(assetFileDescriptorOpenFd, "getContext().assets.openFd(\"highlight.aac\")");
                mediaExtractor2.setDataSource(assetFileDescriptorOpenFd.getFileDescriptor(), assetFileDescriptorOpenFd.getStartOffset(), assetFileDescriptorOpenFd.getLength());
                try {
                    mediaExtractor2.selectTrack(0);
                    trackFormat2 = mediaExtractor2.getTrackFormat(0);
                    try {
                        iAddTrack2 = mediaMuxer.addTrack(trackFormat2);
                    } catch (Throwable unused3) {
                        int trackCount2 = mediaExtractor2.getTrackCount();
                        cn.mucang.android.jiakaoyi.framework.log.f.o(kotlin.jvm.internal.r.m("精彩时刻：音频解析失败，尝试轨道遍历，轨道数:", Integer.valueOf(trackCount2)));
                        if (trackCount2 <= 0) {
                            iAddTrack2 = -100000;
                            break;
                        }
                        int i5 = 0;
                        while (true) {
                            int i6 = i5 + 1;
                            trackFormat2 = mediaExtractor2.getTrackFormat(i5);
                            String string2 = trackFormat2.getString("mime");
                            kotlin.jvm.internal.r.c(string2);
                            if (kotlin.text.t.B(string2, "audio/", false, 2, null)) {
                                iAddTrack2 = mediaMuxer.addTrack(trackFormat2);
                                break;
                            }
                            if (i6 >= trackCount2) {
                                iAddTrack2 = -100000;
                                break;
                            }
                            i5 = i6;
                        }
                    }
                } catch (Throwable unused4) {
                    trackFormat2 = null;
                }
                if (trackFormat2 != null && iAddTrack2 != -100000) {
                    ByteBuffer byteBufferAllocate = ByteBuffer.allocate(262144);
                    ByteBuffer byteBufferAllocate2 = ByteBuffer.allocate(262144);
                    MediaCodec.BufferInfo bufferInfo = new MediaCodec.BufferInfo();
                    MediaCodec.BufferInfo bufferInfo2 = new MediaCodec.BufferInfo();
                    mediaExtractor.seekTo(0L, 2);
                    mediaExtractor2.seekTo(0L, 2);
                    mediaMuxer.start();
                    int integer = 1000000 / trackFormat.getInteger("frame-rate");
                    boolean z = false;
                    while (!z) {
                        bufferInfo.offset = 100;
                        int sampleData = mediaExtractor.readSampleData(byteBufferAllocate, 100);
                        bufferInfo.size = sampleData;
                        if (sampleData < 0) {
                            bufferInfo.size = i2;
                            z = true;
                        } else {
                            bufferInfo.presentationTimeUs += (long) integer;
                            bufferInfo.flags = mediaExtractor.getSampleFlags();
                            mediaMuxer.writeSampleData(iAddTrack, byteBufferAllocate, bufferInfo);
                            mediaExtractor.advance();
                            z = z;
                            i2 = 0;
                        }
                    }
                    boolean z2 = false;
                    while (!z2) {
                        bufferInfo2.offset = 100;
                        int sampleData2 = mediaExtractor2.readSampleData(byteBufferAllocate2, 100);
                        bufferInfo2.size = sampleData2;
                        if (sampleData2 < 0 || bufferInfo2.presentationTimeUs > bufferInfo.presentationTimeUs) {
                            bufferInfo2.size = 0;
                            z2 = true;
                        } else {
                            bufferInfo2.presentationTimeUs = mediaExtractor2.getSampleTime();
                            bufferInfo2.flags = mediaExtractor2.getSampleFlags();
                            mediaMuxer.writeSampleData(iAddTrack2, byteBufferAllocate2, bufferInfo2);
                            mediaExtractor2.advance();
                        }
                    }
                    mediaMuxer.stop();
                    mediaMuxer.release();
                    mediaExtractor.release();
                    mediaExtractor2.release();
                    assetFileDescriptorOpenFd.close();
                    file.delete();
                    cn.mucang.android.jiakaoyi.framework.log.f.o("精彩时刻：合成音频成功");
                    return file2;
                }
                cn.mucang.android.jiakaoyi.framework.log.f.o("精彩时刻：音频解析失败，查找轨道失败");
                return null;
            }
            cn.mucang.android.jiakaoyi.framework.log.f.o(kotlin.jvm.internal.r.m("精彩时刻：视频解析失败，查找轨道失败:", file.getName()));
            return null;
        } catch (Throwable th) {
            cn.mucang.android.jiakaoyi.framework.log.f.o(kotlin.jvm.internal.r.m("精彩时刻：合成音频失败,", cn.mucang.android.core.utils.t.g(th)));
            file2.delete();
            file.delete();
            throw th;
        }
    }

    private final void d(String str, File file, List<? extends Segment> list, File file2, File file3) throws Exception {
        long j2;
        float f2;
        Object objM139constructorimpl;
        try {
            VideoUtils videoUtils = VideoUtils.f7169a;
            File fileC = videoUtils.c(str, true);
            String absolutePath = file.getAbsolutePath();
            kotlin.jvm.internal.r.d(absolutePath, "originFile.absolutePath");
            long j3 = 1000;
            long jF = videoUtils.f(absolutePath) / j3;
            if (list.isEmpty() && jF <= 20) {
                kotlin.io.g.j(file, file2, true, 0, 4, null);
                if (fileC == null) {
                    return;
                }
                kotlin.io.g.j(fileC, file3, true, 0, 4, null);
                return;
            }
            if (list.isEmpty()) {
                f2 = jF / 20;
                j2 = jF;
            } else {
                j2 = 0;
                for (Segment segment : list) {
                    j2 += segment.end - segment.start;
                }
                f2 = j2 < 20000000 ? 1.0f : j2 / 2.0E7f;
            }
            ArrayList arrayList = new ArrayList();
            for (Iterator it = list.iterator(); it.hasNext(); it = it) {
                Segment segment2 = (Segment) it.next();
                arrayList.add(new Pair(Long.valueOf(segment2.start), Long.valueOf(segment2.end)));
            }
            if (arrayList.isEmpty()) {
                arrayList.add(new Pair(0L, Long.MAX_VALUE));
            }
            cn.mucang.android.jiakaoyi.framework.log.f.o("精彩时刻：开始压缩录屏," + f2 + ',' + jF + "秒," + ((j2 / j3) / j3) + (char) 31186);
            com.hw.videoprocessor.e.b bVarB = com.hw.videoprocessor.e.b(MucangConfig.getContext());
            bVarB.s(file.getAbsolutePath());
            bVarB.t(file2.getAbsolutePath());
            bVarB.q(false);
            bVarB.r(arrayList);
            bVarB.v(f2);
            bVarB.u();
            VideoUtils videoUtils2 = VideoUtils.f7169a;
            String absolutePath2 = file2.getAbsolutePath();
            kotlin.jvm.internal.r.d(absolutePath2, "compressFile.absolutePath");
            cn.mucang.android.jiakaoyi.framework.log.f.o("精彩时刻：完成压缩录屏,时长" + videoUtils2.f(absolutePath2) + (char) 31186);
            if (fileC != null) {
                try {
                    Result.Companion companion = Result.INSTANCE;
                    String absolutePath3 = fileC.getAbsolutePath();
                    kotlin.jvm.internal.r.d(absolutePath3, "originFaceFile.absolutePath");
                    cn.mucang.android.jiakaoyi.framework.log.f.o("精彩时刻：开始压缩录像," + f2 + ',' + (videoUtils2.f(absolutePath3) / j3) + "秒," + fileC.length());
                    com.hw.videoprocessor.e.b bVarB2 = com.hw.videoprocessor.e.b(MucangConfig.getContext());
                    bVarB2.s(fileC.getAbsolutePath());
                    bVarB2.t(file3.getAbsolutePath());
                    bVarB2.q(false);
                    bVarB2.r(arrayList);
                    bVarB2.v(f2);
                    bVarB2.u();
                    String absolutePath4 = file3.getAbsolutePath();
                    kotlin.jvm.internal.r.d(absolutePath4, "compressFaceFile.absolutePath");
                    cn.mucang.android.jiakaoyi.framework.log.f.o("精彩时刻：完成压缩录像,时长" + videoUtils2.f(absolutePath4) + (char) 31186);
                    objM139constructorimpl = Result.m139constructorimpl(v.f15822a);
                } catch (Throwable th) {
                    Result.Companion companion2 = Result.INSTANCE;
                    objM139constructorimpl = Result.m139constructorimpl(kotlin.k.a(th));
                }
                Throwable thM142exceptionOrNullimpl = Result.m142exceptionOrNullimpl(objM139constructorimpl);
                if (thM142exceptionOrNullimpl != null) {
                    cn.mucang.android.jiakaoyi.framework.log.f.o(kotlin.jvm.internal.r.m("精彩时刻：压缩录像异常:", q0.d(thM142exceptionOrNullimpl)));
                    fileC.delete();
                    file3.delete();
                }
            }
        } catch (Exception e2) {
            file3.delete();
            throw e2;
        }
    }

    public static final void e(boolean z) {
        if (f7137d) {
            cn.mucang.android.jiakaoyi.framework.log.f.o(kotlin.jvm.internal.r.m("精彩时刻：结束录制:", Boolean.valueOf(z)));
            cn.mucang.android.jiakaoyi.teachingk2.videosplit.c.b().f(false);
            if (z) {
                ScreenRecorder screenRecorder = c;
                if (screenRecorder != null) {
                    screenRecorder.a();
                }
            } else {
                ScreenRecorder screenRecorder2 = c;
                if (screenRecorder2 != null) {
                    screenRecorder2.d();
                }
            }
            VideoRecorder.f7178a.i(z);
        }
    }

    public static final Intent f() {
        return b;
    }

    public static /* synthetic */ void p(HighlightVideoManager highlightVideoManager, String str, List list, HighlightVideoEntity highlightVideoEntity, int i2, Object obj) throws Exception {
        if ((i2 & 4) != 0) {
            highlightVideoEntity = null;
        }
        highlightVideoManager.o(str, list, highlightVideoEntity);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void q(int i2, float f2, float f3) {
        LauncherBroadcastSender.f9341a.a(1000, new ClickEventModel(i2, f2, f3));
    }

    public static final void r() {
        AbsSettingProvider absSettingProvider = (AbsSettingProvider) DataProviderRegister.b(DataProviderRegister.f3433a, AbsSettingProvider.class, null, 2, null);
        kotlin.Pair<Point, Point> permissionClickPoint = absSettingProvider == null ? null : absSettingProvider.getPermissionClickPoint();
        if (permissionClickPoint == null) {
            return;
        }
        kotlinx.coroutines.g.b(j0.b(), null, null, new HighlightVideoManager$sendClickBroadCast$1(permissionClickPoint, null), 3, null);
    }

    public static final void s(String mode) {
        kotlin.jvm.internal.r.e(mode, "mode");
        if (f7137d) {
            boolean z = Boolean.parseBoolean(mode);
            f7138e = z;
            if (z) {
                cn.mucang.android.jiakaoyi.framework.log.f.o("精彩时刻：设置关注模式中断录制");
                e(false);
            }
        }
    }

    public static final void t(Intent intent) {
        b = intent;
    }

    public static final void u(Activity activity, String shareUrl) {
        kotlin.jvm.internal.r.e(activity, "activity");
        kotlin.jvm.internal.r.e(shareUrl, "shareUrl");
        if (f7137d) {
            cn.mucang.android.jiakaoyi.framework.log.f.o(kotlin.jvm.internal.r.m("精彩时刻：回放点击分享按钮,", shareUrl));
            new HighlightShareDialog(activity, shareUrl).show();
        }
    }

    public static final void v(Activity activity) {
        kotlin.jvm.internal.r.e(activity, "activity");
        if (f7137d) {
            StringBuilder sb = new StringBuilder();
            sb.append("精彩时刻：练习点击精彩时刻按钮,");
            HighlightVideoEntity highlightVideoEntity = f7140g;
            sb.append((Object) (highlightVideoEntity == null ? null : highlightVideoEntity.getTraceId()));
            sb.append(',');
            HighlightVideoEntity highlightVideoEntity2 = f7140g;
            sb.append(highlightVideoEntity2 == null ? null : Long.valueOf(highlightVideoEntity2.getCompressDuration()));
            sb.append(',');
            HighlightVideoEntity highlightVideoEntity3 = f7140g;
            sb.append((Object) (highlightVideoEntity3 != null ? highlightVideoEntity3.getShareUrl() : null));
            cn.mucang.android.jiakaoyi.framework.log.f.o(sb.toString());
            HighlightVideoEntity highlightVideoEntity4 = f7140g;
            if (highlightVideoEntity4 == null) {
                return;
            }
            new HighlightH5Dialog(activity, highlightVideoEntity4).show();
        }
    }

    public static final void w(int i2) {
        if (f7137d) {
            cn.mucang.android.jiakaoyi.framework.log.f.o(kotlin.jvm.internal.r.m("精彩时刻：开始练习:", Integer.valueOf(i2)));
            if (f7138e) {
                return;
            }
            cn.mucang.android.jiakaoyi.teachingk2.videosplit.c.b().f(true);
            long jCurrentTimeMillis = System.currentTimeMillis();
            HighlightVideoEntity highlightVideoEntity = f7139f;
            highlightVideoEntity.setStep(i2);
            highlightVideoEntity.setStartTime(jCurrentTimeMillis);
            ScreenRecorder screenRecorder = c;
            if (screenRecorder != null) {
                screenRecorder.h(jCurrentTimeMillis);
            }
            if (kotlin.jvm.internal.r.a(LoginHelper.f7296a.c().e(), Boolean.TRUE)) {
                VideoRecorder.f7178a.h(jCurrentTimeMillis);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void x(TraceExtraData traceExtraData) {
        HighlightVideoEntity highlightVideoEntity = f7139f;
        String str = traceExtraData.traceId;
        kotlin.jvm.internal.r.d(str, "it.traceId");
        highlightVideoEntity.setTraceId(str);
        cn.mucang.android.jiakaoyi.framework.log.f.o(kotlin.jvm.internal.r.m("精彩时刻：生成轨迹id,", traceExtraData.traceId));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void y(cn.mucang.android.jiakaoyi.engine.trace.upload.e eVar) {
        cn.mucang.android.jiakaoyi.framework.log.f.o("精彩时刻：收到轨迹上传成功," + ((Object) eVar.b) + ',' + ((Object) eVar.f3195a));
        HighlightDbManager.f7161a.r(eVar.b, eVar.f3195a);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void z(final HighlightVideoEntity highlightVideoEntity) {
        if (n0.g(highlightVideoEntity.getZipPath()) && n0.g(highlightVideoEntity.getTrackId()) && n0.e(highlightVideoEntity.getShareUrl())) {
            cn.mucang.android.jiakaoyi.framework.utils.n0.a(new Runnable() { // from class: cn.mucang.android.jiakaoyi.teachingk2.highlight.i
                @Override // java.lang.Runnable
                public final void run() {
                    HighlightVideoManager.A(highlightVideoEntity);
                }
            });
        } else if (n0.g(highlightVideoEntity.getShareUrl())) {
            f7140g = highlightVideoEntity;
            TrainConfigModel b2 = cn.mucang.android.jiakaoyi.teachingk2.unity.e.a0.h().getB();
            b2.showShareBtn = true;
            cn.mucang.android.jiakaoyi.unity.c.d.e(b2);
        }
    }

    @Override // cn.mucang.android.jiakaoyi.teachingk2.highlight.ScreenRecorder.a
    public void a(String filePath) {
        kotlin.jvm.internal.r.e(filePath, "filePath");
        cn.mucang.android.jiakaoyi.framework.log.f.o(kotlin.jvm.internal.r.m("精彩时刻：完成录制:", filePath));
        if (!n0.e(f7139f.getTraceId()) && new File(filePath).exists() && new File(filePath).length() >= 1) {
            List<Segment> segments = cn.mucang.android.jiakaoyi.teachingk2.videosplit.c.b().c();
            cn.mucang.android.jiakaoyi.framework.log.f.o(kotlin.jvm.internal.r.m("精彩时刻：获取时间片段:", JSON.toJSONString(segments)));
            kotlin.jvm.internal.r.d(segments, "segments");
            for (Segment segment : segments) {
                long j2 = segment.start;
                HighlightVideoEntity highlightVideoEntity = f7139f;
                segment.start = kotlin.ranges.f.c((j2 - highlightVideoEntity.getStartTime()) * 1000, 0L);
                segment.end = kotlin.ranges.f.c((segment.end - highlightVideoEntity.getStartTime()) * 1000, 0L);
            }
            StringBuilder sb = new StringBuilder();
            sb.append("精彩时刻：处理时间片段:");
            sb.append((Object) JSON.toJSONString(segments));
            sb.append(',');
            HighlightVideoEntity highlightVideoEntity2 = f7139f;
            sb.append(highlightVideoEntity2.getStartTime());
            cn.mucang.android.jiakaoyi.framework.log.f.o(sb.toString());
            highlightVideoEntity2.setOriginPath(filePath);
            highlightVideoEntity2.setEndTime(System.currentTimeMillis());
            XyUserModel xyUserModelE = RobotAccount.i().e();
            highlightVideoEntity2.setXyToken(xyUserModelE == null ? null : xyUserModelE.getXyToken());
            XyUserModel xyUserModelE2 = RobotAccount.i().e();
            highlightVideoEntity2.setDriveLicenseType(xyUserModelE2 != null ? xyUserModelE2.getDriveLicenseType() : null);
            HighlightVideoEntity highlightVideoEntityCopy = highlightVideoEntity2.copy();
            cn.mucang.android.jiakaoyi.framework.log.f.o(kotlin.jvm.internal.r.m("精彩时刻：准备保存数据:", JSON.toJSONString(highlightVideoEntityCopy)));
            HighlightDbManager.f7161a.l(highlightVideoEntityCopy, new HighlightVideoManager$onRecordFinished$2(highlightVideoEntityCopy, filePath, segments));
        }
    }

    public final void g() {
        boolean zF = LocalConfigManager.f(LocalConfig.Highlight);
        f7137d = zF;
        cn.mucang.android.jiakaoyi.framework.log.f.o(kotlin.jvm.internal.r.m("精彩时刻开关:", Boolean.valueOf(zF)));
        LocalVideoManager.f7142a.f();
        if (f7137d) {
            LiveBus.d(cn.mucang.android.jiakaoyi.engine.trace.upload.e.class).i(i);
            LiveBus.d(HighlightVideoEntity.class).i(j);
        }
    }

    public final void m() {
        if (f7137d) {
            Activity activityI = MucangConfig.i();
            kotlin.jvm.internal.r.d(activityI, "getCurrentActivity()");
            c = new ScreenRecorder(activityI, this);
            LiveBus.d(TraceExtraData.class).i(f7141h);
        }
    }

    public final void n() {
        if (f7137d) {
            cn.mucang.android.jiakaoyi.framework.log.f.o("精彩时刻：退出练习中断录制");
            e(false);
            c = null;
            f7139f.reset();
            cn.mucang.android.jiakaoyi.teachingk2.unity.e.a0.h().getB().showShareBtn = false;
            LiveBus.d(TraceExtraData.class).m(f7141h);
        }
    }

    public final void o(String filePath, List<? extends Segment> segments, HighlightVideoEntity highlightVideoEntity) throws Exception {
        kotlin.jvm.internal.r.e(filePath, "filePath");
        kotlin.jvm.internal.r.e(segments, "segments");
        File file = new File(filePath);
        VideoUtils videoUtils = VideoUtils.f7169a;
        File fileA = videoUtils.a(filePath);
        File fileG = videoUtils.g(file);
        d(filePath, file, segments, fileA, fileG);
        File fileC = c(fileA);
        if (fileC == null) {
            cn.mucang.android.jiakaoyi.framework.log.f.o("精彩时刻：音视频合成失败");
        } else {
            C(fileC, fileG, highlightVideoEntity, file, filePath);
        }
    }
}
