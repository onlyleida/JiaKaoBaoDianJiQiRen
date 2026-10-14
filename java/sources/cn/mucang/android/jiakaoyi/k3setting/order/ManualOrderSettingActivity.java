package cn.mucang.android.jiakaoyi.k3setting.order;

import android.annotation.SuppressLint;
import android.os.Bundle;
import android.view.View;
import android.widget.TextView;
import androidx.recyclerview.widget.RecyclerView;
import cn.mucang.android.jiakaoyi.framework.base.dialog.JCommonDialog;
import cn.mucang.android.jiakaoyi.framework.base.ui.BaseActivity;
import cn.mucang.android.jiakaoyi.k3setting.R;
import cn.mucang.android.jiakaoyi.k3setting.databinding.ManualOrderSettingActivityBinding;
import cn.mucang.android.jiakaoyi.k3setting.order.item.K3OrderItemBinder;
import cn.mucang.android.jiakaoyi.k3setting.order.viewmodel.ManualOrderViewModel;
import cn.mucang.jiakaoyi.uilib.model.ExamSiteModel;
import cn.mucang.jiakaoyi.uilib.model.K3OrderItem;
import cn.mucang.jiakaoyi.uilib.utils.ExamSiteUtil;
import java.util.Collections;
import java.util.List;
import kotlin.Lazy;
import kotlin.Metadata;
import kotlin.jvm.functions.Function0;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000<\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\u0018\u00002\u00020\u0001B\u0005¢\u0006\u0002\u0010\u0002J\b\u0010\u000f\u001a\u00020\u0010H\u0016J\b\u0010\u0011\u001a\u00020\u0012H\u0002J\u0012\u0010\u0013\u001a\u00020\u00122\b\u0010\u0014\u001a\u0004\u0018\u00010\u0015H\u0015J\b\u0010\u0016\u001a\u00020\u0012H\u0014R\u000e\u0010\u0003\u001a\u00020\u0004X\u0082\u0004¢\u0006\u0002\n\u0000R\u001d\u0010\u0005\u001a\u0004\u0018\u00010\u00068BX\u0082\u0084\u0002¢\u0006\f\n\u0004\b\t\u0010\n\u001a\u0004\b\u0007\u0010\bR\u000e\u0010\u000b\u001a\u00020\fX\u0082.¢\u0006\u0002\n\u0000R\u0010\u0010\r\u001a\u0004\u0018\u00010\u000eX\u0082\u000e¢\u0006\u0002\n\u0000¨\u0006\u0017"}, d2 = {"Lcn/mucang/android/jiakaoyi/k3setting/order/ManualOrderSettingActivity;", "Lcn/mucang/android/jiakaoyi/framework/base/ui/BaseActivity;", "()V", "adapter", "Lcom/drakeet/multitype/MultiTypeAdapter;", "examSite", "Lcn/mucang/jiakaoyi/uilib/model/ExamSiteModel;", "getExamSite", "()Lcn/mucang/jiakaoyi/uilib/model/ExamSiteModel;", "examSite$delegate", "Lkotlin/Lazy;", "viewBinding", "Lcn/mucang/android/jiakaoyi/k3setting/databinding/ManualOrderSettingActivityBinding;", "viewModel", "Lcn/mucang/android/jiakaoyi/k3setting/order/viewmodel/ManualOrderViewModel;", "getStatName", "", "initSort", "", "onCreate", "savedInstanceState", "Landroid/os/Bundle;", "onDestroy", "k3setting_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
public final class ManualOrderSettingActivity extends BaseActivity {
    private ManualOrderSettingActivityBinding b;
    private ManualOrderViewModel c;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final Lazy f4383a = kotlin.i.b(new Function0<ExamSiteModel>() { // from class: cn.mucang.android.jiakaoyi.k3setting.order.ManualOrderSettingActivity$examSite$2
        /* JADX WARN: Can't rename method to resolve collision */
        @Override // kotlin.jvm.functions.Function0
        public final ExamSiteModel invoke() {
            return ExamSiteUtil.g();
        }
    });

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final com.drakeet.multitype.f f4384d = new com.drakeet.multitype.f(null, 0, null, 7, null);

