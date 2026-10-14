package cn.mucang.android.jiakaoyi.k3setting.p003route.edit;

import android.content.Context;
import android.content.Intent;
import android.os.Bundle;
import android.view.View;
import android.widget.TextView;
import androidx.exifinterface.media.ExifInterface;
import androidx.fragment.app.Fragment;
import androidx.fragment.app.FragmentManager;
import androidx.fragment.app.p;
import androidx.lifecycle.a0;
import androidx.lifecycle.j0;
import androidx.lifecycle.m0;
import androidx.lifecycle.z;
import cn.mucang.android.core.widget.CommonViewPager;
import cn.mucang.android.core.widget.StateLayout;
import cn.mucang.android.jiakaoyi.framework.base.dialog.JLoadingDialog;
import cn.mucang.android.jiakaoyi.framework.base.model.LoadingState;
import cn.mucang.android.jiakaoyi.framework.base.ui.BaseActivity;
import cn.mucang.android.jiakaoyi.framework.utils.ActivityUtils;
import cn.mucang.android.jiakaoyi.k3setting.databinding.RouteEditBinding;
import cn.mucang.android.jiakaoyi.k3setting.order.viewmodel.K3RouteStepViewModel;
import cn.mucang.android.jiakaoyi.k3setting.teach.K3TeachSettingViewModel;
import cn.mucang.jiakaoyi.uilib.model.ExamSiteModel;
import cn.mucang.jiakaoyi.uilib.model.LocalRoute;
import cn.mucang.jiakaoyi.uilib.model.OnlineRoute;
import cn.mucang.jiakaoyi.uilib.utils.ExamSiteUtil;
import java.io.Serializable;
import java.lang.reflect.InvocationTargetException;
import java.util.List;
import kotlin.Lazy;
import kotlin.Metadata;
import kotlin.collections.u;
import kotlin.i;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.o;
import kotlin.jvm.internal.r;
import kotlin.v;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000x\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0005\u0018\u0000 12\u00020\u00012\u00020\u0002:\u000212B\u0005¢\u0006\u0002\u0010\u0003J\u0010\u0010 \u001a\u00020!2\u0006\u0010\"\u001a\u00020\u0005H\u0002J%\u0010#\u001a\u0002H$\"\b\b\u0000\u0010$*\u00020%2\f\u0010&\u001a\b\u0012\u0004\u0012\u0002H$0'H\u0016¢\u0006\u0002\u0010(J\b\u0010)\u001a\u00020*H\u0016J\b\u0010+\u001a\u00020!H\u0002J\u0012\u0010,\u001a\u00020!2\b\u0010-\u001a\u0004\u0018\u00010.H\u0014J\b\u0010/\u001a\u00020!H\u0014J\b\u00100\u001a\u00020!H\u0002R\u0010\u0010\u0004\u001a\u0004\u0018\u00010\u0005X\u0082\u000e¢\u0006\u0002\n\u0000R\u001b\u0010\u0006\u001a\u00020\u00078BX\u0082\u0084\u0002¢\u0006\f\n\u0004\b\n\u0010\u000b\u001a\u0004\b\b\u0010\tR\u0010\u0010\f\u001a\u0004\u0018\u00010\rX\u0082\u000e¢\u0006\u0002\n\u0000R\u0014\u0010\u000e\u001a\u00020\u000f8BX\u0082\u0004¢\u0006\u0006\u001a\u0004\b\u0010\u0010\u0011R\u0014\u0010\u0012\u001a\u00020\u00138BX\u0082\u0004¢\u0006\u0006\u001a\u0004\b\u0014\u0010\u0015R\u0016\u0010\u0016\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010\u00180\u0017X\u0082\u0004¢\u0006\u0002\n\u0000R\u0016\u0010\u0019\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010\u00180\u0017X\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u001a\u001a\u00020\u001bX\u0082.¢\u0006\u0002\n\u0000R\u000e\u0010\u001c\u001a\u00020\u001dX\u0082.¢\u0006\u0002\n\u0000R\u0010\u0010\u001e\u001a\u0004\u0018\u00010\u001fX\u0082\u000e¢\u0006\u0002\n\u0000¨\u00063"}, d2 = {"Lcn/mucang/android/jiakaoyi/k3setting/route/edit/RouteEditActivity;", "Lcn/mucang/android/jiakaoyi/framework/base/ui/BaseActivity;", "Landroidx/lifecycle/ViewModelProvider$Factory;", "()V", "currentTab", "Landroid/view/View;", "examSite", "Lcn/mucang/jiakaoyi/uilib/model/ExamSiteModel;", "getExamSite", "()Lcn/mucang/jiakaoyi/uilib/model/ExamSiteModel;", "examSite$delegate", "Lkotlin/Lazy;", "jLoadingDialog", "Lcn/mucang/android/jiakaoyi/framework/base/dialog/JLoadingDialog;", "k3RouteStepViewModel", "Lcn/mucang/android/jiakaoyi/k3setting/order/viewmodel/K3RouteStepViewModel;", "getK3RouteStepViewModel", "()Lcn/mucang/android/jiakaoyi/k3setting/order/viewmodel/K3RouteStepViewModel;", "k3TeachSettingViewModel", "Lcn/mucang/android/jiakaoyi/k3setting/teach/K3TeachSettingViewModel;", "getK3TeachSettingViewModel", "()Lcn/mucang/android/jiakaoyi/k3setting/teach/K3TeachSettingViewModel;", "loadingObserver", "Landroidx/lifecycle/Observer;", "Lcn/mucang/android/jiakaoyi/framework/base/model/LoadingState;", "pageLoadingObserver", "route", "Lcn/mucang/jiakaoyi/uilib/model/LocalRoute;", "viewBinding", "Lcn/mucang/android/jiakaoyi/k3setting/databinding/RouteEditBinding;", "viewModel", "Lcn/mucang/android/jiakaoyi/k3setting/route/edit/RouteEditViewModel;", "changeIndicator", "", "view", "create", ExifInterface.GPS_DIRECTION_TRUE, "Landroidx/lifecycle/ViewModel;", "modelClass", "Ljava/lang/Class;", "(Ljava/lang/Class;)Landroidx/lifecycle/ViewModel;", "getStatName", "", "initViews", "onCreate", "savedInstanceState", "Landroid/os/Bundle;", "onDestroy", "save", "Companion", "RouteEditFragmentAdapter", "k3setting_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
public final class RouteEditActivity extends BaseActivity implements m0.b {
    public static final a i = new a(null);
    private RouteEditBinding b;
    private LocalRoute c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private View f4533d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private RouteEditViewModel f4534e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private JLoadingDialog f4535f;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final Lazy f4532a = i.b(new Function0<ExamSiteModel>() { // from class: cn.mucang.android.jiakaoyi.k3setting.route.edit.RouteEditActivity$examSite$2
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

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private final a0<LoadingState> f4536g = new a0() { // from class: cn.mucang.android.jiakaoyi.k3setting.route.edit.c
        @Override // androidx.lifecycle.a0
        public final void onChanged(Object obj) {
            RouteEditActivity.w(this.f4562a, (LoadingState) obj);
        }
    };

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private final a0<LoadingState> f4537h = new a0() { // from class: cn.mucang.android.jiakaoyi.k3setting.route.edit.e
        @Override // androidx.lifecycle.a0
        public final void onChanged(Object obj) {
            RouteEditActivity.y(this.f4571a, (LoadingState) obj);
        }
    };

    @Metadata(d1 = {"\u0000*\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\b\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J \u0010\u0005\u001a\u00020\u00062\u0006\u0010\u0007\u001a\u00020\b2\u0006\u0010\t\u001a\u00020\n2\u0006\u0010\u000b\u001a\u00020\fH\u0007R\u000e\u0010\u0003\u001a\u00020\u0004X\u0082T¢\u0006\u0002\n\u0000¨\u0006\r"}, d2 = {"Lcn/mucang/android/jiakaoyi/k3setting/route/edit/RouteEditActivity$Companion;", "", "()V", "KEY_EDIT_ROUTE", "", "launch", "", "context", "Landroid/content/Context;", "route", "Lcn/mucang/jiakaoyi/uilib/model/LocalRoute;", "examSite", "Lcn/mucang/jiakaoyi/uilib/model/ExamSiteModel;", "k3setting_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
    public static final class a {
        private a() {
        }

        public /* synthetic */ a(o oVar) {
            this();
        }

        public final void a(Context context, LocalRoute route, ExamSiteModel examSite) {
            r.e(context, "context");
            r.e(route, "route");
            r.e(examSite, "examSite");
            Intent intent = new Intent(context, (Class<?>) RouteEditActivity.class);
            intent.putExtra("key.editRoute", route);
            intent.putExtra("key_exam_site", examSite);
            ActivityUtils.c(context, intent);
        }
    }

    @Metadata(d1 = {"\u0000$\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010!\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0002\b\u0003\u0018\u00002\u00020\u0001B\r\u0012\u0006\u0010\u0002\u001a\u00020\u0003¢\u0006\u0002\u0010\u0004J\b\u0010\b\u001a\u00020\tH\u0016J\u0010\u0010\n\u001a\u00020\u00072\u0006\u0010\u000b\u001a\u00020\tH\u0016R\u0014\u0010\u0005\u001a\b\u0012\u0004\u0012\u00020\u00070\u0006X\u0082\u0004¢\u0006\u0002\n\u0000¨\u0006\f"}, d2 = {"Lcn/mucang/android/jiakaoyi/k3setting/route/edit/RouteEditActivity$RouteEditFragmentAdapter;", "Landroidx/fragment/app/FragmentPagerAdapter;", "fragmentManager", "Landroidx/fragment/app/FragmentManager;", "(Landroidx/fragment/app/FragmentManager;)V", "fragments", "", "Landroidx/fragment/app/Fragment;", "getCount", "", "getItem", "position", "k3setting_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
    public static final class b extends p {

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        private final List<Fragment> f4538f;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public b(FragmentManager fragmentManager) {
            super(fragmentManager, 1);
            r.e(fragmentManager, "fragmentManager");
            this.f4538f = u.p(new RouteEditMapFragment(), new RouteEditOrderFragment());
        }

        @Override // androidx.viewpager.widget.PagerAdapter
        public int getCount() {
            return this.f4538f.size();
        }

        @Override // androidx.fragment.app.p
        public Fragment getItem(int position) {
            return this.f4538f.get(position);
        }
    }

    @Metadata(k = 3, mv = {1, 5, 1}, xi = 48)
    public /* synthetic */ class c {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public static final /* synthetic */ int[] f4539a;

        static {
            int[] iArr = new int[LoadingState.values().length];
            iArr[LoadingState.Loading.ordinal()] = 1;
            iArr[LoadingState.Fail.ordinal()] = 2;
            iArr[LoadingState.Success.ordinal()] = 3;
            f4539a = iArr;
        }
    }

    private final void g(View view) {
        View view2 = this.f4533d;
        if (view2 != null) {
            view2.setSelected(false);
        }
        androidx.constraintlayout.widget.c cVar = new androidx.constraintlayout.widget.c();
        RouteEditBinding routeEditBinding = this.b;
        if (routeEditBinding == null) {
            r.u("viewBinding");
            throw null;
        }
        cVar.m(routeEditBinding.rootCl);
        RouteEditBinding routeEditBinding2 = this.b;
        if (routeEditBinding2 == null) {
            r.u("viewBinding");
            throw null;
        }
        cVar.p(routeEditBinding2.indicator.getId(), 1, view.getId(), 1);
        RouteEditBinding routeEditBinding3 = this.b;
        if (routeEditBinding3 == null) {
            r.u("viewBinding");
            throw null;
        }
        cVar.p(routeEditBinding3.indicator.getId(), 2, view.getId(), 2);
        RouteEditBinding routeEditBinding4 = this.b;
        if (routeEditBinding4 == null) {
            r.u("viewBinding");
            throw null;
        }
        cVar.i(routeEditBinding4.rootCl);
        view.setSelected(true);
        this.f4533d = view;
    }

    private final ExamSiteModel h() {
        return (ExamSiteModel) this.f4532a.getValue();
    }

    private final K3RouteStepViewModel i() {
        j0 j0VarA = new m0(this).a(K3RouteStepViewModel.class);
        r.d(j0VarA, "ViewModelProvider(this).…tepViewModel::class.java)");
        return (K3RouteStepViewModel) j0VarA;
    }

    private final K3TeachSettingViewModel j() {
        j0 j0VarA = new m0(this, this).a(K3TeachSettingViewModel.class);
        r.d(j0VarA, "ViewModelProvider(this, …ingViewModel::class.java)");
        return (K3TeachSettingViewModel) j0VarA;
    }

    private final void k() {
        RouteEditBinding routeEditBinding = this.b;
        if (routeEditBinding == null) {
            r.u("viewBinding");
            throw null;
        }
        CommonViewPager commonViewPager = routeEditBinding.viewPager;
        FragmentManager supportFragmentManager = getSupportFragmentManager();
        r.d(supportFragmentManager, "supportFragmentManager");
        commonViewPager.setAdapter(new b(supportFragmentManager));
        RouteEditBinding routeEditBinding2 = this.b;
        if (routeEditBinding2 == null) {
            r.u("viewBinding");
            throw null;
        }
        routeEditBinding2.viewPager.setScrollable(false);
        RouteEditBinding routeEditBinding3 = this.b;
        if (routeEditBinding3 == null) {
            r.u("viewBinding");
            throw null;
        }
        routeEditBinding3.backIv.setOnClickListener(new View.OnClickListener() { // from class: cn.mucang.android.jiakaoyi.k3setting.route.edit.f
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                RouteEditActivity.l(this.f4573a, view);
            }
        });
        RouteEditBinding routeEditBinding4 = this.b;
        if (routeEditBinding4 == null) {
            r.u("viewBinding");
            throw null;
        }
        routeEditBinding4.saveTv.setOnClickListener(new View.OnClickListener() { // from class: cn.mucang.android.jiakaoyi.k3setting.route.edit.d
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                RouteEditActivity.m(this.f4567a, view);
            }
        });
        RouteEditBinding routeEditBinding5 = this.b;
        if (routeEditBinding5 == null) {
            r.u("viewBinding");
            throw null;
        }
        routeEditBinding5.mapModeTv.setOnClickListener(new View.OnClickListener() { // from class: cn.mucang.android.jiakaoyi.k3setting.route.edit.a
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                RouteEditActivity.n(this.f4558a, view);
            }
        });
        RouteEditBinding routeEditBinding6 = this.b;
        if (routeEditBinding6 != null) {
            routeEditBinding6.orderModeTv.setOnClickListener(new View.OnClickListener() { // from class: cn.mucang.android.jiakaoyi.k3setting.route.edit.b
                @Override // android.view.View.OnClickListener
                public final void onClick(View view) {
                    RouteEditActivity.o(this.f4560a, view);
                }
            });
        } else {
            r.u("viewBinding");
            throw null;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void l(RouteEditActivity this$0, View view) {
        r.e(this$0, "this$0");
        this$0.finish();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void m(RouteEditActivity this$0, View view) {
        r.e(this$0, "this$0");
        this$0.z();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void n(RouteEditActivity this$0, View it) {
        r.e(this$0, "this$0");
        RouteEditBinding routeEditBinding = this$0.b;
        if (routeEditBinding == null) {
            r.u("viewBinding");
            throw null;
        }
        routeEditBinding.viewPager.setCurrentItem(0, true);
        r.d(it, "it");
        this$0.g(it);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void o(RouteEditActivity this$0, View it) {
        r.e(this$0, "this$0");
        RouteEditBinding routeEditBinding = this$0.b;
        if (routeEditBinding == null) {
            r.u("viewBinding");
            throw null;
        }
        routeEditBinding.viewPager.setCurrentItem(1, true);
        r.d(it, "it");
        this$0.g(it);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void w(RouteEditActivity this$0, LoadingState loadingState) {
        r.e(this$0, "this$0");
        int i2 = loadingState == null ? -1 : c.f4539a[loadingState.ordinal()];
        if (i2 == 1) {
            JLoadingDialog jLoadingDialog = new JLoadingDialog(this$0);
            this$0.f4535f = jLoadingDialog;
            if (jLoadingDialog == null) {
                return;
            }
            jLoadingDialog.b("加载中");
            return;
        }
        if (i2 == 2 || i2 == 3) {
            JLoadingDialog jLoadingDialog2 = this$0.f4535f;
            if (jLoadingDialog2 != null) {
                jLoadingDialog2.dismiss();
            }
            cn.mucang.android.core.utils.u.h(loadingState.getMsg());
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void x(RouteEditActivity this$0) {
        r.e(this$0, "this$0");
        K3RouteStepViewModel.m(this$0.i(), this$0.h().examSiteId, 0, 2, null);
        RouteEditViewModel routeEditViewModel = this$0.f4534e;
        if (routeEditViewModel != null) {
            LocalRoute localRoute = this$0.c;
            if (localRoute == null) {
                r.u("route");
                throw null;
            }
            routeEditViewModel.n(localRoute);
        }
        this$0.j().s();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void y(RouteEditActivity this$0, LoadingState loadingState) {
        z<OnlineRoute> zVarM;
        r.e(this$0, "this$0");
        int i2 = loadingState == null ? -1 : c.f4539a[loadingState.ordinal()];
        if (i2 == 1) {
            cn.mucang.android.core.utils.u.h(loadingState.getMsg());
            return;
        }
        if (i2 == 2) {
            RouteEditBinding routeEditBinding = this$0.b;
            if (routeEditBinding == null) {
                r.u("viewBinding");
                throw null;
            }
            routeEditBinding.stateLayout.e();
            cn.mucang.android.core.utils.u.h(loadingState.getMsg());
            return;
        }
        if (i2 != 3) {
            return;
        }
        RouteEditViewModel routeEditViewModel = this$0.f4534e;
        if (((routeEditViewModel == null || (zVarM = routeEditViewModel.m()) == null) ? null : zVarM.e()) != null && this$0.j().q().e() != null && this$0.i().k().e() != null) {
            RouteEditBinding routeEditBinding2 = this$0.b;
            if (routeEditBinding2 == null) {
                r.u("viewBinding");
                throw null;
            }
            routeEditBinding2.stateLayout.c();
        }
        cn.mucang.android.core.utils.u.h(loadingState.getMsg());
    }

    private final void z() {
        RouteEditViewModel routeEditViewModel = this.f4534e;
        if (routeEditViewModel == null) {
            return;
        }
        routeEditViewModel.v();
    }

    @Override // androidx.lifecycle.m0.b
    public <T extends j0> T create(Class<T> modelClass) throws IllegalAccessException, InstantiationException, InvocationTargetException {
        r.e(modelClass, "modelClass");
        T tNewInstance = modelClass.getConstructor(ExamSiteModel.class).newInstance(ExamSiteUtil.d());
        r.d(tNewInstance, "modelClass.getConstructo…va).newInstance(examSite)");
        return tNewInstance;
    }

    @Override // cn.mucang.android.core.config.t
    public String getStatName() {
        return "路线编辑";
    }

    @Override // cn.mucang.android.jiakaoyi.framework.base.ui.BaseActivity, cn.mucang.android.core.config.n, androidx.fragment.app.d, androidx.activity.ComponentActivity, androidx.core.app.f, android.app.Activity
    protected void onCreate(Bundle savedInstanceState) {
        z<LoadingState> zVarL;
        z<LoadingState> zVarI;
        super.onCreate(savedInstanceState);
        Serializable serializableExtra = getIntent().getSerializableExtra("key.editRoute");
        LocalRoute localRoute = serializableExtra instanceof LocalRoute ? (LocalRoute) serializableExtra : null;
        if (localRoute == null) {
            localRoute = new LocalRoute();
        }
        this.c = localRoute;
        RouteEditBinding routeEditBindingInflate = RouteEditBinding.inflate(getLayoutInflater());
        r.d(routeEditBindingInflate, "inflate(layoutInflater)");
        this.b = routeEditBindingInflate;
        if (routeEditBindingInflate == null) {
            r.u("viewBinding");
            throw null;
        }
        setContentView(routeEditBindingInflate.getRoot());
        j0 j0VarA = new m0(this).a(ExamSiteRouteConfigModel.class);
        r.d(j0VarA, "ViewModelProvider(this).…eConfigModel::class.java)");
        ExamSiteRouteConfigModel examSiteRouteConfigModel = (ExamSiteRouteConfigModel) j0VarA;
        long j = h().examSiteId;
        LocalRoute localRoute2 = this.c;
        if (localRoute2 == null) {
            r.u("route");
            throw null;
        }
        String areaCode = localRoute2.getAreaCode();
        if (areaCode == null) {
            areaCode = "";
        }
        examSiteRouteConfigModel.a(j, areaCode);
        k();
        j().s();
        RouteEditViewModel routeEditViewModel = (RouteEditViewModel) new m0(this).a(RouteEditViewModel.class);
        LocalRoute localRoute3 = this.c;
        if (localRoute3 == null) {
            r.u("route");
            throw null;
        }
        routeEditViewModel.n(localRoute3);
        v vVar = v.f15822a;
        this.f4534e = routeEditViewModel;
        if (routeEditViewModel != null) {
            routeEditViewModel.u();
        }
        RouteEditViewModel routeEditViewModel2 = this.f4534e;
        if (routeEditViewModel2 != null && (zVarI = routeEditViewModel2.i()) != null) {
            zVarI.h(this, this.f4536g);
        }
        RouteEditViewModel routeEditViewModel3 = this.f4534e;
        if (routeEditViewModel3 != null && (zVarL = routeEditViewModel3.l()) != null) {
            zVarL.h(this, this.f4537h);
        }
        j().a().h(this, this.f4536g);
        j().b().h(this, this.f4537h);
        i().b().h(this, this.f4537h);
        K3RouteStepViewModel.m(i(), h().examSiteId, 0, 2, null);
        RouteEditBinding routeEditBinding = this.b;
        if (routeEditBinding == null) {
            r.u("viewBinding");
            throw null;
        }
        routeEditBinding.stateLayout.setOnRefreshListener(new StateLayout.c() { // from class: cn.mucang.android.jiakaoyi.k3setting.route.edit.g
            @Override // cn.mucang.android.core.widget.StateLayout.c
            public final void a() {
                RouteEditActivity.x(this.f4575a);
            }
        });
        RouteEditBinding routeEditBinding2 = this.b;
        if (routeEditBinding2 == null) {
            r.u("viewBinding");
            throw null;
        }
        TextView textView = routeEditBinding2.mapModeTv;
        this.f4533d = textView;
        if (textView == null) {
            return;
        }
        textView.setSelected(true);
    }

    @Override // cn.mucang.android.core.config.n, androidx.appcompat.app.d, androidx.fragment.app.d, android.app.Activity
    protected void onDestroy() {
        super.onDestroy();
        RouteEditViewModel routeEditViewModel = this.f4534e;
        if (routeEditViewModel == null) {
            return;
        }
        routeEditViewModel.B();
    }
}
