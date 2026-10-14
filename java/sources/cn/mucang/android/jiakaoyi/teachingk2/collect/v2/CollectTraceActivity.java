package cn.mucang.android.jiakaoyi.teachingk2.collect.v2;

import android.annotation.SuppressLint;
import android.content.Context;
import android.content.Intent;
import android.view.View;
import android.widget.EditText;
import android.widget.FrameLayout;
import android.widget.TextView;
import androidx.constraintlayout.widget.ConstraintLayout;
import androidx.recyclerview.widget.LinearLayoutManager;
import cn.mucang.android.core.api.exception.ApiException;
import cn.mucang.android.core.api.exception.HttpException;
import cn.mucang.android.core.api.exception.InternalException;
import cn.mucang.android.jiakaoyi.engine.init.EngineState;
import cn.mucang.android.jiakaoyi.framework.base.ViewBindingBinder;
import cn.mucang.android.jiakaoyi.framework.base.ViewBindingHolder;
import cn.mucang.android.jiakaoyi.framework.base.ui.BaseViewBindingActivity;
import cn.mucang.android.jiakaoyi.framework.bus.LiveBus;
import cn.mucang.android.jiakaoyi.framework.utils.ActivityUtils;
import cn.mucang.android.jiakaoyi.framework.utils.AppUtils;
import cn.mucang.android.jiakaoyi.hpmap.collision.k2.events.SubStepEvent;
import cn.mucang.android.jiakaoyi.hpmap.view.MapView;
import cn.mucang.android.jiakaoyi.mapcollect.render.MapRender;
import cn.mucang.android.jiakaoyi.teachingk2.collect.TeachCollectHelper;
import cn.mucang.android.jiakaoyi.teachingk2.data.TeachModel;
import cn.mucang.android.jiakaoyi.teachingk2.elements.model.SerializableRect;
import cn.mucang.android.jiakaoyi.teachingk2.elements.variable.TraceVariable;
import cn.mucang.android.jiakaoyi.teachingk2.lib.databinding.ActivityCollectTraceBinding;
import cn.mucang.android.jiakaoyi.teachingk2.lib.databinding.ItemStepMenuBinding;
import com.iflytek.cloud.SpeechUtility;
import java.util.List;
import java.util.Objects;
import kotlin.Metadata;
import kotlin.jvm.functions.Function1;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000e\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\b\n*\u0001\u000b\b\u0007\u0018\u0000 '2\b\u0012\u0004\u0012\u00020\u00020\u0001:\u0002'(B\u0005¢\u0006\u0002\u0010\u0003J\u0010\u0010\u001c\u001a\u00020\u001d2\u0006\u0010\u0016\u001a\u00020\u0017H\u0002J\b\u0010\u001e\u001a\u00020\u001fH\u0016J\b\u0010 \u001a\u00020\u001dH\u0014J\b\u0010!\u001a\u00020\u001dH\u0016J\b\u0010\"\u001a\u00020\u001dH\u0014J\b\u0010#\u001a\u00020\u001dH\u0014J\b\u0010$\u001a\u00020\u001dH\u0014J\b\u0010%\u001a\u00020\u001dH\u0002J\b\u0010&\u001a\u00020\u001dH\u0002R\u000e\u0010\u0004\u001a\u00020\u0005X\u0082\u0004¢\u0006\u0002\n\u0000R\u0010\u0010\u0006\u001a\u0004\u0018\u00010\u0007X\u0082\u000e¢\u0006\u0002\n\u0000R\u000e\u0010\b\u001a\u00020\tX\u0082\u0004¢\u0006\u0002\n\u0000R\u0010\u0010\n\u001a\u00020\u000bX\u0082\u0004¢\u0006\u0004\n\u0002\u0010\fR\u0010\u0010\r\u001a\u0004\u0018\u00010\u000eX\u0082\u000e¢\u0006\u0002\n\u0000R\u0010\u0010\u000f\u001a\u0004\u0018\u00010\u0010X\u0082\u000e¢\u0006\u0002\n\u0000R\u0010\u0010\u0011\u001a\u0004\u0018\u00010\u0012X\u0082\u000e¢\u0006\u0002\n\u0000R\u0014\u0010\u0013\u001a\b\u0012\u0004\u0012\u00020\u00150\u0014X\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u0016\u001a\u00020\u0017X\u0082\u000e¢\u0006\u0002\n\u0000R\u0010\u0010\u0018\u001a\u0004\u0018\u00010\u0019X\u0082\u000e¢\u0006\u0002\n\u0000R\u0014\u0010\u001a\u001a\b\u0012\u0004\u0012\u00020\u00190\u001bX\u0082\u0004¢\u0006\u0002\n\u0000¨\u0006)"}, d2 = {"Lcn/mucang/android/jiakaoyi/teachingk2/collect/v2/CollectTraceActivity;", "Lcn/mucang/android/jiakaoyi/framework/base/ui/BaseViewBindingActivity;", "Lcn/mucang/android/jiakaoyi/teachingk2/lib/databinding/ActivityCollectTraceBinding;", "()V", "adapter", "Lcom/drakeet/multitype/MultiTypeAdapter;", "engineManager", "Lcn/mucang/android/jiakaoyi/engine/init/EngineManager;", "examEventCallback", "Lcn/mucang/android/jiakaoyi/engine/callback/ExamEventCallback;", "examResultCallback", "cn/mucang/android/jiakaoyi/teachingk2/collect/v2/CollectTraceActivity$examResultCallback$1", "Lcn/mucang/android/jiakaoyi/teachingk2/collect/v2/CollectTraceActivity$examResultCallback$1;", "mapPreviewer", "Lcn/mucang/android/jiakaoyi/teachingk2/collect/v2/StepMapPreviewer;", "mapRender", "Lcn/mucang/android/jiakaoyi/mapcollect/render/MapRender;", "presenter", "Lcn/mucang/android/jiakaoyi/teachingk2/collect/v2/CollectTracePresenter;", "stateCallback", "Lcn/mucang/android/jiakaoyi/framework/listeners/Callback;", "Lcn/mucang/android/jiakaoyi/engine/init/EngineState;", "subStep", "", "subStepEvent", "Lcn/mucang/android/jiakaoyi/hpmap/collision/k2/events/SubStepEvent;", "subStepObservable", "Landroidx/lifecycle/Observer;", "changeStep", "", "getStatName", "", "init", "onBackPressed", "onDestroy", "onPause", "onResume", "save", "showTrace", "Companion", "TraceStepBinder", "TeachingK2_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
@SuppressLint({"NotifyDataSetChanged"})
public final class CollectTraceActivity extends BaseViewBindingActivity<ActivityCollectTraceBinding> {
    public static final a m = new a(null);
    private final com.drakeet.multitype.f b;
    private int c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private StepMapPreviewer f6743d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private cn.mucang.android.jiakaoyi.engine.init.a f6744e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private MapRender f6745f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private CollectTracePresenter f6746g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private SubStepEvent f6747h;
    private final androidx.lifecycle.a0<SubStepEvent> i;
    private final c j;
    private final cn.mucang.android.jiakaoyi.engine.f.a k;
    private final cn.mucang.android.jiakaoyi.framework.h.b<EngineState> l;

    @Metadata(d1 = {"\u0000\"\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\b\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J\u001c\u0010\u0003\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u00062\n\u0010\u0007\u001a\u00060\bR\u00020\tH\u0007¨\u0006\n"}, d2 = {"Lcn/mucang/android/jiakaoyi/teachingk2/collect/v2/CollectTraceActivity$Companion;", "", "()V", "launch", "", "context", "Landroid/content/Context;", "item", "Lcn/mucang/android/jiakaoyi/teachingk2/collect/v2/StepTeachModelActivity$StepTeachItem;", "Lcn/mucang/android/jiakaoyi/teachingk2/collect/v2/StepTeachModelActivity;", "TeachingK2_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
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
            ActivityUtils.c(context, new Intent(context, (Class<?>) CollectTraceActivity.class));
        }
    }

    @Metadata(d1 = {"\u0000\"\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\b\u0086\u0004\u0018\u00002\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u00030\u0001B\u0005¢\u0006\u0002\u0010\u0004J\u001e\u0010\u0005\u001a\u00020\u00062\f\u0010\u0007\u001a\b\u0012\u0004\u0012\u00020\u00030\b2\u0006\u0010\t\u001a\u00020\u0002H\u0016¨\u0006\n"}, d2 = {"Lcn/mucang/android/jiakaoyi/teachingk2/collect/v2/CollectTraceActivity$TraceStepBinder;", "Lcn/mucang/android/jiakaoyi/framework/base/ViewBindingBinder;", "", "Lcn/mucang/android/jiakaoyi/teachingk2/lib/databinding/ItemStepMenuBinding;", "(Lcn/mucang/android/jiakaoyi/teachingk2/collect/v2/CollectTraceActivity;)V", "onBindViewHolder", "", "holder", "Lcn/mucang/android/jiakaoyi/framework/base/ViewBindingHolder;", "item", "TeachingK2_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
    public final class b extends ViewBindingBinder<String, ItemStepMenuBinding> {
        final /* synthetic */ CollectTraceActivity b;

        public b(CollectTraceActivity this$0) {
            kotlin.jvm.internal.r.e(this$0, "this$0");
            this.b = this$0;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public static final void p(CollectTraceActivity this$0, View view) {
            kotlin.jvm.internal.r.e(this$0, "this$0");
            Object tag = view.getTag();
            Objects.requireNonNull(tag, "null cannot be cast to non-null type kotlin.Int");
            this$0.m(((Integer) tag).intValue());
        }

        @Override // com.drakeet.multitype.c
        /* JADX INFO: renamed from: o, reason: merged with bridge method [inline-methods] */
        public void c(ViewBindingHolder<ItemStepMenuBinding> holder, String item) {
            kotlin.jvm.internal.r.e(holder, "holder");
            kotlin.jvm.internal.r.e(item, "item");
            ((ItemStepMenuBinding) holder.getViewBinding()).stepTv.setText(item);
            ((ItemStepMenuBinding) holder.getViewBinding()).stepTv.setTag(Integer.valueOf(holder.getAdapterPosition() + 1));
            ((ItemStepMenuBinding) holder.getViewBinding()).stepTv.setSelected(kotlin.jvm.internal.r.a(((ItemStepMenuBinding) holder.getViewBinding()).stepTv.getTag(), Integer.valueOf(this.b.c)));
            TextView textView = ((ItemStepMenuBinding) holder.getViewBinding()).stepTv;
            final CollectTraceActivity collectTraceActivity = this.b;
            textView.setOnClickListener(new View.OnClickListener() { // from class: cn.mucang.android.jiakaoyi.teachingk2.collect.v2.t
                @Override // android.view.View.OnClickListener
                public final void onClick(View view) {
                    CollectTraceActivity.b.p(collectTraceActivity, view);
                }
            });
        }
    }

    @Metadata(d1 = {"\u0000\u001f\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000*\u0001\u0000\b\n\u0018\u00002\u00020\u0001J\u0010\u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u0005H\u0016J\u0010\u0010\u0006\u001a\u00020\u00032\u0006\u0010\u0007\u001a\u00020\bH\u0016¨\u0006\t"}, d2 = {"cn/mucang/android/jiakaoyi/teachingk2/collect/v2/CollectTraceActivity$examResultCallback$1", "Lcn/mucang/android/jiakaoyi/engine/callback/ExamResultCallback;", "onOneError", "", "deduct", "Lcn/mucang/android/jiakaoyi/engine/model/DeductInfo;", "onResult", SpeechUtility.TAG_RESOURCE_RESULT, "Lcn/mucang/android/jiakaoyi/engine/processor/exam/ExamResult;", "TeachingK2_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
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
        }
    }

    public CollectTraceActivity() {
        com.drakeet.multitype.f fVar = new com.drakeet.multitype.f(null, 0, null, 7, null);
        fVar.g(String.class, new b(this));
        kotlin.v vVar = kotlin.v.f15822a;
        this.b = fVar;
        this.c = 1;
        this.i = new androidx.lifecycle.a0() { // from class: cn.mucang.android.jiakaoyi.teachingk2.collect.v2.v
            @Override // androidx.lifecycle.a0
            public final void onChanged(Object obj) {
                CollectTraceActivity.G(this.f6902a, (SubStepEvent) obj);
            }
        };
        this.j = new c();
        this.k = new cn.mucang.android.jiakaoyi.engine.f.a() { // from class: cn.mucang.android.jiakaoyi.teachingk2.collect.v2.w
            @Override // cn.mucang.android.jiakaoyi.engine.f.a
            public final void onStep(cn.mucang.android.jiakaoyi.engine.processor.exam.step.b bVar, cn.mucang.android.jiakaoyi.engine.processor.exam.step.c cVar) {
                CollectTraceActivity.n(bVar, cVar);
            }
        };
        this.l = new cn.mucang.android.jiakaoyi.framework.h.b() { // from class: cn.mucang.android.jiakaoyi.teachingk2.collect.v2.x
            @Override // cn.mucang.android.jiakaoyi.framework.h.b
            public final void callback(Object obj) {
                CollectTraceActivity.F(this.f6910a, (EngineState) obj);
            }
        };
    }

    private final void B() {
        Integer numJ = kotlin.text.s.j(g().rangeEt.getText().toString());
        final int iIntValue = numJ == null ? 25 : numJ.intValue();
        Integer numJ2 = kotlin.text.s.j(g().timeEt.getText().toString());
        final int iIntValue2 = numJ2 == null ? 5000 : numJ2.intValue();
        final boolean zIsChecked = g().select.isChecked();
        final SerializableRect serializableRectB = SerializableRect.INSTANCE.b(g().posRangeEt.getText().toString());
        final TeachModel teachModelH = TeachModelEditor.h(this.c);
        if (teachModelH == null || cn.mucang.android.core.utils.n0.e(teachModelH.teachModelId)) {
            cn.mucang.android.core.utils.u.h("请先采集标准轨迹");
            return;
        }
        final TeachModel teachModelCopy = teachModelH.copy();
        TraceVariable traceVariable = teachModelCopy.getTraceVariable();
        if (traceVariable != null) {
            traceVariable.range = iIntValue;
        }
        TraceVariable traceVariable2 = teachModelCopy.getTraceVariable();
        if (traceVariable2 != null) {
            traceVariable2.time = iIntValue2;
        }
        TraceVariable traceVariable3 = teachModelCopy.getTraceVariable();
        if (traceVariable3 != null) {
            traceVariable3.enableStopCheck = zIsChecked;
        }
        TraceVariable traceVariable4 = teachModelCopy.getTraceVariable();
        if (traceVariable4 != null) {
            traceVariable4.stopRange = serializableRectB;
        }
        new cn.mucang.android.jiakaoyi.framework.base.dialog.u(this).h(new cn.mucang.android.jiakaoyi.framework.base.dialog.u.e() { // from class: cn.mucang.android.jiakaoyi.teachingk2.collect.v2.r
            @Override // cn.mucang.android.jiakaoyi.framework.base.dialog.u.e
            public final void a() throws ApiException, InternalException, HttpException {
                CollectTraceActivity.C(teachModelCopy, teachModelH, iIntValue, iIntValue2, zIsChecked, serializableRectB);
            }
        }, "正在保存", "保存失败");
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void C(TeachModel teachModel, final TeachModel teachModel2, final int i, final int i2, final boolean z, final SerializableRect stopRange) throws ApiException, InternalException, HttpException {
        kotlin.jvm.internal.r.e(stopRange, "$stopRange");
        new cn.mucang.android.jiakaoyi.teachingk2.collect.render.api.b().v(teachModel);
        cn.mucang.android.core.utils.u.c(new Runnable() { // from class: cn.mucang.android.jiakaoyi.teachingk2.collect.v2.q
            @Override // java.lang.Runnable
            public final void run() {
                CollectTraceActivity.D(teachModel2, i, i2, z, stopRange);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void D(TeachModel teachModel, int i, int i2, boolean z, SerializableRect stopRange) {
        kotlin.jvm.internal.r.e(stopRange, "$stopRange");
        TraceVariable traceVariable = teachModel.getTraceVariable();
        if (traceVariable != null) {
            traceVariable.range = i;
        }
        TraceVariable traceVariable2 = teachModel.getTraceVariable();
        if (traceVariable2 != null) {
            traceVariable2.time = i2;
        }
        TraceVariable traceVariable3 = teachModel.getTraceVariable();
        if (traceVariable3 != null) {
            traceVariable3.enableStopCheck = z;
        }
        TraceVariable traceVariable4 = teachModel.getTraceVariable();
        if (traceVariable4 != null) {
            traceVariable4.stopRange = stopRange;
        }
        cn.mucang.android.core.utils.u.h("更新成功");
    }

    private final void E() {
        TraceVariable traceVariable = (TraceVariable) kotlin.collections.s.f0(TeachModelEditor.k(), this.c - 1);
        if (traceVariable == null) {
            StepTeachModelActivity.b bVarB = TeachModelEditor.f6857a.b();
            kotlin.jvm.internal.r.c(bVarB);
            traceVariable = new TraceVariable(bVarB.getF6763a().type, this.c);
        }
        g().rangeEt.setText(String.valueOf(traceVariable.range));
        g().timeEt.setText(String.valueOf(traceVariable.time));
        SerializableRect.Companion companion = SerializableRect.INSTANCE;
        StepTeachModelActivity.b bVarB2 = TeachModelEditor.f6857a.b();
        kotlin.jvm.internal.r.c(bVarB2);
        SerializableRect serializableRectA = companion.a(bVarB2.getF6763a().type, this.c);
        if (serializableRectA == null) {
            ConstraintLayout constraintLayout = g().rectCl;
            kotlin.jvm.internal.r.d(constraintLayout, "viewBinding.rectCl");
            constraintLayout.setVisibility(8);
            return;
        }
        ConstraintLayout constraintLayout2 = g().rectCl;
        kotlin.jvm.internal.r.d(constraintLayout2, "viewBinding.rectCl");
        constraintLayout2.setVisibility(0);
        g().select.setChecked(traceVariable.enableStopCheck);
        EditText editText = g().posRangeEt;
        SerializableRect serializableRect = traceVariable.stopRange;
        if (serializableRect != null) {
            serializableRectA = serializableRect;
        }
        editText.setText(serializableRectA.getRangeDesc());
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void F(CollectTraceActivity this$0, EngineState engineState) {
        cn.mucang.android.jiakaoyi.engine.init.a aVar;
        kotlin.jvm.internal.r.e(this$0, "this$0");
        if (engineState == EngineState.Initialed) {
            cn.mucang.android.jiakaoyi.engine.init.a aVar2 = this$0.f6744e;
            boolean z = false;
            if (aVar2 != null && aVar2.canStart()) {
                z = true;
            }
            if (!z || (aVar = this$0.f6744e) == null) {
                return;
            }
            aVar.start();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void G(CollectTraceActivity this$0, SubStepEvent subStepEvent) {
        kotlin.jvm.internal.r.e(this$0, "this$0");
        SubStepEvent subStepEvent2 = this$0.f6747h;
        if ((subStepEvent2 == null ? null : subStepEvent2.getStep()) == subStepEvent.getStep()) {
            SubStepEvent subStepEvent3 = this$0.f6747h;
            boolean z = false;
            if (subStepEvent3 != null && subStepEvent3.getSubStep() == subStepEvent.getSubStep()) {
                z = true;
            }
            if (z) {
                return;
            }
        }
        cn.mucang.android.jiakaoyi.framework.log.f.o(((Object) subStepEvent.getStep().zhStepName) + "切到步骤" + subStepEvent.getSubStep() + ':' + subStepEvent.getSubStepName());
        this$0.f6747h = subStepEvent;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void m(int i) {
        this.c = i;
        this.b.notifyDataSetChanged();
        E();
        CollectTracePresenter collectTracePresenter = this.f6746g;
        if (collectTracePresenter == null) {
            return;
        }
        collectTracePresenter.K(i);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void n(cn.mucang.android.jiakaoyi.engine.processor.exam.step.b bVar, cn.mucang.android.jiakaoyi.engine.processor.exam.step.c cVar) {
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void o(CollectTraceActivity this$0, View view) {
        kotlin.jvm.internal.r.e(this$0, "this$0");
        this$0.onBackPressed();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void p(CollectTraceActivity this$0, View view) {
        kotlin.jvm.internal.r.e(this$0, "this$0");
        this$0.E();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void q(CollectTraceActivity this$0, View view) {
        kotlin.jvm.internal.r.e(this$0, "this$0");
        this$0.B();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void r(CollectTraceActivity this$0, View view) {
        kotlin.jvm.internal.r.e(this$0, "this$0");
        FrameLayout frameLayout = this$0.g().previewFl;
        kotlin.jvm.internal.r.d(frameLayout, "viewBinding.previewFl");
        frameLayout.setVisibility(8);
    }

    @Override // cn.mucang.android.core.config.t
    public String getStatName() {
        return "教学轨迹采集";
    }

    @Override // cn.mucang.android.jiakaoyi.framework.base.ui.BaseViewBindingActivity
    protected void init() {
        super.init();
        TeachModelEditor teachModelEditor = TeachModelEditor.f6857a;
        if (teachModelEditor.b() == null) {
            cn.mucang.android.core.utils.u.h("数据出错");
            finish();
            return;
        }
        g().titleTv.setText(teachModelEditor.j());
        g().backIv.setOnClickListener(new View.OnClickListener() { // from class: cn.mucang.android.jiakaoyi.teachingk2.collect.v2.s
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                CollectTraceActivity.o(this.f6890a, view);
            }
        });
        g().backIv.bringToFront();
        MapView mapView = g().map;
        kotlin.jvm.internal.r.d(mapView, "viewBinding.map");
        this.f6745f = new MapRender(this, mapView, false, null, 8, null);
        this.f6744e = AppUtils.b() ? new f.a.a.c.a.creator.c(this.j, this.k, this.l) : new cn.mucang.android.jiakaoyi.teachingk2.collect.b0(this.j, this.k, this.l);
        MapView mapView2 = g().previewMap;
        kotlin.jvm.internal.r.d(mapView2, "viewBinding.previewMap");
        StepMapPreviewer stepMapPreviewer = new StepMapPreviewer(mapView2);
        this.f6743d = stepMapPreviewer;
        if (stepMapPreviewer != null) {
            StepTeachModelActivity.b bVarB = teachModelEditor.b();
            kotlin.jvm.internal.r.c(bVarB);
            int i = bVarB.getF6763a().type;
            StepTeachModelActivity.b bVarB2 = teachModelEditor.b();
            kotlin.jvm.internal.r.c(bVarB2);
            StepMapPreviewer.e(stepMapPreviewer, i, bVarB2.getB(), null, 4, null);
        }
        StepMapPreviewer stepMapPreviewer2 = this.f6743d;
        if (stepMapPreviewer2 != null) {
            stepMapPreviewer2.l(TeachModelEditor.k());
        }
        g().stepRv.setLayoutManager(new LinearLayoutManager(this));
        g().stepRv.setAdapter(this.b);
        com.drakeet.multitype.f fVar = this.b;
        StepTeachModelActivity.b bVarB3 = teachModelEditor.b();
        kotlin.jvm.internal.r.c(bVarB3);
        int i2 = bVarB3.getF6763a().type;
        StepTeachModelActivity.b bVarB4 = teachModelEditor.b();
        kotlin.jvm.internal.r.c(bVarB4);
        fVar.i(TeachCollectHelper.f(i2, bVarB4.getB()));
        this.b.notifyDataSetChanged();
        this.f6746g = new CollectTracePresenter(this, new Function1<List<? extends TraceVariable>, kotlin.v>() { // from class: cn.mucang.android.jiakaoyi.teachingk2.collect.v2.CollectTraceActivity.init.2
            {
                super(1);
            }

            @Override // kotlin.jvm.functions.Function1
            public /* bridge */ /* synthetic */ kotlin.v invoke(List<? extends TraceVariable> list) {
                invoke2(list);
                return kotlin.v.f15822a;
            }

            /* JADX INFO: renamed from: invoke, reason: avoid collision after fix types in other method */
            public final void invoke2(List<? extends TraceVariable> it) {
                kotlin.jvm.internal.r.e(it, "it");
                StepMapPreviewer stepMapPreviewer3 = CollectTraceActivity.this.f6743d;
                if (stepMapPreviewer3 == null) {
                    return;
                }
                stepMapPreviewer3.l(it);
            }
        });
        g().cancelTv.setOnClickListener(new View.OnClickListener() { // from class: cn.mucang.android.jiakaoyi.teachingk2.collect.v2.o
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                CollectTraceActivity.p(this.f6868a, view);
            }
        });
        g().saveTv.setOnClickListener(new View.OnClickListener() { // from class: cn.mucang.android.jiakaoyi.teachingk2.collect.v2.u
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                CollectTraceActivity.q(this.f6898a, view);
            }
        });
        g().closeIv.setOnClickListener(new View.OnClickListener() { // from class: cn.mucang.android.jiakaoyi.teachingk2.collect.v2.p
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                CollectTraceActivity.r(this.f6872a, view);
            }
        });
        LiveBus.d(SubStepEvent.class).h(this, this.i);
        E();
    }

    @Override // androidx.activity.ComponentActivity, android.app.Activity
    public void onBackPressed() {
        CollectTracePresenter collectTracePresenter = this.f6746g;
        if (collectTracePresenter == null) {
            return;
        }
        collectTracePresenter.B();
    }

    @Override // cn.mucang.android.core.config.n, androidx.appcompat.app.d, androidx.fragment.app.d, android.app.Activity
    protected void onDestroy() {
        super.onDestroy();
        g().previewMap.c();
        MapRender mapRender = this.f6745f;
        if (mapRender != null) {
            mapRender.d();
        }
        cn.mucang.android.jiakaoyi.engine.init.a aVar = this.f6744e;
        if (aVar != null) {
            aVar.stop();
        }
        cn.mucang.android.jiakaoyi.engine.init.a aVar2 = this.f6744e;
        if (aVar2 != null) {
            aVar2.destroy();
        }
        MapRender mapRender2 = this.f6745f;
        if (mapRender2 != null) {
            mapRender2.d();
        }
        cn.mucang.android.jiakaoyi.hpmap.a.a.j.b.d();
        cn.mucang.android.jiakaoyi.teachingk2.autopilot.e.e(false, null);
    }

    @Override // cn.mucang.android.core.config.n, androidx.fragment.app.d, android.app.Activity
    protected void onPause() {
        super.onPause();
        MapRender mapRender = this.f6745f;
        if (mapRender != null) {
            mapRender.k();
        }
        g().previewMap.m();
    }

    @Override // cn.mucang.android.core.config.n, androidx.fragment.app.d, android.app.Activity
    protected void onResume() {
        super.onResume();
        MapRender mapRender = this.f6745f;
        if (mapRender != null) {
            mapRender.l();
        }
        g().previewMap.n();
    }
}
