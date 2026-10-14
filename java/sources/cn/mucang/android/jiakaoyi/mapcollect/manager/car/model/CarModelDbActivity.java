package cn.mucang.android.jiakaoyi.mapcollect.manager.car.model;

import android.content.Context;
import android.content.Intent;
import android.view.View;
import android.widget.TextView;
import androidx.fragment.app.FragmentManager;
import androidx.lifecycle.a0;
import androidx.lifecycle.j0;
import androidx.recyclerview.widget.LinearLayoutManager;
import androidx.recyclerview.widget.RecyclerView;
import cn.mucang.android.core.widget.StateLayout;
import cn.mucang.android.jiakaoyi.framework.base.model.LoadingState;
import cn.mucang.android.jiakaoyi.framework.base.ui.BaseViewBindingActivity;
import cn.mucang.android.jiakaoyi.framework.utils.ActivityUtils;
import cn.mucang.android.jiakaoyi.mapcollect.collect.PosCollectActivity;
import cn.mucang.android.jiakaoyi.mapcollect.collect.model.HpCarMapModel;
import cn.mucang.android.jiakaoyi.mapcollect.databinding.ActivityCarModelDbBinding;
import cn.mucang.android.jiakaoyi.signal.car.SelectCarManager;
import java.util.List;
import kotlin.Metadata;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000,\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0010\u000b\n\u0002\b\u0002\u0018\u0000 \r2\b\u0012\u0004\u0012\u00020\u00020\u0001:\u0001\rB\u0005¢\u0006\u0002\u0010\u0003J\b\u0010\u0006\u001a\u00020\u0007H\u0016J\b\u0010\b\u001a\u00020\tH\u0014J\u0010\u0010\n\u001a\u00020\t2\u0006\u0010\u000b\u001a\u00020\fH\u0002R\u000e\u0010\u0004\u001a\u00020\u0005X\u0082.¢\u0006\u0002\n\u0000¨\u0006\u000e"}, d2 = {"Lcn/mucang/android/jiakaoyi/mapcollect/manager/car/model/CarModelDbActivity;", "Lcn/mucang/android/jiakaoyi/framework/base/ui/BaseViewBindingActivity;", "Lcn/mucang/android/jiakaoyi/mapcollect/databinding/ActivityCarModelDbBinding;", "()V", "viewModel", "Lcn/mucang/android/jiakaoyi/mapcollect/manager/car/model/CarModelDbViewModel;", "getStatName", "", "init", "", "loadData", "firstLoad", "", "Companion", "mapcollect_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
public final class CarModelDbActivity extends BaseViewBindingActivity<ActivityCarModelDbBinding> {
    public static final a c = new a(null);

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private static boolean f5030d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private static boolean f5031e;
    private CarModelDbViewModel b;

