package cn.mucang.android.jiakaoyi.k3setting.exam;

import android.app.Activity;
import android.app.Dialog;
import android.os.SystemClock;
import android.view.View;
import cn.mucang.android.core.config.MucangConfig;
import cn.mucang.android.jiakaoyi.engine.model.Deduct;
import cn.mucang.android.jiakaoyi.exam.k3.config.K3DengGuangStepConfig;
import cn.mucang.android.jiakaoyi.exam.k3.light.LightEngineOpenChecker;
import cn.mucang.android.jiakaoyi.exam.k3.light.LightExam;
import cn.mucang.android.jiakaoyi.framework.base.dialog.JCommonDialog;
import cn.mucang.android.jiakaoyi.framework.tts.SimpleTtsListener;
import cn.mucang.android.jiakaoyi.framework.tts.TtsGrade;
import cn.mucang.android.jiakaoyi.framework.tts.TtsManager;
import cn.mucang.android.jiakaoyi.k3setting.R;
import java.util.Map;
import kotlin.Metadata;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000f\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010$\n\u0002\u0010\b\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\f\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\t\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\t\u0018\u00002\u00020\u0001:\u00013BI\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\b\b\u0002\u0010\u0004\u001a\u00020\u0005\u0012\u0006\u0010\u0006\u001a\u00020\u0007\u0012\u0012\u0010\b\u001a\u000e\u0012\u0004\u0012\u00020\n\u0012\u0004\u0012\u00020\u000b0\t\u0012\u0006\u0010\f\u001a\u00020\r\u0012\f\u0010\u000e\u001a\b\u0012\u0004\u0012\u00020\u00050\u000f¢\u0006\u0002\u0010\u0010J\u0010\u0010(\u001a\u00020)2\u0006\u0010*\u001a\u00020+H\u0002J\b\u0010,\u001a\u00020)H\u0002J\u0010\u0010-\u001a\u00020)2\u0006\u0010*\u001a\u00020+H\u0002J\u0006\u0010.\u001a\u00020)J\u0006\u0010/\u001a\u00020)J\b\u00100\u001a\u00020)H\u0002J\u0006\u00101\u001a\u00020)J\b\u00102\u001a\u00020)H\u0002R\u0011\u0010\u0002\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u0011\u0010\u0012R\u000e\u0010\u0013\u001a\u00020\u0014X\u0082\u0004¢\u0006\u0002\n\u0000R\u0014\u0010\u000e\u001a\b\u0012\u0004\u0012\u00020\u00050\u000fX\u0082\u0004¢\u0006\u0002\n\u0000R\u0010\u0010\u0015\u001a\u0004\u0018\u00010\u0016X\u0082\u000e¢\u0006\u0002\n\u0000R\u0011\u0010\u0006\u001a\u00020\u0007¢\u0006\b\n\u0000\u001a\u0004\b\u0017\u0010\u0018R&\u0010\b\u001a\u000e\u0012\u0004\u0012\u00020\n\u0012\u0004\u0012\u00020\u000b0\tX\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0019\u0010\u001a\"\u0004\b\u001b\u0010\u001cR\u000e\u0010\f\u001a\u00020\rX\u0082\u000e¢\u0006\u0002\n\u0000R\u000e\u0010\u001d\u001a\u00020\u0005X\u0082\u000e¢\u0006\u0002\n\u0000R\u000e\u0010\u0004\u001a\u00020\u0005X\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u001e\u001a\u00020\u0005X\u0082\u000e¢\u0006\u0002\n\u0000R\u000e\u0010\u001f\u001a\u00020\u0005X\u0082\u000e¢\u0006\u0002\n\u0000R\u0010\u0010 \u001a\u0004\u0018\u00010\u0016X\u0082\u000e¢\u0006\u0002\n\u0000R\u000e\u0010!\u001a\u00020\u0005X\u0082\u000e¢\u0006\u0002\n\u0000R\u000e\u0010\"\u001a\u00020#X\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010$\u001a\u00020%X\u0082\u000e¢\u0006\u0002\n\u0000R\u000e\u0010&\u001a\u00020'X\u0082\u000e¢\u0006\u0002\n\u0000¨\u00064"}, d2 = {"Lcn/mucang/android/jiakaoyi/k3setting/exam/LightPreCheckPresenter;", "", "activity", "Landroid/app/Activity;", "isLightExam", "", "config", "Lcn/mucang/android/jiakaoyi/exam/k3/config/K3DengGuangStepConfig;", "deducts", "", "", "Lcn/mucang/android/jiakaoyi/engine/model/Deduct;", "examCallback", "Lcn/mucang/android/jiakaoyi/exam/k3/light/LightExam$LightExamCallback;", "callbackFinish", "Lcn/mucang/android/jiakaoyi/framework/listeners/Callback;", "(Landroid/app/Activity;ZLcn/mucang/android/jiakaoyi/exam/k3/config/K3DengGuangStepConfig;Ljava/util/Map;Lcn/mucang/android/jiakaoyi/exam/k3/light/LightExam$LightExamCallback;Lcn/mucang/android/jiakaoyi/framework/listeners/Callback;)V", "getActivity", "()Landroid/app/Activity;", "callback", "Lcn/mucang/android/jiakaoyi/signal/center/callback/SignalCallback;", "closeLightDialog", "Landroid/app/Dialog;", "getConfig", "()Lcn/mucang/android/jiakaoyi/exam/k3/config/K3DengGuangStepConfig;", "getDeducts", "()Ljava/util/Map;", "setDeducts", "(Ljava/util/Map;)V", "isDeduct102104", "isShowCloseLightDialog", "isShowLightSelectDialog", "lightSelectDialog", "needDoLight", "openEngineChecker", "Lcn/mucang/android/jiakaoyi/exam/k3/light/LightEngineOpenChecker;", "showCloseLightTime", "", "state", "Lcn/mucang/android/jiakaoyi/k3setting/exam/LightPreCheckPresenter$State;", "checkCloseLight", "", "signal", "Lcn/mucang/android/jiakaoyi/signal/center/SignalGetter;", "closeAllDialog", "closeLightDeduct", "pauseExam", "resumeExam", "showLightSelectDialog", "stopExam", "unListen", "State", "k3setting_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
public final class LightPreCheckPresenter {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final Activity f4220a;
    private final boolean b;
    private final K3DengGuangStepConfig c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private Map<Integer, ? extends Deduct> f4221d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private LightExam.LightExamCallback f4222e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private final cn.mucang.android.jiakaoyi.framework.h.b<Boolean> f4223f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private boolean f4224g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private boolean f4225h;
    private long i;
    private Dialog j;
    private Dialog k;
    private boolean l;
    private boolean m;
    private State n;
    private final LightEngineOpenChecker o;
    private final cn.mucang.android.jiakaoyi.signal.c.f.a p;

    @Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0002\b\u0006\b\u0086\u0001\u0018\u00002\b\u0012\u0004\u0012\u00020\u00000\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002j\u0002\b\u0003j\u0002\b\u0004j\u0002\b\u0005j\u0002\b\u0006¨\u0006\u0007"}, d2 = {"Lcn/mucang/android/jiakaoyi/k3setting/exam/LightPreCheckPresenter$State;", "", "(Ljava/lang/String;I)V", "Pause", "ExamIng", "Stop", "None", "k3setting_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
    public enum State {
        Pause,
        ExamIng,
        Stop,
        None
    }

    @Metadata(d1 = {"\u0000\u0011\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000*\u0001\u0000\b\n\u0018\u00002\u00020\u0001J\b\u0010\u0002\u001a\u00020\u0003H\u0016¨\u0006\u0004"}, d2 = {"cn/mucang/android/jiakaoyi/k3setting/exam/LightPreCheckPresenter$checkCloseLight$1", "Lcn/mucang/android/jiakaoyi/framework/tts/SimpleTtsListener;", "onSpeakEnd", "", "k3setting_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
    public static final class a extends SimpleTtsListener {
        a() {
        }

        @Override // cn.mucang.android.jiakaoyi.framework.tts.SimpleTtsListener, cn.mucang.android.jiakaoyi.framework.tts.TtsListener
        public void onSpeakEnd() {
        }
    }

    public LightPreCheckPresenter(Activity activity, boolean z, K3DengGuangStepConfig config, Map<Integer, ? extends Deduct> deducts, LightExam.LightExamCallback examCallback, cn.mucang.android.jiakaoyi.framework.h.b<Boolean> callbackFinish) {
        kotlin.jvm.internal.r.e(activity, "activity");
        kotlin.jvm.internal.r.e(config, "config");
        kotlin.jvm.internal.r.e(deducts, "deducts");
        kotlin.jvm.internal.r.e(examCallback, "examCallback");
        kotlin.jvm.internal.r.e(callbackFinish, "callbackFinish");
        this.f4220a = activity;
        this.b = z;
        this.c = config;
        this.f4221d = deducts;
        this.f4222e = examCallback;
        this.f4223f = callbackFinish;
        this.m = true;
        this.n = State.None;
        this.o = new LightEngineOpenChecker(config, deducts, examCallback);
        cn.mucang.android.jiakaoyi.signal.c.f.a aVar = new cn.mucang.android.jiakaoyi.signal.c.f.a() { // from class: cn.mucang.android.jiakaoyi.k3setting.exam.l0
            @Override // cn.mucang.android.jiakaoyi.signal.c.f.a
            public final void onSignalChanged(cn.mucang.android.jiakaoyi.signal.c.e eVar) {
                LightPreCheckPresenter.a(this.f4309a, eVar);
            }
        };
        this.p = aVar;
        this.n = State.ExamIng;
        cn.mucang.android.jiakaoyi.signal.c.d.m.b(aVar);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Multi-variable type inference failed */
    public static final void a(LightPreCheckPresenter this$0, cn.mucang.android.jiakaoyi.signal.c.e it) {
        kotlin.jvm.internal.r.e(this$0, "this$0");
        kotlin.jvm.internal.r.e(it, "it");
        if (this$0.n != State.ExamIng) {
            return;
        }
        if (this$0.b) {
            this$0.k();
        }
        Dialog dialog = this$0.k;
        boolean z = false;
        if (dialog != null) {
            if (dialog != null && dialog.isShowing()) {
                return;
            }
        }
        if (this$0.m) {
            this$0.b(it);
            Dialog dialog2 = this$0.j;
            if (dialog2 != null) {
                if (dialog2 != null && dialog2.isShowing()) {
                    z = true;
                }
                if (z) {
                    return;
                }
            }
            this$0.e(it);
            Integer num = (Integer) this$0.getC().p202143.value;
            if (num != null && num.intValue() == 1 && !this$0.o.check(it)) {
                return;
            }
        }
        this$0.o();
        this$0.f4223f.callback(Boolean.valueOf(this$0.m));
    }

    /* JADX WARN: Multi-variable type inference failed */
    private final void b(cn.mucang.android.jiakaoyi.signal.c.e eVar) {
        Dialog dialog;
        if (!this.f4225h) {
            T t = this.c.p202101.value;
            kotlin.jvm.internal.r.d(t, "config.p202101.value");
            if (((Boolean) t).booleanValue()) {
                T t2 = this.c.p202139.value;
                kotlin.jvm.internal.r.d(t2, "config.p202139.value");
                if (((Boolean) t2).booleanValue() && !cn.mucang.android.jiakaoyi.signal.utils.h.a(eVar.d().x)) {
                    this.i = SystemClock.elapsedRealtime();
                    this.f4225h = true;
                    int i = R.string.k3setting_exam_before_close_lights;
                    TtsManager.u(cn.mucang.android.jiakaoyi.framework.utils.k0.a(i), TtsGrade.SpecialVoice, new a());
                    JCommonDialog.a aVar = JCommonDialog.f3401d;
                    Activity activity = this.f4220a;
                    String strA = cn.mucang.android.jiakaoyi.framework.utils.k0.a(i);
                    kotlin.jvm.internal.r.d(strA, "getString(R.string.k3set…exam_before_close_lights)");
                    String strA2 = cn.mucang.android.jiakaoyi.framework.utils.k0.a(R.string.k3setting_continue_exam);
                    kotlin.jvm.internal.r.d(strA2, "getString(R.string.k3setting_continue_exam)");
                    Dialog dialogA = aVar.a(activity, strA, strA2, new View.OnClickListener() { // from class: cn.mucang.android.jiakaoyi.k3setting.exam.k0
                        @Override // android.view.View.OnClickListener
                        public final void onClick(View view) {
                            LightPreCheckPresenter.c(view);
                        }
                    });
                    this.j = dialogA;
                    if (dialogA != null) {
                        dialogA.show();
                    }
                }
            }
        }
        if ((cn.mucang.android.jiakaoyi.signal.utils.h.a(eVar.d().x) || (this.i > 0 && SystemClock.elapsedRealtime() - this.i > 6000)) && (dialog = this.j) != null) {
            if (dialog != null && dialog.isShowing()) {
                TtsManager.H();
                Dialog dialog2 = this.j;
                if (dialog2 == null) {
                    return;
                }
                dialog2.dismiss();
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void c(View view) {
        TtsManager.H();
    }

    private final void d() {
        Dialog dialog;
        Dialog dialog2;
        TtsManager.H();
        Dialog dialog3 = this.j;
        boolean z = false;
        if (dialog3 != null) {
            if ((dialog3 != null && dialog3.isShowing()) && (dialog2 = this.j) != null) {
                dialog2.dismiss();
            }
        }
        Dialog dialog4 = this.k;
        if (dialog4 != null) {
            if (dialog4 != null && dialog4.isShowing()) {
                z = true;
            }
            if (!z || (dialog = this.k) == null) {
                return;
            }
            dialog.dismiss();
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    private final void e(cn.mucang.android.jiakaoyi.signal.c.e eVar) {
        T t = this.c.p202101.value;
        kotlin.jvm.internal.r.d(t, "config.p202101.value");
        if (!((Boolean) t).booleanValue() || this.l || cn.mucang.android.jiakaoyi.signal.utils.h.a(eVar.d().x)) {
            return;
        }
        this.l = true;
        Deduct deduct = this.f4221d.get(102104);
        if (deduct == null || !deduct.needAutoCheck()) {
            return;
        }
        this.f4222e.onFailure(null, deduct);
    }

    /* JADX WARN: Multi-variable type inference failed */
    private final void k() {
        T t = this.c.p202140.value;
        kotlin.jvm.internal.r.d(t, "config.p202140.value");
        if (!((Boolean) t).booleanValue() || this.f4224g) {
            return;
        }
        this.f4224g = true;
        Activity activityI = MucangConfig.i();
        kotlin.jvm.internal.r.d(activityI, "getCurrentActivity()");
        String strA = cn.mucang.android.jiakaoyi.framework.utils.k0.a(R.string.k3setting_is_start_light_simulate);
        String strA2 = cn.mucang.android.jiakaoyi.framework.utils.k0.a(R.string.k3setting_start_light_simulate);
        String strA3 = cn.mucang.android.jiakaoyi.framework.utils.k0.a(R.string.k3setting_do_not_light_simulate);
        View.OnClickListener onClickListener = new View.OnClickListener() { // from class: cn.mucang.android.jiakaoyi.k3setting.exam.i0
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                LightPreCheckPresenter.l(this.f4291a, view);
            }
        };
        View.OnClickListener onClickListener2 = new View.OnClickListener() { // from class: cn.mucang.android.jiakaoyi.k3setting.exam.j0
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                LightPreCheckPresenter.m(this.f4305a, view);
            }
        };
        kotlin.jvm.internal.r.d(strA, "getString(R.string.k3set…_is_start_light_simulate)");
        JCommonDialog jCommonDialog = new JCommonDialog(activityI, new JCommonDialog.DialogParams((String) null, strA, strA2, onClickListener, strA3, onClickListener2, true, 1, (kotlin.jvm.internal.o) null));
        this.k = jCommonDialog;
        if (jCommonDialog == null) {
            return;
        }
        jCommonDialog.show();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void l(LightPreCheckPresenter this$0, View view) {
        kotlin.jvm.internal.r.e(this$0, "this$0");
        this$0.m = true;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void m(LightPreCheckPresenter this$0, View view) {
        kotlin.jvm.internal.r.e(this$0, "this$0");
        this$0.m = false;
    }

    private final void o() {
        cn.mucang.android.jiakaoyi.signal.c.d.m.n(this.p);
    }

    /* JADX INFO: renamed from: f, reason: from getter */
    public final K3DengGuangStepConfig getC() {
        return this.c;
    }

    public final void n() {
        this.n = State.Stop;
        o();
        d();
    }
}
