package cn.mucang.android.jiakaoyi.k3setting.order;

import android.annotation.SuppressLint;
import android.os.Bundle;
import android.view.View;
import androidx.recyclerview.widget.LinearLayoutManager;
import androidx.recyclerview.widget.RecyclerView;
import cn.mucang.android.core.widget.StateLayout;
import cn.mucang.android.jiakaoyi.exam.k3.light.LightAssembleModel;
import cn.mucang.android.jiakaoyi.framework.base.dialog.JLoadingDialog;
import cn.mucang.android.jiakaoyi.framework.base.model.LoadingState;
import cn.mucang.android.jiakaoyi.framework.base.ui.BaseActivity;
import cn.mucang.android.jiakaoyi.k3setting.R;
import cn.mucang.android.jiakaoyi.k3setting.backup.K3RuleDeductOrderDiffActivity;
import cn.mucang.android.jiakaoyi.k3setting.databinding.LightAssembleActivityBinding;
import cn.mucang.android.jiakaoyi.k3setting.order.item.LightAssembleItemBinder;
import cn.mucang.android.jiakaoyi.k3setting.order.viewmodel.LightViewModel;
import cn.mucang.jiakaoyi.uilib.model.ExamSiteModel;
import cn.mucang.jiakaoyi.uilib.utils.ExamSiteUtil;
import java.util.Collections;
import java.util.List;
import kotlin.Metadata;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000:\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0002\u0018\u00002\u00020\u0001B\u0005¢\u0006\u0002\u0010\u0002J\b\u0010\u000b\u001a\u00020\fH\u0016J\b\u0010\r\u001a\u00020\u000eH\u0002J\b\u0010\u000f\u001a\u00020\u000eH\u0002J\b\u0010\u0010\u001a\u00020\u000eH\u0003J\u0012\u0010\u0011\u001a\u00020\u000e2\b\u0010\u0012\u001a\u0004\u0018\u00010\u0013H\u0014J\b\u0010\u0014\u001a\u00020\u000eH\u0014R\u000e\u0010\u0003\u001a\u00020\u0004X\u0082\u0004¢\u0006\u0002\n\u0000R\u0010\u0010\u0005\u001a\u0004\u0018\u00010\u0006X\u0082\u000e¢\u0006\u0002\n\u0000R\u000e\u0010\u0007\u001a\u00020\bX\u0082.¢\u0006\u0002\n\u0000R\u000e\u0010\t\u001a\u00020\nX\u0082.¢\u0006\u0002\n\u0000¨\u0006\u0015"}, d2 = {"Lcn/mucang/android/jiakaoyi/k3setting/order/LightAssembleActivity;", "Lcn/mucang/android/jiakaoyi/framework/base/ui/BaseActivity;", "()V", "adapter", "Lcom/drakeet/multitype/MultiTypeAdapter;", "loadingDialog", "Lcn/mucang/android/jiakaoyi/framework/base/dialog/JLoadingDialog;", "viewBinding", "Lcn/mucang/android/jiakaoyi/k3setting/databinding/LightAssembleActivityBinding;", "viewModel", "Lcn/mucang/android/jiakaoyi/k3setting/order/viewmodel/LightViewModel;", "getStatName", "", "initList", "", "initSort", "initTitle", "onCreate", "savedInstanceState", "Landroid/os/Bundle;", "onResume", "k3setting_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
public final class LightAssembleActivity extends BaseActivity {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private LightAssembleActivityBinding f4362a;
    private LightViewModel b;
    private final com.drakeet.multitype.f c = new com.drakeet.multitype.f(null, 0, null, 7, null);

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private JLoadingDialog f4363d;

    @Metadata(k = 3, mv = {1, 5, 1}, xi = 48)
    public /* synthetic */ class a {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public static final /* synthetic */ int[] f4364a;

        static {
            int[] iArr = new int[LoadingState.values().length];
            iArr[LoadingState.Loading.ordinal()] = 1;
            iArr[LoadingState.Fail.ordinal()] = 2;
            iArr[LoadingState.Success.ordinal()] = 3;
            f4364a = iArr;
        }
    }

