package cn.mucang.android.jiakaoyi.teachingk2.error;

import cn.mucang.android.core.config.MucangConfig;
import cn.mucang.android.jiakaoyi.framework.bus.LiveBus;
import cn.mucang.android.jiakaoyi.framework.log.f;
import cn.mucang.android.jiakaoyi.signal.ai.AISitPoseResult;
import cn.mucang.android.jiakaoyi.signal.c.e;
import cn.mucang.android.jiakaoyi.signal.com.Cmd;
import cn.mucang.android.jiakaoyi.signal.communicate.MessageSender;
import cn.mucang.android.jiakaoyi.signal.communicate.w.m;
import cn.mucang.android.jiakaoyi.teachingk2.config.LocalConfig;
import cn.mucang.android.jiakaoyi.teachingk2.config.LocalConfigManager;
import cn.mucang.android.jiakaoyi.teachingk2.error.error.ErrorBelt;
import cn.mucang.android.jiakaoyi.teachingk2.error.error.ErrorBow2Left;
import cn.mucang.android.jiakaoyi.teachingk2.error.error.ErrorBow2Right;
import cn.mucang.android.jiakaoyi.teachingk2.error.error.ErrorDoor;
import cn.mucang.android.jiakaoyi.teachingk2.error.error.ErrorFace;
import cn.mucang.android.jiakaoyi.teachingk2.error.error.ErrorHandCross;
import cn.mucang.android.jiakaoyi.teachingk2.error.error.ErrorOpen;
import cn.mucang.android.jiakaoyi.teachingk2.error.error.ErrorSingleLeft;
import cn.mucang.android.jiakaoyi.teachingk2.error.error.ErrorSingleRight;
import cn.mucang.android.jiakaoyi.teachingk2.error.error.ErrorSpeed;
import cn.mucang.android.jiakaoyi.teachingk2.error.error.ErrorTwoHandOpen;
import cn.mucang.android.jiakaoyi.teachingk2.error.error.ErrorWheelNone;
import cn.mucang.android.jiakaoyi.teachingk2.error.remind.RemindAmazed;
import cn.mucang.android.jiakaoyi.teachingk2.error.remind.RemindAngry;
import cn.mucang.android.jiakaoyi.teachingk2.error.remind.RemindCall;
import cn.mucang.android.jiakaoyi.teachingk2.error.remind.RemindDrink;
import cn.mucang.android.jiakaoyi.teachingk2.error.remind.RemindFatigue;
import cn.mucang.android.jiakaoyi.teachingk2.error.remind.RemindFlameOut;
import cn.mucang.android.jiakaoyi.teachingk2.error.remind.RemindHappy;
import cn.mucang.android.jiakaoyi.teachingk2.error.remind.RemindSad;
import cn.mucang.android.jiakaoyi.teachingk2.error.remind.RemindSmoke;
import cn.mucang.android.jiakaoyi.teachingk2.error.remind.RemindStart;
import cn.mucang.android.jiakaoyi.teachingk2.error.remind.RemindTiltForward;
import cn.mucang.android.jiakaoyi.teachingk2.error.remind.RemindTiltLeft;
import cn.mucang.android.jiakaoyi.teachingk2.error.remind.RemindTiltRight;
import cn.mucang.android.jiakaoyi.teachingk2.error.remind.RemindWheelLoss;
import cn.mucang.android.jiakaoyi.teachingk2.humanize.tips.RobotTips;
import cn.mucang.android.jiakaoyi.teachingk2.record.UserRecorder;
import cn.mucang.android.jiakaoyi.teachingk2.safe.manager.SafeModeManager;
import cn.mucang.android.jiakaoyi.unity.activity.UnityMainActivity;
import cn.mucang.jiakaoyi.uilib.socket.u;
import com.alivc.live.pusher.AlivcLivePushConstants;
import com.google.android.exoplayer2.text.ttml.TtmlNode;
import com.iflytek.cloud.SpeechConstant;
import com.iflytek.cloud.SpeechUtility;
import java.util.ArrayList;
import java.util.Calendar;
import java.util.List;
import kotlin.Metadata;
import kotlin.Pair;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.r;
import kotlin.v;
import kotlinx.coroutines.g;
import kotlinx.coroutines.j0;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000T\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u000b\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010!\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0010\n\u0002\u0010\b\n\u0002\b\u0002\n\u0002\u0010\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0004\bÆ\u0002\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J\u0010\u0010%\u001a\u00020&2\u0006\u0010'\u001a\u00020#H\u0002J\b\u0010(\u001a\u00020&H\u0007J\u0010\u0010)\u001a\u00020&2\u0006\u0010*\u001a\u00020+H\u0016J$\u0010,\u001a\u00020&2\u0006\u0010-\u001a\u00020\u00102\u0012\u0010.\u001a\u000e\u0012\u0004\u0012\u00020\u0004\u0012\u0004\u0012\u00020#0/H\u0002J\b\u00100\u001a\u00020&H\u0007J\b\u00101\u001a\u00020&H\u0007J\b\u00102\u001a\u00020&H\u0002R\u000e\u0010\u0003\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n\u0000R\u001e\u0010\u0007\u001a\u00020\u00062\u0006\u0010\u0005\u001a\u00020\u0006@BX\u0086\u000e¢\u0006\b\n\u0000\u001a\u0004\b\b\u0010\tR\u0016\u0010\n\u001a\n \f*\u0004\u0018\u00010\u000b0\u000bX\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\r\u001a\u00020\u0006X\u0082\u000e¢\u0006\u0002\n\u0000R\u0014\u0010\u000e\u001a\b\u0012\u0004\u0012\u00020\u00100\u000fX\u0082\u0004¢\u0006\u0002\n\u0000R\u001c\u0010\u0011\u001a\u00020\u00128\u0006X\u0087\u0004¢\u0006\u000e\n\u0000\u0012\u0004\b\u0013\u0010\u0002\u001a\u0004\b\u0014\u0010\u0015R$\u0010\u0016\u001a\u00020\u00068\u0006@\u0006X\u0087\u000e¢\u0006\u0014\n\u0000\u0012\u0004\b\u0017\u0010\u0002\u001a\u0004\b\u0016\u0010\t\"\u0004\b\u0018\u0010\u0019R$\u0010\u001a\u001a\u00020\u00068\u0006@\u0006X\u0087\u000e¢\u0006\u0014\n\u0000\u0012\u0004\b\u001b\u0010\u0002\u001a\u0004\b\u001a\u0010\t\"\u0004\b\u001c\u0010\u0019R\u000e\u0010\u001d\u001a\u00020\u0006X\u0082\u000e¢\u0006\u0002\n\u0000R$\u0010\u001e\u001a\u00020\u00068\u0006@\u0006X\u0087\u000e¢\u0006\u0014\n\u0000\u0012\u0004\b\u001f\u0010\u0002\u001a\u0004\b \u0010\t\"\u0004\b!\u0010\u0019R\u000e\u0010\"\u001a\u00020#X\u0082\u000e¢\u0006\u0002\n\u0000R\u000e\u0010$\u001a\u00020#X\u0082\u000e¢\u0006\u0002\n\u0000¨\u00063"}, d2 = {"Lcn/mucang/android/jiakaoyi/teachingk2/error/GlobalChecker;", "Lcn/mucang/android/jiakaoyi/signal/center/callback/SignalCallback;", "()V", "TAG", "", "<set-?>", "", "aiStaticCheck", "getAiStaticCheck", "()Z", "calendar", "Ljava/util/Calendar;", "kotlin.jvm.PlatformType", "checkDriveAction", "checkList", "", "Lcn/mucang/android/jiakaoyi/teachingk2/error/BaseCheck;", "debugInfo", "Lcn/mucang/android/jiakaoyi/unity/UnityInfoEvent;", "getDebugInfo$annotations", "getDebugInfo", "()Lcn/mucang/android/jiakaoyi/unity/UnityInfoEvent;", "isMainPage", "isMainPage$annotations", "setMainPage", "(Z)V", "isVideoPage", "isVideoPage$annotations", "setVideoPage", "nightAutoClose", "pause", "getPause$annotations", "getPause", "setPause", "sunRise", "", "sunSet", "init", "", SpeechConstant.SPEED, "initTime", "onSignalChanged", "signalGetter", "Lcn/mucang/android/jiakaoyi/signal/center/SignalGetter;", "speak", "it", SpeechUtility.TAG_RESOURCE_RESULT, "Lkotlin/Pair;", TtmlNode.START, "stop", "switchAiMode", "teachbase_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
public final class GlobalChecker implements cn.mucang.android.jiakaoyi.signal.c.f.a {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final GlobalChecker f7068a = new GlobalChecker();
    private static final cn.mucang.android.jiakaoyi.unity.b b = new cn.mucang.android.jiakaoyi.unity.b();
    private static final List<BaseCheck> c = new ArrayList();

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private static final Calendar f7069d = Calendar.getInstance();

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private static int f7070e = 480;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private static int f7071f = AlivcLivePushConstants.RESOLUTION_1080;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private static volatile boolean f7072g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private static boolean f7073h;
    private static boolean i;
    private static boolean j;
    private static boolean k;
    private static boolean l;

