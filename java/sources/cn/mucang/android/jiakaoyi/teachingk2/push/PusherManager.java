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
import cn.mucang.android.jiakaoyi.framework.camera.SourceVideoStream;
import cn.mucang.android.jiakaoyi.framework.camera.YuvFrameCallback;
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
import com.google.android.exoplayer2.audio.SilenceSkippingAudioProcessor;
import com.google.android.exoplayer2.text.ttml.TtmlNode;
import com.mobile.auth.gatewayauth.Constant;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.List;
import java.util.concurrent.Callable;
import kotlin.Metadata;
import kotlin.text.StringsKt__StringsKt;
import kotlinx.coroutines.p2;
import kotlinx.coroutines.t1;
import kotlinx.coroutines.w0;
import org.opencv.android.InstallCallbackInterface;
import org.opencv.android.LoaderCallbackInterface;
import org.opencv.android.OpenCVLoader;
import org.opencv.core.Mat;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\u008c\u0001\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\b\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u000b\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\t\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0012\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\b\t\n\u0002\u0018\u0002\n\u0002\b\u0017\bÆ\u0002\u0018\u00002\u00020\u0001:\u0001ZB\u0007\b\u0002¢\u0006\u0002\u0010\u0002J\b\u00109\u001a\u00020:H\u0002J\u0006\u0010;\u001a\u00020:J\u0006\u0010<\u001a\u00020:J\u0006\u0010=\u001a\u00020:J\b\u0010>\u001a\u00020\u0004H\u0007J\u0013\u0010?\u001a\u0004\u0018\u00010\u0006H\u0082@ø\u0001\u0000¢\u0006\u0002\u0010@J\u0006\u0010A\u001a\u00020:J\u0010\u0010B\u001a\u00020:2\u0006\u0010C\u001a\u00020DH\u0002J\b\u0010E\u001a\u00020:H\u0002J\b\u0010F\u001a\u00020:H\u0002J\b\u0010G\u001a\u00020:H\u0002J\u0006\u0010H\u001a\u00020\u0014J@\u0010I\u001a\u00020:2\u0006\u0010J\u001a\u0002062\u0006\u0010K\u001a\u00020\u00042\u0006\u0010L\u001a\u00020\u00042\u0006\u0010M\u001a\u00020\u00042\u0006\u0010N\u001a\u00020\u00042\u0006\u0010O\u001a\u00020\u00162\u0006\u0010P\u001a\u00020\u0004H\u0016J\u0010\u0010Q\u001a\u00020:2\u0006\u0010H\u001a\u00020\u0014H\u0002J\b\u0010R\u001a\u00020:H\u0002J\u0012\u0010S\u001a\u00020:2\b\b\u0002\u0010T\u001a\u00020\u0014H\u0003J\b\u0010U\u001a\u00020:H\u0003J\b\u0010V\u001a\u00020:H\u0003J\b\u0010W\u001a\u00020:H\u0002J\b\u0010X\u001a\u00020:H\u0002J\b\u0010Y\u001a\u00020:H\u0002R\u000e\u0010\u0003\u001a\u00020\u0004X\u0082T¢\u0006\u0002\n\u0000R\u000e\u0010\u0005\u001a\u00020\u0006X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010\u0007\u001a\u00020\u0006X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010\b\u001a\u00020\u0006X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010\t\u001a\u00020\u0006X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010\n\u001a\u00020\u0006X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010\u000b\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010\f\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010\r\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010\u000e\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010\u000f\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010\u0010\u001a\u00020\u0006X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010\u0011\u001a\u00020\u0012X\u0082\u000e¢\u0006\u0002\n\u0000R\u000e\u0010\u0013\u001a\u00020\u0014X\u0082\u000e¢\u0006\u0002\n\u0000R\u000e\u0010\u0015\u001a\u00020\u0016X\u0082\u000e¢\u0006\u0002\n\u0000R\u0010\u0010\u0017\u001a\u0004\u0018\u00010\u0018X\u0082\u000e¢\u0006\u0002\n\u0000R$\u0010\u001a\u001a\u0004\u0018\u00010\u00142\b\u0010\u0019\u001a\u0004\u0018\u00010\u0014@BX\u0082\u000e¢\u0006\n\n\u0002\u0010\u001d\"\u0004\b\u001b\u0010\u001cR\u0010\u0010\u001e\u001a\u0004\u0018\u00010\u001fX\u0082\u000e¢\u0006\u0002\n\u0000R\u0014\u0010 \u001a\b\u0012\u0004\u0012\u00020\"0!X\u0082\u000e¢\u0006\u0002\n\u0000R\u000e\u0010#\u001a\u00020\u0014X\u0082\u000e¢\u0006\u0002\n\u0000R\u0010\u0010$\u001a\u0004\u0018\u00010%X\u0082\u000e¢\u0006\u0002\n\u0000R\u0010\u0010&\u001a\u0004\u0018\u00010'X\u0082\u000e¢\u0006\u0002\n\u0000R\u000e\u0010(\u001a\u00020\u0004X\u0082\u000e¢\u0006\u0002\n\u0000R\u0010\u0010)\u001a\u0004\u0018\u00010*X\u0082\u000e¢\u0006\u0002\n\u0000R\u0010\u0010+\u001a\u0004\u0018\u00010\u0012X\u0082\u000e¢\u0006\u0002\n\u0000R\u000e\u0010,\u001a\u00020\u0014X\u0082\u000e¢\u0006\u0002\n\u0000R\u0010\u0010-\u001a\u0004\u0018\u00010.X\u0082\u000e¢\u0006\u0002\n\u0000R\u000e\u0010/\u001a\u00020\u0016X\u0082\u000e¢\u0006\u0002\n\u0000R\u000e\u00100\u001a\u00020\u0004X\u0082\u000e¢\u0006\u0002\n\u0000R\u0010\u00101\u001a\u0004\u0018\u000102X\u0082\u000e¢\u0006\u0002\n\u0000R\u000e\u00103\u001a\u000204X\u0082\u0004¢\u0006\u0002\n\u0000R\u0010\u00105\u001a\u0004\u0018\u000106X\u0082\u000e¢\u0006\u0002\n\u0000R\u0010\u00107\u001a\u0004\u0018\u000108X\u0082\u000e¢\u0006\u0002\n\u0000\u0082\u0002\u0004\n\u0002\b\u0019¨\u0006["}, d2 = {"Lcn/mucang/android/jiakaoyi/teachingk2/push/PusherManager;", "Lcn/mucang/android/jiakaoyi/framework/camera/YuvFrameCallback;", "()V", "FRAME_HEART_TIME_S", "", "KEY_ENABLE_PUSHER", "", "KEY_IS_SYNC", "KEY_QUALITY", "KEY_SHOW_TIME", "KEY_VIDEO_SOURCE_AI", "QUALITY_LOW", "QUALITY_NORMAL", "STATUS_CLOSE", "STATUS_FAIL", "STATUS_NORMAL", "TAG", "frameHeartRun", "Ljava/lang/Runnable;", "frameLost", "", "frameTime", "", "handler", "Landroid/os/Handler;", "value", "isPushStart", "setPushStart", "(Ljava/lang/Boolean;)V", "Ljava/lang/Boolean;", "mAlivcLivePusher", "Lcom/alivc/live/pusher/AlivcLivePusher;", "observer", "Landroidx/lifecycle/Observer;", "Lcn/mucang/jiakaoyi/uilib/socket/model/PushSwitchModel;", "openCVLoaded", "pushScope", "Lkotlinx/coroutines/CoroutineScope;", "pusherThread", "Landroid/os/HandlerThread;", "quality", "reconnectJob", "Lkotlinx/coroutines/Job;", "releaseTask", "sourceFromAi", "sourceVideoStream", "Lcn/mucang/android/jiakaoyi/framework/camera/SourceVideoStream;", "startPushTime", "threadNum", "timeFormat", "Ljava/text/SimpleDateFormat;", "traffic", "Lcn/mucang/android/jiakaoyi/teachingk2/push/PusherManager$Traffic;", "waterData", "", "watermarkMat", "Lorg/opencv/core/Mat;", "checkPushStatus", "", "destroy", "disable", "enable", "getPushStatus", "getPushUrl", "(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "init", "initAliPush", "context", "Landroid/content/Context;", "initPush", "initSource", "initWatermark", Constant.API_PARAMS_KEY_ENABLE, "onFrame", "byteArray", "width", "height", "stride", "size", "timeUs", "rotation", "onPushToggle", "reconnect", "release", "releasePush", "releaseThenInit", "releaseTimeWater", "setPushListeners", "startFrameHeartbeat", "stopFrameHeartbeat", "Traffic", "teachbase_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
public final class PusherManager implements YuvFrameCallback {
    private static AlivcLivePusher b = null;
    private static SourceVideoStream c = null;

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
    private static long u;
    private static long v;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final PusherManager f7472a = new PusherManager();
    private static androidx.lifecycle.a0<PushSwitchModel> r = new androidx.lifecycle.a0() { // from class: cn.mucang.android.jiakaoyi.teachingk2.push.d0
        @Override // androidx.lifecycle.a0
        public final void onChanged(Object obj) {
            PusherManager.c0((PushSwitchModel) obj);
        }
    };
    private static final Traffic s = new Traffic();
    private static Runnable t = new Runnable() { // from class: cn.mucang.android.jiakaoyi.teachingk2.push.b0
        @Override // java.lang.Runnable
        public final void run() {
            PusherManager.D();
        }
    };

    @Metadata(d1 = {"\u00000\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0010\t\n\u0000\n\u0002\u0010\b\n\u0002\b\b\n\u0002\u0010\u0002\n\u0002\b\u0006\u0018\u00002\u00020\u0001B\u0005¢\u0006\u0002\u0010\u0002J\u0010\u0010\u0011\u001a\u00020\t2\u0006\u0010\u0012\u001a\u00020\u0006H\u0002J\u0018\u0010\u0013\u001a\u00020\u00142\u0006\u0010\u0012\u001a\u00020\u00062\u0006\u0010\u0015\u001a\u00020\tH\u0002J\u0006\u0010\u0016\u001a\u00020\u0014J\b\u0010\u0017\u001a\u00020\u0014H\u0002J\b\u0010\u0018\u001a\u00020\u0014H\u0002J\u0006\u0010\u0019\u001a\u00020\u0014R\u0010\u0010\u0003\u001a\u0004\u0018\u00010\u0004X\u0082\u000e¢\u0006\u0002\n\u0000R\u000e\u0010\u0005\u001a\u00020\u0006X\u0082D¢\u0006\u0002\n\u0000R\u000e\u0010\u0007\u001a\u00020\u0006X\u0082D¢\u0006\u0002\n\u0000R\u000e\u0010\b\u001a\u00020\tX\u0082\u000e¢\u0006\u0002\n\u0000R\u000e\u0010\n\u001a\u00020\u000bX\u0082\u000e¢\u0006\u0002\n\u0000R\u000e\u0010\f\u001a\u00020\u000bX\u0082\u000e¢\u0006\u0002\n\u0000R\u000e\u0010\r\u001a\u00020\tX\u0082\u000e¢\u0006\u0002\n\u0000R\u000e\u0010\u000e\u001a\u00020\tX\u0082\u000e¢\u0006\u0002\n\u0000R\u000e\u0010\u000f\u001a\u00020\u000bX\u0082\u000e¢\u0006\u0002\n\u0000R\u000e\u0010\u0010\u001a\u00020\u000bX\u0082\u000e¢\u0006\u0002\n\u0000¨\u0006\u001a"}, d2 = {"Lcn/mucang/android/jiakaoyi/teachingk2/push/PusherManager$Traffic;", "", "()V", "job", "Lkotlinx/coroutines/Job;", "keyFrameSize", "", "keyUploadSize", "lastTotalFrames", "", "statBitrateCount", "", "statFpsCount", "todayUploadSize", "uploadSize", "videoCaptureFps", "videoUploadBitrate", "getTodaySize", "key", "putTodaySize", "", "size", TtmlNode.START, "statPushStatsInfo", "statTraffic", "stop", "teachbase_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
    public static final class Traffic {
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
        private t1 i;

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private final String f7478a = "key_pusher_today_upload_size";

        /* JADX INFO: renamed from: h, reason: collision with root package name */
        private long f7483h = -1;

        private final long o(String str) {
            Long l;
            String string = cn.mucang.android.jiakaoyi.framework.utils.i0.g(str, "");
            kotlin.jvm.internal.r.d(string, "string");
            if (string.length() > 0) {
                List listP0 = StringsKt__StringsKt.p0(string, new String[]{"#"}, false, 0, 6, null);
                String str2 = (String) kotlin.collections.s.f0(listP0, 0);
                String str3 = (String) kotlin.collections.s.f0(listP0, 1);
                long jLongValue = (str3 == null || (l = kotlin.text.s.l(str3)) == null) ? 0L : l.longValue();
                if (kotlin.jvm.internal.r.a(str2, new SimpleDateFormat("yyyy-MM-dd").format(new Date()))) {
                    return jLongValue;
                }
            }
            return 0L;
        }

        private final void p(String str, long j) {
            String str2 = new SimpleDateFormat("yyyy-MM-dd").format(new Date());
            StringBuilder sb = new StringBuilder();
            sb.append((Object) str2);
            sb.append('#');
            sb.append(j);
            cn.mucang.android.jiakaoyi.framework.utils.i0.m(str, sb.toString());
        }

        /* JADX INFO: Access modifiers changed from: private */
        public final void r() {
            if (this.f7483h == -1) {
                this.f7483h = o(this.f7478a);
            }
            kotlinx.coroutines.i0 i0Var = PusherManager.n;
            if (i0Var == null) {
                return;
            }
            kotlinx.coroutines.g.b(i0Var, null, null, new PusherManager$Traffic$statPushStatsInfo$1(this, null), 3, null);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public final void s() {
            this.f7483h += this.c;
            StringBuilder sb = new StringBuilder();
            sb.append(kotlin.jvm.internal.r.m("\n15分钟内平均帧率：", Integer.valueOf(this.f7480e / kotlin.ranges.f.b(this.f7479d, 1))));
            sb.append("\n15分钟内平均码率：" + (this.f7482g / kotlin.ranges.f.b(this.f7481f, 1)) + "kb/s");
            sb.append(kotlin.jvm.internal.r.m("\n15分钟内上传流量：", Formatter.formatFileSize(MucangConfig.getContext(), this.c)));
            sb.append(kotlin.jvm.internal.r.m("\n今日上传流量：", Formatter.formatFileSize(MucangConfig.getContext(), this.f7483h)));
            this.f7480e = 0;
            this.f7482g = 0;
            this.c = 0L;
            this.f7479d = 0;
            this.f7481f = 0;
            cn.mucang.android.jiakaoyi.framework.log.f.o(kotlin.jvm.internal.r.m("阿里推流阶段信息|", sb));
            p(this.f7478a, this.f7483h);
        }

        public final void q() {
            t1 t1Var = this.i;
            if (t1Var != null) {
                t1.a.a(t1Var, null, 1, null);
            }
            kotlinx.coroutines.i0 i0Var = PusherManager.n;
            this.i = i0Var != null ? kotlinx.coroutines.g.b(i0Var, null, null, new PusherManager$Traffic$start$1(this, null), 3, null) : null;
        }

        public final void t() {
            t1 t1Var = this.i;
            if (t1Var != null) {
                t1.a.a(t1Var, null, 1, null);
            }
            s();
        }
    }

    @Metadata(d1 = {"\u0000\u001f\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\b\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000*\u0001\u0000\b\n\u0018\u00002\u00020\u0001J\u0010\u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u0005H\u0016J\u001a\u0010\u0006\u001a\u00020\u00032\u0006\u0010\u0007\u001a\u00020\u00052\b\u0010\b\u001a\u0004\u0018\u00010\tH\u0016¨\u0006\n"}, d2 = {"cn/mucang/android/jiakaoyi/teachingk2/push/PusherManager$init$2", "Lorg/opencv/android/LoaderCallbackInterface;", "onManagerConnected", "", "status", "", "onPackageInstall", "operation", "callback", "Lorg/opencv/android/InstallCallbackInterface;", "teachbase_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
    public static final class a implements LoaderCallbackInterface {
        a() {
        }

        @Override // org.opencv.android.LoaderCallbackInterface
        public void onManagerConnected(int status) {
            PusherManager pusherManager = PusherManager.f7472a;
            PusherManager.f7476g = true;
        }

        @Override // org.opencv.android.LoaderCallbackInterface
        public void onPackageInstall(int operation, InstallCallbackInterface callback) {
        }
    }

    @Metadata(d1 = {"\u0000\u001f\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002*\u0001\u0000\b\n\u0018\u00002\u00020\u0001J\u001c\u0010\u0002\u001a\u00020\u00032\b\u0010\u0004\u001a\u0004\u0018\u00010\u00052\b\u0010\u0006\u001a\u0004\u0018\u00010\u0007H\u0016J\u001c\u0010\b\u001a\u00020\u00032\b\u0010\u0004\u001a\u0004\u0018\u00010\u00052\b\u0010\u0006\u001a\u0004\u0018\u00010\u0007H\u0016¨\u0006\t"}, d2 = {"cn/mucang/android/jiakaoyi/teachingk2/push/PusherManager$setPushListeners$1", "Lcom/alivc/live/pusher/AlivcLivePushErrorListener;", "onSDKError", "", "p0", "Lcom/alivc/live/pusher/AlivcLivePusher;", "p1", "Lcom/alivc/live/pusher/AlivcLivePushError;", "onSystemError", "teachbase_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
    public static final class b implements AlivcLivePushErrorListener {
        b() {
        }

        @Override // com.alivc.live.pusher.AlivcLivePushErrorListener
        public void onSDKError(AlivcLivePusher p0, AlivcLivePushError p1) {
            PusherManager.f7472a.v0(Boolean.FALSE);
            cn.mucang.android.jiakaoyi.framework.log.f.o(kotlin.jvm.internal.r.m("isPushStart = false,onSDKError:", p1 == null ? null : p1.getMsg()));
        }

        @Override // com.alivc.live.pusher.AlivcLivePushErrorListener
        public void onSystemError(AlivcLivePusher p0, AlivcLivePushError p1) {
            PusherManager.f7472a.v0(Boolean.FALSE);
            cn.mucang.android.jiakaoyi.framework.log.f.o(kotlin.jvm.internal.r.m("isPushStart = false,onSystemError:", p1 == null ? null : p1.getMsg()));
        }
    }

    @Metadata(d1 = {"\u0000!\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0002\b\u0004*\u0001\u0000\b\n\u0018\u00002\u00020\u0001J\u0012\u0010\u0002\u001a\u00020\u00032\b\u0010\u0004\u001a\u0004\u0018\u00010\u0005H\u0016J\u0012\u0010\u0006\u001a\u00020\u00032\b\u0010\u0004\u001a\u0004\u0018\u00010\u0005H\u0016J\u0012\u0010\u0007\u001a\u00020\b2\b\u0010\u0004\u001a\u0004\u0018\u00010\u0005H\u0016J\u0012\u0010\t\u001a\u00020\u00032\b\u0010\u0004\u001a\u0004\u0018\u00010\u0005H\u0016J\u0012\u0010\n\u001a\u00020\u00032\b\u0010\u0004\u001a\u0004\u0018\u00010\u0005H\u0016J\u0012\u0010\u000b\u001a\u00020\u00032\b\u0010\u0004\u001a\u0004\u0018\u00010\u0005H\u0016¨\u0006\f"}, d2 = {"cn/mucang/android/jiakaoyi/teachingk2/push/PusherManager$setPushListeners$2", "Lcn/mucang/android/jiakaoyi/teachingk2/push/SimplePushNetworkListener;", "onConnectFail", "", "p0", "Lcom/alivc/live/pusher/AlivcLivePusher;", "onConnectionLost", "onPushURLAuthenticationOverdue", "", "onReconnectFail", "onReconnectSucceed", "onSendDataTimeout", "teachbase_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
    public static final class c extends SimplePushNetworkListener {
        c() {
        }

        /* JADX INFO: Access modifiers changed from: private */
        public static final AliPushUrl b() {
            return new PushApi().n();
        }

        @Override // cn.mucang.android.jiakaoyi.teachingk2.push.SimplePushNetworkListener, com.alivc.live.pusher.AlivcLivePushNetworkListener
        public void onConnectFail(AlivcLivePusher p0) {
            super.onConnectFail(p0);
            PusherManager pusherManager = PusherManager.f7472a;
            pusherManager.v0(Boolean.FALSE);
            cn.mucang.android.jiakaoyi.framework.log.f.o("isPushStart = false,onConnectFail");
            pusherManager.j0();
        }

        @Override // cn.mucang.android.jiakaoyi.teachingk2.push.SimplePushNetworkListener, com.alivc.live.pusher.AlivcLivePushNetworkListener
        public void onConnectionLost(AlivcLivePusher p0) {
            super.onConnectionLost(p0);
            PusherManager.f7472a.v0(Boolean.FALSE);
            cn.mucang.android.jiakaoyi.framework.log.f.o("isPushStart = false,onConnectionLost");
        }

        @Override // com.alivc.live.pusher.AlivcLivePushNetworkListener
        public String onPushURLAuthenticationOverdue(AlivcLivePusher p0) {
            String url;
            String pushUrl;
            cn.mucang.android.jiakaoyi.framework.log.f.o("鉴权快过期了，准备替换推流url");
            AliPushUrl aliPushUrl = (AliPushUrl) cn.mucang.android.jiakaoyi.framework.p002e.m.h(new Callable() { // from class: cn.mucang.android.jiakaoyi.teachingk2.push.a0
                @Override // java.util.concurrent.Callable
                public final Object call() {
                    return PusherManager.c.b();
                }
            }).c();
            if (!TextUtils.isEmpty(aliPushUrl == null ? null : aliPushUrl.getUrl())) {
                return (aliPushUrl == null || (url = aliPushUrl.getUrl()) == null) ? "" : url;
            }
            AlivcLivePusher alivcLivePusher = PusherManager.b;
            return (alivcLivePusher == null || (pushUrl = alivcLivePusher.getPushUrl()) == null) ? "" : pushUrl;
        }

        @Override // cn.mucang.android.jiakaoyi.teachingk2.push.SimplePushNetworkListener, com.alivc.live.pusher.AlivcLivePushNetworkListener
        public void onReconnectFail(AlivcLivePusher p0) {
            super.onReconnectFail(p0);
            PusherManager pusherManager = PusherManager.f7472a;
            pusherManager.v0(Boolean.FALSE);
            cn.mucang.android.jiakaoyi.framework.log.f.o("isPushStart = false,onReconnectFail");
            pusherManager.j0();
        }

        @Override // cn.mucang.android.jiakaoyi.teachingk2.push.SimplePushNetworkListener, com.alivc.live.pusher.AlivcLivePushNetworkListener
        public void onReconnectSucceed(AlivcLivePusher p0) {
            super.onReconnectSucceed(p0);
            PusherManager pusherManager = PusherManager.f7472a;
            kotlinx.coroutines.i0 i0Var = PusherManager.n;
            boolean z = false;
            if (i0Var != null && kotlinx.coroutines.j0.g(i0Var)) {
                z = true;
            }
            pusherManager.v0(Boolean.valueOf(z));
            cn.mucang.android.jiakaoyi.framework.log.f.o("isPushStart = false,onReconnectSucceed");
        }

        @Override // cn.mucang.android.jiakaoyi.teachingk2.push.SimplePushNetworkListener, com.alivc.live.pusher.AlivcLivePushNetworkListener
        public void onSendDataTimeout(AlivcLivePusher p0) {
            super.onSendDataTimeout(p0);
            PusherManager.f7472a.v0(Boolean.FALSE);
            cn.mucang.android.jiakaoyi.framework.log.f.o("isPushStart = false,onSendDataTimeout");
        }
    }

    @Metadata(d1 = {"\u0000\u0019\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0006*\u0001\u0000\b\n\u0018\u00002\u00020\u0001J\u0012\u0010\u0002\u001a\u00020\u00032\b\u0010\u0004\u001a\u0004\u0018\u00010\u0005H\u0016J\u0012\u0010\u0006\u001a\u00020\u00032\b\u0010\u0004\u001a\u0004\u0018\u00010\u0005H\u0016J\u0012\u0010\u0007\u001a\u00020\u00032\b\u0010\u0004\u001a\u0004\u0018\u00010\u0005H\u0016J\u0012\u0010\b\u001a\u00020\u00032\b\u0010\u0004\u001a\u0004\u0018\u00010\u0005H\u0016J\u0012\u0010\t\u001a\u00020\u00032\b\u0010\u0004\u001a\u0004\u0018\u00010\u0005H\u0016J\u0012\u0010\n\u001a\u00020\u00032\b\u0010\u0004\u001a\u0004\u0018\u00010\u0005H\u0016¨\u0006\u000b"}, d2 = {"cn/mucang/android/jiakaoyi/teachingk2/push/PusherManager$setPushListeners$3", "Lcn/mucang/android/jiakaoyi/teachingk2/push/SimplePushInfoListener;", "onPreviewStarted", "", "p0", "Lcom/alivc/live/pusher/AlivcLivePusher;", "onPreviewStoped", "onPushPauesed", "onPushResumed", "onPushStarted", "onPushStoped", "teachbase_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
    public static final class d extends SimplePushInfoListener {
        d() {
        }

        @Override // com.alivc.live.pusher.AlivcLivePushInfoListener
        public void onPreviewStarted(AlivcLivePusher p0) {
            cn.mucang.android.jiakaoyi.framework.log.f.o("onPreviewStarted:预览开始");
        }

        @Override // com.alivc.live.pusher.AlivcLivePushInfoListener
        public void onPreviewStoped(AlivcLivePusher p0) {
            cn.mucang.android.jiakaoyi.framework.log.f.o("onPreviewStoped:预览停止");
        }

        @Override // com.alivc.live.pusher.AlivcLivePushInfoListener
        public void onPushPauesed(AlivcLivePusher p0) {
            PusherManager.f7472a.v0(Boolean.FALSE);
            cn.mucang.android.jiakaoyi.framework.log.f.o("isPushStart = false,onPushPauesed");
        }

        @Override // com.alivc.live.pusher.AlivcLivePushInfoListener
        public void onPushResumed(AlivcLivePusher p0) {
            PusherManager pusherManager = PusherManager.f7472a;
            kotlinx.coroutines.i0 i0Var = PusherManager.n;
            boolean z = false;
            pusherManager.v0(Boolean.valueOf(i0Var != null && kotlinx.coroutines.j0.g(i0Var)));
            StringBuilder sb = new StringBuilder();
            sb.append("isPushStart = ");
            kotlinx.coroutines.i0 i0Var2 = PusherManager.n;
            if (i0Var2 != null && kotlinx.coroutines.j0.g(i0Var2)) {
                z = true;
            }
            sb.append(z);
            sb.append(",onPushResumed");
            cn.mucang.android.jiakaoyi.framework.log.f.o(sb.toString());
        }

        @Override // com.alivc.live.pusher.AlivcLivePushInfoListener
        public void onPushStarted(AlivcLivePusher p0) {
            StringBuilder sb = new StringBuilder();
            sb.append("isPushStart = ");
            kotlinx.coroutines.i0 i0Var = PusherManager.n;
            boolean z = false;
            sb.append(i0Var != null && kotlinx.coroutines.j0.g(i0Var));
            sb.append(", onPushStarted");
            cn.mucang.android.jiakaoyi.framework.log.f.o(sb.toString());
            PusherManager pusherManager = PusherManager.f7472a;
            kotlinx.coroutines.i0 i0Var2 = PusherManager.n;
            if (i0Var2 != null && kotlinx.coroutines.j0.g(i0Var2)) {
                z = true;
            }
            pusherManager.v0(Boolean.valueOf(z));
        }

        @Override // com.alivc.live.pusher.AlivcLivePushInfoListener
        public void onPushStoped(AlivcLivePusher p0) {
            PusherManager.f7472a.v0(Boolean.FALSE);
            cn.mucang.android.jiakaoyi.framework.log.f.o("isPushStart = false,onPushStoped");
        }
    }

    private PusherManager() {
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void B() {
        l0(f7472a, false, 1, null);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void D() {
        long jCurrentTimeMillis = System.currentTimeMillis() - FpsUtils.f7521a.b();
        if (jCurrentTimeMillis > 10000) {
            kotlinx.coroutines.i0 i0Var = n;
            boolean z = false;
            if (i0Var != null && kotlinx.coroutines.j0.g(i0Var)) {
                z = true;
            }
            if (z) {
                PusherStatusHelper.f7484a.a(4);
                j = true;
                cn.mucang.android.jiakaoyi.framework.log.f.o("拉流帧丢失" + (jCurrentTimeMillis / ((long) 1000)) + 's');
                SourceVideoStream sourceVideoStream = c;
                if (sourceVideoStream != null) {
                    sourceVideoStream.c();
                }
            }
        }
        if (E() == 1) {
            PusherStatusHelper.f7484a.a(100);
        }
        f7472a.w0();
    }

    public static final int E() {
        if (!f7472a.L()) {
            return -1;
        }
        kotlinx.coroutines.i0 i0Var = n;
        boolean z = false;
        if (!(i0Var != null && kotlinx.coroutines.j0.g(i0Var))) {
            return -1;
        }
        if (!kotlin.jvm.internal.r.a(i, Boolean.TRUE) || j) {
            return 2;
        }
        SourceVideoStream sourceVideoStream = c;
        if (sourceVideoStream != null && sourceVideoStream.isPlaying()) {
            z = true;
        }
        return !z ? 2 : 1;
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Code duplicated, block: B:19:0x0053 A[RETURN] */
    /* JADX WARN: Code duplicated, block: B:22:0x005f  */
    /* JADX WARN: Code duplicated, block: B:23:0x0061  */
    /* JADX WARN: Code duplicated, block: B:26:0x006b A[DONT_INVERT] */
    /* JADX WARN: Code duplicated, block: B:28:0x006e  */
    /* JADX WARN: Code duplicated, block: B:29:0x0074  */
    /* JADX WARN: Code duplicated, block: B:31:0x0080 A[RETURN] */
    /* JADX WARN: Code duplicated, block: B:33:0x0083  */
    /* JADX WARN: Code duplicated, block: B:40:? A[RETURN, SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:7:0x0013  */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:30:0x007e -> B:32:0x0081). Please report as a decompilation issue!!! */
    /*  JADX ERROR: JadxOverflowException in pass: RegionMakerVisitor
        jadx.core.utils.exceptions.JadxOverflowException: Regions count limit reached at block B:29:0x0074
        	at jadx.core.utils.ErrorsCounter.addError(ErrorsCounter.java:59)
        	at jadx.core.utils.ErrorsCounter.error(ErrorsCounter.java:31)
        	at jadx.core.dex.attributes.nodes.NotificationAttrNode.addError(NotificationAttrNode.java:19)
        */
    public final java.lang.Object F(kotlin.coroutines.Continuation<? super java.lang.String> r9) {
        /*
            r8 = this;
            boolean r0 = r9 instanceof cn.mucang.android.jiakaoyi.teachingk2.push.PusherManager$getPushUrl$1
            if (r0 == 0) goto L13
            r0 = r9
            cn.mucang.android.jiakaoyi.teachingk2.push.PusherManager$getPushUrl$1 r0 = (cn.mucang.android.jiakaoyi.teachingk2.push.PusherManager$getPushUrl$1) r0
            int r1 = r0.label
            r2 = -2147483648(0xffffffff80000000, float:-0.0)
            r3 = r1 & r2
            if (r3 == 0) goto L13
            int r1 = r1 - r2
            r0.label = r1
            goto L18
        L13:
            cn.mucang.android.jiakaoyi.teachingk2.push.PusherManager$getPushUrl$1 r0 = new cn.mucang.android.jiakaoyi.teachingk2.push.PusherManager$getPushUrl$1
            r0.<init>(r8, r9)
        L18:
            java.lang.Object r9 = r0.result
            java.lang.Object r1 = kotlin.coroutines.intrinsics.a.d()
            int r2 = r0.label
            r3 = 2
            r4 = 1
            r5 = 0
            if (r2 == 0) goto L3d
            if (r2 == r4) goto L39
            if (r2 != r3) goto L31
            java.lang.Object r2 = r0.L$0
            cn.mucang.android.jiakaoyi.teachingk2.push.AliPushUrl r2 = (cn.mucang.android.jiakaoyi.teachingk2.push.AliPushUrl) r2
            kotlin.k.b(r9)
            goto L81
        L31:
            java.lang.IllegalStateException r9 = new java.lang.IllegalStateException
            java.lang.String r0 = "call to 'resume' before 'invoke' with coroutine"
            r9.<init>(r0)
            throw r9
        L39:
            kotlin.k.b(r9)
            goto L54
        L3d:
            kotlin.k.b(r9)
        L40:
            kotlinx.coroutines.CoroutineDispatcher r9 = kotlinx.coroutines.w0.b()
            cn.mucang.android.jiakaoyi.teachingk2.push.PusherManager$getPushUrl$result$1 r2 = new cn.mucang.android.jiakaoyi.teachingk2.push.PusherManager$getPushUrl$result$1
            r2.<init>(r5)
            r0.L$0 = r5
            r0.label = r4
            java.lang.Object r9 = kotlinx.coroutines.f.c(r9, r2, r0)
            if (r9 != r1) goto L54
            return r1
        L54:
            cn.mucang.android.jiakaoyi.framework.e.m r9 = (cn.mucang.android.jiakaoyi.framework.p002e.m) r9
            java.lang.Object r9 = r9.c()
            r2 = r9
            cn.mucang.android.jiakaoyi.teachingk2.push.AliPushUrl r2 = (cn.mucang.android.jiakaoyi.teachingk2.push.AliPushUrl) r2
            if (r2 != 0) goto L61
            r9 = r5
            goto L65
        L61:
            java.lang.String r9 = r2.getUrl()
        L65:
            boolean r9 = android.text.TextUtils.isEmpty(r9)
            if (r9 != 0) goto L74
            if (r2 != 0) goto L6e
            goto L93
        L6e:
            java.lang.String r9 = r2.getUrl()
            r5 = r9
            goto L93
        L74:
            r6 = 2000(0x7d0, double:9.88E-321)
            r0.L$0 = r2
            r0.label = r3
            java.lang.Object r9 = kotlinx.coroutines.s0.a(r6, r0)
            if (r9 != r1) goto L81
            return r1
        L81:
            if (r2 == 0) goto L40
            java.lang.String r9 = r2.getUrl()
            boolean r9 = android.text.TextUtils.isEmpty(r9)
            if (r9 == 0) goto L93
            int r9 = r2.getType()
            if (r9 == r4) goto L40
        L93:
            return r5
        */
        throw new UnsupportedOperationException("Method not decompiled: cn.mucang.android.jiakaoyi.teachingk2.push.PusherManager.F(kotlin.coroutines.c):java.lang.Object");
    }

    private final void H(Context context) {
        if (b != null) {
            return;
        }
        StringBuilder sb = new StringBuilder("阿里云sdk初始化：\n");
        AlivcLivePushConfig alivcLivePushConfig = new AlivcLivePushConfig();
        alivcLivePushConfig.setConnectRetryInterval(2000);
        f7473d = LocalConfigManager.j(LocalConfig.PushQuality, 240);
        AlivcResolutionEnum alivcResolutionEnum = AlivcResolutionEnum.RESOLUTION_SELFDEFINE;
        UsbCameraManager usbCameraManager = UsbCameraManager.INSTANCE;
        alivcResolutionEnum.setSelfDefineResolution((usbCameraManager.getWidth() * f7473d) / usbCameraManager.getHeight(), f7473d);
        alivcLivePushConfig.setResolution(alivcResolutionEnum);
        sb.append("清晰度：" + f7473d + "P\n");
        sb.append("分辨率：" + AlivcResolutionEnum.GetResolutionWidth(alivcResolutionEnum) + ',' + AlivcResolutionEnum.GetResolutionHeight(alivcResolutionEnum) + '\n');
        alivcLivePushConfig.setAudioProfile(AlivcAudioAACProfileEnum.AAC_LC);
        alivcLivePushConfig.setVideoEncodeMode(AlivcEncodeModeEnum.Encode_MODE_HARD);
        alivcLivePushConfig.setVideoOnly(true);
        alivcLivePushConfig.setEnableBitrateControl(true);
        alivcLivePushConfig.setQualityMode(AlivcQualityModeEnum.QM_FLUENCY_FIRST);
        alivcLivePushConfig.setPushMirror(p ^ true);
        StringBuilder sb2 = new StringBuilder();
        sb2.append("是否镜像：");
        sb2.append(!p);
        sb2.append('\n');
        sb.append(sb2.toString());
        SourceVideoStream sourceVideoStream = c;
        ImageFormat imageFormatA = sourceVideoStream == null ? null : sourceVideoStream.a();
        if (imageFormatA == null) {
            imageFormatA = ImageFormat.IMAGE_FORMAT_YUV420P;
        }
        AlivcImageFormat alivcImageFormat = imageFormatA == ImageFormat.IMAGE_FORMAT_YUV420P ? AlivcImageFormat.IMAGE_FORMAT_YUV420P : AlivcImageFormat.IMAGE_FORMAT_YUVNV21;
        sb.append("图像格式：" + alivcImageFormat + '\n');
        alivcLivePushConfig.setExternMainStream(true, alivcImageFormat, AlivcSoundFormat.SOUND_FORMAT_S16);
        b = new AlivcLivePusher();
        u0();
        AlivcLivePusher alivcLivePusher = b;
        if (alivcLivePusher != null) {
            alivcLivePusher.init(context, alivcLivePushConfig);
        }
        AlivcLivePusher alivcLivePusher2 = b;
        if (alivcLivePusher2 != null) {
            alivcLivePusher2.setLogLevel(AlivcLivePushLogLevel.AlivcLivePushLogLevelError);
        }
        cn.mucang.android.jiakaoyi.framework.log.f.o(sb.toString());
    }

    private final void I() {
        Handler handler = m;
        if (handler != null) {
            n = kotlinx.coroutines.j0.a(p2.b(null, 1, null).plus(kotlinx.coroutines.android.b.c(handler, null, 1, null)));
        }
        kotlinx.coroutines.i0 i0Var = n;
        if (i0Var != null) {
            kotlinx.coroutines.g.b(i0Var, null, null, new PusherManager$initPush$2(null), 3, null);
        }
        s.q();
    }

    private final void J() {
        SourceVideoStream usbCameraAdapter;
        boolean zF = LocalConfigManager.f(LocalConfig.PushSourceFromAi);
        if (zF != p) {
            p = zF;
            SourceVideoStream sourceVideoStream = c;
            if (sourceVideoStream != null) {
                sourceVideoStream.stop();
            }
            c = null;
        }
        if (c != null) {
            return;
        }
        if (p) {
            cn.mucang.android.jiakaoyi.framework.log.f.o("AI推流模式");
            usbCameraAdapter = new AiCameraAdapter();
        } else {
            cn.mucang.android.jiakaoyi.framework.log.f.o("USB推流模式");
            usbCameraAdapter = new UsbCameraAdapter(CameraIntent.PUSH);
        }
        c = usbCameraAdapter;
        if (usbCameraAdapter == null) {
            return;
        }
        usbCameraAdapter.e(this);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void K() {
        if (!LocalConfigManager.f(LocalConfig.PushTimeEnable) || p) {
            return;
        }
        f7477h = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void c0(PushSwitchModel pushSwitchModel) {
        if (pushSwitchModel.isEnable) {
            Runnable runnable = q;
            if (runnable != null) {
                cn.mucang.android.core.utils.u.e(runnable);
                q = null;
            }
            f7472a.e0(true);
            return;
        }
        if (q == null) {
            g gVar = new Runnable() { // from class: cn.mucang.android.jiakaoyi.teachingk2.push.g
                @Override // java.lang.Runnable
                public final void run() {
                    PusherManager.d0();
                }
            };
            q = gVar;
            cn.mucang.android.core.utils.u.d(gVar, 180000L);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void d0() {
        PusherManager pusherManager = f7472a;
        q = null;
        pusherManager.e0(false);
    }

    private final void e0(final boolean z) {
        Handler handler = m;
        if (handler == null) {
            return;
        }
        handler.post(new Runnable() { // from class: cn.mucang.android.jiakaoyi.teachingk2.push.i
            @Override // java.lang.Runnable
            public final void run() {
                PusherManager.f0(z);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void f0(boolean z) {
        boolean z2 = false;
        if (!z) {
            kotlinx.coroutines.i0 i0Var = n;
            if (!(i0Var != null && kotlinx.coroutines.j0.g(i0Var))) {
                cn.mucang.android.jiakaoyi.framework.log.f.o("监控中心请求关闭推流（重复）");
                return;
            } else {
                cn.mucang.android.jiakaoyi.framework.log.f.o("监控中心请求关闭推流");
                l0(f7472a, false, 1, null);
                return;
            }
        }
        kotlinx.coroutines.i0 i0Var2 = n;
        if (i0Var2 != null && kotlinx.coroutines.j0.g(i0Var2)) {
            z2 = true;
        }
        if (z2) {
            cn.mucang.android.jiakaoyi.framework.log.f.o("监控中心请求打开推流（重复）");
            return;
        }
        cn.mucang.android.jiakaoyi.framework.log.f.o("监控中心请求打开推流");
        f7472a.J();
        cn.mucang.android.jiakaoyi.framework.p002e.m mVarH = cn.mucang.android.jiakaoyi.framework.p002e.m.h(new Callable() { // from class: cn.mucang.android.jiakaoyi.teachingk2.push.f
            @Override // java.util.concurrent.Callable
            public final Object call() {
                return PusherManager.g0();
            }
        });
        mVarH.f(new cn.mucang.android.jiakaoyi.framework.h.b() { // from class: cn.mucang.android.jiakaoyi.teachingk2.push.o
            @Override // cn.mucang.android.jiakaoyi.framework.h.b
            public final void callback(Object obj) {
                PusherManager.h0((Throwable) obj);
            }
        });
        mVarH.g(new cn.mucang.android.jiakaoyi.framework.h.b() { // from class: cn.mucang.android.jiakaoyi.teachingk2.push.d
            @Override // cn.mucang.android.jiakaoyi.framework.h.b
            public final void callback(Object obj) {
                PusherManager.i0((kotlin.v) obj);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final kotlin.v g0() {
        PusherManager pusherManager = f7472a;
        Application context = MucangConfig.getContext();
        kotlin.jvm.internal.r.d(context, "getContext()");
        pusherManager.H(context);
        return kotlin.v.f15822a;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void h0(Throwable th) {
        cn.mucang.android.jiakaoyi.framework.log.f.o("阿里云init失败");
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void i0(kotlin.v vVar) {
        f7472a.I();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void j0() {
        kotlinx.coroutines.i0 i0Var = n;
        if (i0Var == null) {
            return;
        }
        kotlinx.coroutines.g.b(i0Var, null, null, new PusherManager$reconnect$1(null), 3, null);
    }

    private final void k0(boolean z) {
        cn.mucang.android.jiakaoyi.framework.log.f.o("释放推流相关资源");
        s.t();
        x0();
        SourceVideoStream sourceVideoStream = c;
        if (sourceVideoStream != null) {
            sourceVideoStream.stop();
        }
        t1 t1Var = o;
        if (t1Var != null) {
            t1.a.a(t1Var, null, 1, null);
        }
        kotlinx.coroutines.i0 i0Var = n;
        if (i0Var != null) {
            kotlinx.coroutines.j0.d(i0Var, null, 1, null);
        }
        t0();
        if (z) {
            cn.mucang.android.jiakaoyi.framework.p002e.m.h(new Callable() { // from class: cn.mucang.android.jiakaoyi.teachingk2.push.j
                @Override // java.util.concurrent.Callable
                public final Object call() {
                    return PusherManager.m0();
                }
            });
            cn.mucang.android.jiakaoyi.framework.log.f.o("阿里云推流已释放完成");
        }
        o = null;
        n = null;
        v0(null);
    }

    static /* synthetic */ void l0(PusherManager pusherManager, boolean z, int i2, Object obj) {
        if ((i2 & 1) != 0) {
            z = true;
        }
        pusherManager.k0(z);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final kotlin.v m0() {
        AlivcLivePusher alivcLivePusher = b;
        if (alivcLivePusher == null) {
            return null;
        }
        alivcLivePusher.stopPush();
        return kotlin.v.f15822a;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void n0() {
        cn.mucang.android.jiakaoyi.framework.log.f.o("销毁再重新初始化阿里sdk");
        k0(false);
        final AlivcLivePusher alivcLivePusher = b;
        HandlerThread handlerThread = l;
        Handler handler = m;
        b = null;
        l = null;
        m = null;
        if (handler != null) {
            handler.removeCallbacksAndMessages(null);
        }
        if (handler != null) {
            handler.post(new Runnable() { // from class: cn.mucang.android.jiakaoyi.teachingk2.push.e0
                @Override // java.lang.Runnable
                public final void run() {
                    PusherManager.o0(alivcLivePusher);
                }
            });
        }
        if (handlerThread == null) {
            return;
        }
        handlerThread.quitSafely();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void o0(final AlivcLivePusher alivcLivePusher) {
        int i2 = k;
        k = i2 + 1;
        HandlerThread handlerThread = new HandlerThread(kotlin.jvm.internal.r.m("阿里推流", Integer.valueOf(i2)));
        l = handlerThread;
        kotlin.jvm.internal.r.c(handlerThread);
        handlerThread.start();
        HandlerThread handlerThread2 = l;
        kotlin.jvm.internal.r.c(handlerThread2);
        Handler handler = new Handler(handlerThread2.getLooper());
        m = handler;
        if (handler != null) {
            handler.post(new Runnable() { // from class: cn.mucang.android.jiakaoyi.teachingk2.push.t
                @Override // java.lang.Runnable
                public final void run() {
                    PusherManager.p0();
                }
            });
        }
        cn.mucang.android.jiakaoyi.framework.p002e.m.h(new Callable() { // from class: cn.mucang.android.jiakaoyi.teachingk2.push.c0
            @Override // java.util.concurrent.Callable
            public final Object call() {
                return PusherManager.s0(alivcLivePusher);
            }
        });
        cn.mucang.android.jiakaoyi.framework.log.f.o("销毁完成");
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void p0() {
        cn.mucang.android.jiakaoyi.framework.p002e.m.h(new Callable() { // from class: cn.mucang.android.jiakaoyi.teachingk2.push.m
            @Override // java.util.concurrent.Callable
            public final Object call() {
                return PusherManager.q0();
            }
        }).f(new cn.mucang.android.jiakaoyi.framework.h.b() { // from class: cn.mucang.android.jiakaoyi.teachingk2.push.e
            @Override // cn.mucang.android.jiakaoyi.framework.h.b
            public final void callback(Object obj) {
                PusherManager.r0((Throwable) obj);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final kotlin.v q0() {
        PusherManager pusherManager = f7472a;
        Application context = MucangConfig.getContext();
        kotlin.jvm.internal.r.d(context, "getContext()");
        pusherManager.H(context);
        return kotlin.v.f15822a;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void r0(Throwable th) {
        cn.mucang.android.jiakaoyi.framework.log.f.o("阿里云init失败");
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final kotlin.v s0(AlivcLivePusher alivcLivePusher) {
        if (alivcLivePusher == null) {
            return null;
        }
        alivcLivePusher.destroy();
        return kotlin.v.f15822a;
    }

    private final void t0() {
        f7477h = null;
        Mat mat = f7474e;
        if (mat != null) {
            mat.release();
        }
        f7474e = null;
        f7475f = null;
    }

    private final void u0() {
        AlivcLivePusher alivcLivePusher = b;
        if (alivcLivePusher != null) {
            alivcLivePusher.setLivePushErrorListener(new b());
        }
        AlivcLivePusher alivcLivePusher2 = b;
        if (alivcLivePusher2 != null) {
            alivcLivePusher2.setLivePushNetworkListener(new c());
        }
        AlivcLivePusher alivcLivePusher3 = b;
        if (alivcLivePusher3 == null) {
            return;
        }
        alivcLivePusher3.setLivePushInfoListener(new d());
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void v0(Boolean bool) {
        if (kotlin.jvm.internal.r.a(bool, Boolean.FALSE) && !kotlin.jvm.internal.r.a(i, bool)) {
            kotlinx.coroutines.i0 i0Var = n;
            boolean z = false;
            if (i0Var != null && kotlinx.coroutines.j0.g(i0Var)) {
                z = true;
            }
            if (!z) {
                PusherStatusHelper.f7484a.a(5);
            }
        }
        i = bool;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void w() {
        kotlinx.coroutines.i0 i0Var = n;
        if (i0Var == null) {
            return;
        }
        kotlinx.coroutines.g.b(i0Var, null, null, new PusherManager$checkPushStatus$1(null), 3, null);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void w0() {
        cn.mucang.android.core.utils.u.e(t);
        cn.mucang.android.core.utils.u.d(t, 30000L);
    }

    private final void x0() {
        cn.mucang.android.core.utils.u.e(t);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void y() {
        l0(f7472a, false, 1, null);
        c = null;
        cn.mucang.android.jiakaoyi.framework.p002e.m.h(new Callable() { // from class: cn.mucang.android.jiakaoyi.teachingk2.push.h
            @Override // java.util.concurrent.Callable
            public final Object call() {
                return PusherManager.z();
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final kotlin.v z() {
        AlivcLivePusher alivcLivePusher = b;
        if (alivcLivePusher == null) {
            return null;
        }
        alivcLivePusher.destroy();
        return kotlin.v.f15822a;
    }

    public final void A() {
        cn.mucang.android.jiakaoyi.framework.utils.i0.i("key_enable_pusher", false);
        kotlinx.coroutines.g.b(kotlinx.coroutines.j0.a(w0.b()), null, null, new PusherManager$disable$1(null), 3, null);
        Handler handler = m;
        if (handler == null) {
            return;
        }
        handler.post(new Runnable() { // from class: cn.mucang.android.jiakaoyi.teachingk2.push.l
            @Override // java.lang.Runnable
            public final void run() {
                PusherManager.B();
            }
        });
    }

    public final void C() {
        cn.mucang.android.jiakaoyi.framework.utils.i0.i("key_enable_pusher", true);
        kotlinx.coroutines.g.b(kotlinx.coroutines.j0.a(w0.b()), null, null, new PusherManager$enable$1(null), 3, null);
    }

    public final void G() {
        int i2 = k;
        k = i2 + 1;
        HandlerThread handlerThread = new HandlerThread(kotlin.jvm.internal.r.m("阿里推流", Integer.valueOf(i2)));
        l = handlerThread;
        kotlin.jvm.internal.r.c(handlerThread);
        handlerThread.start();
        HandlerThread handlerThread2 = l;
        kotlin.jvm.internal.r.c(handlerThread2);
        m = new Handler(handlerThread2.getLooper());
        p = LocalConfigManager.f(LocalConfig.PushSourceFromAi);
        kotlinx.coroutines.g.b(kotlinx.coroutines.j0.a(w0.b()), null, null, new PusherManager$init$1(null), 3, null);
        if (OpenCVLoader.initDebug()) {
            f7476g = true;
        } else {
            OpenCVLoader.initAsync(OpenCVLoader.OPENCV_VERSION, MucangConfig.getContext(), new a());
        }
        LiveBus.d(PushSwitchModel.class).q(r);
    }

    public final boolean L() {
        return cn.mucang.android.jiakaoyi.framework.utils.i0.b("key_enable_pusher", true);
    }

    @Override // cn.mucang.android.jiakaoyi.framework.camera.YuvFrameCallback
    public void a(byte[] byteArray, int i2, int i3, int i4, int i5, long j2, int i6) {
        int i7;
        kotlin.jvm.internal.r.e(byteArray, "byteArray");
        j = false;
        FpsUtils.f7521a.a();
        if (System.currentTimeMillis() - v < SilenceSkippingAudioProcessor.DEFAULT_PADDING_SILENCE_US) {
            i7 = 33;
        } else {
            i7 = f7473d == 240 ? 100 : 66;
        }
        long jCurrentTimeMillis = System.currentTimeMillis();
        long j3 = u;
        long j4 = i7;
        if (jCurrentTimeMillis - j3 >= j4 || (j4 - jCurrentTimeMillis) + j3 <= 10) {
            u = jCurrentTimeMillis;
            kotlinx.coroutines.i0 i0Var = n;
            if (i0Var == null) {
                return;
            }
            kotlinx.coroutines.g.b(i0Var, null, null, new PusherManager$onFrame$1(i2, i3, byteArray, i4, i5, j2, i6, null), 3, null);
        }
    }

    public final void x() {
        LiveBus.d(PushSwitchModel.class).m(r);
        Handler handler = m;
        if (handler != null) {
            handler.removeCallbacksAndMessages(null);
        }
        Handler handler2 = m;
        if (handler2 != null) {
            handler2.post(new Runnable() { // from class: cn.mucang.android.jiakaoyi.teachingk2.push.s
                @Override // java.lang.Runnable
                public final void run() {
                    PusherManager.y();
                }
            });
        }
        HandlerThread handlerThread = l;
        if (handlerThread != null) {
            handlerThread.quitSafely();
        }
        l = null;
        m = null;
    }
}
