package cn.mucang.android.jiakaoyi.teachingk2.r0;

import cn.mucang.android.jiakaoyi.engine.model.Step;
import cn.mucang.android.jiakaoyi.framework.bus.LiveBus;
import cn.mucang.android.jiakaoyi.framework.log.f;
import cn.mucang.android.jiakaoyi.signal.c.d;
import cn.mucang.android.jiakaoyi.signal.c.e;
import cn.mucang.android.jiakaoyi.signal.pos.Gps;
import cn.mucang.android.jiakaoyi.signal.pos.Pos;
import cn.mucang.android.jiakaoyi.teachingk2.autopilot.utm.SpecialPointData;
import cn.mucang.android.jiakaoyi.teachingk2.data.TeachModel;
import cn.mucang.android.jiakaoyi.teachingk2.elements.model.TraceItemModel;
import cn.mucang.android.jiakaoyi.teachingk2.elements.variable.TraceVariable;
import cn.mucang.android.jiakaoyi.teachingk2.res.n;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Comparator;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;

/* JADX INFO: loaded from: classes4.dex */
public class b {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private static final Map<cn.mucang.android.jiakaoyi.hpmap.a.a.b, List<TraceItemModel>> f7546a = new HashMap();
    private static final Map<cn.mucang.android.jiakaoyi.hpmap.a.a.b, List<Pos>> b = new HashMap();
    private static final Map<cn.mucang.android.jiakaoyi.hpmap.a.a.b, SpecialPointData> c = new HashMap();

    class a {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        final int f7547a;
        final List<TraceItemModel> b = new ArrayList();
        final List<Integer> c = new ArrayList();

        a(int i, List<TraceItemModel> list) {
            this.f7547a = i;
            a(list);
            b();
        }

        private void a(List<TraceItemModel> list) {
            if (list == null) {
                return;
            }
            Iterator<TraceItemModel> it = list.iterator();
            while (it.hasNext()) {
                this.b.add(it.next().copy());
            }
        }

        private void b() {
            if (this.b.isEmpty() || this.b.size() < 2) {
                return;
            }
            this.c.add(Integer.valueOf(this.b.get(1).wheel - this.b.get(0).wheel));
            for (int i = 1; i < this.b.size(); i++) {
                this.c.add(Integer.valueOf(this.b.get(i).wheel - this.b.get(i - 1).wheel));
            }
        }
    }