    @Metadata(d1 = {"\u0000*\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\u0002\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\b\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J\u000e\u0010\t\u001a\u00020\n2\u0006\u0010\u000b\u001a\u00020\fJ\u000e\u0010\r\u001a\u00020\n2\u0006\u0010\u000b\u001a\u00020\fJ\u000e\u0010\u000e\u001a\u00020\n2\u0006\u0010\u000b\u001a\u00020\fJ\u0010\u0010\u000f\u001a\u00020\n2\u0006\u0010\u000b\u001a\u00020\fH\u0002R\u000e\u0010\u0003\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010\u0005\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010\u0006\u001a\u00020\u0007X\u0082\u000e¢\u0006\u0002\n\u0000R\u000e\u0010\b\u001a\u00020\u0007X\u0082\u000e¢\u0006\u0002\n\u0000¨\u0006\u0010"}, d2 = {"Lcn/mucang/android/jiakaoyi/mapcollect/manager/car/model/CarModelDbActivity$Companion;", "", "()V", "STATUS_AGENCY", "", "STATUS_OFFICIAL", "agencyData", "", "agencyUser", "adminLaunchAgencyData", "", "context", "Landroid/content/Context;", "adminLaunchOfficialData", "agencyLaunchOfficialData", "launch", "mapcollect_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
    public static final class a {
        private a() {
        }

        public /* synthetic */ a(kotlin.jvm.internal.o oVar) {
            this();
        }

        private final void c(Context context) {
            ActivityUtils.c(context, new Intent(context, (Class<?>) CarModelDbActivity.class));
        }

        public final void a(Context context) {
            kotlin.jvm.internal.r.e(context, "context");
            CarModelDbActivity.f5030d = false;
            CarModelDbActivity.f5031e = true;
            c(context);
        }

        public final void b(Context context) {
            kotlin.jvm.internal.r.e(context, "context");
            CarModelDbActivity.f5030d = false;
            CarModelDbActivity.f5031e = false;
            c(context);
        }
    }

    @Metadata(k = 3, mv = {1, 5, 1}, xi = 48)
    public /* synthetic */ class b {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public static final /* synthetic */ int[] f5032a;

        static {
            int[] iArr = new int[LoadingState.values().length];
            iArr[LoadingState.Loading.ordinal()] = 1;
            iArr[LoadingState.Fail.ordinal()] = 2;
            f5032a = iArr;
        }
    }

    @Metadata(d1 = {"\u0000\u001f\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0002\b\u0002*\u0001\u0000\b\n\u0018\u00002\u00020\u0001J \u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u00052\u0006\u0010\u0006\u001a\u00020\u00072\u0006\u0010\b\u001a\u00020\u0007H\u0016¨\u0006\t"}, d2 = {"cn/mucang/android/jiakaoyi/mapcollect/manager/car/model/CarModelDbActivity$init$3", "Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;", "onScrolled", "", "recyclerView", "Landroidx/recyclerview/widget/RecyclerView;", "dx", "", "dy", "mapcollect_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
    public static final class c extends RecyclerView.t {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        final /* synthetic */ d f5033a;
        final /* synthetic */ CarModelDbActivity b;

        c(d dVar, CarModelDbActivity carModelDbActivity) {
            this.f5033a = dVar;
            this.b = carModelDbActivity;
        }

        @Override // androidx.recyclerview.widget.RecyclerView.t
        public void onScrolled(RecyclerView recyclerView, int dx, int dy) {
            kotlin.jvm.internal.r.e(recyclerView, "recyclerView");
            super.onScrolled(recyclerView, dx, dy);
            LinearLayoutManager linearLayoutManager = (LinearLayoutManager) recyclerView.getLayoutManager();
            if (linearLayoutManager == null || linearLayoutManager.findLastVisibleItemPosition() <= this.f5033a.getItemCount() - 2 || this.f5033a.getItemCount() <= 0) {
                return;
            }
            this.b.z(false);
        }
    }

    @Metadata(d1 = {"\u0000\u000b\n\u0000\n\u0002\u0018\u0002\n\u0000*\u0001\u0000\b\n\u0018\u00002\u00020\u0001¨\u0006\u0002"}, d2 = {"cn/mucang/android/jiakaoyi/mapcollect/manager/car/model/CarModelDbActivity$init$adapter$1", "Lcom/drakeet/multitype/MultiTypeAdapter;", "mapcollect_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
    public static final class d extends com.drakeet.multitype.f {
        d() {
            super(null, 0, null, 7, null);
            CarModelDbViewModel carModelDbViewModel = CarModelDbActivity.this.b;
            if (carModelDbViewModel == null) {
                kotlin.jvm.internal.r.u("viewModel");
                throw null;
            }
            boolean z = CarModelDbActivity.f5030d;
            boolean z2 = CarModelDbActivity.f5031e;
            FragmentManager supportFragmentManager = CarModelDbActivity.this.getSupportFragmentManager();
            kotlin.jvm.internal.r.d(supportFragmentManager, "supportFragmentManager");
            g(HpCarMapModel.class, new CarModelDbItemBinder(carModelDbViewModel, z, z2, supportFragmentManager));
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void p(CarModelDbActivity this$0, View view) {
        kotlin.jvm.internal.r.e(this$0, "this$0");
        this$0.finish();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void q(View view) {
        HpCarMapModel hpCarMapModel = new HpCarMapModel();
        hpCarMapModel.modelName = SelectCarManager.f();
        hpCarMapModel.modelCode = SelectCarManager.g();
        hpCarMapModel.isManager = true;
        PosCollectActivity.N(view.getContext(), hpCarMapModel);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void r(d adapter, CarModelDbActivity this$0, List it) {
        kotlin.jvm.internal.r.e(adapter, "$adapter");
        kotlin.jvm.internal.r.e(this$0, "this$0");
        kotlin.jvm.internal.r.d(it, "it");
        adapter.i(it);
        adapter.notifyDataSetChanged();
        if (cn.mucang.android.core.utils.g.b(it)) {
            this$0.g().stateLayout.d();
        } else {
            this$0.g().stateLayout.c();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void s(CarModelDbActivity this$0, LoadingState loadingState) {
        kotlin.jvm.internal.r.e(this$0, "this$0");
        int i = loadingState == null ? -1 : b.f5032a[loadingState.ordinal()];
        if (i == 1) {
            this$0.g().stateLayout.f();
        } else {
            if (i != 2) {
                return;
            }
            this$0.g().stateLayout.e();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void t(CarModelDbActivity this$0) {
        kotlin.jvm.internal.r.e(this$0, "this$0");
        this$0.z(true);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void z(boolean z) {
        CarModelDbViewModel carModelDbViewModel = this.b;
        if (carModelDbViewModel != null) {
            carModelDbViewModel.q(z, f5031e ? 0 : 10);
        } else {
            kotlin.jvm.internal.r.u("viewModel");
            throw null;
        }
    }

    @Override // cn.mucang.android.core.config.t
    public String getStatName() {
        return "车型数据库";
    }

    @Override // cn.mucang.android.jiakaoyi.framework.base.ui.BaseViewBindingActivity
    protected void init() {
        super.init();
        g().titleLayout.titleTv.setText(f5031e ? "代理车身数据" : "车型数据库");
        g().titleLayout.backIv.setOnClickListener(new View.OnClickListener() { // from class: cn.mucang.android.jiakaoyi.mapcollect.manager.car.model.o
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                CarModelDbActivity.p(this.f5052a, view);
            }
        });
        TextView textView = g().newCarTv;
        int i = 8;
        if (!f5030d && !f5031e) {
            i = 0;
        }
        textView.setVisibility(i);
        g().newCarTv.setOnClickListener(new View.OnClickListener() { // from class: cn.mucang.android.jiakaoyi.mapcollect.manager.car.model.l
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                CarModelDbActivity.q(view);
            }
        });
        j0 j0VarCreate = getDefaultViewModelProviderFactory().create(CarModelDbViewModel.class);
        kotlin.jvm.internal.r.d(j0VarCreate, "defaultViewModelProvider…lDbViewModel::class.java)");
        this.b = (CarModelDbViewModel) j0VarCreate;
        final d dVar = new d();
        g().recyclerView.addItemDecoration(new androidx.recyclerview.widget.d(this, 1));
        g().recyclerView.setAdapter(dVar);
        g().recyclerView.setLayoutManager(new LinearLayoutManager(this));
        g().recyclerView.addOnScrollListener(new c(dVar, this));
        CarModelDbViewModel carModelDbViewModel = this.b;
        if (carModelDbViewModel == null) {
            kotlin.jvm.internal.r.u("viewModel");
            throw null;
        }
        carModelDbViewModel.p().h(this, new a0() { // from class: cn.mucang.android.jiakaoyi.mapcollect.manager.car.model.n
            @Override // androidx.lifecycle.a0
            public final void onChanged(Object obj) {
                CarModelDbActivity.r(dVar, this, (List) obj);
            }
        });
        CarModelDbViewModel carModelDbViewModel2 = this.b;
        if (carModelDbViewModel2 == null) {
            kotlin.jvm.internal.r.u("viewModel");
            throw null;
        }
        carModelDbViewModel2.b().h(this, new a0() { // from class: cn.mucang.android.jiakaoyi.mapcollect.manager.car.model.m
            @Override // androidx.lifecycle.a0
            public final void onChanged(Object obj) {
                CarModelDbActivity.s(this.f5050a, (LoadingState) obj);
            }
        });
        g().stateLayout.setOnRefreshListener(new StateLayout.c() { // from class: cn.mucang.android.jiakaoyi.mapcollect.manager.car.model.k
            @Override // cn.mucang.android.core.widget.StateLayout.c
            public final void a() {
                CarModelDbActivity.t(this.f5048a);
            }
        });
        z(true);
    }
}
