package cn.mucang.android.jiakaoyi.teachingk2.exe;

import android.util.SparseArray;
import cn.mucang.android.core.utils.n0;
import cn.mucang.android.core.utils.u;
import cn.mucang.android.jiakaoyi.engine.model.Step;
import cn.mucang.android.jiakaoyi.hpmap.a.a.b;
import cn.mucang.android.jiakaoyi.signal.pos.Pos;
import cn.mucang.android.jiakaoyi.teachingk2.data.ErrorModel;
import cn.mucang.android.jiakaoyi.teachingk2.data.TeachModel;
import cn.mucang.android.jiakaoyi.teachingk2.elements.Variable;
import cn.mucang.android.jiakaoyi.teachingk2.elements.f0;
import cn.mucang.android.jiakaoyi.teachingk2.elements.g0;
import cn.mucang.android.jiakaoyi.teachingk2.elements.handlers.s;
import cn.mucang.android.jiakaoyi.teachingk2.elements.model.TraceItemModel;
import cn.mucang.android.jiakaoyi.teachingk2.elements.variable.NormalVariable;
import cn.mucang.android.jiakaoyi.teachingk2.elements.variable.RepeatVariable;
import cn.mucang.android.jiakaoyi.teachingk2.elements.variable.TraceVariable;
import cn.mucang.android.jiakaoyi.teachingk2.form.FormModel;
import cn.mucang.android.jiakaoyi.teachingk2.form.model.LineTipModel;
import cn.mucang.android.jiakaoyi.teachingk2.wheelr.RuntimeWheelAndR;
import java.lang.ref.Reference;
import java.lang.ref.WeakReference;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Comparator;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Set;

/* JADX INFO: loaded from: classes4.dex */
public class TeachingProcessor<T extends cn.mucang.android.jiakaoyi.hpmap.a.a.b> implements cn.mucang.android.jiakaoyi.hpmap.collision.k2.checker.c<T> {
    private final List<TeachModel> b;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final cn.mucang.android.jiakaoyi.framework.h.b<FormModel> f7100d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private final k f7101e;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private final f0 f7104h;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private Reference<cn.mucang.android.jiakaoyi.hpmap.collision.k2.checker.b<?, ?>> f7102f = null;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private b f7103g = null;
    private final m c = new m();

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final i f7099a = new i();

    private static class DependencyInfo extends Pos {
        final List<TeachModel> tmList;

        private DependencyInfo(Pos pos, TeachModel teachModel) {
            ArrayList arrayList = new ArrayList();
            this.tmList = arrayList;
            arrayList.add(teachModel);
            this.x = pos.x;
            this.y = pos.y;
            this.z = pos.z;
        }
    }

    private static class b {

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        private SparseArray<Pos> f7106d;

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private final Map<Integer, Map<String, Boolean>> f7105a = new HashMap();
        private final Map<Integer, Map<ErrorModel, Boolean>> b = new HashMap();
        private final Map<Integer, Map<Variable, g0<?>>> c = new HashMap();

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        private int f7107e = -1;
    }

    public TeachingProcessor(List<TeachModel> list, Set<String> set, cn.mucang.android.jiakaoyi.framework.h.b<FormModel> bVar, k kVar, int i) {
        this.b = list;
        this.f7100d = bVar;
        this.f7101e = kVar;
        this.f7104h = new f0(i, set, list);
        q(list);
    }