    public static List<TraceItemModel> a(List<TraceItemModel> list, cn.mucang.android.jiakaoyi.signal.i.a aVar, List<Pos> list2) throws Exception {
        Class<cn.mucang.android.jiakaoyi.teachingk2.traceerror.a> cls;
        ArrayList<TraceItemModel> arrayList;
        ArrayList arrayList2;
        Class<cn.mucang.android.jiakaoyi.teachingk2.traceerror.a> cls2 = cn.mucang.android.jiakaoyi.teachingk2.traceerror.a.class;
        ArrayList arrayList3 = new ArrayList();
        ArrayList arrayList4 = new ArrayList();
        TraceItemModel traceItemModel = list.get(0);
        e eVarT = d.t();
        Pos posMeanWith = new Pos(eVarT.c().wheelLeftBack).meanWith(eVarT.c().wheelRightBack);
        if (posMeanWith.distanceTo(traceItemModel) < 100.0d) {
            LiveBus.d(cls2).l(new cn.mucang.android.jiakaoyi.teachingk2.traceerror.a(list2, true));
            return list;
        }
        Gps gpsB = aVar.b(posMeanWith);
        double[] dArrI = cn.mucang.android.jiakaoyi.teachingk2.autopilot.utm.b.i(gpsB.longitude, gpsB.latitude);
        if (list.size() > 2 && new Pos(dArrI[0], dArrI[1]).vectorTo(list.get(0)).dot(list.get(0).vectorTo(list.get(2))) < 0.0d) {
            LiveBus.d(cls2).l(new cn.mucang.android.jiakaoyi.teachingk2.traceerror.a(list2, true));
            return list;
        }
        double d2 = traceItemModel.x - dArrI[0];
        double d3 = traceItemModel.y - dArrI[1];
        double dSqrt = Math.sqrt((d2 * d2) + (d3 * d3) + 1.0E-100d);
        short s = (short) (eVarT.d().r * 10);
        int i = (int) (dSqrt / 0.5d);
        double d4 = (((double) (traceItemModel.wheel - s)) * 1.0d) / ((double) (i + 1));
        int i2 = 0;
        while (true) {
            double d5 = i2;
            double d6 = 0.5d * d5;
            double d7 = ((d6 * d2) / dSqrt) + dArrI[0];
            double d8 = d2;
            double d9 = ((d6 * d3) / dSqrt) + dArrI[1];
            cls = cls2;
            TraceItemModel traceItemModelCopy = traceItemModel.copy();
            traceItemModelCopy.wheel = (short) (((double) s) + (d4 * d5));
            traceItemModelCopy.x = d7;
            traceItemModelCopy.y = d9;
            arrayList = arrayList3;
            arrayList.add(traceItemModelCopy);
            i2++;
            double[] dArr = new double[2];
            cn.mucang.android.jiakaoyi.teachingk2.autopilot.utm.b.h(d7, d9, ((int) Math.floor((gpsB.longitude + 180.0d) / 6.0d)) + 1, false, dArr);
            Pos posA = aVar.a(new Gps(Math.toDegrees(dArr[0]), Math.toDegrees(dArr[1])));
            arrayList2 = arrayList4;
            arrayList2.add(posA);
            if (i2 >= i) {
                break;
            }
            arrayList3 = arrayList;
            arrayList4 = arrayList2;
            cls2 = cls;
            d2 = d8;
        }
        arrayList.addAll(list);
        arrayList2.addAll(list2);
        LiveBus.d(cls).l(new cn.mucang.android.jiakaoyi.teachingk2.traceerror.a(arrayList2, true));
        StringBuilder sb = new StringBuilder("当前项目:" + ((int) list.get(0).step) + "\n");
        for (TraceItemModel traceItemModel2 : arrayList) {
            sb.append(traceItemModel2.x);
            sb.append(",");
            sb.append(traceItemModel2.y);
            sb.append(",");
            sb.append((int) traceItemModel2.wheel);
            sb.append(",");
            sb.append((int) traceItemModel2.pointType);
            sb.append("\n");
        }
        f.b(sb.toString());
        return arrayList;
    }

    public static void b() {
        f7546a.clear();
        b.clear();
        c.clear();
    }

    private static double c(Pos pos, Pos pos2) {
        double d2 = pos.x - pos2.x;
        double d3 = pos.y - pos2.y;
        return (d2 * d2) + (d3 * d3);
    }

