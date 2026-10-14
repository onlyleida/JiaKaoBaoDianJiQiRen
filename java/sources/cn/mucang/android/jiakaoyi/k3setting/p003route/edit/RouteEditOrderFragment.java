package cn.mucang.android.jiakaoyi.k3setting.p003route.edit;

import android.content.Context;
import android.os.Bundle;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import androidx.fragment.app.FragmentManager;
import androidx.lifecycle.a0;
import androidx.lifecycle.j0;
import androidx.lifecycle.m0;
import androidx.recyclerview.widget.LinearLayoutManager;
import cn.mucang.android.core.utils.g;
import cn.mucang.android.jiakaoyi.framework.base.ui.BaseFragment;
import cn.mucang.android.jiakaoyi.k3setting.databinding.RouteEditOrderBinding;
import cn.mucang.jiakaoyi.uilib.model.OnlineRoute;
import cn.mucang.jiakaoyi.uilib.model.RouteSpotNode;
import com.drakeet.multitype.f;
import com.google.android.exoplayer2.text.ttml.TtmlNode;
import java.util.ArrayList;
import java.util.List;
import kotlin.Metadata;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.r;
import kotlin.v;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000B\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\u0018\u00002\u00020\u0001B\u0005¢\u0006\u0002\u0010\u0002J\b\u0010\t\u001a\u00020\nH\u0016J\b\u0010\u000b\u001a\u00020\fH\u0002J&\u0010\r\u001a\u0004\u0018\u00010\u000e2\u0006\u0010\u000f\u001a\u00020\u00102\b\u0010\u0011\u001a\u0004\u0018\u00010\u00122\b\u0010\u0013\u001a\u0004\u0018\u00010\u0014H\u0016R\u000e\u0010\u0003\u001a\u00020\u0004X\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u0005\u001a\u00020\u0006X\u0082.¢\u0006\u0002\n\u0000R\u000e\u0010\u0007\u001a\u00020\bX\u0082.¢\u0006\u0002\n\u0000¨\u0006\u0015"}, d2 = {"Lcn/mucang/android/jiakaoyi/k3setting/route/edit/RouteEditOrderFragment;", "Lcn/mucang/android/jiakaoyi/framework/base/ui/BaseFragment;", "()V", "adapter", "Lcom/drakeet/multitype/MultiTypeAdapter;", "viewBinding", "Lcn/mucang/android/jiakaoyi/k3setting/databinding/RouteEditOrderBinding;", "viewModel", "Lcn/mucang/android/jiakaoyi/k3setting/route/edit/RouteEditViewModel;", "getStatName", "", "initOrder", "", "onCreateView", "Landroid/view/View;", "inflater", "Landroid/view/LayoutInflater;", TtmlNode.RUBY_CONTAINER, "Landroid/view/ViewGroup;", "savedInstanceState", "Landroid/os/Bundle;", "k3setting_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
public final class RouteEditOrderFragment extends BaseFragment {
    private RouteEditOrderBinding b;
    private RouteEditViewModel c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final f f4549d = new f(null, 0, null, 7, null);

