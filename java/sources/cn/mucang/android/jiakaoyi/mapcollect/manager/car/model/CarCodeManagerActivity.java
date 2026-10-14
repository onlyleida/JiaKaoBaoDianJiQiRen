package cn.mucang.android.jiakaoyi.mapcollect.manager.car.model;

import android.annotation.SuppressLint;
import android.content.Context;
import android.content.Intent;
import android.view.View;
import androidx.lifecycle.a0;
import androidx.lifecycle.j0;
import androidx.lifecycle.m0;
import androidx.recyclerview.widget.LinearLayoutManager;
import androidx.recyclerview.widget.RecyclerView;
import cn.mucang.android.core.widget.StateLayout;
import cn.mucang.android.jiakaoyi.framework.base.dialog.JLoadingDialog;
import cn.mucang.android.jiakaoyi.framework.base.model.LoadingState;
import cn.mucang.android.jiakaoyi.framework.base.ui.BaseViewBindingActivity;
import cn.mucang.android.jiakaoyi.framework.utils.ActivityUtils;
import cn.mucang.android.jiakaoyi.mapcollect.collect.PosCollectActivity;
import cn.mucang.android.jiakaoyi.mapcollect.collect.model.HpCarMapModel;
import cn.mucang.android.jiakaoyi.mapcollect.databinding.ActivityCarCodeManagerBinding;
import cn.mucang.android.jiakaoyi.mapcollect.manager.car.ConfirmCarCodeDialog;
import cn.mucang.android.jiakaoyi.signal.car.CarItemModel;
import cn.mucang.android.jiakaoyi.signal.car.LocalCarModel;
import java.util.List;
import kotlin.Metadata;
import kotlin.jvm.functions.Function2;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u00002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0010\u000b\n\u0002\b\u0003\u0018\u0000 \u00102\b\u0012\u0004\u0012\u00020\u00020\u0001:\u0001\u0010B\u0005¢\u0006\u0002\u0010\u0003J\b\u0010\b\u001a\u00020\tH\u0016J\b\u0010\n\u001a\u00020\u000bH\u0015J\u0010\u0010\f\u001a\u00020\u000b2\u0006\u0010\r\u001a\u00020\u000eH\u0002J\b\u0010\u000f\u001a\u00020\u000bH\u0014R\u0010\u0010\u0004\u001a\u0004\u0018\u00010\u0005X\u0082\u000e¢\u0006\u0002\n\u0000R\u000e\u0010\u0006\u001a\u00020\u0007X\u0082.¢\u0006\u0002\n\u0000¨\u0006\u0011"}, d2 = {"Lcn/mucang/android/jiakaoyi/mapcollect/manager/car/model/CarCodeManagerActivity;", "Lcn/mucang/android/jiakaoyi/framework/base/ui/BaseViewBindingActivity;", "Lcn/mucang/android/jiakaoyi/mapcollect/databinding/ActivityCarCodeManagerBinding;", "()V", "loadingDialog", "Lcn/mucang/android/jiakaoyi/framework/base/dialog/JLoadingDialog;", "viewModel", "Lcn/mucang/android/jiakaoyi/mapcollect/manager/car/model/CarCodeViewModel;", "getStatName", "", "init", "", "loadCarData", "firstLoad", "", "onResume", "Companion", "mapcollect_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
public final class CarCodeManagerActivity extends BaseViewBindingActivity<ActivityCarCodeManagerBinding> {

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public static final a f5024d = new a(null);
    private CarCodeViewModel b;
    private JLoadingDialog c;

