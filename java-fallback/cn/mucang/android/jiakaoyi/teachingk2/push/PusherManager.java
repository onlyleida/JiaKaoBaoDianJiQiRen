package cn.mucang.android.jiakaoyi.teachingk2.push;

import android.app.Application;
import android.content.Context;
import android.os.Handler;
import android.os.HandlerThread;
import android.text.TextUtils;
import android.text.format.Formatter;
import cn.mucang.android.core.config.MucangConfig;
import cn.mucang.android.jiakaoyi.framework.bus.LiveBus;
import cn.mucang.android.jiakaoyi.framework.camera.ImageFormat;
import cn.mucang.android.jiakaoyi.teachingk2.config.LocalConfig;
import cn.mucang.android.jiakaoyi.teachingk2.config.LocalConfigManager;
import cn.mucang.android.jky.camera.CameraIntent;
import cn.mucang.android.jky.camera.UsbCameraManager;
import cn.mucang.jiakaoyi.uilib.socket.model.PushSwitchModel;
import com.alivc.live.pusher.AlivcAudioAACProfileEnum;
import com.alivc.live.pusher.AlivcEncodeModeEnum;
import com.alivc.live.pusher.AlivcImageFormat;
import com.alivc.live.pusher.AlivcLivePushConfig;
import com.alivc.live.pusher.AlivcLivePushError;
import com.alivc.live.pusher.AlivcLivePushErrorListener;
import com.alivc.live.pusher.AlivcLivePushLogLevel;
import com.alivc.live.pusher.AlivcLivePusher;
import com.alivc.live.pusher.AlivcQualityModeEnum;
import com.alivc.live.pusher.AlivcResolutionEnum;
import com.alivc.live.pusher.AlivcSoundFormat;
import com.google.android.exoplayer2.SimpleExoPlayer;
import com.google.android.exoplayer2.audio.SilenceSkippingAudioProcessor;
import com.google.android.exoplayer2.text.ttml.TtmlNode;
import com.mobile.auth.gatewayauth.Constant;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.List;
import kotlin.Metadata;
import kotlinx.coroutines.CoroutineDispatcher;
import kotlinx.coroutines.p2;
import kotlinx.coroutines.s0;
import kotlinx.coroutines.t1;
import kotlinx.coroutines.w0;
import org.opencv.android.InstallCallbackInterface;
import org.opencv.android.LoaderCallbackInterface;
import org.opencv.android.OpenCVLoader;
import org.opencv.core.Mat;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\u008c\u0001\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\b\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u000b\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\t\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0012\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\b\t\n\u0002\u0018\u0002\n\u0002\b\u0017\bÆ\u0002\u0018\u00002\u00020\u0001:\u0001ZB\u0007\b\u0002¢\u0006\u0002\u0010\u0002J\b\u00109\u001a\u00020:H\u0002J\u0006\u0010;\u001a\u00020:J\u0006\u0010<\u001a\u00020:J\u0006\u0010=\u001a\u00020:J\b\u0010>\u001a\u00020\u0004H\u0007J\u0013\u0010?\u001a\u0004\u0018\u00010\u0006H\u0082@ø\u0001\u0000¢\u0006\u0002\u0010@J\u0006\u0010A\u001a\u00020:J\u0010\u0010B\u001a\u00020:2\u0006\u0010C\u001a\u00020DH\u0002J\b\u0010E\u001a\u00020:H\u0002J\b\u0010F\u001a\u00020:H\u0002J\b\u0010G\u001a\u00020:H\u0002J\u0006\u0010H\u001a\u00020\u0014J@\u0010I\u001a\u00020:2\u0006\u0010J\u001a\u0002062\u0006\u0010K\u001a\u00020\u00042\u0006\u0010L\u001a\u00020\u00042\u0006\u0010M\u001a\u00020\u00042\u0006\u0010N\u001a\u00020\u00042\u0006\u0010O\u001a\u00020\u00162\u0006\u0010P\u001a\u00020\u0004H\u0016J\u0010\u0010Q\u001a\u00020:2\u0006\u0010H\u001a\u00020\u0014H\u0002J\b\u0010R\u001a\u00020:H\u0002J\u0012\u0010S\u001a\u00020:2\b\b\u0002\u0010T\u001a\u00020\u0014H\u0003J\b\u0010U\u001a\u00020:H\u0003J\b\u0010V\u001a\u00020:H\u0003J\b\u0010W\u001a\u00020:H\u0002J\b\u0010X\u001a\u00020:H\u0002J\b\u0010Y\u001a\u00020:H\u0002R\u000e\u0010\u0003\u001a\u00020\u0004X\u0082T¢\u0006\u0002\n\u0000R\u000e\u0010\u0005\u001a\u00020\u0006X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010\u0007\u001a\u00020\u0006X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010\b\u001a\u00020\u0006X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010\t\u001a\u00020\u0006X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010\n\u001a\u00020\u0006X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010\u000b\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010\f\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010\r\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010\u000e\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010\u000f\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010\u0010\u001a\u00020\u0006X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010\u0011\u001a\u00020\u0012X\u0082\u000e¢\u0006\u0002\n\u0000R\u000e\u0010\u0013\u001a\u00020\u0014X\u0082\u000e¢\u0006\u0002\n\u0000R\u000e\u0010\u0015\u001a\u00020\u0016X\u0082\u000e¢\u0006\u0002\n\u0000R\u0010\u0010\u0017\u001a\u0004\u0018\u00010\u0018X\u0082\u000e¢\u0006\u0002\n\u0000R$\u0010\u001a\u001a\u0004\u0018\u00010\u00142\b\u0010\u0019\u001a\u0004\u0018\u00010\u0014@BX\u0082\u000e¢\u0006\n\n\u0002\u0010\u001d\"\u0004\b\u001b\u0010\u001cR\u0010\u0010\u001e\u001a\u0004\u0018\u00010\u001fX\u0082\u000e¢\u0006\u0002\n\u0000R\u0014\u0010 \u001a\b\u0012\u0004\u0012\u00020\"0!X\u0082\u000e¢\u0006\u0002\n\u0000R\u000e\u0010#\u001a\u00020\u0014X\u0082\u000e¢\u0006\u0002\n\u0000R\u0010\u0010$\u001a\u0004\u0018\u00010%X\u0082\u000e¢\u0006\u0002\n\u0000R\u0010\u0010&\u001a\u0004\u0018\u00010'X\u0082\u000e¢\u0006\u0002\n\u0000R\u000e\u0010(\u001a\u00020\u0004X\u0082\u000e¢\u0006\u0002\n\u0000R\u0010\u0010)\u001a\u0004\u0018\u00010*X\u0082\u000e¢\u0006\u0002\n\u0000R\u0010\u0010+\u001a\u0004\u0018\u00010\u0012X\u0082\u000e¢\u0006\u0002\n\u0000R\u000e\u0010,\u001a\u00020\u0014X\u0082\u000e¢\u0006\u0002\n\u0000R\u0010\u0010-\u001a\u0004\u0018\u00010.X\u0082\u000e¢\u0006\u0002\n\u0000R\u000e\u0010/\u001a\u00020\u0016X\u0082\u000e¢\u0006\u0002\n\u0000R\u000e\u00100\u001a\u00020\u0004X\u0082\u000e¢\u0006\u0002\n\u0000R\u0010\u00101\u001a\u0004\u0018\u000102X\u0082\u000e¢\u0006\u0002\n\u0000R\u000e\u00103\u001a\u000204X\u0082\u0004¢\u0006\u0002\n\u0000R\u0010\u00105\u001a\u0004\u0018\u000106X\u0082\u000e¢\u0006\u0002\n\u0000R\u0010\u00107\u001a\u0004\u0018\u000108X\u0082\u000e¢\u0006\u0002\n\u0000\u0082\u0002\u0004\n\u0002\b\u0019¨\u0006["}, d2 = {"Lcn/mucang/android/jiakaoyi/teachingk2/push/PusherManager;", "Lcn/mucang/android/jiakaoyi/framework/camera/YuvFrameCallback;", "()V", "FRAME_HEART_TIME_S", "", "KEY_ENABLE_PUSHER", "", "KEY_IS_SYNC", "KEY_QUALITY", "KEY_SHOW_TIME", "KEY_VIDEO_SOURCE_AI", "QUALITY_LOW", "QUALITY_NORMAL", "STATUS_CLOSE", "STATUS_FAIL", "STATUS_NORMAL", "TAG", "frameHeartRun", "Ljava/lang/Runnable;", "frameLost", "", "frameTime", "", "handler", "Landroid/os/Handler;", "value", "isPushStart", "setPushStart", "(Ljava/lang/Boolean;)V", "Ljava/lang/Boolean;", "mAlivcLivePusher", "Lcom/alivc/live/pusher/AlivcLivePusher;", "observer", "Landroidx/lifecycle/Observer;", "Lcn/mucang/jiakaoyi/uilib/socket/model/PushSwitchModel;", "openCVLoaded", "pushScope", "Lkotlinx/coroutines/CoroutineScope;", "pusherThread", "Landroid/os/HandlerThread;", "quality", "reconnectJob", "Lkotlinx/coroutines/Job;", "releaseTask", "sourceFromAi", "sourceVideoStream", "Lcn/mucang/android/jiakaoyi/framework/camera/SourceVideoStream;", "startPushTime", "threadNum", "timeFormat", "Ljava/text/SimpleDateFormat;", "traffic", "Lcn/mucang/android/jiakaoyi/teachingk2/push/PusherManager$Traffic;", "waterData", "", "watermarkMat", "Lorg/opencv/core/Mat;", "checkPushStatus", "", "destroy", "disable", "enable", "getPushStatus", "getPushUrl", "(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "init", "initAliPush", "context", "Landroid/content/Context;", "initPush", "initSource", "initWatermark", Constant.API_PARAMS_KEY_ENABLE, "onFrame", "byteArray", "width", "height", "stride", "size", "timeUs", "rotation", "onPushToggle", "reconnect", "release", "releasePush", "releaseThenInit", "releaseTimeWater", "setPushListeners", "startFrameHeartbeat", "stopFrameHeartbeat", "Traffic", "teachbase_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
public final class PusherManager implements cn.mucang.android.jiakaoyi.framework.camera.c {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final PusherManager f7472a = null;
    private static AlivcLivePusher b = null;
    private static cn.mucang.android.jiakaoyi.framework.camera.b c = null;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private static int f7473d = 240;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private static Mat f7474e = null;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private static byte[] f7475f = null;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private static boolean f7476g = false;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private static SimpleDateFormat f7477h = null;
    private static volatile Boolean i = null;
    private static boolean j = true;
    private static int k;
    private static HandlerThread l;
    private static Handler m;
    private static kotlinx.coroutines.i0 n;
    private static t1 o;
    private static boolean p;
    private static Runnable q;
    private static androidx.lifecycle.a0<PushSwitchModel> r;
    private static final Traffic s = null;
    private static Runnable t;
    private static long u;
    private static long v;

    @Metadata(d1 = {"\u00000\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0010\t\n\u0000\n\u0002\u0010\b\n\u0002\b\b\n\u0002\u0010\u0002\n\u0002\b\u0006\u0018\u00002\u00020\u0001B\u0005¢\u0006\u0002\u0010\u0002J\u0010\u0010\u0011\u001a\u00020\t2\u0006\u0010\u0012\u001a\u00020\u0006H\u0002J\u0018\u0010\u0013\u001a\u00020\u00142\u0006\u0010\u0012\u001a\u00020\u00062\u0006\u0010\u0015\u001a\u00020\tH\u0002J\u0006\u0010\u0016\u001a\u00020\u0014J\b\u0010\u0017\u001a\u00020\u0014H\u0002J\b\u0010\u0018\u001a\u00020\u0014H\u0002J\u0006\u0010\u0019\u001a\u00020\u0014R\u0010\u0010\u0003\u001a\u0004\u0018\u00010\u0004X\u0082\u000e¢\u0006\u0002\n\u0000R\u000e\u0010\u0005\u001a\u00020\u0006X\u0082D¢\u0006\u0002\n\u0000R\u000e\u0010\u0007\u001a\u00020\u0006X\u0082D¢\u0006\u0002\n\u0000R\u000e\u0010\b\u001a\u00020\tX\u0082\u000e¢\u0006\u0002\n\u0000R\u000e\u0010\n\u001a\u00020\u000bX\u0082\u000e¢\u0006\u0002\n\u0000R\u000e\u0010\f\u001a\u00020\u000bX\u0082\u000e¢\u0006\u0002\n\u0000R\u000e\u0010\r\u001a\u00020\tX\u0082\u000e¢\u0006\u0002\n\u0000R\u000e\u0010\u000e\u001a\u00020\tX\u0082\u000e¢\u0006\u0002\n\u0000R\u000e\u0010\u000f\u001a\u00020\u000bX\u0082\u000e¢\u0006\u0002\n\u0000R\u000e\u0010\u0010\u001a\u00020\u000bX\u0082\u000e¢\u0006\u0002\n\u0000¨\u0006\u001a"}, d2 = {"Lcn/mucang/android/jiakaoyi/teachingk2/push/PusherManager$Traffic;", "", "()V", "job", "Lkotlinx/coroutines/Job;", "keyFrameSize", "", "keyUploadSize", "lastTotalFrames", "", "statBitrateCount", "", "statFpsCount", "todayUploadSize", "uploadSize", "videoCaptureFps", "videoUploadBitrate", "getTodaySize", "key", "putTodaySize", "", "size", TtmlNode.START, "statPushStatsInfo", "statTraffic", "stop", "teachbase_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
    public static final class Traffic {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private final String f7478a;
        private long b;
        private long c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        private int f7479d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        private int f7480e;

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        private int f7481f;

        /* JADX INFO: renamed from: g, reason: collision with root package name */
        private int f7482g;

        /* JADX INFO: renamed from: h, reason: collision with root package name */
        private long f7483h;
        private t1 i;

        public Traffic() {
            this.f7478a = "key_pusher_today_upload_size";
            this.f7483h = -1;
        }

        public static final /* synthetic */ long a(Traffic r2) {
            return r2.b;
        }

        public static final /* synthetic */ int b(Traffic r0) {
            return r0.f7481f;
        }

        public static final /* synthetic */ int c(Traffic r0) {
            return r0.f7479d;
        }

        public static final /* synthetic */ long d(Traffic r2) {
            return r2.c;
        }

        public static final /* synthetic */ int e(Traffic r0) {
            return r0.f7480e;
        }

        public static final /* synthetic */ int f(Traffic r0) {
            return r0.f7482g;
        }

        public static final /* synthetic */ void g(Traffic r0, long r1) {
            r0.b = r1;
        }

        public static final /* synthetic */ void h(Traffic r0, int r1) {
            r0.f7481f = r1;
        }

        public static final /* synthetic */ void i(Traffic r0, int r1) {
            r0.f7479d = r1;
        }

        public static final /* synthetic */ void j(Traffic r0, long r1) {
            r0.c = r1;
        }

        public static final /* synthetic */ void k(Traffic r0, int r1) {
            r0.f7480e = r1;
        }

        public static final /* synthetic */ void l(Traffic r0, int r1) {
            r0.f7482g = r1;
        }

        public static final /* synthetic */ void m(Traffic r0) {
            r0.r();
        }

        public static final /* synthetic */ void n(Traffic r0) {
            r0.s();
        }

        private final long o(String r11) {
            String r1 = cn.mucang.android.jiakaoyi.framework.utils.i0.g(r11, "");
            kotlin.jvm.internal.r.d(r1, "string");
            if (r1.length() <= 0) goto L5;
            boolean r12 = true;
        L7:
            if (r12 == false) goto L18;
            List r13 = kotlin.text.l.p0(r1, new String[]{"#"}, false, 0, 6, null);
            String r2 = (String) kotlin.collections.s.f0(r13, 0);
            String r14 = (String) kotlin.collections.s.f0(r13, 1);
            if (r14 != null) goto L11;
        L10:
            long r3 = 0;
        L16:
            if (kotlin.jvm.internal.r.a(r2, new SimpleDateFormat("yyyy-MM-dd").format(new Date())) == false) goto L18;
            return r3;
        L11:
            Long r15 = kotlin.text.l.l(r14);
            if (r15 == null) goto L10;
            r3 = r15.longValue();
        L18:
            return 0;
        L5:
            r12 = false;
            goto L7
        }

        private final void p(String r3, long r4) {
            cn.mucang.android.jiakaoyi.framework.utils.i0.m(r3, new SimpleDateFormat("yyyy-MM-dd").format(new Date()) + '#' + r4);
        }

        private final void r() {
            if (this.f7483h != (-1)) goto L5;
            this.f7483h = o(this.f7478a);
        L5:
            kotlinx.coroutines.i0 r2 = PusherManager.e();
            if (r2 == null) goto L10;
            kotlinx.coroutines.f.b(r2, null, null, new PusherManager$Traffic$statPushStatsInfo$1(this, null), 3, null);
            return;
        }

        private final void s() {
            this.f7483h += this.c;
            StringBuilder r0 = new StringBuilder();
            r0.append(kotlin.jvm.internal.r.m("\n15分钟内平均帧率：", Integer.valueOf(this.f7480e / kotlin.a0.d.b(this.f7479d, 1))));
            r0.append("\n15分钟内平均码率：" + (this.f7482g / kotlin.a0.d.b(this.f7481f, 1)) + "kb/s");
            r0.append(kotlin.jvm.internal.r.m("\n15分钟内上传流量：", Formatter.formatFileSize(MucangConfig.getContext(), this.c)));
            r0.append(kotlin.jvm.internal.r.m("\n今日上传流量：", Formatter.formatFileSize(MucangConfig.getContext(), this.f7483h)));
            this.f7480e = 0;
            this.f7482g = 0;
            this.c = 0;
            this.f7479d = 0;
            this.f7481f = 0;
            cn.mucang.android.jiakaoyi.framework.log.f.o(kotlin.jvm.internal.r.m("阿里推流阶段信息|", r0));
            p(this.f7478a, this.f7483h);
        }

        public final void q() {
            t1 r0 = this.i;
            t1 r1 = null;
            if (r0 == null) goto L6;
            t1.a.a(r0, null, 1, null);
        L6:
            kotlinx.coroutines.i0 r3 = PusherManager.e();
            if (r3 == null) goto L10;
            r1 = kotlinx.coroutines.f.b(r3, null, null, new PusherManager$Traffic$start$1(this, null), 3, null);
        L10:
            this.i = r1;
        }

        public final void t() {
            t1 r0 = this.i;
            if (r0 == null) goto L6;
            t1.a.a(r0, null, 1, null);
        L6:
            s();
        }
    }

    @Metadata(d1 = {"\u0000\u001f\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\b\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000*\u0001\u0000\b\n\u0018\u00002\u00020\u0001J\u0010\u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u0005H\u0016J\u001a\u0010\u0006\u001a\u00020\u00032\u0006\u0010\u0007\u001a\u00020\u00052\b\u0010\b\u001a\u0004\u0018\u00010\tH\u0016¨\u0006\n"}, d2 = {"cn/mucang/android/jiakaoyi/teachingk2/push/PusherManager$init$2", "Lorg/opencv/android/LoaderCallbackInterface;", "onManagerConnected", "", "status", "", "onPackageInstall", "operation", "callback", "Lorg/opencv/android/InstallCallbackInterface;", "teachbase_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
    public static final class a implements LoaderCallbackInterface {
        a() {
        }

        @Override // org.opencv.android.LoaderCallbackInterface
        public void onManagerConnected(int r1) {
            PusherManager r2 = PusherManager.f7472a;
            PusherManager.p(true);
        }

        @Override // org.opencv.android.LoaderCallbackInterface
        public void onPackageInstall(int r1, InstallCallbackInterface r2) {
        }
    }

    @Metadata(d1 = {"\u0000\u001f\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002*\u0001\u0000\b\n\u0018\u00002\u00020\u0001J\u001c\u0010\u0002\u001a\u00020\u00032\b\u0010\u0004\u001a\u0004\u0018\u00010\u00052\b\u0010\u0006\u001a\u0004\u0018\u00010\u0007H\u0016J\u001c\u0010\b\u001a\u00020\u00032\b\u0010\u0004\u001a\u0004\u0018\u00010\u00052\b\u0010\u0006\u001a\u0004\u0018\u00010\u0007H\u0016¨\u0006\t"}, d2 = {"cn/mucang/android/jiakaoyi/teachingk2/push/PusherManager$setPushListeners$1", "Lcom/alivc/live/pusher/AlivcLivePushErrorListener;", "onSDKError", "", "p0", "Lcom/alivc/live/pusher/AlivcLivePusher;", "p1", "Lcom/alivc/live/pusher/AlivcLivePushError;", "onSystemError", "teachbase_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
    public static final class b implements AlivcLivePushErrorListener {
        b() {
        }

        @Override // com.alivc.live.pusher.AlivcLivePushErrorListener
        public void onSDKError(AlivcLivePusher r2, AlivcLivePushError r3) {
            PusherManager.q(PusherManager.f7472a, Boolean.FALSE);
            if (r3 != null) goto L5;
            String r4 = null;
        L6:
            cn.mucang.android.jiakaoyi.framework.log.f.o(kotlin.jvm.internal.r.m("isPushStart = false,onSDKError:", r4));
            return;
        L5:
            r4 = r3.getMsg();
            goto L6
        }

        @Override // com.alivc.live.pusher.AlivcLivePushErrorListener
        public void onSystemError(AlivcLivePusher r2, AlivcLivePushError r3) {
            PusherManager.q(PusherManager.f7472a, Boolean.FALSE);
            if (r3 != null) goto L5;
            String r4 = null;
        L6:
            cn.mucang.android.jiakaoyi.framework.log.f.o(kotlin.jvm.internal.r.m("isPushStart = false,onSystemError:", r4));
            return;
        L5:
            r4 = r3.getMsg();
            goto L6
        }
    }

    @Metadata(d1 = {"\u0000!\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0002\b\u0004*\u0001\u0000\b\n\u0018\u00002\u00020\u0001J\u0012\u0010\u0002\u001a\u00020\u00032\b\u0010\u0004\u001a\u0004\u0018\u00010\u0005H\u0016J\u0012\u0010\u0006\u001a\u00020\u00032\b\u0010\u0004\u001a\u0004\u0018\u00010\u0005H\u0016J\u0012\u0010\u0007\u001a\u00020\b2\b\u0010\u0004\u001a\u0004\u0018\u00010\u0005H\u0016J\u0012\u0010\t\u001a\u00020\u00032\b\u0010\u0004\u001a\u0004\u0018\u00010\u0005H\u0016J\u0012\u0010\n\u001a\u00020\u00032\b\u0010\u0004\u001a\u0004\u0018\u00010\u0005H\u0016J\u0012\u0010\u000b\u001a\u00020\u00032\b\u0010\u0004\u001a\u0004\u0018\u00010\u0005H\u0016¨\u0006\f"}, d2 = {"cn/mucang/android/jiakaoyi/teachingk2/push/PusherManager$setPushListeners$2", "Lcn/mucang/android/jiakaoyi/teachingk2/push/SimplePushNetworkListener;", "onConnectFail", "", "p0", "Lcom/alivc/live/pusher/AlivcLivePusher;", "onConnectionLost", "onPushURLAuthenticationOverdue", "", "onReconnectFail", "onReconnectSucceed", "onSendDataTimeout", "teachbase_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
    public static final class c extends q0 {
        c() {
        }

        public static /* synthetic */ AliPushUrl a() {
            return b();
        }

        private static final AliPushUrl b() {
            return new o0().n();
        }

        @Override // cn.mucang.android.jiakaoyi.teachingk2.push.q0, com.alivc.live.pusher.AlivcLivePushNetworkListener
        public void onConnectFail(AlivcLivePusher r2) {
            super.onConnectFail(r2);
            PusherManager r3 = PusherManager.f7472a;
            PusherManager.q(r3, Boolean.FALSE);
            cn.mucang.android.jiakaoyi.framework.log.f.o("isPushStart = false,onConnectFail");
            PusherManager.n(r3);
        }

        @Override // cn.mucang.android.jiakaoyi.teachingk2.push.q0, com.alivc.live.pusher.AlivcLivePushNetworkListener
        public void onConnectionLost(AlivcLivePusher r2) {
            super.onConnectionLost(r2);
            PusherManager.q(PusherManager.f7472a, Boolean.FALSE);
            cn.mucang.android.jiakaoyi.framework.log.f.o("isPushStart = false,onConnectionLost");
        }

        @Override // com.alivc.live.pusher.AlivcLivePushNetworkListener
        public String onPushURLAuthenticationOverdue(AlivcLivePusher r3) {
            cn.mucang.android.jiakaoyi.framework.log.f.o("鉴权快过期了，准备替换推流url");
            AliPushUrl r4 = (AliPushUrl) cn.mucang.android.jiakaoyi.framework.e.m.h(a0.f7499a).c();
            if (r4 != null) goto L5;
            String r0 = null;
        L7:
            if (TextUtils.isEmpty(r0) == false) goto L16;
            AlivcLivePusher r5 = PusherManager.c();
            if (r5 == null) goto L23;
            String r6 = r5.getPushUrl();
            if (r6 != null) goto L15;
            return "";
        L15:
            return r6;
        L23:
            return "";
        L16:
            if (r4 == null) goto L25;
            String r7 = r4.getUrl();
            if (r7 != null) goto L22;
            return "";
        L22:
            return r7;
        L25:
            return "";
        L5:
            r0 = r4.getUrl();
            goto L7
        }

        @Override // cn.mucang.android.jiakaoyi.teachingk2.push.q0, com.alivc.live.pusher.AlivcLivePushNetworkListener
        public void onReconnectFail(AlivcLivePusher r2) {
            super.onReconnectFail(r2);
            PusherManager r3 = PusherManager.f7472a;
            PusherManager.q(r3, Boolean.FALSE);
            cn.mucang.android.jiakaoyi.framework.log.f.o("isPushStart = false,onReconnectFail");
            PusherManager.n(r3);
        }

        @Override // cn.mucang.android.jiakaoyi.teachingk2.push.q0, com.alivc.live.pusher.AlivcLivePushNetworkListener
        public void onReconnectSucceed(AlivcLivePusher r4) {
            super.onReconnectSucceed(r4);
            PusherManager r5 = PusherManager.f7472a;
            kotlinx.coroutines.i0 r0 = PusherManager.e();
            boolean r1 = false;
            if (r0 != null) goto L6;
        L8:
            PusherManager.q(r5, Boolean.valueOf(r1));
            cn.mucang.android.jiakaoyi.framework.log.f.o("isPushStart = false,onReconnectSucceed");
            return;
        L6:
            if (kotlinx.coroutines.j0.g(r0) != true) goto L8;
            r1 = true;
            goto L8
        }

        @Override // cn.mucang.android.jiakaoyi.teachingk2.push.q0, com.alivc.live.pusher.AlivcLivePushNetworkListener
        public void onSendDataTimeout(AlivcLivePusher r2) {
            super.onSendDataTimeout(r2);
            PusherManager.q(PusherManager.f7472a, Boolean.FALSE);
            cn.mucang.android.jiakaoyi.framework.log.f.o("isPushStart = false,onSendDataTimeout");
        }
    }

    @Metadata(d1 = {"\u0000\u0019\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0006*\u0001\u0000\b\n\u0018\u00002\u00020\u0001J\u0012\u0010\u0002\u001a\u00020\u00032\b\u0010\u0004\u001a\u0004\u0018\u00010\u0005H\u0016J\u0012\u0010\u0006\u001a\u00020\u00032\b\u0010\u0004\u001a\u0004\u0018\u00010\u0005H\u0016J\u0012\u0010\u0007\u001a\u00020\u00032\b\u0010\u0004\u001a\u0004\u0018\u00010\u0005H\u0016J\u0012\u0010\b\u001a\u00020\u00032\b\u0010\u0004\u001a\u0004\u0018\u00010\u0005H\u0016J\u0012\u0010\t\u001a\u00020\u00032\b\u0010\u0004\u001a\u0004\u0018\u00010\u0005H\u0016J\u0012\u0010\n\u001a\u00020\u00032\b\u0010\u0004\u001a\u0004\u0018\u00010\u0005H\u0016¨\u0006\u000b"}, d2 = {"cn/mucang/android/jiakaoyi/teachingk2/push/PusherManager$setPushListeners$3", "Lcn/mucang/android/jiakaoyi/teachingk2/push/SimplePushInfoListener;", "onPreviewStarted", "", "p0", "Lcom/alivc/live/pusher/AlivcLivePusher;", "onPreviewStoped", "onPushPauesed", "onPushResumed", "onPushStarted", "onPushStoped", "teachbase_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
    public static final class d extends p0 {
        d() {
        }

        @Override // com.alivc.live.pusher.AlivcLivePushInfoListener
        public void onPreviewStarted(AlivcLivePusher r1) {
            cn.mucang.android.jiakaoyi.framework.log.f.o("onPreviewStarted:预览开始");
        }

        @Override // com.alivc.live.pusher.AlivcLivePushInfoListener
        public void onPreviewStoped(AlivcLivePusher r1) {
            cn.mucang.android.jiakaoyi.framework.log.f.o("onPreviewStoped:预览停止");
        }

        @Override // com.alivc.live.pusher.AlivcLivePushInfoListener
        public void onPushPauesed(AlivcLivePusher r2) {
            PusherManager.q(PusherManager.f7472a, Boolean.FALSE);
            cn.mucang.android.jiakaoyi.framework.log.f.o("isPushStart = false,onPushPauesed");
        }

        @Override // com.alivc.live.pusher.AlivcLivePushInfoListener
        public void onPushResumed(AlivcLivePusher r4) {
            PusherManager r5 = PusherManager.f7472a;
            kotlinx.coroutines.i0 r0 = PusherManager.e();
            boolean r1 = false;
            if (r0 != null) goto L6;
        L4:
            boolean r2 = false;
        L8:
            PusherManager.q(r5, Boolean.valueOf(r2));
            StringBuilder r6 = new StringBuilder();
            r6.append("isPushStart = ");
            kotlinx.coroutines.i0 r3 = PusherManager.e();
            if (r3 != null) goto L12;
        L14:
            r6.append(r1);
            r6.append(",onPushResumed");
            cn.mucang.android.jiakaoyi.framework.log.f.o(r6.toString());
            return;
        L12:
            if (kotlinx.coroutines.j0.g(r3) != true) goto L14;
            r1 = true;
            goto L14
        L6:
            if (kotlinx.coroutines.j0.g(r0) != true) goto L4;
            r2 = true;
            goto L8
        }

        @Override // com.alivc.live.pusher.AlivcLivePushInfoListener
        public void onPushStarted(AlivcLivePusher r4) {
            StringBuilder r5 = new StringBuilder();
            r5.append("isPushStart = ");
            kotlinx.coroutines.i0 r0 = PusherManager.e();
            boolean r1 = false;
            if (r0 != null) goto L6;
        L4:
            boolean r2 = false;
        L8:
            r5.append(r2);
            r5.append(", onPushStarted");
            cn.mucang.android.jiakaoyi.framework.log.f.o(r5.toString());
            PusherManager r6 = PusherManager.f7472a;
            kotlinx.coroutines.i0 r3 = PusherManager.e();
            if (r3 != null) goto L12;
        L14:
            PusherManager.q(r6, Boolean.valueOf(r1));
            return;
        L12:
            if (kotlinx.coroutines.j0.g(r3) != true) goto L14;
            r1 = true;
            goto L14
        L6:
            if (kotlinx.coroutines.j0.g(r0) != true) goto L4;
            r2 = true;
            goto L8
        }

        @Override // com.alivc.live.pusher.AlivcLivePushInfoListener
        public void onPushStoped(AlivcLivePusher r2) {
            PusherManager.q(PusherManager.f7472a, Boolean.FALSE);
            cn.mucang.android.jiakaoyi.framework.log.f.o("isPushStart = false,onPushStoped");
        }
    }

    static {
        f7472a = new PusherManager();
        r = d0.f7505a;
        s = new Traffic();
        t = b0.f7501a;
    }

    private PusherManager() {
    }

    private static final void B() {
        l0(f7472a, false, 1, null);
    }

    private static final void D() {
        long r0 = System.currentTimeMillis() - l0.f7521a.b();
        if (r0 <= 10000) goto L16;
        kotlinx.coroutines.i0 r3 = n;
        boolean r4 = false;
        if (r3 != null) goto L8;
    L10:
        if (r4 == false) goto L16;
        PusherStatusHelper.f7484a.a(4);
        j = true;
        cn.mucang.android.jiakaoyi.framework.log.f.o("拉流帧丢失" + (r0 / ((long) 1000)) + 's');
        cn.mucang.android.jiakaoyi.framework.camera.b r1 = c;
        if (r1 == null) goto L16;
        r1.c();
        goto L16
    L8:
        if (kotlinx.coroutines.j0.g(r3) != true) goto L10;
        r4 = true;
    L16:
        if (E() != 1) goto L18;
        PusherStatusHelper.f7484a.a(100);
    L18:
        f7472a.w0();
    }

    public static final int E() {
        if (f7472a.L() == false) goto L26;
        kotlinx.coroutines.i0 r0 = n;
        boolean r1 = false;
        if (r0 != null) goto L8;
    L6:
        boolean r2 = false;
    L10:
        if (r2 == true) goto L12;
        return -1;
    L12:
        if (kotlin.jvm.internal.r.a(i, Boolean.TRUE) == true) goto L14;
        return 2;
    L14:
        if (j == true) goto L28;
        cn.mucang.android.jiakaoyi.framework.camera.b r3 = c;
        if (r3 != null) goto L19;
    L21:
        if (r1 == false) goto L29;
        return 1;
    L29:
        return 2;
    L19:
        if (r3.isPlaying() != true) goto L21;
        r1 = true;
        goto L21
    L28:
        return 2;
    L8:
        if (kotlinx.coroutines.j0.g(r0) != true) goto L6;
        r2 = true;
        goto L10
    L26:
        return -1;
    }

    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:30:0x007e -> B:32:0x0081). Please report as a decompilation issue!!! */
    private final Object F(kotlin.coroutines.c<? super String> r9) {
        if ((r9 instanceof PusherManager$getPushUrl$1) == false) goto L7;
        PusherManager$getPushUrl$1 r0 = (PusherManager$getPushUrl$1) r9;
        int r1 = r0.label;
        if ((r1 & Integer.MIN_VALUE) == 0) goto L7;
        r0.label = r1 - Integer.MIN_VALUE;
    L8:
        Object r10 = r0.result;
        Object r2 = kotlin.coroutines.intrinsics.a.d();
        int r3 = r0.label;
        if (r3 == 0) goto L16;
        if (r3 == 1) goto L15;
        if (r3 != 2) goto L14;
        AliPushUrl r4 = (AliPushUrl) r0.L$0;
        kotlin.k.b(r10);
    L32:
        if (r4 != null) goto L34;
    L17:
        CoroutineDispatcher r11 = w0.b();
        PusherManager$getPushUrl$result$1 r5 = new PusherManager$getPushUrl$result$1(null);
        r0.L$0 = null;
        r0.label = 1;
        r10 = kotlinx.coroutines.f.c(r11, r5, r0);
        if (r10 != r2) goto L20;
        return r2;
    L20:
        r4 = (AliPushUrl) ((cn.mucang.android.jiakaoyi.framework.e.m) r10).c();
        if (r4 != null) goto L23;
        String r12 = null;
    L25:
        if (TextUtils.isEmpty(r12) == true) goto L29;
        if (r4 != null) goto L37;
        return null;
    L37:
        return r4.getUrl();
    L29:
        r0.L$0 = r4;
        r0.label = 2;
        if (s0.a(SimpleExoPlayer.DEFAULT_DETACH_SURFACE_TIMEOUT_MS, r0) != r2) goto L32;
        return r2;
    L23:
        r12 = r4.getUrl();
        goto L25
    L34:
        if (TextUtils.isEmpty(r4.getUrl()) == true) goto L36;
        return null;
    L36:
        if (r4.getType() == 1) goto L17;
        return null;
    L14:
        throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
    L15:
        kotlin.k.b(r10);
        goto L20
    L16:
        kotlin.k.b(r10);
    L7:
        r0 = new PusherManager$getPushUrl$1(this, r9);
        goto L8
    }

    private final void H(Context r8) {
        if (b == null) goto L5;
        return;
    L5:
        StringBuilder r0 = new StringBuilder("阿里云sdk初始化：\n");
        AlivcLivePushConfig r1 = new AlivcLivePushConfig();
        r1.setConnectRetryInterval(2000);
        f7473d = LocalConfigManager.j(LocalConfig.PushQuality, 240);
        AlivcResolutionEnum r2 = AlivcResolutionEnum.RESOLUTION_SELFDEFINE;
        UsbCameraManager r3 = UsbCameraManager.INSTANCE;
        r2.setSelfDefineResolution((r3.getWidth() * f7473d) / r3.getHeight(), f7473d);
        r1.setResolution(r2);
        r0.append("清晰度：" + f7473d + "P\n");
        r0.append("分辨率：" + AlivcResolutionEnum.GetResolutionWidth(r2) + ',' + AlivcResolutionEnum.GetResolutionHeight(r2) + '\n');
        r1.setAudioProfile(AlivcAudioAACProfileEnum.AAC_LC);
        r1.setVideoEncodeMode(AlivcEncodeModeEnum.Encode_MODE_HARD);
        r1.setVideoOnly(true);
        r1.setEnableBitrateControl(true);
        r1.setQualityMode(AlivcQualityModeEnum.QM_FLUENCY_FIRST);
        r1.setPushMirror(p ^ true);
        StringBuilder r4 = new StringBuilder();
        r4.append("是否镜像：");
        r4.append(!p);
        r4.append('\n');
        r0.append(r4.toString());
        cn.mucang.android.jiakaoyi.framework.camera.b r5 = c;
        if (r5 != null) goto L8;
        ImageFormat r6 = null;
    L9:
        if (r6 != null) goto L12;
        r6 = ImageFormat.IMAGE_FORMAT_YUV420P;
    L12:
        if (r6 != ImageFormat.IMAGE_FORMAT_YUV420P) goto L14;
        AlivcImageFormat r7 = AlivcImageFormat.IMAGE_FORMAT_YUV420P;
    L15:
        r0.append("图像格式：" + r7 + '\n');
        r1.setExternMainStream(true, r7, AlivcSoundFormat.SOUND_FORMAT_S16);
        b = new AlivcLivePusher();
        u0();
        AlivcLivePusher r9 = b;
        if (r9 == null) goto L19;
        r9.init(r8, r1);
    L19:
        AlivcLivePusher r10 = b;
        if (r10 == null) goto L23;
        r10.setLogLevel(AlivcLivePushLogLevel.AlivcLivePushLogLevelError);
    L23:
        cn.mucang.android.jiakaoyi.framework.log.f.o(r0.toString());
        return;
    L14:
        r7 = AlivcImageFormat.IMAGE_FORMAT_YUVNV21;
        goto L15
    L8:
        r6 = r5.a();
        goto L9
    }

    private final void I() {
        Handler r0 = m;
        if (r0 == null) goto L6;
        n = kotlinx.coroutines.j0.a(p2.b(null, 1, null).plus(kotlinx.coroutines.android.b.c(r0, null, 1, null)));
    L6:
        kotlinx.coroutines.i0 r2 = n;
        if (r2 == null) goto L10;
        kotlinx.coroutines.f.b(r2, null, null, new PusherManager$initPush$2(null), 3, null);
    L10:
        s.q();
    }

    private final void J() {
        boolean r0 = LocalConfigManager.f(LocalConfig.PushSourceFromAi);
        if (r0 == p) goto L10;
        p = r0;
        cn.mucang.android.jiakaoyi.framework.camera.b r1 = c;
        if (r1 == null) goto L8;
        r1.stop();
    L8:
        c = null;
    L10:
        if (c == null) goto L13;
        return;
    L13:
        if (p == false) goto L15;
        cn.mucang.android.jiakaoyi.framework.log.f.o("AI推流模式");
        cn.mucang.android.jiakaoyi.framework.camera.b r2 = new j0();
    L16:
        c = r2;
        if (r2 == null) goto L21;
        r2.e(this);
        return;
    L21:
        return;
    L15:
        cn.mucang.android.jiakaoyi.framework.log.f.o("USB推流模式");
        r2 = new UsbCameraAdapter(CameraIntent.PUSH);
        goto L16
    }

    private final void K() {
        if (LocalConfigManager.f(LocalConfig.PushTimeEnable) == true) goto L5;
        return;
    L5:
        if (p == true) goto L9;
        f7477h = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
        return;
    }

    public static /* synthetic */ void M(kotlin.v r0) {
        i0(r0);
    }

    public static /* synthetic */ void N(Throwable r0) {
        r0(r0);
    }

    public static /* synthetic */ kotlin.v O() {
        return g0();
    }

    public static /* synthetic */ void P() {
        d0();
    }

    public static /* synthetic */ kotlin.v Q() {
        return z();
    }

    public static /* synthetic */ void R(boolean r0) {
        f0(r0);
    }

    public static /* synthetic */ kotlin.v S() {
        return m0();
    }

    public static /* synthetic */ void T() {
        B();
    }

    public static /* synthetic */ kotlin.v U() {
        return q0();
    }

    public static /* synthetic */ void V(Throwable r0) {
        h0(r0);
    }

    public static /* synthetic */ void W() {
        y();
    }

    public static /* synthetic */ void X() {
        p0();
    }

    public static /* synthetic */ void Y() {
        D();
    }

    public static /* synthetic */ kotlin.v Z(AlivcLivePusher r0) {
        return s0(r0);
    }

    public static /* synthetic */ void a0(PushSwitchModel r0) {
        c0(r0);
    }

    public static final /* synthetic */ void b(PusherManager r0) {
        r0.w();
    }

    public static /* synthetic */ void b0(AlivcLivePusher r0) {
        o0(r0);
    }

    public static final /* synthetic */ AlivcLivePusher c() {
        return b;
    }

    private static final void c0(PushSwitchModel r2) {
        if (r2.isEnable == false) goto L10;
        Runnable r3 = q;
        if (r3 == null) goto L8;
        cn.mucang.android.core.utils.u.e(r3);
        q = null;
    L8:
        f7472a.e0(true);
        return;
    L10:
        if (q != null) goto L14;
        g r4 = g.f7510a;
        q = r4;
        cn.mucang.android.core.utils.u.d(r4, 180000);
        return;
    }

    public static final /* synthetic */ boolean d() {
        return f7476g;
    }

    private static final void d0() {
        PusherManager r0 = f7472a;
        q = null;
        r0.e0(false);
    }

    public static final /* synthetic */ kotlinx.coroutines.i0 e() {
        return n;
    }

    private final void e0(final boolean r3) {
        Handler r0 = m;
        if (r0 == null) goto L7;
        r0.post(new i(r3));
        return;
    }

    public static final /* synthetic */ Object f(PusherManager r0, kotlin.coroutines.c r1) {
        return r0.F(r1);
    }

    private static final void f0(boolean r3) {
        boolean r0 = false;
        if (r3 == false) goto L13;
        kotlinx.coroutines.i0 r4 = n;
        if (r4 != null) goto L8;
    L10:
        if (r0 == true) goto L12;
        cn.mucang.android.jiakaoyi.framework.log.f.o("监控中心请求打开推流");
        f7472a.J();
        cn.mucang.android.jiakaoyi.framework.e.m r5 = cn.mucang.android.jiakaoyi.framework.e.m.h(f.f7508a);
        r5.f(o.f7531a);
        r5.g(cn.mucang.android.jiakaoyi.teachingk2.push.d.f7504a);
        return;
    L12:
        cn.mucang.android.jiakaoyi.framework.log.f.o("监控中心请求打开推流（重复）");
        return;
    L8:
        if (kotlinx.coroutines.j0.g(r4) != true) goto L10;
        r0 = true;
        goto L10
    L13:
        kotlinx.coroutines.i0 r6 = n;
        if (r6 != null) goto L17;
    L15:
        boolean r7 = false;
    L19:
        if (r7 == false) goto L21;
        cn.mucang.android.jiakaoyi.framework.log.f.o("监控中心请求关闭推流");
        l0(f7472a, false, 1, null);
        return;
    L21:
        cn.mucang.android.jiakaoyi.framework.log.f.o("监控中心请求关闭推流（重复）");
        return;
    L17:
        if (kotlinx.coroutines.j0.g(r6) != true) goto L15;
        r7 = true;
        goto L19
    }

    public static final /* synthetic */ t1 g() {
        return o;
    }

    private static final kotlin.v g0() {
        PusherManager r0 = f7472a;
        Application r1 = MucangConfig.getContext();
        kotlin.jvm.internal.r.d(r1, "getContext()");
        r0.H(r1);
        return kotlin.v.f15822a;
    }

    public static final /* synthetic */ cn.mucang.android.jiakaoyi.framework.camera.b h() {
        return c;
    }

    private static final void h0(Throwable r0) {
        cn.mucang.android.jiakaoyi.framework.log.f.o("阿里云init失败");
    }

    public static final /* synthetic */ SimpleDateFormat i() {
        return f7477h;
    }

    private static final void i0(kotlin.v r0) {
        f7472a.I();
    }

    public static final /* synthetic */ byte[] j() {
        return f7475f;
    }

    private final void j0() {
        kotlinx.coroutines.i0 r0 = n;
        if (r0 == null) goto L7;
        kotlinx.coroutines.f.b(r0, null, null, new PusherManager$reconnect$1(null), 3, null);
        return;
    }

    public static final /* synthetic */ Mat k() {
        return f7474e;
    }

    private final void k0(boolean r4) {
        cn.mucang.android.jiakaoyi.framework.log.f.o("释放推流相关资源");
        s.t();
        x0();
        cn.mucang.android.jiakaoyi.framework.camera.b r0 = c;
        if (r0 == null) goto L6;
        r0.stop();
    L6:
        t1 r1 = o;
        if (r1 == null) goto L10;
        t1.a.a(r1, null, 1, null);
    L10:
        kotlinx.coroutines.i0 r2 = n;
        if (r2 == null) goto L14;
        kotlinx.coroutines.j0.d(r2, null, 1, null);
    L14:
        t0();
        if (r4 == false) goto L17;
        cn.mucang.android.jiakaoyi.framework.e.m.h(j.f7516a);
        cn.mucang.android.jiakaoyi.framework.log.f.o("阿里云推流已释放完成");
    L17:
        o = null;
        n = null;
        v0(null);
    }

    public static final /* synthetic */ void l(PusherManager r0) {
        r0.K();
    }

    static /* synthetic */ void l0(PusherManager r0, boolean r1, int r2, Object r3) {
        if ((r2 & 1) == 0) goto L5;
        r1 = true;
    L5:
        r0.k0(r1);
    }

    public static final /* synthetic */ Boolean m() {
        return i;
    }

    private static final kotlin.v m0() {
        AlivcLivePusher r0 = b;
        if (r0 != null) goto L5;
        return null;
    L5:
        r0.stopPush();
        return kotlin.v.f15822a;
    }

    public static final /* synthetic */ void n(PusherManager r0) {
        r0.j0();
    }

    private final void n0() {
        cn.mucang.android.jiakaoyi.framework.log.f.o("销毁再重新初始化阿里sdk");
        k0(false);
        final AlivcLivePusher r0 = b;
        HandlerThread r1 = l;
        Handler r2 = m;
        b = null;
        l = null;
        m = null;
        if (r2 == null) goto L6;
        r2.removeCallbacksAndMessages(null);
    L6:
        if (r2 == null) goto L9;
        r2.post(new e0(r0));
    L9:
        if (r1 == null) goto L13;
        r1.quitSafely();
        return;
    }

    public static final /* synthetic */ void o(PusherManager r0) {
        r0.n0();
    }

    private static final void o0(final AlivcLivePusher r3) {
        int r1 = k;
        k = r1 + 1;
        HandlerThread r0 = new HandlerThread(kotlin.jvm.internal.r.m("阿里推流", Integer.valueOf(r1)));
        l = r0;
        kotlin.jvm.internal.r.c(r0);
        r0.start();
        HandlerThread r2 = l;
        kotlin.jvm.internal.r.c(r2);
        Handler r4 = new Handler(r2.getLooper());
        m = r4;
        if (r4 == null) goto L6;
        r4.post(t.f7536a);
    L6:
        cn.mucang.android.jiakaoyi.framework.e.m.h(new c0(r3));
        cn.mucang.android.jiakaoyi.framework.log.f.o("销毁完成");
    }

    public static final /* synthetic */ void p(boolean r0) {
        f7476g = r0;
    }

    private static final void p0() {
        cn.mucang.android.jiakaoyi.framework.e.m.h(m.f7524a).f(e.f7506a);
    }

    public static final /* synthetic */ void q(PusherManager r0, Boolean r1) {
        r0.v0(r1);
    }

    private static final kotlin.v q0() {
        PusherManager r0 = f7472a;
        Application r1 = MucangConfig.getContext();
        kotlin.jvm.internal.r.d(r1, "getContext()");
        r0.H(r1);
        return kotlin.v.f15822a;
    }

    public static final /* synthetic */ void r(t1 r0) {
        o = r0;
    }

    private static final void r0(Throwable r0) {
        cn.mucang.android.jiakaoyi.framework.log.f.o("阿里云init失败");
    }

    public static final /* synthetic */ void s(long r0) {
        v = r0;
    }

    private static final kotlin.v s0(AlivcLivePusher r0) {
        if (r0 != null) goto L4;
        return null;
    L4:
        r0.destroy();
        return kotlin.v.f15822a;
    }

    public static final /* synthetic */ void t(byte[] r0) {
        f7475f = r0;
    }

    private final void t0() {
        f7477h = null;
        Mat r1 = f7474e;
        if (r1 == null) goto L6;
        r1.release();
    L6:
        f7474e = null;
        f7475f = null;
    }

    public static final /* synthetic */ void u(Mat r0) {
        f7474e = r0;
    }

    private final void u0() {
        AlivcLivePusher r0 = b;
        if (r0 == null) goto L6;
        r0.setLivePushErrorListener(new b());
    L6:
        AlivcLivePusher r1 = b;
        if (r1 == null) goto L10;
        r1.setLivePushNetworkListener(new c());
    L10:
        AlivcLivePusher r2 = b;
        if (r2 == null) goto L15;
        r2.setLivePushInfoListener(new d());
        return;
    }

    public static final /* synthetic */ void v(PusherManager r0) {
        r0.w0();
    }

    private final void v0(Boolean r4) {
        if (kotlin.jvm.internal.r.a(r4, Boolean.FALSE) == true) goto L5;
    L14:
        i = r4;
        return;
    L5:
        if (kotlin.jvm.internal.r.a(i, r4) == true) goto L14;
        kotlinx.coroutines.i0 r0 = n;
        boolean r1 = false;
        if (r0 != null) goto L10;
    L12:
        if (r1 == true) goto L14;
        PusherStatusHelper.f7484a.a(5);
        goto L14
    L10:
        if (kotlinx.coroutines.j0.g(r0) != true) goto L12;
        r1 = true;
        goto L12
    }

    private final void w() {
        kotlinx.coroutines.i0 r0 = n;
        if (r0 == null) goto L7;
        kotlinx.coroutines.f.b(r0, null, null, new PusherManager$checkPushStatus$1(null), 3, null);
        return;
    }

    private final void w0() {
        cn.mucang.android.core.utils.u.e(t);
        cn.mucang.android.core.utils.u.d(t, 30000);
    }

    private final void x0() {
        cn.mucang.android.core.utils.u.e(t);
    }

    private static final void y() {
        l0(f7472a, false, 1, null);
        c = null;
        cn.mucang.android.jiakaoyi.framework.e.m.h(h.f7512a);
    }

    private static final kotlin.v z() {
        AlivcLivePusher r0 = b;
        if (r0 != null) goto L5;
        return null;
    L5:
        r0.destroy();
        return kotlin.v.f15822a;
    }

    public final void A() {
        cn.mucang.android.jiakaoyi.framework.utils.i0.i("key_enable_pusher", false);
        kotlinx.coroutines.f.b(kotlinx.coroutines.j0.a(w0.b()), null, null, new PusherManager$disable$1(null), 3, null);
        Handler r0 = m;
        if (r0 == null) goto L7;
        r0.post(l.f7520a);
        return;
    }

    public final void C() {
        cn.mucang.android.jiakaoyi.framework.utils.i0.i("key_enable_pusher", true);
        kotlinx.coroutines.f.b(kotlinx.coroutines.j0.a(w0.b()), null, null, new PusherManager$enable$1(null), 3, null);
    }

    public final void G() {
        int r1 = k;
        k = r1 + 1;
        HandlerThread r0 = new HandlerThread(kotlin.jvm.internal.r.m("阿里推流", Integer.valueOf(r1)));
        l = r0;
        kotlin.jvm.internal.r.c(r0);
        r0.start();
        HandlerThread r2 = l;
        kotlin.jvm.internal.r.c(r2);
        m = new Handler(r2.getLooper());
        p = LocalConfigManager.f(LocalConfig.PushSourceFromAi);
        kotlinx.coroutines.f.b(kotlinx.coroutines.j0.a(w0.b()), null, null, new PusherManager$init$1(null), 3, null);
        if (OpenCVLoader.initDebug() == true) goto L5;
        OpenCVLoader.initAsync(OpenCVLoader.OPENCV_VERSION, MucangConfig.getContext(), new a());
    L6:
        LiveBus.d(PushSwitchModel.class).q(r);
        return;
    L5:
        f7476g = true;
        goto L6
    }

    public final boolean L() {
        return cn.mucang.android.jiakaoyi.framework.utils.i0.b("key_enable_pusher", true);
    }

    @Override // cn.mucang.android.jiakaoyi.framework.camera.c
    public void a(byte[] r15, int r16, int r17, int r18, int r19, long r20, int r22) {
        kotlin.jvm.internal.r.e(r15, "byteArray");
        j = false;
        l0.f7521a.a();
        if ((System.currentTimeMillis() - v) >= SilenceSkippingAudioProcessor.DEFAULT_PADDING_SILENCE_US) goto L6;
        int r0 = 33;
    L9:
        long r1 = System.currentTimeMillis();
        long r5 = u;
        long r9 = r0;
        if ((r1 - r5) < r9) goto L12;
    L14:
        u = r1;
        kotlinx.coroutines.i0 r2 = n;
        if (r2 == null) goto L19;
        kotlinx.coroutines.f.b(r2, null, null, new PusherManager$onFrame$1(r16, r17, r15, r18, r19, r20, r22, null), 3, null);
        return;
    L19:
        return;
    L12:
        if (((r9 - r1) + r5) <= 10) goto L14;
        return;
    L6:
        if (f7473d != 240) goto L8;
        r0 = 100;
        goto L9
    L8:
        r0 = 66;
        goto L9
    }

    public final void x() {
        LiveBus.d(PushSwitchModel.class).m(r);
        Handler r0 = m;
        if (r0 == null) goto L6;
        r0.removeCallbacksAndMessages(null);
    L6:
        Handler r1 = m;
        if (r1 == null) goto L10;
        r1.post(s.f7535a);
    L10:
        HandlerThread r2 = l;
        if (r2 == null) goto L14;
        r2.quitSafely();
    L14:
        l = null;
        m = null;
    }
}
