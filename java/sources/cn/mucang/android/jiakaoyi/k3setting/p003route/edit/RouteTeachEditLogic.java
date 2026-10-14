package cn.mucang.android.jiakaoyi.k3setting.p003route.edit;

import android.content.res.Resources;
import android.graphics.Color;
import android.graphics.drawable.ColorDrawable;
import android.graphics.drawable.Drawable;
import android.location.Location;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.PopupWindow;
import android.widget.TextView;
import androidx.core.a.a;
import androidx.recyclerview.widget.LinearLayoutManager;
import androidx.recyclerview.widget.RecyclerView;
import cn.mucang.android.core.config.MucangConfig;
import cn.mucang.android.jiakaoyi.engine.model.Step;
import cn.mucang.android.jiakaoyi.exam.k3.teach.model.K3TeachEntity;
import cn.mucang.android.jiakaoyi.exam.k3.teach.model.TeachData;
import cn.mucang.android.jiakaoyi.framework.h.b;
import cn.mucang.android.jiakaoyi.framework.h.c;
import cn.mucang.android.jiakaoyi.k3setting.R;
import cn.mucang.android.jiakaoyi.k3setting.databinding.RouteEditMapBinding;
import cn.mucang.jiakaoyi.uilib.model.RouteSpotNode;
import cn.mucang.jiakaoyi.uilib.model.TeachPlan;
import cn.mucang.jiakaoyi.uilib.model.TeachStepNode;
import com.amap.api.maps.model.BitmapDescriptorFactory;
import com.drakeet.multitype.f;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import kotlin.Metadata;
import kotlin.collections.CollectionsKt___CollectionsKt;
import kotlin.jvm.internal.r;
import kotlin.v;

/* JADX INFO: renamed from: cn.mucang.android.jiakaoyi.k3setting.route.edit.d1, reason: from Kotlin metadata */
/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000j\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010%\n\u0002\u0018\u0002\n\u0002\u0010!\n\u0002\b\u0003\u0018\u00002\u00020\u0001B\u0015\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005¢\u0006\u0002\u0010\u0006J\u001e\u0010\u0012\u001a\b\u0012\u0004\u0012\u00020\u00140\u00132\u0006\u0010\u0015\u001a\u00020\u00162\u0006\u0010\u0017\u001a\u00020\u0018H\u0002J\u0010\u0010\u0019\u001a\u00020\r2\u0006\u0010\u001a\u001a\u00020\u0018H\u0002J$\u0010\u001b\u001a\u00020\u001c2\f\u0010\u001d\u001a\b\u0012\u0004\u0012\u00020\u000e0\u00132\f\u0010\u001e\u001a\b\u0012\u0004\u0012\u00020\u000e0\u001fH\u0002J0\u0010 \u001a\u00020\u001c2\u0018\u0010!\u001a\u0014\u0012\u0004\u0012\u00020#\u0012\n\u0012\b\u0012\u0004\u0012\u00020\u00160$0\"2\u0006\u0010%\u001a\u00020#2\u0006\u0010\u001a\u001a\u00020\u0018J\b\u0010&\u001a\u00020\u001cH\u0002R\u0011\u0010\u0002\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u0007\u0010\bR\u0010\u0010\t\u001a\u0004\u0018\u00010\nX\u0082\u000e¢\u0006\u0002\n\u0000R*\u0010\u000b\u001a\u001e\u0012\u0004\u0012\u00020\r\u0012\u0004\u0012\u00020\u000e0\fj\u000e\u0012\u0004\u0012\u00020\r\u0012\u0004\u0012\u00020\u000e`\u000fX\u0082\u000e¢\u0006\u0002\n\u0000R\u0011\u0010\u0004\u001a\u00020\u0005¢\u0006\b\n\u0000\u001a\u0004\b\u0010\u0010\u0011¨\u0006'"}, d2 = {"Lcn/mucang/android/jiakaoyi/k3setting/route/edit/RouteTeachEditLogic;", "", "editViewModel", "Lcn/mucang/android/jiakaoyi/k3setting/route/edit/RouteEditViewModel;", "viewBinding", "Lcn/mucang/android/jiakaoyi/k3setting/databinding/RouteEditMapBinding;", "(Lcn/mucang/android/jiakaoyi/k3setting/route/edit/RouteEditViewModel;Lcn/mucang/android/jiakaoyi/k3setting/databinding/RouteEditMapBinding;)V", "getEditViewModel", "()Lcn/mucang/android/jiakaoyi/k3setting/route/edit/RouteEditViewModel;", "popupWindow", "Landroid/widget/PopupWindow;", "teachPlanMap", "Ljava/util/HashMap;", "", "Lcn/mucang/jiakaoyi/uilib/model/TeachPlan;", "Lkotlin/collections/HashMap;", "getViewBinding", "()Lcn/mucang/android/jiakaoyi/k3setting/databinding/RouteEditMapBinding;", "createStepNodes", "", "Lcn/mucang/jiakaoyi/uilib/model/TeachStepNode;", "entity", "Lcn/mucang/android/jiakaoyi/exam/k3/teach/model/K3TeachEntity;", "spotNode", "Lcn/mucang/jiakaoyi/uilib/model/RouteSpotNode;", "getTeachPlanKey", "editNode", "initPopupWindow", "", "data", "selectCallback", "Lcn/mucang/android/jiakaoyi/framework/listeners/Callback;", "initTeachStepLayout", "teachMap", "", "Lcn/mucang/android/jiakaoyi/engine/model/Step;", "", "step", "showPopupWindow", "k3setting_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
public final class RouteTeachEditLogic {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final RouteEditViewModel f4569a;
    private final RouteEditMapBinding b;
    private PopupWindow c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private HashMap<String, TeachPlan> f4570d;

