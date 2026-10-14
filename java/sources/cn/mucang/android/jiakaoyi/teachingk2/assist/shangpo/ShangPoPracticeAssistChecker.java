package cn.mucang.android.jiakaoyi.teachingk2.assist.shangpo;

import android.app.Activity;
import android.content.DialogInterface;
import android.view.View;
import androidx.lifecycle.BusLiveData;
import androidx.lifecycle.a0;
import cn.mucang.android.core.config.MucangConfig;
import cn.mucang.android.jiakaoyi.engine.model.Step;
import cn.mucang.android.jiakaoyi.framework.base.dialog.JCommonDialog;
import cn.mucang.android.jiakaoyi.framework.bus.LiveBus;
import cn.mucang.android.jiakaoyi.framework.tts.TtsGrade;
import cn.mucang.android.jiakaoyi.framework.tts.TtsManager;
import cn.mucang.android.jiakaoyi.framework.utils.AppUtils;
import cn.mucang.android.jiakaoyi.framework.utils.DeviceUtils;
import cn.mucang.android.jiakaoyi.framework.utils.k0;
import cn.mucang.android.jiakaoyi.framework.utils.q0;
import cn.mucang.android.jiakaoyi.hpmap.a.a.g.k;
import cn.mucang.android.jiakaoyi.hpmap.model.Line;
import cn.mucang.android.jiakaoyi.mapcollect.c.j;
import cn.mucang.android.jiakaoyi.mapcollect.manager.map.x0;
import cn.mucang.android.jiakaoyi.signal.center.model.CarPos;
import cn.mucang.android.jiakaoyi.signal.pos.Pos;
import cn.mucang.android.jiakaoyi.teachbase.R;
import cn.mucang.android.jiakaoyi.teachingk2.CountdownPop;
import cn.mucang.android.jiakaoyi.teachingk2.assist.AbsAssistant;
import cn.mucang.android.jiakaoyi.teachingk2.config.LocalConfig;
import cn.mucang.android.jiakaoyi.teachingk2.config.LocalConfigManager;
import cn.mucang.android.jiakaoyi.teachingk2.safe.BrakeReason;
import cn.mucang.android.jiakaoyi.teachingk2.safe.monitor.BrakeGlobalMonitor;
import cn.mucang.android.jiakaoyi.teachingk2.safe.monitor.ModuleStatusMonitor;
import cn.mucang.android.jiakaoyi.teachingk2.safe.monitor.ReleaseBrakeModel;
import cn.mucang.jiakaoyi.uilib.socket.util.NetworkErrorUtil;
import cn.mucang.jiakaoyi.uilib.utils.ExamSiteUtil;
import com.google.android.exoplayer2.text.ttml.TtmlNode;
import java.util.List;
import kotlin.Metadata;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.r;
import kotlin.v;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\\\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\b\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u0002\n\u0002\b\t\n\u0002\u0010\u000e\n\u0002\b\u0002\bÆ\u0002\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J\b\u0010\u001b\u001a\u00020\u000bH\u0002J\b\u0010\u001c\u001a\u00020\u001dH\u0002J\b\u0010\u001e\u001a\u00020\u000bH\u0016J\u0006\u0010\f\u001a\u00020\u000bJ\b\u0010\u001f\u001a\u00020\u000bH\u0016J\b\u0010 \u001a\u00020\u001dH\u0002J\b\u0010!\u001a\u00020\u001dH\u0002J\b\u0010\"\u001a\u00020\u001dH\u0002J\b\u0010#\u001a\u00020\u001dH\u0002J\b\u0010$\u001a\u00020\u001dH\u0016J\u0010\u0010%\u001a\u00020\u001d2\u0006\u0010&\u001a\u00020'H\u0016J\u0018\u0010%\u001a\u00020\u001d2\u0006\u0010&\u001a\u00020'2\u0006\u0010(\u001a\u00020\u000bH\u0016R\u000e\u0010\u0003\u001a\u00020\u0004X\u0082T¢\u0006\u0002\n\u0000R\u0010\u0010\u0005\u001a\u0004\u0018\u00010\u0006X\u0082\u000e¢\u0006\u0002\n\u0000R\u0014\u0010\u0007\u001a\b\u0012\u0004\u0012\u00020\t0\bX\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\n\u001a\u00020\u000bX\u0082\u000e¢\u0006\u0002\n\u0000R\u000e\u0010\f\u001a\u00020\u000bX\u0082\u000e¢\u0006\u0002\n\u0000R\u000e\u0010\r\u001a\u00020\u000bX\u0082\u000e¢\u0006\u0002\n\u0000R\u000e\u0010\u000e\u001a\u00020\u0004X\u0082\u000e¢\u0006\u0002\n\u0000R\u000e\u0010\u000f\u001a\u00020\u000bX\u0082\u000e¢\u0006\u0002\n\u0000R\u000e\u0010\u0010\u001a\u00020\u0011X\u0082\u0004¢\u0006\u0002\n\u0000R\u0014\u0010\u0012\u001a\b\u0012\u0004\u0012\u00020\u00130\bX\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u0014\u001a\u00020\u0004X\u0082\u000e¢\u0006\u0002\n\u0000R\u0014\u0010\u0015\u001a\b\u0012\u0004\u0012\u00020\u00160\bX\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u0017\u001a\u00020\u0018X\u0082\u0004¢\u0006\u0002\n\u0000R\u0010\u0010\u0019\u001a\u0004\u0018\u00010\u001aX\u0082\u000e¢\u0006\u0002\n\u0000¨\u0006)"}, d2 = {"Lcn/mucang/android/jiakaoyi/teachingk2/assist/shangpo/ShangPoPracticeAssistChecker;", "Lcn/mucang/android/jiakaoyi/teachingk2/assist/AbsAssistant;", "()V", "MAX_FAIL_TIMES", "", "askDialog", "Lcn/mucang/android/jiakaoyi/framework/base/dialog/JCommonDialog;", "houLiuBrakeObserver", "Landroidx/lifecycle/Observer;", "Lcn/mucang/android/jiakaoyi/teachingk2/safe/BrakeReason;", "isHouLiuOnFinalFai", "", "isInShangPoArea", "lastEngineStart", "lastFailTimesOnAssist", "onHouLiuBrake", "poDingChecker", "Lcn/mucang/android/jiakaoyi/teachingk2/assist/shangpo/ArrivePoDingChecker;", "releaseBrakeObserver", "Lcn/mucang/android/jiakaoyi/teachingk2/safe/monitor/ReleaseBrakeModel;", "shangPoFailTotalTimes", "shangPoObserver", "Lcn/mucang/android/jiakaoyi/engine/processor/listen/StepInfoModel;", "signalCallback", "Lcn/mucang/android/jiakaoyi/signal/center/callback/SignalCallback;", "tipPop", "Lcn/mucang/android/jiakaoyi/teachingk2/CountdownPop;", "checkCarAngleLegal", "clearAll", "", "isAssisting", "isSupportAssist", "resetFailParams", "sendAssistReadyOrder", "showAskDialogIfNeed", "showTipPop", TtmlNode.START, "stop", "reason", "", "sendOrder", "teachbase_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
public final class ShangPoPracticeAssistChecker extends AbsAssistant {

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private static boolean f6146f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private static boolean f6147g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private static boolean f6148h;
    private static JCommonDialog i;
    private static int k;
    private static int l;
    private static CountdownPop m;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public static final ShangPoPracticeAssistChecker f6145e = new ShangPoPracticeAssistChecker();
    private static boolean j = true;
    private static final ArrivePoDingChecker n = new ArrivePoDingChecker(new Function0<v>() { // from class: cn.mucang.android.jiakaoyi.teachingk2.assist.shangpo.ShangPoPracticeAssistChecker$poDingChecker$1
        @Override // kotlin.jvm.functions.Function0
        public /* bridge */ /* synthetic */ v invoke() {
            invoke2();
            return v.f15822a;
        }

        /* JADX INFO: renamed from: invoke, reason: avoid collision after fix types in other method */
        public final void invoke2() {
            ShangPoPracticeAssistChecker shangPoPracticeAssistChecker = ShangPoPracticeAssistChecker.f6145e;
            ShangPoPracticeAssistChecker.f6146f = false;
            shangPoPracticeAssistChecker.S();
            if (shangPoPracticeAssistChecker.k()) {
                String strA = k0.a(R.string.teachbase_on_shangpo_top);
                r.d(strA, "getString(R.string.teachbase_on_shangpo_top)");
                shangPoPracticeAssistChecker.l0(strA);
            }
        }
    });
    private static final a0<cn.mucang.android.jiakaoyi.engine.i.f.a> o = new a0() { // from class: cn.mucang.android.jiakaoyi.teachingk2.assist.shangpo.e
        @Override // androidx.lifecycle.a0
        public final void onChanged(Object obj) {
            ShangPoPracticeAssistChecker.e0((cn.mucang.android.jiakaoyi.engine.i.f.a) obj);
        }
    };
    private static final cn.mucang.android.jiakaoyi.signal.c.f.a p = new cn.mucang.android.jiakaoyi.signal.c.f.a() { // from class: cn.mucang.android.jiakaoyi.teachingk2.assist.shangpo.d
        @Override // cn.mucang.android.jiakaoyi.signal.c.f.a
        public final void onSignalChanged(cn.mucang.android.jiakaoyi.signal.c.e eVar) {
            ShangPoPracticeAssistChecker.j0(eVar);
        }
    };
    private static final a0<BrakeReason> q = new a0() { // from class: cn.mucang.android.jiakaoyi.teachingk2.assist.shangpo.g
        @Override // androidx.lifecycle.a0
        public final void onChanged(Object obj) {
            ShangPoPracticeAssistChecker.T((BrakeReason) obj);
        }
    };
    private static final a0<ReleaseBrakeModel> r = new a0() { // from class: cn.mucang.android.jiakaoyi.teachingk2.assist.shangpo.f
        @Override // androidx.lifecycle.a0
        public final void onChanged(Object obj) {
            ShangPoPracticeAssistChecker.b0((ReleaseBrakeModel) obj);
        }
    };

    /* JADX WARN: Illegal instructions before constructor call */
    private ShangPoPracticeAssistChecker() {
        String strA = k0.a(R.string.teachbase_poqi_assist);
        r.d(strA, "getString(R.string.teachbase_poqi_assist)");
        super(strA);
    }

    private final boolean R() {
        try {
            CarPos carPosC = cn.mucang.android.jiakaoyi.signal.c.d.t().c();
            cn.mucang.android.jiakaoyi.mapcollect.render.f fVarA = x0.f5139a.a(String.valueOf(ExamSiteUtil.e(0L)));
            if (fVarA == null) {
                throw new NullPointerException("null cannot be cast to non-null type cn.mucang.android.jiakaoyi.mapcollect.poshandle.K2Data");
            }
            j jVar = (j) fVarA;
            k kVar = null;
            List<k> list = jVar.f4727h;
            if (list == null || list.isEmpty()) {
                m("没有考场上坡区域的地图数据");
                return false;
            }
            for (k kVar2 : jVar.f4727h) {
                if (kVar2.w(carPosC.center)) {
                    kVar = kVar2;
                    break;
                }
            }
            if (kVar == null) {
                m(r.m("没有找到车子所在的上坡区域，carCenter:", carPosC.center));
                return false;
            }
            cn.mucang.android.jiakaoyi.signal.pos.c cVar = carPosC.carRect;
            Pos posVectorTo = cVar.f5820a.vectorTo(cVar.b);
            Line line = kVar.r;
            double dAbs = Math.abs(Math.toDegrees(posVectorTo.vectorAngle(line.start.vectorTo(line.end))));
            StringBuilder sb = new StringBuilder();
            sb.append("checkCarAngleLegal: ");
            sb.append(dAbs <= 15.0d);
            sb.append(", degree:");
            sb.append(dAbs);
            m(sb.toString());
            return dAbs <= 15.0d;
        } catch (Exception e2) {
            e2.printStackTrace();
            m(r.m("checkCarAngleLegal error, ", q0.d(e2)));
            return false;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void S() {
        JCommonDialog jCommonDialog = i;
        if (jCommonDialog != null) {
            jCommonDialog.dismiss();
        }
        CountdownPop countdownPop = m;
        if (countdownPop != null) {
            countdownPop.dismiss();
        }
        c0();
        cn.mucang.android.jiakaoyi.signal.c.d.m.n(p);
        LiveBus.d(BrakeReason.class).m(q);
        LiveBus.d(ReleaseBrakeModel.class).m(r);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void T(BrakeReason brakeReason) {
        if (f6146f && brakeReason == BrakeReason.HouLiu && !f6148h) {
            ShangPoPracticeAssistChecker shangPoPracticeAssistChecker = f6145e;
            f6148h = true;
            int i2 = k + 1;
            k = i2;
            f6147g = i2 >= 3;
            shangPoPracticeAssistChecker.m("后溜刹车, 坡起失败次数: " + k + ", 最后一次失败是后溜刹车: " + f6147g);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void b0(ReleaseBrakeModel releaseBrakeModel) {
        if (f6148h) {
            ShangPoPracticeAssistChecker shangPoPracticeAssistChecker = f6145e;
            shangPoPracticeAssistChecker.m(r.m("刹车已解除, 最后一次失败是后溜刹车: ", Boolean.valueOf(f6147g)));
            boolean z = false;
            f6148h = false;
            if (f6146f) {
                int i2 = k;
                if (1 <= i2 && i2 < 3) {
                    z = true;
                }
                if (z) {
                    shangPoPracticeAssistChecker.i0();
                } else if (f6147g) {
                    shangPoPracticeAssistChecker.f0();
                }
            }
        }
    }

    private final void c0() {
        l = 0;
        k = 0;
        f6147g = false;
        f6148h = false;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void d0() {
        AbsAssistant.s(this, 1, 0, new Function0<v>() { // from class: cn.mucang.android.jiakaoyi.teachingk2.assist.shangpo.ShangPoPracticeAssistChecker$sendAssistReadyOrder$1
            @Override // kotlin.jvm.functions.Function0
            public /* bridge */ /* synthetic */ v invoke() {
                invoke2();
                return v.f15822a;
            }

            /* JADX INFO: renamed from: invoke, reason: avoid collision after fix types in other method */
            public final void invoke2() {
                ShangPoPracticeAssistChecker shangPoPracticeAssistChecker = ShangPoPracticeAssistChecker.f6145e;
                ShangPoPracticeAssistChecker.l = ShangPoPracticeAssistChecker.k;
                JCommonDialog jCommonDialog = ShangPoPracticeAssistChecker.i;
                if (jCommonDialog != null) {
                    jCommonDialog.dismiss();
                }
                ShangPoPracticeAssistant shangPoPracticeAssistant = ShangPoPracticeAssistant.f6149e;
                shangPoPracticeAssistant.I();
                ShangPoPracticeAssistChecker.n.g();
                shangPoPracticeAssistant.H(new Function0<v>() { // from class: cn.mucang.android.jiakaoyi.teachingk2.assist.shangpo.ShangPoPracticeAssistChecker$sendAssistReadyOrder$1.1
                    @Override // kotlin.jvm.functions.Function0
                    public /* bridge */ /* synthetic */ v invoke() {
                        invoke2();
                        return v.f15822a;
                    }

                    /* JADX INFO: renamed from: invoke, reason: avoid collision after fix types in other method */
                    public final void invoke2() {
                        ShangPoPracticeAssistChecker shangPoPracticeAssistChecker2 = ShangPoPracticeAssistChecker.f6145e;
                        shangPoPracticeAssistChecker2.m("自动辅助结束，shangPoFailTimes:" + ShangPoPracticeAssistChecker.k + ", lastFailTimesOnAssist:" + ShangPoPracticeAssistChecker.l);
                        boolean z = false;
                        ShangPoPracticeAssistChecker.f6148h = false;
                        if (shangPoPracticeAssistChecker2.U() && ShangPoPracticeAssistChecker.f6146f && ShangPoPracticeAssistChecker.k > ShangPoPracticeAssistChecker.l) {
                            if (ShangPoPracticeAssistChecker.k >= 3) {
                                shangPoPracticeAssistChecker2.f0();
                                return;
                            }
                            int i2 = ShangPoPracticeAssistChecker.k;
                            if (1 <= i2 && i2 < 3) {
                                z = true;
                            }
                            if (z) {
                                shangPoPracticeAssistChecker2.i0();
                            }
                        }
                    }
                });
            }
        }, null, 8, null);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void e0(cn.mucang.android.jiakaoyi.engine.i.f.a aVar) {
        if (aVar.c != Step.K2_ShangPoQiBu.type) {
            ShangPoPracticeAssistChecker shangPoPracticeAssistChecker = f6145e;
            f6146f = false;
            shangPoPracticeAssistChecker.S();
            return;
        }
        if (NetworkErrorUtil.c().e() || ModuleStatusMonitor.d() || BrakeGlobalMonitor.f()) {
            return;
        }
        if (!aVar.b) {
            if (aVar.f3095a) {
                f6145e.m("离开上坡起步区域");
                n.e();
                return;
            }
            return;
        }
        ShangPoPracticeAssistChecker shangPoPracticeAssistChecker2 = f6145e;
        shangPoPracticeAssistChecker2.m("进入上坡起步区域");
        shangPoPracticeAssistChecker2.S();
        f6146f = true;
        j = cn.mucang.android.jiakaoyi.signal.c.d.t().d().f5270h;
        cn.mucang.android.jiakaoyi.signal.c.d.m.b(p);
        LiveBus.d(BrakeReason.class).i(q);
        LiveBus.d(ReleaseBrakeModel.class).i(r);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void f0() {
        if (k()) {
            m(r.m("showAskDialog, 正在辅助中... , 坡起失败次数: ", Integer.valueOf(k)));
            return;
        }
        if (!R()) {
            m("车身和上坡区域的角度不满足<=15，不触发自动辅助询问");
            return;
        }
        int i2 = k;
        if (i2 >= 3) {
            m(r.m("showAskDialog, 坡起失败次数: ", Integer.valueOf(i2)));
            JCommonDialog jCommonDialog = i;
            if (jCommonDialog != null) {
                jCommonDialog.dismiss();
            }
            if (ShangPoPracticeAssistant.f6149e.k()) {
                m("showAskDialog: 正在坡起辅助中, 忽略");
                return;
            }
            final String desc = k0.a(R.string.teachbase_need_help_finish_shangpo);
            Activity activityI = MucangConfig.i();
            r.d(activityI, "getCurrentActivity()");
            String strA = k0.a(R.string.teachbase_need_help);
            String strA2 = k0.a(R.string.teachbase_dialog_button_cancel);
            String strA3 = k0.a(R.string.teachbase_dialog_button_confirm);
            b bVar = new View.OnClickListener() { // from class: cn.mucang.android.jiakaoyi.teachingk2.assist.shangpo.b
                @Override // android.view.View.OnClickListener
                public final void onClick(View view) {
                    ShangPoPracticeAssistChecker.g0(view);
                }
            };
            r.d(desc, "desc");
            JCommonDialog jCommonDialog2 = new JCommonDialog(activityI, new JCommonDialog.DialogParams(strA, desc, strA2, null, strA3, bVar, false, null, false, false, 392, null));
            i = jCommonDialog2;
            if (jCommonDialog2 != null) {
                jCommonDialog2.setOnDismissListener(new DialogInterface.OnDismissListener() { // from class: cn.mucang.android.jiakaoyi.teachingk2.assist.shangpo.c
                    @Override // android.content.DialogInterface.OnDismissListener
                    public final void onDismiss(DialogInterface dialogInterface) {
                        ShangPoPracticeAssistChecker.h0(desc, dialogInterface);
                    }
                });
            }
            JCommonDialog jCommonDialog3 = i;
            if (jCommonDialog3 != null) {
                jCommonDialog3.show();
            }
            A(desc);
            TtsManager.r(desc, TtsGrade.Teach);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void g0(View view) {
        ShangPoPracticeAssistChecker shangPoPracticeAssistChecker = f6145e;
        if (shangPoPracticeAssistChecker.e()) {
            shangPoPracticeAssistChecker.d0();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void h0(String desc, DialogInterface dialogInterface) {
        ShangPoPracticeAssistChecker shangPoPracticeAssistChecker = f6145e;
        r.d(desc, "desc");
        shangPoPracticeAssistChecker.A(desc);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void i0() {
        if (k()) {
            m(r.m("showTipPop, 正在辅助中... , 坡起失败次数: ", Integer.valueOf(k)));
            return;
        }
        if (!R()) {
            m("车身和上坡区域的角度不满足<=15，不触发自动辅助询问");
            return;
        }
        if (U() && f6146f) {
            JCommonDialog jCommonDialog = i;
            boolean z = false;
            if (jCommonDialog != null && jCommonDialog.isShowing()) {
                z = true;
            }
            if (z) {
                return;
            }
            CountdownPop countdownPop = m;
            if (countdownPop != null) {
                countdownPop.dismiss();
            }
            String string = MucangConfig.i().getString(R.string.shangpo_assist_pop_tip);
            r.d(string, "getCurrentActivity().get…g.shangpo_assist_pop_tip)");
            m = new CountdownPop(string, 0, null, false, null, null, Integer.valueOf(R.string.confirm_start), new Function1<View, v>() { // from class: cn.mucang.android.jiakaoyi.teachingk2.assist.shangpo.ShangPoPracticeAssistChecker$showTipPop$1
                @Override // kotlin.jvm.functions.Function1
                public /* bridge */ /* synthetic */ v invoke(View view) {
                    invoke2(view);
                    return v.f15822a;
                }

                /* JADX INFO: renamed from: invoke, reason: avoid collision after fix types in other method */
                public final void invoke2(View it) {
                    r.e(it, "it");
                    ShangPoPracticeAssistChecker shangPoPracticeAssistChecker = ShangPoPracticeAssistChecker.f6145e;
                    if (shangPoPracticeAssistChecker.e()) {
                        CountdownPop countdownPop2 = ShangPoPracticeAssistChecker.m;
                        if (countdownPop2 != null) {
                            countdownPop2.dismiss();
                        }
                        shangPoPracticeAssistChecker.d0();
                    }
                }
            }, null, 310, null);
            TtsManager.z(string, TtsGrade.AutoTeach);
            CountdownPop countdownPop2 = m;
            if (countdownPop2 == null) {
                return;
            }
            countdownPop2.l();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Code duplicated, block: B:13:0x003f  */
    /* JADX WARN: Code duplicated, block: B:14:0x0043  */
    /* JADX WARN: Code duplicated, block: B:17:0x0048  */
    /* JADX WARN: Code duplicated, block: B:19:0x004b  */
    /* JADX WARN: Code duplicated, block: B:8:0x001c  */
    public static final void j0(cn.mucang.android.jiakaoyi.signal.c.e signalGetter) {
        ShangPoPracticeAssistChecker shangPoPracticeAssistChecker;
        int i2;
        r.e(signalGetter, "signalGetter");
        boolean z = signalGetter.d().f5270h;
        if (f6146f) {
            JCommonDialog jCommonDialog = i;
            if (jCommonDialog != null) {
                r.c(jCommonDialog);
                if (!jCommonDialog.isShowing()) {
                    if (j && !z) {
                        shangPoPracticeAssistChecker = f6145e;
                        int i3 = k + 1;
                        k = i3;
                        f6147g = false;
                        shangPoPracticeAssistChecker.m(r.m("熄火, 坡起失败次数: ", Integer.valueOf(i3)));
                        i2 = k;
                        if (i2 >= 3) {
                            shangPoPracticeAssistChecker.f0();
                        } else {
                            if (1 > i2 && i2 < 3) {
                                shangPoPracticeAssistChecker.i0();
                            }
                        }
                    }
                }
            } else if (j) {
                shangPoPracticeAssistChecker = f6145e;
                int i4 = k + 1;
                k = i4;
                f6147g = false;
                shangPoPracticeAssistChecker.m(r.m("熄火, 坡起失败次数: ", Integer.valueOf(i4)));
                i2 = k;
                if (i2 >= 3) {
                    shangPoPracticeAssistChecker.f0();
                } else {
                    if (1 > i2 && i2 < 3) {
                        shangPoPracticeAssistChecker.i0();
                    }
                }
            }
        }
        j = z;
        if (signalGetter.d().b()) {
            CountdownPop countdownPop = m;
            if (countdownPop != null) {
                countdownPop.dismiss();
            }
            JCommonDialog jCommonDialog2 = i;
            if (jCommonDialog2 != null) {
                jCommonDialog2.dismiss();
            }
            m = null;
            i = null;
        }
    }

    public boolean U() {
        if (cn.mucang.android.jiakaoyi.signal.utils.f.b() || AppUtils.c() || DeviceUtils.m() <= 0) {
            m("自动挡、北斗、无油门模块不支持坡起辅助功能");
            return false;
        }
        if (LocalConfigManager.f(LocalConfig.AutoAssist)) {
            return true;
        }
        m("自动辅助开关关闭");
        return false;
    }

    @Override // cn.mucang.android.jiakaoyi.teachingk2.assist.AbsAssistant
    public boolean k() {
        return ShangPoPracticeAssistant.f6149e.k();
    }

    public void k0() {
        if (U()) {
            S();
            m(TtmlNode.START);
            BusLiveData busLiveDataD = LiveBus.d(cn.mucang.android.jiakaoyi.engine.i.f.a.class);
            a0<cn.mucang.android.jiakaoyi.engine.i.f.a> a0Var = o;
            busLiveDataD.m(a0Var);
            LiveBus.d(cn.mucang.android.jiakaoyi.engine.i.f.a.class).i(a0Var);
        }
    }

    public void l0(String reason) {
        r.e(reason, "reason");
        y(reason, true);
    }

    @Override // cn.mucang.android.jiakaoyi.teachingk2.assist.AbsAssistant
    public void y(String reason, boolean z) {
        r.e(reason, "reason");
        if (U()) {
            S();
            if (k()) {
                ShangPoPracticeAssistant.f6149e.y(reason, z);
            }
        }
    }
}