    private GlobalChecker() {
    }

    public static final cn.mucang.android.jiakaoyi.unity.b d() {
        return b;
    }

    private final void e(int i2) {
        f.o(r.m("全局纠错初始化配速：", Integer.valueOf(i2)));
        List<BaseCheck> list = c;
        list.clear();
        list.add(new ErrorBelt());
        list.add(new ErrorSpeed(i2));
        list.add(new ErrorDoor());
        list.add(new RemindFlameOut());
        list.add(new RemindWheelLoss());
        list.add(new RemindSmoke());
        list.add(new RemindDrink());
        list.add(new RemindCall());
        list.add(new ErrorFace());
        list.add(new ErrorWheelNone());
        list.add(new ErrorOpen());
        list.add(new RemindFatigue());
        list.add(new RemindStart());
        list.add(new ErrorBow2Left());
        list.add(new ErrorBow2Right());
        list.add(new RemindTiltForward());
        list.add(new RemindTiltLeft());
        list.add(new RemindTiltRight());
        list.add(new RemindHappy());
        list.add(new RemindAmazed());
        list.add(new RemindAngry());
        list.add(new RemindSad());
        list.add(new ErrorSingleLeft());
        list.add(new ErrorSingleRight());
        list.add(new ErrorHandCross());
        list.add(new ErrorTwoHandOpen());
    }

