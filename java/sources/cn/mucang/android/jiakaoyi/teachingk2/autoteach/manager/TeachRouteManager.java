package cn.mucang.android.jiakaoyi.teachingk2.autoteach.manager;

import cn.mucang.android.core.config.MucangConfig;
import cn.mucang.android.jiakaoyi.engine.model.Step;
import cn.mucang.android.jiakaoyi.framework.utils.k0;
import cn.mucang.android.jiakaoyi.framework.utils.n0;
import cn.mucang.android.jiakaoyi.framework.utils.q0;
import cn.mucang.android.jiakaoyi.signal.pos.Gps;
import cn.mucang.android.jiakaoyi.signal.pos.Pos;
import cn.mucang.android.jiakaoyi.teachbase.R;
import cn.mucang.android.jiakaoyi.teachingk2.autoteach.check.TeachPosCheck;
import cn.mucang.android.jiakaoyi.teachingk2.autoteach.model.AutoTeachStatus;
import cn.mucang.android.jiakaoyi.teachingk2.autoteach.model.RouteItemModel;
import cn.mucang.android.jiakaoyi.teachingk2.autoteach.model.ServerNavigationPoint;
import cn.mucang.android.jiakaoyi.teachingk2.autoteach.model.ServerRouteItemModel;
import cn.mucang.android.jiakaoyi.teachingk2.autoteach.model.ServerRouteStepModel;
import cn.mucang.android.jiakaoyi.teachingk2.autoteach.model.ServerTeachRouteModel;
import cn.mucang.android.jiakaoyi.teachingk2.autoteach.model.TeachRouteModel;
import cn.mucang.android.jiakaoyi.teachingk2.data.TeachModel;
import cn.mucang.android.jiakaoyi.teachingk2.elements.model.TraceItemModel;
import cn.mucang.android.jiakaoyi.teachingk2.nav.NavigationApi;
import cn.mucang.android.jiakaoyi.teachingk2.nav.NavigationItem;
import cn.mucang.android.jiakaoyi.teachingk2.nav.NavigationPathModel;
import cn.mucang.android.jiakaoyi.teachingk2.nav.NavigationSection;
import cn.mucang.android.jiakaoyi.teachingk2.p007unity.models.teach.TeachStatusModel;
import cn.mucang.android.jiakaoyi.teachingk2.r0.api.TeachRouteApi;
import com.alibaba.fastjson.JSON;
import com.alibaba.fastjson.serializer.SerializerFeature;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Set;
import kotlin.Metadata;
import kotlin.jvm.internal.Ref$ObjectRef;

