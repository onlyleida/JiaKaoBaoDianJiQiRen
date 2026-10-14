package cn.mucang.android.jiakaoyi.teachingk2.v0.c;

import cn.mucang.android.core.utils.g;
import cn.mucang.android.core.utils.n0;
import cn.mucang.android.jiakaoyi.engine.model.Step;
import cn.mucang.android.jiakaoyi.framework.log.f;
import cn.mucang.android.jiakaoyi.framework.utils.k0;
import cn.mucang.android.jiakaoyi.hpmap.car.CarData;
import cn.mucang.android.jiakaoyi.hpmap.car.RelatePos;
import cn.mucang.android.jiakaoyi.hpmap.collision.k2.checker.SubStep;
import cn.mucang.android.jiakaoyi.signal.center.model.Gear;
import cn.mucang.android.jiakaoyi.signal.pos.Pos;
import cn.mucang.android.jiakaoyi.signal.pos.c;
import cn.mucang.android.jiakaoyi.teachbase.R;
import cn.mucang.android.jiakaoyi.teachingk2.data.ErrorModel;
import cn.mucang.android.jiakaoyi.teachingk2.data.TeachModel;
import cn.mucang.android.jiakaoyi.teachingk2.elements.Variable;
import cn.mucang.android.jiakaoyi.teachingk2.elements.model.TraceItemModel;
import cn.mucang.android.jiakaoyi.teachingk2.elements.variable.NormalVariable;
import cn.mucang.android.jiakaoyi.teachingk2.elements.variable.StopPositionVariable;
import cn.mucang.android.jiakaoyi.teachingk2.elements.variable.TraceVariable;
import cn.mucang.android.jiakaoyi.teachingk2.form.model.VoiceModel;
import cn.mucang.android.jiakaoyi.teachingk2.res.n;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Comparator;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import org.opencv.videoio.Videoio;

/* JADX INFO: loaded from: classes4.dex */
public class b {

    /* JADX INFO: renamed from: cn.mucang.android.jiakaoyi.teachingk2.v0.c.b$b, reason: collision with other inner class name */
    private static class C0147b {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        final double f8690a;
        final double b;
        final double c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        final double f8691d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        final double f8692e;

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        final double f8693f;

        private C0147b(double d2, double d3, double d4, double d5, double d6) {
            this.f8690a = d3;
            this.b = d4;
            this.c = d5;
            this.f8691d = d6;
            double d7 = d2 * 0.5d;
            this.f8693f = d7;
            double d8 = -((d6 - d5) + ((d3 - d6) * 0.5d));
            this.f8692e = d8;
            f.o("36线宽度:" + d2 + ",34线长度:" + d3 + ",轴距:" + d4 + ",后轴到车尾:" + d5 + ",车身长度:" + d6 + ",X=" + d8 + ",Y=" + d7);
        }
    }

    private static C0147b a() {
        CarData carData;
        double size;
        double d2;
        if (n.b().c == null || (carData = n.b().c.w) == null) {
            return null;
        }
        ArrayList arrayList = new ArrayList();
        double length = 0.0d;
        Pos pos = new Pos(0.0d, 0.0d);
        ArrayList arrayList2 = new ArrayList(carData.carPoints.keySet());
        Collections.sort(arrayList2, new Comparator() { // from class: cn.mucang.android.jiakaoyi.teachingk2.v0.c.a
            @Override // java.util.Comparator
            public final int compare(Object obj, Object obj2) {
                return ((Integer) obj).compareTo((Integer) obj2);
            }
        });
        Iterator it = arrayList2.iterator();
        while (it.hasNext()) {
            RelatePos relatePos = carData.carPoints.get(Integer.valueOf(((Integer) it.next()).intValue()));
            if (relatePos != null) {
                arrayList.add(relatePos.get(pos, 0.0d));
            }
        }
        Pos pos2 = carData.wheelLeftBack.get(pos, 0.0d);
        Pos pos3 = carData.wheelRightBack.get(pos, 0.0d);
        Pos pos4 = carData.wheelLeftFront.get(pos, 0.0d);
        Pos pos5 = carData.wheelRightFront.get(pos, 0.0d);
        c cVarCalculateCenter = CarData.calculateCenter(arrayList, pos, new Pos(pos2).meanWith(pos3).angleTo(new Pos(pos4).meanWith(pos5)), new Pos(), new Pos());
        double dK = cn.mucang.android.jiakaoyi.hpmap.d.a.k(new Pos(pos2).meanWith(pos3), cVarCalculateCenter.f5820a, cVarCalculateCenter.f5821d);
        double dDistanceTo = new Pos(pos2).meanWith(pos3).distanceTo(new Pos(pos4).meanWith(pos5));
        List<cn.mucang.android.jiakaoyi.hpmap.a.a.g.c> list = n.b().c.f4725f;
        double length2 = 0.0d;
        for (cn.mucang.android.jiakaoyi.hpmap.a.a.g.c cVar : list) {
            length += cVar.o.length();
            length2 += cVar.k.length();
        }
        if (list.size() > 0) {
            double size2 = length / ((double) list.size());
            size = length2 / ((double) list.size());
            d2 = size2;
        } else {
            size = 230.0d;
            d2 = 500.0d;
        }
        return new C0147b(size, d2, dDistanceTo, dK, cVarCalculateCenter.f5820a.distanceTo(cVarCalculateCenter.b));
    }

