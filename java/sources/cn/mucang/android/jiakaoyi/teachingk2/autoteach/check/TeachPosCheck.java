package cn.mucang.android.jiakaoyi.teachingk2.autoteach.check;

import cn.mucang.android.core.config.MucangConfig;
import cn.mucang.android.core.utils.u;
import cn.mucang.android.jiakaoyi.engine.model.Step;
import cn.mucang.android.jiakaoyi.framework.utils.k0;
import cn.mucang.android.jiakaoyi.hpmap.a.a.g.k;
import cn.mucang.android.jiakaoyi.hpmap.a.a.g.o;
import cn.mucang.android.jiakaoyi.hpmap.model.Line;
import cn.mucang.android.jiakaoyi.mapcollect.c.j;
import cn.mucang.android.jiakaoyi.signal.center.model.CarModel;
import cn.mucang.android.jiakaoyi.signal.center.model.Gear;
import cn.mucang.android.jiakaoyi.signal.pos.Pos;
import cn.mucang.android.jiakaoyi.teachbase.R;
import cn.mucang.android.jiakaoyi.teachingk2.autoteach.model.AreaStatusModel;
import cn.mucang.android.jiakaoyi.teachingk2.autoteach.model.AutoTeachStatus;
import cn.mucang.android.jiakaoyi.teachingk2.autoteach.model.CheckStatusModel;
import cn.mucang.android.jiakaoyi.teachingk2.data.TeachModel;
import cn.mucang.android.jiakaoyi.teachingk2.elements.model.TraceItemModel;
import cn.mucang.android.jiakaoyi.teachingk2.elements.variable.TraceVariable;
import cn.mucang.android.jiakaoyi.teachingk2.p007unity.models.teach.TeachConfigModel;
import cn.mucang.android.jiakaoyi.teachingk2.res.n;
import java.util.HashMap;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;
import java.util.Set;
import kotlin.Metadata;
import kotlin.collections.s;
import kotlin.jvm.internal.r;

