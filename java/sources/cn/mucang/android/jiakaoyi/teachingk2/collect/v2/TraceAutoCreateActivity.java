package cn.mucang.android.jiakaoyi.teachingk2.collect.v2;

import android.annotation.SuppressLint;
import android.content.Context;
import android.content.Intent;
import android.view.View;
import android.widget.LinearLayout;
import android.widget.RadioGroup;
import android.widget.TextView;
import androidx.constraintlayout.widget.ConstraintLayout;
import androidx.constraintlayout.widget.Group;
import cn.mucang.android.core.api.exception.ApiException;
import cn.mucang.android.core.api.exception.HttpException;
import cn.mucang.android.core.api.exception.InternalException;
import cn.mucang.android.jiakaoyi.engine.init.EngineState;
import cn.mucang.android.jiakaoyi.engine.model.Step;
import cn.mucang.android.jiakaoyi.framework.base.ui.BaseViewBindingActivity;
import cn.mucang.android.jiakaoyi.framework.bus.LiveBus;
import cn.mucang.android.jiakaoyi.framework.tts.TtsGrade;
import cn.mucang.android.jiakaoyi.framework.tts.TtsManager;
import cn.mucang.android.jiakaoyi.framework.utils.ActivityUtils;
import cn.mucang.android.jiakaoyi.hpmap.view.MapView;
import cn.mucang.android.jiakaoyi.mapcollect.render.MapRender;
import cn.mucang.android.jiakaoyi.signal.center.model.CarPos;
import cn.mucang.android.jiakaoyi.signal.center.model.Gear;
import cn.mucang.android.jiakaoyi.signal.pos.Pos;
import cn.mucang.android.jiakaoyi.teachingk2.autocreate.AutoCreateTeachModel;
import cn.mucang.android.jiakaoyi.teachingk2.autocreate.AutoLearnWheelAndR;
import cn.mucang.android.jiakaoyi.teachingk2.data.TeachModel;
import cn.mucang.android.jiakaoyi.teachingk2.elements.model.TraceItemModel;
import cn.mucang.android.jiakaoyi.teachingk2.lib.databinding.ActivityTraceAutoCreateBinding;
import com.iflytek.cloud.SpeechUtility;
import com.tencent.tauth.AuthActivity;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.Objects;
import kotlin.Metadata;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\u007f\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010!\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0002\b\b\n\u0002\u0018\u0002\n\u0002\b\u0003*\u0001\u0013\u0018\u0000 02\b\u0012\u0004\u0012\u00020\u00020\u00012\u00020\u0003:\u00010B\u0005¢\u0006\u0002\u0010\u0004J\b\u0010!\u001a\u00020\"H\u0002J\n\u0010#\u001a\u0004\u0018\u00010\u000bH\u0002J\b\u0010$\u001a\u00020%H\u0016J\b\u0010&\u001a\u00020\"H\u0014J\b\u0010'\u001a\u00020\"H\u0003J\b\u0010(\u001a\u00020\"H\u0002J\b\u0010)\u001a\u00020\"H\u0014J\b\u0010*\u001a\u00020\"H\u0014J\b\u0010+\u001a\u00020\"H\u0014J\u0010\u0010,\u001a\u00020\"2\u0006\u0010-\u001a\u00020.H\u0016J\b\u0010/\u001a\u00020\u0018H\u0002R\u0014\u0010\u0005\u001a\b\u0012\u0004\u0012\u00020\u00070\u0006X\u0082\u0004¢\u0006\u0002\n\u0000R\u0010\u0010\b\u001a\u0004\u0018\u00010\tX\u0082\u000e¢\u0006\u0002\n\u0000R\u0010\u0010\n\u001a\u0004\u0018\u00010\u000bX\u0082\u000e¢\u0006\u0002\n\u0000R\u000e\u0010\f\u001a\u00020\rX\u0082\u000e¢\u0006\u0002\n\u0000R\u0010\u0010\u000e\u001a\u0004\u0018\u00010\u000fX\u0082\u000e¢\u0006\u0002\n\u0000R\u000e\u0010\u0010\u001a\u00020\u0011X\u0082\u0004¢\u0006\u0002\n\u0000R\u0010\u0010\u0012\u001a\u00020\u0013X\u0082\u0004¢\u0006\u0004\n\u0002\u0010\u0014R\u000e\u0010\u0015\u001a\u00020\u0016X\u0082\u000e¢\u0006\u0002\n\u0000R\u000e\u0010\u0017\u001a\u00020\u0018X\u0082\u000e¢\u0006\u0002\n\u0000R\u000e\u0010\u0019\u001a\u00020\u0018X\u0082\u000e¢\u0006\u0002\n\u0000R\u000e\u0010\u001a\u001a\u00020\u001bX\u0082\u000e¢\u0006\u0002\n\u0000R\u0010\u0010\u001c\u001a\u0004\u0018\u00010\u001dX\u0082\u000e¢\u0006\u0002\n\u0000R\u0014\u0010\u001e\u001a\b\u0012\u0004\u0012\u00020 0\u001fX\u0082\u0004¢\u0006\u0002\n\u0000¨\u00061"}, d2 = {"Lcn/mucang/android/jiakaoyi/teachingk2/collect/v2/TraceAutoCreateActivity;", "Lcn/mucang/android/jiakaoyi/framework/base/ui/BaseViewBindingActivity;", "Lcn/mucang/android/jiakaoyi/teachingk2/lib/databinding/ActivityTraceAutoCreateBinding;", "Lcn/mucang/android/jiakaoyi/signal/center/callback/SignalCallback;", "()V", "allStepTrace", "", "Lcn/mucang/android/jiakaoyi/hpmap/view/layer/CollectPathLayer;", "boundary", "Lcn/mucang/android/jiakaoyi/hpmap/collision/k2/BoundDetector;", "creatorData", "Lcn/mucang/android/jiakaoyi/teachingk2/autocreate/model/TeachModelCreator;", "data", "Lcn/mucang/android/jiakaoyi/teachingk2/autocreate/AutoCreateTeachModel;", "engineManager", "Lcn/mucang/android/jiakaoyi/teachingk2/collect/K2TeachingCollectEngineManager;", "examEventCallback", "Lcn/mucang/android/jiakaoyi/engine/callback/ExamEventCallback;", "examResultCallback", "cn/mucang/android/jiakaoyi/teachingk2/collect/v2/TraceAutoCreateActivity$examResultCallback$1", "Lcn/mucang/android/jiakaoyi/teachingk2/collect/v2/TraceAutoCreateActivity$examResultCallback$1;", "gear", "Lcn/mucang/android/jiakaoyi/signal/center/model/Gear;", "isDaoKu", "", "isStartLearn", "learner", "Lcn/mucang/android/jiakaoyi/teachingk2/autocreate/AutoLearnWheelAndR;", "mapRender", "Lcn/mucang/android/jiakaoyi/mapcollect/render/MapRender;", "stateCallback", "Lcn/mucang/android/jiakaoyi/framework/listeners/Callback;", "Lcn/mucang/android/jiakaoyi/engine/init/EngineState;", AuthActivity.ACTION_KEY, "", "createData", "getStatName", "", "init", "initStudyViews", "initThreeViews", "onDestroy", "onPause", "onResume", "onSignalChanged", "signal", "Lcn/mucang/android/jiakaoyi/signal/center/SignalGetter;", "preCheck", "Companion", "TeachingK2_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
public final class TraceAutoCreateActivity extends BaseViewBindingActivity<ActivityTraceAutoCreateBinding> implements cn.mucang.android.jiakaoyi.signal.c.f.a {
    public static final a o = new a(null);
    private cn.mucang.android.jiakaoyi.teachingk2.collect.b0 b;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private MapRender f6777d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private cn.mucang.android.jiakaoyi.hpmap.a.a.b f6778e;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private cn.mucang.android.jiakaoyi.teachingk2.autocreate.i.d f6781h;
    private boolean i;
    private final c j;
    private final cn.mucang.android.jiakaoyi.engine.f.a k;
    private Gear l;
    private boolean m;
    private final cn.mucang.android.jiakaoyi.framework.h.b<EngineState> n;
    private final List<cn.mucang.android.jiakaoyi.hpmap.view.p.d> c = new ArrayList();

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private AutoCreateTeachModel f6779f = new AutoCreateTeachModel();

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private AutoLearnWheelAndR f6780g = new AutoLearnWheelAndR();

    @Metadata(d1 = {"\u0000\"\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\b\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J\u001c\u0010\u0003\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u00062\n\u0010\u0007\u001a\u00060\bR\u00020\tH\u0007¨\u0006\n"}, d2 = {"Lcn/mucang/android/jiakaoyi/teachingk2/collect/v2/TraceAutoCreateActivity$Companion;", "", "()V", "launch", "", "context", "Landroid/content/Context;", "item", "Lcn/mucang/android/jiakaoyi/teachingk2/collect/v2/StepTeachModelActivity$StepTeachItem;", "Lcn/mucang/android/jiakaoyi/teachingk2/collect/v2/StepTeachModelActivity;", "TeachingK2_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
    public static final class a {
        private a() {
        }

        public /* synthetic */ a(kotlin.jvm.internal.o oVar) {
            this();
        }

        public final void a(Context context, StepTeachModelActivity.b item) {
            kotlin.jvm.internal.r.e(context, "context");
            kotlin.jvm.internal.r.e(item, "item");
            TeachModelEditor.a(item);
            ActivityUtils.c(context, new Intent(context, (Class<?>) TraceAutoCreateActivity.class));
        }
    }

    @Metadata(k = 3, mv = {1, 5, 1}, xi = 48)
    public /* synthetic */ class b {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public static final /* synthetic */ int[] f6782a;
        public static final /* synthetic */ int[] b;

        static {
            int[] iArr = new int[EngineState.values().length];
            iArr[EngineState.Initialed.ordinal()] = 1;
            f6782a = iArr;
            int[] iArr2 = new int[Step.values().length];
            iArr2[Step.K2_DaoCheRuKu.ordinal()] = 1;
            iArr2[Step.K2_CeFangTingChe.ordinal()] = 2;
            iArr2[Step.K2_ShangPoQiBu.ordinal()] = 3;
            iArr2[Step.K2_ZhiJiaoZhuanWan.ordinal()] = 4;
            b = iArr2;
        }
    }

    @Metadata(d1 = {"\u0000\u001f\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000*\u0001\u0000\b\n\u0018\u00002\u00020\u0001J\u0010\u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u0005H\u0016J\u0010\u0010\u0006\u001a\u00020\u00032\u0006\u0010\u0007\u001a\u00020\bH\u0016¨\u0006\t"}, d2 = {"cn/mucang/android/jiakaoyi/teachingk2/collect/v2/TraceAutoCreateActivity$examResultCallback$1", "Lcn/mucang/android/jiakaoyi/engine/callback/ExamResultCallback;", "onOneError", "", "deduct", "Lcn/mucang/android/jiakaoyi/engine/model/DeductInfo;", "onResult", SpeechUtility.TAG_RESOURCE_RESULT, "Lcn/mucang/android/jiakaoyi/engine/processor/exam/ExamResult;", "TeachingK2_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
    public static final class c implements cn.mucang.android.jiakaoyi.engine.f.b {
        c() {
        }

        @Override // cn.mucang.android.jiakaoyi.engine.f.b
        public void onOneError(cn.mucang.android.jiakaoyi.engine.model.a deduct) {
            kotlin.jvm.internal.r.e(deduct, "deduct");
        }

        @Override // cn.mucang.android.jiakaoyi.engine.f.b
        public void onResult(cn.mucang.android.jiakaoyi.engine.processor.exam.f result) {
            kotlin.jvm.internal.r.e(result, "result");
            cn.mucang.android.jiakaoyi.teachingk2.collect.b0 b0Var = TraceAutoCreateActivity.this.b;
            if (b0Var == null) {
                return;
            }
            b0Var.reset();
        }
    }

    public TraceAutoCreateActivity() {
        StepTeachModelActivity.b bVarB = TeachModelEditor.f6857a.b();
        this.i = (bVarB == null ? null : bVarB.getF6763a()) == Step.K2_DaoCheRuKu;
        this.j = new c();
        this.k = new cn.mucang.android.jiakaoyi.engine.f.a() { // from class: cn.mucang.android.jiakaoyi.teachingk2.collect.v2.b3
            @Override // cn.mucang.android.jiakaoyi.engine.f.a
            public final void onStep(cn.mucang.android.jiakaoyi.engine.processor.exam.step.b bVar, cn.mucang.android.jiakaoyi.engine.processor.exam.step.c cVar) {
                TraceAutoCreateActivity.m(bVar, cVar);
            }
        };
        this.l = Gear.Invalid;
        this.n = new cn.mucang.android.jiakaoyi.framework.h.b() { // from class: cn.mucang.android.jiakaoyi.teachingk2.collect.v2.z2
            @Override // cn.mucang.android.jiakaoyi.framework.h.b
            public final void callback(Object obj) {
                TraceAutoCreateActivity.a0(this.f6921a, (EngineState) obj);
            }
        };
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void A(TraceAutoCreateActivity this$0, View view) {
        List<cn.mucang.android.jiakaoyi.teachingk2.autocreate.i.f.b> listB;
        kotlin.jvm.internal.r.e(this$0, "this$0");
        cn.mucang.android.jiakaoyi.teachingk2.autocreate.i.d dVarL = this$0.l();
        if (dVarL == null) {
            return;
        }
        this$0.f6781h = dVarL;
        Iterator<T> it = this$0.c.iterator();
        while (it.hasNext()) {
            this$0.g().mapView.u.Q((cn.mucang.android.jiakaoyi.hpmap.view.p.d) it.next());
        }
        this$0.c.clear();
        cn.mucang.android.jiakaoyi.hpmap.a.a.b bVar = this$0.f6778e;
        cn.mucang.android.jiakaoyi.signal.utils.b bVarG = bVar == null ? null : bVar.g();
        if (bVarG == null) {
            return;
        }
        cn.mucang.android.jiakaoyi.teachingk2.autocreate.i.d dVar = this$0.f6781h;
        if (dVar != null && (listB = dVar.b()) != null) {
            for (cn.mucang.android.jiakaoyi.teachingk2.autocreate.i.f.b bVar2 : listB) {
                ArrayList arrayList = new ArrayList();
                List<TraceItemModel> list = bVar2.f6203a;
                kotlin.jvm.internal.r.d(list, "it.traces");
                Iterator<T> it2 = list.iterator();
                while (it2.hasNext()) {
                    arrayList.add(bVarG.c((TraceItemModel) it2.next()));
                }
                this$0.c.add(new cn.mucang.android.jiakaoyi.hpmap.view.p.d(this$0.g().mapView, arrayList, 15.0f, -16711936));
            }
        }
        this$0.g().mapView.u.h(this$0.c);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void B(final TraceAutoCreateActivity this$0, View view) {
        kotlin.jvm.internal.r.e(this$0, "this$0");
        if (this$0.f6781h == null) {
            cn.mucang.android.core.utils.u.h("请先生成轨迹");
        } else {
            new cn.mucang.android.jiakaoyi.framework.base.dialog.u(this$0).h(new cn.mucang.android.jiakaoyi.framework.base.dialog.u.e() { // from class: cn.mucang.android.jiakaoyi.teachingk2.collect.v2.o2
                @Override // cn.mucang.android.jiakaoyi.framework.base.dialog.u.e
                public final void a() throws ApiException, InternalException, HttpException {
                    TraceAutoCreateActivity.C(this.f6871a);
                }
            }, "正在保存", "保存失败");
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void C(final TraceAutoCreateActivity this$0) throws ApiException, InternalException, HttpException {
        kotlin.jvm.internal.r.e(this$0, "this$0");
        cn.mucang.android.jiakaoyi.teachingk2.autocreate.i.d dVar = this$0.f6781h;
        kotlin.jvm.internal.r.c(dVar);
        TeachModelEditor teachModelEditor = TeachModelEditor.f6857a;
        new cn.mucang.android.jiakaoyi.teachingk2.collect.render.api.b().t(TeachModelEditor.e(), teachModelEditor.f(), dVar.a(teachModelEditor.b()));
        cn.mucang.android.core.utils.u.c(new Runnable() { // from class: cn.mucang.android.jiakaoyi.teachingk2.collect.v2.n2
            @Override // java.lang.Runnable
            public final void run() {
                TraceAutoCreateActivity.D(this.f6866a);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void D(TraceAutoCreateActivity this$0) {
        kotlin.jvm.internal.r.e(this$0, "this$0");
        LiveBus.d(TeachModelChanged.class).l(new TeachModelChanged(null, 1, null));
        cn.mucang.android.core.utils.u.h("保存成功");
        this$0.finish();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void E(TraceAutoCreateActivity this$0, View view) {
        kotlin.jvm.internal.r.e(this$0, "this$0");
        if (this$0.i) {
            ConstraintLayout root = this$0.g().threeLayout.getRoot();
            kotlin.jvm.internal.r.d(root, "viewBinding.threeLayout.root");
            root.setVisibility(0);
            TextView textView = this$0.g().threeLayout.func2Tv;
            kotlin.jvm.internal.r.d(textView, "viewBinding.threeLayout.func2Tv");
            textView.setVisibility(8);
            LinearLayout linearLayout = this$0.g().threeLayout.func5Tv;
            kotlin.jvm.internal.r.d(linearLayout, "viewBinding.threeLayout.func5Tv");
            linearLayout.setVisibility(8);
            AutoCreateTeachModel autoCreateTeachModel = new AutoCreateTeachModel();
            this$0.f6779f = autoCreateTeachModel;
            autoCreateTeachModel.m(true);
            this$0.f6779f.i(this$0.g().threeLayout.turnCb.isChecked());
            return;
        }
        this$0.f6779f = new AutoCreateTeachModel();
        ConstraintLayout root2 = this$0.g().threeLayout.getRoot();
        kotlin.jvm.internal.r.d(root2, "viewBinding.threeLayout.root");
        root2.setVisibility(0);
        Group group = this$0.g().threeLayout.daokuGroup;
        kotlin.jvm.internal.r.d(group, "viewBinding.threeLayout.daokuGroup");
        group.setVisibility(8);
        TeachModelEditor teachModelEditor = TeachModelEditor.f6857a;
        StepTeachModelActivity.b bVarB = teachModelEditor.b();
        if ((bVarB == null ? null : bVarB.getF6763a()) == Step.K2_CeFangTingChe) {
            Group group2 = this$0.g().threeLayout.cefangGroup;
            kotlin.jvm.internal.r.d(group2, "viewBinding.threeLayout.cefangGroup");
            group2.setVisibility(0);
            return;
        }
        StepTeachModelActivity.b bVarB2 = teachModelEditor.b();
        if ((bVarB2 == null ? null : bVarB2.getF6763a()) == Step.K2_ZhiJiaoZhuanWan) {
            Group group3 = this$0.g().threeLayout.zhijiaoGroup;
            kotlin.jvm.internal.r.d(group3, "viewBinding.threeLayout.zhijiaoGroup");
            group3.setVisibility(0);
            LinearLayout linearLayout2 = this$0.g().threeLayout.func5Tv;
            kotlin.jvm.internal.r.d(linearLayout2, "viewBinding.threeLayout.func5Tv");
            linearLayout2.setVisibility(8);
            return;
        }
        StepTeachModelActivity.b bVarB3 = teachModelEditor.b();
        if ((bVarB3 != null ? bVarB3.getF6763a() : null) == Step.K2_ShangPoQiBu) {
            Group group4 = this$0.g().threeLayout.cefangGroup;
            kotlin.jvm.internal.r.d(group4, "viewBinding.threeLayout.cefangGroup");
            group4.setVisibility(8);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void F(TraceAutoCreateActivity this$0, View view) {
        kotlin.jvm.internal.r.e(this$0, "this$0");
        ConstraintLayout root = this$0.g().threeLayout.getRoot();
        kotlin.jvm.internal.r.d(root, "viewBinding.threeLayout.root");
        root.setVisibility(0);
        TextView textView = this$0.g().threeLayout.func2Tv;
        kotlin.jvm.internal.r.d(textView, "viewBinding.threeLayout.func2Tv");
        textView.setVisibility(0);
        LinearLayout linearLayout = this$0.g().threeLayout.func5Tv;
        kotlin.jvm.internal.r.d(linearLayout, "viewBinding.threeLayout.func5Tv");
        linearLayout.setVisibility(8);
        AutoCreateTeachModel autoCreateTeachModel = new AutoCreateTeachModel();
        this$0.f6779f = autoCreateTeachModel;
        autoCreateTeachModel.m(false);
        this$0.f6779f.i(this$0.g().threeLayout.turnCb.isChecked());
    }

    private final boolean Z() {
        Class cls;
        Step f6763a;
        StepTeachModelActivity.b bVarB = TeachModelEditor.f6857a.b();
        String str = null;
        Step f6763a2 = bVarB == null ? null : bVarB.getF6763a();
        int i = f6763a2 == null ? -1 : b.b[f6763a2.ordinal()];
        if (i == 1) {
            cls = cn.mucang.android.jiakaoyi.hpmap.a.a.g.c.class;
        } else if (i == 2) {
            cls = cn.mucang.android.jiakaoyi.hpmap.a.a.g.b.class;
        } else if (i == 3) {
            cls = cn.mucang.android.jiakaoyi.hpmap.a.a.g.k.class;
        } else {
            if (i != 4) {
                StringBuilder sb = new StringBuilder();
                sb.append("暂不支持");
                if (bVarB != null && (f6763a = bVarB.getF6763a()) != null) {
                    str = f6763a.stepName;
                }
                sb.append((Object) str);
                sb.append("项目自动生成");
                cn.mucang.android.core.utils.u.h(sb.toString());
                return true;
            }
            cls = cn.mucang.android.jiakaoyi.hpmap.a.a.g.o.class;
        }
        cn.mucang.android.jiakaoyi.hpmap.a.a.b bVar = this.f6778e;
        if (bVar != null && cls.isInstance(bVar)) {
            return false;
        }
        cn.mucang.android.core.utils.u.h("请先驶入" + ((Object) bVarB.getF6763a().stepName) + "项目");
        return true;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void a0(TraceAutoCreateActivity this$0, EngineState engineState) {
        cn.mucang.android.jiakaoyi.teachingk2.collect.b0 b0Var;
        kotlin.jvm.internal.r.e(this$0, "this$0");
        if ((engineState == null ? -1 : b.f6782a[engineState.ordinal()]) != 1 || (b0Var = this$0.b) == null) {
            return;
        }
        b0Var.start();
    }

    private final void k() {
        if (this.m) {
            g().studyLayout.resultTv.append(kotlin.jvm.internal.r.m(this.f6780g.e(), "\n"));
            cn.mucang.android.core.utils.u.h("结束学习");
            this.m = false;
            g().studyLayout.func1Tv.setText("开始学习");
            return;
        }
        Gear gear = this.l;
        if (gear != Gear.GearBack && gear != Gear.Gear1 && gear != Gear.Gear2 && gear != Gear.GearD) {
            TtsManager.r("档位不正确，不能开始学习", TtsGrade.GlobalTip);
            return;
        }
        this.f6780g.d();
        cn.mucang.android.core.utils.u.h("开始学习");
        g().studyLayout.func1Tv.setText("结束学习");
        this.m = true;
    }

    private final cn.mucang.android.jiakaoyi.teachingk2.autocreate.i.d l() {
        if (this.i) {
            if (this.f6779f.getF6189a() == null) {
                cn.mucang.android.core.utils.u.h("请先采集右倒库打死点");
                return null;
            }
            if ((this.f6779f.getC() == 0.0d) && !this.f6779f.getF6192f()) {
                cn.mucang.android.core.utils.u.h("请先采集回方向盘点");
                return null;
            }
            if (this.f6779f.getF6190d() == null) {
                cn.mucang.android.core.utils.u.h("请先采集出库点");
                return null;
            }
            if (!g().threeLayout.turnCb.isChecked() && !g().threeLayout.notTurnCb.isChecked()) {
                cn.mucang.android.core.utils.u.h("请先设置是否回方向盘");
                return null;
            }
            this.f6779f.getF6191e();
            if (this.f6779f.getF6192f()) {
                cn.mucang.android.jiakaoyi.hpmap.a.a.b bVar = this.f6778e;
                Objects.requireNonNull(bVar, "null cannot be cast to non-null type cn.mucang.android.jiakaoyi.hpmap.collision.k2.c2.C2DaoKuCollision");
                return cn.mucang.android.jiakaoyi.teachingk2.autocreate.c.a((cn.mucang.android.jiakaoyi.hpmap.a.a.g.c) bVar, cn.mucang.android.jiakaoyi.signal.c.d.t().c(), this.f6779f.getF6189a(), this.f6779f.getF6190d(), this.f6779f.getB(), this.f6779f.getF6191e());
            }
            cn.mucang.android.jiakaoyi.hpmap.a.a.b bVar2 = this.f6778e;
            Objects.requireNonNull(bVar2, "null cannot be cast to non-null type cn.mucang.android.jiakaoyi.hpmap.collision.k2.c2.C2DaoKuCollision");
            return cn.mucang.android.jiakaoyi.teachingk2.autocreate.d.a((cn.mucang.android.jiakaoyi.hpmap.a.a.g.c) bVar2, cn.mucang.android.jiakaoyi.signal.c.d.t().c(), this.f6779f.getF6189a(), this.f6779f.getF6190d(), this.f6779f.getB(), this.f6779f.getC(), this.f6779f.getF6191e());
        }
        TeachModelEditor teachModelEditor = TeachModelEditor.f6857a;
        StepTeachModelActivity.b bVarB = teachModelEditor.b();
        if ((bVarB == null ? null : bVarB.getF6763a()) == Step.K2_CeFangTingChe) {
            if (this.f6779f.getF6189a() == null) {
                cn.mucang.android.core.utils.u.h("请先采集右打方向盘点");
                return null;
            }
            cn.mucang.android.jiakaoyi.hpmap.a.a.b bVar3 = this.f6778e;
            Objects.requireNonNull(bVar3, "null cannot be cast to non-null type cn.mucang.android.jiakaoyi.hpmap.collision.k2.c2.C2CeFangCollision");
            cn.mucang.android.jiakaoyi.hpmap.a.a.g.b bVar4 = (cn.mucang.android.jiakaoyi.hpmap.a.a.g.b) bVar3;
            CarPos carPosC = cn.mucang.android.jiakaoyi.signal.c.d.t().c();
            Pos f6189a = this.f6779f.getF6189a();
            double b2 = this.f6779f.getB();
            Double dH = kotlin.text.r.h(g().threeLayout.distanceEt.getText().toString());
            return cn.mucang.android.jiakaoyi.teachingk2.autocreate.e.a(bVar4, carPosC, f6189a, b2, dH == null ? 30.0d : dH.doubleValue());
        }
        StepTeachModelActivity.b bVarB2 = teachModelEditor.b();
        if ((bVarB2 == null ? null : bVarB2.getF6763a()) == Step.K2_ZhiJiaoZhuanWan) {
            if (this.f6779f.getF6189a() == null) {
                cn.mucang.android.core.utils.u.h("请先采集左打方向盘点");
                return null;
            }
            cn.mucang.android.jiakaoyi.hpmap.a.a.b bVar5 = this.f6778e;
            Objects.requireNonNull(bVar5, "null cannot be cast to non-null type cn.mucang.android.jiakaoyi.hpmap.collision.k2.c2.C2ZhiJiaoCollision");
            return cn.mucang.android.jiakaoyi.teachingk2.autocreate.h.a((cn.mucang.android.jiakaoyi.hpmap.a.a.g.o) bVar5, cn.mucang.android.jiakaoyi.signal.c.d.t().c(), this.f6779f.getF6189a(), this.f6779f.getB());
        }
        StepTeachModelActivity.b bVarB3 = teachModelEditor.b();
        if ((bVarB3 == null ? null : bVarB3.getF6763a()) != Step.K2_ShangPoQiBu || Z()) {
            return null;
        }
        cn.mucang.android.jiakaoyi.hpmap.a.a.b bVar6 = this.f6778e;
        Objects.requireNonNull(bVar6, "null cannot be cast to non-null type cn.mucang.android.jiakaoyi.hpmap.collision.k2.c2.C2ShangPoCollision");
        return cn.mucang.android.jiakaoyi.teachingk2.autocreate.f.a((cn.mucang.android.jiakaoyi.hpmap.a.a.g.k) bVar6, cn.mucang.android.jiakaoyi.signal.c.d.t().c());
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void m(cn.mucang.android.jiakaoyi.engine.processor.exam.step.b bVar, cn.mucang.android.jiakaoyi.engine.processor.exam.step.c cVar) {
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void n(TraceAutoCreateActivity this$0, View view) {
        kotlin.jvm.internal.r.e(this$0, "this$0");
        this$0.finish();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void o(TraceAutoCreateActivity this$0, View view) {
        kotlin.jvm.internal.r.e(this$0, "this$0");
        cn.mucang.android.jiakaoyi.teachingk2.autocreate.j.a.f6206a = !cn.mucang.android.jiakaoyi.teachingk2.autocreate.j.a.f6206a;
        this$0.g().titleLayout.actionTv.setText(kotlin.jvm.internal.r.m("为自动驾驶采集轨迹:", Boolean.valueOf(cn.mucang.android.jiakaoyi.teachingk2.autocreate.j.a.f6206a)));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void p(TraceAutoCreateActivity this$0, TeachModel teachModel) {
        kotlin.jvm.internal.r.e(this$0, "this$0");
        this$0.f6778e = teachModel.boundary;
    }

    @SuppressLint({"SetTextI18n"})
    private final void q() {
        g().wheelTv.setOnClickListener(new View.OnClickListener() { // from class: cn.mucang.android.jiakaoyi.teachingk2.collect.v2.u2
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                TraceAutoCreateActivity.r(this.f6901a, view);
            }
        });
        g().studyLayout.backTv.setOnClickListener(new View.OnClickListener() { // from class: cn.mucang.android.jiakaoyi.teachingk2.collect.v2.p2
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                TraceAutoCreateActivity.s(this.f6876a, view);
            }
        });
        g().studyLayout.func1Tv.setOnClickListener(new View.OnClickListener() { // from class: cn.mucang.android.jiakaoyi.teachingk2.collect.v2.a3
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                TraceAutoCreateActivity.t(this.f6788a, view);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void r(TraceAutoCreateActivity this$0, View view) {
        kotlin.jvm.internal.r.e(this$0, "this$0");
        ConstraintLayout root = this$0.g().studyLayout.getRoot();
        kotlin.jvm.internal.r.d(root, "viewBinding.studyLayout.root");
        root.setVisibility(0);
        this$0.f6780g = new AutoLearnWheelAndR();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void s(TraceAutoCreateActivity this$0, View view) {
        kotlin.jvm.internal.r.e(this$0, "this$0");
        ConstraintLayout root = this$0.g().studyLayout.getRoot();
        kotlin.jvm.internal.r.d(root, "viewBinding.studyLayout.root");
        root.setVisibility(8);
        this$0.g().studyLayout.resultTv.setText("学习结果:\n");
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void t(TraceAutoCreateActivity this$0, View view) {
        kotlin.jvm.internal.r.e(this$0, "this$0");
        this$0.k();
    }

    private final void u() {
        if (!this.i) {
            TextView textView = g().threeTv;
            kotlin.jvm.internal.r.d(textView, "viewBinding.threeTv");
            textView.setVisibility(8);
            g().twoTv.setText("开始采集");
            TeachModelEditor teachModelEditor = TeachModelEditor.f6857a;
            StepTeachModelActivity.b bVarB = teachModelEditor.b();
            if ((bVarB == null ? null : bVarB.getF6763a()) == Step.K2_CeFangTingChe) {
                g().threeLayout.func1Tv.setText("右打方向盘点");
            } else {
                StepTeachModelActivity.b bVarB2 = teachModelEditor.b();
                if ((bVarB2 != null ? bVarB2.getF6763a() : null) == Step.K2_ZhiJiaoZhuanWan) {
                    g().threeLayout.func1Tv.setText("左打方向盘点");
                }
            }
        }
        g().twoTv.setOnClickListener(new View.OnClickListener() { // from class: cn.mucang.android.jiakaoyi.teachingk2.collect.v2.q2
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                TraceAutoCreateActivity.E(this.f6882a, view);
            }
        });
        g().threeTv.setOnClickListener(new View.OnClickListener() { // from class: cn.mucang.android.jiakaoyi.teachingk2.collect.v2.l2
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                TraceAutoCreateActivity.F(this.f6851a, view);
            }
        });
        g().threeLayout.backTv.setOnClickListener(new View.OnClickListener() { // from class: cn.mucang.android.jiakaoyi.teachingk2.collect.v2.y2
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                TraceAutoCreateActivity.v(this.f6917a, view);
            }
        });
        g().threeLayout.func1Tv.setOnClickListener(new View.OnClickListener() { // from class: cn.mucang.android.jiakaoyi.teachingk2.collect.v2.r2
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                TraceAutoCreateActivity.w(this.f6889a, view);
            }
        });
        g().threeLayout.func2Tv.setOnClickListener(new View.OnClickListener() { // from class: cn.mucang.android.jiakaoyi.teachingk2.collect.v2.w2
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                TraceAutoCreateActivity.x(this.f6909a, view);
            }
        });
        g().threeLayout.func3Tv.setOnClickListener(new View.OnClickListener() { // from class: cn.mucang.android.jiakaoyi.teachingk2.collect.v2.c3
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                TraceAutoCreateActivity.y(this.f6798a, view);
            }
        });
        g().threeLayout.func4Tv.setOnCheckedChangeListener(new RadioGroup.OnCheckedChangeListener() { // from class: cn.mucang.android.jiakaoyi.teachingk2.collect.v2.v2
            @Override // android.widget.RadioGroup.OnCheckedChangeListener
            public final void onCheckedChanged(RadioGroup radioGroup, int i) {
                TraceAutoCreateActivity.z(this.f6905a, radioGroup, i);
            }
        });
        g().threeLayout.func6Tv.setOnClickListener(new View.OnClickListener() { // from class: cn.mucang.android.jiakaoyi.teachingk2.collect.v2.x2
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                TraceAutoCreateActivity.A(this.f6913a, view);
            }
        });
        g().threeLayout.func7Tv.setOnClickListener(new View.OnClickListener() { // from class: cn.mucang.android.jiakaoyi.teachingk2.collect.v2.m2
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                TraceAutoCreateActivity.B(this.f6856a, view);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void v(TraceAutoCreateActivity this$0, View view) {
        kotlin.jvm.internal.r.e(this$0, "this$0");
        ConstraintLayout root = this$0.g().threeLayout.getRoot();
        kotlin.jvm.internal.r.d(root, "viewBinding.threeLayout.root");
        root.setVisibility(8);
        Iterator<T> it = this$0.c.iterator();
        while (it.hasNext()) {
            this$0.g().mapView.u.Q((cn.mucang.android.jiakaoyi.hpmap.view.p.d) it.next());
        }
        this$0.c.clear();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void w(TraceAutoCreateActivity this$0, View view) {
        kotlin.jvm.internal.r.e(this$0, "this$0");
        if (this$0.Z()) {
            return;
        }
        cn.mucang.android.jiakaoyi.signal.c.e eVarT = cn.mucang.android.jiakaoyi.signal.c.d.t();
        this$0.f6779f.k(eVarT.c().rearAxlePoint);
        this$0.f6779f.l(eVarT.d().r);
        this$0.g().threeLayout.resultTv.setText(this$0.f6779f.b());
        cn.mucang.android.core.utils.u.h("采集成功");
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void x(TraceAutoCreateActivity this$0, View view) {
        kotlin.jvm.internal.r.e(this$0, "this$0");
        if (this$0.Z()) {
            return;
        }
        this$0.f6779f.h(cn.mucang.android.jiakaoyi.signal.c.d.t().d().r);
        this$0.g().threeLayout.resultTv.setText(this$0.f6779f.b());
        cn.mucang.android.core.utils.u.h("采集成功");
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void y(TraceAutoCreateActivity this$0, View view) {
        kotlin.jvm.internal.r.e(this$0, "this$0");
        if (this$0.Z()) {
            return;
        }
        this$0.f6779f.j(cn.mucang.android.jiakaoyi.signal.c.d.t().c().rearAxlePoint);
        this$0.g().threeLayout.resultTv.setText(this$0.f6779f.b());
        cn.mucang.android.core.utils.u.h("采集成功");
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void z(TraceAutoCreateActivity this$0, RadioGroup radioGroup, int i) {
        kotlin.jvm.internal.r.e(this$0, "this$0");
        this$0.f6779f.i(i == this$0.g().threeLayout.turnCb.getId());
    }

    @Override // cn.mucang.android.core.config.t
    public String getStatName() {
        return "TraceAutoCreateActivity";
    }

    @Override // cn.mucang.android.jiakaoyi.framework.base.ui.BaseViewBindingActivity
    protected void init() {
        super.init();
        cn.mucang.android.jiakaoyi.signal.c.d.m.b(this);
        g().titleLayout.titleTv.setText("轨迹采集");
        g().titleLayout.backIv.setOnClickListener(new View.OnClickListener() { // from class: cn.mucang.android.jiakaoyi.teachingk2.collect.v2.s2
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                TraceAutoCreateActivity.n(this.f6893a, view);
            }
        });
        TextView textView = g().titleLayout.actionTv;
        kotlin.jvm.internal.r.d(textView, "viewBinding.titleLayout.actionTv");
        textView.setVisibility(0);
        g().titleLayout.actionTv.setText(kotlin.jvm.internal.r.m("为自动驾驶采集轨迹:", Boolean.valueOf(cn.mucang.android.jiakaoyi.teachingk2.autocreate.j.a.f6206a)));
        g().titleLayout.actionTv.setOnClickListener(new View.OnClickListener() { // from class: cn.mucang.android.jiakaoyi.teachingk2.collect.v2.d3
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                TraceAutoCreateActivity.o(this.f6803a, view);
            }
        });
        MapView mapView = g().mapView;
        kotlin.jvm.internal.r.d(mapView, "viewBinding.mapView");
        this.f6777d = new MapRender(this, mapView, false, null, 8, null);
        this.b = new cn.mucang.android.jiakaoyi.teachingk2.collect.b0(this.j, this.k, this.n);
        q();
        u();
        LiveBus.d(TeachModel.class).h(this, new androidx.lifecycle.a0() { // from class: cn.mucang.android.jiakaoyi.teachingk2.collect.v2.t2
            @Override // androidx.lifecycle.a0
            public final void onChanged(Object obj) {
                TraceAutoCreateActivity.p(this.f6897a, (TeachModel) obj);
            }
        });
    }

    @Override // cn.mucang.android.core.config.n, androidx.appcompat.app.d, androidx.fragment.app.d, android.app.Activity
    protected void onDestroy() {
        super.onDestroy();
        cn.mucang.android.jiakaoyi.signal.c.d.m.n(this);
        MapRender mapRender = this.f6777d;
        if (mapRender != null) {
            mapRender.d();
        }
        cn.mucang.android.jiakaoyi.teachingk2.collect.b0 b0Var = this.b;
        if (b0Var != null) {
            b0Var.stop();
        }
        cn.mucang.android.jiakaoyi.teachingk2.collect.b0 b0Var2 = this.b;
        if (b0Var2 == null) {
            return;
        }
        b0Var2.destroy();
    }

    @Override // cn.mucang.android.core.config.n, androidx.fragment.app.d, android.app.Activity
    protected void onPause() {
        super.onPause();
        MapRender mapRender = this.f6777d;
        if (mapRender == null) {
            return;
        }
        mapRender.k();
    }

    @Override // cn.mucang.android.core.config.n, androidx.fragment.app.d, android.app.Activity
    protected void onResume() {
        super.onResume();
        MapRender mapRender = this.f6777d;
        if (mapRender == null) {
            return;
        }
        mapRender.l();
    }

    @Override // cn.mucang.android.jiakaoyi.signal.c.f.a
    public void onSignalChanged(cn.mucang.android.jiakaoyi.signal.c.e signal) {
        kotlin.jvm.internal.r.e(signal, "signal");
        this.f6780g.c(signal);
        Gear gear = signal.d().m;
        kotlin.jvm.internal.r.d(gear, "signal.car.gear");
        this.l = gear;
        TextView textView = g().studyLayout.signalInfo;
        StringBuilder sb = new StringBuilder();
        sb.append((Object) this.l.gearName);
        sb.append(',');
        sb.append(signal.d().r);
        textView.setText(sb.toString());
    }
}
