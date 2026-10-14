package cn.mucang.android.jiakaoyi.k3setting.p003route.manager;

import android.content.Context;
import android.content.Intent;
import android.os.Bundle;
import android.view.View;
import androidx.lifecycle.a0;
import androidx.lifecycle.j0;
import androidx.lifecycle.m0;
import androidx.recyclerview.widget.LinearLayoutManager;
import cn.mucang.android.core.config.MucangConfig;
import cn.mucang.android.core.utils.g;
import cn.mucang.android.core.utils.u;
import cn.mucang.android.core.widget.StateLayout;
import cn.mucang.android.jiakaoyi.framework.base.dialog.JLoadingDialog;
import cn.mucang.android.jiakaoyi.framework.base.model.LoadingState;
import cn.mucang.android.jiakaoyi.framework.utils.ActivityUtils;
import cn.mucang.android.jiakaoyi.k3setting.LocalRouteUtil;
import cn.mucang.android.jiakaoyi.k3setting.R;
import cn.mucang.android.jiakaoyi.k3setting.databinding.RouteResetActivityBinding;
import cn.mucang.jiakaoyi.uilib.model.ExamSiteModel;
import cn.mucang.jiakaoyi.uilib.model.LocalRoute;
import com.drakeet.multitype.f;
import java.io.Serializable;
import java.util.List;
import kotlin.Lazy;
import kotlin.Metadata;
import kotlin.i;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.o;
import kotlin.jvm.internal.r;
import kotlin.v;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000<\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\u0018\u0000 \u00162\u00020\u0001:\u0001\u0016B\u0005¢\u0006\u0002\u0010\u0002J\b\u0010\u0011\u001a\u00020\fH\u0016J\u0012\u0010\u0012\u001a\u00020\u00132\b\u0010\u0014\u001a\u0004\u0018\u00010\u0015H\u0014R\u001b\u0010\u0003\u001a\u00020\u00048BX\u0082\u0084\u0002¢\u0006\f\n\u0004\b\u0007\u0010\b\u001a\u0004\b\u0005\u0010\u0006R\u0010\u0010\t\u001a\u0004\u0018\u00010\nX\u0082\u000e¢\u0006\u0002\n\u0000R\u000e\u0010\u000b\u001a\u00020\fX\u0082D¢\u0006\u0002\n\u0000R\u000e\u0010\r\u001a\u00020\u000eX\u0082.¢\u0006\u0002\n\u0000R\u000e\u0010\u000f\u001a\u00020\u0010X\u0082.¢\u0006\u0002\n\u0000¨\u0006\u0017"}, d2 = {"Lcn/mucang/android/jiakaoyi/k3setting/route/manager/RouteResetActivity;", "Lcn/mucang/android/ui/framework/activity/BaseActivity;", "()V", "examSite", "Lcn/mucang/jiakaoyi/uilib/model/ExamSiteModel;", "getExamSite", "()Lcn/mucang/jiakaoyi/uilib/model/ExamSiteModel;", "examSite$delegate", "Lkotlin/Lazy;", "loadingDialog", "Lcn/mucang/android/jiakaoyi/framework/base/dialog/JLoadingDialog;", "routeType", "", "viewBinding", "Lcn/mucang/android/jiakaoyi/k3setting/databinding/RouteResetActivityBinding;", "viewModel", "Lcn/mucang/android/jiakaoyi/k3setting/route/manager/RouteViewModel;", "getStatName", "onCreate", "", "savedInstanceState", "Landroid/os/Bundle;", "Companion", "k3setting_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
public final class RouteResetActivity extends f.a.a.e.a.a.a {

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public static final a f4623f = new a(null);

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private JLoadingDialog f4624a;
    private RouteResetActivityBinding c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private RouteViewModel f4625d;
    private final Lazy b = i.b(new Function0<ExamSiteModel>() { // from class: cn.mucang.android.jiakaoyi.k3setting.route.manager.RouteResetActivity$examSite$2
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

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private final String f4626e = "2";

    @Metadata(d1 = {"\u0000$\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\b\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J\u0018\u0010\u0005\u001a\u00020\u00062\u0006\u0010\u0007\u001a\u00020\b2\u0006\u0010\t\u001a\u00020\nH\u0007R\u000e\u0010\u0003\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n\u0000¨\u0006\u000b"}, d2 = {"Lcn/mucang/android/jiakaoyi/k3setting/route/manager/RouteResetActivity$Companion;", "", "()V", "KEY_EXAM_SITE", "", "launch", "", "context", "Landroid/content/Context;", "examSite", "Lcn/mucang/jiakaoyi/uilib/model/ExamSiteModel;", "k3setting_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
    public static final class a {
        private a() {
        }

        public /* synthetic */ a(o oVar) {
            this();
        }

        public final void a(Context context, ExamSiteModel examSite) {
            r.e(context, "context");
            r.e(examSite, "examSite");
            Intent intent = new Intent(context, (Class<?>) RouteResetActivity.class);
            intent.putExtra("key_exam_site", examSite);
            ActivityUtils.c(context, intent);
        }
    }

    @Metadata(k = 3, mv = {1, 5, 1}, xi = 48)
    public /* synthetic */ class b {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public static final /* synthetic */ int[] f4627a;

        static {
            int[] iArr = new int[LoadingState.values().length];
            iArr[LoadingState.Loading.ordinal()] = 1;
            iArr[LoadingState.Fail.ordinal()] = 2;
            iArr[LoadingState.Success.ordinal()] = 3;
            f4627a = iArr;
        }
    }

    @Metadata(d1 = {"\u0000\u000b\n\u0000\n\u0002\u0018\u0002\n\u0000*\u0001\u0000\b\n\u0018\u00002\u00020\u0001¨\u0006\u0002"}, d2 = {"cn/mucang/android/jiakaoyi/k3setting/route/manager/RouteResetActivity$onCreate$adapter$1", "Lcom/drakeet/multitype/MultiTypeAdapter;", "k3setting_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
    public static final class c extends f {
        c() {
            super(null, 0, null, 7, null);
            g(LocalRoute.class, new ResetRouteItemBinder());
        }
    }

    private final ExamSiteModel g() {
        return (ExamSiteModel) this.b.getValue();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void n(RouteResetActivity this$0, View view) {
        r.e(this$0, "this$0");
        this$0.finish();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void o(final RouteResetActivity this$0, View view) {
        r.e(this$0, "this$0");
        RouteViewModel routeViewModel = this$0.f4625d;
        if (routeViewModel != null) {
            routeViewModel.s(this$0.g().examSiteId, new Function0<v>() { // from class: cn.mucang.android.jiakaoyi.k3setting.route.manager.RouteResetActivity$onCreate$2$1
                {
                    super(0);
                }

                @Override // kotlin.jvm.functions.Function0
                public /* bridge */ /* synthetic */ v invoke() {
                    invoke2();
                    return v.f15822a;
                }

                /* JADX INFO: renamed from: invoke, reason: avoid collision after fix types in other method */
                public final void invoke2() {
                    LocalRouteUtil.d();
                    this.this$0.finish();
                }
            });
        } else {
            r.u("viewModel");
            throw null;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void p(c adapter, RouteResetActivity this$0, List it) {
        r.e(adapter, "$adapter");
        r.e(this$0, "this$0");
        r.d(it, "it");
        adapter.i(it);
        adapter.notifyDataSetChanged();
        if (g.b(it)) {
            RouteResetActivityBinding routeResetActivityBinding = this$0.c;
            if (routeResetActivityBinding != null) {
                routeResetActivityBinding.stateLayout.d();
                return;
            } else {
                r.u("viewBinding");
                throw null;
            }
        }
        RouteResetActivityBinding routeResetActivityBinding2 = this$0.c;
        if (routeResetActivityBinding2 != null) {
            routeResetActivityBinding2.stateLayout.c();
        } else {
            r.u("viewBinding");
            throw null;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void q(RouteResetActivity this$0, LoadingState loadingState) {
        r.e(this$0, "this$0");
        int i = loadingState == null ? -1 : b.f4627a[loadingState.ordinal()];
        if (i == 1) {
            RouteResetActivityBinding routeResetActivityBinding = this$0.c;
            if (routeResetActivityBinding != null) {
                routeResetActivityBinding.stateLayout.f();
                return;
            } else {
                r.u("viewBinding");
                throw null;
            }
        }
        if (i != 2) {
            return;
        }
        RouteResetActivityBinding routeResetActivityBinding2 = this$0.c;
        if (routeResetActivityBinding2 != null) {
            routeResetActivityBinding2.stateLayout.e();
        } else {
            r.u("viewBinding");
            throw null;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void r(RouteResetActivity this$0, LoadingState loadingState) {
        r.e(this$0, "this$0");
        int i = loadingState == null ? -1 : b.f4627a[loadingState.ordinal()];
        if (i == 1) {
            JLoadingDialog jLoadingDialog = new JLoadingDialog(this$0);
            this$0.f4624a = jLoadingDialog;
            if (jLoadingDialog == null) {
                return;
            }
            jLoadingDialog.b("");
            return;
        }
        if (i == 2) {
            JLoadingDialog jLoadingDialog2 = this$0.f4624a;
            if (jLoadingDialog2 != null) {
                jLoadingDialog2.dismiss();
            }
            u.h(loadingState.getMsg());
            return;
        }
        if (i != 3) {
            return;
        }
        JLoadingDialog jLoadingDialog3 = this$0.f4624a;
        if (jLoadingDialog3 != null) {
            jLoadingDialog3.dismiss();
        }
        u.h(loadingState.getMsg());
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void s(RouteResetActivity this$0) {
        r.e(this$0, "this$0");
        RouteViewModel routeViewModel = this$0.f4625d;
        if (routeViewModel != null) {
            routeViewModel.r(true, this$0.g().examSiteId, this$0.f4626e);
        } else {
            r.u("viewModel");
            throw null;
        }
    }

    @Override // cn.mucang.android.core.config.t
    public String getStatName() {
        return "路线重置";
    }

    @Override // f.a.a.e.a.a.a, cn.mucang.android.core.config.n, androidx.fragment.app.d, androidx.activity.ComponentActivity, androidx.core.app.f, android.app.Activity
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        RouteResetActivityBinding routeResetActivityBindingInflate = RouteResetActivityBinding.inflate(getLayoutInflater());
        r.d(routeResetActivityBindingInflate, "inflate(layoutInflater)");
        this.c = routeResetActivityBindingInflate;
        if (routeResetActivityBindingInflate == null) {
            r.u("viewBinding");
            throw null;
        }
        setContentView(routeResetActivityBindingInflate.getRoot());
        RouteResetActivityBinding routeResetActivityBinding = this.c;
        if (routeResetActivityBinding == null) {
            r.u("viewBinding");
            throw null;
        }
        routeResetActivityBinding.titleLayout.backIv.setOnClickListener(new View.OnClickListener() { // from class: cn.mucang.android.jiakaoyi.k3setting.route.manager.r
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                RouteResetActivity.n(this.f4650a, view);
            }
        });
        RouteResetActivityBinding routeResetActivityBinding2 = this.c;
        if (routeResetActivityBinding2 == null) {
            r.u("viewBinding");
            throw null;
        }
        routeResetActivityBinding2.titleLayout.titleTv.setText("重置内容");
        RouteResetActivityBinding routeResetActivityBinding3 = this.c;
        if (routeResetActivityBinding3 == null) {
            r.u("viewBinding");
            throw null;
        }
        routeResetActivityBinding3.titleLayout.actionTv.setText("重置");
        RouteResetActivityBinding routeResetActivityBinding4 = this.c;
        if (routeResetActivityBinding4 == null) {
            r.u("viewBinding");
            throw null;
        }
        routeResetActivityBinding4.titleLayout.actionTv.setVisibility(0);
        RouteResetActivityBinding routeResetActivityBinding5 = this.c;
        if (routeResetActivityBinding5 == null) {
            r.u("viewBinding");
            throw null;
        }
        routeResetActivityBinding5.titleLayout.actionTv.setOnClickListener(new View.OnClickListener() { // from class: cn.mucang.android.jiakaoyi.k3setting.route.manager.m
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                RouteResetActivity.o(this.f4645a, view);
            }
        });
        j0 j0VarA = new m0(this).a(RouteViewModel.class);
        r.d(j0VarA, "ViewModelProvider(this).…uteViewModel::class.java)");
        this.f4625d = (RouteViewModel) j0VarA;
        final c cVar = new c();
        RouteResetActivityBinding routeResetActivityBinding6 = this.c;
        if (routeResetActivityBinding6 == null) {
            r.u("viewBinding");
            throw null;
        }
        routeResetActivityBinding6.recyclerView.addItemDecoration(new cn.mucang.jiakaoyi.uilib.ui.widget.b(1, androidx.core.a.a.f(MucangConfig.i(), R.drawable.shape_e0e0e0_divider)));
        RouteResetActivityBinding routeResetActivityBinding7 = this.c;
        if (routeResetActivityBinding7 == null) {
            r.u("viewBinding");
            throw null;
        }
        routeResetActivityBinding7.recyclerView.setLayoutManager(new LinearLayoutManager(this));
        RouteResetActivityBinding routeResetActivityBinding8 = this.c;
        if (routeResetActivityBinding8 == null) {
            r.u("viewBinding");
            throw null;
        }
        routeResetActivityBinding8.recyclerView.setAdapter(cVar);
        RouteViewModel routeViewModel = this.f4625d;
        if (routeViewModel == null) {
            r.u("viewModel");
            throw null;
        }
        routeViewModel.r(false, g().examSiteId, "2");
        RouteViewModel routeViewModel2 = this.f4625d;
        if (routeViewModel2 == null) {
            r.u("viewModel");
            throw null;
        }
        routeViewModel2.o().h(this, new a0() { // from class: cn.mucang.android.jiakaoyi.k3setting.route.manager.n
            @Override // androidx.lifecycle.a0
            public final void onChanged(Object obj) {
                RouteResetActivity.p(cVar, this, (List) obj);
            }
        });
        RouteViewModel routeViewModel3 = this.f4625d;
        if (routeViewModel3 == null) {
            r.u("viewModel");
            throw null;
        }
        routeViewModel3.b().h(this, new a0() { // from class: cn.mucang.android.jiakaoyi.k3setting.route.manager.o
            @Override // androidx.lifecycle.a0
            public final void onChanged(Object obj) {
                RouteResetActivity.q(this.f4647a, (LoadingState) obj);
            }
        });
        RouteViewModel routeViewModel4 = this.f4625d;
        if (routeViewModel4 == null) {
            r.u("viewModel");
            throw null;
        }
        routeViewModel4.a().h(this, new a0() { // from class: cn.mucang.android.jiakaoyi.k3setting.route.manager.p
            @Override // androidx.lifecycle.a0
            public final void onChanged(Object obj) {
                RouteResetActivity.r(this.f4648a, (LoadingState) obj);
            }
        });
        RouteResetActivityBinding routeResetActivityBinding9 = this.c;
        if (routeResetActivityBinding9 != null) {
            routeResetActivityBinding9.stateLayout.setOnRefreshListener(new StateLayout.c() { // from class: cn.mucang.android.jiakaoyi.k3setting.route.manager.q
                @Override // cn.mucang.android.core.widget.StateLayout.c
                public final void a() {
                    RouteResetActivity.s(this.f4649a);
                }
            });
        } else {
            r.u("viewBinding");
            throw null;
        }
    }
}