    private static void b(TeachModel teachModel, TeachModel teachModel2, int i) {
        teachModel2.step = teachModel.step;
        teachModel2.subStep = i;
        teachModel2.pointType = teachModel.pointType;
        teachModel2.parkingSpaceBindId = teachModel.parkingSpaceBindId;
        teachModel2.parkingSpaceGroup = teachModel.parkingSpaceGroup;
        teachModel2.examSiteId = teachModel.examSiteId;
        teachModel2.driveSchoolId = teachModel.driveSchoolId;
        teachModel2.grade = teachModel.grade;
        teachModel2.programmeId = teachModel.programmeId;
        teachModel2.stepDirection = teachModel.stepDirection;
        teachModel2.teachModelId = String.valueOf(System.nanoTime());
        teachModel2.position = 0;
    }

    private static List<TraceItemModel> c(List<TraceItemModel> list, int i) {
        ArrayList arrayList = new ArrayList();
        Iterator<TraceItemModel> it = list.iterator();
        while (it.hasNext()) {
            arrayList.add(it.next().copy().setGear(i));
        }
        return arrayList;
    }

    /* JADX WARN: Code duplicated, block: B:57:0x018d  */
    /* JADX WARN: Code duplicated, block: B:59:0x019d  */
    /* JADX WARN: Code duplicated, block: B:60:0x01aa  */
    /* JADX WARN: Code duplicated, block: B:62:0x01b1  */
    /* JADX WARN: Code duplicated, block: B:65:0x01c8  */
    /* JADX WARN: Code duplicated, block: B:66:0x01ca  */
    /* JADX WARN: Code duplicated, block: B:69:0x01fc  */
    /* JADX WARN: Code duplicated, block: B:70:0x01ff  */
    /* JADX WARN: Code duplicated, block: B:74:0x021c A[LOOP:1: B:72:0x0216->B:74:0x021c, LOOP_END] */
    /* JADX WARN: Code duplicated, block: B:77:0x0254 A[LOOP:2: B:76:0x0252->B:77:0x0254, LOOP_END] */
    /* JADX WARN: Code duplicated, block: B:81:0x02b2 A[LOOP:3: B:79:0x02ac->B:81:0x02b2, LOOP_END] */
    /* JADX WARN: Code duplicated, block: B:85:0x02df A[LOOP:4: B:83:0x02d9->B:85:0x02df, LOOP_END] */
    /* JADX WARN: Code duplicated, block: B:88:0x032c  */
    /* JADX WARN: Code duplicated, block: B:89:0x032f  */
    /* JADX WARN: Code duplicated, block: B:92:0x0369  */
    /* JADX WARN: Code duplicated, block: B:93:0x036c  */
    private static boolean d(List<TeachModel> list, List<TeachModel> list2, C0147b c0147b) {
        cn.mucang.android.jiakaoyi.signal.utils.b bVarG;
        cn.mucang.android.jiakaoyi.hpmap.a.a.g.c cVar;
        double d2;
        double d3;
        double dB;
        double d4;
        boolean z;
        List<TraceItemModel> listK;
        cn.mucang.android.jiakaoyi.signal.utils.b bVar;
        Pos posC;
        int i;
        Pos posT;
        Pos posRotate;
        Gear gear;
        int i2;
        ArrayList<TraceItemModel> arrayList;
        int i3;
        cn.mucang.android.jiakaoyi.signal.utils.b bVar2;
        Iterator<TraceItemModel> it;
        int i4;
        double d5;
        int i5;
        Iterator<TraceItemModel> it2;
        int i6;
        int i7;
        List<TraceItemModel> listK2;
        int i8 = list.get(0).stepDirection;
        Iterator<cn.mucang.android.jiakaoyi.hpmap.a.a.g.c> it3 = n.b().c.f4725f.iterator();
        while (true) {
            bVarG = null;
            if (!it3.hasNext()) {
                cVar = null;
                break;
            }
            cn.mucang.android.jiakaoyi.hpmap.a.a.g.c next = it3.next();
            if (next.u == (i8 == 1)) {
                bVarG = next.g();
                cVar = next;
                break;
            }
        }
        if (bVarG == null) {
            return false;
        }
        double d6 = ((list.isEmpty() || list.get(0).stepDirection != 1) ? 1 : -1) * Videoio.CAP_PROP_XI_ACQ_TRANSPORT_BUFFER_SIZE;
        double dTan = c0147b.b / Math.tan(Math.toRadians(35.0d));
        List<TraceItemModel> listK3 = k(list, SubStep.Step5.ordinal());
        Pos posMiddle = cVar.k.middle();
        Pos posMiddle2 = cVar.m.middle();
        cn.mucang.android.jiakaoyi.signal.utils.b bVar3 = bVarG;
        cn.mucang.android.jiakaoyi.hpmap.a.a.g.c cVar2 = cVar;
        Pos posT2 = cn.mucang.android.jiakaoyi.hpmap.d.a.t(posMiddle2, posMiddle, c0147b.c + ((c0147b.f8690a - c0147b.f8691d) * 0.5d));
        if (!g.b(listK3)) {
            double d7 = j(listK3) > 3000.0d ? 0.1d : 1.0d;
            ArrayList arrayList2 = new ArrayList();
            int i9 = 0;
            while (true) {
                if (i9 >= listK3.size()) {
                    d2 = dTan;
                    d3 = 0.0d;
                    break;
                }
                double dAbs = ((double) Math.abs((int) listK3.get(i9).wheel)) * d7;
                if (dAbs >= 500.0d) {
                    int i10 = i9 + 1;
                    d2 = dTan;
                    while (true) {
                        if (i10 >= listK3.size() || i10 >= i9 + 10) {
                            z = true;
                            break;
                        }
                        if (Math.abs((((double) Math.abs((int) listK3.get(i10).wheel)) * d7) - dAbs) > 10.0d) {
                            z = false;
                            break;
                        }
                        i10++;
                    }
                    if (z) {
                        double d8 = d7 * ((double) listK3.get(i9).wheel);
                        arrayList2.addAll(listK3.subList(i9, Math.min(listK3.size() - 1, i9 + 10)));
                        d3 = d8;
                        break;
                    }
                } else {
                    d2 = dTan;
                }
                i9++;
                dTan = d2;
            }
            if (Math.abs(d3) > 360.0d && !g.b(arrayList2) && arrayList2.size() >= 3) {
                dB = cn.mucang.android.jiakaoyi.mapcollect.collect.c1.c.b(arrayList2, 0, arrayList2.size() - 1, new Pos());
                f.o("轨迹里最大方向盘角度:" + d3 + " , 最小转弯半径:" + dB);
                d4 = d3;
            }
            listK = k(list, SubStep.Step1.ordinal());
            if (g.b(listK)) {
                listK2 = k(list, SubStep.Step2.ordinal());
                if (g.d(listK2)) {
                    f.o("首训教学异常，没有第二步轨迹");
                    return false;
                }
                bVar = bVar3;
                posC = bVar.c(listK2.get(0));
            } else {
                bVar = bVar3;
                posC = bVar.c(listK.get(listK.size() - 1));
            }
            if (cVar2.u) {
                i = -1;
            } else {
                i = 1;
            }
            Pos posN = cn.mucang.android.jiakaoyi.hpmap.d.a.n(posC, posMiddle, posMiddle2);
            posT = cn.mucang.android.jiakaoyi.hpmap.d.a.t(posN, posMiddle, dB);
            double d9 = i;
            posRotate = new Pos(posN).rotate(posT, 0.0d, d9);
            Pos posRotate2 = new Pos(posT).rotate(posRotate, 0.0d, d9);
            if (cn.mucang.android.jiakaoyi.signal.utils.f.b()) {
                gear = Gear.GearD;
            } else {
                gear = Gear.Gear1;
            }
            i2 = gear.gear;
            arrayList = new ArrayList();
            i3 = i;
            bVar2 = bVar;
            List<TraceItemModel> listB = cn.mucang.android.jiakaoyi.teachingk2.autocreate.i.f.b.b(posT2, posT, 30.0d);
            it = listB.iterator();
            while (it.hasNext()) {
                it.next().set(0, 0, Step.K2_DaoCheRuKu.type, 0, 0, 0, i2, 0);
            }
            arrayList.addAll(listB);
            i4 = (int) ((dB * 1.5707963267948966d) / 30.0d);
            d5 = (d9 * 1.5707963267948966d) / ((double) i4);
            i5 = 1;
            while (i5 < i4) {
                double d10 = ((double) i5) * d5;
                int i11 = i4;
                TraceItemModel traceItemModel = new TraceItemModel().set(new Pos(posT).rotate(posRotate, Math.cos(d10), Math.sin(d10)));
                arrayList.add(traceItemModel);
                traceItemModel.set((int) d4, (int) (Math.toDegrees(d10) * 10.0d), Step.K2_DaoCheRuKu.type, 0, 0, 0, i2, 0);
                i5++;
                i4 = i11;
            }
            List<TraceItemModel> listB2 = cn.mucang.android.jiakaoyi.teachingk2.autocreate.i.f.b.b(posRotate2, posC, 30.0d);
            it2 = listB2.iterator();
            while (it2.hasNext()) {
                it2.next().set(0, Videoio.CAP_OPENNI, Step.K2_DaoCheRuKu.type, 0, 0, 0, i2, 0);
            }
            arrayList.addAll(listB2);
            for (TraceItemModel traceItemModel2 : arrayList) {
                traceItemModel2.set(bVar2.a(traceItemModel2));
            }
            Pos posT3 = cn.mucang.android.jiakaoyi.hpmap.d.a.t(posT, posT2, 20.0d);
            NormalVariable pos = new NormalVariable().setPos(bVar2.a(posT3), bVar2.a(cn.mucang.android.jiakaoyi.hpmap.d.a.s(posT2, posT3, 50.0d)));
            pos.noAdvance = true;
            TeachModel teachModel = new TeachModel();
            TeachModel teachModel2 = list.get(0);
            SubStep subStep = SubStep.Step5;
            b(teachModel2, teachModel, subStep.ordinal());
            if (i3 == 1) {
                i6 = R.string.teachbase_hard_right;
            } else {
                i6 = R.string.teachbase_hard_left;
            }
            o(teachModel, k0.a(i6), pos, true);
            list2.add(teachModel);
            NormalVariable pos2 = new NormalVariable().setPos(bVar2.a(posT3), bVar2.a(cn.mucang.android.jiakaoyi.hpmap.d.a.s(posT2, posT3, 50.0d)));
            TeachModel teachModel3 = new TeachModel();
            b(list.get(0), teachModel3, subStep.ordinal());
            if (i3 == 1) {
                i7 = R.string.teachbase_ready_steering_right_full;
            } else {
                i7 = R.string.teachbase_ready_steering_left_full;
            }
            o(teachModel3, k0.a(i7), pos2, false);
            list2.add(teachModel3);
            pos2.reportKey = pos.key;
            teachModel3.pointType = 1;
            teachModel3.reportModel = teachModel;
            Pos posS = cn.mucang.android.jiakaoyi.hpmap.d.a.s(posC, posRotate2, 20.0d);
            NormalVariable pos3 = new NormalVariable().setPos(bVar2.a(posS), bVar2.a(cn.mucang.android.jiakaoyi.hpmap.d.a.t(posRotate2, posC, 50.0d)));
            pos3.noAdvance = true;
            TeachModel teachModel4 = new TeachModel();
            b(list.get(0), teachModel4, subStep.ordinal());
            o(teachModel4, k0.a(R.string.teachbase_back_to_body), pos3, true);
            list2.add(teachModel4);
            NormalVariable pos4 = new NormalVariable().setPos(bVar2.a(posS), bVar2.a(cn.mucang.android.jiakaoyi.hpmap.d.a.t(posRotate2, posC, 50.0d)));
            TeachModel teachModel5 = new TeachModel();
            b(list.get(0), teachModel5, subStep.ordinal());
            o(teachModel5, k0.a(R.string.teachbase_ready_back_to_body), pos4, false);
            list2.add(teachModel5);
            pos4.reportKey = pos3.key;
            teachModel5.pointType = 1;
            teachModel5.reportModel = teachModel4;
            NormalVariable pos5 = new NormalVariable().setPos(bVar2.a(posC), bVar2.a(cn.mucang.android.jiakaoyi.hpmap.d.a.s(posRotate2, posC, 50.0d)));
            pos5.noAdvance = true;
            TeachModel teachModel6 = new TeachModel();
            b(list.get(0), teachModel6, subStep.ordinal());
            o(teachModel6, k0.a(R.string.teachbase_please_stop), pos5, true);
            list2.add(teachModel6);
            NormalVariable pos6 = new NormalVariable().setPos(bVar2.a(posC), bVar2.a(cn.mucang.android.jiakaoyi.hpmap.d.a.s(posRotate2, posC, 50.0d)));
            TeachModel teachModel7 = new TeachModel();
            b(list.get(0), teachModel7, subStep.ordinal());
            o(teachModel7, k0.a(R.string.teachbase_ready_stop_car), pos6, false);
            list2.add(teachModel7);
            pos6.reportKey = pos5.key;
            teachModel7.pointType = 1;
            teachModel7.reportModel = teachModel6;
            list2.add(f(arrayList, list.get(0), subStep.ordinal()));
            return true;
        }
        d2 = dTan;
        d4 = d6;
        dB = d2;
        listK = k(list, SubStep.Step1.ordinal());
        if (g.b(listK)) {
            listK2 = k(list, SubStep.Step2.ordinal());
            if (g.d(listK2)) {
                f.o("首训教学异常，没有第二步轨迹");
                return false;
            }
            bVar = bVar3;
            posC = bVar.c(listK2.get(0));
        } else {
            bVar = bVar3;
            posC = bVar.c(listK.get(listK.size() - 1));
        }
        if (cVar2.u) {
            i = -1;
        } else {
            i = 1;
        }
        Pos posN2 = cn.mucang.android.jiakaoyi.hpmap.d.a.n(posC, posMiddle, posMiddle2);
        posT = cn.mucang.android.jiakaoyi.hpmap.d.a.t(posN2, posMiddle, dB);
        double d11 = i;
        posRotate = new Pos(posN2).rotate(posT, 0.0d, d11);
        Pos posRotate3 = new Pos(posT).rotate(posRotate, 0.0d, d11);
        if (cn.mucang.android.jiakaoyi.signal.utils.f.b()) {
            gear = Gear.GearD;
        } else {
            gear = Gear.Gear1;
        }
        i2 = gear.gear;
        arrayList = new ArrayList();
        i3 = i;
        bVar2 = bVar;
        List<TraceItemModel> listB3 = cn.mucang.android.jiakaoyi.teachingk2.autocreate.i.f.b.b(posT2, posT, 30.0d);
        it = listB3.iterator();
        while (it.hasNext()) {
            it.next().set(0, 0, Step.K2_DaoCheRuKu.type, 0, 0, 0, i2, 0);
        }
        arrayList.addAll(listB3);
        i4 = (int) ((dB * 1.5707963267948966d) / 30.0d);
        d5 = (d11 * 1.5707963267948966d) / ((double) i4);
        i5 = 1;
        while (i5 < i4) {
            double d12 = ((double) i5) * d5;
            int i12 = i4;
            TraceItemModel traceItemModel3 = new TraceItemModel().set(new Pos(posT).rotate(posRotate, Math.cos(d12), Math.sin(d12)));
            arrayList.add(traceItemModel3);
            traceItemModel3.set((int) d4, (int) (Math.toDegrees(d12) * 10.0d), Step.K2_DaoCheRuKu.type, 0, 0, 0, i2, 0);
            i5++;
            i4 = i12;
        }
        List<TraceItemModel> listB4 = cn.mucang.android.jiakaoyi.teachingk2.autocreate.i.f.b.b(posRotate3, posC, 30.0d);
        it2 = listB4.iterator();
        while (it2.hasNext()) {
            it2.next().set(0, Videoio.CAP_OPENNI, Step.K2_DaoCheRuKu.type, 0, 0, 0, i2, 0);
        }
        arrayList.addAll(listB4);
        while (r0.hasNext()) {
            traceItemModel2.set(bVar2.a(traceItemModel2));
        }
        Pos posT4 = cn.mucang.android.jiakaoyi.hpmap.d.a.t(posT, posT2, 20.0d);
        NormalVariable pos7 = new NormalVariable().setPos(bVar2.a(posT4), bVar2.a(cn.mucang.android.jiakaoyi.hpmap.d.a.s(posT2, posT4, 50.0d)));
        pos7.noAdvance = true;
        TeachModel teachModel8 = new TeachModel();
        TeachModel teachModel9 = list.get(0);
        SubStep subStep2 = SubStep.Step5;
        b(teachModel9, teachModel8, subStep2.ordinal());
        if (i3 == 1) {
            i6 = R.string.teachbase_hard_right;
        } else {
            i6 = R.string.teachbase_hard_left;
        }
        o(teachModel8, k0.a(i6), pos7, true);
        list2.add(teachModel8);
        NormalVariable pos8 = new NormalVariable().setPos(bVar2.a(posT4), bVar2.a(cn.mucang.android.jiakaoyi.hpmap.d.a.s(posT2, posT4, 50.0d)));
        TeachModel teachModel10 = new TeachModel();
        b(list.get(0), teachModel10, subStep2.ordinal());
        if (i3 == 1) {
            i7 = R.string.teachbase_ready_steering_right_full;
        } else {
            i7 = R.string.teachbase_ready_steering_left_full;
        }
        o(teachModel10, k0.a(i7), pos8, false);
        list2.add(teachModel10);
        pos8.reportKey = pos7.key;
        teachModel10.pointType = 1;
        teachModel10.reportModel = teachModel8;
        Pos posS2 = cn.mucang.android.jiakaoyi.hpmap.d.a.s(posC, posRotate3, 20.0d);
        NormalVariable pos9 = new NormalVariable().setPos(bVar2.a(posS2), bVar2.a(cn.mucang.android.jiakaoyi.hpmap.d.a.t(posRotate3, posC, 50.0d)));
        pos9.noAdvance = true;
        TeachModel teachModel11 = new TeachModel();
        b(list.get(0), teachModel11, subStep2.ordinal());
        o(teachModel11, k0.a(R.string.teachbase_back_to_body), pos9, true);
        list2.add(teachModel11);
        NormalVariable pos10 = new NormalVariable().setPos(bVar2.a(posS2), bVar2.a(cn.mucang.android.jiakaoyi.hpmap.d.a.t(posRotate3, posC, 50.0d)));
        TeachModel teachModel12 = new TeachModel();
        b(list.get(0), teachModel12, subStep2.ordinal());
        o(teachModel12, k0.a(R.string.teachbase_ready_back_to_body), pos10, false);
        list2.add(teachModel12);
        pos10.reportKey = pos9.key;
        teachModel12.pointType = 1;
        teachModel12.reportModel = teachModel11;
        NormalVariable pos11 = new NormalVariable().setPos(bVar2.a(posC), bVar2.a(cn.mucang.android.jiakaoyi.hpmap.d.a.s(posRotate3, posC, 50.0d)));
        pos11.noAdvance = true;
        TeachModel teachModel13 = new TeachModel();
        b(list.get(0), teachModel13, subStep2.ordinal());
        o(teachModel13, k0.a(R.string.teachbase_please_stop), pos11, true);
        list2.add(teachModel13);
        NormalVariable pos12 = new NormalVariable().setPos(bVar2.a(posC), bVar2.a(cn.mucang.android.jiakaoyi.hpmap.d.a.s(posRotate3, posC, 50.0d)));
        TeachModel teachModel14 = new TeachModel();
        b(list.get(0), teachModel14, subStep2.ordinal());
        o(teachModel14, k0.a(R.string.teachbase_ready_stop_car), pos12, false);
        list2.add(teachModel14);
        pos12.reportKey = pos11.key;
        teachModel14.pointType = 1;
        teachModel14.reportModel = teachModel13;
        list2.add(f(arrayList, list.get(0), subStep2.ordinal()));
        return true;
    }

