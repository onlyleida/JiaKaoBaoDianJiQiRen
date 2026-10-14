package cn.mucang.android.jiakaoyi.teachingk2.highlight;

import android.app.Activity;
import android.content.Intent;
import android.hardware.display.VirtualDisplay;
import android.media.MediaRecorder;
import android.media.projection.MediaProjection;
import android.media.projection.MediaProjectionManager;
import android.util.DisplayMetrics;
import android.view.Surface;
import cn.mucang.android.jiakaoyi.framework.utils.q0;
import com.alivc.live.pusher.AlivcLivePushConstants;
import com.google.android.gms.common.internal.ServiceSpecificExtraArgs;
import java.io.File;
import java.io.IOException;
import kotlin.Metadata;

/* JADX INFO: renamed from: cn.mucang.android.jiakaoyi.teachingk2.highlight.s, reason: from Kotlin metadata */
/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000d\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0010\b\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0010\t\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0004\u0018\u00002\u00020\u0001:\u0001)B\u0017\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\b\u0010\u0004\u001a\u0004\u0018\u00010\u0005¢\u0006\u0002\u0010\u0006J\u0006\u0010\u001e\u001a\u00020\u001fJ\u0010\u0010 \u001a\u00020\u001f2\u0006\u0010!\u001a\u00020\"H\u0002J\u0006\u0010#\u001a\u00020\u001fJ\u0018\u0010$\u001a\u00020\u001f2\u0006\u0010%\u001a\u00020&2\u0006\u0010!\u001a\u00020\"H\u0002J\b\u0010'\u001a\u00020\u001fH\u0002J\u000e\u0010(\u001a\u00020\u001f2\u0006\u0010!\u001a\u00020\"R\u0011\u0010\u0002\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u0007\u0010\bR\u000e\u0010\t\u001a\u00020\nX\u0082\u000e¢\u0006\u0002\n\u0000R\u000e\u0010\u000b\u001a\u00020\nX\u0082D¢\u0006\u0002\n\u0000R\u0013\u0010\u0004\u001a\u0004\u0018\u00010\u0005¢\u0006\b\n\u0000\u001a\u0004\b\f\u0010\rR\u0010\u0010\u000e\u001a\u0004\u0018\u00010\u000fX\u0082\u000e¢\u0006\u0002\n\u0000R\u0010\u0010\u0010\u001a\u0004\u0018\u00010\u0011X\u0082\u000e¢\u0006\u0002\n\u0000R\u000e\u0010\u0012\u001a\u00020\u0013X\u0082\u000e¢\u0006\u0002\n\u0000R\u0010\u0010\u0014\u001a\u0004\u0018\u00010\u0015X\u0082\u000e¢\u0006\u0002\n\u0000R\u000e\u0010\u0016\u001a\u00020\u0017X\u0082\u000e¢\u0006\u0002\n\u0000R\u0010\u0010\u0018\u001a\u0004\u0018\u00010\u0019X\u0082\u000e¢\u0006\u0002\n\u0000R\u000e\u0010\u001a\u001a\u00020\nX\u0082\u000e¢\u0006\u0002\n\u0000R\u000e\u0010\u001b\u001a\u00020\nX\u0082\u000e¢\u0006\u0002\n\u0000R\u0010\u0010\u001c\u001a\u0004\u0018\u00010\u001dX\u0082\u000e¢\u0006\u0002\n\u0000¨\u0006*"}, d2 = {"Lcn/mucang/android/jiakaoyi/teachingk2/highlight/ScreenRecorder;", "", "activity", "Landroid/app/Activity;", ServiceSpecificExtraArgs.CastExtraArgs.LISTENER, "Lcn/mucang/android/jiakaoyi/teachingk2/highlight/ScreenRecorder$VideoRecordListener;", "(Landroid/app/Activity;Lcn/mucang/android/jiakaoyi/teachingk2/highlight/ScreenRecorder$VideoRecordListener;)V", "getActivity", "()Landroid/app/Activity;", "bitRate", "", "frameRate", "getListener", "()Lcn/mucang/android/jiakaoyi/teachingk2/highlight/ScreenRecorder$VideoRecordListener;", "mediaProjectionManager", "Landroid/media/projection/MediaProjectionManager;", "mediaRecorder", "Landroid/media/MediaRecorder;", "metrics", "Landroid/util/DisplayMetrics;", "mp", "Landroid/media/projection/MediaProjection;", "recording", "", "saveFile", "Ljava/io/File;", "videoHeight", "videoWidth", "virtualDisplay", "Landroid/hardware/display/VirtualDisplay;", "finishRecord", "", "initRecorder", "time", "", "interruptRecord", "realStart", "data", "Landroid/content/Intent;", "releaseRecorder", "startRecord", "VideoRecordListener", "teachbase_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
public final class ScreenRecorder {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final Activity f7163a;
    private final a b;
    private int c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private int f7164d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private int f7165e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private final int f7166f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private MediaProjectionManager f7167g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private MediaRecorder f7168h;
    private MediaProjection i;
    private VirtualDisplay j;
    private DisplayMetrics k;
    private File l;
    private boolean m;

    /* JADX INFO: renamed from: cn.mucang.android.jiakaoyi.teachingk2.highlight.s$a */
    @Metadata(d1 = {"\u0000\u0016\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\bf\u0018\u00002\u00020\u0001J\u0010\u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u0005H&¨\u0006\u0006"}, d2 = {"Lcn/mucang/android/jiakaoyi/teachingk2/highlight/ScreenRecorder$VideoRecordListener;", "", "onRecordFinished", "", "filePath", "", "teachbase_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
    public interface a {
        void a(String str);
    }

    public ScreenRecorder(Activity activity, a aVar) {
        kotlin.jvm.internal.r.e(activity, "activity");
        this.f7163a = activity;
        this.b = aVar;
        this.f7166f = 60;
        Object systemService = activity.getSystemService("media_projection");
        this.f7167g = systemService instanceof MediaProjectionManager ? (MediaProjectionManager) systemService : null;
        this.k = new DisplayMetrics();
        activity.getWindowManager().getDefaultDisplay().getRealMetrics(this.k);
        this.c = AlivcLivePushConstants.RESOLUTION_960;
        DisplayMetrics displayMetrics = this.k;
        this.f7164d = (displayMetrics.heightPixels * AlivcLivePushConstants.RESOLUTION_960) / displayMetrics.widthPixels;
        this.f7165e = 1048576;
        cn.mucang.android.jiakaoyi.framework.log.f.o("录屏参数，尺寸：" + this.c + '-' + this.f7164d + "，比特率：" + this.f7165e + ", 帧率：60");
    }

    private final void c(long j) {
        this.l = VideoUtils.f7169a.b(j);
        MediaRecorder mediaRecorder = new MediaRecorder();
        this.f7168h = mediaRecorder;
        if (mediaRecorder != null) {
            mediaRecorder.setVideoSource(2);
        }
        MediaRecorder mediaRecorder2 = this.f7168h;
        if (mediaRecorder2 != null) {
            mediaRecorder2.setOutputFormat(2);
        }
        MediaRecorder mediaRecorder3 = this.f7168h;
        if (mediaRecorder3 != null) {
            File file = this.l;
            mediaRecorder3.setOutputFile(file == null ? null : file.getAbsolutePath());
        }
        MediaRecorder mediaRecorder4 = this.f7168h;
        if (mediaRecorder4 != null) {
            mediaRecorder4.setVideoSize(this.c, this.f7164d);
        }
        MediaRecorder mediaRecorder5 = this.f7168h;
        if (mediaRecorder5 != null) {
            mediaRecorder5.setVideoEncoder(2);
        }
        MediaRecorder mediaRecorder6 = this.f7168h;
        if (mediaRecorder6 != null) {
            mediaRecorder6.setVideoEncodingBitRate(this.f7165e);
        }
        MediaRecorder mediaRecorder7 = this.f7168h;
        if (mediaRecorder7 != null) {
            mediaRecorder7.setVideoFrameRate(this.f7166f);
        }
        try {
            MediaRecorder mediaRecorder8 = this.f7168h;
            if (mediaRecorder8 == null) {
                return;
            }
            mediaRecorder8.prepare();
        } catch (IOException e2) {
            cn.mucang.android.jiakaoyi.framework.log.f.o("ScreenRecorder init error:" + e2 + ')');
        }
    }

    private final void f(Intent intent, long j) {
        c(j);
        try {
            MediaProjection mediaProjection = this.i;
            if (mediaProjection != null) {
                mediaProjection.stop();
            }
            MediaProjectionManager mediaProjectionManager = this.f7167g;
            kotlin.jvm.internal.r.c(mediaProjectionManager);
            MediaProjection mediaProjection2 = mediaProjectionManager.getMediaProjection(-1, intent);
            this.i = mediaProjection2;
            Surface surface = null;
            VirtualDisplay virtualDisplayCreateVirtualDisplay = null;
            if (mediaProjection2 != null) {
                int i = this.c;
                int i2 = this.f7164d;
                int i3 = this.k.densityDpi;
                MediaRecorder mediaRecorder = this.f7168h;
                if (mediaRecorder != null) {
                    surface = mediaRecorder.getSurface();
                }
                virtualDisplayCreateVirtualDisplay = mediaProjection2.createVirtualDisplay("ScreenCapture", i, i2, i3, 16, surface, null, null);
            }
            this.j = virtualDisplayCreateVirtualDisplay;
            MediaRecorder mediaRecorder2 = this.f7168h;
            if (mediaRecorder2 != null) {
                mediaRecorder2.start();
            }
            this.m = true;
        } catch (Throwable th) {
            cn.mucang.android.jiakaoyi.framework.log.f.o(kotlin.jvm.internal.r.m("start record screen error : ", q0.d(th)));
        }
    }

    private final void g() {
        this.m = false;
        MediaProjection mediaProjection = this.i;
        if (mediaProjection != null) {
            mediaProjection.stop();
        }
        try {
            VirtualDisplay virtualDisplay = this.j;
            if (virtualDisplay != null) {
                virtualDisplay.release();
            }
            this.j = null;
            try {
                try {
                    MediaRecorder mediaRecorder = this.f7168h;
                    if (mediaRecorder != null) {
                        mediaRecorder.stop();
                    }
                    try {
                        try {
                            MediaRecorder mediaRecorder2 = this.f7168h;
                            if (mediaRecorder2 != null) {
                                mediaRecorder2.release();
                            }
                        } catch (Exception e2) {
                            cn.mucang.android.jiakaoyi.framework.log.f.o(kotlin.jvm.internal.r.m("MediaRecorder release error:", q0.d(e2)));
                        }
                    } finally {
                        this.f7168h = null;
                    }
                } catch (Exception e3) {
                    cn.mucang.android.jiakaoyi.framework.log.f.o(kotlin.jvm.internal.r.m("MediaRecorder stop error:", q0.d(e3)));
                    File file = this.l;
                    if (file != null) {
                        file.delete();
                    }
                    this.l = null;
                    try {
                        try {
                            MediaRecorder mediaRecorder3 = this.f7168h;
                            if (mediaRecorder3 != null) {
                                mediaRecorder3.release();
                            }
                        } finally {
                            this.f7168h = null;
                        }
                    } catch (Exception e4) {
                        cn.mucang.android.jiakaoyi.framework.log.f.o(kotlin.jvm.internal.r.m("MediaRecorder release error:", q0.d(e4)));
                    }
                }
            } catch (Throwable th) {
                try {
                    try {
                        MediaRecorder mediaRecorder4 = this.f7168h;
                        if (mediaRecorder4 != null) {
                            mediaRecorder4.release();
                        }
                    } catch (Exception e5) {
                        cn.mucang.android.jiakaoyi.framework.log.f.o(kotlin.jvm.internal.r.m("MediaRecorder release error:", q0.d(e5)));
                    }
                    throw th;
                } finally {
                    this.f7168h = null;
                }
            }
        } catch (Throwable th2) {
            this.j = null;
            throw th2;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void i(ScreenRecorder this$0, long j, int i, int i2, Intent data) {
        kotlin.jvm.internal.r.e(this$0, "this$0");
        if (i == 1000 && i2 == -1) {
            kotlin.jvm.internal.r.d(data, "data");
            this$0.f(data, j);
        }
    }

    public final void a() {
        a b;
        g();
        File file = this.l;
        if (file == null || (b = getB()) == null) {
            return;
        }
        String absolutePath = VideoUtils.f7169a.j(file).getAbsolutePath();
        kotlin.jvm.internal.r.d(absolutePath, "VideoUtils.saveVideoFile(it).absolutePath");
        b.a(absolutePath);
    }

    /* JADX INFO: renamed from: b, reason: from getter */
    public final a getB() {
        return this.b;
    }

    public final void d() {
        if (this.m) {
            g();
            File file = this.l;
            if (file != null) {
                file.delete();
            }
            this.l = null;
        }
    }

    public final void h(final long j) {
        if (HighlightVideoManager.f() != null) {
            Intent intentF = HighlightVideoManager.f();
            kotlin.jvm.internal.r.c(intentF);
            f((Intent) intentF.clone(), j);
        } else {
            f.a.a.a.j.a aVarA = f.a.a.a.j.a.a(this.f7163a);
            MediaProjectionManager mediaProjectionManager = this.f7167g;
            kotlin.jvm.internal.r.c(mediaProjectionManager);
            aVarA.c(mediaProjectionManager.createScreenCaptureIntent(), 1000, new f.a.a.a.j.c() { // from class: cn.mucang.android.jiakaoyi.teachingk2.highlight.p
                @Override // f.a.a.a.j.c
                public final void onActivityResult(int i, int i2, Intent intent) {
                    ScreenRecorder.i(this.f7160a, j, i, i2, intent);
                }
            });
        }
    }
}
