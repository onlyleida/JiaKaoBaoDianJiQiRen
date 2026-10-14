package cn.mucang.android.jiakaoyi.k3collect.manager.map.examSite;

import android.content.Intent;
import android.os.Bundle;
import android.view.View;
import androidx.lifecycle.a0;
import androidx.lifecycle.j0;
import androidx.recyclerview.widget.LinearLayoutManager;
import androidx.recyclerview.widget.RecyclerView;
import cn.mucang.android.core.widget.StateLayout;
import cn.mucang.android.jiakaoyi.framework.base.model.LoadingState;
import cn.mucang.android.jiakaoyi.framework.base.ui.BaseViewBindingActivity;
import cn.mucang.android.jiakaoyi.k3collect.R;
import cn.mucang.android.jiakaoyi.k3collect.databinding.ActivityK3ExamSiteSelectBinding;
import cn.mucang.jiakaoyi.uilib.model.ExamSiteModel;
import java.util.List;
import java.util.Objects;
import kotlin.Metadata;
import kotlin.jvm.internal.r;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000.\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0002\b\u000b\n\u0002\u0010\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\u0018\u00002\b\u0012\u0004\u0012\u00020\u00020\u0001B\u0005¢\u0006\u0002\u0010\u0003J\b\u0010\u0010\u001a\u00020\u0011H\u0002J\b\u0010\u0012\u001a\u00020\u0005H\u0016J\b\u0010\u0013\u001a\u00020\u0011H\u0016J\u0012\u0010\u0014\u001a\u00020\u00112\b\u0010\u0015\u001a\u0004\u0018\u00010\u0016H\u0014J\u000e\u0010\u0017\u001a\u00020\u00112\u0006\u0010\u0018\u001a\u00020\u0019R\u001a\u0010\u0004\u001a\u00020\u0005X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0006\u0010\u0007\"\u0004\b\b\u0010\tR\u001a\u0010\n\u001a\u00020\u0005X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u000b\u0010\u0007\"\u0004\b\f\u0010\tR\u001a\u0010\r\u001a\u00020\u0005X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u000e\u0010\u0007\"\u0004\b\u000f\u0010\t¨\u0006\u001a"}, d2 = {"Lcn/mucang/android/jiakaoyi/k3collect/manager/map/examSite/K3ExamSiteSelectActivity;", "Lcn/mucang/android/jiakaoyi/framework/base/ui/BaseViewBindingActivity;", "Lcn/mucang/android/jiakaoyi/k3collect/databinding/ActivityK3ExamSiteSelectBinding;", "()V", "cityCode", "", "getCityCode", "()Ljava/lang/String;", "setCityCode", "(Ljava/lang/String;)V", "siteId", "getSiteId", "setSiteId", "siteName", "getSiteName", "setSiteName", "finishAndResult", "", "getStatName", "onBackPressed", "onCreate", "savedInstanceState", "Landroid/os/Bundle;", "onSiteClick", "item", "Lcn/mucang/jiakaoyi/uilib/model/ExamSiteModel;", "MapCollectK3_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
public final class K3ExamSiteSelectActivity extends BaseViewBindingActivity<ActivityK3ExamSiteSelectBinding> {
    private String b = "0";
    private String c = "0";

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private String f4102d = "";

    @Metadata(k = 3, mv = {1, 5, 1}, xi = 48)
    public /* synthetic */ class a {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public static final /* synthetic */ int[] f4103a;

        static {
            int[] iArr = new int[LoadingState.values().length];
            iArr[LoadingState.Loading.ordinal()] = 1;
            iArr[LoadingState.Fail.ordinal()] = 2;
            f4103a = iArr;
        }
    }

    @Metadata(d1 = {"\u0000\u001d\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0000*\u0001\u0000\b\n\u0018\u00002\u00020\u0001J\u0018\u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u00052\u0006\u0010\u0006\u001a\u00020\u0007H\u0016¨\u0006\b"}, d2 = {"cn/mucang/android/jiakaoyi/k3collect/manager/map/examSite/K3ExamSiteSelectActivity$onCreate$2", "Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;", "onScrollStateChanged", "", "recyclerView", "Landroidx/recyclerview/widget/RecyclerView;", "newState", "", "MapCollectK3_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
    public static final class b extends RecyclerView.t {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        final /* synthetic */ K3ExamSiteSelectAdapter f4104a;
        final /* synthetic */ K3ExamSiteSelectViewModel b;
        final /* synthetic */ K3ExamSiteSelectActivity c;

        b(K3ExamSiteSelectAdapter k3ExamSiteSelectAdapter, K3ExamSiteSelectViewModel k3ExamSiteSelectViewModel, K3ExamSiteSelectActivity k3ExamSiteSelectActivity) {
            this.f4104a = k3ExamSiteSelectAdapter;
            this.b = k3ExamSiteSelectViewModel;
            this.c = k3ExamSiteSelectActivity;
        }

        @Override // androidx.recyclerview.widget.RecyclerView.t
        public void onScrollStateChanged(RecyclerView recyclerView, int newState) {
            r.e(recyclerView, "recyclerView");
            RecyclerView.o layoutManager = recyclerView.getLayoutManager();
            Objects.requireNonNull(layoutManager, "null cannot be cast to non-null type androidx.recyclerview.widget.LinearLayoutManager");
            int iFindLastVisibleItemPosition = ((LinearLayoutManager) layoutManager).findLastVisibleItemPosition();
            if (this.f4104a.getItemCount() <= 0 || iFindLastVisibleItemPosition < this.f4104a.getItemCount() - 1) {
                return;
            }
            this.b.f(this.c.getB(), false);
        }
    }

    private final void j() {
        Intent intent = new Intent();
        intent.putExtra("siteId", this.c);
        intent.putExtra("siteName", this.f4102d);
        setResult(-1, intent);
        finish();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void p(K3ExamSiteSelectActivity this$0, View view) {
        r.e(this$0, "this$0");
        this$0.j();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void q(K3ExamSiteSelectViewModel viewModel, K3ExamSiteSelectActivity this$0) {
        r.e(viewModel, "$viewModel");
        r.e(this$0, "this$0");
        K3ExamSiteSelectViewModel.g(viewModel, this$0.getB(), false, 2, null);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void r(K3ExamSiteSelectAdapter adapter, LoadingState loadingState) {
        r.e(adapter, "$adapter");
        int i = loadingState == null ? -1 : a.f4103a[loadingState.ordinal()];
        if (i == 1) {
            adapter.q();
        } else {
            if (i != 2) {
                return;
            }
            adapter.r();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void s(K3ExamSiteSelectAdapter adapter, K3ExamSiteSelectViewModel viewModel, List it) {
        r.e(adapter, "$adapter");
        r.e(viewModel, "$viewModel");
        r.d(it, "it");
        adapter.p(it, viewModel.getF4106d());
    }

    @Override // cn.mucang.android.core.config.t
    public String getStatName() {
        return "K3ExamSiteSelect";
    }

    /* JADX INFO: renamed from: k, reason: from getter */
    public final String getB() {
        return this.b;
    }

    @Override // androidx.activity.ComponentActivity, android.app.Activity
    public void onBackPressed() {
        j();
    }

    @Override // cn.mucang.android.jiakaoyi.framework.base.ui.BaseViewBindingActivity, cn.mucang.android.jiakaoyi.framework.base.ui.BaseActivity, cn.mucang.android.core.config.n, androidx.fragment.app.d, androidx.activity.ComponentActivity, androidx.core.app.f, android.app.Activity
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        ActivityK3ExamSiteSelectBinding activityK3ExamSiteSelectBindingInflate = ActivityK3ExamSiteSelectBinding.inflate(getLayoutInflater());
        r.d(activityK3ExamSiteSelectBindingInflate, "inflate(layoutInflater)");
        setContentView(activityK3ExamSiteSelectBindingInflate.getRoot());
        String stringExtra = getIntent().getStringExtra("cityCode");
        if (stringExtra == null) {
            stringExtra = "";
        }
        this.b = stringExtra;
        j0 j0VarCreate = getDefaultViewModelProviderFactory().create(K3ExamSiteSelectViewModel.class);
        r.d(j0VarCreate, "defaultViewModelProvider…ectViewModel::class.java)");
        final K3ExamSiteSelectViewModel k3ExamSiteSelectViewModel = (K3ExamSiteSelectViewModel) j0VarCreate;
        activityK3ExamSiteSelectBindingInflate.titleLayout.titleTv.setText("选择考场");
        activityK3ExamSiteSelectBindingInflate.titleLayout.backIv.setOnClickListener(new View.OnClickListener() { // from class: cn.mucang.android.jiakaoyi.k3collect.manager.map.examSite.b
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                K3ExamSiteSelectActivity.p(this.f4108a, view);
            }
        });
        String str = this.b;
        int i = R.id.stateLayout;
        StateLayout stateLayout = (StateLayout) findViewById(i);
        r.d(stateLayout, "stateLayout");
        final K3ExamSiteSelectAdapter k3ExamSiteSelectAdapter = new K3ExamSiteSelectAdapter(str, this, stateLayout);
        int i2 = R.id.recyclerView;
        ((RecyclerView) findViewById(i2)).addOnScrollListener(new b(k3ExamSiteSelectAdapter, k3ExamSiteSelectViewModel, this));
        ((RecyclerView) findViewById(i2)).setAdapter(k3ExamSiteSelectAdapter);
        ((StateLayout) findViewById(i)).setOnRefreshListener(new StateLayout.c() { // from class: cn.mucang.android.jiakaoyi.k3collect.manager.map.examSite.d
            @Override // cn.mucang.android.core.widget.StateLayout.c
            public final void a() {
                K3ExamSiteSelectActivity.q(k3ExamSiteSelectViewModel, this);
            }
        });
        k3ExamSiteSelectViewModel.d().h(this, new a0() { // from class: cn.mucang.android.jiakaoyi.k3collect.manager.map.examSite.c
            @Override // androidx.lifecycle.a0
            public final void onChanged(Object obj) {
                K3ExamSiteSelectActivity.r(k3ExamSiteSelectAdapter, (LoadingState) obj);
            }
        });
        k3ExamSiteSelectViewModel.e().h(this, new a0() { // from class: cn.mucang.android.jiakaoyi.k3collect.manager.map.examSite.a
            @Override // androidx.lifecycle.a0
            public final void onChanged(Object obj) {
                K3ExamSiteSelectActivity.s(k3ExamSiteSelectAdapter, k3ExamSiteSelectViewModel, (List) obj);
            }
        });
        K3ExamSiteSelectViewModel.g(k3ExamSiteSelectViewModel, this.b, false, 2, null);
    }

    public final void t(ExamSiteModel item) {
        r.e(item, "item");
        this.c = String.valueOf(item.examSiteId);
        String str = item.examSiteName;
        r.d(str, "item.examSiteName");
        this.f4102d = str;
        j();
    }
}
