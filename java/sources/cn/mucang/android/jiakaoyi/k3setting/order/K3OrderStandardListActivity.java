package cn.mucang.android.jiakaoyi.k3setting.order;

import android.content.Intent;
import android.view.View;
import androidx.recyclerview.widget.LinearLayoutManager;
import cn.mucang.android.jiakaoyi.framework.base.ui.BaseViewBindingActivity;
import cn.mucang.android.jiakaoyi.k3setting.databinding.ActivityLightOrderStandarListBinding;
import cn.mucang.android.jiakaoyi.k3setting.order.item.K3OrderStandardBinder;
import cn.mucang.android.jiakaoyi.k3setting.order.viewmodel.K3RouteStepViewModel;
import cn.mucang.jiakaoyi.uilib.model.ExamSiteModel;
import cn.mucang.jiakaoyi.uilib.model.StepOrderItem;
import cn.mucang.jiakaoyi.uilib.utils.ExamSiteUtil;
import java.util.List;
import kotlin.Lazy;
import kotlin.Metadata;
import kotlin.jvm.functions.Function0;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000@\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0002\u0018\u0000 \u001b2\b\u0012\u0004\u0012\u00020\u00020\u0001:\u0001\u001bB\u0005¢\u0006\u0002\u0010\u0003J\b\u0010\u0017\u001a\u00020\u0018H\u0016J\b\u0010\u0019\u001a\u00020\u001aH\u0014R\u001d\u0010\u0004\u001a\u0004\u0018\u00010\u00058BX\u0082\u0084\u0002¢\u0006\f\n\u0004\b\b\u0010\t\u001a\u0004\b\u0006\u0010\u0007R\u0014\u0010\n\u001a\b\u0012\u0004\u0012\u00020\f0\u000bX\u0082\u0004¢\u0006\u0002\n\u0000R\u001b\u0010\r\u001a\u00020\u000e8BX\u0082\u0084\u0002¢\u0006\f\n\u0004\b\u0011\u0010\t\u001a\u0004\b\u000f\u0010\u0010R\u001b\u0010\u0012\u001a\u00020\u00138BX\u0082\u0084\u0002¢\u0006\f\n\u0004\b\u0016\u0010\t\u001a\u0004\b\u0014\u0010\u0015¨\u0006\u001c"}, d2 = {"Lcn/mucang/android/jiakaoyi/k3setting/order/K3OrderStandardListActivity;", "Lcn/mucang/android/jiakaoyi/framework/base/ui/BaseViewBindingActivity;", "Lcn/mucang/android/jiakaoyi/k3setting/databinding/ActivityLightOrderStandarListBinding;", "()V", "examSite", "Lcn/mucang/jiakaoyi/uilib/model/ExamSiteModel;", "getExamSite", "()Lcn/mucang/jiakaoyi/uilib/model/ExamSiteModel;", "examSite$delegate", "Lkotlin/Lazy;", "onStandardSelected", "Lcn/mucang/android/jiakaoyi/framework/listeners/Callback;", "Lcn/mucang/jiakaoyi/uilib/model/StepOrderItem;", "stepType", "", "getStepType", "()I", "stepType$delegate", "viewModel", "Lcn/mucang/android/jiakaoyi/k3setting/order/viewmodel/K3RouteStepViewModel;", "getViewModel", "()Lcn/mucang/android/jiakaoyi/k3setting/order/viewmodel/K3RouteStepViewModel;", "viewModel$delegate", "getStatName", "", "init", "", "Companion", "k3setting_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
public final class K3OrderStandardListActivity extends BaseViewBindingActivity<ActivityLightOrderStandarListBinding> {
    private final Lazy b = kotlin.i.b(new Function0<ExamSiteModel>() { // from class: cn.mucang.android.jiakaoyi.k3setting.order.K3OrderStandardListActivity$examSite$2
        /* JADX WARN: Can't rename method to resolve collision */
        @Override // kotlin.jvm.functions.Function0
        public final ExamSiteModel invoke() {
            return ExamSiteUtil.d();
        }
    });
    private final Lazy c = kotlin.i.b(new Function0<K3RouteStepViewModel>() { // from class: cn.mucang.android.jiakaoyi.k3setting.order.K3OrderStandardListActivity$viewModel$2
        {
            super(0);
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // kotlin.jvm.functions.Function0
        public final K3RouteStepViewModel invoke() {
            androidx.lifecycle.j0 j0VarA = new androidx.lifecycle.m0(this.this$0).a(K3RouteStepViewModel.class);
            kotlin.jvm.internal.r.d(j0VarA, "ViewModelProvider(this).…tepViewModel::class.java)");
            return (K3RouteStepViewModel) j0VarA;
        }
    });

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final Lazy f4348d = kotlin.i.b(new Function0<Integer>() { // from class: cn.mucang.android.jiakaoyi.k3setting.order.K3OrderStandardListActivity$stepType$2
        {
            super(0);
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // kotlin.jvm.functions.Function0
        public final Integer invoke() {
            return Integer.valueOf(this.this$0.getIntent().getIntExtra("key.stepType", 0));
        }
    });

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private final cn.mucang.android.jiakaoyi.framework.h.b<StepOrderItem> f4349e = new cn.mucang.android.jiakaoyi.framework.h.b() { // from class: cn.mucang.android.jiakaoyi.k3setting.order.d
        @Override // cn.mucang.android.jiakaoyi.framework.h.b
        public final void callback(Object obj) {
            K3OrderStandardListActivity.r(this.f4417a, (StepOrderItem) obj);
        }
    };

    private final ExamSiteModel j() {
        return (ExamSiteModel) this.b.getValue();
    }

    private final int k() {
        return ((Number) this.f4348d.getValue()).intValue();
    }

    private final K3RouteStepViewModel l() {
        return (K3RouteStepViewModel) this.c.getValue();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void m(K3OrderStandardListActivity this$0, View view) {
        kotlin.jvm.internal.r.e(this$0, "this$0");
        this$0.finish();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void n(com.drakeet.multitype.f adapter, K3OrderStandardListActivity this$0, List it) {
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
    public static final void r(K3OrderStandardListActivity this$0, StepOrderItem stepOrderItem) {
        kotlin.jvm.internal.r.e(this$0, "this$0");
        Intent intent = new Intent();
        intent.putExtra("key.chooseResult", stepOrderItem);
        this$0.setResult(-1, intent);
        this$0.finish();
    }

    @Override // cn.mucang.android.core.config.t
    public String getStatName() {
        return "路线指令列表";
    }

    @Override // cn.mucang.android.jiakaoyi.framework.base.ui.BaseViewBindingActivity
    protected void init() {
        if (j() == null) {
            finish();
            cn.mucang.android.core.utils.u.h("没有考场数据");
            return;
        }
        g().titleLayout.titleTv.setText("选择评判项目");
        g().titleLayout.backIv.setOnClickListener(new View.OnClickListener() { // from class: cn.mucang.android.jiakaoyi.k3setting.order.f
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                K3OrderStandardListActivity.m(this.f4423a, view);
            }
        });
        final com.drakeet.multitype.f fVar = new com.drakeet.multitype.f(null, 0, null, 7, null);
        fVar.g(StepOrderItem.class, new K3OrderStandardBinder(this.f4349e, k()));
        g().recyclerView.setAdapter(fVar);
        g().recyclerView.setLayoutManager(new LinearLayoutManager(this));
        l().k().h(this, new androidx.lifecycle.a0() { // from class: cn.mucang.android.jiakaoyi.k3setting.order.e
            @Override // androidx.lifecycle.a0
            public final void onChanged(Object obj) {
                K3OrderStandardListActivity.n(fVar, this, (List) obj);
            }
        });
        l().n();
    }
}
