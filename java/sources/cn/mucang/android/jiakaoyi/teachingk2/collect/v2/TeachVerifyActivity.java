package cn.mucang.android.jiakaoyi.teachingk2.collect.v2;

import android.content.Context;
import android.content.DialogInterface;
import android.content.Intent;
import android.view.View;
import cn.mucang.android.jiakaoyi.engine.init.EngineState;
import cn.mucang.android.jiakaoyi.engine.model.Step;
import cn.mucang.android.jiakaoyi.framework.base.dialog.DialogExtensionKt;
import cn.mucang.android.jiakaoyi.framework.base.dialog.JLoadingDialog;
import cn.mucang.android.jiakaoyi.framework.base.ui.BaseViewBindingActivity;
import cn.mucang.android.jiakaoyi.framework.bus.LiveBus;
import cn.mucang.android.jiakaoyi.framework.tts.TtsGrade;
import cn.mucang.android.jiakaoyi.framework.tts.TtsManager;
import cn.mucang.android.jiakaoyi.framework.utils.ActivityUtils;
import cn.mucang.android.jiakaoyi.framework.utils.AppUtils;
import cn.mucang.android.jiakaoyi.hpmap.collision.k2.events.SubStepEvent;
import cn.mucang.android.jiakaoyi.hpmap.view.MapView;
import cn.mucang.android.jiakaoyi.mapcollect.render.MapRender;
import cn.mucang.android.jiakaoyi.signal.Tiger;
import cn.mucang.android.jiakaoyi.teachingk2.data.ErrorModel;
import cn.mucang.android.jiakaoyi.teachingk2.data.TeachModel;
import cn.mucang.android.jiakaoyi.teachingk2.form.FormModel;
import cn.mucang.android.jiakaoyi.teachingk2.form.model.PictureModel;
import cn.mucang.android.jiakaoyi.teachingk2.form.model.VoiceModel;
import cn.mucang.android.jiakaoyi.teachingk2.grade.TeachConfig;
import cn.mucang.android.jiakaoyi.teachingk2.lib.databinding.ActivityTeachVerifyBinding;
import cn.mucang.jiakaoyi.uilib.utils.ExamSiteUtil;
import com.iflytek.cloud.SpeechUtility;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Set;
import kotlin.Metadata;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\u009f\u0001\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010!\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\b\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010#\n\u0002\b\u0007*\u0001\t\u0018\u0000 72\b\u0012\u0004\u0012\u00020\u00020\u0001:\u00017B\u0005¢\u0006\u0002\u0010\u0003J\b\u0010'\u001a\u00020(H\u0016Jq\u0010)\u001a\u00020*2.\u0010+\u001a*\u0012\u0004\u0012\u00020-\u0012\n\u0012\b\u0012\u0004\u0012\u00020.0\u000e0,j\u0014\u0012\u0004\u0012\u00020-\u0012\n\u0012\b\u0012\u0004\u0012\u00020.0\u000e`/2.\u00100\u001a*\u0012\u0004\u0012\u00020-\u0012\n\u0012\b\u0012\u0004\u0012\u00020(010,j\u0014\u0012\u0004\u0012\u00020-\u0012\n\u0012\b\u0012\u0004\u0012\u00020(01`/H\u0082@ø\u0001\u0000¢\u0006\u0002\u00102J\b\u00103\u001a\u00020*H\u0014J\b\u00104\u001a\u00020*H\u0014J\b\u00105\u001a\u00020*H\u0014J\b\u00106\u001a\u00020*H\u0014R\u000e\u0010\u0004\u001a\u00020\u0005X\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u0006\u001a\u00020\u0007X\u0082\u0004¢\u0006\u0002\n\u0000R\u0010\u0010\b\u001a\u00020\tX\u0082\u0004¢\u0006\u0004\n\u0002\u0010\nR\u0010\u0010\u000b\u001a\u0004\u0018\u00010\fX\u0082\u000e¢\u0006\u0002\n\u0000R\u0014\u0010\r\u001a\b\u0012\u0004\u0012\u00020\u000f0\u000eX\u0082\u0004¢\u0006\u0002\n\u0000R\u0010\u0010\u0010\u001a\u0004\u0018\u00010\u0011X\u0082\u000e¢\u0006\u0002\n\u0000R\u0010\u0010\u0012\u001a\u0004\u0018\u00010\u0013X\u0082\u000e¢\u0006\u0002\n\u0000R\u0010\u0010\u0014\u001a\u0004\u0018\u00010\u0015X\u0082\u000e¢\u0006\u0002\n\u0000R\u001c\u0010\u0016\u001a\u0010\u0012\f\u0012\n \u0019*\u0004\u0018\u00010\u00180\u00180\u0017X\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u001a\u001a\u00020\u001bX\u0082\u000e¢\u0006\u0002\n\u0000R\u0014\u0010\u001c\u001a\b\u0012\u0004\u0012\u00020\u001e0\u001dX\u0082\u0004¢\u0006\u0002\n\u0000R\u001c\u0010\u001f\u001a\u0010\u0012\f\u0012\n \u0019*\u0004\u0018\u00010 0 0\u0017X\u0082\u0004¢\u0006\u0002\n\u0000R\u0010\u0010!\u001a\u0004\u0018\u00010\"X\u0082\u000e¢\u0006\u0002\n\u0000R\u0014\u0010#\u001a\b\u0012\u0004\u0012\u00020$0\u001dX\u0082\u0004¢\u0006\u0002\n\u0000R\u0014\u0010%\u001a\b\u0012\u0004\u0012\u00020&0\u0017X\u0082\u0004¢\u0006\u0002\n\u0000\u0082\u0002\u0004\n\u0002\b\u0019¨\u00068"}, d2 = {"Lcn/mucang/android/jiakaoyi/teachingk2/collect/v2/TeachVerifyActivity;", "Lcn/mucang/android/jiakaoyi/framework/base/ui/BaseViewBindingActivity;", "Lcn/mucang/android/jiakaoyi/teachingk2/lib/databinding/ActivityTeachVerifyBinding;", "()V", "errorCallback", "Lcn/mucang/android/jiakaoyi/teachingk2/exe/TeachErrorCallback;", "examEventCallback", "Lcn/mucang/android/jiakaoyi/engine/callback/ExamEventCallback;", "examResultCallback", "cn/mucang/android/jiakaoyi/teachingk2/collect/v2/TeachVerifyActivity$examResultCallback$1", "Lcn/mucang/android/jiakaoyi/teachingk2/collect/v2/TeachVerifyActivity$examResultCallback$1;", "layer", "Lcn/mucang/android/jiakaoyi/hpmap/view/layer/CollectPathLayer;", "layers", "", "Lcn/mucang/android/jiakaoyi/hpmap/view/layer/LineLayer;", "loadingDialog", "Lcn/mucang/android/jiakaoyi/framework/base/dialog/JLoadingDialog;", "manager", "Lcn/mucang/android/jiakaoyi/engine/init/EngineManager;", "mapRender", "Lcn/mucang/android/jiakaoyi/mapcollect/render/MapRender;", "stateCallback", "Lcn/mucang/android/jiakaoyi/framework/listeners/Callback;", "Lcn/mucang/android/jiakaoyi/engine/init/EngineState;", "kotlin.jvm.PlatformType", "subStep", "", "subStepObserver", "Landroidx/lifecycle/Observer;", "Lcn/mucang/android/jiakaoyi/hpmap/collision/k2/events/SubStepEvent;", "teachCallback", "Lcn/mucang/android/jiakaoyi/teachingk2/form/FormModel;", "tipDialog", "Lcn/mucang/android/jiakaoyi/teachingk2/collect/v2/TeachPictureDialog;", "traceObserver", "Lcn/mucang/android/jiakaoyi/teachingk2/traceerror/CarTraceSideData;", "variableObserver", "Lcn/mucang/android/jiakaoyi/teachingk2/elements/handlers/NormalHandler$NormalLine;", "getStatName", "", "getTeachData", "", "teachData", "Ljava/util/HashMap;", "Lcn/mucang/android/jiakaoyi/engine/model/Step;", "Lcn/mucang/android/jiakaoyi/teachingk2/data/TeachModel;", "Lkotlin/collections/HashMap;", "boundaryData", "", "(Ljava/util/HashMap;Ljava/util/HashMap;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "init", "onDestroy", "onPause", "onResume", "Companion", "TeachingK2_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
public final class TeachVerifyActivity extends BaseViewBindingActivity<ActivityTeachVerifyBinding> {
    public static final a q = new a(null);
    private int c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private MapRender f6772d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private JLoadingDialog f6773e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private cn.mucang.android.jiakaoyi.engine.init.a f6774f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private TeachPictureDialog f6775g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private cn.mucang.android.jiakaoyi.hpmap.view.p.d f6776h;
    private final List<cn.mucang.android.jiakaoyi.hpmap.view.p.i> b = new ArrayList();
    private final b i = new b();
    private final cn.mucang.android.jiakaoyi.engine.f.a j = new cn.mucang.android.jiakaoyi.engine.f.a() { // from class: cn.mucang.android.jiakaoyi.teachingk2.collect.v2.d2
        @Override // cn.mucang.android.jiakaoyi.engine.f.a
        public final void onStep(cn.mucang.android.jiakaoyi.engine.processor.exam.step.b bVar, cn.mucang.android.jiakaoyi.engine.processor.exam.step.c cVar) {
            TeachVerifyActivity.s(this.f6802a, bVar, cVar);
        }
    };
    private final cn.mucang.android.jiakaoyi.framework.h.b<EngineState> k = new cn.mucang.android.jiakaoyi.framework.h.b() { // from class: cn.mucang.android.jiakaoyi.teachingk2.collect.v2.c2
        @Override // cn.mucang.android.jiakaoyi.framework.h.b
        public final void callback(Object obj) {
            TeachVerifyActivity.E(this.f6797a, (EngineState) obj);
        }
    };
    private final cn.mucang.android.jiakaoyi.framework.h.b<FormModel> l = new cn.mucang.android.jiakaoyi.framework.h.b() { // from class: cn.mucang.android.jiakaoyi.teachingk2.collect.v2.h2
        @Override // cn.mucang.android.jiakaoyi.framework.h.b
        public final void callback(Object obj) {
            TeachVerifyActivity.G(this.f6822a, (FormModel) obj);
        }
    };
    private final cn.mucang.android.jiakaoyi.teachingk2.exe.k m = new cn.mucang.android.jiakaoyi.teachingk2.exe.k() { // from class: cn.mucang.android.jiakaoyi.teachingk2.collect.v2.g2
        @Override // cn.mucang.android.jiakaoyi.teachingk2.exe.k
        public final void a(TeachModel teachModel, ErrorModel errorModel) {
            TeachVerifyActivity.r(teachModel, errorModel);
        }
    };
    private final androidx.lifecycle.a0<cn.mucang.android.jiakaoyi.teachingk2.traceerror.a> n = new androidx.lifecycle.a0() { // from class: cn.mucang.android.jiakaoyi.teachingk2.collect.v2.e2
        @Override // androidx.lifecycle.a0
        public final void onChanged(Object obj) {
            TeachVerifyActivity.I(this.f6807a, (cn.mucang.android.jiakaoyi.teachingk2.traceerror.a) obj);
        }
    };
    private final androidx.lifecycle.a0<SubStepEvent> o = new androidx.lifecycle.a0() { // from class: cn.mucang.android.jiakaoyi.teachingk2.collect.v2.j2
        @Override // androidx.lifecycle.a0
        public final void onChanged(Object obj) {
            TeachVerifyActivity.F(this.f6837a, (SubStepEvent) obj);
        }
    };
    private final cn.mucang.android.jiakaoyi.framework.h.b<cn.mucang.android.jiakaoyi.teachingk2.elements.handlers.r.a> p = new cn.mucang.android.jiakaoyi.framework.h.b() { // from class: cn.mucang.android.jiakaoyi.teachingk2.collect.v2.i2
        @Override // cn.mucang.android.jiakaoyi.framework.h.b
        public final void callback(Object obj) {
            TeachVerifyActivity.J(this.f6832a, (cn.mucang.android.jiakaoyi.teachingk2.elements.handlers.r.a) obj);
        }
    };