    public RouteTeachEditLogic(RouteEditViewModel editViewModel, RouteEditMapBinding viewBinding) {
        r.e(editViewModel, "editViewModel");
        r.e(viewBinding, "viewBinding");
        this.f4569a = editViewModel;
        this.b = viewBinding;
        this.f4570d = new HashMap<>();
    }

    private final List<TeachStepNode> a(K3TeachEntity k3TeachEntity, RouteSpotNode routeSpotNode) {
        ArrayList arrayList = new ArrayList();
        for (TeachData teachData : k3TeachEntity.items) {
            List<TeachStepNode> teachGpsList = routeSpotNode.getTeachGpsList();
            TeachStepNode teachStepNode = null;
            Object obj = null;
            if (teachGpsList != null) {
                for (Object obj2 : teachGpsList) {
                    if (r.a(((TeachStepNode) obj2).getTeachId(), teachData.id)) {
                        obj = obj2;
                        break;
                    }
                }
                teachStepNode = (TeachStepNode) obj;
            }
            if (teachStepNode == null) {
                teachStepNode = new TeachStepNode();
                teachStepNode.setTeachId(teachData.id);
                teachStepNode.setName(teachData.name);
                teachStepNode.setUid(routeSpotNode.getUid());
            }
            arrayList.add(teachStepNode);
        }
        return arrayList;
    }

    private final String c(RouteSpotNode routeSpotNode) {
        StringBuilder sb = new StringBuilder();
        sb.append(routeSpotNode.getStepId());
        sb.append('-');
        sb.append((Object) routeSpotNode.getUid());
        sb.append('-');
        sb.append(routeSpotNode.getTeachNum());
        return sb.toString();
    }