    private static void e(List<TeachModel> list, List<TeachModel> list2, C0147b c0147b) {
        Pos pos = new Pos();
        Pos pos2 = new Pos();
        ArrayList arrayList = new ArrayList();
        h(list, SubStep.Step3.ordinal(), pos, pos2, arrayList);
        if (pos.distanceSquare(pos2) < 100.0d || pos.distanceSquare(pos2) > 193600.0d) {
            h(list, SubStep.Step5.ordinal(), pos, pos2, arrayList);
        }
        double dDistanceTo = arrayList.isEmpty() ? 0.0d : ((TraceItemModel) arrayList.get(0)).distanceTo((Pos) arrayList.get(arrayList.size() - 1));
        f.o("查找的出库停车点是:" + ((arrayList.isEmpty() || dDistanceTo < 100.0d || dDistanceTo > 440.0d) ? 7.5d : ((TraceItemModel) arrayList.get(arrayList.size() - 1)).x) + ",理论是:7.5");
        list.isEmpty();
        double d2 = c0147b.f8693f * ((double) 1);
        pos.setPos(new Pos(c0147b.f8692e, d2));
        pos2.setPos(new Pos(7.5d, d2));
        List<TraceItemModel> listB = cn.mucang.android.jiakaoyi.teachingk2.autocreate.i.f.b.b(pos, pos2, 30.0d);
        Iterator<TraceItemModel> it = listB.iterator();
        while (it.hasNext()) {
            it.next().set(0, 0, Step.K2_DaoCheRuKu.type, 0, 0, 0, 0, 0);
        }
        List<TraceItemModel> listC = c(listB, (cn.mucang.android.jiakaoyi.signal.utils.f.c() ? Gear.Gear1 : Gear.GearD).gear);
        List<TraceItemModel> listC2 = c(listB, Gear.GearBack.gear);
        Collections.reverse(listC2);
        TeachModel teachModel = list.get(0);
        TeachModel teachModel2 = new TeachModel();
        TeachModel teachModel3 = new TeachModel();
        SubStep subStep = SubStep.Step8;
        b(teachModel, teachModel2, subStep.ordinal());
        b(teachModel, teachModel3, subStep.ordinal());
        m(teachModel3, k0.a(R.string.teachbase_stop_on_hood_line), l(teachModel2, listC, k0.a(R.string.teachbase_stop_gear_r)), teachModel2);
        list2.add(teachModel2);
        list2.add(teachModel3);
        list2.add(f(listC, teachModel, subStep.ordinal()));
        TeachModel teachModel4 = new TeachModel();
        TeachModel teachModel5 = new TeachModel();
        SubStep subStep2 = SubStep.Step9;
        b(teachModel, teachModel4, subStep2.ordinal());
        b(teachModel, teachModel5, subStep2.ordinal());
        m(teachModel5, k0.a(R.string.teachbase_slow_back_attention), l(teachModel4, listC2, cn.mucang.android.jiakaoyi.signal.utils.f.c() ? k0.a(R.string.teachbase_stop_gear_1) : k0.a(R.string.teachbase_stop_gear_d)), teachModel4);
        list2.add(teachModel4);
        list2.add(teachModel5);
        list2.add(f(listC2, teachModel, subStep2.ordinal()));
    }

