package cn.mucang.android.jiakaoyi.teachingk2.acceptance;

import android.annotation.SuppressLint;
import android.content.Context;
import android.content.Intent;
import android.view.View;
import cn.mucang.android.jiakaoyi.engine.model.KeMu;
import cn.mucang.android.jiakaoyi.framework.base.dialog.CountDownDialog;
import cn.mucang.android.jiakaoyi.framework.base.dialog.DialogExtensionKt;
import cn.mucang.android.jiakaoyi.framework.base.ui.BaseViewBindingActivity;
import cn.mucang.android.jiakaoyi.hpmap.view.MapView;
import cn.mucang.android.jiakaoyi.mapcollect.manager.map.x0;
import cn.mucang.android.jiakaoyi.mapcollect.render.MapRender;
import cn.mucang.android.jiakaoyi.teachingk2.lib.databinding.ActivityAcceptanceMapBinding;
import cn.mucang.android.jiakaoyi.teachingk2.lib.databinding.RobotStatusBarBinding;
import cn.mucang.jiakaoyi.uilib.utils.ExamSiteUtil;
import com.tencent.tauth.AuthActivity;
import java.io.Serializable;
import kotlin.Lazy;
import kotlin.Metadata;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Ref$ObjectRef;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000T\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0010\t\n\u0002\b\u0004\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0006\u0018\u0000 #2\b\u0012\u0004\u0012\u00020\u00020\u00012\u00020\u0003:\u0001#B\u0005¢\u0006\u0002\u0010\u0004J\"\u0010\u0016\u001a\u00020\u00172\b\u0010\u0018\u001a\u0004\u0018\u00010\u00192\u000e\u0010\u001a\u001a\n\u0012\u0004\u0012\u00020\u001c\u0018\u00010\u001bH\u0016J\b\u0010\u001d\u001a\u00020\u001eH\u0016J\b\u0010\u001f\u001a\u00020\u0017H\u0015J\b\u0010 \u001a\u00020\u0017H\u0014J\b\u0010!\u001a\u00020\u0017H\u0014J\b\u0010\"\u001a\u00020\u0017H\u0014R\u000e\u0010\u0005\u001a\u00020\u0006X\u0082.¢\u0006\u0002\n\u0000R\u0014\u0010\u0007\u001a\b\u0012\u0002\b\u0003\u0018\u00010\bX\u0082\u000e¢\u0006\u0002\n\u0000R\u0010\u0010\t\u001a\u0004\u0018\u00010\nX\u0082\u000e¢\u0006\u0002\n\u0000R\u001b\u0010\u000b\u001a\u00020\f8BX\u0082\u0084\u0002¢\u0006\f\n\u0004\b\u000f\u0010\u0010\u001a\u0004\b\r\u0010\u000eR\u001b\u0010\u0011\u001a\u00020\u00128BX\u0082\u0084\u0002¢\u0006\f\n\u0004\b\u0015\u0010\u0010\u001a\u0004\b\u0013\u0010\u0014¨\u0006$"}, d2 = {"Lcn/mucang/android/jiakaoyi/teachingk2/acceptance/AcceptanceMapActivity;", "Lcn/mucang/android/jiakaoyi/framework/base/ui/BaseViewBindingActivity;", "Lcn/mucang/android/jiakaoyi/teachingk2/lib/databinding/ActivityAcceptanceMapBinding;", "Lcn/mucang/android/jiakaoyi/hpmap/collision/k2/stepsync/StepTriggerAsk$AskCallback;", "()V", "extra", "Lcn/mucang/android/jiakaoyi/teachingk2/acceptance/AcceptanceChildModel;", "impl", "Lcn/mucang/android/jiakaoyi/teachingk2/acceptance/AcceptanceFunction;", "mapRender", "Lcn/mucang/android/jiakaoyi/mapcollect/render/MapRender;", "module", "Lcn/mucang/android/jiakaoyi/teachingk2/acceptance/AcceptanceModule;", "getModule", "()Lcn/mucang/android/jiakaoyi/teachingk2/acceptance/AcceptanceModule;", "module$delegate", "Lkotlin/Lazy;", "workOrderId", "", "getWorkOrderId", "()J", "workOrderId$delegate", "callback", "", "boundary", "Lcn/mucang/android/jiakaoyi/hpmap/collision/k2/BoundDetector;", AuthActivity.ACTION_KEY, "Lcn/mucang/android/jiakaoyi/framework/listeners/Callback;", "", "getStatName", "", "init", "onDestroy", "onPause", "onResume", "Companion", "TeachingK2_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
public final class AcceptanceMapActivity extends BaseViewBindingActivity<ActivityAcceptanceMapBinding> implements cn.mucang.android.jiakaoyi.hpmap.a.a.j.b.InterfaceC0107b {

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public static final a f6003f = new a(null);
    private final Lazy b = kotlin.i.b(new Function0<AcceptanceModule>() { // from class: cn.mucang.android.jiakaoyi.teachingk2.acceptance.AcceptanceMapActivity$module$2
        {
            super(0);
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // kotlin.jvm.functions.Function0
        public final AcceptanceModule invoke() {
            Intent intent = this.this$0.getIntent();
            Serializable serializableExtra = intent == null ? null : intent.getSerializableExtra("key.module");
            AcceptanceModule acceptanceModule = serializableExtra instanceof AcceptanceModule ? (AcceptanceModule) serializableExtra : null;
            return acceptanceModule == null ? AcceptanceModule.K2Teach : acceptanceModule;
        }
    });
    private final Lazy c = kotlin.i.b(new Function0<Long>() { // from class: cn.mucang.android.jiakaoyi.teachingk2.acceptance.AcceptanceMapActivity$workOrderId$2
        {
            super(0);
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // kotlin.jvm.functions.Function0
        public final Long invoke() {
            Intent intent = this.this$0.getIntent();
            return Long.valueOf(intent != null ? intent.getLongExtra("key.workOrderId", 0L) : 0L);
        }
    });

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private MapRender f6004d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private AcceptanceFunction<?> f6005e;

    @Metadata(d1 = {"\u00002\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\t\n\u0000\n\u0002\u0018\u0002\n\u0000\b\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J*\u0010\u0007\u001a\u00020\b2\u0006\u0010\t\u001a\u00020\n2\u0006\u0010\u000b\u001a\u00020\f2\u0006\u0010\r\u001a\u00020\u000e2\b\u0010\u000f\u001a\u0004\u0018\u00010\u0010H\u0007R\u000e\u0010\u0003\u001a\u00020\u0004X\u0082T¢\u0006\u0002\n\u0000R\u000e\u0010\u0005\u001a\u00020\u0004X\u0082T¢\u0006\u0002\n\u0000R\u000e\u0010\u0006\u001a\u00020\u0004X\u0082T¢\u0006\u0002\n\u0000¨\u0006\u0011"}, d2 = {"Lcn/mucang/android/jiakaoyi/teachingk2/acceptance/AcceptanceMapActivity$Companion;", "", "()V", "keyExtra", "", "keyModule", "keyWorkOrderId", "createIntent", "Landroid/content/Intent;", "context", "Landroid/content/Context;", "mode", "Lcn/mucang/android/jiakaoyi/teachingk2/acceptance/AcceptanceModule;", "workOrderId", "", "extra", "Lcn/mucang/android/jiakaoyi/teachingk2/acceptance/AcceptanceChildModel;", "TeachingK2_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
    public static final class a {
        private a() {
        }

        public /* synthetic */ a(kotlin.jvm.internal.o oVar) {
            this();
        }

        public final Intent a(Context context, AcceptanceModule mode, long j, AcceptanceChildModel acceptanceChildModel) {
            kotlin.jvm.internal.r.e(context, "context");
            kotlin.jvm.internal.r.e(mode, "mode");
            Intent intentPutExtra = new Intent(context, (Class<?>) AcceptanceMapActivity.class).putExtra("key.module", mode).putExtra("key.workOrderId", j).putExtra("key.extra", acceptanceChildModel);
            kotlin.jvm.internal.r.d(intentPutExtra, "Intent(context, Acceptan…putExtra(keyExtra, extra)");
            return intentPutExtra;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void j(cn.mucang.android.jiakaoyi.framework.h.b bVar, View view) {
        if (bVar == null) {
            return;
        }
        bVar.callback(Boolean.TRUE);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Multi-variable type inference failed */
    public static final void k(Ref$ObjectRef dialog, Boolean bool) {
        kotlin.jvm.internal.r.e(dialog, "$dialog");
        CountDownDialog countDownDialog = (CountDownDialog) dialog.element;
        if (countDownDialog == null) {
            return;
        }
        DialogExtensionKt.b(countDownDialog);
    }

    private final AcceptanceModule l() {
        return (AcceptanceModule) this.b.getValue();
    }

    private final long m() {
        return ((Number) this.c.getValue()).longValue();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void n(AcceptanceMapActivity this$0, View view) {
        kotlin.jvm.internal.r.e(this$0, "this$0");
        this$0.finish();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void o(AcceptanceMapActivity this$0, View view) {
        kotlin.jvm.internal.r.e(this$0, "this$0");
        AcceptanceFunction<?> acceptanceFunction = this$0.f6005e;
        if (acceptanceFunction == null) {
            return;
        }
        acceptanceFunction.c(this$0, this$0.m());
    }

    /* JADX WARN: Type inference failed for: r1v0, types: [T, cn.mucang.android.jiakaoyi.framework.base.dialog.CountDownDialog] */
    @Override // cn.mucang.android.jiakaoyi.hpmap.a.a.j.b.InterfaceC0107b
    public void d(cn.mucang.android.jiakaoyi.hpmap.a.a.b bVar, final cn.mucang.android.jiakaoyi.framework.h.b<Boolean> bVar2) {
        if (bVar == null) {
            return;
        }
        final Ref$ObjectRef ref$ObjectRef = new Ref$ObjectRef();
        ?? countDownDialog = new CountDownDialog(this, new CountDownDialog.DialogParams(10, "秒后自动关闭", "是否需要切换到" + ((Object) bVar.s().zhStepName) + "项目?", "取消", null, "切换", new View.OnClickListener() { // from class: cn.mucang.android.jiakaoyi.teachingk2.acceptance.u
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                AcceptanceMapActivity.j(bVar2, view);
            }
        }, false, null, false, new cn.mucang.android.jiakaoyi.framework.h.b() { // from class: cn.mucang.android.jiakaoyi.teachingk2.acceptance.r
            @Override // cn.mucang.android.jiakaoyi.framework.h.b
            public final void callback(Object obj) {
                AcceptanceMapActivity.k(ref$ObjectRef, (Boolean) obj);
            }
        }, 896, null));
        ref$ObjectRef.element = countDownDialog;
        ((CountDownDialog) countDownDialog).show();
    }

    @Override // cn.mucang.android.core.config.t
    public String getStatName() {
        return "验收地图";
    }

    @Override // cn.mucang.android.jiakaoyi.framework.base.ui.BaseViewBindingActivity
    @SuppressLint({"SetTextI18n"})
    protected void init() {
        Serializable serializableExtra = getIntent().getSerializableExtra("key.extra");
        AcceptanceChildModel acceptanceChildModel = serializableExtra instanceof AcceptanceChildModel ? (AcceptanceChildModel) serializableExtra : null;
        if (acceptanceChildModel == null) {
            cn.mucang.android.core.utils.u.h("数据错误");
            finish();
            return;
        }
        AcceptanceFunction<?> acceptanceFunctionA = AcceptanceManager.a(l(), acceptanceChildModel);
        this.f6005e = acceptanceFunctionA;
        if (acceptanceFunctionA == null) {
            cn.mucang.android.core.utils.u.h("数据错误");
            finish();
            return;
        }
        cn.mucang.android.jiakaoyi.engine.trace.w.r.setTraceType(7);
        cn.mucang.android.jiakaoyi.engine.trace.w.r.posMapCode = ExamSiteUtil.i(ExamSiteUtil.e(0L), KeMu.K2);
        RobotStatusBarBinding robotStatusBarBinding = g().statusBar;
        kotlin.jvm.internal.r.d(robotStatusBarBinding, "viewBinding.statusBar");
        AcceptanceManager.c(robotStatusBarBinding, androidx.lifecycle.s.a(this), true);
        g().backIv.setOnClickListener(new View.OnClickListener() { // from class: cn.mucang.android.jiakaoyi.teachingk2.acceptance.s
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                AcceptanceMapActivity.n(this.f6058a, view);
            }
        });
        g().submitTv.setOnClickListener(new View.OnClickListener() { // from class: cn.mucang.android.jiakaoyi.teachingk2.acceptance.t
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                AcceptanceMapActivity.o(this.f6059a, view);
            }
        });
        x0.f5139a.a(String.valueOf(ExamSiteUtil.e(0L)));
        MapView mapView = g().mapView;
        kotlin.jvm.internal.r.d(mapView, "viewBinding.mapView");
        this.f6004d = new MapRender(this, mapView, false, null, 8, null);
        AcceptanceFunction<?> acceptanceFunction = this.f6005e;
        if (acceptanceFunction != null) {
            acceptanceFunction.n(this, m());
        }
        cn.mucang.android.jiakaoyi.hpmap.a.a.j.b.g(2).t(this);
    }

    @Override // cn.mucang.android.core.config.n, androidx.appcompat.app.d, androidx.fragment.app.d, android.app.Activity
    protected void onDestroy() {
        super.onDestroy();
        AcceptanceFunction<?> acceptanceFunction = this.f6005e;
        if (acceptanceFunction != null) {
            acceptanceFunction.d();
        }
        MapRender mapRender = this.f6004d;
        if (mapRender != null) {
            mapRender.d();
        }
        cn.mucang.android.jiakaoyi.hpmap.a.a.j.b.g(2).t(null);
    }

    @Override // cn.mucang.android.core.config.n, androidx.fragment.app.d, android.app.Activity
    protected void onPause() {
        super.onPause();
        MapRender mapRender = this.f6004d;
        if (mapRender == null) {
            return;
        }
        mapRender.k();
    }

    @Override // cn.mucang.android.core.config.n, androidx.fragment.app.d, android.app.Activity
    protected void onResume() {
        super.onResume();
        MapRender mapRender = this.f6004d;
        if (mapRender == null) {
            return;
        }
        mapRender.l();
    }
}
