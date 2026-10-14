package cn.mucang.android.jiakaoyi.teachingk2.safe.manager;

import android.os.Handler;
import android.os.HandlerThread;
import cn.mucang.android.jiakaoyi.framework.tts.TtsGrade;
import cn.mucang.android.jiakaoyi.framework.tts.TtsManager;
import cn.mucang.android.jiakaoyi.framework.utils.AppUtils;
import cn.mucang.android.jiakaoyi.framework.utils.k0;
import cn.mucang.android.jiakaoyi.framework.utils.q0;
import cn.mucang.android.jiakaoyi.signal.center.model.CarBrakeDesc;
import cn.mucang.android.jiakaoyi.signal.center.model.CarBrakeSource;
import cn.mucang.android.jiakaoyi.signal.center.model.CarBrakeState;
import cn.mucang.android.jiakaoyi.signal.center.model.Gear;
import cn.mucang.android.jiakaoyi.signal.communicate.receive.ReceiveSenorInfo;
import cn.mucang.android.jiakaoyi.teachbase.R;
import cn.mucang.android.jiakaoyi.teachingk2.safe.BrakeReason;
import cn.mucang.android.jiakaoyi.teachingk2.safe.FenceConfig;
import cn.mucang.android.jiakaoyi.teachingk2.safe.SafeCommandAdapter;
import cn.mucang.android.jiakaoyi.teachingk2.safe.detector.FenceDetector;
import cn.mucang.android.jiakaoyi.teachingk2.safe.unbrake.BrakeModel;
import cn.mucang.jiakaoyi.uilib.utils.ExamSiteUtil;
import com.amap.api.fence.GeoFence;
import com.google.android.exoplayer2.DefaultRenderersFactory;
import com.google.android.exoplayer2.text.ttml.TtmlNode;
import java.util.Arrays;
import kotlin.Metadata;
import kotlin.jvm.internal.StringCompanionObject;

/* JADX INFO: renamed from: cn.mucang.android.jiakaoyi.teachingk2.safe.manager.q, reason: from Kotlin metadata */
/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000B\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\t\n\u0000\n\u0002\u0010\b\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0002\b\u0004\bÆ\u0002\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J\u001a\u0010\u0011\u001a\u00020\u00122\b\u0010\u0013\u001a\u0004\u0018\u00010\u00042\u0006\u0010\u0014\u001a\u00020\fH\u0002J\b\u0010\u0015\u001a\u00020\u0006H\u0007J\b\u0010\u0016\u001a\u00020\u0012H\u0007J\u0010\u0010\u0017\u001a\u00020\u00122\u0006\u0010\u0018\u001a\u00020\u0019H\u0002J\u0010\u0010\u001a\u001a\u00020\u00122\u0006\u0010\u0018\u001a\u00020\u0019H\u0016J\u0010\u0010\u001b\u001a\u00020\u00122\u0006\u0010\u001c\u001a\u00020\u0006H\u0007R\u0010\u0010\u0003\u001a\u0004\u0018\u00010\u0004X\u0082\u000e¢\u0006\u0002\n\u0000R\u000e\u0010\u0005\u001a\u00020\u0006X\u0082\u000e¢\u0006\u0002\n\u0000R\u000e\u0010\u0007\u001a\u00020\bX\u0082.¢\u0006\u0002\n\u0000R\u000e\u0010\t\u001a\u00020\u0006X\u0082\u000e¢\u0006\u0002\n\u0000R\u000e\u0010\n\u001a\u00020\u0006X\u0082\u000e¢\u0006\u0002\n\u0000R\u000e\u0010\u000b\u001a\u00020\fX\u0082\u000e¢\u0006\u0002\n\u0000R\u000e\u0010\r\u001a\u00020\u000eX\u0082\u000e¢\u0006\u0002\n\u0000R\u000e\u0010\u000f\u001a\u00020\u0010X\u0082.¢\u0006\u0002\n\u0000¨\u0006\u001d"}, d2 = {"Lcn/mucang/android/jiakaoyi/teachingk2/safe/manager/FenceBrakeManager;", "Lcn/mucang/android/jiakaoyi/signal/center/callback/SignalCallback;", "()V", "brakeTriggerModel", "Lcn/mucang/android/jiakaoyi/teachingk2/safe/detector/FenceDetector$TriggerModel;", "enableFence", "", "handler", "Landroid/os/Handler;", "hasBrake", "hasInit", "lastTipTime", "", "lastTipType", "", "thread", "Landroid/os/HandlerThread;", "beidouTips", "", GeoFence.BUNDLE_KEY_FENCE, "time", "getFenceEnable", "init", "judgeFence", "signalGetter", "Lcn/mucang/android/jiakaoyi/signal/center/SignalGetter;", "onSignalChanged", "set", TtmlNode.START, "teachbase_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
public final class FenceBrakeManager implements cn.mucang.android.jiakaoyi.signal.c.f.a {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final FenceBrakeManager f7754a = new FenceBrakeManager();
    private static HandlerThread b = null;
    private static Handler c = null;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private static FenceDetector.e f7755d = null;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private static volatile boolean f7756e = true;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private static volatile boolean f7757f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private static boolean f7758g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private static long f7759h;
    private static int i;