    @Metadata(d1 = {"\u0000+\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0000\n\u0002\u0010\u000b\n\u0002\b\u0006*\u0001\u0000\b\n\u0018\u00002\u00020\u0001J\u0018\u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u00052\u0006\u0010\u0006\u001a\u00020\u0007H\u0016J\u0018\u0010\b\u001a\u00020\t2\u0006\u0010\u0004\u001a\u00020\u00052\u0006\u0010\u0006\u001a\u00020\u0007H\u0016J \u0010\n\u001a\u00020\u000b2\u0006\u0010\u0004\u001a\u00020\u00052\u0006\u0010\u0006\u001a\u00020\u00072\u0006\u0010\f\u001a\u00020\u0007H\u0016J\u001a\u0010\r\u001a\u00020\u00032\b\u0010\u0006\u001a\u0004\u0018\u00010\u00072\u0006\u0010\u000e\u001a\u00020\tH\u0016J\u0018\u0010\u000f\u001a\u00020\u00032\u0006\u0010\u0006\u001a\u00020\u00072\u0006\u0010\u0010\u001a\u00020\tH\u0016¨\u0006\u0011"}, d2 = {"cn/mucang/android/jiakaoyi/k3setting/order/ManualOrderSettingActivity$initSort$1", "Landroidx/recyclerview/widget/ItemTouchHelper$Callback;", "clearView", "", "recyclerView", "Landroidx/recyclerview/widget/RecyclerView;", "viewHolder", "Landroidx/recyclerview/widget/RecyclerView$ViewHolder;", "getMovementFlags", "", "onMove", "", "target", "onSelectedChanged", "actionState", "onSwiped", "direction", "k3setting_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
    public static final class a extends androidx.recyclerview.widget.g.f {
        a() {
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
            ManualOrderSettingActivity.this.f4384d.notifyItemMoved(viewHolder.getAdapterPosition(), target.getAdapterPosition());
            Collections.swap(ManualOrderSettingActivity.this.f4384d.c(), viewHolder.getAdapterPosition(), target.getAdapterPosition());
            return true;
        }
    }

    private final ExamSiteModel h() {
        return (ExamSiteModel) this.f4383a.getValue();
    }

    private final void i() {
        androidx.recyclerview.widget.g gVar = new androidx.recyclerview.widget.g(new a());
        ManualOrderSettingActivityBinding manualOrderSettingActivityBinding = this.b;
        if (manualOrderSettingActivityBinding != null) {
            gVar.g(manualOrderSettingActivityBinding.recyclerView);
        } else {
            kotlin.jvm.internal.r.u("viewBinding");
            throw null;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void n(ManualOrderSettingActivity this$0, View view) {
        kotlin.jvm.internal.r.e(this$0, "this$0");
        this$0.finish();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void o(final ManualOrderSettingActivity this$0, View view) {
        kotlin.jvm.internal.r.e(this$0, "this$0");
        new JCommonDialog(this$0, new JCommonDialog.DialogParams("确认重置吗？", "重置后本机自己设置的规则将会丢失", "取消", (View.OnClickListener) null, "确定", new View.OnClickListener() { // from class: cn.mucang.android.jiakaoyi.k3setting.order.b1
            @Override // android.view.View.OnClickListener
            public final void onClick(View view2) {
                ManualOrderSettingActivity.p(this.f4395a, view2);
            }
        }, false, 64, (kotlin.jvm.internal.o) null)).show();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void p(ManualOrderSettingActivity this$0, View view) {
        kotlin.jvm.internal.r.e(this$0, "this$0");
        cn.mucang.android.jiakaoyi.framework.log.f.o("点击手控指令重置");
        ManualOrderViewModel manualOrderViewModel = this$0.c;
        if (manualOrderViewModel == null) {
            return;
        }
        ExamSiteModel examSiteModelH = this$0.h();
        kotlin.jvm.internal.r.c(examSiteModelH);
        manualOrderViewModel.c(examSiteModelH.examSiteId);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void q(ManualOrderSettingActivity this$0, List it) {
        kotlin.jvm.internal.r.e(this$0, "this$0");
        com.drakeet.multitype.f fVar = this$0.f4384d;
        kotlin.jvm.internal.r.d(it, "it");
        fVar.i(it);
        this$0.f4384d.notifyDataSetChanged();
    }

    @Override // cn.mucang.android.core.config.t
    public String getStatName() {
        return "指令设置";
    }

    @Override // cn.mucang.android.jiakaoyi.framework.base.ui.BaseActivity, cn.mucang.android.core.config.n, androidx.fragment.app.d, androidx.activity.ComponentActivity, androidx.core.app.f, android.app.Activity
    @SuppressLint({"SetTextI18n"})
    protected void onCreate(Bundle savedInstanceState) {
        androidx.lifecycle.z<List<K3OrderItem>> zVarA;
        super.onCreate(savedInstanceState);
        if (h() == null) {
            finish();
            cn.mucang.android.core.utils.u.h("没有考场数据");
            return;
        }
        this.c = (ManualOrderViewModel) new androidx.lifecycle.m0(this).a(ManualOrderViewModel.class);
        ManualOrderSettingActivityBinding manualOrderSettingActivityBindingInflate = ManualOrderSettingActivityBinding.inflate(getLayoutInflater());
        kotlin.jvm.internal.r.d(manualOrderSettingActivityBindingInflate, "inflate(layoutInflater)");
        this.b = manualOrderSettingActivityBindingInflate;
        if (manualOrderSettingActivityBindingInflate == null) {
            kotlin.jvm.internal.r.u("viewBinding");
            throw null;
        }
        setContentView(manualOrderSettingActivityBindingInflate.getRoot());
        ManualOrderSettingActivityBinding manualOrderSettingActivityBinding = this.b;
        if (manualOrderSettingActivityBinding == null) {
            kotlin.jvm.internal.r.u("viewBinding");
            throw null;
        }
        manualOrderSettingActivityBinding.titleLayout.backIv.setOnClickListener(new View.OnClickListener() { // from class: cn.mucang.android.jiakaoyi.k3setting.order.c1
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                ManualOrderSettingActivity.n(this.f4416a, view);
            }
        });
        ManualOrderSettingActivityBinding manualOrderSettingActivityBinding2 = this.b;
        if (manualOrderSettingActivityBinding2 == null) {
            kotlin.jvm.internal.r.u("viewBinding");
            throw null;
        }
        manualOrderSettingActivityBinding2.titleLayout.actionTv.setVisibility(0);
        ManualOrderSettingActivityBinding manualOrderSettingActivityBinding3 = this.b;
        if (manualOrderSettingActivityBinding3 == null) {
            kotlin.jvm.internal.r.u("viewBinding");
            throw null;
        }
        manualOrderSettingActivityBinding3.titleLayout.actionTv.setText("重置");
        ManualOrderSettingActivityBinding manualOrderSettingActivityBinding4 = this.b;
        if (manualOrderSettingActivityBinding4 == null) {
            kotlin.jvm.internal.r.u("viewBinding");
            throw null;
        }
        manualOrderSettingActivityBinding4.titleLayout.actionTv.setOnClickListener(new View.OnClickListener() { // from class: cn.mucang.android.jiakaoyi.k3setting.order.a1
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                ManualOrderSettingActivity.o(this.f4391a, view);
            }
        });
        ManualOrderSettingActivityBinding manualOrderSettingActivityBinding5 = this.b;
        if (manualOrderSettingActivityBinding5 == null) {
            kotlin.jvm.internal.r.u("viewBinding");
            throw null;
        }
        TextView textView = manualOrderSettingActivityBinding5.titleLayout.titleTv;
        StringBuilder sb = new StringBuilder();
        sb.append("手控指令（");
        ExamSiteModel examSiteModelH = h();
        sb.append((Object) (examSiteModelH == null ? null : examSiteModelH.examSiteName));
        sb.append((char) 65289);
        textView.setText(sb.toString());
        this.f4384d.g(K3OrderItem.class, new K3OrderItemBinder());
        ManualOrderSettingActivityBinding manualOrderSettingActivityBinding6 = this.b;
        if (manualOrderSettingActivityBinding6 == null) {
            kotlin.jvm.internal.r.u("viewBinding");
            throw null;
        }
        manualOrderSettingActivityBinding6.recyclerView.setAdapter(this.f4384d);
        i();
        ManualOrderViewModel manualOrderViewModel = this.c;
        if (manualOrderViewModel != null && (zVarA = manualOrderViewModel.a()) != null) {
            zVarA.h(this, new androidx.lifecycle.a0() { // from class: cn.mucang.android.jiakaoyi.k3setting.order.d1
                @Override // androidx.lifecycle.a0
                public final void onChanged(Object obj) {
                    ManualOrderSettingActivity.q(this.f4419a, (List) obj);
                }
            });
        }
        ManualOrderViewModel manualOrderViewModel2 = this.c;
        if (manualOrderViewModel2 == null) {
            return;
        }
        ExamSiteModel examSiteModelH2 = h();
        kotlin.jvm.internal.r.c(examSiteModelH2);
        manualOrderViewModel2.b(examSiteModelH2.examSiteId);
    }

    @Override // cn.mucang.android.core.config.n, androidx.appcompat.app.d, androidx.fragment.app.d, android.app.Activity
    protected void onDestroy() {
        ManualOrderViewModel manualOrderViewModel = this.c;
        if (manualOrderViewModel != null) {
            ExamSiteModel examSiteModelH = h();
            kotlin.jvm.internal.r.c(examSiteModelH);
            manualOrderViewModel.d(examSiteModelH.examSiteId);
        }
        super.onDestroy();
    }
}
