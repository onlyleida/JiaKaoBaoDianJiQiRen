package cn.mucang.android.jiakaoyi.k3setting.p003route.detail;

import android.content.Context;
import android.content.Intent;
import android.os.Bundle;
import android.view.View;
import androidx.exifinterface.media.ExifInterface;
import androidx.fragment.app.FragmentManager;
import androidx.lifecycle.a0;
import androidx.lifecycle.j0;
import androidx.lifecycle.m0;
import cn.mucang.android.core.utils.u;
import cn.mucang.android.jiakaoyi.framework.base.model.LoadingState;
import cn.mucang.android.jiakaoyi.framework.base.ui.BaseActivity;
import cn.mucang.android.jiakaoyi.framework.utils.ActivityUtils;
import cn.mucang.android.jiakaoyi.k3setting.R;
import cn.mucang.android.jiakaoyi.k3setting.databinding.RouteDetailActivityBinding;
import cn.mucang.android.jiakaoyi.k3setting.order.viewmodel.K3RouteStepViewModel;
import cn.mucang.jiakaoyi.uilib.model.ExamSiteModel;
import cn.mucang.jiakaoyi.uilib.model.LocalRoute;
import cn.mucang.jiakaoyi.uilib.utils.ExamSiteUtil;
import java.io.Serializable;
import java.lang.reflect.InvocationTargetException;
import kotlin.Lazy;
import kotlin.Metadata;
import kotlin.i;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.o;
import kotlin.jvm.internal.r;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000J\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\u0018\u0000 \u001d2\u00020\u00012\u00020\u0002:\u0001\u001dB\u0005¢\u0006\u0002\u0010\u0003J%\u0010\u0011\u001a\u0002H\u0012\"\b\b\u0000\u0010\u0012*\u00020\u00132\f\u0010\u0014\u001a\b\u0012\u0004\u0012\u0002H\u00120\u0015H\u0016¢\u0006\u0002\u0010\u0016J\b\u0010\u0017\u001a\u00020\u0018H\u0016J\u0012\u0010\u0019\u001a\u00020\u001a2\b\u0010\u001b\u001a\u0004\u0018\u00010\u001cH\u0014R\u001b\u0010\u0004\u001a\u00020\u00058BX\u0082\u0084\u0002¢\u0006\f\n\u0004\b\b\u0010\t\u001a\u0004\b\u0006\u0010\u0007R\u001d\u0010\n\u001a\u0004\u0018\u00010\u000b8BX\u0082\u0084\u0002¢\u0006\f\n\u0004\b\u000e\u0010\t\u001a\u0004\b\f\u0010\rR\u000e\u0010\u000f\u001a\u00020\u0010X\u0082.¢\u0006\u0002\n\u0000¨\u0006\u001e"}, d2 = {"Lcn/mucang/android/jiakaoyi/k3setting/route/detail/RouteDetailActivity;", "Lcn/mucang/android/jiakaoyi/framework/base/ui/BaseActivity;", "Landroidx/lifecycle/ViewModelProvider$Factory;", "()V", "examSite", "Lcn/mucang/jiakaoyi/uilib/model/ExamSiteModel;", "getExamSite", "()Lcn/mucang/jiakaoyi/uilib/model/ExamSiteModel;", "examSite$delegate", "Lkotlin/Lazy;", "route", "Lcn/mucang/jiakaoyi/uilib/model/LocalRoute;", "getRoute", "()Lcn/mucang/jiakaoyi/uilib/model/LocalRoute;", "route$delegate", "viewBinding", "Lcn/mucang/android/jiakaoyi/k3setting/databinding/RouteDetailActivityBinding;", "create", ExifInterface.GPS_DIRECTION_TRUE, "Landroidx/lifecycle/ViewModel;", "modelClass", "Ljava/lang/Class;", "(Ljava/lang/Class;)Landroidx/lifecycle/ViewModel;", "getStatName", "", "onCreate", "", "savedInstanceState", "Landroid/os/Bundle;", "Companion", "k3setting_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
public final class RouteDetailActivity extends BaseActivity implements m0.b {

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public static final a f4492d = new a(null);

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private RouteDetailActivityBinding f4493a;
    private final Lazy b = i.b(new Function0<LocalRoute>() { // from class: cn.mucang.android.jiakaoyi.k3setting.route.detail.RouteDetailActivity$route$2
        {
            super(0);
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // kotlin.jvm.functions.Function0
        public final LocalRoute invoke() {
            Serializable serializableExtra = this.this$0.getIntent().getSerializableExtra("key_route");
            if (serializableExtra instanceof LocalRoute) {
                return (LocalRoute) serializableExtra;
            }
            return null;
        }
    });
    private final Lazy c = i.b(new Function0<ExamSiteModel>() { // from class: cn.mucang.android.jiakaoyi.k3setting.route.detail.RouteDetailActivity$examSite$2
        {
            super(0);
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // kotlin.jvm.functions.Function0
        public final ExamSiteModel invoke() {
            Intent intent = this.this$0.getIntent();
            Serializable serializableExtra = intent == null ? null : intent.getSerializableExtra("key_exam_site");
            ExamSiteModel examSiteModel = serializableExtra instanceof ExamSiteModel ? (ExamSiteModel) serializableExtra : null;
            return examSiteModel == null ? new ExamSiteModel() : examSiteModel;
        }
    });

    @Metadata(d1 = {"\u0000,\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\b\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J\u0018\u0010\u0005\u001a\u00020\u00062\u0006\u0010\u0007\u001a\u00020\b2\u0006\u0010\t\u001a\u00020\nH\u0007J\u0018\u0010\u000b\u001a\u00020\u00062\u0006\u0010\u0007\u001a\u00020\b2\u0006\u0010\f\u001a\u00020\rH\u0007R\u000e\u0010\u0003\u001a\u00020\u0004X\u0082T¢\u0006\u0002\n\u0000¨\u0006\u000e"}, d2 = {"Lcn/mucang/android/jiakaoyi/k3setting/route/detail/RouteDetailActivity$Companion;", "", "()V", "KEY_ROUTE", "", "launchForAdd", "", "context", "Landroid/content/Context;", "examSite", "Lcn/mucang/jiakaoyi/uilib/model/ExamSiteModel;", "launchForPreview", "route", "Lcn/mucang/jiakaoyi/uilib/model/LocalRoute;", "k3setting_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
    public static final class a {
        private a() {
        }

        public /* synthetic */ a(o oVar) {
            this();
        }

        public final void a(Context context, ExamSiteModel examSite) {
            r.e(context, "context");
            r.e(examSite, "examSite");
            Intent intent = new Intent(context, (Class<?>) RouteDetailActivity.class);
            intent.putExtra("key_exam_site", examSite);
            ActivityUtils.c(context, intent);
        }

        public final void b(Context context, LocalRoute route) {
            r.e(context, "context");
            r.e(route, "route");
            Intent intent = new Intent(context, (Class<?>) RouteDetailActivity.class);
            intent.putExtra("key_route", route);
            ActivityUtils.c(context, intent);
        }
    }

    @Metadata(k = 3, mv = {1, 5, 1}, xi = 48)
    public /* synthetic */ class b {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public static final /* synthetic */ int[] f4494a;

        static {
            int[] iArr = new int[LoadingState.values().length];
            iArr[LoadingState.Loading.ordinal()] = 1;
            iArr[LoadingState.Fail.ordinal()] = 2;
            iArr[LoadingState.Success.ordinal()] = 3;
            f4494a = iArr;
        }
    }

    private final ExamSiteModel g() {
        return (ExamSiteModel) this.c.getValue();
    }

    private final LocalRoute h() {
        return (LocalRoute) this.b.getValue();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void l(RouteDetailActivity this$0, View view) {
        r.e(this$0, "this$0");
        this$0.finish();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void m(RouteMapViewModel viewModel, RouteDetailActivity this$0, View view) {
        r.e(viewModel, "$viewModel");
        r.e(this$0, "this$0");
        FragmentManager supportFragmentManager = this$0.getSupportFragmentManager();
        r.d(supportFragmentManager, "supportFragmentManager");
        viewModel.n(supportFragmentManager);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void n(RouteDetailActivity this$0, LoadingState loadingState) {
        r.e(this$0, "this$0");
        int i = loadingState == null ? -1 : b.f4494a[loadingState.ordinal()];
        if (i == 1) {
            RouteDetailActivityBinding routeDetailActivityBinding = this$0.f4493a;
            if (routeDetailActivityBinding != null) {
                routeDetailActivityBinding.progressBar.setVisibility(0);
                return;
            } else {
                r.u("viewBinding");
                throw null;
            }
        }
        if (i == 2) {
            RouteDetailActivityBinding routeDetailActivityBinding2 = this$0.f4493a;
            if (routeDetailActivityBinding2 == null) {
                r.u("viewBinding");
                throw null;
            }
            routeDetailActivityBinding2.progressBar.setVisibility(8);
            u.h(loadingState.getMsg());
            return;
        }
        if (i != 3) {
            return;
        }
        RouteDetailActivityBinding routeDetailActivityBinding3 = this$0.f4493a;
        if (routeDetailActivityBinding3 == null) {
            r.u("viewBinding");
            throw null;
        }
        routeDetailActivityBinding3.progressBar.setVisibility(8);
        u.h(loadingState.getMsg());
        this$0.finish();
    }

    @Override // androidx.lifecycle.m0.b
    public <T extends j0> T create(Class<T> modelClass) throws IllegalAccessException, InstantiationException, InvocationTargetException {
        r.e(modelClass, "modelClass");
        T tNewInstance = modelClass.getConstructor(ExamSiteModel.class, LocalRoute.class).newInstance(g(), h());
        r.d(tNewInstance, "modelClass.getConstructo…Instance(examSite, route)");
        return tNewInstance;
    }

    @Override // cn.mucang.android.core.config.t
    public String getStatName() {
        return "路线采集";
    }

    @Override // cn.mucang.android.jiakaoyi.framework.base.ui.BaseActivity, cn.mucang.android.core.config.n, androidx.fragment.app.d, androidx.activity.ComponentActivity, androidx.core.app.f, android.app.Activity
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        RouteDetailActivityBinding routeDetailActivityBindingInflate = RouteDetailActivityBinding.inflate(getLayoutInflater());
        r.d(routeDetailActivityBindingInflate, "inflate(layoutInflater)");
        this.f4493a = routeDetailActivityBindingInflate;
        if (routeDetailActivityBindingInflate == null) {
            r.u("viewBinding");
            throw null;
        }
        setContentView(routeDetailActivityBindingInflate.getRoot());
        RouteDetailActivityBinding routeDetailActivityBinding = this.f4493a;
        if (routeDetailActivityBinding == null) {
            r.u("viewBinding");
            throw null;
        }
        routeDetailActivityBinding.titleLayout.backIv.setOnClickListener(new View.OnClickListener() { // from class: cn.mucang.android.jiakaoyi.k3setting.route.detail.c
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                RouteDetailActivity.l(this.f4506a, view);
            }
        });
        j0 j0VarA = new m0(this, this).a(RouteMapViewModel.class);
        r.d(j0VarA, "ViewModelProvider(this, …MapViewModel::class.java)");
        final RouteMapViewModel routeMapViewModel = (RouteMapViewModel) j0VarA;
        if (h() != null) {
            RouteDetailActivityBinding routeDetailActivityBinding2 = this.f4493a;
            if (routeDetailActivityBinding2 == null) {
                r.u("viewBinding");
                throw null;
            }
            routeDetailActivityBinding2.titleLayout.titleTv.setText("预览路线");
            RouteDetailActivityBinding routeDetailActivityBinding3 = this.f4493a;
            if (routeDetailActivityBinding3 == null) {
                r.u("viewBinding");
                throw null;
            }
            routeDetailActivityBinding3.titleLayout.actionTv.setVisibility(8);
            androidx.fragment.app.u uVarM = getSupportFragmentManager().m();
            uVarM.r(R.id.contentLayout, new RoutePreviewFragment());
            uVarM.j();
        } else {
            RouteDetailActivityBinding routeDetailActivityBinding4 = this.f4493a;
            if (routeDetailActivityBinding4 == null) {
                r.u("viewBinding");
                throw null;
            }
            routeDetailActivityBinding4.titleLayout.titleTv.setText("采集路线");
            RouteDetailActivityBinding routeDetailActivityBinding5 = this.f4493a;
            if (routeDetailActivityBinding5 == null) {
                r.u("viewBinding");
                throw null;
            }
            routeDetailActivityBinding5.titleLayout.actionTv.setVisibility(0);
            RouteDetailActivityBinding routeDetailActivityBinding6 = this.f4493a;
            if (routeDetailActivityBinding6 == null) {
                r.u("viewBinding");
                throw null;
            }
            routeDetailActivityBinding6.titleLayout.actionTv.setText("保存");
            RouteDetailActivityBinding routeDetailActivityBinding7 = this.f4493a;
            if (routeDetailActivityBinding7 == null) {
                r.u("viewBinding");
                throw null;
            }
            routeDetailActivityBinding7.titleLayout.actionTv.setOnClickListener(new View.OnClickListener() { // from class: cn.mucang.android.jiakaoyi.k3setting.route.detail.d
                @Override // android.view.View.OnClickListener
                public final void onClick(View view) {
                    RouteDetailActivity.m(routeMapViewModel, this, view);
                }
            });
            routeMapViewModel.g().h(this, new a0() { // from class: cn.mucang.android.jiakaoyi.k3setting.route.detail.b
                @Override // androidx.lifecycle.a0
                public final void onChanged(Object obj) {
                    RouteDetailActivity.n(this.f4505a, (LoadingState) obj);
                }
            });
            androidx.fragment.app.u uVarM2 = getSupportFragmentManager().m();
            uVarM2.r(R.id.contentLayout, new RouteDetailFragment());
            uVarM2.j();
        }
        ExamSiteModel examSiteModelD = ExamSiteUtil.d();
        if (examSiteModelD == null) {
            return;
        }
        j0 j0VarA2 = new m0(this).a(K3RouteStepViewModel.class);
        r.d(j0VarA2, "ViewModelProvider(this).…tepViewModel::class.java)");
        K3RouteStepViewModel.m((K3RouteStepViewModel) j0VarA2, examSiteModelD.examSiteId, 0, 2, null);
    }
}