    private FenceBrakeManager() {
    }

    private final void a(FenceDetector.e eVar, long j) {
        String strA;
        if (AppUtils.c()) {
            if (eVar == null) {
                f7759h = 0L;
                i = 0;
                return;
            }
            int i2 = i;
            int i3 = eVar.f7659a.f7591a;
            if (i2 != i3) {
                f7759h = 0L;
            }
            if (f7759h == 0) {
                f7759h = j;
                if (i3 == 1) {
                    strA = k0.a(R.string.teachbase_leave_train_area_hint);
                    kotlin.jvm.internal.r.d(strA, "getString(R.string.teach…se_leave_train_area_hint)");
                } else if (i3 == 2) {
                    StringCompanionObject stringCompanionObject = StringCompanionObject.f14671a;
                    String strA2 = k0.a(R.string.teachbase_collision_electronic_fence_hint);
                    kotlin.jvm.internal.r.d(strA2, "getString(R.string.teach…on_electronic_fence_hint)");
                    strA = String.format(strA2, Arrays.copyOf(new Object[]{eVar.b.src}, 1));
                    kotlin.jvm.internal.r.d(strA, "java.lang.String.format(format, *args)");
                } else if (i3 != 3) {
                    strA = "";
                } else {
                    strA = k0.a(R.string.teachbase_leave_safe_area_hint);
                    kotlin.jvm.internal.r.d(strA, "getString(R.string.teachbase_leave_safe_area_hint)");
                }
                TtsManager.r(strA, TtsGrade.GlobalTip);
            }
            if (j - f7759h > DefaultRenderersFactory.DEFAULT_ALLOWED_VIDEO_JOINING_TIME_MS) {
                f7759h = 0L;
            }
            i = eVar.f7659a.f7591a;
        }
    }

    public static final synchronized boolean b() {
        return f7756e;
    }

    public static final void c() {
        long jE = ExamSiteUtil.e(0L);
        if (jE <= 0) {
            cn.mucang.android.jiakaoyi.framework.log.f.o("电子围栏初始化退出：没有选择考场");
            return;
        }
        FenceBrakeManager fenceBrakeManager = f7754a;
        f7756e = !FenceConfig.isClose(jE);
        cn.mucang.android.jiakaoyi.framework.log.f.o(kotlin.jvm.internal.r.m("电子围栏是否启用:", Boolean.valueOf(f7756e)));
        if (!f7758g) {
            f7758g = true;
            cn.mucang.android.jiakaoyi.signal.c.d.m.b(fenceBrakeManager);
            HandlerThread handlerThread = new HandlerThread("电子围栏计算线程");
            b = handlerThread;
            if (handlerThread == null) {
                kotlin.jvm.internal.r.u("thread");
                throw null;
            }
            handlerThread.setPriority(9);
            HandlerThread handlerThread2 = b;
            if (handlerThread2 == null) {
                kotlin.jvm.internal.r.u("thread");
                throw null;
            }
            handlerThread2.start();
            HandlerThread handlerThread3 = b;
            if (handlerThread3 == null) {
                kotlin.jvm.internal.r.u("thread");
                throw null;
            }
            c = new Handler(handlerThread3.getLooper());
        }
        cn.mucang.android.jiakaoyi.framework.log.f.o("电子围栏初始化成功");
    }