/* JADX INFO: renamed from: cn.mucang.android.jiakaoyi.teachingk2.autoteach.check.f, reason: from Kotlin metadata */
/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000p\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010 \n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\b\f\u0018\u00002\u00020\u0001B\u0005¢\u0006\u0002\u0010\u0002J<\u0010\u0014\u001a\u00020\u00152\u0006\u0010\u0016\u001a\u00020\u00172\u0006\u0010\u0018\u001a\u00020\u00062\"\u0010\u0019\u001a\u001e\u0012\u0004\u0012\u00020\u0005\u0012\u0004\u0012\u00020\u00060\u001aj\u000e\u0012\u0004\u0012\u00020\u0005\u0012\u0004\u0012\u00020\u0006`\u001bH\u0002JB\u0010\u001c\u001a\u00020\u00152\f\u0010\u001d\u001a\b\u0012\u0004\u0012\u00020\u00060\u001e2\u0006\u0010\u001f\u001a\u00020 2\"\u0010\u0019\u001a\u001e\u0012\u0004\u0012\u00020\u0005\u0012\u0004\u0012\u00020\u00060\u001aj\u000e\u0012\u0004\u0012\u00020\u0005\u0012\u0004\u0012\u00020\u0006`\u001bH\u0002J\u0012\u0010!\u001a\u0004\u0018\u00010\u00102\u0006\u0010\"\u001a\u00020#H\u0016J\u0012\u0010$\u001a\u0004\u0018\u00010%2\b\u0010&\u001a\u0004\u0018\u00010'J2\u0010(\u001a\u001e\u0012\u0004\u0012\u00020\u0005\u0012\u0004\u0012\u00020\u00060\u0004j\u000e\u0012\u0004\u0012\u00020\u0005\u0012\u0004\u0012\u00020\u0006`\u00072\u000e\u0010)\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010'0\u001eJ\u0012\u0010*\u001a\u0004\u0018\u00010%2\b\u0010&\u001a\u0004\u0018\u00010'J\u0006\u0010+\u001a\u00020\u0015J\u0006\u0010,\u001a\u00020\u0015J\b\u0010-\u001a\u00020\u0015H\u0016J\u0006\u0010.\u001a\u00020\u0015J\u0006\u0010/\u001a\u00020\u0015J\u000e\u00100\u001a\u00020\u00152\u0006\u00101\u001a\u00020\u0005J\u0010\u00102\u001a\u0004\u0018\u00010%2\u0006\u0010&\u001a\u00020'R*\u0010\u0003\u001a\u001e\u0012\u0004\u0012\u00020\u0005\u0012\u0004\u0012\u00020\u00060\u0004j\u000e\u0012\u0004\u0012\u00020\u0005\u0012\u0004\u0012\u00020\u0006`\u0007X\u0082\u0004¢\u0006\u0002\n\u0000R\u001c\u0010\b\u001a\u0004\u0018\u00010\u0006X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\t\u0010\n\"\u0004\b\u000b\u0010\fR\u000e\u0010\r\u001a\u00020\u000eX\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u000f\u001a\u00020\u0010X\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u0011\u001a\u00020\u0012X\u0082\u000e¢\u0006\u0002\n\u0000R.\u0010\u0013\u001a\"\u0012\u0004\u0012\u00020\u0005\u0012\u0006\u0012\u0004\u0018\u00010\u00060\u0004j\u0010\u0012\u0004\u0012\u00020\u0005\u0012\u0006\u0012\u0004\u0018\u00010\u0006`\u0007X\u0082\u0004¢\u0006\u0002\n\u0000¨\u00063"}, d2 = {"Lcn/mucang/android/jiakaoyi/teachingk2/autoteach/check/TeachPosCheck;", "Lcn/mucang/android/jiakaoyi/teachingk2/autoteach/check/BaseTeachCheck;", "()V", "areaList", "Ljava/util/LinkedHashMap;", "Lcn/mucang/android/jiakaoyi/signal/pos/Rectangle;", "Lcn/mucang/android/jiakaoyi/hpmap/collision/k2/BoundDetector;", "Lkotlin/collections/LinkedHashMap;", "boundDetector", "getBoundDetector", "()Lcn/mucang/android/jiakaoyi/hpmap/collision/k2/BoundDetector;", "setBoundDetector", "(Lcn/mucang/android/jiakaoyi/hpmap/collision/k2/BoundDetector;)V", "extra", "Lcn/mucang/android/jiakaoyi/teachingk2/autoteach/model/AreaStatusModel;", "initStatus", "Lcn/mucang/android/jiakaoyi/teachingk2/autoteach/model/CheckStatusModel;", "passFlag", "", "useList", "addArea", "", "model", "Lcn/mucang/android/jiakaoyi/teachingk2/data/TeachModel;", "it", "temp", "Ljava/util/HashMap;", "Lkotlin/collections/HashMap;", "calculateStep", "list", "", "step", "Lcn/mucang/android/jiakaoyi/engine/model/Step;", "checkStatus", "signalGetter", "Lcn/mucang/android/jiakaoyi/signal/center/SignalGetter;", "getEndPos", "Lcn/mucang/android/jiakaoyi/signal/pos/Pos;", "mapKey", "", "getSpecifiedBoundary", "specifiedList", "getStartPos", "onResLoaded", "removeShangPoAndSend", "reset", "sendArea", "setAllArea", "setCheckRectangle", "rectangle", "setCheckedBoundary", "teachbase_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
public final class TeachPosCheck extends BaseTeachCheck {

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private boolean f6279d;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private cn.mucang.android.jiakaoyi.hpmap.a.a.b f6281f;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final LinkedHashMap<cn.mucang.android.jiakaoyi.signal.pos.c, cn.mucang.android.jiakaoyi.hpmap.a.a.b> f6278a = new LinkedHashMap<>();
    private final LinkedHashMap<cn.mucang.android.jiakaoyi.signal.pos.c, cn.mucang.android.jiakaoyi.hpmap.a.a.b> b = new LinkedHashMap<>();
    private final AreaStatusModel c = new AreaStatusModel();

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private final CheckStatusModel f6280e = new CheckStatusModel(AutoTeachStatus.CheckPos);

    private final void c(TeachModel teachModel, cn.mucang.android.jiakaoyi.hpmap.a.a.b bVar, HashMap<cn.mucang.android.jiakaoyi.signal.pos.c, cn.mucang.android.jiakaoyi.hpmap.a.a.b> map) {
        List<TraceItemModel> list;
        Pos posT;
        Pos posS;
        TraceVariable traceVariable;
        List<TraceItemModel> list2;
        cn.mucang.android.jiakaoyi.signal.utils.b bVarA = cn.mucang.android.jiakaoyi.teachingk2.elements.model.a.a(bVar);
        if (bVarA == null) {
            return;
        }
        TraceVariable traceVariable2 = teachModel.getTraceVariable();
        TraceItemModel traceItemModel = (traceVariable2 == null || (list = traceVariable2.traces) == null) ? null : (TraceItemModel) s.e0(list);
        if (traceItemModel == null) {
            return;
        }
        Pos posC = bVarA.c(traceItemModel);
        Line lineU = bVar.u();
        if (lineU != null) {
            Pos posJ = cn.mucang.android.jiakaoyi.hpmap.d.a.j(bVar.f().start, bVar.f().end, posC, cn.mucang.android.jiakaoyi.hpmap.d.a.u(lineU.start, lineU.end, posC));
            Pos posN = cn.mucang.android.jiakaoyi.hpmap.d.a.n(posJ, lineU.start, lineU.end);
            posT = cn.mucang.android.jiakaoyi.hpmap.d.a.t(posJ, posN, 125.0d);
            r.d(posT, "getPointOnLine(cross, footer, 125.0)");
            posS = cn.mucang.android.jiakaoyi.hpmap.d.a.s(posN, posJ, 125.0d);
            r.d(posS, "getPointOnExtend(footer, cross, 125.0)");
        } else {
            Pos posN2 = cn.mucang.android.jiakaoyi.hpmap.d.a.n(posC, bVar.f().start, bVar.f().end);
            if (!cn.mucang.android.jiakaoyi.hpmap.d.a.y(posN2, bVar.f().start, bVar.f().end) && (traceVariable = teachModel.getTraceVariable()) != null && (list2 = traceVariable.traces) != null) {
                int i = 0;
                for (Object obj : list2) {
                    int i2 = i + 1;
                    if (i < 0) {
                        s.t();
                        throw null;
                    }
                    TraceItemModel traceItemModel2 = (TraceItemModel) obj;
                    if (i > 0) {
                        Pos posC2 = bVarA.c(traceItemModel2);
                        Pos posC3 = bVarA.c(teachModel.getTraceVariable().traces.get(i - 1));
                        if (cn.mucang.android.jiakaoyi.hpmap.d.a.C(posC2, posC3, bVar.f().start, bVar.f().end)) {
                            posN2 = cn.mucang.android.jiakaoyi.hpmap.d.a.j(posC2, posC3, bVar.f().start, bVar.f().end);
                            break;
                        }
                    }
                    i = i2;
                }
            }
            Pos posT2 = cn.mucang.android.jiakaoyi.hpmap.d.a.t(posN2, bVar.f().start, 125.0d);
            r.d(posT2, "getPointOnLine(footer, i…startLine().start, 125.0)");
            Pos posT3 = cn.mucang.android.jiakaoyi.hpmap.d.a.t(posN2, bVar.f().end, 125.0d);
            r.d(posT3, "getPointOnLine(footer, it.startLine().end, 125.0)");
            posT = posT2;
            posS = posT3;
        }
        Line lineP = (!((bVar instanceof cn.mucang.android.jiakaoyi.hpmap.a.a.g.c) && ((cn.mucang.android.jiakaoyi.hpmap.a.a.g.c) bVar).r()) && (!(bVar instanceof o) || ((o) bVar).r())) ? cn.mucang.android.jiakaoyi.hpmap.d.a.p(posS, posT, 600.0d) : cn.mucang.android.jiakaoyi.hpmap.d.a.q(posS, posT, 600.0d);
        map.put(new cn.mucang.android.jiakaoyi.signal.pos.c(posT, posS, lineP.start, lineP.end), bVar);
    }

    private final void d(List<? extends cn.mucang.android.jiakaoyi.hpmap.a.a.b> list, Step step, HashMap<cn.mucang.android.jiakaoyi.signal.pos.c, cn.mucang.android.jiakaoyi.hpmap.a.a.b> map) {
        for (cn.mucang.android.jiakaoyi.hpmap.a.a.b bVar : list) {
            List<TeachModel> list2 = n.p.i.get(step);
            if (list2 != null) {
                for (TeachModel it : list2) {
                    if (it.isTraceTeach() && it.subStep == 1 && n.b().a(it, bVar)) {
                        r.d(it, "it");
                        c(it, bVar, map);
                    }
                }
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void l(final TeachPosCheck this$0) {
        r.e(this$0, "this$0");
        final LinkedHashMap linkedHashMap = new LinkedHashMap();
        j jVar = n.p.c;
        if (jVar == null) {
            return;
        }
        List<? extends cn.mucang.android.jiakaoyi.hpmap.a.a.b> list = jVar.f4725f;
        r.d(list, "map.daoku");
        this$0.d(list, Step.K2_DaoCheRuKu, linkedHashMap);
        List<? extends cn.mucang.android.jiakaoyi.hpmap.a.a.b> list2 = jVar.f4724e;
        r.d(list2, "map.cefang");
        this$0.d(list2, Step.K2_CeFangTingChe, linkedHashMap);
        List<? extends cn.mucang.android.jiakaoyi.hpmap.a.a.b> list3 = jVar.f4726g;
        r.d(list3, "map.quxian");
        this$0.d(list3, Step.K2_SQuXian, linkedHashMap);
        List<? extends cn.mucang.android.jiakaoyi.hpmap.a.a.b> list4 = jVar.i;
        r.d(list4, "map.zhijiao");
        this$0.d(list4, Step.K2_ZhiJiaoZhuanWan, linkedHashMap);
        if (!cn.mucang.android.jiakaoyi.signal.utils.f.b()) {
            List<? extends cn.mucang.android.jiakaoyi.hpmap.a.a.b> list5 = jVar.f4727h;
            r.d(list5, "map.shangpo");
            this$0.d(list5, Step.K2_ShangPoQiBu, linkedHashMap);
        }
        u.c(new Runnable() { // from class: cn.mucang.android.jiakaoyi.teachingk2.autoteach.check.b
            @Override // java.lang.Runnable
            public final void run() {
                TeachPosCheck.m(this.f6275a, linkedHashMap);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void m(TeachPosCheck this$0, LinkedHashMap temp) {
        r.e(this$0, "this$0");
        r.e(temp, "$temp");
        this$0.f6278a.clear();
        this$0.f6278a.putAll(temp);
        this$0.b.clear();
        this$0.b.putAll(temp);
    }

    @Override // cn.mucang.android.jiakaoyi.teachingk2.autoteach.check.BaseTeachCheck
    public CheckStatusModel a(cn.mucang.android.jiakaoyi.signal.c.e signalGetter) {
        r.e(signalGetter, "signalGetter");
        this.c.setPosId(0);
        this.c.setPosState(1);
        String strA = k0.a(R.string.teachbase_drive_teach_area);
        if (signalGetter.c().center != null) {
            Set<cn.mucang.android.jiakaoyi.signal.pos.c> setKeySet = this.b.keySet();
            r.d(setKeySet, "useList.keys");
            int i = 0;
            for (Object obj : setKeySet) {
                int i2 = i + 1;
                if (i < 0) {
                    s.t();
                    throw null;
                }
                cn.mucang.android.jiakaoyi.signal.pos.c cVar = (cn.mucang.android.jiakaoyi.signal.pos.c) obj;
                if (cn.mucang.android.jiakaoyi.hpmap.a.b.c.a(cVar, signalGetter.c().center)) {
                    q(this.b.get(cVar));
                    if (Math.abs(cn.mucang.android.jiakaoyi.signal.utils.d.c((float) (signalGetter.c().degree - Math.toDegrees(cVar.f5821d.angleTo(cVar.f5820a))))) >= 90.0f) {
                        strA = k0.a(R.string.teachbase_ready_area_carpos);
                        this.c.setPosId(i2);
                        this.c.setPosState(2);
                        break;
                    }
                    strA = k0.a(R.string.teachbase_ready_area_stop);
                    this.c.setPosId(i2);
                    this.c.setPosState(3);
                    break;
                }
                i = i2;
            }
        }
        this.f6280e.i(strA);
        this.f6280e.g(this.c);
        this.f6280e.f(0);
        if (this.c.getPosState() == 3) {
            this.f6280e.f(10000);
            if (signalGetter.d().F != CarModel.Direction.Stop) {
                this.f6279d = false;
            } else {
                if (this.f6279d) {
                    return null;
                }
                if (!signalGetter.d().f5268f && signalGetter.d().m == Gear.GearN) {
                    this.f6279d = true;
                }
            }
        } else {
            this.f6279d = false;
        }
        return this.f6280e;
    }

    @Override // cn.mucang.android.jiakaoyi.teachingk2.autoteach.check.BaseTeachCheck
    public void b() {
        this.f6279d = false;
        this.f6281f = null;
        this.b.clear();
        this.b.putAll(this.f6278a);
    }

    /* JADX INFO: renamed from: e, reason: from getter */
    public final cn.mucang.android.jiakaoyi.hpmap.a.a.b getF6281f() {
        return this.f6281f;
    }

    public final Pos f(String str) {
        Iterator<Map.Entry<cn.mucang.android.jiakaoyi.signal.pos.c, cn.mucang.android.jiakaoyi.hpmap.a.a.b>> it = this.f6278a.entrySet().iterator();
        while (it.hasNext()) {
            cn.mucang.android.jiakaoyi.hpmap.a.a.b value = it.next().getValue();
            if (r.a(str, value.getKey())) {
                return value.k().middle();
            }
        }
        return null;
    }

    public final LinkedHashMap<cn.mucang.android.jiakaoyi.signal.pos.c, cn.mucang.android.jiakaoyi.hpmap.a.a.b> g(List<String> specifiedList) {
        r.e(specifiedList, "specifiedList");
        LinkedHashMap<cn.mucang.android.jiakaoyi.signal.pos.c, cn.mucang.android.jiakaoyi.hpmap.a.a.b> linkedHashMap = new LinkedHashMap<>();
        for (Map.Entry<cn.mucang.android.jiakaoyi.signal.pos.c, cn.mucang.android.jiakaoyi.hpmap.a.a.b> entry : this.f6278a.entrySet()) {
            if (specifiedList.contains(entry.getValue().getKey())) {
                linkedHashMap.put(entry.getKey(), entry.getValue());
            }
        }
        return linkedHashMap;
    }

    public final Pos h(String str) {
        for (Map.Entry<cn.mucang.android.jiakaoyi.signal.pos.c, cn.mucang.android.jiakaoyi.hpmap.a.a.b> entry : this.f6278a.entrySet()) {
            if (r.a(str, entry.getValue().getKey())) {
                return entry.getKey().f5825h;
            }
        }
        return null;
    }

    public final void k() {
        MucangConfig.f(new Runnable() { // from class: cn.mucang.android.jiakaoyi.teachingk2.autoteach.check.a
            @Override // java.lang.Runnable
            public final void run() {
                TeachPosCheck.l(this.f6274a);
            }
        });
    }

    public final void n() {
        Iterator<Map.Entry<cn.mucang.android.jiakaoyi.signal.pos.c, cn.mucang.android.jiakaoyi.hpmap.a.a.b>> it = this.b.entrySet().iterator();
        while (it.hasNext()) {
            if (it.next().getValue() instanceof k) {
                it.remove();
            }
        }
        o();
    }

    public final void o() {
        HashMap<String, List<Pos>> map = new HashMap<>();
        Set<cn.mucang.android.jiakaoyi.signal.pos.c> setKeySet = this.b.keySet();
        r.d(setKeySet, "useList.keys");
        boolean z = false;
        int i = 0;
        for (Object obj : setKeySet) {
            int i2 = i + 1;
            if (i < 0) {
                s.t();
                throw null;
            }
            cn.mucang.android.jiakaoyi.signal.pos.c cVar = (cn.mucang.android.jiakaoyi.signal.pos.c) obj;
            String strValueOf = String.valueOf(i2);
            List<Pos> list = cVar.f5824g;
            r.d(list, "rectangle.posList");
            map.put(strValueOf, list);
            if (this.b.get(cVar) == null) {
                z = true;
            }
            i = i2;
        }
        TeachConfigModel teachConfigModel = new TeachConfigModel();
        teachConfigModel.posMap = map;
        teachConfigModel.isNav = z;
        cn.mucang.android.jiakaoyi.unity.c.d.e(teachConfigModel);
    }

    public final void p() {
        this.b.clear();
        this.b.putAll(this.f6278a);
    }

    public final void q(cn.mucang.android.jiakaoyi.hpmap.a.a.b bVar) {
        this.f6281f = bVar;
    }

    public final void r(cn.mucang.android.jiakaoyi.signal.pos.c rectangle) {
        r.e(rectangle, "rectangle");
        this.b.clear();
        this.b.put(rectangle, null);
    }

    public final Pos s(String mapKey) {
        r.e(mapKey, "mapKey");
        this.b.clear();
        for (Map.Entry<cn.mucang.android.jiakaoyi.signal.pos.c, cn.mucang.android.jiakaoyi.hpmap.a.a.b> entry : this.f6278a.entrySet()) {
            if (r.a(mapKey, entry.getValue().getKey())) {
                this.b.put(entry.getKey(), entry.getValue());
                return entry.getKey().f5825h;
            }
        }
        return null;
    }
}
