package cn.mucang.android.jiakaoyi.teachingk2.k3;

import cn.mucang.android.core.utils.n0;
import cn.mucang.android.core.utils.u;
import cn.mucang.android.jiakaoyi.exam.k3.config.K3DengGuangStepConfig;
import cn.mucang.android.jiakaoyi.exam.k3.light.LightAssembleModel;
import cn.mucang.android.jiakaoyi.exam.k3.light.LightExamModel;
import cn.mucang.android.jiakaoyi.exam.k3.light.LightRandomCreator;
import cn.mucang.android.jiakaoyi.framework.utils.FormatUtils;
import cn.mucang.android.jiakaoyi.framework.utils.k0;
import cn.mucang.android.jiakaoyi.k3setting.LocalRouteUtil;
import cn.mucang.android.jiakaoyi.teachbase.R;
import cn.mucang.android.jiakaoyi.teachingk2.config.LocalConfig;
import cn.mucang.android.jiakaoyi.teachingk2.config.LocalConfigManager;
import cn.mucang.android.jiakaoyi.teachingk2.p007unity.models.k3.LightDataModel;
import cn.mucang.android.jiakaoyi.teachingk2.p007unity.models.k3.LightPlayModel;
import cn.mucang.android.jiakaoyi.teachingk2.p007unity.models.k3.RouteDataModel;
import cn.mucang.android.jiakaoyi.teachingk2.unity.e.a0;
import cn.mucang.jiakaoyi.uilib.model.LocalRoute;
import cn.mucang.jiakaoyi.uilib.model.RouteNode;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;
import kotlin.Metadata;
import kotlin.collections.s;
import kotlin.collections.v;
import kotlin.jvm.internal.StringCompanionObject;
import kotlin.jvm.internal.r;
import kotlin.random.Random;
import kotlinx.coroutines.g;
import kotlinx.coroutines.j0;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000^\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0010!\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010$\n\u0002\u0010\u000e\n\u0002\b\u0004\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\bÆ\u0002\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J\b\u0010\r\u001a\u00020\u000eH\u0007J\u000e\u0010\u000f\u001a\b\u0012\u0004\u0012\u00020\u00110\u0010H\u0007J\u000e\u0010\u0012\u001a\b\u0012\u0004\u0012\u00020\u00110\u0010H\u0007J\u000e\u0010\u0013\u001a\b\u0012\u0004\u0012\u00020\u00140\u0010H\u0007J\u0014\u0010\u0015\u001a\u000e\u0012\u0004\u0012\u00020\u0017\u0012\u0004\u0012\u00020\u00170\u0016H\u0007J\b\u0010\u0018\u001a\u00020\u000eH\u0007J\u0018\u0010\u0019\u001a\u00020\u000e2\u0006\u0010\u001a\u001a\u00020\u00172\u0006\u0010\u001b\u001a\u00020\u001cH\u0007J \u0010\u001d\u001a\n\u0012\u0004\u0012\u00020\t\u0018\u00010\u00102\u0006\u0010\u001e\u001a\u00020\u001f2\u0006\u0010 \u001a\u00020!H\u0007R\u0017\u0010\u0003\u001a\b\u0012\u0004\u0012\u00020\u00050\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u0006\u0010\u0007R\u0017\u0010\b\u001a\b\u0012\u0004\u0012\u00020\t0\u0004¢\u0006\b\n\u0000\u001a\u0004\b\n\u0010\u0007R\u0014\u0010\u000b\u001a\b\u0012\u0004\u0012\u00020\f0\u0004X\u0082\u0004¢\u0006\u0002\n\u0000¨\u0006\""}, d2 = {"Lcn/mucang/android/jiakaoyi/teachingk2/k3/K3DataManager;", "", "()V", "assembleList", "", "Lcn/mucang/android/jiakaoyi/exam/k3/light/LightAssembleModel;", "getAssembleList", "()Ljava/util/List;", "lightList", "Lcn/mucang/android/jiakaoyi/exam/k3/light/LightExamModel;", "getLightList", "routeList", "Lcn/mucang/jiakaoyi/uilib/model/LocalRoute;", "ensureSelectRoute", "", "getUnityLightAssembleList", "", "Lcn/mucang/android/jiakaoyi/teachingk2/unity/models/k3/LightDataModel$LightDataItemModel;", "getUnityLightOrderList", "getUnityRouteList", "Lcn/mucang/android/jiakaoyi/teachingk2/unity/models/k3/RouteDataModel$RouteItemModel;", "getUnityRouteMap", "", "", "loadData", "unitySelectRoute", "routeId", "isExam", "", "unitySetPlayMode", "mode", "Lcn/mucang/android/jiakaoyi/teachingk2/unity/models/k3/LightPlayModel;", "config", "Lcn/mucang/android/jiakaoyi/exam/k3/config/K3DengGuangStepConfig;", "teachbase_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
public final class K3DataManager {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final K3DataManager f7233a = new K3DataManager();
    private static final List<LightExamModel> b = new ArrayList();
    private static final List<LightAssembleModel> c = new ArrayList();

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private static final List<LocalRoute> f7234d = new ArrayList();

    private K3DataManager() {
    }

    public static final void b() {
        LocalRoute localRouteB = LocalRouteUtil.b();
        if (!n0.e(localRouteB == null ? null : localRouteB.getRouteId())) {
            if (!r.a("ThisIsCommonRouteId", localRouteB != null ? localRouteB.getRouteId() : null)) {
                return;
            }
        }
        List<LocalRoute> list = f7234d;
        if (list.size() > 0) {
            LocalRouteUtil.e((LocalRoute) s.c0(list));
        }
    }

    public static final List<LightDataModel.LightDataItemModel> e() {
        List<LightAssembleModel> list = c;
        ArrayList arrayList = new ArrayList(v.u(list, 10));
        for (LightAssembleModel lightAssembleModel : list) {
            LightDataModel.LightDataItemModel lightDataItemModel = new LightDataModel.LightDataItemModel();
            lightDataItemModel.name = lightAssembleModel.getName();
            lightDataItemModel.id = (int) lightAssembleModel.getId();
            arrayList.add(lightDataItemModel);
        }
        return arrayList;
    }

    public static final List<LightDataModel.LightDataItemModel> f() {
        String strA;
        List<LightExamModel> list = b;
        ArrayList arrayList = new ArrayList(v.u(list, 10));
        for (LightExamModel lightExamModel : list) {
            LightDataModel.LightDataItemModel lightDataItemModel = new LightDataModel.LightDataItemModel();
            int i = lightExamModel.playOrder;
            if (i == 0) {
                strA = k0.a(R.string.teachbase_random_play);
            } else if (i >= 20) {
                strA = k0.a(R.string.teachbase_last_index);
            } else {
                StringCompanionObject stringCompanionObject = StringCompanionObject.f14671a;
                String strA2 = k0.a(R.string.teachbase_x_index);
                r.d(strA2, "getString(R.string.teachbase_x_index)");
                strA = String.format(strA2, Arrays.copyOf(new Object[]{Integer.valueOf(lightExamModel.playOrder)}, 1));
                r.d(strA, "java.lang.String.format(format, *args)");
            }
            lightDataItemModel.name = lightExamModel.desc;
            lightDataItemModel.desc = r.m(lightExamModel.standard, strA);
            lightDataItemModel.icon = lightExamModel.icon;
            lightDataItemModel.id = lightExamModel.examProgramId;
            arrayList.add(lightDataItemModel);
        }
        return arrayList;
    }

    public static final List<RouteDataModel.RouteItemModel> g() {
        ArrayList arrayList = new ArrayList();
        RouteDataModel.RouteItemModel routeItemModel = new RouteDataModel.RouteItemModel();
        routeItemModel.id = "ThisIsCommonRouteId";
        routeItemModel.title = k0.a(R.string.teachbase_no_select_route);
        routeItemModel.selected = r.a(LocalRouteUtil.c(), routeItemModel.id);
        kotlin.v vVar = kotlin.v.f15822a;
        arrayList.add(routeItemModel);
        for (LocalRoute localRoute : f7234d) {
            RouteDataModel.RouteItemModel routeItemModel2 = new RouteDataModel.RouteItemModel();
            routeItemModel2.id = localRoute.getRouteId();
            routeItemModel2.title = localRoute.getRouteName();
            StringCompanionObject stringCompanionObject = StringCompanionObject.f14671a;
            String strA = k0.a(R.string.teachbase_distance_order);
            r.d(strA, "getString(R.string.teachbase_distance_order)");
            Object[] objArr = new Object[2];
            objArr[0] = FormatUtils.b(localRoute.getDistance());
            List<RouteNode> nodes = localRoute.getNodes();
            objArr[1] = nodes == null ? null : Integer.valueOf(nodes.size());
            String str = String.format(strA, Arrays.copyOf(objArr, 2));
            r.d(str, "java.lang.String.format(format, *args)");
            routeItemModel2.desc = str;
            routeItemModel2.selected = r.a(LocalRouteUtil.c(), routeItemModel2.id);
            kotlin.v vVar2 = kotlin.v.f15822a;
            arrayList.add(routeItemModel2);
        }
        return arrayList;
    }

    public static final Map<String, String> h() {
        LinkedHashMap linkedHashMap = new LinkedHashMap();
        List<LocalRoute> list = f7234d;
        if (list.isEmpty()) {
            String strA = k0.a(R.string.teachbase_no_exam_route);
            r.d(strA, "getString(R.string.teachbase_no_exam_route)");
            linkedHashMap.put("ThisIsCommonRouteId", strA);
        } else {
            for (LocalRoute localRoute : list) {
                String routeId = localRoute.getRouteId();
                r.d(routeId, "it.routeId");
                String routeName = localRoute.getRouteName();
                r.d(routeName, "it.routeName");
                linkedHashMap.put(routeId, routeName);
            }
        }
        return linkedHashMap;
    }

    public static final void j() {
        if (LocalConfigManager.f(LocalConfig.OpenK3)) {
            b.clear();
            c.clear();
            f7234d.clear();
            g.b(j0.b(), null, null, new K3DataManager$loadData$1(null), 3, null);
        }
    }

    public static final void k(final String routeId, final boolean z) {
        r.e(routeId, "routeId");
        u.c(new Runnable() { // from class: cn.mucang.android.jiakaoyi.teachingk2.k3.a
            @Override // java.lang.Runnable
            public final void run() {
                K3DataManager.l(routeId, z);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void l(String routeId, boolean z) {
        r.e(routeId, "$routeId");
        if (!r.a(routeId, "ThisIsCommonRouteId")) {
            for (LocalRoute localRoute : f7234d) {
                if (r.a(localRoute.getRouteId(), routeId)) {
                    LocalRouteUtil.e(localRoute);
                    break;
                }
            }
        } else {
            LocalRouteUtil.e(LocalRoute.createCommonRoute("ThisIsCommonRouteId"));
        }
        if (z) {
            a0.e().g();
        } else {
            a0.g().g();
        }
    }

    public static final List<LightExamModel> m(LightPlayModel mode, K3DengGuangStepConfig config) {
        r.e(mode, "mode");
        r.e(config, "config");
        if (mode.id > 0) {
            for (LightAssembleModel lightAssembleModel : c) {
                if (lightAssembleModel.getId() == mode.id) {
                    return lightAssembleModel.getLights();
                }
            }
            return null;
        }
        int i = mode.type;
        if (i == 2) {
            return b;
        }
        if (i != 1) {
            return null;
        }
        if (mode.mode == 1) {
            return LightRandomCreator.buildRandomLights(b, config);
        }
        List<LightAssembleModel> list = c;
        if (!(!list.isEmpty())) {
            return null;
        }
        ((LightAssembleModel) s.z0(list, Random.INSTANCE)).getLights();
        return null;
    }

    public final List<LightAssembleModel> c() {
        return c;
    }

    public final List<LightExamModel> d() {
        return b;
    }
}