    private static TeachModel f(List<TraceItemModel> list, TeachModel teachModel, int i) {
        TeachModel teachModel2 = new TeachModel();
        b(teachModel, teachModel2, i);
        teachModel2.data = new ArrayList();
        teachModel2.variableList = new ArrayList();
        teachModel2.data.add(new VoiceModel("标准轨迹"));
        TraceVariable traceVariable = new TraceVariable();
        traceVariable.traces = list;
        traceVariable.range = 1000;
        teachModel2.variableList.add(traceVariable);
        return teachModel2;
    }

    private static boolean g(List<TeachModel> list) {
        return true;
    }

    private static void h(List<TeachModel> list, int i, Pos pos, Pos pos2, List<TraceItemModel> list2) {
        pos.setPos(0.0d, 0.0d);
        pos2.setPos(0.0d, 0.0d);
        list2.clear();
        List<TraceItemModel> listK = k(list, i);
        if (listK == null) {
            return;
        }
        pos.setPos(listK.get(0));
        Pos posI = i(listK, j(listK) > 3000.0d ? 0.1d : 1.0d, list2);
        if (posI != null) {
            pos2.setPos(posI);
        }
    }

    private static Pos i(List<TraceItemModel> list, double d2, List<TraceItemModel> list2) {
        boolean z;
        int i = 0;
        while (i < list.size()) {
            double d3 = ((double) list.get(i).wheel) * d2;
            int i2 = i + 1;
            int i3 = i2;
            while (true) {
                if (i3 >= list.size() || i3 >= i + 20) {
                    i3 = 0;
                    z = false;
                    break;
                }
                if (Math.abs((((double) list.get(i3).wheel) * d2) - d3) > 360.0d) {
                    z = true;
                    break;
                }
                i3++;
            }
            if (z) {
                while (i2 < list.size() && i2 <= i3) {
                    if (Math.abs((((double) list.get(i2).wheel) * d2) - d3) > 45.0d) {
                        i = i2 - 1;
                        break;
                    }
                    i2++;
                }
                int iMax = Math.max(i, 0);
                list2.addAll(list.subList(0, Math.min(iMax + 1, list.size())));
                return list.get(iMax);
            }
            i = i2;
        }
        return null;
    }

