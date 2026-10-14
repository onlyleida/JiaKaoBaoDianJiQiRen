package cn.mucang.android.jiakaoyi.k3collect.manager.map;

import android.app.ProgressDialog;
import android.content.Context;
import android.content.Intent;
import android.view.View;
import androidx.fragment.app.FragmentManager;
import androidx.lifecycle.a0;
import androidx.recyclerview.widget.LinearLayoutManager;
import androidx.recyclerview.widget.RecyclerView;
import cn.mucang.android.core.api.ApiResponse;
import cn.mucang.android.core.api.exception.ApiException;
import cn.mucang.android.core.widget.StateLayout;
import cn.mucang.android.jiakaoyi.framework.base.dialog.JLoadingDialog;
import cn.mucang.android.jiakaoyi.framework.base.model.LoadingState;
import cn.mucang.android.jiakaoyi.framework.base.ui.BaseViewBindingActivity;
import cn.mucang.android.jiakaoyi.framework.utils.ActivityUtils;
import cn.mucang.android.jiakaoyi.k3collect.K3PosCollectActivity;
import cn.mucang.android.jiakaoyi.k3collect.databinding.ActivityK3MapManagerBinding;
import cn.mucang.jiakaoyi.uilib.model.ExamSiteModel;
import java.util.List;
import kotlin.Metadata;
import kotlin.Result;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.functions.Function6;
import kotlinx.coroutines.CoroutineDispatcher;
import kotlinx.coroutines.i0;
import kotlinx.coroutines.j0;
import kotlinx.coroutines.w0;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000*\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0003\u0018\u0000 \r2\b\u0012\u0004\u0012\u00020\u00020\u0001:\u0001\rB\u0005¢\u0006\u0002\u0010\u0003J\b\u0010\b\u001a\u00020\tH\u0016J\b\u0010\n\u001a\u00020\u000bH\u0014J\b\u0010\f\u001a\u00020\u000bH\u0014R\u0010\u0010\u0004\u001a\u0004\u0018\u00010\u0005X\u0082\u000e¢\u0006\u0002\n\u0000R\u000e\u0010\u0006\u001a\u00020\u0007X\u0082.¢\u0006\u0002\n\u0000¨\u0006\u000e"}, d2 = {"Lcn/mucang/android/jiakaoyi/k3collect/manager/map/K3MapManagerActivity;", "Lcn/mucang/android/jiakaoyi/framework/base/ui/BaseViewBindingActivity;", "Lcn/mucang/android/jiakaoyi/k3collect/databinding/ActivityK3MapManagerBinding;", "()V", "loadingDialog", "Lcn/mucang/android/jiakaoyi/framework/base/dialog/JLoadingDialog;", "viewModel", "Lcn/mucang/android/jiakaoyi/k3collect/manager/map/K3MapViewModel;", "getStatName", "", "init", "", "onResume", "Companion", "MapCollectK3_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
public final class K3MapManagerActivity extends BaseViewBindingActivity<ActivityK3MapManagerBinding> {

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public static final a f4088d = new a(null);
    private K3MapViewModel b;
    private JLoadingDialog c;