    private final void s() {
        this.f4549d.g(RouteSpotNode.class, new RouteEditOrderItemBinder(new Function1<RouteSpotNode, v>() { // from class: cn.mucang.android.jiakaoyi.k3setting.route.edit.RouteEditOrderFragment$initOrder$1
            {
                super(1);
            }

            @Override // kotlin.jvm.functions.Function1
            public /* bridge */ /* synthetic */ v invoke(RouteSpotNode routeSpotNode) {
                invoke2(routeSpotNode);
                return v.f15822a;
            }

            /* JADX INFO: renamed from: invoke, reason: avoid collision after fix types in other method */
            public final void invoke2(RouteSpotNode it) {
                r.e(it, "it");
                RouteEditViewModel routeEditViewModel = this.this$0.c;
                if (routeEditViewModel == null) {
                    r.u("viewModel");
                    throw null;
                }
                FragmentManager childFragmentManager = this.this$0.getChildFragmentManager();
                r.d(childFragmentManager, "childFragmentManager");
                routeEditViewModel.y(it, childFragmentManager, new Function1<RouteSpotNode, v>() { // from class: cn.mucang.android.jiakaoyi.k3setting.route.edit.RouteEditOrderFragment$initOrder$1.1
                    @Override // kotlin.jvm.functions.Function1
                    public /* bridge */ /* synthetic */ v invoke(RouteSpotNode routeSpotNode) {
                        invoke2(routeSpotNode);
                        return v.f15822a;
                    }

                    /* JADX INFO: renamed from: invoke, reason: avoid collision after fix types in other method */
                    public final void invoke2(RouteSpotNode it2) {
                        r.e(it2, "it");
                    }
                });
            }
        }, new Function1<RouteSpotNode, v>() { // from class: cn.mucang.android.jiakaoyi.k3setting.route.edit.RouteEditOrderFragment$initOrder$2
            {
                super(1);
            }

            @Override // kotlin.jvm.functions.Function1
            public /* bridge */ /* synthetic */ v invoke(RouteSpotNode routeSpotNode) {
                invoke2(routeSpotNode);
                return v.f15822a;
            }

            /* JADX INFO: renamed from: invoke, reason: avoid collision after fix types in other method */
            public final void invoke2(RouteSpotNode it) {
                r.e(it, "it");
                RouteEditViewModel routeEditViewModel = this.this$0.c;
                if (routeEditViewModel == null) {
                    r.u("viewModel");
                    throw null;
                }
                Context contextRequireContext = this.this$0.requireContext();
                r.d(contextRequireContext, "requireContext()");
                routeEditViewModel.f(contextRequireContext, it);
            }
        }));
        RouteEditOrderBinding routeEditOrderBinding = this.b;
        if (routeEditOrderBinding == null) {
            r.u("viewBinding");
            throw null;
        }
        routeEditOrderBinding.recyclerView.setLayoutManager(new LinearLayoutManager(getContext(), 1, false));
        RouteEditOrderBinding routeEditOrderBinding2 = this.b;
        if (routeEditOrderBinding2 != null) {
            routeEditOrderBinding2.recyclerView.setAdapter(this.f4549d);
        } else {
            r.u("viewBinding");
            throw null;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void u(RouteEditOrderFragment this$0, OnlineRoute onlineRoute) {
        r.e(this$0, "this$0");
        if (g.d(onlineRoute.getRouteSpotList())) {
            f fVar = this$0.f4549d;
            List<RouteSpotNode> routeSpotList = onlineRoute.getRouteSpotList();
            if (routeSpotList == null) {
                routeSpotList = new ArrayList<>();
            }
            fVar.i(routeSpotList);
            this$0.f4549d.notifyDataSetChanged();
        }
    }

    @Override // cn.mucang.android.core.config.t
    public String getStatName() {
        return "路线编辑指令模式";
    }

    @Override // cn.mucang.android.core.config.q, androidx.fragment.app.Fragment
    public View onCreateView(LayoutInflater inflater, ViewGroup container, Bundle savedInstanceState) {
        r.e(inflater, "inflater");
        RouteEditOrderBinding routeEditOrderBindingInflate = RouteEditOrderBinding.inflate(inflater);
        r.d(routeEditOrderBindingInflate, "inflate(inflater)");
        this.b = routeEditOrderBindingInflate;
        s();
        j0 j0VarA = new m0(requireActivity()).a(RouteEditViewModel.class);
        r.d(j0VarA, "ViewModelProvider(requir…ditViewModel::class.java)");
        RouteEditViewModel routeEditViewModel = (RouteEditViewModel) j0VarA;
        this.c = routeEditViewModel;
        if (routeEditViewModel == null) {
            r.u("viewModel");
            throw null;
        }
        routeEditViewModel.m().h(getViewLifecycleOwner(), new a0() { // from class: cn.mucang.android.jiakaoyi.k3setting.route.edit.c0
            @Override // androidx.lifecycle.a0
            public final void onChanged(Object obj) {
                RouteEditOrderFragment.u(this.f4563a, (OnlineRoute) obj);
            }
        });
        RouteEditOrderBinding routeEditOrderBinding = this.b;
        if (routeEditOrderBinding != null) {
            return routeEditOrderBinding.getRoot();
        }
        r.u("viewBinding");
        throw null;
    }
}