    private void b(cn.mucang.android.jiakaoyi.signal.c.e eVar, cn.mucang.android.jiakaoyi.hpmap.a.a.b bVar, cn.mucang.android.jiakaoyi.hpmap.collision.k2.checker.b<?, ?> bVar2) {
        Map<Variable, g0<?>> map;
        Map<ErrorModel, Boolean> map2;
        cn.mucang.android.jiakaoyi.signal.c.e eVar2 = eVar;
        cn.mucang.android.jiakaoyi.hpmap.a.a.b bVar3 = bVar;
        cn.mucang.android.jiakaoyi.hpmap.collision.k2.checker.b<?, ?> bVar4 = bVar2;
        cn.mucang.android.jiakaoyi.teachingk2.videosplit.c.b().a(eVar2, bVar3, bVar4);
        RuntimeWheelAndR.e(eVar);
        if (cn.mucang.android.core.utils.g.b(this.b)) {
            return;
        }
        Reference<cn.mucang.android.jiakaoyi.hpmap.collision.k2.checker.b<?, ?>> reference = this.f7102f;
        if ((reference == null ? null : reference.get()) != bVar4 || this.f7103g == null) {
            b bVar5 = new b();
            this.f7103g = bVar5;
            bVar5.f7106d = bVar.j();
            this.f7102f = new WeakReference(bVar4);
        }
        Map map3 = this.f7103g.f7105a;
        Map map4 = this.f7103g.b;
        Map map5 = this.f7103g.c;
        int iJ = bVar2.j();
        if (iJ != this.f7103g.f7107e) {
            map3.remove(Integer.valueOf(this.f7103g.f7107e));
            map5.remove(Integer.valueOf(this.f7103g.f7107e));
            map4.remove(Integer.valueOf(this.f7103g.f7107e));
            this.f7103g.f7107e = iJ;
        }
        Map map6 = (Map) map3.get(Integer.valueOf(iJ));
        Map<ErrorModel, Boolean> map7 = (Map) map4.get(Integer.valueOf(iJ));
        Map<Variable, g0<?>> map8 = (Map) map5.get(Integer.valueOf(iJ));
        if (map6 == null) {
            map6 = new HashMap();
            map3.put(Integer.valueOf(iJ), map6);
        }
        Map map9 = map6;
        if (map8 == null) {
            HashMap map10 = new HashMap();
            map5.put(Integer.valueOf(iJ), map10);
            map = map10;
        } else {
            map = map8;
        }
        if (map7 == null) {
            HashMap map11 = new HashMap();
            map4.put(Integer.valueOf(iJ), map11);
            map2 = map11;
        } else {
            map2 = map7;
        }
        for (final TeachModel teachModel : this.b) {
            if (teachModel.isTraceTeach()) {
                cn.mucang.android.jiakaoyi.teachingk2.p006traceerror.correct.d.g().i(eVar2, bVar3, bVar.s(), teachModel.subStep);
            }
            if (!l.a(teachModel, bVar4, bVar3, this.f7104h)) {
                if (d(map9, teachModel.teachModelId)) {
                    s(eVar, teachModel, bVar, bVar2, map, map2);
                } else {
                    if (n0.g(teachModel.teachModelId)) {
                        List<String> list = teachModel.preIds;
                        if (cn.mucang.android.core.utils.g.d(list)) {
                            Iterator<String> it = list.iterator();
                            while (it.hasNext() && d(map9, it.next())) {
                            }
                        }
                        List<String> list2 = teachModel.exclusiveIds;
                        if (cn.mucang.android.core.utils.g.d(list2)) {
                            boolean z = false;
                            Iterator<String> it2 = list2.iterator();
                            while (it2.hasNext()) {
                                if (d(map9, it2.next())) {
                                    z = true;
                                    break;
                                }
                            }
                            if (z) {
                                continue;
                            }
                        }
                    }
                    c(teachModel, this.f7103g.f7106d, bVar3);
                    Map map12 = map9;
                    boolean zA = this.c.a(eVar, teachModel.variableList, bVar, bVar2, map, teachModel, this.f7104h);
                    map12.put(teachModel.teachModelId, Boolean.valueOf(zA));
                    if (zA) {
                        s(eVar, teachModel, bVar, bVar2, map, map2);
                        u.c(new Runnable() { // from class: cn.mucang.android.jiakaoyi.teachingk2.exe.e
                            @Override // java.lang.Runnable
                            public final void run() {
                                this.f7112a.f(teachModel);
                            }
                        });
                        return;
                    } else {
                        eVar2 = eVar;
                        bVar3 = bVar;
                        bVar4 = bVar2;
                        map9 = map12;
                    }
                }
            }
        }
    }