    private static double j(List<TraceItemModel> list) {
        double dAbs = 0.0d;
        for (TraceItemModel traceItemModel : list) {
            if (Math.abs((int) traceItemModel.wheel) > dAbs) {
                dAbs = Math.abs((int) traceItemModel.wheel);
                if (dAbs > 3000.0d) {
                    break;
                }
            }
        }
        return dAbs;
    }

    private static List<TraceItemModel> k(List<TeachModel> list, int i) {
        TraceVariable traceVariable;
        for (TeachModel teachModel : list) {
            if (teachModel.subStep == i && (traceVariable = teachModel.getTraceVariable()) != null) {
                return traceVariable.traces;
            }
        }
        return null;
    }

    private static NormalVariable l(TeachModel teachModel, List<TraceItemModel> list, String str) {
        teachModel.data = new ArrayList();
        teachModel.variableList = new ArrayList();
        teachModel.data.add(new VoiceModel(str).sound(true));
        TraceItemModel traceItemModel = list.get(list.size() - 1);
        NormalVariable pos = new NormalVariable().setPos(traceItemModel, cn.mucang.android.jiakaoyi.hpmap.d.a.s(list.get(0), traceItemModel, 50.0d));
        teachModel.variableList.add(pos);
        teachModel.pointType = 2;
        return pos;
    }