    public static final void f() {
        g.b(j0.b(), null, null, new GlobalChecker$initTime$1(null), 3, null);
    }

    public static final void g(boolean z) {
        f7073h = z;
    }

    public static final void h(boolean z) {
        f7072g = z;
    }

    public static final void i(boolean z) {
        i = z;
    }

    private final void j(BaseCheck baseCheck, Pair<String, Integer> pair) {
        if (baseCheck.getF7079g()) {
            if (!baseCheck.getF7077e() || j) {
                RobotTips.f7184a.t(pair);
            }
        }
    }

    public static final void k() {
        GlobalChecker globalChecker = f7068a;
        globalChecker.e(SafeModeManager.f().getSpeed());
        j = LocalConfigManager.f(LocalConfig.EnableDrive);
        k = LocalConfigManager.f(LocalConfig.EnableNightClose);
        l = LocalConfigManager.f(LocalConfig.AiStaticCheck);
        BrakeCheck.e();
        globalChecker.m();
        cn.mucang.android.jiakaoyi.signal.c.d.m.b(globalChecker);
    }

    public static final void l() {
        BrakeCheck.f();
        cn.mucang.android.jiakaoyi.signal.c.d.m.n(f7068a);
    }

    private final void m() {
        new MessageSender(cn.mucang.android.jiakaoyi.signal.ai.f.class, 3, 1000L, new Function0<v>() { // from class: cn.mucang.android.jiakaoyi.teachingk2.error.GlobalChecker$switchAiMode$1
            /* JADX INFO: renamed from: invoke, reason: avoid collision after fix types in other method */
            public final void invoke2() {
                m.h().Q(Cmd.AiSetMode, new byte[]{2});
            }

            @Override // kotlin.jvm.functions.Function0
            public /* bridge */ /* synthetic */ v invoke() {
                invoke2();
                return v.f15822a;
            }
        }, new Function0<v>() { // from class: cn.mucang.android.jiakaoyi.teachingk2.error.GlobalChecker$switchAiMode$2
            /* JADX INFO: renamed from: invoke, reason: avoid collision after fix types in other method */
            public final void invoke2() {
                f.o("GlobalChecker: AI切换坐姿模式超时");
            }

            @Override // kotlin.jvm.functions.Function0
            public /* bridge */ /* synthetic */ v invoke() {
                invoke2();
                return v.f15822a;
            }
        }, new Function1<cn.mucang.android.jiakaoyi.signal.ai.f, v>() { // from class: cn.mucang.android.jiakaoyi.teachingk2.error.GlobalChecker$switchAiMode$3
            /* JADX INFO: renamed from: invoke, reason: avoid collision after fix types in other method */
            public final void invoke2(cn.mucang.android.jiakaoyi.signal.ai.f it) {
                r.e(it, "it");
                if (it.f5428a) {
                    f.o("GlobalChecker: AI切换坐姿模式成功");
                } else {
                    f.o("GlobalChecker: AI切换坐姿模式超时失败");
                }
            }

            @Override // kotlin.jvm.functions.Function1
            public /* bridge */ /* synthetic */ v invoke(cn.mucang.android.jiakaoyi.signal.ai.f fVar) {
                invoke2(fVar);
                return v.f15822a;
            }
        }).i();
    }

