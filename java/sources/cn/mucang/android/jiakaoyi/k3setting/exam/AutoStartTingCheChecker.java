package cn.mucang.android.jiakaoyi.k3setting.exam;

import android.app.Activity;
import android.view.View;
import cn.mucang.android.core.config.MucangConfig;
import cn.mucang.android.jiakaoyi.engine.model.Step;
import cn.mucang.android.jiakaoyi.exam.k3.config.K3TingCheStepConfig;
import cn.mucang.android.jiakaoyi.exam.k3.creator.K3EngineManager;
import cn.mucang.android.jiakaoyi.framework.base.dialog.JCommonDialog;
import cn.mucang.android.jiakaoyi.k3setting.R;
import cn.mucang.jiakaoyi.uilib.task.SafeRunnable;
import com.google.android.exoplayer2.text.ttml.TtmlNode;
import com.google.mlkit.common.MlKitException;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Map;
import kotlin.Metadata;
import kotlin.text.StringsKt__StringsKt;

/* JADX INFO: renamed from: cn.mucang.android.jiakaoyi.k3setting.exam.y0, reason: from Kotlin metadata */
/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000\\\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\b\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0010\u000b\n\u0002\b\b\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\u0018\u00002\u00020\u0001B#\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\f\u0010\u0006\u001a\b\u0012\u0004\u0012\u00020\b0\u0007¢\u0006\u0002\u0010\tJ\u0006\u0010\u001f\u001a\u00020\u0011J\u0010\u0010 \u001a\u00020!2\u0006\u0010\"\u001a\u00020\u0011H\u0002J\u0006\u0010#\u001a\u00020!J\u0006\u0010$\u001a\u00020!J\u0018\u0010%\u001a\u00020!2\u0006\u0010&\u001a\u00020'2\b\u0010(\u001a\u0004\u0018\u00010)R\u000e\u0010\n\u001a\u00020\u000bX\u0082\u0004¢\u0006\u0002\n\u0000R\u0011\u0010\u0004\u001a\u00020\u0005¢\u0006\b\n\u0000\u001a\u0004\b\f\u0010\rR\u0017\u0010\u0006\u001a\b\u0012\u0004\u0012\u00020\b0\u0007¢\u0006\b\n\u0000\u001a\u0004\b\u000e\u0010\u000fR\u001a\u0010\u0010\u001a\u00020\u0011X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0010\u0010\u0012\"\u0004\b\u0013\u0010\u0014R\u000e\u0010\u0015\u001a\u00020\u0011X\u0082\u000e¢\u0006\u0002\n\u0000R\u0011\u0010\u0002\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u0016\u0010\u0017R\u000e\u0010\u0018\u001a\u00020\u0011X\u0082\u000e¢\u0006\u0002\n\u0000R\u000e\u0010\u0019\u001a\u00020\u001aX\u0082\u0004¢\u0006\u0002\n\u0000R*\u0010\u001b\u001a\u001e\u0012\u0004\u0012\u00020\u001d\u0012\u0004\u0012\u00020\u00110\u001cj\u000e\u0012\u0004\u0012\u00020\u001d\u0012\u0004\u0012\u00020\u0011`\u001eX\u0082\u0004¢\u0006\u0002\n\u0000¨\u0006*"}, d2 = {"Lcn/mucang/android/jiakaoyi/k3setting/exam/AutoStartTingCheChecker;", "", "k3EngineManager", "Lcn/mucang/android/jiakaoyi/exam/k3/creator/K3EngineManager;", "config", "Lcn/mucang/android/jiakaoyi/exam/k3/config/K3TingCheStepConfig;", "examDistanceGetter", "Lcn/mucang/android/jiakaoyi/framework/listeners/Getter;", "", "(Lcn/mucang/android/jiakaoyi/exam/k3/creator/K3EngineManager;Lcn/mucang/android/jiakaoyi/exam/k3/config/K3TingCheStepConfig;Lcn/mucang/android/jiakaoyi/framework/listeners/Getter;)V", "callback", "Lcn/mucang/android/jiakaoyi/signal/center/callback/SignalCallback;", "getConfig", "()Lcn/mucang/android/jiakaoyi/exam/k3/config/K3TingCheStepConfig;", "getExamDistanceGetter", "()Lcn/mucang/android/jiakaoyi/framework/listeners/Getter;", "isCanStartTingChe", "", "()Z", "setCanStartTingChe", "(Z)V", "isStartTingCheRunnable", "getK3EngineManager", "()Lcn/mucang/android/jiakaoyi/exam/k3/creator/K3EngineManager;", "reachStartDistance", "startTingCheRunnable", "Ljava/lang/Runnable;", "tineCheStepMap", "Ljava/util/HashMap;", "Lcn/mucang/android/jiakaoyi/engine/model/Step;", "Lkotlin/collections/HashMap;", "canStartTingChe", "dialogStartTingche", "", "tingCheStart", TtmlNode.START, "stop", "updateEndStep", "stepHandler", "Lcn/mucang/android/jiakaoyi/engine/processor/exam/step/StepHandler;", "stepResult", "Lcn/mucang/android/jiakaoyi/engine/processor/exam/step/StepResult;", "k3setting_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
public final class AutoStartTingCheChecker {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final K3EngineManager f4335a;
    private final K3TingCheStepConfig b;
    private final cn.mucang.android.jiakaoyi.framework.h.c<Integer> c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final HashMap<Step, Boolean> f4336d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private boolean f4337e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private boolean f4338f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private final Runnable f4339g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private final cn.mucang.android.jiakaoyi.signal.c.f.a f4340h;

