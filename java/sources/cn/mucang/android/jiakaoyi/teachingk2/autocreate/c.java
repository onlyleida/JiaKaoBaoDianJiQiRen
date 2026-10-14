package cn.mucang.android.jiakaoyi.teachingk2.autocreate;

import cn.mucang.android.jiakaoyi.engine.model.Step;
import cn.mucang.android.jiakaoyi.signal.center.model.CarPos;
import cn.mucang.android.jiakaoyi.signal.center.model.Gear;
import cn.mucang.android.jiakaoyi.signal.pos.Pos;
import cn.mucang.android.jiakaoyi.teachingk2.elements.model.TraceItemModel;
import cn.mucang.android.jiakaoyi.teachingk2.elements.variable.NormalVariable;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import org.opencv.videoio.Videoio;

/* JADX INFO: loaded from: classes4.dex */
public class c {
    public static cn.mucang.android.jiakaoyi.teachingk2.autocreate.i.b a(cn.mucang.android.jiakaoyi.hpmap.a.a.g.c cVar, CarPos carPos, Pos pos, Pos pos2, double d2, boolean z) {
        Pos pos3;
        cn.mucang.android.jiakaoyi.teachingk2.autocreate.i.b bVar;
        ArrayList arrayList;
        Pos pos4;
        double d3;
        cn.mucang.android.jiakaoyi.signal.utils.b bVar2;
        double d4 = cn.mucang.android.jiakaoyi.teachingk2.autocreate.j.a.f6206a ? 0.0d : 10.0d;
        int i = (cn.mucang.android.jiakaoyi.signal.utils.f.c() ? Gear.Gear1 : Gear.GearD).gear;
        double dAbs = Math.abs(d2);
        cn.mucang.android.jiakaoyi.signal.utils.b bVarA = cn.mucang.android.jiakaoyi.teachingk2.elements.model.a.a(cVar);
        cn.mucang.android.jiakaoyi.teachingk2.autocreate.i.b bVar3 = new cn.mucang.android.jiakaoyi.teachingk2.autocreate.i.b();
        double d5 = bVarA.a(cVar.k.middle()).y;
        double dTan = carPos.L / Math.tan(Math.toRadians(AutoLearnWheelAndR.a(dAbs, false)));
        double dTan2 = carPos.L / Math.tan(Math.toRadians(AutoLearnWheelAndR.a(dAbs, true)));
        Pos posA = bVarA.a(pos);
        cn.mucang.android.jiakaoyi.teachingk2.autocreate.i.b bVar4 = bVar3;
        Pos posA2 = bVarA.a(pos2);
        double d6 = d4;
        StringBuilder sb = new StringBuilder();
        sb.append("右打满回正方案:");
        sb.append(pos);
        sb.append(",");
        sb.append(pos2);
        sb.append(",");
        sb.append(dAbs);
        sb.append(",");
        sb.append(z);
        sb.append(",L=");
        sb.append(carPos.L);
        sb.append(" , 后退半径=");
        double d7 = dTan;
        sb.append(d7);
        sb.append(" , 前进半径=");
        sb.append(dTan2);
        cn.mucang.android.jiakaoyi.framework.log.f.o(sb.toString());
        posA.y = d5 + d7;
        posA2.y = d5;
        Pos pos5 = new Pos(posA);
        double dAngleTo = bVarA.a(cVar.r.end).angleTo(bVarA.a(cVar.r.start));
        Pos pos6 = posA2;
        pos5.translate(d7 * Math.cos(dAngleTo), d7 * Math.sin(dAngleTo));
        pos5.rotate(posA, 0.0d, 1.0d);
        Pos pos7 = new Pos(posA);
        pos7.rotate(pos5, Math.cos(-1.5707963267948966d), Math.sin(-1.5707963267948966d));
        Pos pos8 = new Pos(posA);
        pos8.rotate(pos5, Math.cos(-1.5707963267948966d), Math.sin(-1.5707963267948966d));
        Pos pos9 = new Pos();
        pos9.y = d5;
        double d8 = bVarA.a(cVar.k.start).x;
        double dDistanceTo = cVar.k.start.distanceTo(cVar.m.start);
        cn.mucang.android.jiakaoyi.signal.pos.c cVar2 = carPos.carRect;
        pos9.x = (d8 - ((dDistanceTo - cVar2.f5820a.distanceTo(cVar2.b)) * 0.5d)) - new Pos(carPos.carRect.b).meanWith(carPos.carRect.c).distanceTo(carPos.rearAxlePoint);
        Pos pos10 = new Pos();
        pos10.x = posA.x;
        double dDistanceTo2 = carPos.rearAxlePoint.distanceTo(carPos.center);
        pos10.y = (bVarA.a(cVar.r.start).y - dDistanceTo2) - 50.0d;
        Pos pos11 = new Pos();
        pos11.x = posA.x;
        double d9 = bVarA.a(cVar.r.end).y;
        cn.mucang.android.jiakaoyi.signal.pos.c cVar3 = carPos.carRect;
        pos11.y = d9 - cVar3.f5820a.distanceTo(cVar3.b);
        ArrayList arrayList2 = new ArrayList();
        arrayList2.addAll(cn.mucang.android.jiakaoyi.teachingk2.autocreate.i.f.b.b(pos10, posA, 21.0d));
        Iterator it = arrayList2.iterator();
        while (it.hasNext()) {
            ((TraceItemModel) it.next()).set(0, Videoio.CAP_OPENNI, (short) Step.K2_DaoCheRuKu.type, 0, 0, 0, (byte) Gear.GearBack.gear, 0);
        }
        arrayList2.remove(arrayList2.size() - 1);
        int i2 = (int) ((1.5707963267948966d * d7) / 30.0d);
        double d10 = i2;
        double d11 = (-1.5707963267948966d) / d10;
        int i3 = 0;
        while (i3 <= i2) {
            double d12 = d10;
            double d13 = ((double) i3) * d11;
            Pos pos12 = pos10;
            double d14 = d7;
            TraceItemModel traceItemModel = new TraceItemModel().set(new Pos(posA).rotate(pos5, Math.cos(d13), Math.sin(d13)));
            arrayList2.add(traceItemModel);
            traceItemModel.set((int) dAbs, (int) ((Math.toDegrees(d13) + 90.0d) * 10.0d), Step.K2_DaoCheRuKu.type, 0, 0, 0, Gear.GearBack.gear, 0);
            if (i3 == 0 || i3 == i2) {
                traceItemModel.setPointType(1);
            }
            i3++;
            pos10 = pos12;
            d10 = d12;
            d7 = d14;
        }
        double d15 = d7;
        Pos pos13 = pos10;
        double d16 = d10;
        List<TraceItemModel> listB = cn.mucang.android.jiakaoyi.teachingk2.autocreate.i.f.b.b(pos7, pos9, 21.0d);
        Iterator<TraceItemModel> it2 = listB.iterator();
        while (it2.hasNext()) {
            it2.next().set(0, 0, Step.K2_DaoCheRuKu.type, 0, 0, 0, Gear.GearBack.gear, 0);
        }
        listB.remove(0);
        listB.get(listB.size() - 1).setPointType(1);
        arrayList2.addAll(listB);
        Pos pos14 = new Pos(pos6);
        Pos posA3 = bVarA.a(cVar.r.end);
        Pos posA4 = bVarA.a(cVar.r.start);
        double d17 = dAbs;
        pos14.y += ((double) cn.mucang.android.jiakaoyi.teachingk2.autocreate.i.f.b.d(posA3.y - posA4.y)) * dTan2;
        Pos posA5 = bVarA.a(cVar.o.start);
        Pos posA6 = bVarA.a(cVar.o.end);
        if (z) {
            int iD = cn.mucang.android.jiakaoyi.teachingk2.autocreate.i.f.b.d(cn.mucang.android.jiakaoyi.signal.utils.d.c((float) (Math.toDegrees(posA6.angleTo(posA5)) - Math.toDegrees(posA6.angleTo(bVarA.a(cVar.m.end))))));
            double d18 = iD;
            double d19 = d18 * 1.5707963267948966d;
            Pos posRotate = new Pos(pos6).rotate(pos14, Math.cos(d19), Math.sin(d19));
            double d20 = d18 * (1.5707963267948966d - ((d6 * 0.4d) / dTan2));
            Pos posRotate2 = new Pos(pos6).rotate(pos14, Math.cos(d20), Math.sin(d20));
            Pos pos15 = new Pos();
            pos15.x = posRotate.x;
            double d21 = posA3.y;
            pos15.y = d21 + (((double) cn.mucang.android.jiakaoyi.teachingk2.autocreate.i.f.b.d(posA4.y - d21)) * (dDistanceTo2 + 50.0d));
            ArrayList arrayList3 = new ArrayList();
            arrayList3.addAll(cn.mucang.android.jiakaoyi.teachingk2.autocreate.i.f.b.b(pos9, pos6, 21.0d));
            Iterator it3 = arrayList3.iterator();
            while (it3.hasNext()) {
                ((TraceItemModel) it3.next()).set(0, 0, Step.K2_DaoCheRuKu.type, 0, 0, 0, i, 0);
                posRotate2 = posRotate2;
                bVarA = bVarA;
                bVar4 = bVar4;
                arrayList2 = arrayList2;
                pos6 = pos6;
                pos15 = pos15;
                it3 = it3;
                d17 = d17;
                posA = posA;
            }
            Pos pos16 = pos6;
            pos3 = posA;
            cn.mucang.android.jiakaoyi.signal.utils.b bVar5 = bVarA;
            Pos pos17 = pos15;
            Pos pos18 = posRotate2;
            cn.mucang.android.jiakaoyi.teachingk2.autocreate.i.b bVar6 = bVar4;
            double d22 = d17;
            arrayList = arrayList2;
            int i4 = (int) ((1.5707963267948966d * dTan2) / 30.0d);
            double d23 = d19 / ((double) i4);
            int i5 = 1;
            while (i5 < i4) {
                double d24 = ((double) i5) * d23;
                cn.mucang.android.jiakaoyi.signal.utils.b bVar7 = bVar5;
                Pos pos19 = pos16;
                TraceItemModel traceItemModel2 = new TraceItemModel().set(new Pos(pos19).rotate(pos14, Math.cos(d24), Math.sin(d24)));
                arrayList3.add(traceItemModel2);
                int i6 = i5;
                int i7 = iD;
                traceItemModel2.set((int) (-d22), (int) (Math.toDegrees(d24) * 10.0d), Step.K2_DaoCheRuKu.type, 0, 0, 0, i, 0);
                if (i6 == 1 || i6 == i4 - 1) {
                    traceItemModel2.setPointType(1);
                }
                i5 = i6 + 1;
                iD = i7;
                pos16 = pos19;
                bVar5 = bVar7;
            }
            bVar2 = bVar5;
            int i8 = iD;
            Pos pos20 = pos16;
            List<TraceItemModel> listB2 = cn.mucang.android.jiakaoyi.teachingk2.autocreate.i.f.b.b(posRotate, pos17, 21.0d);
            Iterator<TraceItemModel> it4 = listB2.iterator();
            while (it4.hasNext()) {
                it4.next().set(0, -900, Step.K2_DaoCheRuKu.type, 0, 0, 0, i, 0);
            }
            listB2.get(listB2.size() - 1).setPointType(1);
            arrayList3.addAll(listB2);
            cn.mucang.android.jiakaoyi.teachingk2.autocreate.i.f.b bVar8 = new cn.mucang.android.jiakaoyi.teachingk2.autocreate.i.f.b(Step.K2_DaoCheRuKu, 3, 2);
            bVar6.c = bVar8;
            bVar8.f6203a = arrayList3;
            bVar8.b = new ArrayList();
            double d25 = -d22;
            bVar6.c.b.add(new cn.mucang.android.jiakaoyi.teachingk2.autocreate.i.f.a(new NormalVariable().setPos(pos20, cn.mucang.android.jiakaoyi.teachingk2.autocreate.i.f.b.a(pos20, pos14, false)), d25));
            bVar6.c.b.add(new cn.mucang.android.jiakaoyi.teachingk2.autocreate.i.f.a(new NormalVariable().setPos(pos18, cn.mucang.android.jiakaoyi.teachingk2.autocreate.i.f.b.a(pos18, pos14, false)), 0.0d));
            List<cn.mucang.android.jiakaoyi.teachingk2.autocreate.i.f.a> list = bVar6.c.b;
            cn.mucang.android.jiakaoyi.teachingk2.autocreate.i.f.a aVar = new cn.mucang.android.jiakaoyi.teachingk2.autocreate.i.f.a(new NormalVariable().setPos(pos17, cn.mucang.android.jiakaoyi.hpmap.d.a.s(posRotate, pos17, 50.0d)), 0.0d);
            aVar.e();
            list.add(aVar);
            List<TraceItemModel> list2 = bVar6.c.f6203a;
            TraceItemModel traceItemModel3 = list2.get(list2.size() - 1);
            Pos pos21 = new Pos(traceItemModel3.x, d5);
            Pos posT = cn.mucang.android.jiakaoyi.hpmap.d.a.t(pos21, traceItemModel3, d15);
            Pos posT2 = cn.mucang.android.jiakaoyi.hpmap.d.a.t(pos21, pos9, d15);
            Pos pos22 = new Pos(posT2.x, posT.y);
            ArrayList arrayList4 = new ArrayList();
            List<TraceItemModel> listB3 = cn.mucang.android.jiakaoyi.teachingk2.autocreate.i.f.b.b(traceItemModel3, posT, 25.0d);
            Iterator<TraceItemModel> it5 = listB3.iterator();
            while (it5.hasNext()) {
                it5.next().set(0, -900, Step.K2_DaoCheRuKu.type, 0, 0, 0, Gear.GearBack.gear, 0);
            }
            arrayList4.addAll(listB3);
            double d26 = (((double) (-i8)) * 1.5707963267948966d) / d16;
            int i9 = 1;
            while (i9 < i2) {
                Pos pos23 = pos20;
                cn.mucang.android.jiakaoyi.teachingk2.autocreate.i.b bVar9 = bVar6;
                double d27 = ((double) i9) * d26;
                TraceItemModel traceItemModel4 = new TraceItemModel().set(new Pos(posT).rotate(pos22, Math.cos(d27), Math.sin(d27)));
                arrayList4.add(traceItemModel4);
                Pos pos24 = pos22;
                traceItemModel4.set((int) d25, (int) ((Math.toDegrees(d27) - 90.0d) * 10.0d), Step.K2_DaoCheRuKu.type, 0, 0, 0, Gear.GearBack.gear, 0);
                if (i9 == 1 || i9 == i2 - 1) {
                    traceItemModel4.setPointType(1);
                }
                i9++;
                pos22 = pos24;
                bVar6 = bVar9;
                pos20 = pos23;
            }
            Pos pos25 = pos20;
            cn.mucang.android.jiakaoyi.teachingk2.autocreate.i.b bVar10 = bVar6;
            List<TraceItemModel> listB4 = cn.mucang.android.jiakaoyi.teachingk2.autocreate.i.f.b.b(posT2, pos9, 25.0d);
            Iterator<TraceItemModel> it6 = listB4.iterator();
            while (it6.hasNext()) {
                it6.next().set(0, 0, Step.K2_DaoCheRuKu.type, 0, 0, 0, Gear.GearBack.gear, 0);
            }
            listB4.get(listB4.size() - 1).setPointType(1);
            arrayList4.addAll(listB4);
            cn.mucang.android.jiakaoyi.teachingk2.autocreate.i.f.b bVar11 = new cn.mucang.android.jiakaoyi.teachingk2.autocreate.i.f.b(Step.K2_DaoCheRuKu, 4, 2);
            bVar = bVar10;
            bVar.f6195d = bVar11;
            bVar11.f6203a = arrayList4;
            bVar11.b = new ArrayList();
            Pos posS = cn.mucang.android.jiakaoyi.hpmap.d.a.s(pos21, posT, 10.0d);
            bVar.f6195d.b.add(new cn.mucang.android.jiakaoyi.teachingk2.autocreate.i.f.a(new NormalVariable().setPos(posS, cn.mucang.android.jiakaoyi.hpmap.d.a.t(posS, pos21, 50.0d)), d25));
            bVar.f6195d.b.add(new cn.mucang.android.jiakaoyi.teachingk2.autocreate.i.f.a(new NormalVariable().setPos(posT2, cn.mucang.android.jiakaoyi.hpmap.d.a.t(posT2, pos9, 50.0d)), 0.0d));
            List<cn.mucang.android.jiakaoyi.teachingk2.autocreate.i.f.a> list3 = bVar.f6195d.b;
            cn.mucang.android.jiakaoyi.teachingk2.autocreate.i.f.a aVar2 = new cn.mucang.android.jiakaoyi.teachingk2.autocreate.i.f.a(new NormalVariable().setPos(pos9, cn.mucang.android.jiakaoyi.hpmap.d.a.s(posT2, pos9, 50.0d)), 0.0d);
            aVar2.e();
            list3.add(aVar2);
            d3 = d22;
            pos4 = pos25;
        } else {
            pos3 = posA;
            bVar = bVar4;
            double d28 = d17;
            arrayList = arrayList2;
            double dDistanceTo3 = carPos.wheelLeftBack.distanceTo(carPos.wheelRightBack) * 0.5d;
            pos4 = pos6;
            Pos posTranslate = new Pos(pos4).translate(carPos.L, -dDistanceTo3);
            double d29 = carPos.L;
            double d30 = d15 - dDistanceTo3;
            double dSqrt = Math.sqrt((d29 * d29) + (d30 * d30));
            double d31 = bVarA.a(cVar.r.end).y - 3.0d;
            double d32 = pos14.x;
            double d33 = pos14.y;
            double dAbs2 = Math.abs(pos14.vectorTo(posTranslate).vectorAngle(pos14.vectorTo(new Pos(d32 + Math.sqrt((dSqrt * dSqrt) - ((d31 - d33) * (d31 - d33))), d31))));
            ArrayList arrayList5 = new ArrayList();
            arrayList5.addAll(cn.mucang.android.jiakaoyi.teachingk2.autocreate.i.f.b.b(pos9, pos4, 25.0d));
            Iterator it7 = arrayList5.iterator();
            while (it7.hasNext()) {
                ((TraceItemModel) it7.next()).set(0, 0, Step.K2_DaoCheRuKu.type, 0, 0, 0, i, 0);
            }
            int i10 = (int) ((dAbs2 * d15) / 30.0d);
            double d34 = (-dAbs2) / ((double) i10);
            int i11 = 1;
            while (i11 <= i10) {
                double d35 = ((double) i11) * d34;
                TraceItemModel traceItemModel5 = new TraceItemModel().set(new Pos(pos4).rotate(pos14, Math.cos(d35), Math.sin(d35)));
                arrayList5.add(traceItemModel5);
                double d36 = dAbs2;
                int i12 = i11;
                double d37 = d28;
                traceItemModel5.set((int) (-d37), (int) (Math.toDegrees(d35) * 10.0d), Step.K2_DaoCheRuKu.type, 0, 0, 0, i, 0);
                if (i12 == 1 || i12 == i10 - 1) {
                    traceItemModel5.setPointType(1);
                }
                d28 = d37;
                i11 = i12 + 1;
                dAbs2 = d36;
            }
            double d38 = dAbs2;
            d3 = d28;
            Step step = Step.K2_DaoCheRuKu;
            cn.mucang.android.jiakaoyi.teachingk2.autocreate.i.f.b bVar12 = new cn.mucang.android.jiakaoyi.teachingk2.autocreate.i.f.b(step, 3, 2);
            bVar.c = bVar12;
            bVar12.f6203a = arrayList5;
            bVar12.b = new ArrayList();
            double d39 = -d3;
            bVar.c.b.add(new cn.mucang.android.jiakaoyi.teachingk2.autocreate.i.f.a(new NormalVariable().setPos(pos4, cn.mucang.android.jiakaoyi.teachingk2.autocreate.i.f.b.a(pos4, pos14, false)), d39));
            Pos posRotate3 = new Pos(pos4).rotate(pos14, Math.cos(d38), Math.sin(d38));
            List<cn.mucang.android.jiakaoyi.teachingk2.autocreate.i.f.a> list4 = bVar.c.b;
            bVar2 = bVarA;
            cn.mucang.android.jiakaoyi.teachingk2.autocreate.i.f.a aVar3 = new cn.mucang.android.jiakaoyi.teachingk2.autocreate.i.f.a(new NormalVariable().setPos(posRotate3, cn.mucang.android.jiakaoyi.teachingk2.autocreate.i.f.b.a(posRotate3, pos14, false)), d39);
            aVar3.e();
            list4.add(aVar3);
            bVar.f6195d = new cn.mucang.android.jiakaoyi.teachingk2.autocreate.i.f.b(step, 4, 2);
            ArrayList arrayList6 = new ArrayList();
            int size = arrayList5.size();
            for (int i13 = 0; i13 < size; i13++) {
                arrayList6.add(((TraceItemModel) arrayList5.get((size - 1) - i13)).copy().setGear(Gear.GearBack.gear));
            }
            cn.mucang.android.jiakaoyi.teachingk2.autocreate.i.f.b bVar13 = bVar.f6195d;
            bVar13.f6203a = arrayList6;
            bVar13.b = new ArrayList();
            bVar.f6195d.b.add(new cn.mucang.android.jiakaoyi.teachingk2.autocreate.i.f.a(new NormalVariable().setPos(pos4, cn.mucang.android.jiakaoyi.teachingk2.autocreate.i.f.b.a(pos4, pos14, true)), 0.0d));
            List<cn.mucang.android.jiakaoyi.teachingk2.autocreate.i.f.a> list5 = bVar.f6195d.b;
            cn.mucang.android.jiakaoyi.teachingk2.autocreate.i.f.a aVar4 = new cn.mucang.android.jiakaoyi.teachingk2.autocreate.i.f.a(new NormalVariable().setPos(pos9, cn.mucang.android.jiakaoyi.hpmap.d.a.s(pos4, pos9, 50.0d)), 0.0d);
            aVar4.e();
            list5.add(aVar4);
        }
        cn.mucang.android.jiakaoyi.teachingk2.autocreate.i.f.b bVar14 = new cn.mucang.android.jiakaoyi.teachingk2.autocreate.i.f.b(Step.K2_DaoCheRuKu, 1, 2);
        bVar.f6194a = bVar14;
        bVar14.f6203a = cn.mucang.android.jiakaoyi.teachingk2.autocreate.i.f.b.b(pos11, pos13, 30.0d);
        Iterator<TraceItemModel> it8 = bVar.f6194a.f6203a.iterator();
        while (it8.hasNext()) {
            it8.next().set(0, Videoio.CAP_OPENNI, Step.K2_DaoCheRuKu.type, 0, 0, 0, i, 0);
        }
        bVar.f6194a.b = new ArrayList();
        List<cn.mucang.android.jiakaoyi.teachingk2.autocreate.i.f.a> list6 = bVar.f6194a.b;
        cn.mucang.android.jiakaoyi.teachingk2.autocreate.i.f.a aVar5 = new cn.mucang.android.jiakaoyi.teachingk2.autocreate.i.f.a(new NormalVariable().setPos(pos13, cn.mucang.android.jiakaoyi.hpmap.d.a.s(pos11, pos13, 30.0d)), 0.0d);
        aVar5.e();
        list6.add(aVar5);
        cn.mucang.android.jiakaoyi.teachingk2.autocreate.i.f.b bVar15 = new cn.mucang.android.jiakaoyi.teachingk2.autocreate.i.f.b(Step.K2_DaoCheRuKu, 2, 2);
        bVar.b = bVar15;
        bVar15.f6203a = arrayList;
        bVar15.b = new ArrayList();
        Pos pos26 = pos3;
        bVar.b.b.add(new cn.mucang.android.jiakaoyi.teachingk2.autocreate.i.f.a(new NormalVariable().setPos(new Pos(pos26), cn.mucang.android.jiakaoyi.teachingk2.autocreate.i.f.b.a(pos26, pos5, false)), d3));
        bVar.b.b.add(new cn.mucang.android.jiakaoyi.teachingk2.autocreate.i.f.a(new NormalVariable().setPos(pos8, cn.mucang.android.jiakaoyi.teachingk2.autocreate.i.f.b.a(pos8, pos5, false)), 0.0d));
        List<cn.mucang.android.jiakaoyi.teachingk2.autocreate.i.f.a> list7 = bVar.b.b;
        cn.mucang.android.jiakaoyi.teachingk2.autocreate.i.f.a aVar6 = new cn.mucang.android.jiakaoyi.teachingk2.autocreate.i.f.a(new NormalVariable().setPos(new Pos(pos9), cn.mucang.android.jiakaoyi.hpmap.d.a.s(pos7, pos9, 50.0d)), d3);
        aVar6.e();
        list7.add(aVar6);
        Pos pos27 = new Pos(pos4);
        pos27.translate(Math.cos(1.5707963267948966d) * dTan2, Math.sin(1.5707963267948966d) * dTan2);
        Pos posRotate4 = new Pos(pos4).rotate(pos27, Math.cos(1.5707963267948966d), Math.sin(1.5707963267948966d));
        ArrayList arrayList7 = new ArrayList();
        List<TraceItemModel> listB5 = cn.mucang.android.jiakaoyi.teachingk2.autocreate.i.f.b.b(pos9, pos4, 21.0d);
        Iterator<TraceItemModel> it9 = listB5.iterator();
        while (it9.hasNext()) {
            it9.next().set(0, 0, Step.K2_DaoCheRuKu.type, 0, 0, 0, i, 0);
        }
        arrayList7.addAll(listB5);
        int i14 = (int) ((dTan2 * 1.5707963267948966d) / 30.0d);
        double d40 = 1.5707963267948966d / ((double) i14);
        for (int i15 = 1; i15 < i14; i15++) {
            double d41 = d40 * ((double) i15);
            TraceItemModel traceItemModel6 = new TraceItemModel().set(new Pos(pos4).rotate(pos27, Math.cos(d41), Math.sin(d41)));
            arrayList7.add(traceItemModel6);
            traceItemModel6.set((int) d3, (int) (Math.toDegrees(d41) * 10.0d), Step.K2_DaoCheRuKu.type, 0, 0, 0, i, 0);
            if (i15 == 1 || i15 == i14 - 1) {
                traceItemModel6.setPointType(1);
            }
        }
        Pos pos28 = new Pos();
        pos28.x = posRotate4.x;
        pos28.y = bVar2.a(cVar.r.start).y + 150.0d;
        List<TraceItemModel> listB6 = cn.mucang.android.jiakaoyi.teachingk2.autocreate.i.f.b.b(posRotate4, pos28, 30.0d);
        Iterator<TraceItemModel> it10 = listB6.iterator();
        while (it10.hasNext()) {
            it10.next().set(0, Videoio.CAP_OPENNI, Step.K2_DaoCheRuKu.type, 0, 0, 0, i, 0);
        }
        arrayList7.addAll(listB6);
        cn.mucang.android.jiakaoyi.teachingk2.autocreate.i.f.b bVar16 = new cn.mucang.android.jiakaoyi.teachingk2.autocreate.i.f.b(Step.K2_DaoCheRuKu, 5, 2);
        bVar.f6196e = bVar16;
        bVar16.f6203a = arrayList7;
        bVar16.b = new ArrayList();
        bVar.f6196e.b.add(new cn.mucang.android.jiakaoyi.teachingk2.autocreate.i.f.a(new NormalVariable().setPos(pos4, cn.mucang.android.jiakaoyi.teachingk2.autocreate.i.f.b.a(pos4, pos27, true)), d3));
        bVar.f6196e.b.add(new cn.mucang.android.jiakaoyi.teachingk2.autocreate.i.f.a(new NormalVariable().setPos(posRotate4, cn.mucang.android.jiakaoyi.teachingk2.autocreate.i.f.b.a(posRotate4, pos27, true)), 0.0d));
        return bVar;
    }
}
