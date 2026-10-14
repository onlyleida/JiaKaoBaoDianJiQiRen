package cn.mucang.android.jiakaoyi.k3setting.p003route.edit;

import android.annotation.SuppressLint;
import android.content.Context;
import android.location.Location;
import android.text.Editable;
import android.text.TextUtils;
import android.text.TextWatcher;
import android.view.View;
import android.widget.CompoundButton;
import android.widget.TextView;
import androidx.fragment.app.FragmentManager;
import androidx.lifecycle.a0;
import androidx.lifecycle.j0;
import androidx.lifecycle.m0;
import androidx.lifecycle.z;
import androidx.recyclerview.widget.LinearLayoutManager;
import androidx.recyclerview.widget.RecyclerView;
import cn.mucang.android.core.utils.g;
import cn.mucang.android.core.utils.u;
import cn.mucang.android.core.utils.y;
import cn.mucang.android.jiakaoyi.engine.model.Step;
import cn.mucang.android.jiakaoyi.exam.k3.teach.model.K3TeachEntity;
import cn.mucang.android.jiakaoyi.framework.tts.TtsGrade;
import cn.mucang.android.jiakaoyi.framework.tts.TtsManager;
import cn.mucang.android.jiakaoyi.framework.utils.FormatUtils;
import cn.mucang.android.jiakaoyi.k3setting.databinding.RouteEditMapBinding;
import cn.mucang.android.jiakaoyi.k3setting.order.viewmodel.K3RouteStepViewModel;
import cn.mucang.android.jiakaoyi.k3setting.p003route.detail.RouteBaseMapFragment;
import cn.mucang.android.jiakaoyi.k3setting.p003route.detail.RouteSaveDialog;
import cn.mucang.android.jiakaoyi.k3setting.teach.K3TeachSettingViewModel;
import cn.mucang.android.jiakaoyi.signal.pos.Gps;
import cn.mucang.jiakaoyi.uilib.model.OnlineRoute;
import cn.mucang.jiakaoyi.uilib.model.RouteNode;
import cn.mucang.jiakaoyi.uilib.model.RouteSpotNode;
import cn.mucang.jiakaoyi.uilib.model.StepOrderItem;
import cn.mucang.sundial.library.entity.ExtraKey;
import com.amap.api.maps.AMap;
import com.amap.api.maps.MapView;
import com.amap.api.maps.model.BitmapDescriptorFactory;
import com.drakeet.multitype.f;
import com.google.android.exoplayer2.text.ttml.TtmlNode;
import java.util.ArrayList;
import java.util.List;
import java.util.Map;
import java.util.Objects;
import java.util.UUID;
import kotlin.Metadata;
import kotlin.collections.CollectionsKt___CollectionsKt;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.r;
import kotlin.text.StringsKt__StringsKt;
import kotlin.text.s;
import kotlin.text.t;
import kotlin.v;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000f\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\b\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0007\n\u0002\u0018\u0002\n\u0002\b\b\u0018\u00002\b\u0012\u0004\u0012\u00020\u00020\u00012\u00020\u0003:\u0001,B\u0005¢\u0006\u0002\u0010\u0004J\b\u0010\u0015\u001a\u00020\u0016H\u0002J\b\u0010\u0017\u001a\u00020\u0016H\u0002J\b\u0010\u0018\u001a\u00020\u0019H\u0016J\b\u0010\u001a\u001a\u00020\u001bH\u0016J\b\u0010\u001c\u001a\u00020\u001dH\u0016J\b\u0010\u001e\u001a\u00020\u0016H\u0002J\b\u0010\u001f\u001a\u00020\u0016H\u0002J\b\u0010 \u001a\u00020\u0016H\u0016J\b\u0010!\u001a\u00020\u0016H\u0017J\u0010\u0010\t\u001a\u00020\u00162\u0006\u0010\"\u001a\u00020\bH\u0002J\u0012\u0010#\u001a\u00020\u00162\b\u0010$\u001a\u0004\u0018\u00010%H\u0016J\b\u0010&\u001a\u00020\u0016H\u0002J\u0010\u0010'\u001a\u00020\u00162\u0006\u0010(\u001a\u00020\u000bH\u0002J\u0018\u0010)\u001a\u00020\u00162\u0006\u0010*\u001a\u00020\b2\u0006\u0010+\u001a\u00020\rH\u0002R\u000e\u0010\u0005\u001a\u00020\u0006X\u0082\u0004¢\u0006\u0002\n\u0000R\u0010\u0010\u0007\u001a\u0004\u0018\u00010\bX\u0082\u000e¢\u0006\u0002\n\u0000R\u0010\u0010\t\u001a\u0004\u0018\u00010\bX\u0082\u000e¢\u0006\u0002\n\u0000R\u000e\u0010\n\u001a\u00020\u000bX\u0082\u000e¢\u0006\u0002\n\u0000R\u000e\u0010\f\u001a\u00020\rX\u0082\u000e¢\u0006\u0002\n\u0000R\u000e\u0010\u000e\u001a\u00020\u0006X\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u000f\u001a\u00020\u0010X\u0082.¢\u0006\u0002\n\u0000R\u000e\u0010\u0011\u001a\u00020\u0012X\u0082.¢\u0006\u0002\n\u0000R\u000e\u0010\u0013\u001a\u00020\u0014X\u0082.¢\u0006\u0002\n\u0000¨\u0006-"}, d2 = {"Lcn/mucang/android/jiakaoyi/k3setting/route/edit/RouteEditMapFragment;", "Lcn/mucang/android/jiakaoyi/k3setting/route/detail/RouteBaseMapFragment;", "Lcn/mucang/android/jiakaoyi/k3setting/databinding/RouteEditMapBinding;", "Landroid/view/View$OnClickListener;", "()V", "adapter", "Lcom/drakeet/multitype/MultiTypeAdapter;", "editNode", "Lcn/mucang/jiakaoyi/uilib/model/RouteSpotNode;", "insertNode", "isEdit", "", "lastSelectIndex", "", "orderAdapter", "routeTeachEditLogic", "Lcn/mucang/android/jiakaoyi/k3setting/route/edit/RouteTeachEditLogic;", "teachViewModel", "Lcn/mucang/android/jiakaoyi/k3setting/teach/K3TeachSettingViewModel;", "viewModel", "Lcn/mucang/android/jiakaoyi/k3setting/route/edit/RouteEditViewModel;", "addBrakePoint", "", "changeModel", "getMap", "Lcom/amap/api/maps/AMap;", "getMapView", "Lcom/amap/api/maps/MapView;", "getStatName", "", "initBottomView", "initRecyclerView", "initView", "initViewModel", "node", "onClick", "v", "Landroid/view/View;", "setHeader", "showBottomView", "edit", "showFuncPop", "routeNode", "position", "SimpleWatcher", "k3setting_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
public final class RouteEditMapFragment extends RouteBaseMapFragment<RouteEditMapBinding> implements View.OnClickListener {
    private RouteEditViewModel k;
    private K3TeachSettingViewModel l;
    private boolean o;
    private RouteSpotNode p;
    private RouteSpotNode q;
    private RouteTeachEditLogic s;
    private final f m = new f(null, 0, null, 7, null);
    private final f n = new f(null, 0, null, 7, null);
    private int r = -1;

    @Metadata(d1 = {"\u0000&\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\r\n\u0000\n\u0002\u0010\b\n\u0002\b\u0005\b\u0016\u0018\u00002\u00020\u0001B\u0005¢\u0006\u0002\u0010\u0002J\u0012\u0010\u0003\u001a\u00020\u00042\b\u0010\u0005\u001a\u0004\u0018\u00010\u0006H\u0016J*\u0010\u0007\u001a\u00020\u00042\b\u0010\u0005\u001a\u0004\u0018\u00010\b2\u0006\u0010\t\u001a\u00020\n2\u0006\u0010\u000b\u001a\u00020\n2\u0006\u0010\f\u001a\u00020\nH\u0016J*\u0010\r\u001a\u00020\u00042\b\u0010\u0005\u001a\u0004\u0018\u00010\b2\u0006\u0010\t\u001a\u00020\n2\u0006\u0010\u000e\u001a\u00020\n2\u0006\u0010\u000b\u001a\u00020\nH\u0016¨\u0006\u000f"}, d2 = {"Lcn/mucang/android/jiakaoyi/k3setting/route/edit/RouteEditMapFragment$SimpleWatcher;", "Landroid/text/TextWatcher;", "()V", "afterTextChanged", "", "s", "Landroid/text/Editable;", "beforeTextChanged", "", TtmlNode.START, "", "count", TtmlNode.ANNOTATION_POSITION_AFTER, "onTextChanged", TtmlNode.ANNOTATION_POSITION_BEFORE, "k3setting_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
    public static class a implements TextWatcher {
        @Override // android.text.TextWatcher
        public void afterTextChanged(Editable s) {
        }

        @Override // android.text.TextWatcher
        public void beforeTextChanged(CharSequence s, int start, int count, int after) {
        }

        @Override // android.text.TextWatcher
        public void onTextChanged(CharSequence s, int start, int before, int count) {
        }
    }

    @Metadata(d1 = {"\u0000\u001d\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0000*\u0001\u0000\b\n\u0018\u00002\u00020\u0001J\u0018\u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u00052\u0006\u0010\u0006\u001a\u00020\u0007H\u0016¨\u0006\b"}, d2 = {"cn/mucang/android/jiakaoyi/k3setting/route/edit/RouteEditMapFragment$initRecyclerView$2", "Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;", "onScrollStateChanged", "", "recyclerView", "Landroidx/recyclerview/widget/RecyclerView;", "newState", "", "k3setting_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
    public static final class b extends RecyclerView.t {
        b() {
        }

        @Override // androidx.recyclerview.widget.RecyclerView.t
        public void onScrollStateChanged(RecyclerView recyclerView, int newState) {
            r.e(recyclerView, "recyclerView");
            RouteEditMapFragment.O(RouteEditMapFragment.this).funcLl.getRoot().setVisibility(8);
            RouteEditMapFragment.O(RouteEditMapFragment.this).funcLlTeach.getRoot().setVisibility(8);
            RouteEditMapFragment.this.q = null;
        }
    }

    @Metadata(d1 = {"\u0000\u0017\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000*\u0001\u0000\b\n\u0018\u00002\u00020\u0001J\u0012\u0010\u0002\u001a\u00020\u00032\b\u0010\u0004\u001a\u0004\u0018\u00010\u0005H\u0016¨\u0006\u0006"}, d2 = {"cn/mucang/android/jiakaoyi/k3setting/route/edit/RouteEditMapFragment$initView$4", "Lcn/mucang/android/jiakaoyi/k3setting/route/edit/RouteEditMapFragment$SimpleWatcher;", "afterTextChanged", "", "s", "Landroid/text/Editable;", "k3setting_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
    public static final class c extends a {
        c() {
        }

        @Override // cn.mucang.android.jiakaoyi.k3setting.route.edit.RouteEditMapFragment.a, android.text.TextWatcher
        public void afterTextChanged(Editable s) {
            String string;
            Float fI;
            super.afterTextChanged(s);
            RouteSpotNode routeSpotNode = RouteEditMapFragment.this.q;
            if (routeSpotNode == null) {
                return;
            }
            float fFloatValue = -1.0f;
            if (s != null && (string = s.toString()) != null && (fI = kotlin.text.r.i(string)) != null) {
                fFloatValue = fI.floatValue();
            }
            routeSpotNode.setStepDistance(fFloatValue);
        }
    }

    @Metadata(d1 = {"\u0000\u0017\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000*\u0001\u0000\b\n\u0018\u00002\u00020\u0001J\u0012\u0010\u0002\u001a\u00020\u00032\b\u0010\u0004\u001a\u0004\u0018\u00010\u0005H\u0016¨\u0006\u0006"}, d2 = {"cn/mucang/android/jiakaoyi/k3setting/route/edit/RouteEditMapFragment$initView$5", "Lcn/mucang/android/jiakaoyi/k3setting/route/edit/RouteEditMapFragment$SimpleWatcher;", "afterTextChanged", "", "s", "Landroid/text/Editable;", "k3setting_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
    public static final class d extends a {
        d() {
        }

        @Override // cn.mucang.android.jiakaoyi.k3setting.route.edit.RouteEditMapFragment.a, android.text.TextWatcher
        public void afterTextChanged(Editable s) {
            String string;
            super.afterTextChanged(s);
            RouteSpotNode routeSpotNode = RouteEditMapFragment.this.q;
            if (routeSpotNode == null) {
                return;
            }
            Integer numJ = null;
            if (s != null && (string = s.toString()) != null) {
                numJ = s.j(string);
            }
            routeSpotNode.setRandomGroup(numJ);
        }
    }

    public static final /* synthetic */ RouteEditMapBinding O(RouteEditMapFragment routeEditMapFragment) {
        return routeEditMapFragment.A();
    }

    private final void S() {
        String string = A().distance.etDistance.getText().toString();
        Objects.requireNonNull(string, "null cannot be cast to non-null type kotlin.CharSequence");
        String string2 = StringsKt__StringsKt.J0(string).toString();
        if (TextUtils.isEmpty(string2)) {
            u.h("请输入正确的字符");
            return;
        }
        Integer numF = y.f(string2);
        if (numF == null || numF.intValue() <= 0) {
            u.h("请输入正确的字符");
            return;
        }
        RouteSpotNode routeSpotNode = this.q;
        if (routeSpotNode != null) {
            r.c(routeSpotNode);
            if (routeSpotNode.getLat() > 0.0d) {
                RouteSpotNode routeSpotNode2 = this.q;
                r.c(routeSpotNode2);
                if (routeSpotNode2.getLon() > 0.0d) {
                    RouteSpotNode routeSpotNode3 = this.q;
                    v vVar = null;
                    if (routeSpotNode3 != null) {
                        RouteEditViewModel routeEditViewModel = this.k;
                        if (routeEditViewModel == null) {
                            r.u("viewModel");
                            throw null;
                        }
                        Location f4555h = routeEditViewModel.getF4555h();
                        routeSpotNode3.setBrakeBearing(f4555h.getBearing());
                        routeSpotNode3.setBrakeLon(f4555h.getLongitude());
                        routeSpotNode3.setBrakeLat(f4555h.getLatitude());
                        routeSpotNode3.setBrakeDistance(numF.intValue());
                        TtsManager.r("已采集刹车点", TtsGrade.GlobalTip);
                        RouteEditViewModel routeEditViewModel2 = this.k;
                        if (routeEditViewModel2 == null) {
                            r.u("viewModel");
                            throw null;
                        }
                        z<OnlineRoute> zVarM = routeEditViewModel2.m();
                        RouteEditViewModel routeEditViewModel3 = this.k;
                        if (routeEditViewModel3 == null) {
                            r.u("viewModel");
                            throw null;
                        }
                        zVarM.l(routeEditViewModel3.m().e());
                        vVar = v.f15822a;
                    }
                    if (vVar == null) {
                        H("请先选择项目");
                        return;
                    }
                    return;
                }
            }
        }
        H("请先选择项目");
    }

    private final void T() {
        if (this.o) {
            A().bottomTv.setText("编辑");
            A().orderRecyclerView.setVisibility(0);
        } else {
            A().bottomTv.setText("打点");
            A().orderRecyclerView.setVisibility(8);
        }
        A().funcLlTeach.getRoot().setVisibility(8);
        y0(this.o);
    }

    private final void U() {
        A().distance.tvAdd.setOnClickListener(new View.OnClickListener() { // from class: cn.mucang.android.jiakaoyi.k3setting.route.edit.t
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                RouteEditMapFragment.Y(this.f4602a, view);
            }
        });
        A().distance.tvDelete.setOnClickListener(new View.OnClickListener() { // from class: cn.mucang.android.jiakaoyi.k3setting.route.edit.r
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                RouteEditMapFragment.V(this.f4598a, view);
            }
        });
        A().distance.tvMove.setOnClickListener(new View.OnClickListener() { // from class: cn.mucang.android.jiakaoyi.k3setting.route.edit.a0
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                RouteEditMapFragment.W(this.f4559a, view);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void V(RouteEditMapFragment this$0, View view) {
        r.e(this$0, "this$0");
        RouteSpotNode routeSpotNode = this$0.q;
        if (routeSpotNode == null) {
            this$0.H("请先选择项目");
            return;
        }
        if (routeSpotNode != null) {
            routeSpotNode.setBrakeDistance(0.0d);
        }
        RouteSpotNode routeSpotNode2 = this$0.q;
        if (routeSpotNode2 != null) {
            routeSpotNode2.setBrakeLon(0.0d);
        }
        RouteSpotNode routeSpotNode3 = this$0.q;
        if (routeSpotNode3 != null) {
            routeSpotNode3.setBrakeLat(0.0d);
        }
        RouteSpotNode routeSpotNode4 = this$0.q;
        if (routeSpotNode4 != null) {
            routeSpotNode4.setBrakeBearing(BitmapDescriptorFactory.HUE_RED);
        }
        RouteEditViewModel routeEditViewModel = this$0.k;
        if (routeEditViewModel == null) {
            r.u("viewModel");
            throw null;
        }
        z<OnlineRoute> zVarM = routeEditViewModel.m();
        RouteEditViewModel routeEditViewModel2 = this$0.k;
        if (routeEditViewModel2 != null) {
            zVarM.l(routeEditViewModel2.m().e());
        } else {
            r.u("viewModel");
            throw null;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void W(final RouteEditMapFragment this$0, View view) {
        r.e(this$0, "this$0");
        RouteSpotNode routeSpotNode = this$0.q;
        if (routeSpotNode == null) {
            this$0.H("请先选择项目");
            return;
        }
        r.c(routeSpotNode);
        if (routeSpotNode.getBrakeLon() > 0.0d) {
            RouteSpotNode routeSpotNode2 = this$0.q;
            r.c(routeSpotNode2);
            if (routeSpotNode2.getBrakeLat() > 0.0d) {
                RouteSpotNode routeSpotNode3 = this$0.q;
                r.c(routeSpotNode3);
                double brakeLat = routeSpotNode3.getBrakeLat();
                RouteSpotNode routeSpotNode4 = this$0.q;
                r.c(routeSpotNode4);
                Gps gps = new Gps(brakeLat, routeSpotNode4.getBrakeLon());
                FragmentManager childFragmentManager = this$0.getChildFragmentManager();
                RouteSpotNode routeSpotNode5 = this$0.q;
                r.c(routeSpotNode5);
                c1.w(childFragmentManager, gps, routeSpotNode5.getBrakeBearing(), new cn.mucang.android.jiakaoyi.framework.h.b() { // from class: cn.mucang.android.jiakaoyi.k3setting.route.edit.s
                    @Override // cn.mucang.android.jiakaoyi.framework.h.b
                    public final void callback(Object obj) {
                        RouteEditMapFragment.X(this.f4600a, (Gps) obj);
                    }
                });
                return;
            }
        }
        u.h("请先采集刹车点");
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void X(RouteEditMapFragment this$0, Gps gps) {
        r.e(this$0, "this$0");
        RouteSpotNode routeSpotNode = this$0.q;
        if (routeSpotNode != null) {
            routeSpotNode.setBrakeLat(gps.latitude);
        }
        RouteSpotNode routeSpotNode2 = this$0.q;
        if (routeSpotNode2 != null) {
            routeSpotNode2.setBrakeLon(gps.longitude);
        }
        RouteEditViewModel routeEditViewModel = this$0.k;
        if (routeEditViewModel == null) {
            r.u("viewModel");
            throw null;
        }
        z<OnlineRoute> zVarM = routeEditViewModel.m();
        RouteEditViewModel routeEditViewModel2 = this$0.k;
        if (routeEditViewModel2 != null) {
            zVarM.l(routeEditViewModel2.m().e());
        } else {
            r.u("viewModel");
            throw null;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void Y(RouteEditMapFragment this$0, View view) {
        r.e(this$0, "this$0");
        this$0.S();
    }

    private final void Z() {
        this.m.g(RouteSpotNode.class, new RouteEditMapItemBinder(new Function2<RouteSpotNode, Integer, v>() { // from class: cn.mucang.android.jiakaoyi.k3setting.route.edit.RouteEditMapFragment$initRecyclerView$1
            {
                super(2);
            }

            @Override // kotlin.jvm.functions.Function2
            public /* bridge */ /* synthetic */ v invoke(RouteSpotNode routeSpotNode, Integer num) {
                invoke(routeSpotNode, num.intValue());
                return v.f15822a;
            }

            public final void invoke(RouteSpotNode routeNode, int i) {
                r.e(routeNode, "routeNode");
                this.this$0.z0(routeNode, i);
                this.this$0.m.notifyDataSetChanged();
            }
        }));
        A().recyclerView.setLayoutManager(new LinearLayoutManager(getContext(), 1, false));
        A().recyclerView.setAdapter(this.m);
        A().recyclerView.addOnScrollListener(new b());
        A().orderRecyclerView.setLayoutManager(new LinearLayoutManager(getContext(), 1, false));
        A().orderRecyclerView.setAdapter(this.n);
        this.n.g(StepOrderItem.class, new SelectOrderItemBinder(new Function1<StepOrderItem, v>() { // from class: cn.mucang.android.jiakaoyi.k3setting.route.edit.RouteEditMapFragment$initRecyclerView$3
            {
                super(1);
            }

            @Override // kotlin.jvm.functions.Function1
            public /* bridge */ /* synthetic */ v invoke(StepOrderItem stepOrderItem) {
                invoke2(stepOrderItem);
                return v.f15822a;
            }

            /* JADX INFO: renamed from: invoke, reason: avoid collision after fix types in other method */
            public final void invoke2(StepOrderItem stepOrder) {
                List<RouteSpotNode> routeSpotList;
                r.e(stepOrder, "stepOrder");
                RouteEditViewModel routeEditViewModel = this.this$0.k;
                if (routeEditViewModel == null) {
                    r.u("viewModel");
                    throw null;
                }
                OnlineRoute onlineRouteE = routeEditViewModel.m().e();
                int iH0 = -1;
                if (onlineRouteE != null && (routeSpotList = onlineRouteE.getRouteSpotList()) != null) {
                    iH0 = CollectionsKt___CollectionsKt.h0(routeSpotList, this.this$0.p);
                }
                RouteSpotNode routeSpotNode = this.this$0.p;
                if (routeSpotNode == null) {
                    routeSpotNode = new RouteSpotNode();
                    RouteEditViewModel routeEditViewModel2 = this.this$0.k;
                    if (routeEditViewModel2 == null) {
                        r.u("viewModel");
                        throw null;
                    }
                    Location f4555h = routeEditViewModel2.getF4555h();
                    routeSpotNode.setLat(f4555h.getLatitude());
                    routeSpotNode.setLon(f4555h.getLongitude());
                    routeSpotNode.setBearing(f4555h.getBearing());
                    routeSpotNode.setStepId(stepOrder.stepId);
                    routeSpotNode.setAlias(stepOrder.stepAliasName);
                    routeSpotNode.setOrderId(stepOrder.id);
                    String string = UUID.randomUUID().toString();
                    r.d(string, "randomUUID().toString()");
                    routeSpotNode.setUid(t.x(string, "-", "", false, 4, null));
                }
                RouteEditViewModel routeEditViewModel3 = this.this$0.k;
                if (routeEditViewModel3 == null) {
                    r.u("viewModel");
                    throw null;
                }
                Context contextRequireContext = this.this$0.requireContext();
                r.d(contextRequireContext, "requireContext()");
                routeEditViewModel3.o(contextRequireContext, routeSpotNode, iH0);
                K3TeachSettingViewModel k3TeachSettingViewModel = this.this$0.l;
                if (k3TeachSettingViewModel == null) {
                    r.u("teachViewModel");
                    throw null;
                }
                if (!k3TeachSettingViewModel.r().isEmpty()) {
                    RouteTeachEditLogic routeTeachEditLogic = this.this$0.s;
                    if (routeTeachEditLogic == null) {
                        r.u("routeTeachEditLogic");
                        throw null;
                    }
                    K3TeachSettingViewModel k3TeachSettingViewModel2 = this.this$0.l;
                    if (k3TeachSettingViewModel2 == null) {
                        r.u("teachViewModel");
                        throw null;
                    }
                    Map<Step, List<K3TeachEntity>> mapR = k3TeachSettingViewModel2.r();
                    Step stepFindWithType = Step.findWithType(stepOrder.stepId);
                    r.d(stepFindWithType, "findWithType(stepOrder.stepId)");
                    routeTeachEditLogic.h(mapR, stepFindWithType, routeSpotNode);
                }
            }
        }));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void a0(RouteEditMapFragment this$0, CompoundButton compoundButton, boolean z) {
        r.e(this$0, "this$0");
        RouteSpotNode routeSpotNode = this$0.q;
        if (routeSpotNode == null) {
            return;
        }
        routeSpotNode.setPlayStartVoice(z);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void b0(RouteEditMapFragment this$0, CompoundButton compoundButton, boolean z) {
        r.e(this$0, "this$0");
        RouteSpotNode routeSpotNode = this$0.q;
        if (routeSpotNode == null) {
            return;
        }
        routeSpotNode.setJudgeTurnLight(z);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void c0(RouteEditMapFragment this$0, CompoundButton compoundButton, boolean z) {
        r.e(this$0, "this$0");
        RouteSpotNode routeSpotNode = this$0.q;
        if (routeSpotNode == null) {
            return;
        }
        routeSpotNode.setJudgeBrake(z);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void d0(RouteEditMapFragment this$0, View view) {
        r.e(this$0, "this$0");
        this$0.p = null;
        this$0.A().funcLl.getRoot().setVisibility(8);
        this$0.o = !this$0.o;
        this$0.T();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void e0(final RouteEditMapFragment this$0, View view) {
        r.e(this$0, "this$0");
        RouteSaveDialog routeSaveDialog = new RouteSaveDialog();
        RouteEditViewModel routeEditViewModel = this$0.k;
        if (routeEditViewModel == null) {
            r.u("viewModel");
            throw null;
        }
        OnlineRoute onlineRouteE = routeEditViewModel.m().e();
        String routeName = onlineRouteE == null ? null : onlineRouteE.getRouteName();
        RouteEditViewModel routeEditViewModel2 = this$0.k;
        if (routeEditViewModel2 == null) {
            r.u("viewModel");
            throw null;
        }
        OnlineRoute onlineRouteE2 = routeEditViewModel2.m().e();
        boolean zIsCanPublic = onlineRouteE2 == null ? true : onlineRouteE2.isCanPublic();
        RouteEditViewModel routeEditViewModel3 = this$0.k;
        if (routeEditViewModel3 == null) {
            r.u("viewModel");
            throw null;
        }
        OnlineRoute onlineRouteE3 = routeEditViewModel3.m().e();
        routeSaveDialog.A(routeName, zIsCanPublic, onlineRouteE3 != null ? onlineRouteE3.isCopy() : true);
        routeSaveDialog.B(new Function2<String, Boolean, v>() { // from class: cn.mucang.android.jiakaoyi.k3setting.route.edit.RouteEditMapFragment$initView$7$1
            {
                super(2);
            }

            @Override // kotlin.jvm.functions.Function2
            public /* bridge */ /* synthetic */ v invoke(String str, Boolean bool) {
                invoke(str, bool.booleanValue());
                return v.f15822a;
            }

            public final void invoke(String name, boolean z) {
                r.e(name, "name");
                RouteEditViewModel routeEditViewModel4 = this.this$0.k;
                if (routeEditViewModel4 != null) {
                    routeEditViewModel4.w(name, z);
                } else {
                    r.u("viewModel");
                    throw null;
                }
            }
        });
        routeSaveDialog.show(this$0.getChildFragmentManager(), "");
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void f0(RouteEditMapFragment this$0, RouteSpotNode routeSpotNode) {
        r.e(this$0, "this$0");
        this$0.q = routeSpotNode;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void g0(RouteEditMapFragment this$0, RouteEditHpMapLogic routeEditHpMapLogic, OnlineRoute onlineRoute) {
        r.e(this$0, "this$0");
        r.e(routeEditHpMapLogic, "$routeEditHpMapLogic");
        if (g.d(onlineRoute.getRouteSpotList())) {
            f fVar = this$0.m;
            List<RouteSpotNode> routeSpotList = onlineRoute.getRouteSpotList();
            if (routeSpotList == null) {
                routeSpotList = new ArrayList<>();
            }
            fVar.i(routeSpotList);
            this$0.m.notifyDataSetChanged();
            List<RouteNode> nodes = onlineRoute.toLocalRoute().getNodes();
            r.d(nodes, "nodes");
            this$0.u(nodes, true);
            this$0.r();
            for (RouteNode node : nodes) {
                r.d(node, "node");
                this$0.w(node);
                this$0.s(node);
            }
            routeEditHpMapLogic.v(nodes);
            int iZ = this$0.z(nodes);
            RouteEditViewModel routeEditViewModel = this$0.k;
            if (routeEditViewModel == null) {
                r.u("viewModel");
                throw null;
            }
            routeEditViewModel.x(iZ);
            this$0.A().distance.distanceTv.setText(r.m(FormatUtils.b(iZ), ExtraKey.km));
            this$0.A().distance.bearTv.setText(String.valueOf((int) ((RouteNode) kotlin.collections.s.o0(nodes)).getBearing()));
        }
        this$0.x0();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void h0(RouteEditMapFragment this$0, List it) {
        r.e(this$0, "this$0");
        f fVar = this$0.n;
        r.d(it, "it");
        fVar.i(it);
        this$0.n.notifyDataSetChanged();
        RouteEditHelper routeEditHelper = RouteEditHelper.f4615a;
        RouteEditViewModel routeEditViewModel = this$0.k;
        if (routeEditViewModel == null) {
            r.u("viewModel");
            throw null;
        }
        routeEditHelper.b(it, routeEditViewModel.m().e());
        RouteEditViewModel routeEditViewModel2 = this$0.k;
        if (routeEditViewModel2 == null) {
            r.u("viewModel");
            throw null;
        }
        z<OnlineRoute> zVarM = routeEditViewModel2.m();
        RouteEditViewModel routeEditViewModel3 = this$0.k;
        if (routeEditViewModel3 != null) {
            zVarM.l(routeEditViewModel3.m().e());
        } else {
            r.u("viewModel");
            throw null;
        }
    }

    private final void i0(RouteSpotNode routeSpotNode) {
        this.o = true;
        this.p = routeSpotNode;
        T();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void w0(RouteSpotNode node, RouteEditMapFragment this$0, Gps gps) {
        r.e(node, "$node");
        r.e(this$0, "this$0");
        node.setLat(gps.latitude);
        node.setLon(gps.longitude);
        RouteEditViewModel routeEditViewModel = this$0.k;
        if (routeEditViewModel == null) {
            r.u("viewModel");
            throw null;
        }
        z<OnlineRoute> zVarM = routeEditViewModel.m();
        RouteEditViewModel routeEditViewModel2 = this$0.k;
        if (routeEditViewModel2 != null) {
            zVarM.l(routeEditViewModel2.m().e());
        } else {
            r.u("viewModel");
            throw null;
        }
    }

    private final void x0() {
        RouteEditViewModel routeEditViewModel = this.k;
        if (routeEditViewModel == null) {
            r.u("viewModel");
            throw null;
        }
        OnlineRoute onlineRouteE = routeEditViewModel.m().e();
        boolean zIsCanPublic = onlineRouteE == null ? true : onlineRouteE.isCanPublic();
        TextView textView = A().header.nameTv;
        RouteEditViewModel routeEditViewModel2 = this.k;
        if (routeEditViewModel2 == null) {
            r.u("viewModel");
            throw null;
        }
        OnlineRoute onlineRouteE2 = routeEditViewModel2.m().e();
        textView.setText(onlineRouteE2 != null ? onlineRouteE2.getRouteName() : null);
        A().header.openTv.setSelected(zIsCanPublic);
        A().header.openTv.setText(zIsCanPublic ? "公开" : "未公开");
    }

    private final void y0(boolean z) {
        A().distance.tvAdd.setVisibility(0);
        A().distance.tvDelete.setVisibility(z ? 8 : 0);
        A().distance.tvMove.setVisibility(z ? 8 : 0);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void z0(RouteSpotNode routeSpotNode, int i) {
        int i2 = this.r;
        if (i2 != i) {
            this.m.notifyItemChanged(i2);
            this.m.notifyItemChanged(i);
        }
        I(routeSpotNode.getLat(), routeSpotNode.getLon());
        this.r = i;
        A().funcLl.getRoot().setVisibility(0);
        A().funcLlTeach.getRoot().setVisibility(0);
        A().funcLl.getRoot().setTag(routeSpotNode);
        this.q = routeSpotNode;
        Step step = Step.findWithType(routeSpotNode.getStepId());
        A().funcLl.tvSelectStep.setText("当前项目：" + (i + 1) + '-' + ((Object) step.getStepName()));
        if (routeSpotNode.getStepId() == Step.K3_DiaoTou.type || routeSpotNode.getStepId() == Step.K3_LuKouYouZhuan.type || routeSpotNode.getStepId() == Step.K3_LuKouZuoZhuan.type || routeSpotNode.getStepId() == Step.K3_LuKouZhiXing.type || routeSpotNode.getStepId() == Step.K3_BusStation.type) {
            A().funcLl.llJudge.setVisibility(0);
            A().funcLl.cbPlayVoice.setChecked(routeSpotNode.getPlayStartVoice());
            A().funcLl.cbJudgeLight.setChecked(routeSpotNode.getJudgeTurnLight());
            A().funcLl.cbJudgeBrake.setChecked(routeSpotNode.getJudgeBrake());
        } else {
            A().funcLl.llJudge.setVisibility(8);
        }
        if (routeSpotNode.getBrakeLon() <= 0.0d || routeSpotNode.getBrakeLat() <= 0.0d) {
            A().distance.etDistance.setText("30");
        } else {
            A().distance.etDistance.setText(String.valueOf((int) routeSpotNode.getBrakeDistance()));
        }
        if (routeSpotNode.getStepDistance() > BitmapDescriptorFactory.HUE_RED) {
            A().funcLl.etStepDistance.setText(String.valueOf((int) routeSpotNode.getStepDistance()));
        } else {
            A().funcLl.etStepDistance.setText("-1");
        }
        if (routeSpotNode.getRandomGroup() != null) {
            A().funcLl.etGroupNum.setText(String.valueOf(routeSpotNode.getRandomGroup()));
        } else {
            A().funcLl.etGroupNum.setText("");
        }
        K3TeachSettingViewModel k3TeachSettingViewModel = this.l;
        if (k3TeachSettingViewModel == null) {
            r.u("teachViewModel");
            throw null;
        }
        if (!k3TeachSettingViewModel.r().isEmpty()) {
            RouteTeachEditLogic routeTeachEditLogic = this.s;
            if (routeTeachEditLogic == null) {
                r.u("routeTeachEditLogic");
                throw null;
            }
            K3TeachSettingViewModel k3TeachSettingViewModel2 = this.l;
            if (k3TeachSettingViewModel2 == null) {
                r.u("teachViewModel");
                throw null;
            }
            Map<Step, List<K3TeachEntity>> mapR = k3TeachSettingViewModel2.r();
            r.d(step, "step");
            routeTeachEditLogic.h(mapR, step, routeSpotNode);
        }
    }

    @Override // cn.mucang.android.jiakaoyi.k3setting.p003route.detail.RouteBaseMapFragment
    public void B() {
        super.B();
        E(false);
        A().funcLl.cbPlayVoice.setOnCheckedChangeListener(new CompoundButton.OnCheckedChangeListener() { // from class: cn.mucang.android.jiakaoyi.k3setting.route.edit.y
            @Override // android.widget.CompoundButton.OnCheckedChangeListener
            public final void onCheckedChanged(CompoundButton compoundButton, boolean z) {
                RouteEditMapFragment.a0(this.f4612a, compoundButton, z);
            }
        });
        A().funcLl.cbJudgeLight.setOnCheckedChangeListener(new CompoundButton.OnCheckedChangeListener() { // from class: cn.mucang.android.jiakaoyi.k3setting.route.edit.u
            @Override // android.widget.CompoundButton.OnCheckedChangeListener
            public final void onCheckedChanged(CompoundButton compoundButton, boolean z) {
                RouteEditMapFragment.b0(this.f4604a, compoundButton, z);
            }
        });
        A().funcLl.cbJudgeBrake.setOnCheckedChangeListener(new CompoundButton.OnCheckedChangeListener() { // from class: cn.mucang.android.jiakaoyi.k3setting.route.edit.x
            @Override // android.widget.CompoundButton.OnCheckedChangeListener
            public final void onCheckedChanged(CompoundButton compoundButton, boolean z) {
                RouteEditMapFragment.c0(this.f4610a, compoundButton, z);
            }
        });
        A().funcLl.etStepDistance.addTextChangedListener(new c());
        A().funcLl.etGroupNum.addTextChangedListener(new d());
        A().funcLl.switchTv.setOnClickListener(this);
        A().funcLl.alignTv.setOnClickListener(this);
        A().funcLl.addTv.setOnClickListener(this);
        A().funcLl.deleteTv.setOnClickListener(this);
        A().funcLl.moveTv.setOnClickListener(this);
        A().bottomTv.setOnClickListener(new View.OnClickListener() { // from class: cn.mucang.android.jiakaoyi.k3setting.route.edit.o
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                RouteEditMapFragment.d0(this.f4592a, view);
            }
        });
        x0();
        A().header.editTv.setOnClickListener(new View.OnClickListener() { // from class: cn.mucang.android.jiakaoyi.k3setting.route.edit.z
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                RouteEditMapFragment.e0(this.f4614a, view);
            }
        });
        y0(false);
        U();
    }

    @Override // cn.mucang.android.jiakaoyi.k3setting.p003route.detail.RouteBaseMapFragment
    public AMap getMap() {
        AMap map = A().mapView.getMap();
        r.d(map, "viewBinding.mapView.map");
        return map;
    }

    @Override // cn.mucang.android.jiakaoyi.k3setting.p003route.detail.RouteBaseMapFragment, cn.mucang.android.core.config.t
    public String getStatName() {
        return "路线编辑地图模式";
    }

    @Override // cn.mucang.android.jiakaoyi.k3setting.p003route.detail.RouteBaseMapFragment
    @SuppressLint({"SetTextI18n"})
    public void initViewModel() {
        Z();
        j0 j0VarA = new m0(requireActivity()).a(K3RouteStepViewModel.class);
        r.d(j0VarA, "ViewModelProvider(requir…tepViewModel::class.java)");
        K3RouteStepViewModel k3RouteStepViewModel = (K3RouteStepViewModel) j0VarA;
        j0 j0VarA2 = new m0(requireActivity()).a(RouteEditViewModel.class);
        r.d(j0VarA2, "ViewModelProvider(requir…ditViewModel::class.java)");
        this.k = (RouteEditViewModel) j0VarA2;
        androidx.fragment.app.d dVarRequireActivity = requireActivity();
        androidx.fragment.app.d activity = getActivity();
        Objects.requireNonNull(activity, "null cannot be cast to non-null type cn.mucang.android.jiakaoyi.k3setting.route.edit.RouteEditActivity");
        j0 j0VarA3 = new m0(dVarRequireActivity, (RouteEditActivity) activity).a(K3TeachSettingViewModel.class);
        r.d(j0VarA3, "ViewModelProvider(requir…ingViewModel::class.java)");
        this.l = (K3TeachSettingViewModel) j0VarA3;
        RouteEditMapBinding routeEditMapBindingA = A();
        RouteEditViewModel routeEditViewModel = this.k;
        if (routeEditViewModel == null) {
            r.u("viewModel");
            throw null;
        }
        final RouteEditHpMapLogic routeEditHpMapLogic = new RouteEditHpMapLogic(this, routeEditMapBindingA, routeEditViewModel);
        routeEditHpMapLogic.j();
        RouteEditViewModel routeEditViewModel2 = this.k;
        if (routeEditViewModel2 == null) {
            r.u("viewModel");
            throw null;
        }
        this.s = new RouteTeachEditLogic(routeEditViewModel2, A());
        RouteEditViewModel routeEditViewModel3 = this.k;
        if (routeEditViewModel3 == null) {
            r.u("viewModel");
            throw null;
        }
        routeEditViewModel3.k().h(getViewLifecycleOwner(), new a0() { // from class: cn.mucang.android.jiakaoyi.k3setting.route.edit.p
            @Override // androidx.lifecycle.a0
            public final void onChanged(Object obj) {
                RouteEditMapFragment.f0(this.f4594a, (RouteSpotNode) obj);
            }
        });
        RouteEditViewModel routeEditViewModel4 = this.k;
        if (routeEditViewModel4 == null) {
            r.u("viewModel");
            throw null;
        }
        routeEditViewModel4.m().h(getViewLifecycleOwner(), new a0() { // from class: cn.mucang.android.jiakaoyi.k3setting.route.edit.v
            @Override // androidx.lifecycle.a0
            public final void onChanged(Object obj) {
                RouteEditMapFragment.g0(this.f4606a, routeEditHpMapLogic, (OnlineRoute) obj);
            }
        });
        k3RouteStepViewModel.k().h(getViewLifecycleOwner(), new a0() { // from class: cn.mucang.android.jiakaoyi.k3setting.route.edit.q
            @Override // androidx.lifecycle.a0
            public final void onChanged(Object obj) {
                RouteEditMapFragment.h0(this.f4596a, (List) obj);
            }
        });
    }

    @Override // android.view.View.OnClickListener
    public void onClick(View v) {
        Object tag = A().funcLl.getRoot().getTag();
        Objects.requireNonNull(tag, "null cannot be cast to non-null type cn.mucang.jiakaoyi.uilib.model.RouteSpotNode");
        final RouteSpotNode routeSpotNode = (RouteSpotNode) tag;
        if (r.a(v, A().funcLl.switchTv)) {
            RouteEditViewModel routeEditViewModel = this.k;
            if (routeEditViewModel == null) {
                r.u("viewModel");
                throw null;
            }
            FragmentManager childFragmentManager = getChildFragmentManager();
            r.d(childFragmentManager, "childFragmentManager");
            routeEditViewModel.y(routeSpotNode, childFragmentManager, new Function1<RouteSpotNode, v>() { // from class: cn.mucang.android.jiakaoyi.k3setting.route.edit.RouteEditMapFragment.onClick.1
                /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                {
                    super(1);
                }

                @Override // kotlin.jvm.functions.Function1
                public /* bridge */ /* synthetic */ v invoke(RouteSpotNode routeSpotNode2) {
                    invoke2(routeSpotNode2);
                    return v.f15822a;
                }

                /* JADX INFO: renamed from: invoke, reason: avoid collision after fix types in other method */
                public final void invoke2(RouteSpotNode it) {
                    r.e(it, "it");
                    K3TeachSettingViewModel k3TeachSettingViewModel = RouteEditMapFragment.this.l;
                    if (k3TeachSettingViewModel == null) {
                        r.u("teachViewModel");
                        throw null;
                    }
                    if (!k3TeachSettingViewModel.r().isEmpty()) {
                        RouteTeachEditLogic routeTeachEditLogic = RouteEditMapFragment.this.s;
                        if (routeTeachEditLogic == null) {
                            r.u("routeTeachEditLogic");
                            throw null;
                        }
                        K3TeachSettingViewModel k3TeachSettingViewModel2 = RouteEditMapFragment.this.l;
                        if (k3TeachSettingViewModel2 == null) {
                            r.u("teachViewModel");
                            throw null;
                        }
                        Map<Step, List<K3TeachEntity>> mapR = k3TeachSettingViewModel2.r();
                        Step stepFindWithType = Step.findWithType(routeSpotNode.getStepId());
                        r.d(stepFindWithType, "findWithType(node.stepId)");
                        routeTeachEditLogic.h(mapR, stepFindWithType, routeSpotNode);
                    }
                }
            });
        } else if (r.a(v, A().funcLl.alignTv)) {
            RouteEditViewModel routeEditViewModel2 = this.k;
            if (routeEditViewModel2 == null) {
                r.u("viewModel");
                throw null;
            }
            Context context = v.getContext();
            r.d(context, "v.context");
            routeEditViewModel2.d(context, routeSpotNode);
        } else if (r.a(v, A().funcLl.addTv)) {
            i0(routeSpotNode);
        } else if (r.a(v, A().funcLl.deleteTv)) {
            RouteEditViewModel routeEditViewModel3 = this.k;
            if (routeEditViewModel3 == null) {
                r.u("viewModel");
                throw null;
            }
            Context context2 = v.getContext();
            r.d(context2, "v.context");
            routeEditViewModel3.f(context2, routeSpotNode);
        } else if (r.a(v, A().funcLl.moveTv)) {
            c1.w(getChildFragmentManager(), new Gps(routeSpotNode.getLat(), routeSpotNode.getLon()), routeSpotNode.getBearing(), new cn.mucang.android.jiakaoyi.framework.h.b() { // from class: cn.mucang.android.jiakaoyi.k3setting.route.edit.w
                @Override // cn.mucang.android.jiakaoyi.framework.h.b
                public final void callback(Object obj) {
                    RouteEditMapFragment.w0(routeSpotNode, this, (Gps) obj);
                }
            });
        }
        A().funcLl.getRoot().setVisibility(8);
    }

    @Override // cn.mucang.android.jiakaoyi.k3setting.p003route.detail.RouteBaseMapFragment
    public MapView x() {
        MapView mapView = A().mapView;
        r.d(mapView, "viewBinding.mapView");
        return mapView;
    }
}