    @Metadata(d1 = {"\u0000\u001f\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0002\b\u0002*\u0001\u0000\b\n\u0018\u00002\u00020\u0001J \u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u00052\u0006\u0010\u0006\u001a\u00020\u00072\u0006\u0010\b\u001a\u00020\u0007H\u0016¨\u0006\t"}, d2 = {"cn/mucang/android/jiakaoyi/k3setting/order/LightAssembleActivity$initList$2", "Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;", "onScrolled", "", "recyclerView", "Landroidx/recyclerview/widget/RecyclerView;", "dx", "", "dy", "k3setting_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
    public static final class b extends RecyclerView.t {
        b() {
        }

        @Override // androidx.recyclerview.widget.RecyclerView.t
        public void onScrolled(RecyclerView recyclerView, int dx, int dy) {
            kotlin.jvm.internal.r.e(recyclerView, "recyclerView");
            super.onScrolled(recyclerView, dx, dy);
            LinearLayoutManager linearLayoutManager = (LinearLayoutManager) recyclerView.getLayoutManager();
            if (linearLayoutManager == null || linearLayoutManager.findLastVisibleItemPosition() <= LightAssembleActivity.this.c.getItemCount() - 2 || LightAssembleActivity.this.c.getItemCount() <= 0) {
                return;
            }
            LightViewModel lightViewModel = LightAssembleActivity.this.b;
            if (lightViewModel != null) {
                lightViewModel.q(false);
            } else {
                kotlin.jvm.internal.r.u("viewModel");
                throw null;
            }
        }
    }

    @Metadata(d1 = {"\u0000+\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0000\n\u0002\u0010\u000b\n\u0002\b\u0006*\u0001\u0000\b\n\u0018\u00002\u00020\u0001J\u0018\u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u00052\u0006\u0010\u0006\u001a\u00020\u0007H\u0016J\u0018\u0010\b\u001a\u00020\t2\u0006\u0010\u0004\u001a\u00020\u00052\u0006\u0010\u0006\u001a\u00020\u0007H\u0016J \u0010\n\u001a\u00020\u000b2\u0006\u0010\u0004\u001a\u00020\u00052\u0006\u0010\u0006\u001a\u00020\u00072\u0006\u0010\f\u001a\u00020\u0007H\u0016J\u001a\u0010\r\u001a\u00020\u00032\b\u0010\u0006\u001a\u0004\u0018\u00010\u00072\u0006\u0010\u000e\u001a\u00020\tH\u0016J\u0018\u0010\u000f\u001a\u00020\u00032\u0006\u0010\u0006\u001a\u00020\u00072\u0006\u0010\u0010\u001a\u00020\tH\u0016¨\u0006\u0011"}, d2 = {"cn/mucang/android/jiakaoyi/k3setting/order/LightAssembleActivity$initSort$1", "Landroidx/recyclerview/widget/ItemTouchHelper$Callback;", "clearView", "", "recyclerView", "Landroidx/recyclerview/widget/RecyclerView;", "viewHolder", "Landroidx/recyclerview/widget/RecyclerView$ViewHolder;", "getMovementFlags", "", "onMove", "", "target", "onSelectedChanged", "actionState", "onSwiped", "direction", "k3setting_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
    public static final class c extends androidx.recyclerview.widget.g.f {
        c() {
        }

        @Override // androidx.recyclerview.widget.g.f
        public void A(RecyclerView.c0 c0Var, int i) {
            View view;
            super.A(c0Var, i);
            if (i != 2 || c0Var == null || (view = c0Var.itemView) == null) {
                return;
            }
            view.setBackgroundColor(cn.mucang.android.core.utils.c0.a().getColor(R.color.lightOrderBgSelected));
        }

        @Override // androidx.recyclerview.widget.g.f
        public void B(RecyclerView.c0 viewHolder, int i) {
            kotlin.jvm.internal.r.e(viewHolder, "viewHolder");
        }

        @Override // androidx.recyclerview.widget.g.f
        public void c(RecyclerView recyclerView, RecyclerView.c0 viewHolder) {
            kotlin.jvm.internal.r.e(recyclerView, "recyclerView");
            kotlin.jvm.internal.r.e(viewHolder, "viewHolder");
            super.c(recyclerView, viewHolder);
            viewHolder.itemView.setBackgroundColor(cn.mucang.android.core.utils.c0.a().getColor(R.color.lightOrderBgNormal));
        }

        @Override // androidx.recyclerview.widget.g.f
        public int k(RecyclerView recyclerView, RecyclerView.c0 viewHolder) {
            kotlin.jvm.internal.r.e(recyclerView, "recyclerView");
            kotlin.jvm.internal.r.e(viewHolder, "viewHolder");
            return androidx.recyclerview.widget.g.f.t(3, 0);
        }

        @Override // androidx.recyclerview.widget.g.f
        public boolean y(RecyclerView recyclerView, RecyclerView.c0 viewHolder, RecyclerView.c0 target) {
            kotlin.jvm.internal.r.e(recyclerView, "recyclerView");
            kotlin.jvm.internal.r.e(viewHolder, "viewHolder");
            kotlin.jvm.internal.r.e(target, "target");
            LightAssembleActivity.this.c.notifyItemMoved(viewHolder.getAdapterPosition(), target.getAdapterPosition());
            Collections.swap(LightAssembleActivity.this.c.c(), viewHolder.getAdapterPosition(), target.getAdapterPosition());
            return true;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void A(LightAssembleActivity this$0, View view) {
        kotlin.jvm.internal.r.e(this$0, "this$0");
        LightAssembleAddActivity.a.b(LightAssembleAddActivity.f4367g, this$0, null, null, 6, null);
    }

    private final void i() {
        this.c.g(LightAssembleModel.class, new LightAssembleItemBinder(false, new LightAssembleActivity$initList$1(this), 1, null));
        LightAssembleActivityBinding lightAssembleActivityBinding = this.f4362a;
        if (lightAssembleActivityBinding == null) {
            kotlin.jvm.internal.r.u("viewBinding");
            throw null;
        }
        lightAssembleActivityBinding.recyclerView.setAdapter(this.c);
        LightAssembleActivityBinding lightAssembleActivityBinding2 = this.f4362a;
        if (lightAssembleActivityBinding2 == null) {
            kotlin.jvm.internal.r.u("viewBinding");
            throw null;
        }
        lightAssembleActivityBinding2.recyclerView.addOnScrollListener(new b());
        LightViewModel lightViewModel = this.b;
        if (lightViewModel == null) {
            kotlin.jvm.internal.r.u("viewModel");
            throw null;
        }
        lightViewModel.o().h(this, new androidx.lifecycle.a0() { // from class: cn.mucang.android.jiakaoyi.k3setting.order.v
            @Override // androidx.lifecycle.a0
            public final void onChanged(Object obj) {
                LightAssembleActivity.j(this.f4471a, (List) obj);
            }
        });
        LightViewModel lightViewModel2 = this.b;
        if (lightViewModel2 == null) {
            kotlin.jvm.internal.r.u("viewModel");
            throw null;
        }
        lightViewModel2.b().h(this, new androidx.lifecycle.a0() { // from class: cn.mucang.android.jiakaoyi.k3setting.order.z
            @Override // androidx.lifecycle.a0
            public final void onChanged(Object obj) {
                LightAssembleActivity.k(this.f4489a, (LoadingState) obj);
            }
        });
        LightViewModel lightViewModel3 = this.b;
        if (lightViewModel3 == null) {
            kotlin.jvm.internal.r.u("viewModel");
            throw null;
        }
        lightViewModel3.a().h(this, new androidx.lifecycle.a0() { // from class: cn.mucang.android.jiakaoyi.k3setting.order.d0
            @Override // androidx.lifecycle.a0
            public final void onChanged(Object obj) {
                LightAssembleActivity.l(this.f4418a, (LoadingState) obj);
            }
        });
        LightAssembleActivityBinding lightAssembleActivityBinding3 = this.f4362a;
        if (lightAssembleActivityBinding3 != null) {
            lightAssembleActivityBinding3.stateLayout.setOnRefreshListener(new StateLayout.c() { // from class: cn.mucang.android.jiakaoyi.k3setting.order.c0
                @Override // cn.mucang.android.core.widget.StateLayout.c
                public final void a() {
                    LightAssembleActivity.m(this.f4415a);
                }
            });
        } else {
            kotlin.jvm.internal.r.u("viewBinding");
            throw null;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void j(LightAssembleActivity this$0, List it) {
        kotlin.jvm.internal.r.e(this$0, "this$0");
        com.drakeet.multitype.f fVar = this$0.c;
        kotlin.jvm.internal.r.d(it, "it");
        fVar.i(it);
        this$0.c.notifyDataSetChanged();
        if (cn.mucang.android.core.utils.g.b(it)) {
            LightAssembleActivityBinding lightAssembleActivityBinding = this$0.f4362a;
            if (lightAssembleActivityBinding != null) {
                lightAssembleActivityBinding.stateLayout.d();
                return;
            } else {
                kotlin.jvm.internal.r.u("viewBinding");
                throw null;
            }
        }
        LightAssembleActivityBinding lightAssembleActivityBinding2 = this$0.f4362a;
        if (lightAssembleActivityBinding2 != null) {
            lightAssembleActivityBinding2.stateLayout.c();
        } else {
            kotlin.jvm.internal.r.u("viewBinding");
            throw null;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void k(LightAssembleActivity this$0, LoadingState loadingState) {
        kotlin.jvm.internal.r.e(this$0, "this$0");
        int i = loadingState == null ? -1 : a.f4364a[loadingState.ordinal()];
        if (i == 1) {
            LightAssembleActivityBinding lightAssembleActivityBinding = this$0.f4362a;
            if (lightAssembleActivityBinding != null) {
                lightAssembleActivityBinding.stateLayout.f();
                return;
            } else {
                kotlin.jvm.internal.r.u("viewBinding");
                throw null;
            }
        }
        if (i != 2) {
            return;
        }
        LightAssembleActivityBinding lightAssembleActivityBinding2 = this$0.f4362a;
        if (lightAssembleActivityBinding2 != null) {
            lightAssembleActivityBinding2.stateLayout.e();
        } else {
            kotlin.jvm.internal.r.u("viewBinding");
            throw null;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void l(LightAssembleActivity this$0, LoadingState loadingState) {
        kotlin.jvm.internal.r.e(this$0, "this$0");
        int i = loadingState == null ? -1 : a.f4364a[loadingState.ordinal()];
        if (i == 1) {
            JLoadingDialog jLoadingDialog = new JLoadingDialog(this$0);
            this$0.f4363d = jLoadingDialog;
            if (jLoadingDialog == null) {
                return;
            }
            jLoadingDialog.b("");
            return;
        }
        if (i == 2) {
            JLoadingDialog jLoadingDialog2 = this$0.f4363d;
            if (jLoadingDialog2 != null) {
                jLoadingDialog2.dismiss();
            }
            cn.mucang.android.core.utils.u.h(loadingState.getMsg());
            return;
        }
        if (i != 3) {
            return;
        }
        JLoadingDialog jLoadingDialog3 = this$0.f4363d;
        if (jLoadingDialog3 != null) {
            jLoadingDialog3.dismiss();
        }
        cn.mucang.android.core.utils.u.h(loadingState.getMsg());
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void m(LightAssembleActivity this$0) {
        kotlin.jvm.internal.r.e(this$0, "this$0");
        LightViewModel lightViewModel = this$0.b;
        if (lightViewModel != null) {
            lightViewModel.q(true);
        } else {
            kotlin.jvm.internal.r.u("viewModel");
            throw null;
        }
    }

    private final void n() {
        androidx.recyclerview.widget.g gVar = new androidx.recyclerview.widget.g(new c());
        LightAssembleActivityBinding lightAssembleActivityBinding = this.f4362a;
        if (lightAssembleActivityBinding != null) {
            gVar.g(lightAssembleActivityBinding.recyclerView);
        } else {
            kotlin.jvm.internal.r.u("viewBinding");
            throw null;
        }
    }

    @SuppressLint({"SetTextI18n"})
    private final void o() {
        LightAssembleActivityBinding lightAssembleActivityBinding = this.f4362a;
        if (lightAssembleActivityBinding == null) {
            kotlin.jvm.internal.r.u("viewBinding");
            throw null;
        }
        lightAssembleActivityBinding.titleLayout.divider.setVisibility(8);
        LightAssembleActivityBinding lightAssembleActivityBinding2 = this.f4362a;
        if (lightAssembleActivityBinding2 == null) {
            kotlin.jvm.internal.r.u("viewBinding");
            throw null;
        }
        lightAssembleActivityBinding2.titleLayout.actionTv.setVisibility(0);
        LightAssembleActivityBinding lightAssembleActivityBinding3 = this.f4362a;
        if (lightAssembleActivityBinding3 == null) {
            kotlin.jvm.internal.r.u("viewBinding");
            throw null;
        }
        lightAssembleActivityBinding3.titleLayout.titleTv.setText("灯光组合");
        LightAssembleActivityBinding lightAssembleActivityBinding4 = this.f4362a;
        if (lightAssembleActivityBinding4 == null) {
            kotlin.jvm.internal.r.u("viewBinding");
            throw null;
        }
        lightAssembleActivityBinding4.titleLayout.actionTv.setText("重置");
        final ExamSiteModel examSiteModelG = ExamSiteUtil.g();
        LightAssembleActivityBinding lightAssembleActivityBinding5 = this.f4362a;
        if (lightAssembleActivityBinding5 == null) {
            kotlin.jvm.internal.r.u("viewBinding");
            throw null;
        }
        lightAssembleActivityBinding5.titleLayout.actionTv.setOnClickListener(new View.OnClickListener() { // from class: cn.mucang.android.jiakaoyi.k3setting.order.a0
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                LightAssembleActivity.p(examSiteModelG, this, view);
            }
        });
        LightAssembleActivityBinding lightAssembleActivityBinding6 = this.f4362a;
        if (lightAssembleActivityBinding6 != null) {
            lightAssembleActivityBinding6.titleLayout.backIv.setOnClickListener(new View.OnClickListener() { // from class: cn.mucang.android.jiakaoyi.k3setting.order.w
                @Override // android.view.View.OnClickListener
                public final void onClick(View view) {
                    LightAssembleActivity.q(this.f4480a, view);
                }
            });
        } else {
            kotlin.jvm.internal.r.u("viewBinding");
            throw null;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void p(ExamSiteModel examSiteModel, LightAssembleActivity this$0, View view) {
        kotlin.jvm.internal.r.e(this$0, "this$0");
        if (examSiteModel == null) {
            return;
        }
        cn.mucang.android.jiakaoyi.framework.log.f.o(kotlin.jvm.internal.r.m("点击重置灯光组合  ", Long.valueOf(examSiteModel.examSiteId)));
        K3RuleDeductOrderDiffActivity.i.c(this$0, examSiteModel, false);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void q(LightAssembleActivity this$0, View view) {
        kotlin.jvm.internal.r.e(this$0, "this$0");
        this$0.finish();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void z(LightAssembleActivity this$0, View view) {
        kotlin.jvm.internal.r.e(this$0, "this$0");
        LightViewModel lightViewModel = this$0.b;
        if (lightViewModel != null) {
            lightViewModel.t();
        } else {
            kotlin.jvm.internal.r.u("viewModel");
            throw null;
        }
    }

    @Override // cn.mucang.android.core.config.t
    public String getStatName() {
        return "灯光指令";
    }

    @Override // cn.mucang.android.jiakaoyi.framework.base.ui.BaseActivity, cn.mucang.android.core.config.n, androidx.fragment.app.d, androidx.activity.ComponentActivity, androidx.core.app.f, android.app.Activity
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        LightAssembleActivityBinding lightAssembleActivityBindingInflate = LightAssembleActivityBinding.inflate(getLayoutInflater());
        kotlin.jvm.internal.r.d(lightAssembleActivityBindingInflate, "inflate(layoutInflater)");
        this.f4362a = lightAssembleActivityBindingInflate;
        androidx.lifecycle.j0 j0VarA = new androidx.lifecycle.m0(this).a(LightViewModel.class);
        kotlin.jvm.internal.r.d(j0VarA, "ViewModelProvider(this).…ghtViewModel::class.java)");
        this.b = (LightViewModel) j0VarA;
        LightAssembleActivityBinding lightAssembleActivityBinding = this.f4362a;
        if (lightAssembleActivityBinding == null) {
            kotlin.jvm.internal.r.u("viewBinding");
            throw null;
        }
        setContentView(lightAssembleActivityBinding.getRoot());
        o();
        i();
        n();
        LightAssembleActivityBinding lightAssembleActivityBinding2 = this.f4362a;
        if (lightAssembleActivityBinding2 == null) {
            kotlin.jvm.internal.r.u("viewBinding");
            throw null;
        }
        lightAssembleActivityBinding2.saveTv.setOnClickListener(new View.OnClickListener() { // from class: cn.mucang.android.jiakaoyi.k3setting.order.b0
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                LightAssembleActivity.z(this.f4394a, view);
            }
        });
        LightAssembleActivityBinding lightAssembleActivityBinding3 = this.f4362a;
        if (lightAssembleActivityBinding3 != null) {
            lightAssembleActivityBinding3.addTv.setOnClickListener(new View.OnClickListener() { // from class: cn.mucang.android.jiakaoyi.k3setting.order.x
                @Override // android.view.View.OnClickListener
                public final void onClick(View view) {
                    LightAssembleActivity.A(this.f4483a, view);
                }
            });
        } else {
            kotlin.jvm.internal.r.u("viewBinding");
            throw null;
        }
    }

    @Override // cn.mucang.android.core.config.n, androidx.fragment.app.d, android.app.Activity
    protected void onResume() {
        super.onResume();
        LightViewModel lightViewModel = this.b;
        if (lightViewModel != null) {
            lightViewModel.q(true);
        } else {
            kotlin.jvm.internal.r.u("viewModel");
            throw null;
        }
    }
}