    private static void m(TeachModel teachModel, String str, NormalVariable normalVariable, TeachModel teachModel2) {
        teachModel.data = new ArrayList();
        teachModel.variableList = new ArrayList();
        teachModel.data.add(new VoiceModel(str));
        NormalVariable pos = new NormalVariable().setPos(normalVariable.posOnLine, normalVariable.forwardPoint);
        pos.setReportKey(normalVariable.key);
        teachModel.variableList.add(pos);
        teachModel.pointType = 1;
        teachModel.reportModel = teachModel2;
    }

    public static void n() {
        List<TeachModel> list = n.b().i.get(Step.K2_DaoCheRuKu);
        if (g.b(list)) {
            return;
        }
        long jCurrentTimeMillis = System.currentTimeMillis();
        List<List<TeachModel>> listR = r(list);
        for (int size = listR.size() - 1; size >= 0; size--) {
            if (!g(listR.get(size))) {
                listR.remove(size);
            }
        }
        ArrayList arrayList = new ArrayList();
        Iterator<List<TeachModel>> it = listR.iterator();
        while (it.hasNext()) {
            List<TeachModel> listS = s(it.next());
            if (!g.b(listS)) {
                arrayList.addAll(listS);
            }
        }
        if (g.d(arrayList)) {
            n.b().j.put(Step.K2_DaoCheRuKu, arrayList);
        }
        f.o("首训数据初始化时间:" + (System.currentTimeMillis() - jCurrentTimeMillis));
    }