    private final void e(List<TeachPlan> list, final b<TeachPlan> bVar) {
        PopupWindow popupWindow = this.c;
        if (popupWindow != null && popupWindow.isShowing()) {
            PopupWindow popupWindow2 = this.c;
            if (popupWindow2 != null) {
                popupWindow2.dismiss();
            }
            this.c = null;
        }
        View viewInflate = LayoutInflater.from(MucangConfig.i()).inflate(R.layout.popup_dialog_layout, (ViewGroup) null, false);
        RecyclerView recyclerView = (RecyclerView) viewInflate.findViewById(R.id.recycler_view);
        recyclerView.setLayoutManager(new LinearLayoutManager(MucangConfig.i()));
        Drawable drawableF = a.f(MucangConfig.i(), R.drawable.shape_e0e0e0_divider);
        Resources resources = MucangConfig.i().getResources();
        int i = R.dimen.dp_10;
        recyclerView.addItemDecoration(new cn.mucang.jiakaoyi.uilib.ui.widget.b(1, drawableF, (int) resources.getDimension(i), (int) MucangConfig.i().getResources().getDimension(i)));
        f fVar = new f(null, 0, null, 7, null);
        fVar.g(TeachPlan.class, new RouteTeachStepItemBinder(new b() { // from class: cn.mucang.android.jiakaoyi.k3setting.route.edit.q0
            @Override // cn.mucang.android.jiakaoyi.framework.h.b
            public final void callback(Object obj) {
                RouteTeachEditLogic.f(bVar, this, (TeachPlan) obj);
            }
        }));
        fVar.i(list);
        v vVar = v.f15822a;
        recyclerView.setAdapter(fVar);
        PopupWindow popupWindow3 = new PopupWindow(viewInflate, this.b.funcLlTeach.teachStepLayout.getWidth(), -2);
        this.c = popupWindow3;
        popupWindow3.setOutsideTouchable(true);
        PopupWindow popupWindow4 = this.c;
        if (popupWindow4 != null) {
            popupWindow4.setFocusable(true);
        }
        PopupWindow popupWindow5 = this.c;
        if (popupWindow5 != null) {
            popupWindow5.setBackgroundDrawable(new ColorDrawable(Color.parseColor("#55000000")));
        }
        PopupWindow popupWindow6 = this.c;
        if (popupWindow6 == null) {
            return;
        }
        popupWindow6.setOnDismissListener(new PopupWindow.OnDismissListener() { // from class: cn.mucang.android.jiakaoyi.k3setting.route.edit.r0
            @Override // android.widget.PopupWindow.OnDismissListener
            public final void onDismiss() {
                RouteTeachEditLogic.g(this.f4599a);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void f(b selectCallback, RouteTeachEditLogic this$0, TeachPlan teachPlan) {
        r.e(selectCallback, "$selectCallback");
        r.e(this$0, "this$0");
        selectCallback.callback(teachPlan);
        PopupWindow popupWindow = this$0.c;
        if (popupWindow == null) {
            return;
        }
        popupWindow.dismiss();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void g(RouteTeachEditLogic this$0) {
        r.e(this$0, "this$0");
        this$0.getB().funcLlTeach.imgMore.setRotation(BitmapDescriptorFactory.HUE_RED);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Location i(RouteTeachEditLogic this$0) {
        r.e(this$0, "this$0");
        return this$0.getF4569a().getF4555h();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void j(RouteTeachEditLogic this$0, RouteSpotNode editNode, List teachPlanList, f teachAdapter, TeachPlan teachPlan) {
        Object next;
        r.e(this$0, "this$0");
        r.e(editNode, "$editNode");
        r.e(teachPlanList, "$teachPlanList");
        r.e(teachAdapter, "$teachAdapter");
        this$0.getB().funcLlTeach.tvTeachStepName.setText(String.valueOf(teachPlan.getStepName()));
        editNode.setTeachNum(teachPlan.getTeachNum());
        Iterator it = teachPlanList.iterator();
        do {
            if (!it.hasNext()) {
                next = null;
                break;
            }
            next = it.next();
        } while (!(((TeachPlan) next).getTeachNum() == editNode.getTeachNum()));
        TeachPlan teachPlan2 = (TeachPlan) next;
        HashMap<String, TeachPlan> map = this$0.f4570d;
        String strC = this$0.c(editNode);
        r.c(teachPlan2);
        map.put(strC, teachPlan2.copy());
        List<TeachStepNode> gpsList = teachPlan2.getGpsList();
        if (gpsList == null) {
            gpsList = new ArrayList<>();
        }
        editNode.setTeachGpsList(gpsList);
        teachAdapter.i(gpsList);
        teachAdapter.notifyDataSetChanged();
        this$0.getB().funcLlTeach.recyclerViewTeach.setVisibility(0);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void k(RouteTeachEditLogic this$0, View view) {
        r.e(this$0, "this$0");
        this$0.u();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void l(View view) {
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void m(RouteTeachEditLogic this$0, View view) {
        r.e(this$0, "this$0");
        int visibility = this$0.getB().funcLlTeach.recyclerViewTeach.getVisibility();
        this$0.getB().funcLlTeach.recyclerViewTeach.setVisibility(visibility == 0 ? 8 : 0);
        this$0.getB().funcLlTeach.imgPoints.setRotation(visibility == 0 ? 180.0f : BitmapDescriptorFactory.HUE_RED);
    }

    private final void u() {
        PopupWindow popupWindow = this.c;
        boolean z = false;
        if (popupWindow != null && popupWindow.isShowing()) {
            z = true;
        }
        if (z) {
            PopupWindow popupWindow2 = this.c;
            if (popupWindow2 == null) {
                return;
            }
            popupWindow2.dismiss();
            return;
        }
        PopupWindow popupWindow3 = this.c;
        if (popupWindow3 != null) {
            popupWindow3.showAsDropDown(this.b.funcLlTeach.teachStepLayout);
        }
        PopupWindow popupWindow4 = this.c;
        if (popupWindow4 != null) {
            popupWindow4.update(this.b.funcLlTeach.teachStepLayout.getWidth(), -2);
        }
        this.b.funcLlTeach.imgMore.setRotation(180.0f);
    }

    /* JADX INFO: renamed from: b, reason: from getter */
    public final RouteEditViewModel getF4569a() {
        return this.f4569a;
    }

    /* JADX INFO: renamed from: d, reason: from getter */
    public final RouteEditMapBinding getB() {
        return this.b;
    }

    public final void h(Map<Step, List<K3TeachEntity>> teachMap, Step step, final RouteSpotNode editNode) {
        Object next;
        TeachPlan teachPlanCopy;
        Object next2;
        r.e(teachMap, "teachMap");
        r.e(step, "step");
        r.e(editNode, "editNode");
        List<K3TeachEntity> arrayList = teachMap.get(step);
        if (arrayList == null) {
            arrayList = new ArrayList<>();
        }
        if (!teachMap.containsKey(step)) {
            this.b.funcLlTeach.getRoot().setVisibility(8);
            return;
        }
        this.b.funcLlTeach.getRoot().setVisibility(0);
        ArrayList arrayList2 = new ArrayList(kotlin.collections.v.u(arrayList, 10));
        for (K3TeachEntity k3TeachEntity : arrayList) {
            TeachPlan teachPlan = new TeachPlan();
            teachPlan.setTeachNum(k3TeachEntity.teachNum);
            teachPlan.setStepName(k3TeachEntity.stepName);
            teachPlan.setGpsList(a(k3TeachEntity, editNode));
            arrayList2.add(teachPlan);
        }
        final List<TeachPlan> listM0 = CollectionsKt___CollectionsKt.M0(arrayList2);
        if (this.f4570d.containsKey(c(editNode))) {
            teachPlanCopy = this.f4570d.get(c(editNode));
        } else {
            Iterator<T> it = listM0.iterator();
            do {
                if (!it.hasNext()) {
                    next = null;
                    break;
                }
                next = it.next();
            } while (!(((TeachPlan) next).getTeachNum() == editNode.getTeachNum()));
            TeachPlan teachPlan2 = (TeachPlan) next;
            teachPlanCopy = teachPlan2 == null ? null : teachPlan2.copy();
            if (teachPlanCopy != null) {
                this.f4570d.put(c(editNode), teachPlanCopy);
            }
        }
        if (teachPlanCopy == null) {
            return;
        }
        final f fVar = new f(null, 0, null, 7, null);
        TextView textView = this.b.funcLlTeach.tvTeachStepName;
        String stepName = teachPlanCopy.getStepName();
        if (stepName == null) {
            stepName = "";
        }
        textView.setText(stepName);
        if (arrayList.size() > 1) {
            this.b.funcLlTeach.imgMore.setVisibility(0);
            e(listM0, new b() { // from class: cn.mucang.android.jiakaoyi.k3setting.route.edit.l0
                @Override // cn.mucang.android.jiakaoyi.framework.h.b
                public final void callback(Object obj) {
                    RouteTeachEditLogic.j(this.f4586a, editNode, listM0, fVar, (TeachPlan) obj);
                }
            });
            this.b.funcLlTeach.teachStepLayout.setOnClickListener(new View.OnClickListener() { // from class: cn.mucang.android.jiakaoyi.k3setting.route.edit.n0
                @Override // android.view.View.OnClickListener
                public final void onClick(View view) {
                    RouteTeachEditLogic.k(this.f4591a, view);
                }
            });
        } else {
            this.b.funcLlTeach.teachStepLayout.setOnClickListener(new View.OnClickListener() { // from class: cn.mucang.android.jiakaoyi.k3setting.route.edit.p0
                @Override // android.view.View.OnClickListener
                public final void onClick(View view) {
                    RouteTeachEditLogic.l(view);
                }
            });
            this.b.funcLlTeach.imgMore.setVisibility(8);
        }
        this.b.funcLlTeach.imgPoints.setVisibility(0);
        this.b.funcLlTeach.recyclerViewTeach.setVisibility(8);
        this.b.funcLlTeach.imgPoints.setRotation(180.0f);
        this.b.funcLlTeach.imgPoints.setOnClickListener(new View.OnClickListener() { // from class: cn.mucang.android.jiakaoyi.k3setting.route.edit.m0
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                RouteTeachEditLogic.m(this.f4589a, view);
            }
        });
        this.b.funcLlTeach.recyclerViewTeach.setLayoutManager(new LinearLayoutManager(MucangConfig.getContext()));
        this.b.funcLlTeach.recyclerViewTeach.addItemDecoration(new cn.mucang.jiakaoyi.uilib.ui.widget.b(1, a.f(MucangConfig.getContext(), R.drawable.shape_e0e0e0_divider)));
        RecyclerView recyclerView = this.b.funcLlTeach.recyclerViewTeach;
        fVar.g(TeachStepNode.class, new RouteTeachPointItemBinder(new c() { // from class: cn.mucang.android.jiakaoyi.k3setting.route.edit.o0
            @Override // cn.mucang.android.jiakaoyi.framework.h.c
            public final Object get() {
                return RouteTeachEditLogic.i(this.f4593a);
            }
        }));
        Iterator<T> it2 = listM0.iterator();
        do {
            if (!it2.hasNext()) {
                next2 = null;
                break;
            }
            next2 = it2.next();
        } while (!(((TeachPlan) next2).getTeachNum() == editNode.getTeachNum()));
        TeachPlan teachPlan3 = (TeachPlan) next2;
        List<TeachStepNode> gpsList = teachPlan3 != null ? teachPlan3.getGpsList() : null;
        if (gpsList == null) {
            gpsList = new ArrayList<>();
        }
        fVar.i(gpsList);
        v vVar = v.f15822a;
        recyclerView.setAdapter(fVar);
    }
}