    public AutoStartTingCheChecker(K3EngineManager k3EngineManager, K3TingCheStepConfig config, cn.mucang.android.jiakaoyi.framework.h.c<Integer> examDistanceGetter) {
        kotlin.jvm.internal.r.e(k3EngineManager, "k3EngineManager");
        kotlin.jvm.internal.r.e(config, "config");
        kotlin.jvm.internal.r.e(examDistanceGetter, "examDistanceGetter");
        this.f4335a = k3EngineManager;
        this.b = config;
        this.c = examDistanceGetter;
        this.f4336d = new HashMap<>();
        this.f4339g = new Runnable() { // from class: cn.mucang.android.jiakaoyi.k3setting.exam.c
            @Override // java.lang.Runnable
            public final void run() {
                AutoStartTingCheChecker.l(this.f4240a);
            }
        };
        this.f4340h = new cn.mucang.android.jiakaoyi.signal.c.f.a() { // from class: cn.mucang.android.jiakaoyi.k3setting.exam.b
            @Override // cn.mucang.android.jiakaoyi.signal.c.f.a
            public final void onSignalChanged(cn.mucang.android.jiakaoyi.signal.c.e eVar) {
                AutoStartTingCheChecker.a(this.f4237a, eVar);
            }
        };
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Multi-variable type inference failed */
    public static final void a(AutoStartTingCheChecker this$0, cn.mucang.android.jiakaoyi.signal.c.e it) {
        boolean z;
        kotlin.jvm.internal.r.e(this$0, "this$0");
        kotlin.jvm.internal.r.e(it, "it");
        cn.mucang.android.jiakaoyi.engine.processor.exam.step.b bVar = this$0.getF4335a().runningStepHandler;
        boolean z2 = bVar != null && bVar.f3142e == Step.K3_TingChe;
        if (!this$0.f4337e) {
            T t = this$0.getB().p216136.value;
            kotlin.jvm.internal.r.d(t, "config.p216136.value");
            if (((Number) t).intValue() > 0) {
                Integer num = this$0.e().get();
                kotlin.jvm.internal.r.d(num, "examDistanceGetter.get()");
                int iIntValue = num.intValue();
                T t2 = this$0.getB().p216136.value;
                kotlin.jvm.internal.r.d(t2, "config.p216136.value");
                if (iIntValue >= ((Number) t2).intValue()) {
                    cn.mucang.android.jiakaoyi.framework.log.f.o("达到里程播靠边停车 " + this$0.e().get() + "; p216136 value " + this$0.getB().p216136.value);
                    this$0.f4337e = true;
                    Integer num2 = (Integer) this$0.getB().p216137.value;
                    if (num2 != null && num2.intValue() == 1) {
                        this$0.b(z2);
                    } else {
                        Integer num3 = (Integer) this$0.getB().p216137.value;
                        if (num3 != null && num3.intValue() == 2) {
                            long j = 0;
                            if (z2) {
                                cn.mucang.android.jiakaoyi.engine.c engine = this$0.getF4335a().getEngine();
                                if (engine != null) {
                                    engine.u(Step.K3_TingChe);
                                }
                                j = 500;
                            }
                            this$0.f4338f = true;
                            cn.mucang.android.core.utils.u.d(new SafeRunnable(MucangConfig.i(), this$0.f4339g), j);
                        }
                    }
                }
            }
        }
        if (!this$0.f4338f && this$0.f4337e && bVar == null) {
            Iterator<Map.Entry<Step, Boolean>> it2 = this$0.f4336d.entrySet().iterator();
            while (true) {
                if (!it2.hasNext()) {
                    z = true;
                    break;
                } else if (!it2.next().getValue().booleanValue()) {
                    z = false;
                    break;
                }
            }
            if (z) {
                Integer num4 = (Integer) this$0.getB().p216137.value;
                if (num4 != null && num4.intValue() == 3) {
                    cn.mucang.android.core.utils.u.e(this$0.f4339g);
                    this$0.f4338f = true;
                    cn.mucang.android.core.utils.u.d(this$0.f4339g, ((Number) this$0.getB().p216156.value).intValue() * 1000);
                } else if (num4 != null && num4.intValue() == 4) {
                    this$0.j(true);
                } else if (num4 != null && num4.intValue() == 1) {
                    this$0.f4338f = true;
                    this$0.b(false);
                }
            }
        }
    }

    private final void b(final boolean z) {
        Activity activityI = MucangConfig.i();
        kotlin.jvm.internal.r.d(activityI, "getCurrentActivity()");
        String strA = cn.mucang.android.jiakaoyi.framework.utils.k0.a(R.string.k3setting_tingche_hint_msg);
        String strA2 = cn.mucang.android.jiakaoyi.framework.utils.k0.a(R.string.engine_tingche);
        View.OnClickListener onClickListener = new View.OnClickListener() { // from class: cn.mucang.android.jiakaoyi.k3setting.exam.a
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                AutoStartTingCheChecker.c(z, this, view);
            }
        };
        kotlin.jvm.internal.r.d(strA, "getString(R.string.k3setting_tingche_hint_msg)");
        new JCommonDialog(activityI, new JCommonDialog.DialogParams(null, strA, null, null, strA2, onClickListener, false, null, true, MlKitException.CODE_SCANNER_PIPELINE_INITIALIZATION_ERROR, null)).show();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void c(boolean z, AutoStartTingCheChecker this$0, View view) {
        long j;
        kotlin.jvm.internal.r.e(this$0, "this$0");
        if (z) {
            cn.mucang.android.jiakaoyi.engine.c engine = this$0.getF4335a().getEngine();
            if (engine != null) {
                engine.u(Step.K3_TingChe);
            }
            j = 500;
        } else {
            j = 0;
        }
        this$0.f4338f = true;
        cn.mucang.android.core.utils.u.d(new SafeRunnable(MucangConfig.i(), this$0.f4339g), j);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void l(AutoStartTingCheChecker this$0) {
        kotlin.jvm.internal.r.e(this$0, "this$0");
        this$0.getF4335a().exeThisStep(Step.K3_TingChe);
    }

    /* JADX INFO: renamed from: d, reason: from getter */
    public final K3TingCheStepConfig getB() {
        return this.b;
    }

    public final cn.mucang.android.jiakaoyi.framework.h.c<Integer> e() {
        return this.c;
    }

    /* JADX INFO: renamed from: f, reason: from getter */
    public final K3EngineManager getF4335a() {
        return this.f4335a;
    }

    public final void j(boolean z) {
    }

    /* JADX WARN: Multi-variable type inference failed */
    public final void k() {
        try {
            this.f4336d.clear();
            T t = this.b.p216155.value;
            kotlin.jvm.internal.r.d(t, "config.p216155.value");
            int i = 0;
            Object[] array = StringsKt__StringsKt.p0((String) t, new String[]{","}, false, 0, 6, null).toArray(new String[0]);
            if (array == null) {
                throw new NullPointerException("null cannot be cast to non-null type kotlin.Array<T>");
            }
            String[] strArr = (String[]) array;
            if (!(strArr.length == 0)) {
                int length = strArr.length;
                while (i < length) {
                    String str = strArr[i];
                    i++;
                    Step stepFindWithType = Step.findWithType(Integer.parseInt(str));
                    if (stepFindWithType != null) {
                        this.f4336d.put(stepFindWithType, Boolean.FALSE);
                    }
                }
            }
            cn.mucang.android.jiakaoyi.signal.c.d.m.b(this.f4340h);
        } catch (Exception unused) {
            cn.mucang.android.core.utils.u.h("216155配置有问题");
        }
    }

    public final void m() {
        this.f4336d.clear();
        cn.mucang.android.jiakaoyi.signal.c.d.m.n(this.f4340h);
    }

    public final void n(cn.mucang.android.jiakaoyi.engine.processor.exam.step.b stepHandler, cn.mucang.android.jiakaoyi.engine.processor.exam.step.c cVar) {
        kotlin.jvm.internal.r.e(stepHandler, "stepHandler");
        if (cVar == null || !stepHandler.j() || !(!this.f4336d.isEmpty()) || this.f4336d.get(stepHandler.f3142e) == null) {
            return;
        }
        HashMap<Step, Boolean> map = this.f4336d;
        Step step = stepHandler.f3142e;
        kotlin.jvm.internal.r.d(step, "stepHandler.examStep");
        map.put(step, Boolean.TRUE);
    }
}