/* JADX INFO: renamed from: cn.mucang.android.jiakaoyi.teachingk2.autoteach.manager.b0, reason: from Kotlin metadata */
/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000h\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000b\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0000\n\u0002\u0010!\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\r\n\u0002\u0018\u0002\n\u0002\b\u0003\u0018\u00002\u00020\u0001B\r\u0012\u0006\u0010\u0002\u001a\u00020\u0003¢\u0006\u0002\u0010\u0004J\u0010\u0010\u0019\u001a\u00020\f2\b\u0010\u001a\u001a\u0004\u0018\u00010\bJ\u0006\u0010\u001b\u001a\u00020\u001cJ\f\u0010\u001d\u001a\b\u0012\u0004\u0012\u00020\u001f0\u001eJ\f\u0010 \u001a\b\u0012\u0004\u0012\u00020\u001f0\u001eJ\u000e\u0010!\u001a\u00020\u00142\u0006\u0010\"\u001a\u00020\u0014J@\u0010#\u001a\u00020\u001c2\b\u0010$\u001a\u0004\u0018\u00010%2\b\u0010&\u001a\u0004\u0018\u00010%2\b\u0010'\u001a\u0004\u0018\u00010%2\b\u0010(\u001a\u0004\u0018\u00010%2\u000e\u0010)\u001a\n\u0012\u0004\u0012\u00020\u0012\u0018\u00010\u001eH\u0002J\u000e\u0010*\u001a\u00020\u001c2\u0006\u0010+\u001a\u00020\u0014J\u000e\u0010,\u001a\u00020\u001c2\u0006\u0010-\u001a\u00020\u0014J\u0006\u0010.\u001a\u00020\fJ\u0006\u0010/\u001a\u00020\u001cJ\u0006\u00100\u001a\u00020\u001cJ\u0010\u00101\u001a\u00020\u001c2\u0006\u00102\u001a\u000203H\u0016J\u0018\u00104\u001a\u00020\u001c2\u000e\u0010)\u001a\n\u0012\u0004\u0012\u00020\u0012\u0018\u00010\u001eH\u0002J\b\u00105\u001a\u00020\u001cH\u0002R*\u0010\u0005\u001a\u001e\u0012\u0004\u0012\u00020\u0007\u0012\u0004\u0012\u00020\b0\u0006j\u000e\u0012\u0004\u0012\u00020\u0007\u0012\u0004\u0012\u00020\b`\tX\u0082\u0004¢\u0006\u0002\n\u0000R\u0010\u0010\n\u001a\u0004\u0018\u00010\bX\u0082\u000e¢\u0006\u0002\n\u0000R\u001a\u0010\u000b\u001a\u00020\fX\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\r\u0010\u000e\"\u0004\b\u000f\u0010\u0010R\u0010\u0010\u0011\u001a\u0004\u0018\u00010\u0012X\u0082\u000e¢\u0006\u0002\n\u0000R\u000e\u0010\u0013\u001a\u00020\u0014X\u0082\u000e¢\u0006\u0002\n\u0000R\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004¢\u0006\u0002\n\u0000R\u0014\u0010\u0015\u001a\b\u0012\u0004\u0012\u00020\u00170\u0016X\u0082\u0004¢\u0006\u0002\n\u0000R\u0010\u0010\u0018\u001a\u0004\u0018\u00010\u0017X\u0082\u000e¢\u0006\u0002\n\u0000¨\u00066"}, d2 = {"Lcn/mucang/android/jiakaoyi/teachingk2/autoteach/manager/TeachRouteManager;", "Lcn/mucang/android/jiakaoyi/signal/center/callback/SignalCallback;", "posCheck", "Lcn/mucang/android/jiakaoyi/teachingk2/autoteach/check/TeachPosCheck;", "(Lcn/mucang/android/jiakaoyi/teachingk2/autoteach/check/TeachPosCheck;)V", "boundaryList", "Ljava/util/LinkedHashMap;", "Lcn/mucang/android/jiakaoyi/signal/pos/Rectangle;", "Lcn/mucang/android/jiakaoyi/hpmap/collision/k2/BoundDetector;", "Lkotlin/collections/LinkedHashMap;", "currentBoundary", "hasSelect", "", "getHasSelect", "()Z", "setHasSelect", "(Z)V", "naviRoute", "Lcn/mucang/android/jiakaoyi/teachingk2/nav/NavigationPathModel;", "pathIndex", "", "routeList", "", "Lcn/mucang/android/jiakaoyi/teachingk2/autoteach/model/TeachRouteModel;", "selectRoute", "canTriggerBoundary", "boundDetector", "clear", "", "getAutoPath", "", "Lcn/mucang/android/jiakaoyi/teachingk2/elements/model/TraceItemModel;", "getNextPath", "getNextStepId", "stepId", "handleNaviPath", "naviStart", "Lcn/mucang/android/jiakaoyi/signal/pos/Pos;", "naviStart2", "naviEnd", "startPos", "naviPath", "handleRoute", "select", "handleSelect", "selectType", "hasRouteData", "loadData", "notifySuccess", "onSignalChanged", "signalGetter", "Lcn/mucang/android/jiakaoyi/signal/center/SignalGetter;", "sendNaviData", "sendRouteData", "teachbase_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
public final class TeachRouteManager implements cn.mucang.android.jiakaoyi.signal.c.f.a {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final TeachPosCheck f6304a;
    private final List<TeachRouteModel> b;
    private final LinkedHashMap<cn.mucang.android.jiakaoyi.signal.pos.c, cn.mucang.android.jiakaoyi.hpmap.a.a.b> c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private TeachRouteModel f6305d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private NavigationPathModel f6306e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private cn.mucang.android.jiakaoyi.hpmap.a.a.b f6307f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private int f6308g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private boolean f6309h;

    public TeachRouteManager(TeachPosCheck posCheck) {
        kotlin.jvm.internal.r.e(posCheck, "posCheck");
        this.f6304a = posCheck;
        this.b = new ArrayList();
        this.c = new LinkedHashMap<>();
        this.f6308g = -1;
    }

    private final void g(Pos pos, Pos pos2, Pos pos3, Pos pos4, List<NavigationPathModel> list) {
        if (pos == null || pos2 == null || pos3 == null) {
            cn.mucang.android.jiakaoyi.framework.log.f.b("导航路线不足2个点");
        } else {
            double dDistanceTo = pos3.distanceTo(pos4);
            if (dDistanceTo < 300.0d) {
                cn.mucang.android.jiakaoyi.framework.log.f.b("导航终点距离路线起点位置不足3米，直接生成准备区");
                u(list);
                cn.mucang.android.jiakaoyi.signal.pos.c rectangle = cn.mucang.android.jiakaoyi.hpmap.d.a.r(pos, cn.mucang.android.jiakaoyi.hpmap.d.a.s(pos2, pos, 600.0d), 250.0d);
                TeachPosCheck teachPosCheck = this.f6304a;
                kotlin.jvm.internal.r.d(rectangle, "rectangle");
                teachPosCheck.r(rectangle);
                this.f6304a.o();
                return;
            }
            cn.mucang.android.jiakaoyi.framework.log.f.b(kotlin.jvm.internal.r.m("导航路线距离路线起点位置超出3米:", Double.valueOf(dDistanceTo)));
        }
        this.f6304a.o();
        u(null);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Type inference failed for: r0v34, types: [T, java.util.List] */
    public static final void i(final Pos pos, final TeachRouteManager this$0, final TeachRouteModel it) {
        List<NavigationSection> sections;
        NavigationSection navigationSection;
        List<NavigationItem> points;
        NavigationItem navigationItem;
        List<NavigationSection> sections2;
        NavigationSection navigationSection2;
        List<NavigationItem> points2;
        NavigationItem navigationItem2;
        final Pos pos2;
        List<NavigationSection> sections3;
        NavigationSection navigationSection3;
        List<NavigationItem> points3;
        NavigationItem navigationItem3;
        List<NavigationSection> sections4;
        NavigationSection navigationSection4;
        List<NavigationItem> points4;
        NavigationItem navigationItem4;
        kotlin.jvm.internal.r.e(this$0, "this$0");
        kotlin.jvm.internal.r.e(it, "$it");
        final Ref$ObjectRef ref$ObjectRef = new Ref$ObjectRef();
        try {
            Pos currentPos = cn.mucang.android.jiakaoyi.signal.c.d.t().c().center;
            NavigationApi navigationApi = new NavigationApi();
            kotlin.jvm.internal.r.d(currentPos, "currentPos");
            ref$ObjectRef.element = navigationApi.m(currentPos, pos);
        } catch (Exception e2) {
            cn.mucang.android.core.utils.u.h(k0.a(R.string.teachbase_get_planned_rout_fail));
            cn.mucang.android.jiakaoyi.framework.log.f.o(kotlin.jvm.internal.r.m("获取规划路线失败:", e2.getMessage()));
        }
        List list = (List) ref$ObjectRef.element;
        final NavigationPathModel navigationPathModel = list == null ? null : (NavigationPathModel) kotlin.collections.s.e0(list);
        final Pos pos3 = (navigationPathModel == null || (sections = navigationPathModel.getSections()) == null || (navigationSection = (NavigationSection) kotlin.collections.s.e0(sections)) == null || (points = navigationSection.getPoints()) == null || (navigationItem = (NavigationItem) kotlin.collections.s.e0(points)) == null) ? null : navigationItem.toPos();
        Pos pos4 = (navigationPathModel == null || (sections2 = navigationPathModel.getSections()) == null || (navigationSection2 = (NavigationSection) kotlin.collections.s.e0(sections2)) == null || (points2 = navigationSection2.getPoints()) == null || (navigationItem2 = (NavigationItem) kotlin.collections.s.f0(points2, 1)) == null) ? null : navigationItem2.toPos();
        if (pos4 == null) {
            pos2 = (navigationPathModel == null || (sections4 = navigationPathModel.getSections()) == null || (navigationSection4 = (NavigationSection) kotlin.collections.s.f0(sections4, 1)) == null || (points4 = navigationSection4.getPoints()) == null || (navigationItem4 = (NavigationItem) kotlin.collections.s.e0(points4)) == null) ? null : navigationItem4.toPos();
        } else {
            pos2 = pos4;
        }
        final Pos pos5 = (navigationPathModel == null || (sections3 = navigationPathModel.getSections()) == null || (navigationSection3 = (NavigationSection) kotlin.collections.s.q0(sections3)) == null || (points3 = navigationSection3.getPoints()) == null || (navigationItem3 = (NavigationItem) kotlin.collections.s.q0(points3)) == null) ? null : navigationItem3.toPos();
        cn.mucang.android.core.utils.u.c(new Runnable() { // from class: cn.mucang.android.jiakaoyi.teachingk2.autoteach.manager.w
            @Override // java.lang.Runnable
            public final void run() {
                TeachRouteManager.j(this.f6332a, pos3, pos2, pos5, pos, ref$ObjectRef, navigationPathModel, it);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void j(TeachRouteManager this$0, Pos pos, Pos pos2, Pos pos3, Pos pos4, Ref$ObjectRef naviPath, NavigationPathModel navigationPathModel, TeachRouteModel it) {
        kotlin.jvm.internal.r.e(this$0, "this$0");
        kotlin.jvm.internal.r.e(naviPath, "$naviPath");
        kotlin.jvm.internal.r.e(it, "$it");
        this$0.g(pos, pos2, pos3, pos4, (List) naviPath.element);
        this$0.f6306e = navigationPathModel;
        this$0.c.clear();
        LinkedHashMap<cn.mucang.android.jiakaoyi.signal.pos.c, cn.mucang.android.jiakaoyi.hpmap.a.a.b> linkedHashMap = this$0.c;
        TeachPosCheck teachPosCheck = this$0.f6304a;
        List<String> routeSteps = it.getRouteSteps();
        if (routeSteps == null) {
            routeSteps = kotlin.collections.u.j();
        }
        linkedHashMap.putAll(teachPosCheck.g(routeSteps));
        this$0.w(true);
        cn.mucang.android.jiakaoyi.signal.c.d.m.b(this$0);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Code duplicated, block: B:96:0x00ce A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:98:0x004a A[SYNTHETIC] */
    public static final void r(final TeachRouteManager this$0) {
        List list;
        boolean z;
        ArrayList arrayList;
        ArrayList arrayList2;
        kotlin.jvm.internal.r.e(this$0, "this$0");
        try {
            List<ServerTeachRouteModel> listM = new TeachRouteApi().m();
            StringBuilder sb = new StringBuilder();
            sb.append("获取服务器配置路线示教：");
            sb.append(listM == null ? null : Integer.valueOf(listM.size()));
            sb.append((char) 26465);
            cn.mucang.android.jiakaoyi.framework.log.f.b(sb.toString());
            ArrayList<ServerTeachRouteModel> arrayList3 = new ArrayList();
            cn.mucang.android.jiakaoyi.mapcollect.c.j jVar = cn.mucang.android.jiakaoyi.teachingk2.res.n.b().c;
            if (jVar == null) {
                return;
            }
            if (listM != null) {
                for (ServerTeachRouteModel serverTeachRouteModel : listM) {
                    List<ServerRouteStepModel> routeSteps = serverTeachRouteModel.getRouteSteps();
                    boolean z2 = false;
                    if (routeSteps != null) {
                        Iterator<T> it = routeSteps.iterator();
                        while (true) {
                            if (it.hasNext()) {
                                ServerRouteStepModel serverRouteStepModel = (ServerRouteStepModel) it.next();
                                int stepId = serverRouteStepModel.getStepId();
                                if (stepId == Step.K2_DaoCheRuKu.type) {
                                    list = jVar.f4725f;
                                } else if (stepId == Step.K2_CeFangTingChe.type) {
                                    list = jVar.f4724e;
                                } else if (stepId == Step.K2_ZhiJiaoZhuanWan.type) {
                                    list = jVar.i;
                                } else {
                                    list = stepId == Step.K2_SQuXian.type ? jVar.f4726g : jVar.f4727h;
                                }
                                Iterator it2 = list.iterator();
                                while (true) {
                                    if (it2.hasNext()) {
                                        if (kotlin.jvm.internal.r.a(((cn.mucang.android.jiakaoyi.hpmap.a.a.e) it2.next()).getKey(), serverRouteStepModel.getStepKey())) {
                                            z = true;
                                            break;
                                        }
                                    } else {
                                        z = false;
                                        break;
                                    }
                                }
                                if (!z) {
                                    cn.mucang.android.jiakaoyi.framework.log.f.b(kotlin.jvm.internal.r.m("配置的库位在地图里匹配不上,配置的 key:", serverRouteStepModel.getStepKey()));
                                    break;
                                }
                            }
                        }
                        if (z2) {
                            arrayList3.add(serverTeachRouteModel);
                        }
                    }
                    z2 = true;
                    if (z2) {
                        arrayList3.add(serverTeachRouteModel);
                    }
                }
            }
            cn.mucang.android.jiakaoyi.framework.log.f.b(kotlin.jvm.internal.r.m("最终使用的示教路线条数：", Integer.valueOf(arrayList3.size())));
            final ArrayList arrayList4 = new ArrayList();
            for (ServerTeachRouteModel serverTeachRouteModel2 : arrayList3) {
                TeachRouteModel teachRouteModel = new TeachRouteModel();
                ServerRouteItemModel examSiteRoute = serverTeachRouteModel2.getExamSiteRoute();
                teachRouteModel.setName(examSiteRoute == null ? null : examSiteRoute.getRouteName());
                List<ServerRouteStepModel> routeSteps2 = serverTeachRouteModel2.getRouteSteps();
                if (routeSteps2 == null) {
                    arrayList = null;
                } else {
                    arrayList = new ArrayList(kotlin.collections.v.u(routeSteps2, 10));
                    Iterator<T> it3 = routeSteps2.iterator();
                    while (it3.hasNext()) {
                        arrayList.add(((ServerRouteStepModel) it3.next()).getStepKey());
                    }
                }
                teachRouteModel.setRouteSteps(arrayList);
                List<ServerRouteStepModel> routeSteps3 = serverTeachRouteModel2.getRouteSteps();
                if (routeSteps3 == null) {
                    arrayList2 = null;
                } else {
                    arrayList2 = new ArrayList(kotlin.collections.v.u(routeSteps3, 10));
                    Iterator<T> it4 = routeSteps3.iterator();
                    while (it4.hasNext()) {
                        arrayList2.add(Integer.valueOf(((ServerRouteStepModel) it4.next()).getStepId()));
                    }
                }
                teachRouteModel.setStepIds(arrayList2);
                teachRouteModel.setItemList(new ArrayList());
                TeachPosCheck teachPosCheck = this$0.f6304a;
                List<String> routeSteps4 = teachRouteModel.getRouteSteps();
                teachRouteModel.setStart(teachPosCheck.h(routeSteps4 == null ? null : (String) kotlin.collections.s.e0(routeSteps4)));
                TeachPosCheck teachPosCheck2 = this$0.f6304a;
                List<String> routeSteps5 = teachRouteModel.getRouteSteps();
                teachRouteModel.setEnd(teachPosCheck2.f(routeSteps5 == null ? null : (String) kotlin.collections.s.q0(routeSteps5)));
                ServerRouteItemModel examSiteRoute2 = serverTeachRouteModel2.getExamSiteRoute();
                List<ServerNavigationPoint> pathList = JSON.parseArray(examSiteRoute2 == null ? null : examSiteRoute2.getNavigationPoint(), ServerNavigationPoint.class);
                kotlin.jvm.internal.r.d(pathList, "pathList");
                List<RouteItemModel> itemList = teachRouteModel.getItemList();
                kotlin.jvm.internal.r.c(itemList);
                for (ServerNavigationPoint serverNavigationPoint : pathList) {
                    RouteItemModel routeItemModel = new RouteItemModel();
                    routeItemModel.setName(serverNavigationPoint.getName());
                    routeItemModel.setPath(serverNavigationPoint.getPath());
                    itemList.add(routeItemModel);
                }
                arrayList4.add(teachRouteModel);
            }
            cn.mucang.android.core.utils.u.c(new Runnable() { // from class: cn.mucang.android.jiakaoyi.teachingk2.autoteach.manager.v
                @Override // java.lang.Runnable
                public final void run() {
                    TeachRouteManager.s(arrayList4, this$0);
                }
            });
        } catch (Exception e2) {
            cn.mucang.android.jiakaoyi.framework.log.f.b(kotlin.jvm.internal.r.m("请求示教路线失败:", q0.d(e2)));
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void s(List data, TeachRouteManager this$0) {
        kotlin.jvm.internal.r.e(data, "$data");
        kotlin.jvm.internal.r.e(this$0, "this$0");
        if (cn.mucang.android.core.utils.g.d(data)) {
            this$0.b.clear();
            this$0.b.addAll(data);
        }
    }

    private final void u(List<NavigationPathModel> list) {
        TeachStatusModel teachStatusModel = new TeachStatusModel();
        teachStatusModel.state = AutoTeachStatus.Navi.getType();
        teachStatusModel.data = cn.mucang.android.core.utils.g.b(list) ? "" : JSON.toJSONString(list, SerializerFeature.DisableCircularReferenceDetect);
        cn.mucang.android.jiakaoyi.unity.c.d.e(teachStatusModel);
    }

    private final void v() {
        TeachStatusModel teachStatusModel = new TeachStatusModel();
        teachStatusModel.state = AutoTeachStatus.CheckRoute.getType();
        teachStatusModel.data = JSON.toJSONString(this.b, SerializerFeature.DisableCircularReferenceDetect);
        cn.mucang.android.jiakaoyi.unity.c.d.e(teachStatusModel);
    }

    public final boolean a(cn.mucang.android.jiakaoyi.hpmap.a.a.b bVar) {
        List<String> routeSteps;
        TeachRouteModel teachRouteModel = this.f6305d;
        if (cn.mucang.android.core.utils.g.b(teachRouteModel == null ? null : teachRouteModel.getRouteSteps())) {
            return true;
        }
        TeachRouteModel teachRouteModel2 = this.f6305d;
        if (teachRouteModel2 != null && (routeSteps = teachRouteModel2.getRouteSteps()) != null) {
            if (routeSteps.contains(bVar != null ? bVar.getKey() : null)) {
                return true;
            }
        }
        return false;
    }

    public final void b() {
        List<RouteItemModel> itemList;
        TeachRouteModel teachRouteModel = this.f6305d;
        if (teachRouteModel != null && (itemList = teachRouteModel.getItemList()) != null) {
            Iterator<T> it = itemList.iterator();
            while (it.hasNext()) {
                ((RouteItemModel) it.next()).setHasSend(false);
            }
        }
        this.f6308g = -1;
        this.f6305d = null;
        this.f6306e = null;
        this.f6309h = false;
        this.c.clear();
        cn.mucang.android.jiakaoyi.signal.c.d.m.n(this);
    }

    public final List<TraceItemModel> c() throws Exception {
        ArrayList arrayList = new ArrayList();
        NavigationPathModel navigationPathModel = this.f6306e;
        List<Pos> posList = navigationPathModel == null ? null : navigationPathModel.getPosList();
        if (cn.mucang.android.core.utils.g.b(posList)) {
            return arrayList;
        }
        cn.mucang.android.jiakaoyi.signal.i.a aVar = cn.mucang.android.jiakaoyi.teachingk2.res.n.b().f7599a;
        if (posList != null) {
            for (Pos pos : posList) {
                TraceItemModel traceItemModel = new TraceItemModel();
                traceItemModel.step = (short) Step.K2_Global.type;
                traceItemModel.pointType = (byte) 0;
                Gps gpsB = aVar.b(new Pos(pos.x, pos.y));
                kotlin.jvm.internal.r.d(gpsB, "converter.gaussToGps(Pos(it.x, it.y))");
                double[] dArrI = cn.mucang.android.jiakaoyi.teachingk2.autopilot.utm.b.i(gpsB.longitude, gpsB.latitude);
                traceItemModel.x = dArrI[0];
                traceItemModel.y = dArrI[1];
                arrayList.add(traceItemModel);
            }
        }
        cn.mucang.android.jiakaoyi.signal.i.a aVar2 = cn.mucang.android.jiakaoyi.teachingk2.res.n.p.f7599a;
        if (posList == null) {
            posList = kotlin.collections.u.j();
        }
        List<TraceItemModel> listA = cn.mucang.android.jiakaoyi.teachingk2.r0.b.a(arrayList, aVar2, posList);
        kotlin.jvm.internal.r.d(listA, "addCurrentToStartPath(li…, posList ?: emptyList())");
        return listA;
    }

    /* JADX INFO: renamed from: d, reason: from getter */
    public final boolean getF6309h() {
        return this.f6309h;
    }

    public final List<TraceItemModel> e() throws Exception {
        boolean z;
        List<RouteItemModel> itemList;
        List<Pos> path;
        List<Pos> path2;
        List<RouteItemModel> itemList2;
        List<RouteItemModel> itemList3;
        Pos pos;
        List<RouteItemModel> itemList4;
        cn.mucang.android.jiakaoyi.hpmap.a.a.b bVar = this.f6307f;
        if (bVar != null) {
            kotlin.jvm.internal.r.c(bVar);
            cn.mucang.android.jiakaoyi.framework.log.f.b(kotlin.jvm.internal.r.m("获取下一个路线，在库位准备区，发送标准轨迹:", bVar.s()));
            cn.mucang.android.jiakaoyi.signal.i.a aVar = cn.mucang.android.jiakaoyi.teachingk2.res.n.p.f7599a;
            cn.mucang.android.jiakaoyi.hpmap.a.a.b bVar2 = this.f6307f;
            HashMap<Step, List<TeachModel>> map = cn.mucang.android.jiakaoyi.teachingk2.res.n.b().i;
            cn.mucang.android.jiakaoyi.hpmap.a.a.b bVar3 = this.f6307f;
            kotlin.jvm.internal.r.c(bVar3);
            List<TraceItemModel> listE = cn.mucang.android.jiakaoyi.teachingk2.r0.b.e(aVar, bVar2, map.get(bVar3.s()));
            kotlin.jvm.internal.r.d(listE, "transform(TeachData.inst…[currentBoundary!!.step])");
            return listE;
        }
        TeachRouteModel teachRouteModel = this.f6305d;
        if (teachRouteModel != null && (itemList4 = teachRouteModel.getItemList()) != null) {
            Iterator<T> it = itemList4.iterator();
            while (true) {
                if (!it.hasNext()) {
                    z = true;
                    break;
                }
                if (!((RouteItemModel) it.next()).getHasSend()) {
                    z = false;
                    break;
                }
            }
        } else {
            z = true;
            break;
        }
        if (z) {
            cn.mucang.android.jiakaoyi.framework.log.f.b("获取下一个路线，全部已发送，返回空");
            return new ArrayList();
        }
        ArrayList arrayList = new ArrayList();
        cn.mucang.android.jiakaoyi.signal.i.a aVar2 = cn.mucang.android.jiakaoyi.teachingk2.res.n.b().f7599a;
        Pos pos2 = cn.mucang.android.jiakaoyi.signal.c.d.t().c().center;
        this.f6308g = -1;
        double dDoubleValue = Double.MAX_VALUE;
        TeachRouteModel teachRouteModel2 = this.f6305d;
        routeItemModel = null;
        RouteItemModel routeItemModel = null;
        if (teachRouteModel2 != null && (itemList3 = teachRouteModel2.getItemList()) != null) {
            int i = 0;
            for (Object obj : itemList3) {
                int i2 = i + 1;
                if (i < 0) {
                    kotlin.collections.s.t();
                    throw null;
                }
                List<Pos> path3 = ((RouteItemModel) obj).getPath();
                Double dValueOf = (path3 == null || (pos = (Pos) kotlin.collections.s.e0(path3)) == null) ? null : Double.valueOf(pos.distanceTo(pos2));
                if (dValueOf != null && dValueOf.doubleValue() < dDoubleValue) {
                    dDoubleValue = dValueOf.doubleValue();
                    this.f6308g = i;
                }
                i = i2;
            }
        }
        if (this.f6308g > -1 && dDoubleValue >= 1000.0d) {
            TeachRouteModel teachRouteModel3 = this.f6305d;
            if (teachRouteModel3 != null && (itemList2 = teachRouteModel3.getItemList()) != null) {
                routeItemModel = (RouteItemModel) kotlin.collections.s.f0(itemList2, this.f6308g);
            }
            if (routeItemModel != null) {
                routeItemModel.setHasSend(true);
            }
            cn.mucang.android.jiakaoyi.framework.log.f.b("获取下一个路线，路线起点距离车子超出10米了，不使用");
            return new ArrayList();
        }
        TeachRouteModel teachRouteModel4 = this.f6305d;
        RouteItemModel routeItemModel2 = (teachRouteModel4 == null || (itemList = teachRouteModel4.getItemList()) == null) ? null : (RouteItemModel) kotlin.collections.s.f0(itemList, this.f6308g);
        StringBuilder sb = new StringBuilder();
        sb.append("获取下一个路线 index:");
        sb.append(this.f6308g);
        sb.append("，距离最近的路线起点:");
        sb.append((routeItemModel2 == null || (path = routeItemModel2.getPath()) == null) ? null : (Pos) kotlin.collections.s.e0(path));
        cn.mucang.android.jiakaoyi.framework.log.f.b(sb.toString());
        if (routeItemModel2 != null && (path2 = routeItemModel2.getPath()) != null) {
            for (Pos pos3 : path2) {
                TraceItemModel traceItemModel = new TraceItemModel();
                traceItemModel.step = (short) Step.K2_Global.type;
                traceItemModel.pointType = (byte) 0;
                Gps gpsB = aVar2.b(new Pos(pos3.x, pos3.y));
                kotlin.jvm.internal.r.d(gpsB, "converter.gaussToGps(Pos(it.x, it.y))");
                double[] dArrI = cn.mucang.android.jiakaoyi.teachingk2.autopilot.utm.b.i(gpsB.longitude, gpsB.latitude);
                traceItemModel.x = dArrI[0];
                traceItemModel.y = dArrI[1];
                arrayList.add(traceItemModel);
            }
        }
        cn.mucang.android.jiakaoyi.signal.i.a aVar3 = cn.mucang.android.jiakaoyi.teachingk2.res.n.p.f7599a;
        List<Pos> path4 = routeItemModel2 != null ? routeItemModel2.getPath() : null;
        if (path4 == null) {
            path4 = kotlin.collections.u.j();
        }
        List<TraceItemModel> listA = cn.mucang.android.jiakaoyi.teachingk2.r0.b.a(arrayList, aVar3, path4);
        kotlin.jvm.internal.r.d(listA, "addCurrentToStartPath(li…ute?.path ?: emptyList())");
        return listA;
    }

    public final int f(int i) {
        List<Integer> stepIds;
        TeachRouteModel teachRouteModel;
        List<Integer> stepIds2;
        Integer num;
        TeachRouteModel teachRouteModel2 = this.f6305d;
        int iIndexOf = (teachRouteModel2 == null || (stepIds = teachRouteModel2.getStepIds()) == null) ? -1 : stepIds.indexOf(Integer.valueOf(i));
        if (iIndexOf <= -1 || (teachRouteModel = this.f6305d) == null || (stepIds2 = teachRouteModel.getStepIds()) == null || (num = (Integer) kotlin.collections.s.f0(stepIds2, iIndexOf + 1)) == null) {
            return -1;
        }
        return num.intValue();
    }

    public final void h(int i) {
        String str;
        final TeachRouteModel teachRouteModel = (TeachRouteModel) kotlin.collections.s.f0(this.b, i);
        if (teachRouteModel == null) {
            return;
        }
        this.f6305d = teachRouteModel;
        if (teachRouteModel == null) {
            return;
        }
        TeachPosCheck teachPosCheck = this.f6304a;
        List<String> routeSteps = teachRouteModel.getRouteSteps();
        String str2 = "";
        if (routeSteps != null && (str = (String) kotlin.collections.s.e0(routeSteps)) != null) {
            str2 = str;
        }
        final Pos posS = teachPosCheck.s(str2);
        if (posS == null) {
            cn.mucang.android.core.utils.u.h(k0.a(R.string.teachbase_route_data_error));
        } else {
            new cn.mucang.android.jiakaoyi.framework.base.dialog.u(MucangConfig.i()).h(new cn.mucang.android.jiakaoyi.framework.base.dialog.u.e() { // from class: cn.mucang.android.jiakaoyi.teachingk2.autoteach.manager.x
                @Override // cn.mucang.android.jiakaoyi.framework.base.dialog.u.e
                public final void a() {
                    TeachRouteManager.i(posS, this, teachRouteModel);
                }
            }, k0.a(R.string.teachbase_planning_route), k0.a(R.string.teachbase_planning_route_fail));
        }
    }

    public final void k(int i) {
        if (i == 2) {
            v();
        } else {
            this.f6304a.p();
            this.f6304a.o();
        }
    }

    public final boolean l() {
        return !this.b.isEmpty();
    }

    @Override // cn.mucang.android.jiakaoyi.signal.c.f.a
    public void onSignalChanged(cn.mucang.android.jiakaoyi.signal.c.e signalGetter) {
        kotlin.jvm.internal.r.e(signalGetter, "signalGetter");
        this.f6307f = null;
        if (signalGetter.c().center != null) {
            Set<cn.mucang.android.jiakaoyi.signal.pos.c> setKeySet = this.c.keySet();
            kotlin.jvm.internal.r.d(setKeySet, "boundaryList.keys");
            for (cn.mucang.android.jiakaoyi.signal.pos.c cVar : setKeySet) {
                if (cn.mucang.android.jiakaoyi.hpmap.a.b.c.g(cVar, signalGetter.c().carRect)) {
                    this.f6307f = this.c.get(cVar);
                }
            }
        }
    }

    public final void q() {
        n0.a(new Runnable() { // from class: cn.mucang.android.jiakaoyi.teachingk2.autoteach.manager.u
            @Override // java.lang.Runnable
            public final void run() {
                TeachRouteManager.r(this.f6330a);
            }
        });
    }

    public final void t() {
        List<RouteItemModel> itemList;
        cn.mucang.android.jiakaoyi.framework.log.f.b(kotlin.jvm.internal.r.m("引导线发送成功:", Integer.valueOf(this.f6308g)));
        TeachRouteModel teachRouteModel = this.f6305d;
        RouteItemModel routeItemModel = null;
        if (teachRouteModel != null && (itemList = teachRouteModel.getItemList()) != null) {
            routeItemModel = (RouteItemModel) kotlin.collections.s.f0(itemList, this.f6308g);
        }
        if (routeItemModel == null) {
            return;
        }
        routeItemModel.setHasSend(true);
    }

    public final void w(boolean z) {
        this.f6309h = z;
    }
}