    private void c(TeachModel teachModel, SparseArray<Pos> sparseArray, cn.mucang.android.jiakaoyi.hpmap.a.a.b bVar) {
        if (sparseArray == null || sparseArray.size() <= 0) {
            return;
        }
        r(sparseArray, teachModel.variableList);
        if (cn.mucang.android.core.utils.g.d(teachModel.errors)) {
            for (ErrorModel errorModel : teachModel.errors) {
                r(sparseArray, errorModel.stopVariables);
                r(sparseArray, errorModel.errorVariables);
            }
        }
        if (cn.mucang.android.core.utils.g.d(teachModel.data)) {
            for (FormModel formModel : teachModel.data) {
                if (formModel instanceof LineTipModel) {
                    ((LineTipModel) formModel).addPoints(this.f7099a, sparseArray, bVar);
                }
            }
        }
    }

    private static <T> boolean d(Map<T, Boolean> map, T t) {
        Boolean bool = map.get(t);
        return bool != null && bool.booleanValue();
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX INFO: renamed from: e, reason: merged with bridge method [inline-methods] */
    public /* synthetic */ void f(TeachModel teachModel) {
        if (cn.mucang.android.core.utils.g.b(teachModel.data)) {
            return;
        }
        for (FormModel formModel : teachModel.data) {
            formModel.tm = teachModel;
            this.f7100d.callback(formModel);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX INFO: renamed from: i, reason: merged with bridge method [inline-methods] */
    public /* synthetic */ void j(TeachModel teachModel, ErrorModel errorModel) {
        this.f7101e.a(teachModel, errorModel);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX INFO: renamed from: k, reason: merged with bridge method [inline-methods] */
    public /* synthetic */ void l(TeachModel teachModel, ErrorModel errorModel) {
        this.f7101e.a(teachModel, errorModel);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX INFO: renamed from: m, reason: merged with bridge method [inline-methods] */
    public /* synthetic */ void n(TeachModel teachModel, ErrorModel errorModel) {
        this.f7101e.a(teachModel, errorModel);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX INFO: renamed from: o, reason: merged with bridge method [inline-methods] */
    public /* synthetic */ void p(TeachModel teachModel, ErrorModel errorModel) {
        this.f7101e.a(teachModel, errorModel);
    }

    private void q(List<TeachModel> list) {
        int i;
        boolean z;
        if (cn.mucang.android.core.utils.g.b(list)) {
            return;
        }
        HashMap map = new HashMap();
        int i2 = 0;
        int i3 = 0;
        for (TeachModel teachModel : list) {
            int i4 = teachModel.step;
            teachModel.normalIndex = -1;
            List arrayList = (List) map.get(Integer.valueOf(teachModel.subStep));
            if (arrayList == null) {
                arrayList = new ArrayList();
                map.put(Integer.valueOf(teachModel.subStep), arrayList);
            }
            arrayList.add(teachModel);
            i3 = i4;
        }
        ArrayList<Map.Entry> arrayList2 = new ArrayList(map.entrySet());
        Collections.sort(arrayList2, new Comparator() { // from class: cn.mucang.android.jiakaoyi.teachingk2.exe.d
            @Override // java.util.Comparator
            public final int compare(Object obj, Object obj2) {
                return Integer.compare(((Integer) ((Map.Entry) obj).getKey()).intValue(), ((Integer) ((Map.Entry) obj2).getKey()).intValue());
            }
        });
        Pos pos = new Pos();
        Pos pos2 = new Pos();
        HashMap map2 = new HashMap();
        for (Map.Entry entry : arrayList2) {
            List<TeachModel> list2 = (List) entry.getValue();
            int iIntValue = ((Integer) entry.getKey()).intValue();
            StringBuilder sb = new StringBuilder();
            sb.append("开始分析子步骤:");
            sb.append(entry.getKey());
            sb.append(" , step:");
            sb.append(cn.mucang.android.core.utils.g.b(list2) ? -1 : ((TeachModel) list2.get(i2)).step);
            cn.mucang.android.jiakaoyi.framework.log.f.o(sb.toString());
            ArrayList<DependencyInfo> arrayList3 = new ArrayList();
            TraceVariable traceVariable = null;
            for (TeachModel teachModel2 : list2) {
                TraceVariable traceVariable2 = teachModel2.getTraceVariable();
                if (traceVariable2 != null) {
                    traceVariable = traceVariable2;
                }
                NormalVariable normalVariable = teachModel2.getNormalVariable();
                if (normalVariable != null) {
                    Iterator it = arrayList3.iterator();
                    while (true) {
                        if (!it.hasNext()) {
                            z = false;
                            break;
                        }
                        DependencyInfo dependencyInfo = (DependencyInfo) it.next();
                        if (dependencyInfo.distanceSquare(normalVariable.posOnLine) < 25.0d) {
                            dependencyInfo.tmList.add(teachModel2);
                            z = true;
                            break;
                        }
                    }
                    if (!z) {
                        arrayList3.add(new DependencyInfo(new Pos(normalVariable.posOnLine), teachModel2));
                    }
                }
            }
            if (!cn.mucang.android.core.utils.g.b(arrayList3) && traceVariable != null && !cn.mucang.android.core.utils.g.b(traceVariable.traces) && traceVariable.traces.size() >= 2) {
                if (traceVariable.traces.size() > 5 && ((i3 == (i = Step.K2_DaoCheRuKu.type) && (iIntValue == 2 || iIntValue == 3 || iIntValue == 4)) || (i3 == Step.K2_CeFangTingChe.type && (iIntValue == 2 || iIntValue == 3)))) {
                    RuntimeWheelAndR.d(traceVariable.traces, (i3 == i && iIntValue == 3) || (i3 == Step.K2_CeFangTingChe.type && iIntValue == 3));
                }
                ArrayList<TeachModel> arrayList4 = new ArrayList();
                for (DependencyInfo dependencyInfo2 : arrayList3) {
                    int size = 0;
                    while (true) {
                        if (size >= traceVariable.traces.size() - 1) {
                            size = -1;
                            break;
                        }
                        int i5 = size + 1;
                        if (cn.mucang.android.jiakaoyi.hpmap.d.a.z(dependencyInfo2, traceVariable.traces.get(size), traceVariable.traces.get(i5), pos, pos2) && cn.mucang.android.jiakaoyi.hpmap.d.a.l(dependencyInfo2, traceVariable.traces.get(size), traceVariable.traces.get(i5)) < 400.0d) {
                            break;
                        } else {
                            size = i5;
                        }
                    }
                    if (size == -1) {
                        double dDistanceSquare = traceVariable.traces.get(0).distanceSquare(dependencyInfo2);
                        List<TraceItemModel> list3 = traceVariable.traces;
                        size = dDistanceSquare > list3.get(list3.size() + (-1)).distanceSquare(dependencyInfo2) ? traceVariable.traces.size() - 1 : 0;
                    }
                    for (TeachModel teachModel3 : dependencyInfo2.tmList) {
                        teachModel3.normalIndex = size;
                        arrayList4.add(teachModel3);
                    }
                }
                Collections.sort(arrayList4, new Comparator() { // from class: cn.mucang.android.jiakaoyi.teachingk2.exe.f
                    @Override // java.util.Comparator
                    public final int compare(Object obj, Object obj2) {
                        return Integer.compare(((TeachModel) obj).normalIndex, ((TeachModel) obj2).normalIndex);
                    }
                });
                map2.put(entry.getKey(), arrayList4);
                StringBuilder sb2 = new StringBuilder("\n");
                for (TeachModel teachModel4 : arrayList4) {
                    NormalVariable normalVariable2 = teachModel4.getNormalVariable();
                    if (normalVariable2 != null) {
                        sb2.append(normalVariable2.posOnLine.x);
                        sb2.append(",");
                        sb2.append(normalVariable2.posOnLine.y);
                        sb2.append(",");
                        sb2.append(teachModel4.normalIndex);
                        sb2.append("\n");
                    }
                }
                cn.mucang.android.jiakaoyi.framework.log.f.o(sb2.toString());
            }
            i2 = 0;
        }
        this.f7104h.f7021d.clear();
        this.f7104h.f7021d.putAll(map2);
    }

    private void r(SparseArray<Pos> sparseArray, List<Variable> list) {
        if (cn.mucang.android.core.utils.g.b(list)) {
            return;
        }
        for (Object obj : list) {
            if (obj instanceof cn.mucang.android.jiakaoyi.teachingk2.elements.h0.a) {
                ((cn.mucang.android.jiakaoyi.teachingk2.elements.h0.a) obj).convertCoordinate(sparseArray);
            }
            if (obj instanceof cn.mucang.android.jiakaoyi.teachingk2.elements.h0.b) {
                ((cn.mucang.android.jiakaoyi.teachingk2.elements.h0.b) obj).wheelConvert();
            }
        }
    }

    private void s(cn.mucang.android.jiakaoyi.signal.c.e eVar, final TeachModel teachModel, cn.mucang.android.jiakaoyi.hpmap.a.a.b bVar, cn.mucang.android.jiakaoyi.hpmap.collision.k2.checker.b<?, ?> bVar2, Map<Variable, g0<?>> map, Map<ErrorModel, Boolean> map2) {
        s sVar;
        Boolean bool = Boolean.TRUE;
        if (cn.mucang.android.core.utils.g.b(teachModel.errors)) {
            return;
        }
        for (final ErrorModel errorModel : teachModel.errors) {
            if (d(map2, errorModel)) {
                return;
            }
            int i = errorModel.checkType;
            if (i == 0) {
                if (cn.mucang.android.core.utils.g.b(errorModel.stopVariables) || this.c.a(eVar, errorModel.stopVariables, bVar, bVar2, map, teachModel, this.f7104h)) {
                    boolean zA = this.c.a(eVar, errorModel.errorVariables, bVar, bVar2, map, teachModel, this.f7104h);
                    map2.put(errorModel, bool);
                    if (zA && !errorModel.isRightCheck) {
                        u.c(new Runnable() { // from class: cn.mucang.android.jiakaoyi.teachingk2.exe.b
                            @Override // java.lang.Runnable
                            public final void run() {
                                this.f7109a.j(teachModel, errorModel);
                            }
                        });
                    } else if (!zA && errorModel.isRightCheck) {
                        u.c(new Runnable() { // from class: cn.mucang.android.jiakaoyi.teachingk2.exe.g
                            @Override // java.lang.Runnable
                            public final void run() {
                                this.f7114a.l(teachModel, errorModel);
                            }
                        });
                    }
                }
            } else if (i == 1) {
                if (this.c.a(eVar, errorModel.stopVariables, bVar, bVar2, map, teachModel, this.f7104h)) {
                    map2.put(errorModel, bool);
                    if (errorModel.isRightCheck) {
                        u.c(new Runnable() { // from class: cn.mucang.android.jiakaoyi.teachingk2.exe.c
                            @Override // java.lang.Runnable
                            public final void run() {
                                this.f7110a.n(teachModel, errorModel);
                            }
                        });
                        return;
                    }
                    return;
                }
                boolean zA2 = this.c.a(eVar, errorModel.errorVariables, bVar, bVar2, map, teachModel, this.f7104h);
                if (zA2 && !errorModel.isRightCheck) {
                    for (Variable variable : errorModel.errorVariables) {
                        if ((variable instanceof RepeatVariable) && (sVar = (s) map.get(variable)) != null) {
                            sVar.b();
                        }
                    }
                    u.c(new Runnable() { // from class: cn.mucang.android.jiakaoyi.teachingk2.exe.h
                        @Override // java.lang.Runnable
                        public final void run() {
                            this.f7115a.p(teachModel, errorModel);
                        }
                    });
                } else if (zA2) {
                    map2.put(errorModel, bool);
                }
            }
        }
    }

    @Override // cn.mucang.android.jiakaoyi.hpmap.collision.k2.checker.c
    public void a(cn.mucang.android.jiakaoyi.signal.c.e eVar, T t, cn.mucang.android.jiakaoyi.hpmap.collision.k2.checker.b<T, ?> bVar) {
        b(eVar, t, bVar);
    }
}
