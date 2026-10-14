package cn.mucang.android.jiakaoyi.teachingk2.ui.car;

import android.content.Context;
import android.view.View;
import android.widget.TextView;
import androidx.lifecycle.j0;
import androidx.lifecycle.m0;
import androidx.recyclerview.widget.LinearLayoutManager;
import cn.mucang.android.core.widget.StateLayout;
import cn.mucang.android.jiakaoyi.framework.base.ViewBindingBinder;
import cn.mucang.android.jiakaoyi.framework.base.ViewBindingHolder;
import cn.mucang.android.jiakaoyi.framework.base.model.LoadingState;
import cn.mucang.android.jiakaoyi.framework.base.ui.BaseViewBindingActivity;
import cn.mucang.android.jiakaoyi.mapcollect.collect.model.HpCarMapModel;
import cn.mucang.android.jiakaoyi.mapcollect.manager.car.CarPreviewActivity;
import cn.mucang.android.jiakaoyi.teachbase.databinding.ActivityCarListBinding;
import cn.mucang.android.jiakaoyi.teachbase.databinding.ItemCarListBinding;
import java.util.List;
import kotlin.Metadata;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000*\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0004\u0018\u0000 \u000e2\b\u0012\u0004\u0012\u00020\u00020\u0001:\u0002\r\u000eB\u0005¢\u0006\u0002\u0010\u0003J\b\u0010\b\u001a\u00020\tH\u0016J\b\u0010\n\u001a\u00020\u000bH\u0014J\b\u0010\f\u001a\u00020\u000bH\u0002R\u000e\u0010\u0004\u001a\u00020\u0005X\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u0006\u001a\u00020\u0007X\u0082.¢\u0006\u0002\n\u0000¨\u0006\u000f"}, d2 = {"Lcn/mucang/android/jiakaoyi/teachingk2/ui/car/CarListActivity;", "Lcn/mucang/android/jiakaoyi/framework/base/ui/BaseViewBindingActivity;", "Lcn/mucang/android/jiakaoyi/teachbase/databinding/ActivityCarListBinding;", "()V", "adapter", "Lcom/drakeet/multitype/MultiTypeAdapter;", "viewModel", "Lcn/mucang/android/jiakaoyi/teachingk2/ui/car/CarListViewModel;", "getStatName", "", "init", "", "loadData", "CarItemBinder", "Companion", "teachbase_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
public final class CarListActivity extends BaseViewBindingActivity<ActivityCarListBinding> {
    private CarListViewModel b;
    private final com.drakeet.multitype.f c;