    public final boolean c() {
        return l;
    }

    /* JADX WARN: Code duplicated, block: B:50:0x010c  */
    @Override // cn.mucang.android.jiakaoyi.signal.c.f.a
    public void onSignalChanged(e signalGetter) {
        boolean z;
        AISitPoseResult aISitPoseResult;
        r.e(signalGetter, "signalGetter");
        if (MucangConfig.i() instanceof UnityMainActivity) {
            if (!l || (f7073h && !i)) {
                StringBuilder sb = new StringBuilder();
                sb.append("drive: ");
                cn.mucang.android.jiakaoyi.signal.ai.a aVarA = signalGetter.a();
                String sitPoseInfo = null;
                sb.append((Object) (aVarA == null ? null : aVarA.g()));
                sb.append(',');
                cn.mucang.android.jiakaoyi.signal.ai.a aVarA2 = signalGetter.a();
                sb.append((Object) (aVarA2 == null ? null : aVarA2.f()));
                sb.append(" face: ");
                cn.mucang.android.jiakaoyi.signal.ai.a aVarA3 = signalGetter.a();
                sb.append((Object) (aVarA3 == null ? null : aVarA3.c()));
                sb.append(" head: ");
                cn.mucang.android.jiakaoyi.signal.ai.a aVarA4 = signalGetter.a();
                sb.append((Object) (aVarA4 == null ? null : aVarA4.d()));
                sb.append(" dms: ");
                cn.mucang.android.jiakaoyi.signal.ai.a aVarA5 = signalGetter.a();
                sb.append((Object) (aVarA5 == null ? null : aVarA5.b()));
                sb.append(" sitPose: ");
                cn.mucang.android.jiakaoyi.signal.ai.a aVarA6 = signalGetter.a();
                if (aVarA6 != null && (aISitPoseResult = aVarA6.f5212g) != null) {
                    sitPoseInfo = aISitPoseResult.getSitPoseInfo();
                }
                sb.append((Object) sitPoseInfo);
                String string = sb.toString();
                cn.mucang.android.jiakaoyi.unity.b bVar = b;
                bVar.f8797a = string + '(' + signalGetter.d().L + (char) 65292 + f7072g + ')';
                LiveBus.c(bVar);
                if (signalGetter.d().k()) {
                    u.c(signalGetter.a());
                }
                if (k) {
                    Calendar calendar = f7069d;
                    calendar.setTimeInMillis(System.currentTimeMillis());
                    int i2 = (calendar.get(11) * 60) + calendar.get(12);
                    if (i2 < f7070e || i2 > f7071f) {
                        z = true;
                    } else {
                        z = false;
                    }
                } else {
                    z = false;
                }
                for (BaseCheck baseCheck : c) {
                    if (baseCheck.getF7076d() && f7072g) {
                        baseCheck.i();
                    } else if (!z || !baseCheck.getF7077e()) {
                        Pair<String, Integer> pairD = baseCheck.d();
                        if (baseCheck.h(signalGetter)) {
                            UserRecorder.l(pairD);
                            if (!baseCheck.getB()) {
                                baseCheck.j(true);
                                j(baseCheck, pairD);
                                return;
                            } else {
                                if (baseCheck.getC()) {
                                    return;
                                }
                                baseCheck.j(true);
                                j(baseCheck, pairD);
                                return;
                            }
                        }
                        UserRecorder.j(pairD.getSecond().intValue());
                        baseCheck.j(false);
                    }
                }
            }
        }
    }
}
