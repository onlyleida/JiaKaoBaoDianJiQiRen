package cn.mucang.android.jiakaoyi.k3setting.order;

import android.content.Intent;
import android.view.View;
import androidx.recyclerview.widget.LinearLayoutManager;
import cn.mucang.android.core.widget.StateLayout;
import cn.mucang.android.jiakaoyi.exam.k3.light.LightOrderStandard;
import cn.mucang.android.jiakaoyi.framework.base.model.LoadingState;
import cn.mucang.android.jiakaoyi.framework.base.ui.BaseViewBindingActivity;
import cn.mucang.android.jiakaoyi.k3setting.databinding.ActivityLightOrderStandarListBinding;
import cn.mucang.android.jiakaoyi.k3setting.order.item.LightStandardBinder;
import cn.mucang.android.jiakaoyi.k3setting.order.viewmodel.LightOrderStandardsViewModel;
import cn.mucang.jiakaoyi.uilib.model.ExamSiteModel;
import cn.mucang.jiakaoyi.uilib.model.ListLiveData;
import cn.mucang.jiakaoyi.uilib.utils.ExamSiteUtil;
import java.util.List;
import kotlin.Lazy;
import kotlin.Metadata;
import kotlin.jvm.functions.Function0;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000>\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0002\u0018\u0000 \u00182\b\u0012\u0004\u0012\u00020\u00020\u0001:\u0001\u0018B\u0005¢\u0006\u0002\u0010\u0003J\b\u0010\u0014\u001a\u00020\u0015H\u0016J\b\u0010\u0016\u001a\u00020\u0017H\u0014R\u001b\u0010\u0004\u001a\u00020\u00058BX\u0082\u0084\u0002¢\u0006\f\n\u0004\b\b\u0010\t\u001a\u0004\b\u0006\u0010\u0007R\u001d\u0010\n\u001a\u0004\u0018\u00010\u000b8BX\u0082\u0084\u0002¢\u0006\f\n\u0004\b\u000e\u0010\t\u001a\u0004\b\f\u0010\rR\u0014\u0010\u000f\u001a\b\u0012\u0004\u0012\u00020\u00110\u0010X\u0082\u0004¢\u0006\u0002\n\u0000R\u0010\u0010\u0012\u001a\u0004\u0018\u00010\u0013X\u0082\u000e¢\u0006\u0002\n\u0000¨\u0006\u0019"}, d2 = {"Lcn/mucang/android/jiakaoyi/k3setting/order/LightOrderStandardListActivity;", "Lcn/mucang/android/jiakaoyi/framework/base/ui/BaseViewBindingActivity;", "Lcn/mucang/android/jiakaoyi/k3setting/databinding/ActivityLightOrderStandarListBinding;", "()V", "curConfigId", "", "getCurConfigId", "()I", "curConfigId$delegate", "Lkotlin/Lazy;", "examSite", "Lcn/mucang/jiakaoyi/uilib/model/ExamSiteModel;", "getExamSite", "()Lcn/mucang/jiakaoyi/uilib/model/ExamSiteModel;", "examSite$delegate", "onStandardSelected", "Lcn/mucang/android/jiakaoyi/framework/listeners/Callback;", "Lcn/mucang/android/jiakaoyi/exam/k3/light/LightOrderStandard;", "viewModel", "Lcn/mucang/android/jiakaoyi/k3setting/order/viewmodel/LightOrderStandardsViewModel;", "getStatName", "", "init", "", "Companion", "k3setting_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
public final class LightOrderStandardListActivity extends BaseViewBindingActivity<ActivityLightOrderStandarListBinding> {
    private final Lazy b = kotlin.i.b(new Function0<ExamSiteModel>() { // from class: cn.mucang.android.jiakaoyi.k3setting.order.LightOrderStandardListActivity$examSite$2
        /* JADX WARN: Can't rename method to resolve collision */
        @Override // kotlin.jvm.functions.Function0
        public final ExamSiteModel invoke() {
            return ExamSiteUtil.d();
        }
    });
    private final Lazy c = kotlin.i.b(new Function0<Integer>() { // from class: cn.mucang.android.jiakaoyi.k3setting.order.LightOrderStandardListActivity$curConfigId$2
        {
            super(0);
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // kotlin.jvm.functions.Function0
        public final Integer invoke() {
            return Integer.valueOf(this.this$0.getIntent().getIntExtra("key.configId", 0));
        }
    });

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final cn.mucang.android.jiakaoyi.framework.h.b<LightOrderStandard> f4380d = new cn.mucang.android.jiakaoyi.framework.h.b() { // from class: cn.mucang.android.jiakaoyi.k3setting.order.x0
        @Override // cn.mucang.android.jiakaoyi.framework.h.b
        public final void callback(Object obj) {
            LightOrderStandardListActivity.u(this.f4484a, (LightOrderStandard) obj);
        }
    };

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private LightOrderStandardsViewModel f4381e;

    @Metadata(k = 3, mv = {1, 5, 1}, xi = 48)
    public /* synthetic */ class a {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public static final /* synthetic */ int[] f4382a;

        static {
            int[] iArr = new int[LoadingState.values().length];
            iArr[LoadingState.Loading.ordinal()] = 1;
            iArr[LoadingState.Fail.ordinal()] = 2;
            f4382a = iArr;
        }
    }

    private final int j() {
        return ((Number) this.c.getValue()).intValue();
    }

    private final ExamSiteModel k() {
        return (ExamSiteModel) this.b.getValue();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void l(LightOrderStandardListActivity this$0, View view) {
        kotlin.jvm.internal.r.e(this$0, "this$0");
        this$0.finish();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void m(com.drakeet.multitype.f adapter, LightOrderStandardListActivity this$0, List it) {
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
    public static final void n(LightOrderStandardListActivity this$0, LoadingState loadingState) {
        kotlin.jvm.internal.r.e(this$0, "this$0");
        int i = loadingState == null ? -1 : a.f4382a[loadingState.ordinal()];
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
    public static final void o(LightOrderStandardListActivity this$0) {
        kotlin.jvm.internal.r.e(this$0, "this$0");
        ExamSiteModel examSiteModelK = this$0.k();
        if (examSiteModelK == null) {
            return;
        }
        long j = examSiteModelK.examSiteId;
        LightOrderStandardsViewModel lightOrderStandardsViewModel = this$0.f4381e;
        if (lightOrderStandardsViewModel == null) {
            return;
        }
        lightOrderStandardsViewModel.i(j);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void u(LightOrderStandardListActivity this$0, LightOrderStandard lightOrderStandard) {
        kotlin.jvm.internal.r.e(this$0, "this$0");
        Intent intent = new Intent();
        intent.putExtra("key.chooseResult", lightOrderStandard);
        this$0.setResult(-1, intent);
        this$0.finish();
    }

    @Override // cn.mucang.android.core.config.t
    public String getStatName() {
        return "评判指令列表";
    }

    @Override // cn.mucang.android.jiakaoyi.framework.base.ui.BaseViewBindingActivity
    protected void init() {
        androidx.lifecycle.z<LoadingState> zVarB;
        ListLiveData<LightOrderStandard> listLiveDataJ;
        if (k() == null) {
            finish();
            cn.mucang.android.core.utils.u.h("没有考场数据");
            return;
        }
        this.f4381e = (LightOrderStandardsViewModel) new androidx.lifecycle.m0(this).a(LightOrderStandardsViewModel.class);
        g().titleLayout.titleTv.setText("选择评判标准");
        g().titleLayout.backIv.setOnClickListener(new View.OnClickListener() { // from class: cn.mucang.android.jiakaoyi.k3setting.order.v0
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                LightOrderStandardListActivity.l(this.f4472a, view);
            }
        });
        final com.drakeet.multitype.f fVar = new com.drakeet.multitype.f(null, 0, null, 7, null);
        fVar.g(LightOrderStandard.class, new LightStandardBinder(this.f4380d, j()));
        g().recyclerView.setAdapter(fVar);
        g().recyclerView.setLayoutManager(new LinearLayoutManager(this));
        LightOrderStandardsViewModel lightOrderStandardsViewModel = this.f4381e;
        if (lightOrderStandardsViewModel != null && (listLiveDataJ = lightOrderStandardsViewModel.j()) != null) {
            listLiveDataJ.h(this, new androidx.lifecycle.a0() { // from class: cn.mucang.android.jiakaoyi.k3setting.order.w0
                @Override // androidx.lifecycle.a0
                public final void onChanged(Object obj) {
                    LightOrderStandardListActivity.m(fVar, this, (List) obj);
                }
            });
        }
        LightOrderStandardsViewModel lightOrderStandardsViewModel2 = this.f4381e;
        if (lightOrderStandardsViewModel2 != null && (zVarB = lightOrderStandardsViewModel2.b()) != null) {
            zVarB.h(this, new androidx.lifecycle.a0() { // from class: cn.mucang.android.jiakaoyi.k3setting.order.y0
                @Override // androidx.lifecycle.a0
                public final void onChanged(Object obj) {
                    LightOrderStandardListActivity.n(this.f4487a, (LoadingState) obj);
                }
            });
        }
        g().stateLayout.setOnRefreshListener(new StateLayout.c() { // from class: cn.mucang.android.jiakaoyi.k3setting.order.z0
            @Override // cn.mucang.android.core.widget.StateLayout.c
            public final void a() {
                LightOrderStandardListActivity.o(this.f4490a);
            }
        });
        ExamSiteModel examSiteModelK = k();
        if (examSiteModelK == null) {
            return;
        }
        long j = examSiteModelK.examSiteId;
        LightOrderStandardsViewModel lightOrderStandardsViewModel3 = this.f4381e;
        if (lightOrderStandardsViewModel3 == null) {
            return;
        }
        lightOrderStandardsViewModel3.i(j);
    }
}