    @Metadata(d1 = {"\u0000\u0018\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\b\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J\u0010\u0010\u0003\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u0006H\u0007¨\u0006\u0007"}, d2 = {"Lcn/mucang/android/jiakaoyi/teachingk2/collect/v2/TeachVerifyActivity$Companion;", "", "()V", "launch", "", "context", "Landroid/content/Context;", "TeachingK2_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
    public static final class a {
        private a() {
        }

        public /* synthetic */ a(kotlin.jvm.internal.o oVar) {
            this();
        }

        public final void a(Context context) {
            kotlin.jvm.internal.r.e(context, "context");
            ActivityUtils.c(context, new Intent(context, (Class<?>) TeachVerifyActivity.class));
        }
    }

    @Metadata(d1 = {"\u0000\u001f\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000*\u0001\u0000\b\n\u0018\u00002\u00020\u0001J\u0010\u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u0005H\u0016J\u0012\u0010\u0006\u001a\u00020\u00032\b\u0010\u0007\u001a\u0004\u0018\u00010\bH\u0016¨\u0006\t"}, d2 = {"cn/mucang/android/jiakaoyi/teachingk2/collect/v2/TeachVerifyActivity$examResultCallback$1", "Lcn/mucang/android/jiakaoyi/engine/callback/ExamResultCallback;", "onOneError", "", "deduct", "Lcn/mucang/android/jiakaoyi/engine/model/DeductInfo;", "onResult", SpeechUtility.TAG_RESOURCE_RESULT, "Lcn/mucang/android/jiakaoyi/engine/processor/exam/ExamResult;", "TeachingK2_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
    public static final class b implements cn.mucang.android.jiakaoyi.engine.f.b {
        b() {
        }

        @Override // cn.mucang.android.jiakaoyi.engine.f.b
        public void onOneError(cn.mucang.android.jiakaoyi.engine.model.a deduct) {
            kotlin.jvm.internal.r.e(deduct, "deduct");
        }

        @Override // cn.mucang.android.jiakaoyi.engine.f.b
        public void onResult(cn.mucang.android.jiakaoyi.engine.processor.exam.f fVar) {
        }
    }

    /* JADX INFO: renamed from: cn.mucang.android.jiakaoyi.teachingk2.collect.v2.TeachVerifyActivity$init$2, reason: invalid class name */
    @Metadata(d1 = {"\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\u008a@"}, d2 = {"<anonymous>", "", "Lkotlinx/coroutines/CoroutineScope;"}, k = 3, mv = {1, 5, 1}, xi = 48)
    @DebugMetadata(c = "cn.mucang.android.jiakaoyi.teachingk2.collect.v2.TeachVerifyActivity$init$2", f = "TeachVerifyActivity.kt", l = {147}, m = "invokeSuspend")
    static final class AnonymousClass2 extends SuspendLambda implements Function2<kotlinx.coroutines.i0, Continuation<? super kotlin.v>, Object> {
        Object L$0;
        Object L$1;
        int label;

        AnonymousClass2(Continuation<? super AnonymousClass2> continuation) {
            super(2, continuation);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Continuation<kotlin.v> create(Object obj, Continuation<?> continuation) {
            return TeachVerifyActivity.this.new AnonymousClass2(continuation);
        }

        @Override // kotlin.jvm.functions.Function2
        public final Object invoke(kotlinx.coroutines.i0 i0Var, Continuation<? super kotlin.v> continuation) {
            return ((AnonymousClass2) create(i0Var, continuation)).invokeSuspend(kotlin.v.f15822a);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) throws Throwable {
            HashMap map;
            HashMap map2;
            Object objD = kotlin.coroutines.intrinsics.b.d();
            int i = this.label;
            if (i == 0) {
                kotlin.k.b(obj);
                map = new HashMap();
                HashMap map3 = new HashMap();
                TeachVerifyActivity teachVerifyActivity = TeachVerifyActivity.this;
                this.L$0 = map;
                this.L$1 = map3;
                this.label = 1;
                if (teachVerifyActivity.t(map, map3, this) == objD) {
                    return objD;
                }
                map2 = map3;
            } else {
                if (i != 1) {
                    throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                }
                HashMap map4 = (HashMap) this.L$1;
                map = (HashMap) this.L$0;
                kotlin.k.b(obj);
                map2 = map4;
            }
            HashMap map5 = map;
            JLoadingDialog jLoadingDialog = TeachVerifyActivity.this.f6773e;
            if (jLoadingDialog != null) {
                DialogExtensionKt.b(jLoadingDialog);
            }
            if (map5.isEmpty()) {
                cn.mucang.android.core.utils.u.h("教学数据为空");
                TeachVerifyActivity.this.finish();
                return kotlin.v.f15822a;
            }
            TeachVerifyActivity.this.f6774f = AppUtils.b() ? new f.a.a.c.a.creator.f(String.valueOf(ExamSiteUtil.e(0L)), TeachVerifyActivity.this.i, TeachVerifyActivity.this.j, TeachVerifyActivity.this.k, TeachVerifyActivity.this.l, TeachVerifyActivity.this.m, map5, map2) : new cn.mucang.android.jiakaoyi.teachingk2.t0.b(String.valueOf(ExamSiteUtil.e(0L)), TeachVerifyActivity.this.i, TeachVerifyActivity.this.j, TeachVerifyActivity.this.k, TeachVerifyActivity.this.l, TeachVerifyActivity.this.m, map5, map2, 2);
            return kotlin.v.f15822a;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void E(TeachVerifyActivity this$0, EngineState state) {
        cn.mucang.android.jiakaoyi.engine.init.a aVar;
        kotlin.jvm.internal.r.e(this$0, "this$0");
        kotlin.jvm.internal.r.e(state, "state");
        if (state != EngineState.Initialed || (aVar = this$0.f6774f) == null) {
            return;
        }
        aVar.start();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void F(TeachVerifyActivity this$0, SubStepEvent subStepEvent) {
        kotlin.jvm.internal.r.e(this$0, "this$0");
        if (this$0.c != subStepEvent.getSubStep()) {
            this$0.c = subStepEvent.getSubStep();
            Iterator<T> it = this$0.b.iterator();
            while (it.hasNext()) {
                this$0.g().mapView.u.Q((cn.mucang.android.jiakaoyi.hpmap.view.p.i) it.next());
            }
            this$0.b.clear();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void G(final TeachVerifyActivity this$0, FormModel model) {
        kotlin.jvm.internal.r.e(this$0, "this$0");
        kotlin.jvm.internal.r.e(model, "model");
        if (model instanceof VoiceModel) {
            TtsManager.r(((VoiceModel) model).getPlayText(), TtsGrade.Teach);
            return;
        }
        if (model instanceof PictureModel) {
            if (this$0.f6775g == null) {
                TeachPictureDialog teachPictureDialog = new TeachPictureDialog(this$0);
                this$0.f6775g = teachPictureDialog;
                if (teachPictureDialog != null) {
                    teachPictureDialog.setOnDismissListener(new DialogInterface.OnDismissListener() { // from class: cn.mucang.android.jiakaoyi.teachingk2.collect.v2.f2
                        @Override // android.content.DialogInterface.OnDismissListener
                        public final void onDismiss(DialogInterface dialogInterface) {
                            TeachVerifyActivity.H(this.f6812a, dialogInterface);
                        }
                    });
                }
            }
            TeachPictureDialog teachPictureDialog2 = this$0.f6775g;
            if (teachPictureDialog2 == null) {
                return;
            }
            String str = ((PictureModel) model).imageUrl;
            kotlin.jvm.internal.r.d(str, "model.imageUrl");
            String playText = model.tm.getPlayText();
            kotlin.jvm.internal.r.d(playText, "model.tm.playText");
            teachPictureDialog2.e(str, playText, this$0);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void H(TeachVerifyActivity this$0, DialogInterface dialogInterface) {
        kotlin.jvm.internal.r.e(this$0, "this$0");
        this$0.f6775g = null;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void I(TeachVerifyActivity this$0, cn.mucang.android.jiakaoyi.teachingk2.traceerror.a aVar) {
        kotlin.jvm.internal.r.e(this$0, "this$0");
        this$0.g().mapView.u.Q(this$0.f6776h);
        this$0.f6776h = new cn.mucang.android.jiakaoyi.hpmap.view.p.d(this$0.g().mapView, aVar.f5937a, 15.0f, -16711936);
        this$0.g().mapView.u.g(this$0.f6776h);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void J(TeachVerifyActivity this$0, cn.mucang.android.jiakaoyi.teachingk2.elements.handlers.r.a aVar) {
        kotlin.jvm.internal.r.e(this$0, "this$0");
        cn.mucang.android.jiakaoyi.hpmap.view.p.i iVar = new cn.mucang.android.jiakaoyi.hpmap.view.p.i(this$0.g().mapView, aVar.f7039a, aVar.b, new cn.mucang.android.jiakaoyi.hpmap.view.p.b.a(15.0f, -65536));
        this$0.b.add(iVar);
        this$0.g().mapView.u.g(iVar);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void r(TeachModel teachModel, ErrorModel errorModel) {
        StringBuilder sb = new StringBuilder();
        sb.append("教学验收触发纠错:");
        sb.append((Object) teachModel.teachModelId);
        sb.append(',');
        FormModel formModel = errorModel.errorForm;
        VoiceModel voiceModel = formModel instanceof VoiceModel ? (VoiceModel) formModel : null;
        sb.append((Object) (voiceModel != null ? voiceModel.voice : null));
        cn.mucang.android.jiakaoyi.framework.log.f.o(sb.toString());
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void s(TeachVerifyActivity this$0, cn.mucang.android.jiakaoyi.engine.processor.exam.step.b bVar, cn.mucang.android.jiakaoyi.engine.processor.exam.step.c cVar) {
        kotlin.jvm.internal.r.e(this$0, "this$0");
        if (bVar.j()) {
            this$0.c = 0;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final Object t(HashMap<Step, List<TeachModel>> map, HashMap<Step, Set<String>> map2, Continuation<? super kotlin.v> continuation) {
        Object objC = kotlinx.coroutines.f.c(kotlinx.coroutines.w0.b(), new TeachVerifyActivity$getTeachData$2(map, map2, null), continuation);
        return objC == kotlin.coroutines.intrinsics.b.d() ? objC : kotlin.v.f15822a;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void u(TeachVerifyActivity this$0, View view) {
        kotlin.jvm.internal.r.e(this$0, "this$0");
        this$0.finish();
    }

    @Override // cn.mucang.android.core.config.t
    public String getStatName() {
        return "教学验证";
    }

    @Override // cn.mucang.android.jiakaoyi.framework.base.ui.BaseViewBindingActivity
    protected void init() {
        TeachConfig.l(true);
        g().backIv.setOnClickListener(new View.OnClickListener() { // from class: cn.mucang.android.jiakaoyi.teachingk2.collect.v2.k2
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                TeachVerifyActivity.u(this.f6841a, view);
            }
        });
        MapView mapView = g().mapView;
        kotlin.jvm.internal.r.d(mapView, "viewBinding.mapView");
        this.f6772d = new MapRender(this, mapView, false, null, 8, null);
        JLoadingDialog jLoadingDialog = new JLoadingDialog(this);
        this.f6773e = jLoadingDialog;
        if (jLoadingDialog != null) {
            jLoadingDialog.b("正在加载数据");
        }
        kotlinx.coroutines.g.b(androidx.lifecycle.s.a(this), null, null, new AnonymousClass2(null), 3, null);
        LiveBus.d(cn.mucang.android.jiakaoyi.teachingk2.traceerror.a.class).h(this, this.n);
        LiveBus.d(SubStepEvent.class).h(this, this.o);
        Tiger.j(this.p, cn.mucang.android.jiakaoyi.teachingk2.elements.handlers.r.a.class);
    }

    @Override // cn.mucang.android.core.config.n, androidx.appcompat.app.d, androidx.fragment.app.d, android.app.Activity
    protected void onDestroy() {
        super.onDestroy();
        Tiger.l(this.p, cn.mucang.android.jiakaoyi.teachingk2.elements.handlers.r.a.class);
        TeachConfig.l(false);
        MapRender mapRender = this.f6772d;
        if (mapRender != null) {
            mapRender.d();
        }
        cn.mucang.android.jiakaoyi.engine.init.a aVar = this.f6774f;
        if (aVar != null) {
            aVar.stop();
        }
        cn.mucang.android.jiakaoyi.engine.init.a aVar2 = this.f6774f;
        if (aVar2 == null) {
            return;
        }
        aVar2.destroy();
    }

    @Override // cn.mucang.android.core.config.n, androidx.fragment.app.d, android.app.Activity
    protected void onPause() {
        super.onPause();
        MapRender mapRender = this.f6772d;
        if (mapRender == null) {
            return;
        }
        mapRender.k();
    }

    @Override // cn.mucang.android.core.config.n, androidx.fragment.app.d, android.app.Activity
    protected void onResume() {
        super.onResume();
        MapRender mapRender = this.f6772d;
        if (mapRender == null) {
            return;
        }
        mapRender.l();
    }
}