    @Metadata(d1 = {"\u0000\u001e\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\b\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J\u0010\u0010\u0005\u001a\u00020\u00062\u0006\u0010\u0007\u001a\u00020\bH\u0007R\u000e\u0010\u0003\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n\u0000¨\u0006\t"}, d2 = {"Lcn/mucang/android/jiakaoyi/mapcollect/manager/car/model/CarCodeManagerActivity$Companion;", "", "()V", "TAG", "", "launch", "", "context", "Landroid/content/Context;", "mapcollect_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
    public static final class a {
        private a() {
        }

        public /* synthetic */ a(kotlin.jvm.internal.o oVar) {
            this();
        }

        public final void a(Context context) {
            kotlin.jvm.internal.r.e(context, "context");
            ActivityUtils.c(context, new Intent(context, (Class<?>) CarCodeManagerActivity.class));
        }
    }

    @Metadata(k = 3, mv = {1, 5, 1}, xi = 48)
    public /* synthetic */ class b {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public static final /* synthetic */ int[] f5025a;

        static {
            int[] iArr = new int[LoadingState.values().length];
            iArr[LoadingState.Loading.ordinal()] = 1;
            iArr[LoadingState.Fail.ordinal()] = 2;
            iArr[LoadingState.Success.ordinal()] = 3;
            f5025a = iArr;
        }
    }

    @Metadata(d1 = {"\u0000\u001f\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0002\b\u0002*\u0001\u0000\b\n\u0018\u00002\u00020\u0001J \u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u00052\u0006\u0010\u0006\u001a\u00020\u00072\u0006\u0010\b\u001a\u00020\u0007H\u0016¨\u0006\t"}, d2 = {"cn/mucang/android/jiakaoyi/mapcollect/manager/car/model/CarCodeManagerActivity$init$3", "Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;", "onScrolled", "", "recyclerView", "Landroidx/recyclerview/widget/RecyclerView;", "dx", "", "dy", "mapcollect_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
    public static final class c extends RecyclerView.t {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        final /* synthetic */ d f5026a;
        final /* synthetic */ CarCodeManagerActivity b;

        c(d dVar, CarCodeManagerActivity carCodeManagerActivity) {
            this.f5026a = dVar;
            this.b = carCodeManagerActivity;
        }

        @Override // androidx.recyclerview.widget.RecyclerView.t
        public void onScrolled(RecyclerView recyclerView, int dx, int dy) {
            kotlin.jvm.internal.r.e(recyclerView, "recyclerView");
            super.onScrolled(recyclerView, dx, dy);
            LinearLayoutManager linearLayoutManager = (LinearLayoutManager) recyclerView.getLayoutManager();
            if (this.f5026a.getItemCount() <= 0 || linearLayoutManager == null || linearLayoutManager.findLastVisibleItemPosition() <= this.f5026a.getItemCount() - 2) {
                return;
            }
            this.b.x(false);
        }
    }

    @Metadata(d1 = {"\u0000\u000b\n\u0000\n\u0002\u0018\u0002\n\u0000*\u0001\u0000\b\n\u0018\u00002\u00020\u0001¨\u0006\u0002"}, d2 = {"cn/mucang/android/jiakaoyi/mapcollect/manager/car/model/CarCodeManagerActivity$init$adapter$1", "Lcom/drakeet/multitype/MultiTypeAdapter;", "mapcollect_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
    public static final class d extends com.drakeet.multitype.f {
        d() {
            super(null, 0, null, 7, null);
            CarCodeViewModel carCodeViewModel = CarCodeManagerActivity.this.b;
            if (carCodeViewModel != null) {
                g(HpCarMapModel.class, new CarCodeItemBinder(carCodeViewModel));
            } else {
                kotlin.jvm.internal.r.u("viewModel");
                throw null;
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void l(CarCodeManagerActivity this$0, View view) {
        kotlin.jvm.internal.r.e(this$0, "this$0");
        this$0.finish();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void m(CarCodeManagerActivity this$0, final View view) {
        kotlin.jvm.internal.r.e(this$0, "this$0");
        ConfirmCarCodeDialog confirmCarCodeDialog = new ConfirmCarCodeDialog();
        confirmCarCodeDialog.C(new Function2<LocalCarModel, String, kotlin.v>() { // from class: cn.mucang.android.jiakaoyi.mapcollect.manager.car.model.CarCodeManagerActivity$init$2$1$1
            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            {
                super(2);
            }

            @Override // kotlin.jvm.functions.Function2
            public /* bridge */ /* synthetic */ kotlin.v invoke(LocalCarModel localCarModel, String str) {
                invoke2(localCarModel, str);
                return kotlin.v.f15822a;
            }

            /* JADX INFO: renamed from: invoke, reason: avoid collision after fix types in other method */
            public final void invoke2(LocalCarModel realCar, String desc) {
                kotlin.jvm.internal.r.e(realCar, "realCar");
                kotlin.jvm.internal.r.e(desc, "desc");
                HpCarMapModel hpCarMapModel = new HpCarMapModel();
                hpCarMapModel.modelName = realCar.getCarDesc();
                CarItemModel config = realCar.getConfig();
                hpCarMapModel.modelCode = config == null ? null : Integer.valueOf(config.getCode()).toString();
                hpCarMapModel.isManager = false;
                hpCarMapModel.describe = desc;
                PosCollectActivity.N(view.getContext(), hpCarMapModel);
            }
        });
        confirmCarCodeDialog.show(this$0.getSupportFragmentManager(), "ConfirmCarCodeDialog");
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void n(d adapter, CarCodeManagerActivity this$0, List it) {
        kotlin.jvm.internal.r.e(adapter, "$adapter");
        kotlin.jvm.internal.r.e(this$0, "this$0");
        kotlin.jvm.internal.r.d(it, "it");
        adapter.i(it);
        adapter.notifyDataSetChanged();
        if (cn.mucang.android.core.utils.g.b(it)) {
            this$0.g().stateLayout.setVisibility(8);
            this$0.g().emptyTv.setVisibility(0);
        } else {
            this$0.g().stateLayout.setVisibility(0);
            this$0.g().emptyTv.setVisibility(8);
            this$0.g().stateLayout.c();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void o(CarCodeManagerActivity this$0, LoadingState loadingState) {
        kotlin.jvm.internal.r.e(this$0, "this$0");
        int i = loadingState == null ? -1 : b.f5025a[loadingState.ordinal()];
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
    public static final void p(CarCodeManagerActivity this$0, LoadingState loadingState) {
        kotlin.jvm.internal.r.e(this$0, "this$0");
        int i = loadingState == null ? -1 : b.f5025a[loadingState.ordinal()];
        if (i == 1) {
            JLoadingDialog jLoadingDialog = new JLoadingDialog(this$0);
            this$0.c = jLoadingDialog;
            if (jLoadingDialog == null) {
                return;
            }
            jLoadingDialog.b(loadingState.getMsg());
            return;
        }
        if (i == 2) {
            JLoadingDialog jLoadingDialog2 = this$0.c;
            if (jLoadingDialog2 != null) {
                jLoadingDialog2.dismiss();
            }
            cn.mucang.android.core.utils.u.h(loadingState.getMsg());
            return;
        }
        if (i != 3) {
            return;
        }
        JLoadingDialog jLoadingDialog3 = this$0.c;
        if (jLoadingDialog3 != null) {
            jLoadingDialog3.dismiss();
        }
        cn.mucang.android.core.utils.u.h(loadingState.getMsg());
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void q(CarCodeManagerActivity this$0) {
        kotlin.jvm.internal.r.e(this$0, "this$0");
        this$0.x(true);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void x(boolean z) {
        CarCodeViewModel carCodeViewModel = this.b;
        if (carCodeViewModel != null) {
            carCodeViewModel.p(z, 10);
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
    @SuppressLint({"SetTextI18n"})
    protected void init() {
        super.init();
        j0 j0VarA = new m0(this).a(CarCodeViewModel.class);
        kotlin.jvm.internal.r.d(j0VarA, "ViewModelProvider(this).…odeViewModel::class.java)");
        this.b = (CarCodeViewModel) j0VarA;
        g().titleLayout.titleTv.setText("车型数据库");
        g().titleLayout.backIv.setOnClickListener(new View.OnClickListener() { // from class: cn.mucang.android.jiakaoyi.mapcollect.manager.car.model.g
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                CarCodeManagerActivity.l(this.f5044a, view);
            }
        });
        g().newCarTv.setOnClickListener(new View.OnClickListener() { // from class: cn.mucang.android.jiakaoyi.mapcollect.manager.car.model.e
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                CarCodeManagerActivity.m(this.f5042a, view);
            }
        });
        final d dVar = new d();
        g().carCodeListRv.addItemDecoration(new androidx.recyclerview.widget.d(this, 1));
        g().carCodeListRv.setLayoutManager(new LinearLayoutManager(this));
        g().carCodeListRv.setAdapter(dVar);
        g().carCodeListRv.addOnScrollListener(new c(dVar, this));
        CarCodeViewModel carCodeViewModel = this.b;
        if (carCodeViewModel == null) {
            kotlin.jvm.internal.r.u("viewModel");
            throw null;
        }
        carCodeViewModel.o().h(this, new a0() { // from class: cn.mucang.android.jiakaoyi.mapcollect.manager.car.model.j
            @Override // androidx.lifecycle.a0
            public final void onChanged(Object obj) {
                CarCodeManagerActivity.n(dVar, this, (List) obj);
            }
        });
        CarCodeViewModel carCodeViewModel2 = this.b;
        if (carCodeViewModel2 == null) {
            kotlin.jvm.internal.r.u("viewModel");
            throw null;
        }
        carCodeViewModel2.b().h(this, new a0() { // from class: cn.mucang.android.jiakaoyi.mapcollect.manager.car.model.h
            @Override // androidx.lifecycle.a0
            public final void onChanged(Object obj) {
                CarCodeManagerActivity.o(this.f5045a, (LoadingState) obj);
            }
        });
        CarCodeViewModel carCodeViewModel3 = this.b;
        if (carCodeViewModel3 == null) {
            kotlin.jvm.internal.r.u("viewModel");
            throw null;
        }
        carCodeViewModel3.a().h(this, new a0() { // from class: cn.mucang.android.jiakaoyi.mapcollect.manager.car.model.f
            @Override // androidx.lifecycle.a0
            public final void onChanged(Object obj) {
                CarCodeManagerActivity.p(this.f5043a, (LoadingState) obj);
            }
        });
        g().stateLayout.setOnRefreshListener(new StateLayout.c() { // from class: cn.mucang.android.jiakaoyi.mapcollect.manager.car.model.i
            @Override // cn.mucang.android.core.widget.StateLayout.c
            public final void a() {
                CarCodeManagerActivity.q(this.f5046a);
            }
        });
    }

    @Override // cn.mucang.android.core.config.n, androidx.fragment.app.d, android.app.Activity
    protected void onResume() {
        super.onResume();
        x(true);
    }
}
