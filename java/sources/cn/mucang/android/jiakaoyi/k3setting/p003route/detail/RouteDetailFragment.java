package cn.mucang.android.jiakaoyi.k3setting.p003route.detail;

import android.location.Location;
import android.os.Bundle;
import android.os.SystemClock;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import androidx.lifecycle.a0;
import androidx.lifecycle.j0;
import androidx.lifecycle.m0;
import androidx.recyclerview.widget.GridLayoutManager;
import cn.mucang.android.core.utils.u;
import cn.mucang.android.jiakaoyi.framework.base.ui.BaseFragment;
import cn.mucang.android.jiakaoyi.framework.tts.TtsGrade;
import cn.mucang.android.jiakaoyi.framework.tts.TtsManager;
import cn.mucang.android.jiakaoyi.k3setting.R;
import cn.mucang.android.jiakaoyi.k3setting.databinding.RouteDetailFragmentBinding;
import cn.mucang.android.jiakaoyi.k3setting.order.viewmodel.K3RouteStepViewModel;
import cn.mucang.android.jiakaoyi.k3setting.p003route.detail.item.RouteStepItemBinder;
import cn.mucang.android.jiakaoyi.signal.c.d;
import cn.mucang.android.jiakaoyi.signal.c.f.a;
import cn.mucang.android.jiakaoyi.signal.handle.gps.e;
import cn.mucang.android.jiakaoyi.signal.handle.gps.k;
import cn.mucang.jiakaoyi.uilib.model.StepOrderItem;
import com.drakeet.multitype.f;
import com.google.android.exoplayer2.text.ttml.TtmlNode;
import java.util.List;
import kotlin.Metadata;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.r;
import kotlin.v;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000T\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\t\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\u0018\u00002\u00020\u00012\u00020\u0002B\u0005¢\u0006\u0002\u0010\u0003J\b\u0010\f\u001a\u00020\rH\u0016J&\u0010\u000e\u001a\u0004\u0018\u00010\u000f2\u0006\u0010\u0010\u001a\u00020\u00112\b\u0010\u0012\u001a\u0004\u0018\u00010\u00132\b\u0010\u0014\u001a\u0004\u0018\u00010\u0015H\u0016J\b\u0010\u0016\u001a\u00020\u0017H\u0016J\b\u0010\u0018\u001a\u00020\u0017H\u0016J\u0010\u0010\u0019\u001a\u00020\u00172\u0006\u0010\u001a\u001a\u00020\u001bH\u0016R\u000e\u0010\u0004\u001a\u00020\u0005X\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u0006\u001a\u00020\u0007X\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\b\u001a\u00020\tX\u0082\u000e¢\u0006\u0002\n\u0000R\u000e\u0010\n\u001a\u00020\u000bX\u0082.¢\u0006\u0002\n\u0000¨\u0006\u001c"}, d2 = {"Lcn/mucang/android/jiakaoyi/k3setting/route/detail/RouteDetailFragment;", "Lcn/mucang/android/jiakaoyi/framework/base/ui/BaseFragment;", "Lcn/mucang/android/jiakaoyi/signal/center/callback/SignalCallback;", "()V", "estimator", "Lcn/mucang/android/jiakaoyi/signal/handle/gps/GpsEstimator;", "location", "Landroid/location/Location;", "speakTime", "", "viewBinding", "Lcn/mucang/android/jiakaoyi/k3setting/databinding/RouteDetailFragmentBinding;", "getStatName", "", "onCreateView", "Landroid/view/View;", "inflater", "Landroid/view/LayoutInflater;", TtmlNode.RUBY_CONTAINER, "Landroid/view/ViewGroup;", "savedInstanceState", "Landroid/os/Bundle;", "onPause", "", "onResume", "onSignalChanged", "signalGetter", "Lcn/mucang/android/jiakaoyi/signal/center/SignalGetter;", "k3setting_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
public final class RouteDetailFragment extends BaseFragment implements a {
    private RouteDetailFragmentBinding b;
    private long c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final e f4495d = new e();

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private final Location f4496e = new Location("gps");

    /* JADX INFO: Access modifiers changed from: private */
    public static final void t(RouteDetailFragment$onCreateView$adapter$1 adapter, List it) {
        r.e(adapter, "$adapter");
        r.d(it, "it");
        adapter.i(it);
        adapter.notifyDataSetChanged();
    }