    @Metadata(d1 = {"\u0000\"\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\b\u0086\u0004\u0018\u00002\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u00030\u0001B\u0005¢\u0006\u0002\u0010\u0004J\u001e\u0010\u0005\u001a\u00020\u00062\f\u0010\u0007\u001a\b\u0012\u0004\u0012\u00020\u00030\b2\u0006\u0010\t\u001a\u00020\u0002H\u0016¨\u0006\n"}, d2 = {"Lcn/mucang/android/jiakaoyi/teachingk2/ui/car/CarListActivity$CarItemBinder;", "Lcn/mucang/android/jiakaoyi/framework/base/ViewBindingBinder;", "Lcn/mucang/android/jiakaoyi/mapcollect/collect/model/HpCarMapModel;", "Lcn/mucang/android/jiakaoyi/teachbase/databinding/ItemCarListBinding;", "(Lcn/mucang/android/jiakaoyi/teachingk2/ui/car/CarListActivity;)V", "onBindViewHolder", "", "holder", "Lcn/mucang/android/jiakaoyi/framework/base/ViewBindingHolder;", "item", "teachbase_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
    public final class a extends ViewBindingBinder<HpCarMapModel, ItemCarListBinding> {
        final /* synthetic */ CarListActivity b;

        public a(CarListActivity this$0) {
            kotlin.jvm.internal.r.e(this$0, "this$0");
            this.b = this$0;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public static final void q(CarListActivity this$0, HpCarMapModel item, View view) {
            kotlin.jvm.internal.r.e(this$0, "this$0");
            kotlin.jvm.internal.r.e(item, "$item");
            CarListViewModel carListViewModel = this$0.b;
            if (carListViewModel != null) {
                carListViewModel.i((int) item.id);
            } else {
                kotlin.jvm.internal.r.u("viewModel");
                throw null;
            }
        }

        /* JADX INFO: Access modifiers changed from: private */
        public static final void r(HpCarMapModel item, View view) {
            kotlin.jvm.internal.r.e(item, "$item");
            CarPreviewActivity.a aVar = CarPreviewActivity.f4994d;
            Context context = view.getContext();
            kotlin.jvm.internal.r.d(context, "it.context");
            aVar.a(context, item);
        }

        @Override // com.drakeet.multitype.c
        /* JADX INFO: renamed from: p, reason: merged with bridge method [inline-methods] */
        public void c(ViewBindingHolder<ItemCarListBinding> holder, final HpCarMapModel item) {
            String str;
            kotlin.jvm.internal.r.e(holder, "holder");
            kotlin.jvm.internal.r.e(item, "item");
            ((ItemCarListBinding) holder.getViewBinding()).titleTv.setText(item.modelName);
            ((ItemCarListBinding) holder.getViewBinding()).methodTv.setText(item.getMethodDesc());
            ((ItemCarListBinding) holder.getViewBinding()).addTv.setSelected(item.hasAdd);
            TextView textView = ((ItemCarListBinding) holder.getViewBinding()).addTv;
            if (item.hasAdd) {
                ((ItemCarListBinding) holder.getViewBinding()).addTv.setOnClickListener(null);
                str = "已设置为车身数据";
            } else {
                TextView textView2 = ((ItemCarListBinding) holder.getViewBinding()).addTv;
                final CarListActivity carListActivity = this.b;
                textView2.setOnClickListener(new View.OnClickListener() { // from class: cn.mucang.android.jiakaoyi.teachingk2.ui.car.r
                    @Override // android.view.View.OnClickListener
                    public final void onClick(View view) {
                        CarListActivity.a.q(carListActivity, item, view);
                    }
                });
                str = "设置为车身数据";
            }
            textView.setText(str);
            ((ItemCarListBinding) holder.getViewBinding()).previewTv.setOnClickListener(new View.OnClickListener() { // from class: cn.mucang.android.jiakaoyi.teachingk2.ui.car.q
                @Override // android.view.View.OnClickListener
                public final void onClick(View view) {
                    CarListActivity.a.r(item, view);
                }
            });
        }
    }

    @Metadata(k = 3, mv = {1, 5, 1}, xi = 48)
    public /* synthetic */ class b {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public static final /* synthetic */ int[] f8172a;

        static {
            int[] iArr = new int[LoadingState.values().length];
            iArr[LoadingState.Loading.ordinal()] = 1;
            iArr[LoadingState.Fail.ordinal()] = 2;
            f8172a = iArr;
        }
    }

    public CarListActivity() {
        com.drakeet.multitype.f fVar = new com.drakeet.multitype.f(null, 0, null, 7, null);
        fVar.g(HpCarMapModel.class, new a(this));
        kotlin.v vVar = kotlin.v.f15822a;
        this.c = fVar;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void k(CarListActivity this$0, View view) {
        kotlin.jvm.internal.r.e(this$0, "this$0");
        this$0.finish();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void l(CarListActivity this$0, List it) {
        kotlin.jvm.internal.r.e(this$0, "this$0");
        com.drakeet.multitype.f fVar = this$0.c;
        kotlin.jvm.internal.r.d(it, "it");
        fVar.i(it);
        this$0.c.notifyDataSetChanged();
        if (cn.mucang.android.core.utils.g.b(it)) {
            this$0.g().stateLayout.d();
        } else {
            this$0.g().stateLayout.c();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void m(CarListActivity this$0, LoadingState loadingState) {
        kotlin.jvm.internal.r.e(this$0, "this$0");
        int i = loadingState == null ? -1 : b.f8172a[loadingState.ordinal()];
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
    public static final void n(CarListActivity this$0) {
        kotlin.jvm.internal.r.e(this$0, "this$0");
        this$0.s();
    }

    private final void s() {
        CarListViewModel carListViewModel = this.b;
        if (carListViewModel != null) {
            carListViewModel.k();
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
        j0 j0VarA = new m0(this).a(CarListViewModel.class);
        kotlin.jvm.internal.r.d(j0VarA, "ViewModelProvider(this).…istViewModel::class.java)");
        this.b = (CarListViewModel) j0VarA;
        g().title.titleTv.setText("车型数据库");
        g().title.backIv.setOnClickListener(new View.OnClickListener() { // from class: cn.mucang.android.jiakaoyi.teachingk2.ui.car.s
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                CarListActivity.k(this.f8194a, view);
            }
        });
        g().recyclerView.setAdapter(this.c);
        g().recyclerView.setLayoutManager(new LinearLayoutManager(this));
        CarListViewModel carListViewModel = this.b;
        if (carListViewModel == null) {
            kotlin.jvm.internal.r.u("viewModel");
            throw null;
        }
        carListViewModel.j().h(this, new androidx.lifecycle.a0() { // from class: cn.mucang.android.jiakaoyi.teachingk2.ui.car.t
            @Override // androidx.lifecycle.a0
            public final void onChanged(Object obj) {
                CarListActivity.l(this.f8195a, (List) obj);
            }
        });
        CarListViewModel carListViewModel2 = this.b;
        if (carListViewModel2 == null) {
            kotlin.jvm.internal.r.u("viewModel");
            throw null;
        }
        carListViewModel2.b().h(this, new androidx.lifecycle.a0() { // from class: cn.mucang.android.jiakaoyi.teachingk2.ui.car.u
            @Override // androidx.lifecycle.a0
            public final void onChanged(Object obj) {
                CarListActivity.m(this.f8196a, (LoadingState) obj);
            }
        });
        g().stateLayout.setOnRefreshListener(new StateLayout.c() { // from class: cn.mucang.android.jiakaoyi.teachingk2.ui.car.v
            @Override // cn.mucang.android.core.widget.StateLayout.c
            public final void a() {
                CarListActivity.n(this.f8197a);
            }
        });
        s();
    }
}
