package cn.mucang.android.jiakaoyi.teachingk2.collect;

import android.app.Activity;
import android.content.ComponentCallbacks2;
import android.content.Context;
import android.content.Intent;
import android.view.View;
import cn.mucang.android.core.config.MucangConfig;
import cn.mucang.android.jiakaoyi.engine.init.EngineState;
import cn.mucang.android.jiakaoyi.engine.model.Step;
import cn.mucang.android.jiakaoyi.framework.base.ui.BaseViewBindingActivity;
import cn.mucang.android.jiakaoyi.framework.tts.TtsManager;
import cn.mucang.android.jiakaoyi.framework.utils.ActivityUtils;
import cn.mucang.android.jiakaoyi.hpmap.view.MapView;
import cn.mucang.android.jiakaoyi.mapcollect.manager.map.x0;
import cn.mucang.android.jiakaoyi.mapcollect.render.MapRender;
import cn.mucang.android.jiakaoyi.teachingk2.collect.render.b2;
import cn.mucang.android.jiakaoyi.teachingk2.lib.databinding.ActivityTeachCollectBinding;
import cn.mucang.jiakaoyi.uilib.utils.ExamSiteUtil;
import com.iflytek.cloud.SpeechUtility;
import kotlin.Lazy;
import kotlin.Metadata;
import kotlin.jvm.functions.Function0;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000_\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0010\u000b\n\u0002\b\b*\u0001\u000b\u0018\u0000 )2\b\u0012\u0004\u0012\u00020\u00020\u0001:\u0002)*B\u0005¢\u0006\u0002\u0010\u0003J\u0010\u0010\u001b\u001a\u00020\u001c2\u0006\u0010\u001d\u001a\u00020\u001eH\u0002J\b\u0010\u001f\u001a\u0004\u0018\u00010\u0005J\b\u0010 \u001a\u00020\u0010H\u0016J\b\u0010!\u001a\u00020\u001cH\u0014J\u0006\u0010\"\u001a\u00020#J\b\u0010$\u001a\u00020\u001cH\u0014J\b\u0010%\u001a\u00020\u001cH\u0014J\b\u0010&\u001a\u00020\u001cH\u0014J\b\u0010'\u001a\u00020\u001cH\u0002J\b\u0010(\u001a\u00020\u001cH\u0002R\u0010\u0010\u0004\u001a\u0004\u0018\u00010\u0005X\u0082\u000e¢\u0006\u0002\n\u0000R\u0010\u0010\u0006\u001a\u0004\u0018\u00010\u0007X\u0082\u000e¢\u0006\u0002\n\u0000R\u000e\u0010\b\u001a\u00020\tX\u0082\u0004¢\u0006\u0002\n\u0000R\u0010\u0010\n\u001a\u00020\u000bX\u0082\u0004¢\u0006\u0004\n\u0002\u0010\fR\u0010\u0010\r\u001a\u0004\u0018\u00010\u000eX\u0082\u000e¢\u0006\u0002\n\u0000R\u001b\u0010\u000f\u001a\u00020\u00108BX\u0082\u0084\u0002¢\u0006\f\n\u0004\b\u0013\u0010\u0014\u001a\u0004\b\u0011\u0010\u0012R\u0010\u0010\u0015\u001a\u0004\u0018\u00010\u0016X\u0082\u000e¢\u0006\u0002\n\u0000R\u0010\u0010\u0017\u001a\u0004\u0018\u00010\u0010X\u0082\u000e¢\u0006\u0002\n\u0000R\u0014\u0010\u0018\u001a\b\u0012\u0004\u0012\u00020\u001a0\u0019X\u0082\u0004¢\u0006\u0002\n\u0000¨\u0006+"}, d2 = {"Lcn/mucang/android/jiakaoyi/teachingk2/collect/K2TeachCollectActivity;", "Lcn/mucang/android/jiakaoyi/framework/base/ui/BaseViewBindingActivity;", "Lcn/mucang/android/jiakaoyi/teachingk2/lib/databinding/ActivityTeachCollectBinding;", "()V", "currentStep", "Lcn/mucang/android/jiakaoyi/engine/model/Step;", "engineManager", "Lcn/mucang/android/jiakaoyi/teachingk2/collect/K2TeachingCollectEngineManager;", "examEventCallback", "Lcn/mucang/android/jiakaoyi/engine/callback/ExamEventCallback;", "examResultCallback", "cn/mucang/android/jiakaoyi/teachingk2/collect/K2TeachCollectActivity$examResultCallback$1", "Lcn/mucang/android/jiakaoyi/teachingk2/collect/K2TeachCollectActivity$examResultCallback$1;", "mapRender", "Lcn/mucang/android/jiakaoyi/mapcollect/render/MapRender;", "programmeId", "", "getProgrammeId", "()Ljava/lang/String;", "programmeId$delegate", "Lkotlin/Lazy;", "render", "Lcn/mucang/android/jiakaoyi/teachingk2/collect/render/CollectTeachRender;", "schoolId", "stateCallback", "Lcn/mucang/android/jiakaoyi/framework/listeners/Callback;", "Lcn/mucang/android/jiakaoyi/engine/init/EngineState;", "changeStepInfo", "", "stepHandler", "Lcn/mucang/android/jiakaoyi/engine/processor/exam/step/StepHandler;", "getCurrentStep", "getStatName", "init", "isEngineStart", "", "onDestroy", "onPause", "onResume", "startExam", "stopExam", "Companion", "EggTeachSync", "TeachingK2_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
public final class K2TeachCollectActivity extends BaseViewBindingActivity<ActivityTeachCollectBinding> {
    public static final a k = new a(null);
    private b2 b;
    private String c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private MapRender f6464d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private b0 f6465e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private final Lazy f6466f = kotlin.i.b(new Function0<String>() { // from class: cn.mucang.android.jiakaoyi.teachingk2.collect.K2TeachCollectActivity$programmeId$2
        {
            super(0);
        }

        @Override // kotlin.jvm.functions.Function0
        public final String invoke() {
            String stringExtra = this.this$0.getIntent().getStringExtra("key.programmeId");
            return stringExtra == null ? "" : stringExtra;
        }
    });

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private final d f6467g = new d();

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private final cn.mucang.android.jiakaoyi.engine.f.a f6468h = new cn.mucang.android.jiakaoyi.engine.f.a() { // from class: cn.mucang.android.jiakaoyi.teachingk2.collect.g
        @Override // cn.mucang.android.jiakaoyi.engine.f.a
        public final void onStep(cn.mucang.android.jiakaoyi.engine.processor.exam.step.b bVar, cn.mucang.android.jiakaoyi.engine.processor.exam.step.c cVar) {
            K2TeachCollectActivity.l(this.f6506a, bVar, cVar);
        }
    };
    private final cn.mucang.android.jiakaoyi.framework.h.b<EngineState> i = new cn.mucang.android.jiakaoyi.framework.h.b() { // from class: cn.mucang.android.jiakaoyi.teachingk2.collect.i
        @Override // cn.mucang.android.jiakaoyi.framework.h.b
        public final void callback(Object obj) {
            K2TeachCollectActivity.z(this.f6508a, (EngineState) obj);
        }
    };
    private Step j;

    @Metadata(d1 = {"\u0000 \n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\b\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J\u0018\u0010\u0005\u001a\u00020\u00062\u0006\u0010\u0007\u001a\u00020\b2\u0006\u0010\t\u001a\u00020\u0004H\u0007R\u000e\u0010\u0003\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n\u0000¨\u0006\n"}, d2 = {"Lcn/mucang/android/jiakaoyi/teachingk2/collect/K2TeachCollectActivity$Companion;", "", "()V", "KEY_PROGRAMME_ID", "", "launch", "", "context", "Landroid/content/Context;", "programmeId", "TeachingK2_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
    public static final class a {
        private a() {
        }

        public /* synthetic */ a(kotlin.jvm.internal.o oVar) {
            this();
        }

        public final void a(Context context, String programmeId) {
            kotlin.jvm.internal.r.e(context, "context");
            kotlin.jvm.internal.r.e(programmeId, "programmeId");
            if (ExamSiteUtil.e(0L) <= 0) {
                cn.mucang.android.core.utils.u.h("没有考场数据，请先设置考场");
                return;
            }
            cn.mucang.android.jiakaoyi.mapcollect.render.f fVarA = x0.f5139a.a(String.valueOf(ExamSiteUtil.e(0L)));
            if ((fVarA == null ? null : fVarA.getConverter()) == null || fVarA.getCarData() == null) {
                cn.mucang.android.core.utils.u.h("数据正在准备中，请稍后");
                return;
            }
            Intent intent = new Intent(context, (Class<?>) K2TeachCollectActivity.class);
            intent.putExtra("key.programmeId", programmeId);
            kotlin.v vVar = kotlin.v.f15822a;
            ActivityUtils.c(context, intent);
        }
    }

    @Metadata(d1 = {"\u0000\u0016\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\bf\u0018\u00002\u00020\u0001J\u0010\u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u0005H&¨\u0006\u0006"}, d2 = {"Lcn/mucang/android/jiakaoyi/teachingk2/collect/K2TeachCollectActivity$EggTeachSync;", "", "syncTeach", "", "activity", "Landroid/app/Activity;", "TeachingK2_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
    public interface b {
        void i(Activity activity);
    }

    @Metadata(k = 3, mv = {1, 5, 1}, xi = 48)
    public /* synthetic */ class c {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public static final /* synthetic */ int[] f6469a;

        static {
            int[] iArr = new int[EngineState.values().length];
            iArr[EngineState.Initialed.ordinal()] = 1;
            iArr[EngineState.Start.ordinal()] = 2;
            iArr[EngineState.None.ordinal()] = 3;
            iArr[EngineState.InitError.ordinal()] = 4;
            f6469a = iArr;
        }
    }

    @Metadata(d1 = {"\u0000\u001f\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000*\u0001\u0000\b\n\u0018\u00002\u00020\u0001J\u0010\u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u0005H\u0016J\u0010\u0010\u0006\u001a\u00020\u00032\u0006\u0010\u0007\u001a\u00020\bH\u0016¨\u0006\t"}, d2 = {"cn/mucang/android/jiakaoyi/teachingk2/collect/K2TeachCollectActivity$examResultCallback$1", "Lcn/mucang/android/jiakaoyi/engine/callback/ExamResultCallback;", "onOneError", "", "deduct", "Lcn/mucang/android/jiakaoyi/engine/model/DeductInfo;", "onResult", SpeechUtility.TAG_RESOURCE_RESULT, "Lcn/mucang/android/jiakaoyi/engine/processor/exam/ExamResult;", "TeachingK2_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
    public static final class d implements cn.mucang.android.jiakaoyi.engine.f.b {
        d() {
        }

        @Override // cn.mucang.android.jiakaoyi.engine.f.b
        public void onOneError(cn.mucang.android.jiakaoyi.engine.model.a deduct) {
            kotlin.jvm.internal.r.e(deduct, "deduct");
        }

        @Override // cn.mucang.android.jiakaoyi.engine.f.b
        public void onResult(cn.mucang.android.jiakaoyi.engine.processor.exam.f result) {
            kotlin.jvm.internal.r.e(result, "result");
            b0 b0Var = K2TeachCollectActivity.this.f6465e;
            if (b0Var == null) {
                return;
            }
            b0Var.reset();
        }
    }

    private final void A() {
        b0 b0Var = this.f6465e;
        if (b0Var != null) {
            b0Var.stop();
        }
        this.j = null;
    }

    private final void k(cn.mucang.android.jiakaoyi.engine.processor.exam.step.b bVar) {
        this.j = bVar.f3142e;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void l(K2TeachCollectActivity this$0, cn.mucang.android.jiakaoyi.engine.processor.exam.step.b stepHandler, cn.mucang.android.jiakaoyi.engine.processor.exam.step.c cVar) {
        kotlin.jvm.internal.r.e(this$0, "this$0");
        kotlin.jvm.internal.r.d(stepHandler, "stepHandler");
        this$0.k(stepHandler);
    }

    private final String n() {
        return (String) this.f6466f.getValue();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void o(K2TeachCollectActivity this$0, View view) {
        kotlin.jvm.internal.r.e(this$0, "this$0");
        this$0.finish();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void p(K2TeachCollectActivity this$0, View view) {
        kotlin.jvm.internal.r.e(this$0, "this$0");
        ComponentCallbacks2 context = MucangConfig.getContext();
        b bVar = context instanceof b ? (b) context : null;
        if (bVar == null) {
            return;
        }
        bVar.i(this$0);
    }

    public static final void w(Context context, String str) {
        k.a(context, str);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void x() {
        TtsManager.H();
    }

    private final void y() {
        b0 b0Var;
        TtsManager.H();
        b0 b0Var2 = this.f6465e;
        boolean z = false;
        if (b0Var2 != null && b0Var2.canStart()) {
            z = true;
        }
        if (!z || (b0Var = this.f6465e) == null) {
            return;
        }
        b0Var.start();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void z(K2TeachCollectActivity this$0, EngineState engineState) {
        kotlin.jvm.internal.r.e(this$0, "this$0");
        if ((engineState == null ? -1 : c.f6469a[engineState.ordinal()]) != 1) {
            return;
        }
        this$0.y();
    }

    @Override // cn.mucang.android.core.config.t
    public String getStatName() {
        return "采集教学引擎";
    }

    @Override // cn.mucang.android.jiakaoyi.framework.base.ui.BaseViewBindingActivity
    protected void init() {
        MapView mapView = g().map;
        kotlin.jvm.internal.r.d(mapView, "viewBinding.map");
        this.f6464d = new MapRender(this, mapView, false, null, 8, null);
        this.f6465e = new b0(this.f6467g, this.f6468h, this.i);
        g().closeTv.setOnClickListener(new View.OnClickListener() { // from class: cn.mucang.android.jiakaoyi.teachingk2.collect.e
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                K2TeachCollectActivity.o(this.f6496a, view);
            }
        });
        this.b = new b2(this, n(), this.c);
        g().asyncTv.setOnClickListener(new View.OnClickListener() { // from class: cn.mucang.android.jiakaoyi.teachingk2.collect.f
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                K2TeachCollectActivity.p(this.f6502a, view);
            }
        });
    }

    /* JADX INFO: renamed from: m, reason: from getter */
    public final Step getJ() {
        return this.j;
    }

    @Override // cn.mucang.android.core.config.n, androidx.appcompat.app.d, androidx.fragment.app.d, android.app.Activity
    protected void onDestroy() {
        super.onDestroy();
        A();
        b0 b0Var = this.f6465e;
        if (b0Var != null) {
            b0Var.destroy();
        }
        MapRender mapRender = this.f6464d;
        if (mapRender != null) {
            mapRender.d();
        }
        b2 b2Var = this.b;
        if (b2Var != null) {
            b2Var.r();
        }
        cn.mucang.android.jiakaoyi.hpmap.a.a.j.b.d();
        cn.mucang.android.core.utils.u.d(new Runnable() { // from class: cn.mucang.android.jiakaoyi.teachingk2.collect.h
            @Override // java.lang.Runnable
            public final void run() {
                K2TeachCollectActivity.x();
            }
        }, 200L);
        cn.mucang.android.jiakaoyi.teachingk2.autopilot.e.e(false, null);
    }

    @Override // cn.mucang.android.core.config.n, androidx.fragment.app.d, android.app.Activity
    protected void onPause() {
        super.onPause();
        MapRender mapRender = this.f6464d;
        if (mapRender == null) {
            return;
        }
        mapRender.k();
    }

    @Override // cn.mucang.android.core.config.n, androidx.fragment.app.d, android.app.Activity
    protected void onResume() {
        super.onResume();
        MapRender mapRender = this.f6464d;
        if (mapRender == null) {
            return;
        }
        mapRender.l();
    }

    public final boolean q() {
        b0 b0Var = this.f6465e;
        if (b0Var == null) {
            return false;
        }
        return b0Var.isStart();
    }
}