    @Override // cn.mucang.android.core.config.t
    public String getStatName() {
        return "路线采集-地图模式";
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v4, types: [androidx.recyclerview.widget.RecyclerView$Adapter, cn.mucang.android.jiakaoyi.k3setting.route.detail.RouteDetailFragment$onCreateView$adapter$1] */
    /* JADX WARN: Type inference fix 'apply assigned field type' failed
    java.lang.UnsupportedOperationException: ArgType.getObject(), call class: class jadx.core.dex.instructions.args.ArgType$UnknownArg
    	at jadx.core.dex.instructions.args.ArgType.getObject(ArgType.java:596)
    	at jadx.core.dex.attributes.nodes.ClassTypeVarsAttr.getTypeVarsMapFor(ClassTypeVarsAttr.java:35)
    	at jadx.core.dex.nodes.utils.TypeUtils.replaceClassGenerics(TypeUtils.java:177)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.insertExplicitUseCast(FixTypesVisitor.java:397)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.tryFieldTypeWithNewCasts(FixTypesVisitor.java:359)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.applyFieldType(FixTypesVisitor.java:309)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.visit(FixTypesVisitor.java:94)
     */
    @Override // cn.mucang.android.core.config.q, androidx.fragment.app.Fragment
    public View onCreateView(LayoutInflater inflater, ViewGroup container, Bundle savedInstanceState) {
        r.e(inflater, "inflater");
        RouteDetailFragmentBinding routeDetailFragmentBindingInflate = RouteDetailFragmentBinding.inflate(inflater, container, false);
        r.d(routeDetailFragmentBindingInflate, "inflate(inflater, container, false)");
        this.b = routeDetailFragmentBindingInflate;
        if (routeDetailFragmentBindingInflate == null) {
            r.u("viewBinding");
            throw null;
        }
        routeDetailFragmentBindingInflate.recyclerView.setLayoutManager(new GridLayoutManager(getContext(), 3));
        j0 j0VarA = new m0(requireActivity()).a(RouteMapViewModel.class);
        r.d(j0VarA, "ViewModelProvider(requir…MapViewModel::class.java)");
        final RouteMapViewModel routeMapViewModel = (RouteMapViewModel) j0VarA;
        final ?? r0 = new f(routeMapViewModel) { // from class: cn.mucang.android.jiakaoyi.k3setting.route.detail.RouteDetailFragment$onCreateView$adapter$1

            /* JADX INFO: renamed from: d, reason: collision with root package name */
            final /* synthetic */ RouteMapViewModel f4497d;

            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            {
                super(null, 0, null, 7, null);
                this.f4497d = routeMapViewModel;
                g(StepOrderItem.class, new RouteStepItemBinder(new Function1<StepOrderItem, v>() { // from class: cn.mucang.android.jiakaoyi.k3setting.route.detail.RouteDetailFragment$onCreateView$adapter$1.1
                    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                    {
                        super(1);
                    }

                    @Override // kotlin.jvm.functions.Function1
                    public /* bridge */ /* synthetic */ v invoke(StepOrderItem stepOrderItem) {
                        invoke2(stepOrderItem);
                        return v.f15822a;
                    }

                    /* JADX INFO: renamed from: invoke, reason: avoid collision after fix types in other method */
                    public final void invoke2(StepOrderItem it) {
                        r.e(it, "it");
                        cn.mucang.android.jiakaoyi.signal.c.e eVarT = d.t();
                        if (eVarT.getCurrentPosition() == null || eVarT.getCurrentPosition().f5281g == null || !eVarT.getCurrentPosition().f5281g.hasSpeed()) {
                            u.h("请先将车辆开起来");
                        } else if (k.c(routeDetailFragment.f4496e)) {
                            routeMapViewModel.l(it, routeDetailFragment.f4496e);
                        } else {
                            u.h("GPS定位失败");
                        }
                    }
                }));
            }
        };
        j0 j0VarA2 = new m0(requireActivity()).a(K3RouteStepViewModel.class);
        r.d(j0VarA2, "ViewModelProvider(requir…tepViewModel::class.java)");
        ((K3RouteStepViewModel) j0VarA2).k().h(requireActivity(), new a0() { // from class: cn.mucang.android.jiakaoyi.k3setting.route.detail.e
            @Override // androidx.lifecycle.a0
            public final void onChanged(Object obj) {
                RouteDetailFragment.t(r0, (List) obj);
            }
        });
        RouteDetailFragmentBinding routeDetailFragmentBinding = this.b;
        if (routeDetailFragmentBinding == null) {
            r.u("viewBinding");
            throw null;
        }
        routeDetailFragmentBinding.recyclerView.setAdapter(r0);
        androidx.fragment.app.u uVarM = getChildFragmentManager().m();
        uVarM.b(R.id.mapLayout, new RouteGatherMapFragment());
        uVarM.j();
        RouteDetailFragmentBinding routeDetailFragmentBinding2 = this.b;
        if (routeDetailFragmentBinding2 != null) {
            return routeDetailFragmentBinding2.getRoot();
        }
        r.u("viewBinding");
        throw null;
    }

    @Override // cn.mucang.android.core.config.q, androidx.fragment.app.Fragment
    public void onPause() {
        super.onPause();
        d.m.n(this);
    }

    @Override // cn.mucang.android.core.config.q, androidx.fragment.app.Fragment
    public void onResume() {
        super.onResume();
        d.m.b(this);
    }

    @Override // cn.mucang.android.jiakaoyi.signal.c.f.a
    public void onSignalChanged(cn.mucang.android.jiakaoyi.signal.c.e signalGetter) {
        r.e(signalGetter, "signalGetter");
        if (signalGetter.d().b > 25.0f && this.c == 0) {
            TtsManager.r("请将速度维持在25码以内", TtsGrade.GlobalTip);
            this.c = SystemClock.elapsedRealtime();
        }
        this.f4496e.set(this.f4495d.a(signalGetter));
    }
}