    public static List<TraceItemModel> e(cn.mucang.android.jiakaoyi.signal.i.a aVar, cn.mucang.android.jiakaoyi.hpmap.a.a.b bVar, List<TeachModel> list) throws Exception {
        byte b2;
        int i;
        if (list == null) {
            return new ArrayList();
        }
        List<TraceItemModel> list2 = f7546a.get(bVar);
        if (list2 != null) {
            LiveBus.d(SpecialPointData.class).l(c.get(bVar));
            return a(list2, aVar, b.get(bVar));
        }
        ArrayList<a> arrayList = new ArrayList();
        for (TeachModel teachModel : list) {
            TraceVariable traceVariable = teachModel.getTraceVariable();
            if (traceVariable != null && traceVariable.traces != null && n.b().a(teachModel, bVar)) {
                f.b("加入轨迹数据:" + teachModel.step + "," + teachModel.subStep + ",size:" + traceVariable.traces.size());
                StringBuilder sb = new StringBuilder();
                for (TraceItemModel traceItemModel : traceVariable.traces) {
                    sb.append(traceItemModel.x);
                    sb.append(",");
                    sb.append(traceItemModel.y);
                    sb.append(",");
                    sb.append((int) traceItemModel.wheel);
                    sb.append("\n");
                }
                f.b(sb.toString());
                arrayList.add(new a(teachModel.subStep, traceVariable.traces));
            }
        }
        Collections.sort(arrayList, new Comparator() { // from class: cn.mucang.android.jiakaoyi.teachingk2.r0.a
            @Override // java.util.Comparator
            public final int compare(Object obj, Object obj2) {
                return Integer.compare(((b.a) obj).f7547a, ((b.a) obj2).f7547a);
            }
        });
        for (a aVar2 : arrayList) {
            f.b("步骤" + aVar2.f7547a + "数据长度:" + aVar2.b.size());
            Iterator<TraceItemModel> it = aVar2.b.iterator();
            while (it.hasNext()) {
                it.next().pointType = (byte) 0;
            }
            if (Math.abs(aVar2.c.get(0).intValue()) < 20 && Math.abs((int) aVar2.b.get(0).wheel) > 500) {
                aVar2.b.get(0).pointType = (byte) 1;
            }
            int i2 = 1;
            boolean z = false;
            while (i2 < aVar2.c.size() - 1) {
                int i3 = i2 + 1;
                int iIntValue = aVar2.c.get(i2 - 1).intValue() + aVar2.c.get(i2).intValue() + aVar2.c.get(i3).intValue();
                if (Math.abs(iIntValue) > 100) {
                    if (!z) {
                        aVar2.b.get(i2).pointType = (byte) 1;
                        f.b("这是一个特殊点:" + i2 + ", diffSum=" + iIntValue);
                    }
                    z = true;
                } else {
                    z = false;
                }
                i2 = i3;
            }
        }
        cn.mucang.android.jiakaoyi.signal.utils.b bVarA = cn.mucang.android.jiakaoyi.teachingk2.elements.model.a.a(bVar);
        ArrayList arrayList2 = new ArrayList();
        ArrayList arrayList3 = new ArrayList();
        List<TraceItemModel> arrayList4 = new ArrayList<>();
        int i4 = 0;
        while (i4 < arrayList.size()) {
            a aVar3 = (a) arrayList.get(i4);
            int i5 = 0;
            while (i5 < aVar3.b.size()) {
                TraceItemModel traceItemModel2 = aVar3.b.get(i5);
                traceItemModel2.heading = (short) (cn.mucang.android.jiakaoyi.signal.utils.d.d((float) (((double) (traceItemModel2.heading * 0.1f)) + bVarA.f5831f)) * 10.0f);
                Pos posC = bVarA.c(traceItemModel2);
                if (arrayList2.isEmpty() || c((Pos) arrayList2.get(arrayList2.size() - 1), posC) > 10.0d) {
                    arrayList2.add(posC);
                }
                Gps gpsB = aVar.b(posC);
                ArrayList arrayList5 = arrayList;
                cn.mucang.android.jiakaoyi.signal.utils.b bVar2 = bVarA;
                double[] dArrI = cn.mucang.android.jiakaoyi.teachingk2.autopilot.utm.b.i(gpsB.longitude, gpsB.latitude);
                traceItemModel2.x = dArrI[0];
                traceItemModel2.y = dArrI[1];
                if (i5 != aVar3.b.size() - 1) {
                    b2 = 1;
                } else if (bVar.s() == Step.K2_DaoCheRuKu && ((i = aVar3.f7547a) == 2 || i == 3 || i == 4)) {
                    b2 = 1;
                    traceItemModel2.pointType = (byte) 1;
                } else {
                    b2 = 1;
                    if (bVar.s() == Step.K2_CeFangTingChe && aVar3.f7547a == 2) {
                        traceItemModel2.pointType = (byte) 1;
                    }
                }
                if (bVar.s() == Step.K2_ShangPoQiBu && traceItemModel2.handbrake == b2) {
                    traceItemModel2.pointType = b2;
                }
                if (traceItemModel2.pointType == b2) {
                    arrayList3.add(posC);
                }
                if (arrayList4.isEmpty()) {
                    arrayList4.add(traceItemModel2);
                } else {
                    TraceItemModel traceItemModel3 = arrayList4.get(arrayList4.size() - b2);
                    if (c(traceItemModel3, traceItemModel2) >= 0.0225d) {
                        arrayList4.add(traceItemModel2);
                    } else if (traceItemModel2.pointType == b2) {
                        arrayList4.remove(traceItemModel3);
                        arrayList4.add(traceItemModel2);
                    }
                }
                i5++;
                arrayList = arrayList5;
                bVarA = bVar2;
            }
            i4++;
            arrayList = arrayList;
            bVarA = bVarA;
        }
        f.b("总数据长度:" + arrayList4.size());
        b.put(bVar, arrayList2);
        SpecialPointData specialPointData = new SpecialPointData(arrayList3);
        c.put(bVar, specialPointData);
        LiveBus.d(SpecialPointData.class).l(specialPointData);
        f7546a.put(bVar, arrayList4);
        return a(arrayList4, aVar, arrayList2);
    }
}
