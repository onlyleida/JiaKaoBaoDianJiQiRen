package cn.mucang.android.jiakaoyi.k3setting.p003route.manager;

import android.content.Context;
import android.os.Bundle;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.LinearLayout;
import android.widget.TextView;
import androidx.lifecycle.a0;
import androidx.lifecycle.j0;
import androidx.lifecycle.m0;
import androidx.recyclerview.widget.LinearLayoutManager;
import androidx.recyclerview.widget.RecyclerView;
import cn.mucang.android.core.config.MucangConfig;
import cn.mucang.android.core.utils.g;
import cn.mucang.android.core.utils.u;
import cn.mucang.android.core.widget.StateLayout;
import cn.mucang.android.jiakaoyi.framework.base.dialog.JLoadingDialog;
import cn.mucang.android.jiakaoyi.framework.base.model.LoadingState;
import cn.mucang.android.jiakaoyi.framework.base.ui.BaseFragment;
import cn.mucang.android.jiakaoyi.framework.utils.AppUtils;
import cn.mucang.android.jiakaoyi.k3setting.R;
import cn.mucang.android.jiakaoyi.k3setting.databinding.RouteListFragmentBinding;
import cn.mucang.android.jiakaoyi.k3setting.p003route.detail.RouteDetailActivity;
import cn.mucang.android.jiakaoyi.k3setting.p003route.manager.item.RouteItemBinder;
import cn.mucang.jiakaoyi.uilib.model.ExamSiteModel;
import cn.mucang.jiakaoyi.uilib.model.LocalRoute;
import com.drakeet.multitype.f;
import com.google.android.exoplayer2.text.ttml.TtmlNode;
import java.io.Serializable;
import java.util.List;
import java.util.Objects;
import kotlin.Lazy;
import kotlin.Metadata;
import kotlin.i;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.o;
import kotlin.jvm.internal.r;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000R\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\u0018\u0000 #2\u00020\u0001:\u0001#B\u0005¢\u0006\u0002\u0010\u0002J\u0010\u0010\u0015\u001a\u00020\u00162\u0006\u0010\u0017\u001a\u00020\fH\u0002J\b\u0010\u0018\u001a\u00020\u000eH\u0016J\b\u0010\u0019\u001a\u00020\u0016H\u0002J\u0012\u0010\u001a\u001a\u00020\u00162\b\u0010\u001b\u001a\u0004\u0018\u00010\u001cH\u0016J&\u0010\u001d\u001a\u0004\u0018\u00010\f2\u0006\u0010\u001e\u001a\u00020\u001f2\b\u0010 \u001a\u0004\u0018\u00010!2\b\u0010\u001b\u001a\u0004\u0018\u00010\u001cH\u0016J\b\u0010\"\u001a\u00020\u0016H\u0016R\u001b\u0010\u0003\u001a\u00020\u00048BX\u0082\u0084\u0002¢\u0006\f\n\u0004\b\u0007\u0010\b\u001a\u0004\b\u0005\u0010\u0006R\u0010\u0010\t\u001a\u0004\u0018\u00010\nX\u0082\u000e¢\u0006\u0002\n\u0000R\u0010\u0010\u000b\u001a\u0004\u0018\u00010\fX\u0082\u000e¢\u0006\u0002\n\u0000R\u0014\u0010\r\u001a\u00020\u000e8BX\u0082\u0004¢\u0006\u0006\u001a\u0004\b\u000f\u0010\u0010R\u000e\u0010\u0011\u001a\u00020\u0012X\u0082.¢\u0006\u0002\n\u0000R\u000e\u0010\u0013\u001a\u00020\u0014X\u0082.¢\u0006\u0002\n\u0000¨\u0006$"}, d2 = {"Lcn/mucang/android/jiakaoyi/k3setting/route/manager/RouteListFragment;", "Lcn/mucang/android/jiakaoyi/framework/base/ui/BaseFragment;", "()V", "examSite", "Lcn/mucang/jiakaoyi/uilib/model/ExamSiteModel;", "getExamSite", "()Lcn/mucang/jiakaoyi/uilib/model/ExamSiteModel;", "examSite$delegate", "Lkotlin/Lazy;", "loadingDialog", "Lcn/mucang/android/jiakaoyi/framework/base/dialog/JLoadingDialog;", "selectTab", "Landroid/view/View;", "type", "", "getType", "()Ljava/lang/String;", "viewBinding", "Lcn/mucang/android/jiakaoyi/k3setting/databinding/RouteListFragmentBinding;", "viewModel", "Lcn/mucang/android/jiakaoyi/k3setting/route/manager/RouteViewModel;", "changeTab", "", "view", "getStatName", "initView", "onCreate", "savedInstanceState", "Landroid/os/Bundle;", "onCreateView", "inflater", "Landroid/view/LayoutInflater;", TtmlNode.RUBY_CONTAINER, "Landroid/view/ViewGroup;", "onResume", "Companion", "k3setting_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
public final class RouteListFragment extends BaseFragment {

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public static final a f4617g = new a(null);
    private final Lazy b = i.b(new Function0<ExamSiteModel>() { // from class: cn.mucang.android.jiakaoyi.k3setting.route.manager.RouteListFragment$examSite$2
        {
            super(0);
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // kotlin.jvm.functions.Function0
        public final ExamSiteModel invoke() {
            Bundle arguments = this.this$0.getArguments();
            Serializable serializable = arguments == null ? null : arguments.getSerializable("key_exam_site");
            ExamSiteModel examSiteModel = serializable instanceof ExamSiteModel ? (ExamSiteModel) serializable : null;
            return examSiteModel == null ? new ExamSiteModel() : examSiteModel;
        }
    });
    private RouteListFragmentBinding c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private RouteViewModel f4618d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private JLoadingDialog f4619e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private View f4620f;

    @Metadata(d1 = {"\u0000\u0018\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\b\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J\u0010\u0010\u0003\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u0006H\u0007¨\u0006\u0007"}, d2 = {"Lcn/mucang/android/jiakaoyi/k3setting/route/manager/RouteListFragment$Companion;", "", "()V", "newInstance", "Lcn/mucang/android/jiakaoyi/k3setting/route/manager/RouteListFragment;", "arguments", "Landroid/os/Bundle;", "k3setting_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
    public static final class a {
        private a() {
        }

        public /* synthetic */ a(o oVar) {
            this();
        }

        public final RouteListFragment a(Bundle arguments) {
            r.e(arguments, "arguments");
            RouteListFragment routeListFragment = new RouteListFragment();
            routeListFragment.setArguments(arguments);
            return routeListFragment;
        }
    }

    @Metadata(k = 3, mv = {1, 5, 1}, xi = 48)
    public /* synthetic */ class b {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public static final /* synthetic */ int[] f4621a;

        static {
            int[] iArr = new int[LoadingState.values().length];
            iArr[LoadingState.Loading.ordinal()] = 1;
            iArr[LoadingState.Fail.ordinal()] = 2;
            iArr[LoadingState.Success.ordinal()] = 3;
            f4621a = iArr;
        }
    }

    @Metadata(d1 = {"\u0000\u001f\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0002\b\u0002*\u0001\u0000\b\n\u0018\u00002\u00020\u0001J \u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u00052\u0006\u0010\u0006\u001a\u00020\u00072\u0006\u0010\b\u001a\u00020\u0007H\u0016¨\u0006\t"}, d2 = {"cn/mucang/android/jiakaoyi/k3setting/route/manager/RouteListFragment$initView$5", "Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;", "onScrolled", "", "recyclerView", "Landroidx/recyclerview/widget/RecyclerView;", "dx", "", "dy", "k3setting_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
    public static final class c extends RecyclerView.t {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        final /* synthetic */ d f4622a;
        final /* synthetic */ RouteListFragment b;

        c(d dVar, RouteListFragment routeListFragment) {
            this.f4622a = dVar;
            this.b = routeListFragment;
        }

        @Override // androidx.recyclerview.widget.RecyclerView.t
        public void onScrolled(RecyclerView recyclerView, int dx, int dy) {
            r.e(recyclerView, "recyclerView");
            super.onScrolled(recyclerView, dx, dy);
            LinearLayoutManager linearLayoutManager = (LinearLayoutManager) recyclerView.getLayoutManager();
            if (linearLayoutManager == null || linearLayoutManager.findLastVisibleItemPosition() <= this.f4622a.getItemCount() - 2 || this.f4622a.getItemCount() <= 0) {
                return;
            }
            RouteViewModel routeViewModel = this.b.f4618d;
            if (routeViewModel != null) {
                routeViewModel.r(false, this.b.v().examSiteId, this.b.w());
            } else {
                r.u("viewModel");
                throw null;
            }
        }
    }

    @Metadata(d1 = {"\u0000\u000b\n\u0000\n\u0002\u0018\u0002\n\u0000*\u0001\u0000\b\n\u0018\u00002\u00020\u0001¨\u0006\u0002"}, d2 = {"cn/mucang/android/jiakaoyi/k3setting/route/manager/RouteListFragment$initView$adapter$1", "Lcom/drakeet/multitype/MultiTypeAdapter;", "k3setting_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
    public static final class d extends f {
        d() {
            super(null, 0, null, 7, null);
            g(LocalRoute.class, new RouteItemBinder(RouteListFragment.this.v()));
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void A(RouteListFragment this$0, View it) {
        r.e(this$0, "this$0");
        r.d(it, "it");
        this$0.u(it);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void B(RouteListFragment this$0, View view) {
        r.e(this$0, "this$0");
        RouteDetailActivity.a aVar = RouteDetailActivity.f4492d;
        Context context = view.getContext();
        r.d(context, "it.context");
        aVar.a(context, this$0.v());
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void C(RouteListFragment this$0, d adapter, List it) {
        TextView textView;
        r.e(this$0, "this$0");
        r.e(adapter, "$adapter");
        View view = this$0.f4620f;
        if (view != null) {
            view.setSelected(false);
        }
        RouteViewModel routeViewModel = this$0.f4618d;
        if (routeViewModel == null) {
            r.u("viewModel");
            throw null;
        }
        String f4632h = routeViewModel.getF4632h();
        RouteListFragmentBinding routeListFragmentBinding = this$0.c;
        if (routeListFragmentBinding == null) {
            r.u("viewBinding");
            throw null;
        }
        if (r.a(f4632h, routeListFragmentBinding.myRoute.getTag())) {
            RouteListFragmentBinding routeListFragmentBinding2 = this$0.c;
            if (routeListFragmentBinding2 == null) {
                r.u("viewBinding");
                throw null;
            }
            textView = routeListFragmentBinding2.myRoute;
        } else {
            RouteListFragmentBinding routeListFragmentBinding3 = this$0.c;
            if (routeListFragmentBinding3 == null) {
                r.u("viewBinding");
                throw null;
            }
            if (r.a(f4632h, routeListFragmentBinding3.commendRoute.getTag())) {
                RouteListFragmentBinding routeListFragmentBinding4 = this$0.c;
                if (routeListFragmentBinding4 == null) {
                    r.u("viewBinding");
                    throw null;
                }
                textView = routeListFragmentBinding4.commendRoute;
            } else {
                RouteListFragmentBinding routeListFragmentBinding5 = this$0.c;
                if (routeListFragmentBinding5 == null) {
                    r.u("viewBinding");
                    throw null;
                }
                if (r.a(f4632h, routeListFragmentBinding5.nearRoute.getTag())) {
                    RouteListFragmentBinding routeListFragmentBinding6 = this$0.c;
                    if (routeListFragmentBinding6 == null) {
                        r.u("viewBinding");
                        throw null;
                    }
                    textView = routeListFragmentBinding6.nearRoute;
                } else {
                    textView = null;
                }
            }
        }
        this$0.f4620f = textView;
        if (textView == null) {
            return;
        }
        if (textView != null) {
            textView.setSelected(true);
        }
        RouteItemBinder.a aVar = RouteItemBinder.c;
        RouteViewModel routeViewModel2 = this$0.f4618d;
        if (routeViewModel2 == null) {
            r.u("viewModel");
            throw null;
        }
        aVar.a(routeViewModel2.q(this$0.w()));
        r.d(it, "it");
        adapter.i(it);
        adapter.notifyDataSetChanged();
        if (g.b(it)) {
            RouteListFragmentBinding routeListFragmentBinding7 = this$0.c;
            if (routeListFragmentBinding7 != null) {
                routeListFragmentBinding7.stateLayout.d();
                return;
            } else {
                r.u("viewBinding");
                throw null;
            }
        }
        RouteListFragmentBinding routeListFragmentBinding8 = this$0.c;
        if (routeListFragmentBinding8 != null) {
            routeListFragmentBinding8.stateLayout.c();
        } else {
            r.u("viewBinding");
            throw null;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void D(RouteListFragment this$0, LoadingState loadingState) {
        r.e(this$0, "this$0");
        int i = loadingState == null ? -1 : b.f4621a[loadingState.ordinal()];
        if (i == 1) {
            RouteListFragmentBinding routeListFragmentBinding = this$0.c;
            if (routeListFragmentBinding != null) {
                routeListFragmentBinding.stateLayout.f();
                return;
            } else {
                r.u("viewBinding");
                throw null;
            }
        }
        if (i != 2) {
            return;
        }
        RouteListFragmentBinding routeListFragmentBinding2 = this$0.c;
        if (routeListFragmentBinding2 != null) {
            routeListFragmentBinding2.stateLayout.e();
        } else {
            r.u("viewBinding");
            throw null;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void E(RouteListFragment this$0, LoadingState loadingState) {
        r.e(this$0, "this$0");
        int i = loadingState == null ? -1 : b.f4621a[loadingState.ordinal()];
        if (i == 1) {
            Context contextRequireContext = this$0.requireContext();
            r.d(contextRequireContext, "requireContext()");
            JLoadingDialog jLoadingDialog = new JLoadingDialog(contextRequireContext);
            this$0.f4619e = jLoadingDialog;
            if (jLoadingDialog == null) {
                return;
            }
            jLoadingDialog.b("");
            return;
        }
        if (i == 2) {
            JLoadingDialog jLoadingDialog2 = this$0.f4619e;
            if (jLoadingDialog2 != null) {
                jLoadingDialog2.dismiss();
            }
            u.h(loadingState.getMsg());
            return;
        }
        if (i != 3) {
            return;
        }
        JLoadingDialog jLoadingDialog3 = this$0.f4619e;
        if (jLoadingDialog3 != null) {
            jLoadingDialog3.dismiss();
        }
        u.h(loadingState.getMsg());
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void F(RouteListFragment this$0) {
        r.e(this$0, "this$0");
        RouteViewModel routeViewModel = this$0.f4618d;
        if (routeViewModel != null) {
            routeViewModel.r(true, this$0.v().examSiteId, this$0.w());
        } else {
            r.u("viewModel");
            throw null;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void G(RouteListFragment this$0, View view) {
        r.e(this$0, "this$0");
        RouteResetActivity.a aVar = RouteResetActivity.f4623f;
        Context contextRequireContext = this$0.requireContext();
        r.d(contextRequireContext, "requireContext()");
        aVar.a(contextRequireContext, this$0.v());
    }

    private final void u(View view) {
        if (r.a(view, this.f4620f)) {
            return;
        }
        Object tag = view.getTag();
        String str = tag instanceof String ? (String) tag : null;
        if (str == null) {
            str = "1";
        }
        RouteViewModel routeViewModel = this.f4618d;
        if (routeViewModel != null) {
            routeViewModel.r(true, v().examSiteId, str);
        } else {
            r.u("viewModel");
            throw null;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final ExamSiteModel v() {
        return (ExamSiteModel) this.b.getValue();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final String w() {
        View view = this.f4620f;
        Object tag = view == null ? null : view.getTag();
        String str = tag instanceof String ? (String) tag : null;
        return str == null ? "1" : str;
    }

    private final void x() {
        RouteListFragmentBinding routeListFragmentBinding = this.c;
        if (routeListFragmentBinding == null) {
            r.u("viewBinding");
            throw null;
        }
        routeListFragmentBinding.myRoute.setSelected(true);
        RouteListFragmentBinding routeListFragmentBinding2 = this.c;
        if (routeListFragmentBinding2 == null) {
            r.u("viewBinding");
            throw null;
        }
        TextView textView = routeListFragmentBinding2.myRoute;
        this.f4620f = textView;
        if (routeListFragmentBinding2 == null) {
            r.u("viewBinding");
            throw null;
        }
        textView.setOnClickListener(new View.OnClickListener() { // from class: cn.mucang.android.jiakaoyi.k3setting.route.manager.d
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                RouteListFragment.y(this.f4636a, view);
            }
        });
        RouteListFragmentBinding routeListFragmentBinding3 = this.c;
        if (routeListFragmentBinding3 == null) {
            r.u("viewBinding");
            throw null;
        }
        routeListFragmentBinding3.commendRoute.setOnClickListener(new View.OnClickListener() { // from class: cn.mucang.android.jiakaoyi.k3setting.route.manager.i
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                RouteListFragment.z(this.f4641a, view);
            }
        });
        RouteListFragmentBinding routeListFragmentBinding4 = this.c;
        if (routeListFragmentBinding4 == null) {
            r.u("viewBinding");
            throw null;
        }
        routeListFragmentBinding4.nearRoute.setOnClickListener(new View.OnClickListener() { // from class: cn.mucang.android.jiakaoyi.k3setting.route.manager.k
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                RouteListFragment.A(this.f4643a, view);
            }
        });
        RouteListFragmentBinding routeListFragmentBinding5 = this.c;
        if (routeListFragmentBinding5 == null) {
            r.u("viewBinding");
            throw null;
        }
        routeListFragmentBinding5.newRouteTv.setOnClickListener(new View.OnClickListener() { // from class: cn.mucang.android.jiakaoyi.k3setting.route.manager.g
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                RouteListFragment.B(this.f4639a, view);
            }
        });
        final d dVar = new d();
        RouteListFragmentBinding routeListFragmentBinding6 = this.c;
        if (routeListFragmentBinding6 == null) {
            r.u("viewBinding");
            throw null;
        }
        routeListFragmentBinding6.recyclerView.setAdapter(dVar);
        RouteListFragmentBinding routeListFragmentBinding7 = this.c;
        if (routeListFragmentBinding7 == null) {
            r.u("viewBinding");
            throw null;
        }
        routeListFragmentBinding7.recyclerView.addItemDecoration(new cn.mucang.jiakaoyi.uilib.ui.widget.b(1, androidx.core.a.a.f(MucangConfig.i(), R.drawable.shape_e0e0e0_divider)));
        RouteListFragmentBinding routeListFragmentBinding8 = this.c;
        if (routeListFragmentBinding8 == null) {
            r.u("viewBinding");
            throw null;
        }
        routeListFragmentBinding8.recyclerView.setLayoutManager(new LinearLayoutManager(getContext()));
        if (!AppUtils.k()) {
            RouteListFragmentBinding routeListFragmentBinding9 = this.c;
            if (routeListFragmentBinding9 == null) {
                r.u("viewBinding");
                throw null;
            }
            routeListFragmentBinding9.recyclerView.addOnScrollListener(new c(dVar, this));
        }
        RouteViewModel routeViewModel = this.f4618d;
        if (routeViewModel == null) {
            r.u("viewModel");
            throw null;
        }
        routeViewModel.o().h(getViewLifecycleOwner(), new a0() { // from class: cn.mucang.android.jiakaoyi.k3setting.route.manager.h
            @Override // androidx.lifecycle.a0
            public final void onChanged(Object obj) {
                RouteListFragment.C(this.f4640a, dVar, (List) obj);
            }
        });
        RouteViewModel routeViewModel2 = this.f4618d;
        if (routeViewModel2 == null) {
            r.u("viewModel");
            throw null;
        }
        routeViewModel2.b().h(getViewLifecycleOwner(), new a0() { // from class: cn.mucang.android.jiakaoyi.k3setting.route.manager.l
            @Override // androidx.lifecycle.a0
            public final void onChanged(Object obj) {
                RouteListFragment.D(this.f4644a, (LoadingState) obj);
            }
        });
        RouteViewModel routeViewModel3 = this.f4618d;
        if (routeViewModel3 == null) {
            r.u("viewModel");
            throw null;
        }
        routeViewModel3.a().h(getViewLifecycleOwner(), new a0() { // from class: cn.mucang.android.jiakaoyi.k3setting.route.manager.j
            @Override // androidx.lifecycle.a0
            public final void onChanged(Object obj) {
                RouteListFragment.E(this.f4642a, (LoadingState) obj);
            }
        });
        RouteListFragmentBinding routeListFragmentBinding10 = this.c;
        if (routeListFragmentBinding10 == null) {
            r.u("viewBinding");
            throw null;
        }
        routeListFragmentBinding10.stateLayout.setOnRefreshListener(new StateLayout.c() { // from class: cn.mucang.android.jiakaoyi.k3setting.route.manager.e
            @Override // cn.mucang.android.core.widget.StateLayout.c
            public final void a() {
                RouteListFragment.F(this.f4637a);
            }
        });
        RouteListFragmentBinding routeListFragmentBinding11 = this.c;
        if (routeListFragmentBinding11 == null) {
            r.u("viewBinding");
            throw null;
        }
        routeListFragmentBinding11.resetRouteTv.setOnClickListener(new View.OnClickListener() { // from class: cn.mucang.android.jiakaoyi.k3setting.route.manager.f
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                RouteListFragment.G(this.f4638a, view);
            }
        });
        if (AppUtils.k()) {
            RouteListFragmentBinding routeListFragmentBinding12 = this.c;
            if (routeListFragmentBinding12 == null) {
                r.u("viewBinding");
                throw null;
            }
            TextView textView2 = routeListFragmentBinding12.resetRouteTv;
            r.d(textView2, "viewBinding.resetRouteTv");
            textView2.setVisibility(8);
            RouteListFragmentBinding routeListFragmentBinding13 = this.c;
            if (routeListFragmentBinding13 == null) {
                r.u("viewBinding");
                throw null;
            }
            LinearLayout linearLayout = routeListFragmentBinding13.menuLl;
            r.d(linearLayout, "viewBinding.menuLl");
            linearLayout.setVisibility(8);
            RouteListFragmentBinding routeListFragmentBinding14 = this.c;
            if (routeListFragmentBinding14 == null) {
                r.u("viewBinding");
                throw null;
            }
            View view = routeListFragmentBinding14.divider;
            r.d(view, "viewBinding.divider");
            view.setVisibility(8);
            RouteListFragmentBinding routeListFragmentBinding15 = this.c;
            if (routeListFragmentBinding15 == null) {
                r.u("viewBinding");
                throw null;
            }
            ViewGroup.LayoutParams layoutParams = routeListFragmentBinding15.stateLayout.getLayoutParams();
            Objects.requireNonNull(layoutParams, "null cannot be cast to non-null type android.view.ViewGroup.MarginLayoutParams");
            ((ViewGroup.MarginLayoutParams) layoutParams).leftMargin = 0;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void y(RouteListFragment this$0, View it) {
        r.e(this$0, "this$0");
        r.d(it, "it");
        this$0.u(it);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void z(RouteListFragment this$0, View it) {
        r.e(this$0, "this$0");
        r.d(it, "it");
        this$0.u(it);
    }

    @Override // cn.mucang.android.core.config.t
    public String getStatName() {
        return "我的路线页面";
    }

    @Override // cn.mucang.android.core.config.q, androidx.fragment.app.Fragment
    public void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        j0 j0VarA = new m0(requireActivity()).a(RouteViewModel.class);
        r.d(j0VarA, "ViewModelProvider(requir…uteViewModel::class.java)");
        this.f4618d = (RouteViewModel) j0VarA;
    }

    @Override // cn.mucang.android.core.config.q, androidx.fragment.app.Fragment
    public View onCreateView(LayoutInflater inflater, ViewGroup container, Bundle savedInstanceState) {
        r.e(inflater, "inflater");
        RouteListFragmentBinding routeListFragmentBindingInflate = RouteListFragmentBinding.inflate(inflater, container, false);
        r.d(routeListFragmentBindingInflate, "inflate(inflater, container, false)");
        this.c = routeListFragmentBindingInflate;
        x();
        RouteListFragmentBinding routeListFragmentBinding = this.c;
        if (routeListFragmentBinding != null) {
            return routeListFragmentBinding.getRoot();
        }
        r.u("viewBinding");
        throw null;
    }

    @Override // cn.mucang.android.core.config.q, androidx.fragment.app.Fragment
    public void onResume() {
        super.onResume();
        RouteViewModel routeViewModel = this.f4618d;
        if (routeViewModel != null) {
            routeViewModel.r(true, v().examSiteId, w());
        } else {
            r.u("viewModel");
            throw null;
        }
    }
}