    @Metadata(d1 = {"\u0000\u001e\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\b\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J\u000e\u0010\u0005\u001a\u00020\u00062\u0006\u0010\u0007\u001a\u00020\bR\u000e\u0010\u0003\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n\u0000¨\u0006\t"}, d2 = {"Lcn/mucang/android/jiakaoyi/k3collect/manager/map/K3MapManagerActivity$Companion;", "", "()V", "TAG", "", "launch", "", "activity", "Landroid/content/Context;", "MapCollectK3_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
    public static final class a {
        private a() {
        }

        public /* synthetic */ a(kotlin.jvm.internal.o oVar) {
            this();
        }

        public final void a(Context activity) {
            kotlin.jvm.internal.r.e(activity, "activity");
            ActivityUtils.c(activity, new Intent(activity, (Class<?>) K3MapManagerActivity.class));
        }
    }

    @Metadata(k = 3, mv = {1, 5, 1}, xi = 48)
    public /* synthetic */ class b {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public static final /* synthetic */ int[] f4089a;

        static {
            int[] iArr = new int[LoadingState.values().length];
            iArr[LoadingState.Loading.ordinal()] = 1;
            iArr[LoadingState.Fail.ordinal()] = 2;
            iArr[LoadingState.Success.ordinal()] = 3;
            f4089a = iArr;
        }
    }

    @Metadata(d1 = {"\u0000\u001f\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0002\b\u0002*\u0001\u0000\b\n\u0018\u00002\u00020\u0001J \u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u00052\u0006\u0010\u0006\u001a\u00020\u00072\u0006\u0010\b\u001a\u00020\u0007H\u0016¨\u0006\t"}, d2 = {"cn/mucang/android/jiakaoyi/k3collect/manager/map/K3MapManagerActivity$init$3", "Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;", "onScrolled", "", "recyclerView", "Landroidx/recyclerview/widget/RecyclerView;", "dx", "", "dy", "MapCollectK3_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
    public static final class c extends RecyclerView.t {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        final /* synthetic */ d f4090a;
        final /* synthetic */ K3MapManagerActivity b;

        c(d dVar, K3MapManagerActivity k3MapManagerActivity) {
            this.f4090a = dVar;
            this.b = k3MapManagerActivity;
        }

        @Override // androidx.recyclerview.widget.RecyclerView.t
        public void onScrolled(RecyclerView recyclerView, int dx, int dy) {
            kotlin.jvm.internal.r.e(recyclerView, "recyclerView");
            super.onScrolled(recyclerView, dx, dy);
            LinearLayoutManager linearLayoutManager = (LinearLayoutManager) recyclerView.getLayoutManager();
            if (linearLayoutManager == null || linearLayoutManager.findLastVisibleItemPosition() <= this.f4090a.getItemCount() - 2 || this.f4090a.getItemCount() <= 0) {
                return;
            }
            K3MapViewModel k3MapViewModel = this.b.b;
            if (k3MapViewModel != null) {
                k3MapViewModel.o(false);
            } else {
                kotlin.jvm.internal.r.u("viewModel");
                throw null;
            }
        }
    }

    @Metadata(d1 = {"\u0000\u000b\n\u0000\n\u0002\u0018\u0002\n\u0000*\u0001\u0000\b\n\u0018\u00002\u00020\u0001¨\u0006\u0002"}, d2 = {"cn/mucang/android/jiakaoyi/k3collect/manager/map/K3MapManagerActivity$init$adapter$1", "Lcom/drakeet/multitype/MultiTypeAdapter;", "MapCollectK3_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
    public static final class d extends com.drakeet.multitype.f {
        d() {
            super(null, 0, null, 7, null);
            K3MapViewModel k3MapViewModel = K3MapManagerActivity.this.b;
            if (k3MapViewModel == null) {
                kotlin.jvm.internal.r.u("viewModel");
                throw null;
            }
            FragmentManager supportFragmentManager = K3MapManagerActivity.this.getSupportFragmentManager();
            kotlin.jvm.internal.r.d(supportFragmentManager, "supportFragmentManager");
            g(ExamSiteModel.class, new K3MapItemBinder(k3MapViewModel, supportFragmentManager));
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void k(K3MapManagerActivity this$0, View view) {
        kotlin.jvm.internal.r.e(this$0, "this$0");
        this$0.finish();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void l(final K3MapManagerActivity this$0, final View view) {
        kotlin.jvm.internal.r.e(this$0, "this$0");
        K3SiteMapEditDialog k3SiteMapEditDialog = new K3SiteMapEditDialog(null);
        k3SiteMapEditDialog.J(new Function6<String, String, String, String, Long, Boolean, kotlin.v>() { // from class: cn.mucang.android.jiakaoyi.k3collect.manager.map.K3MapManagerActivity$init$2$1

            /* JADX INFO: renamed from: cn.mucang.android.jiakaoyi.k3collect.manager.map.K3MapManagerActivity$init$2$1$2, reason: invalid class name */
            @Metadata(d1 = {"\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\u008a@"}, d2 = {"<anonymous>", "", "Lkotlinx/coroutines/CoroutineScope;"}, k = 3, mv = {1, 5, 1}, xi = 48)
            @DebugMetadata(c = "cn.mucang.android.jiakaoyi.k3collect.manager.map.K3MapManagerActivity$init$2$1$2", f = "K3MapManagerActivity.kt", l = {89}, m = "invokeSuspend")
            static final class AnonymousClass2 extends SuspendLambda implements Function2<i0, Continuation<? super kotlin.v>, Object> {
                final /* synthetic */ View $it;
                final /* synthetic */ ExamSiteModel $newModel;
                final /* synthetic */ ProgressDialog $pd;
                int label;

                /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                AnonymousClass2(View view, ProgressDialog progressDialog, ExamSiteModel examSiteModel, Continuation<? super AnonymousClass2> continuation) {
                    super(2, continuation);
                    this.$it = view;
                    this.$pd = progressDialog;
                    this.$newModel = examSiteModel;
                }

                @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
                public final Continuation<kotlin.v> create(Object obj, Continuation<?> continuation) {
                    return new AnonymousClass2(this.$it, this.$pd, this.$newModel, continuation);
                }

                @Override // kotlin.jvm.functions.Function2
                public final Object invoke(i0 i0Var, Continuation<? super kotlin.v> continuation) {
                    return ((AnonymousClass2) create(i0Var, continuation)).invokeSuspend(kotlin.v.f15822a);
                }

                @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
                public final Object invokeSuspend(Object obj) throws Throwable {
                    Object objD = kotlin.coroutines.intrinsics.b.d();
                    int i = this.label;
                    String message = null;
                    try {
                        if (i == 0) {
                            kotlin.k.b(obj);
                            CoroutineDispatcher coroutineDispatcherB = w0.b();
                            K3MapManagerActivity$init$2$1$2$result$1 k3MapManagerActivity$init$2$1$2$result$1 = new K3MapManagerActivity$init$2$1$2$result$1(this.$newModel, null);
                            this.label = 1;
                            obj = kotlinx.coroutines.f.c(coroutineDispatcherB, k3MapManagerActivity$init$2$1$2$result$1, this);
                            if (obj == objD) {
                                return objD;
                            }
                        } else {
                            if (i != 1) {
                                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                            }
                            kotlin.k.b(obj);
                        }
                        Object value = ((Result) obj).getValue();
                        K3PosCollectActivity.Companion companion = K3PosCollectActivity.I;
                        Context context = this.$it.getContext();
                        kotlin.jvm.internal.r.d(context, "it.context");
                        kotlin.k.b(value);
                        companion.b(context, (ExamSiteModel) value);
                        if (this.$pd.isShowing()) {
                        }
                    } catch (Exception e2) {
                        if (e2 instanceof ApiException) {
                            ApiResponse apiResponse = ((ApiException) e2).getApiResponse();
                            if (apiResponse != null) {
                                message = apiResponse.getMessage();
                            }
                            cn.mucang.android.core.utils.u.h(message);
                        } else {
                            cn.mucang.android.core.utils.u.h(e2.getLocalizedMessage());
                        }
                    } finally {
                        if (this.$pd.isShowing()) {
                            this.$pd.dismiss();
                        }
                    }
                    return kotlin.v.f15822a;
                }
            }

            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            {
                super(6);
            }

            @Override // kotlin.jvm.functions.Function6
            public /* bridge */ /* synthetic */ kotlin.v invoke(String str, String str2, String str3, String str4, Long l, Boolean bool) {
                invoke(str, str2, str3, str4, l, bool.booleanValue());
                return kotlin.v.f15822a;
            }

            public final void invoke(String examSiteId, String siteName, String city, String str, Long l, boolean z) {
                kotlin.jvm.internal.r.e(examSiteId, "examSiteId");
                kotlin.jvm.internal.r.e(siteName, "siteName");
                kotlin.jvm.internal.r.e(city, "city");
                ExamSiteModel examSiteModel = new ExamSiteModel();
                examSiteModel.examSiteId = Long.parseLong(examSiteId);
                examSiteModel.examSiteName = siteName;
                examSiteModel.cityName = city;
                examSiteModel.cityCode = str;
                examSiteModel.canPublic = z;
                if (l != null) {
                    examSiteModel.gpsBaseId = l.longValue();
                }
                if (examSiteModel.gpsBaseId <= 0) {
                    cn.mucang.android.core.utils.u.h("无效的基站Id");
                    return;
                }
                ProgressDialog progressDialogShow = ProgressDialog.show(this.this$0, null, "正在创建...");
                kotlin.jvm.internal.r.d(progressDialogShow, "show(this, null, \"正在创建...\")");
                kotlinx.coroutines.g.b(j0.a(w0.c()), null, null, new AnonymousClass2(view, progressDialogShow, examSiteModel, null), 3, null);
            }
        });
        k3SiteMapEditDialog.show(this$0.getSupportFragmentManager(), "type_collect");
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void m(d adapter, K3MapManagerActivity this$0, List it) {
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
    public static final void n(K3MapManagerActivity this$0, LoadingState loadingState) {
        kotlin.jvm.internal.r.e(this$0, "this$0");
        int i = loadingState == null ? -1 : b.f4089a[loadingState.ordinal()];
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
    public static final void o(K3MapManagerActivity this$0, LoadingState loadingState) {
        kotlin.jvm.internal.r.e(this$0, "this$0");
        int i = loadingState == null ? -1 : b.f4089a[loadingState.ordinal()];
        if (i == 1) {
            JLoadingDialog jLoadingDialog = new JLoadingDialog(this$0);
            this$0.c = jLoadingDialog;
            if (jLoadingDialog == null) {
                return;
            }
            jLoadingDialog.b("");
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
    public static final void p(K3MapManagerActivity this$0) {
        kotlin.jvm.internal.r.e(this$0, "this$0");
        K3MapViewModel k3MapViewModel = this$0.b;
        if (k3MapViewModel != null) {
            k3MapViewModel.o(true);
        } else {
            kotlin.jvm.internal.r.u("viewModel");
            throw null;
        }
    }

    @Override // cn.mucang.android.core.config.t
    public String getStatName() {
        return "科三高精度地图管理";
    }

    @Override // cn.mucang.android.jiakaoyi.framework.base.ui.BaseViewBindingActivity
    protected void init() {
        super.init();
        androidx.lifecycle.j0 j0VarCreate = getDefaultViewModelProviderFactory().create(K3MapViewModel.class);
        kotlin.jvm.internal.r.d(j0VarCreate, "defaultViewModelProvider…MapViewModel::class.java)");
        this.b = (K3MapViewModel) j0VarCreate;
        g().titleLayout.backIv.setOnClickListener(new View.OnClickListener() { // from class: cn.mucang.android.jiakaoyi.k3collect.manager.map.l
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                K3MapManagerActivity.k(this.f4125a, view);
            }
        });
        g().titleLayout.titleTv.setText("高精度地图管理");
        g().newSiteTv.setOnClickListener(new View.OnClickListener() { // from class: cn.mucang.android.jiakaoyi.k3collect.manager.map.j
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                K3MapManagerActivity.l(this.f4123a, view);
            }
        });
        final d dVar = new d();
        g().recyclerView.setAdapter(dVar);
        g().recyclerView.setLayoutManager(new LinearLayoutManager(this));
        g().recyclerView.addOnScrollListener(new c(dVar, this));
        K3MapViewModel k3MapViewModel = this.b;
        if (k3MapViewModel == null) {
            kotlin.jvm.internal.r.u("viewModel");
            throw null;
        }
        k3MapViewModel.n().h(this, new a0() { // from class: cn.mucang.android.jiakaoyi.k3collect.manager.map.n
            @Override // androidx.lifecycle.a0
            public final void onChanged(Object obj) {
                K3MapManagerActivity.m(dVar, this, (List) obj);
            }
        });
        K3MapViewModel k3MapViewModel2 = this.b;
        if (k3MapViewModel2 == null) {
            kotlin.jvm.internal.r.u("viewModel");
            throw null;
        }
        k3MapViewModel2.b().h(this, new a0() { // from class: cn.mucang.android.jiakaoyi.k3collect.manager.map.o
            @Override // androidx.lifecycle.a0
            public final void onChanged(Object obj) {
                K3MapManagerActivity.n(this.f4143a, (LoadingState) obj);
            }
        });
        K3MapViewModel k3MapViewModel3 = this.b;
        if (k3MapViewModel3 == null) {
            kotlin.jvm.internal.r.u("viewModel");
            throw null;
        }
        k3MapViewModel3.a().h(this, new a0() { // from class: cn.mucang.android.jiakaoyi.k3collect.manager.map.k
            @Override // androidx.lifecycle.a0
            public final void onChanged(Object obj) {
                K3MapManagerActivity.o(this.f4124a, (LoadingState) obj);
            }
        });
        g().stateLayout.setOnRefreshListener(new StateLayout.c() { // from class: cn.mucang.android.jiakaoyi.k3collect.manager.map.m
            @Override // cn.mucang.android.core.widget.StateLayout.c
            public final void a() {
                K3MapManagerActivity.p(this.f4126a);
            }
        });
    }

    @Override // cn.mucang.android.core.config.n, androidx.fragment.app.d, android.app.Activity
    protected void onResume() {
        super.onResume();
        K3MapViewModel k3MapViewModel = this.b;
        if (k3MapViewModel != null) {
            k3MapViewModel.o(true);
        } else {
            kotlin.jvm.internal.r.u("viewModel");
            throw null;
        }
    }
}