    /* JADX WARN: Code duplicated, block: B:14:0x0021  */
    /* JADX WARN: Code duplicated, block: B:22:0x0041  */
    private final void d(final cn.mucang.android.jiakaoyi.signal.c.e eVar) {
        ReceiveSenorInfo receiveSenorInfo = eVar.d().G;
        if ((receiveSenorInfo == null ? null : receiveSenorInfo.safeBoardBrakeState) != CarBrakeState.STATE_NONE) {
            ReceiveSenorInfo receiveSenorInfo2 = eVar.d().G;
            if ((receiveSenorInfo2 == null ? null : receiveSenorInfo2.safeModuleBrakeReason) == CarBrakeSource.BRAKE_SOURCE_NONE) {
                if (!eVar.d().f5268f) {
                    if (f7757f) {
                        cn.mucang.android.jiakaoyi.framework.log.f.d("解刹状态，将brake置为false");
                    }
                    f7757f = false;
                }
            }
        } else if (!eVar.d().f5268f && !eVar.d().c() && eVar.d().m == Gear.GearN) {
            if (f7757f) {
                cn.mucang.android.jiakaoyi.framework.log.f.d("解刹状态，将brake置为false");
            }
            f7757f = false;
        }
        if (eVar.d().M == 3 && eVar.getCurrentPosition().b()) {
            if (eVar.d().f5268f || eVar.d().c()) {
                if (eVar.d().c() || eVar.d().m != Gear.GearN) {
                    Handler handler = c;
                    if (handler != null) {
                        handler.post(new Runnable() { // from class: cn.mucang.android.jiakaoyi.teachingk2.safe.manager.b
                            @Override // java.lang.Runnable
                            public final void run() {
                                FenceBrakeManager.e(eVar);
                            }
                        });
                    } else {
                        kotlin.jvm.internal.r.u("handler");
                        throw null;
                    }
                }
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void e(cn.mucang.android.jiakaoyi.signal.c.e signalGetter) {
        cn.mucang.android.jiakaoyi.teachingk2.res.model.a aVar;
        Gear gear;
        CarBrakeDesc carBrakeDesc;
        FenceDetector.e eVar;
        kotlin.jvm.internal.r.e(signalGetter, "$signalGetter");
        try {
            final FenceDetector.e eVarK = FenceDetector.k(signalGetter);
            f7754a.a(eVarK, signalGetter.d().L);
            if (eVarK == null) {
                if (f7755d != null) {
                    StringBuilder sb = new StringBuilder();
                    sb.append("没有电子围栏碰撞，清空:");
                    FenceDetector.e eVar2 = f7755d;
                    sb.append((Object) ((eVar2 == null || (aVar = eVar2.f7659a) == null) ? null : aVar.b));
                    sb.append(',');
                    FenceDetector.e eVar3 = f7755d;
                    sb.append((Object) ((eVar3 == null || (gear = eVar3.c) == null) ? null : gear.zhName));
                    sb.append(',');
                    FenceDetector.e eVar4 = f7755d;
                    sb.append((Object) ((eVar4 == null || (carBrakeDesc = eVar4.b) == null) ? null : carBrakeDesc.zhSrc));
                    sb.append(',');
                    FenceDetector.e eVar5 = f7755d;
                    sb.append(eVar5 == null ? null : eVar5.f7660d);
                    sb.append(',');
                    sb.append(f7757f);
                    cn.mucang.android.jiakaoyi.framework.log.f.d(sb.toString());
                }
                f7755d = null;
                return;
            }
            if (!f7757f && (eVar = f7755d) != null) {
                if ((eVar == null ? null : eVar.f7661e) != signalGetter.d().m) {
                    f7755d = null;
                }
            }
            if (f7755d == null) {
                cn.mucang.android.jiakaoyi.framework.log.f.d("监测到电子围栏刹车源:" + ((Object) eVarK.f7659a.b) + ',' + ((Object) eVarK.c.zhName) + ',' + ((Object) eVarK.b.zhSrc) + ',' + eVarK.f7660d + ',' + f7757f);
                cn.mucang.android.core.utils.u.c(new Runnable() { // from class: cn.mucang.android.jiakaoyi.teachingk2.safe.manager.a
                    @Override // java.lang.Runnable
                    public final void run() {
                        FenceBrakeManager.f(eVarK);
                    }
                });
                f7757f = true;
                f7755d = eVarK;
            }
        } catch (Throwable th) {
            cn.mucang.android.jiakaoyi.framework.log.f.d(kotlin.jvm.internal.r.m("电子围栏刹车检测异常:", q0.d(th)));
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void f(FenceDetector.e eVar) {
        BrakeModel brakeModelB = BrakeModel.Companion.b(BrakeModel.INSTANCE, BrakeReason.Fence, null, false, 6, null);
        CarBrakeDesc carBrakeDesc = eVar.b;
        kotlin.jvm.internal.r.d(carBrakeDesc, "triggerModel.desc");
        brakeModelB.setExtraDesc(carBrakeDesc);
        SafeCommandAdapter.b(brakeModelB, (byte) 1);
    }

    public static final synchronized void i(boolean z) {
        f7756e = z;
    }

    @Override // cn.mucang.android.jiakaoyi.signal.c.f.a
    public void onSignalChanged(cn.mucang.android.jiakaoyi.signal.c.e signalGetter) {
        kotlin.jvm.internal.r.e(signalGetter, "signalGetter");
        d(signalGetter);
    }
}