    private static void o(TeachModel teachModel, String str, NormalVariable normalVariable, boolean z) {
        teachModel.data = new ArrayList();
        teachModel.variableList = new ArrayList();
        teachModel.data.add(new VoiceModel(str).sound(z));
        teachModel.variableList.add(normalVariable);
        teachModel.pointType = 2;
    }

    private static boolean p(TeachModel teachModel) {
        if (n0.g(teachModel.parkingSpaceBindId)) {
            return false;
        }
        List<ErrorModel> list = teachModel.errors;
        if (list == null) {
            return true;
        }
        for (ErrorModel errorModel : list) {
            if (!g.b(errorModel.errorVariables)) {
                Iterator<Variable> it = errorModel.errorVariables.iterator();
                while (it.hasNext()) {
                    if (it.next() instanceof StopPositionVariable) {
                        return false;
                    }
                }
            }
        }
        return true;
    }

    private static void q(Map<String, List<TeachModel>> map, String str, TeachModel teachModel) {
        List<TeachModel> arrayList = map.get(str);
        if (arrayList == null) {
            arrayList = new ArrayList<>();
            map.put(str, arrayList);
        }
        arrayList.add(teachModel);
    }

    private static List<List<TeachModel>> r(List<TeachModel> list) {
        HashMap map = new HashMap();
        for (TeachModel teachModel : list) {
            if (p(teachModel)) {
                q(map, String.valueOf(teachModel.stepDirection), teachModel);
            }
        }
        return new ArrayList(map.values());
    }

    private static List<TeachModel> s(List<TeachModel> list) {
        C0147b c0147bA = a();
        if (c0147bA == null) {
            return null;
        }
        ArrayList arrayList = new ArrayList();
        for (TeachModel teachModel : list) {
            int i = teachModel.subStep;
            if (i == 2 || i == 3 || i == 4) {
                arrayList.add(teachModel);
            }
        }
        d(list, arrayList, c0147bA);
        e(list, arrayList, c0147bA);
        return arrayList;
    }
}
