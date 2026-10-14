package cn.mucang.android.jiakaoyi.teachingk2.autocreate;

import cn.mucang.android.jiakaoyi.engine.model.Step;
import cn.mucang.android.jiakaoyi.framework.tts.TtsGrade;
import cn.mucang.android.jiakaoyi.framework.tts.TtsManager;
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
public class d {
    public static cn.mucang.android.jiakaoyi.teachingk2.autocreate.i.b a(cn.mucang.android.jiakaoyi.hpmap.a.a.g.c cVar, CarPos carPos, Pos pos, Pos pos2, double d2, double d3, boolean z) {
        double d4;
        ArrayList arrayList;
        double d5;
        cn.mucang.android.jiakaoyi.hpmap.a.a.g.c cVar2;
        cn.mucang.android.jiakaoyi.teachingk2.autocreate.i.b bVar;
        cn.mucang.android.jiakaoyi.signal.utils.b bVar2;
        int i;
        double d6;
        Pos pos3;
        double d7 = cn.mucang.android.jiakaoyi.teachingk2.autocreate.j.a.f6206a ? 0.0d : 10.0d;
        int i2 = (cn.mucang.android.jiakaoyi.signal.utils.f.c() ? Gear.Gear1 : Gear.GearD).gear;
        double dAbs = Math.abs(d2);
        double dAbs2 = Math.abs(d3);
        cn.mucang.android.jiakaoyi.signal.utils.b bVarA = cn.mucang.android.jiakaoyi.teachingk2.elements.model.a.a(cVar);
        cn.mucang.android.jiakaoyi.teachingk2.autocreate.i.b bVar3 = new cn.mucang.android.jiakaoyi.teachingk2.autocreate.i.b();
        double d8 = bVarA.a(cVar.k.middle()).y;
        double dTan = carPos.L / Math.tan(Math.toRadians(AutoLearnWheelAndR.a(Math.abs(dAbs), false)));
        double dTan2 = carPos.L / Math.tan(Math.toRadians(AutoLearnWheelAndR.a(Math.abs(dAbs), true)));
        double d9 = d7;
        double dTan3 = carPos.L / Math.tan(Math.toRadians(AutoLearnWheelAndR.a(Math.abs(dAbs2), false)));
        Pos posA = bVarA.a(pos);
        Pos posA2 = bVarA.a(pos2);
        StringBuilder sb = new StringBuilder();
        cn.mucang.android.jiakaoyi.teachingk2.autocreate.i.b bVar4 = bVar3;
        sb.append("右打满回一定角度再回正方案:");
        sb.append(posA);
        sb.append(",");
        sb.append(posA2);
        sb.append(",wheel1=");
        sb.append(dAbs);
        sb.append(",,wheel2=");
        sb.append(dAbs2);
        sb.append(",");
        sb.append(z);
        sb.append(",L=");
        sb.append(carPos.L);
        cn.mucang.android.jiakaoyi.framework.log.f.o(sb.toString());
        cn.mucang.android.jiakaoyi.framework.log.f.o("后退打满半径=" + dTan + ",后退回部分半径=" + dTan3 + ",前进半径=" + dTan2);
        double d10 = dTan3 / dTan;
        Pos pos4 = new Pos(posA);
        double dAngleTo = bVarA.a(cVar.r.end).angleTo(bVarA.a(cVar.r.start));
        double d11 = dAbs2;
        pos4.translate(dTan * Math.cos(dAngleTo), Math.sin(dAngleTo) * dTan);
        pos4.rotate(posA, 0.0d, 1.0d);
        double d12 = posA.x - pos4.x;
        double d13 = dAbs;
        double d14 = posA.y - pos4.y;
        double d15 = bVarA.a(cVar.k.middle()).y;
        double d16 = d15 + dTan3;
        double d17 = d15 + dTan;
        StringBuilder sb2 = new StringBuilder();
        sb2.append("当前y=");
        sb2.append(posA.y);
        sb2.append(",最大y=");
        sb2.append(d16);
        sb2.append(",最小y=");
        sb2.append(d17);
        sb2.append(",是否在停车范围内:");
        double d18 = posA.y;
        sb2.append(d18 > d17 && d18 < d16);
        cn.mucang.android.jiakaoyi.framework.log.f.o(sb2.toString());
        double d19 = posA.y;
        if (d19 < d17 || d19 > d16) {
            TtsManager.r(d19 < d17 ? "车子位置不正确，请往前开适当距离再试" : "车子位置不正确，请往后退适当距离再试", TtsGrade.GlobalTip);
            return null;
        }
        double d20 = (d10 - 1.0d) * d12;
        double d21 = (1.0d - d10) * d14;
        double d22 = (pos4.y - (d10 * d12)) - d15;
        double dSqrt = Math.sqrt(((d20 * d20) + (d21 * d21)) - (d22 * d22));
        double d23 = -Math.atan2(d21, d20);
        double d24 = -d22;
        double dAtan2 = Math.atan2(d24, dSqrt) + d23;
        double dAtan3 = d23 + Math.atan2(d24, -dSqrt);
        if (dAtan2 >= 1.5707963267948966d || dAtan2 <= 0.0d) {
            dAtan2 = dAtan3;
        }
        cn.mucang.android.jiakaoyi.framework.log.f.o("倒库第二步右打满时走的弧度:" + Math.toDegrees(dAtan2));
        Pos pos5 = new Pos(posA);
        double d25 = -dAtan2;
        pos5.rotate(pos4, Math.cos(d25), Math.sin(d25));
        Pos posT = cn.mucang.android.jiakaoyi.hpmap.d.a.t(pos5, pos4, dTan3);
        Pos pos6 = new Pos(pos5);
        double d26 = 1.5707963267948966d - dAtan2;
        pos6.rotate(posT, Math.cos(d26), -Math.sin(d26));
        Pos pos7 = new Pos(pos6);
        double d27 = (0.1d * d9) / dTan;
        pos7.rotate(posT, Math.cos(d27), Math.sin(d27));
        Pos pos8 = new Pos();
        pos8.y = d15;
        double d28 = bVarA.a(cVar.k.start).x;
        double dDistanceTo = cVar.k.start.distanceTo(cVar.m.start);
        cn.mucang.android.jiakaoyi.signal.pos.c cVar3 = carPos.carRect;
        pos8.x = (d28 - ((dDistanceTo - cVar3.f5820a.distanceTo(cVar3.b)) * 0.5d)) - new Pos(carPos.carRect.b).meanWith(carPos.carRect.c).distanceTo(carPos.rearAxlePoint);
        Pos pos9 = new Pos();
        pos9.x = posA.x;
        double dDistanceTo2 = carPos.rearAxlePoint.distanceTo(carPos.center);
        pos9.y = (bVarA.a(cVar.r.start).y - dDistanceTo2) - 50.0d;
        Pos pos10 = new Pos();
        pos10.x = posA.x;
        double d29 = bVarA.a(cVar.r.end).y;
        cn.mucang.android.jiakaoyi.signal.pos.c cVar4 = carPos.carRect;
        pos10.y = d29 - cVar4.f5820a.distanceTo(cVar4.b);
        ArrayList arrayList2 = new ArrayList();
        arrayList2.addAll(cn.mucang.android.jiakaoyi.teachingk2.autocreate.i.f.b.b(pos9, posA, 30.0d));
        Iterator it = arrayList2.iterator();
        while (it.hasNext()) {
            ((TraceItemModel) it.next()).set(0, Videoio.CAP_OPENNI, (short) Step.K2_DaoCheRuKu.type, 0, 0, 0, (byte) Gear.GearBack.gear, 0);
        }
        arrayList2.remove(arrayList2.size() - 1);
        int i3 = (int) ((dAtan2 * dTan) / 30.0d);
        double d30 = d25 / ((double) i3);
        int i4 = 0;
        while (i4 < i3) {
            Pos pos11 = posA;
            double d31 = ((double) i4) * d30;
            double d32 = d30;
            TraceItemModel traceItemModel = new TraceItemModel().set(new Pos(pos11).rotate(pos4, Math.cos(d31), Math.sin(d31)));
            arrayList2.add(traceItemModel);
            int i5 = i3;
            int i6 = i4;
            traceItemModel.set((int) d13, (int) ((Math.toDegrees(d31) + 90.0d) * 10.0d), Step.K2_DaoCheRuKu.type, 0, 0, 0, Gear.GearBack.gear, 0);
            if (i6 == 0) {
                traceItemModel.setPointType(1);
            }
            i4 = i6 + 1;
            i3 = i5;
            posA = pos11;
            d30 = d32;
        }
        Pos pos12 = posA;
        int i7 = (int) ((d26 * dTan3) / 30.0d);
        double d33 = (-d26) / ((double) i7);
        int i8 = 0;
        while (i8 <= i7) {
            int i9 = i7;
            Pos pos13 = pos12;
            double d34 = ((double) i8) * d33;
            double d35 = d33;
            TraceItemModel traceItemModel2 = new TraceItemModel().set(new Pos(pos5).rotate(posT, Math.cos(d34), Math.sin(d34)));
            arrayList2.add(traceItemModel2);
            double d36 = d11;
            double d37 = dAtan2;
            traceItemModel2.set((int) d36, (int) (((90.0d - Math.toDegrees(dAtan2)) + Math.toDegrees(d34)) * 10.0d), Step.K2_DaoCheRuKu.type, 0, 0, 0, Gear.GearBack.gear, 0);
            if (i8 == 0) {
                traceItemModel2.setPointType(1);
            }
            i8++;
            d11 = d36;
            i7 = i9;
            dAtan2 = d37;
            pos12 = pos13;
            d33 = d35;
        }
        Pos pos14 = pos12;
        double d38 = d11;
        List<TraceItemModel> listB = cn.mucang.android.jiakaoyi.teachingk2.autocreate.i.f.b.b(pos6, pos8, 21.0d);
        Iterator<TraceItemModel> it2 = listB.iterator();
        while (it2.hasNext()) {
            it2.next().set(0, 0, Step.K2_DaoCheRuKu.type, 0, 0, 0, Gear.GearBack.gear, 0);
        }
        listB.remove(0);
        listB.get(listB.size() - 1).setPointType(1);
        arrayList2.addAll(listB);
        posA2.y = d15;
        Pos pos15 = new Pos(posA2);
        Pos posA3 = bVarA.a(cVar.r.end);
        Pos posA4 = bVarA.a(cVar.r.start);
        double d39 = d38;
        pos15.y += ((double) cn.mucang.android.jiakaoyi.teachingk2.autocreate.i.f.b.d(posA3.y - posA4.y)) * dTan2;
        Pos posA5 = bVarA.a(cVar.o.start);
        Pos posA6 = bVarA.a(cVar.o.end);
        if (z) {
            int iD = cn.mucang.android.jiakaoyi.teachingk2.autocreate.i.f.b.d(cn.mucang.android.jiakaoyi.signal.utils.d.c((float) (Math.toDegrees(posA6.angleTo(posA5)) - Math.toDegrees(posA6.angleTo(bVarA.a(cVar.m.end))))));
            double d40 = iD;
            double d41 = d40 * 1.5707963267948966d;
            Pos posRotate = new Pos(posA2).rotate(pos15, Math.cos(d41), Math.sin(d41));
            double d42 = d40 * (1.5707963267948966d - ((d9 * 0.5d) / dTan2));
            Pos posRotate2 = new Pos(posA2).rotate(pos15, Math.cos(d42), Math.sin(d42));
            Pos pos16 = new Pos();
            cn.mucang.android.jiakaoyi.signal.utils.b bVar5 = bVarA;
            pos16.x = posRotate.x;
            double d43 = posA3.y;
            pos16.y = d43 + (((double) cn.mucang.android.jiakaoyi.teachingk2.autocreate.i.f.b.d(posA4.y - d43)) * (dDistanceTo2 + 50.0d));
            ArrayList arrayList3 = new ArrayList();
            arrayList3.addAll(cn.mucang.android.jiakaoyi.teachingk2.autocreate.i.f.b.b(pos8, posA2, 21.0d));
            for (Iterator it3 = arrayList3.iterator(); it3.hasNext(); it3 = it3) {
                ((TraceItemModel) it3.next()).set(0, 0, Step.K2_DaoCheRuKu.type, 0, 0, 0, i2, 0);
                d39 = d39;
                bVar4 = bVar4;
                bVar5 = bVar5;
                pos16 = pos16;
                d13 = d13;
            }
            bVar2 = bVar5;
            Pos pos17 = pos16;
            cn.mucang.android.jiakaoyi.teachingk2.autocreate.i.b bVar6 = bVar4;
            double d44 = d13;
            d5 = d39;
            int i10 = (int) ((1.5707963267948966d * dTan2) / 30.0d);
            double d45 = d41 / ((double) i10);
            int i11 = 1;
            while (i11 < i10) {
                double d46 = ((double) i11) * d45;
                TraceItemModel traceItemModel3 = new TraceItemModel().set(new Pos(posA2).rotate(pos15, Math.cos(d46), Math.sin(d46)));
                arrayList3.add(traceItemModel3);
                int i12 = i11;
                int i13 = i10;
                double d47 = d44;
                ArrayList arrayList4 = arrayList2;
                traceItemModel3.set((int) (-d47), (int) (Math.toDegrees(d46) * 10.0d), Step.K2_DaoCheRuKu.type, 0, 0, 0, i2, 0);
                if (i12 == 1 || i12 == i13 - 1) {
                    traceItemModel3.setPointType(1);
                }
                i11 = i12 + 1;
                arrayList2 = arrayList4;
                d44 = d47;
                i10 = i13;
            }
            arrayList = arrayList2;
            Pos pos18 = pos17;
            double d48 = d44;
            List<TraceItemModel> listB2 = cn.mucang.android.jiakaoyi.teachingk2.autocreate.i.f.b.b(posRotate, pos18, 25.0d);
            Iterator<TraceItemModel> it4 = listB2.iterator();
            while (it4.hasNext()) {
                it4.next().set(0, -900, Step.K2_DaoCheRuKu.type, 0, 0, 0, i2, 0);
                listB2 = listB2;
                pos18 = pos18;
            }
            List<TraceItemModel> list = listB2;
            Pos pos19 = pos18;
            list.get(list.size() - 1).setPointType(1);
            arrayList3.addAll(list);
            cn.mucang.android.jiakaoyi.teachingk2.autocreate.i.f.b bVar7 = new cn.mucang.android.jiakaoyi.teachingk2.autocreate.i.f.b(Step.K2_DaoCheRuKu, 3, 2);
            bVar6.c = bVar7;
            bVar7.f6203a = arrayList3;
            bVar7.b = new ArrayList();
            double d49 = -d48;
            bVar6.c.b.add(new cn.mucang.android.jiakaoyi.teachingk2.autocreate.i.f.a(new NormalVariable().setPos(posA2, cn.mucang.android.jiakaoyi.teachingk2.autocreate.i.f.b.a(posA2, pos15, false)), d49));
            cn.mucang.android.jiakaoyi.teachingk2.autocreate.i.b bVar8 = bVar6;
            bVar8.c.b.add(new cn.mucang.android.jiakaoyi.teachingk2.autocreate.i.f.a(new NormalVariable().setPos(posRotate2, cn.mucang.android.jiakaoyi.teachingk2.autocreate.i.f.b.a(posRotate2, pos15, false)), 0.0d));
            List<cn.mucang.android.jiakaoyi.teachingk2.autocreate.i.f.a> list2 = bVar8.c.b;
            cn.mucang.android.jiakaoyi.teachingk2.autocreate.i.f.a aVar = new cn.mucang.android.jiakaoyi.teachingk2.autocreate.i.f.a(new NormalVariable().setPos(pos19, cn.mucang.android.jiakaoyi.hpmap.d.a.s(posRotate, pos19, 50.0d)), 0.0d);
            aVar.e();
            list2.add(aVar);
            List<TraceItemModel> list3 = bVar8.c.f6203a;
            TraceItemModel traceItemModel4 = list3.get(list3.size() - 1);
            Pos pos20 = new Pos(traceItemModel4.x, d8);
            Pos posT2 = cn.mucang.android.jiakaoyi.hpmap.d.a.t(pos20, traceItemModel4, dTan);
            Pos posT3 = cn.mucang.android.jiakaoyi.hpmap.d.a.t(pos20, pos8, dTan);
            Pos pos21 = new Pos(posT3.x, posT2.y);
            double d50 = ((-0.5d) * d9) / dTan;
            Pos posRotate3 = new Pos(posT3).rotate(pos21, Math.cos(d50), Math.sin(d50));
            ArrayList arrayList5 = new ArrayList();
            List<TraceItemModel> listB3 = cn.mucang.android.jiakaoyi.teachingk2.autocreate.i.f.b.b(traceItemModel4, posT2, 21.0d);
            Iterator<TraceItemModel> it5 = listB3.iterator();
            while (it5.hasNext()) {
                it5.next().set(0, -900, Step.K2_DaoCheRuKu.type, 0, 0, 0, Gear.GearBack.gear, 0);
            }
            arrayList5.addAll(listB3);
            int i14 = (int) ((1.5707963267948966d * dTan) / 30.0d);
            d4 = dTan;
            double d51 = (((double) (-iD)) * 1.5707963267948966d) / ((double) i14);
            int i15 = 1;
            while (i15 < i14) {
                cn.mucang.android.jiakaoyi.teachingk2.autocreate.i.b bVar9 = bVar8;
                double d52 = ((double) i15) * d51;
                TraceItemModel traceItemModel5 = new TraceItemModel().set(new Pos(posT2).rotate(pos21, Math.cos(d52), Math.sin(d52)));
                arrayList5.add(traceItemModel5);
                double d53 = d51;
                traceItemModel5.set((int) d49, (int) ((Math.toDegrees(d52) - 90.0d) * 10.0d), Step.K2_DaoCheRuKu.type, 0, 0, 0, Gear.GearBack.gear, 0);
                if (i15 == 1 || i15 == i14 - 1) {
                    traceItemModel5.setPointType(1);
                }
                i15++;
                d51 = d53;
                bVar8 = bVar9;
            }
            cn.mucang.android.jiakaoyi.teachingk2.autocreate.i.b bVar10 = bVar8;
            List<TraceItemModel> listB4 = cn.mucang.android.jiakaoyi.teachingk2.autocreate.i.f.b.b(posT3, pos8, 21.0d);
            Iterator<TraceItemModel> it6 = listB4.iterator();
            while (it6.hasNext()) {
                it6.next().set(0, 0, Step.K2_DaoCheRuKu.type, 0, 0, 0, Gear.GearBack.gear, 0);
            }
            listB4.get(listB4.size() - 1).setPointType(1);
            arrayList5.addAll(listB4);
            i = 2;
            cn.mucang.android.jiakaoyi.teachingk2.autocreate.i.f.b bVar11 = new cn.mucang.android.jiakaoyi.teachingk2.autocreate.i.f.b(Step.K2_DaoCheRuKu, 4, 2);
            bVar10.f6195d = bVar11;
            bVar11.f6203a = arrayList5;
            bVar11.b = new ArrayList();
            bVar10.f6195d.b.add(new cn.mucang.android.jiakaoyi.teachingk2.autocreate.i.f.a(new NormalVariable().setPos(posT2, cn.mucang.android.jiakaoyi.teachingk2.autocreate.i.f.b.a(posT2, pos21, true)), d49));
            bVar10.f6195d.b.add(new cn.mucang.android.jiakaoyi.teachingk2.autocreate.i.f.a(new NormalVariable().setPos(posRotate3, cn.mucang.android.jiakaoyi.teachingk2.autocreate.i.f.b.a(posRotate3, pos21, true)), 0.0d));
            List<cn.mucang.android.jiakaoyi.teachingk2.autocreate.i.f.a> list4 = bVar10.f6195d.b;
            cn.mucang.android.jiakaoyi.teachingk2.autocreate.i.f.a aVar2 = new cn.mucang.android.jiakaoyi.teachingk2.autocreate.i.f.a(new NormalVariable().setPos(pos8, cn.mucang.android.jiakaoyi.hpmap.d.a.s(posT3, pos8, 50.0d)), 0.0d);
            aVar2.e();
            list4.add(aVar2);
            cVar2 = cVar;
            pos3 = pos8;
            bVar = bVar10;
            d6 = d48;
        } else {
            d4 = dTan;
            arrayList = arrayList2;
            Pos pos22 = pos8;
            cn.mucang.android.jiakaoyi.teachingk2.autocreate.i.b bVar12 = bVar4;
            double d54 = d13;
            d5 = d39;
            double dDistanceTo3 = carPos.wheelLeftBack.distanceTo(carPos.wheelRightBack) * 0.5d;
            Pos posTranslate = new Pos(posA2).translate(carPos.L, -dDistanceTo3);
            double d55 = carPos.L;
            double d56 = d4 - dDistanceTo3;
            double dSqrt2 = Math.sqrt((d55 * d55) + (d56 * d56));
            cVar2 = cVar;
            cn.mucang.android.jiakaoyi.signal.utils.b bVar13 = bVarA;
            double d57 = bVar13.a(cVar2.r.end).y - 3.0d;
            double d58 = pos15.x;
            double d59 = pos15.y;
            double dAbs3 = Math.abs(pos15.vectorTo(posTranslate).vectorAngle(pos15.vectorTo(new Pos(d58 + Math.sqrt((dSqrt2 * dSqrt2) - ((d57 - d59) * (d57 - d59))), d57))));
            ArrayList arrayList6 = new ArrayList();
            arrayList6.addAll(cn.mucang.android.jiakaoyi.teachingk2.autocreate.i.f.b.b(pos22, posA2, 25.0d));
            Iterator it7 = arrayList6.iterator();
            while (it7.hasNext()) {
                ((TraceItemModel) it7.next()).set(0, 0, Step.K2_DaoCheRuKu.type, 0, 0, 0, i2, 0);
                bVar13 = bVar13;
                bVar12 = bVar12;
            }
            bVar = bVar12;
            cn.mucang.android.jiakaoyi.signal.utils.b bVar14 = bVar13;
            int i16 = (int) ((dAbs3 * d4) / 30.0d);
            double d60 = (-dAbs3) / ((double) i16);
            int i17 = 1;
            while (i17 <= i16) {
                double d61 = ((double) i17) * d60;
                TraceItemModel traceItemModel6 = new TraceItemModel().set(new Pos(posA2).rotate(pos15, Math.cos(d61), Math.sin(d61)));
                arrayList6.add(traceItemModel6);
                Pos pos23 = pos22;
                cn.mucang.android.jiakaoyi.signal.utils.b bVar15 = bVar14;
                double d62 = d54;
                int i18 = i17;
                traceItemModel6.set((int) (-d62), (int) (Math.toDegrees(d61) * 10.0d), Step.K2_DaoCheRuKu.type, 0, 0, 0, i2, 0);
                if (i18 == 1 || i18 == i16 - 1) {
                    traceItemModel6.setPointType(1);
                }
                i17 = i18 + 1;
                pos22 = pos23;
                bVar14 = bVar15;
                d54 = d62;
            }
            Pos pos24 = pos22;
            bVar2 = bVar14;
            Step step = Step.K2_DaoCheRuKu;
            i = 2;
            cn.mucang.android.jiakaoyi.teachingk2.autocreate.i.f.b bVar16 = new cn.mucang.android.jiakaoyi.teachingk2.autocreate.i.f.b(step, 3, 2);
            bVar.c = bVar16;
            bVar16.f6203a = arrayList6;
            bVar16.b = new ArrayList();
            d6 = d54;
            double d63 = -d6;
            bVar.c.b.add(new cn.mucang.android.jiakaoyi.teachingk2.autocreate.i.f.a(new NormalVariable().setPos(posA2, cn.mucang.android.jiakaoyi.teachingk2.autocreate.i.f.b.a(posA2, pos15, false)), d63));
            Pos posRotate4 = new Pos(posA2).rotate(pos15, Math.cos(dAbs3), Math.sin(dAbs3));
            List<cn.mucang.android.jiakaoyi.teachingk2.autocreate.i.f.a> list5 = bVar.c.b;
            cn.mucang.android.jiakaoyi.teachingk2.autocreate.i.f.a aVar3 = new cn.mucang.android.jiakaoyi.teachingk2.autocreate.i.f.a(new NormalVariable().setPos(posRotate4, cn.mucang.android.jiakaoyi.teachingk2.autocreate.i.f.b.a(posRotate4, pos15, false)), d63);
            aVar3.e();
            list5.add(aVar3);
            bVar.f6195d = new cn.mucang.android.jiakaoyi.teachingk2.autocreate.i.f.b(step, 4, 2);
            ArrayList arrayList7 = new ArrayList();
            int size = arrayList6.size();
            for (int i19 = 0; i19 < size; i19++) {
                arrayList7.add(((TraceItemModel) arrayList6.get((size - 1) - i19)).copy().setGear(Gear.GearBack.gear));
            }
            cn.mucang.android.jiakaoyi.teachingk2.autocreate.i.f.b bVar17 = bVar.f6195d;
            bVar17.f6203a = arrayList7;
            bVar17.b = new ArrayList();
            bVar.f6195d.b.add(new cn.mucang.android.jiakaoyi.teachingk2.autocreate.i.f.a(new NormalVariable().setPos(posA2, cn.mucang.android.jiakaoyi.teachingk2.autocreate.i.f.b.a(posA2, pos15, true)), 0.0d));
            List<cn.mucang.android.jiakaoyi.teachingk2.autocreate.i.f.a> list6 = bVar.f6195d.b;
            pos3 = pos24;
            cn.mucang.android.jiakaoyi.teachingk2.autocreate.i.f.a aVar4 = new cn.mucang.android.jiakaoyi.teachingk2.autocreate.i.f.a(new NormalVariable().setPos(pos3, cn.mucang.android.jiakaoyi.hpmap.d.a.s(posA2, pos3, 50.0d)), 0.0d);
            aVar4.e();
            list6.add(aVar4);
        }
        cn.mucang.android.jiakaoyi.teachingk2.autocreate.i.f.b bVar18 = new cn.mucang.android.jiakaoyi.teachingk2.autocreate.i.f.b(Step.K2_DaoCheRuKu, 1, i);
        bVar.f6194a = bVar18;
        bVar18.f6203a = cn.mucang.android.jiakaoyi.teachingk2.autocreate.i.f.b.b(pos10, pos9, 30.0d);
        Iterator<TraceItemModel> it8 = bVar.f6194a.f6203a.iterator();
        while (it8.hasNext()) {
            it8.next().set(0, Videoio.CAP_OPENNI, Step.K2_DaoCheRuKu.type, 0, 0, 0, i2, 0);
            d6 = d6;
        }
        double d64 = d6;
        bVar.f6194a.b = new ArrayList();
        List<cn.mucang.android.jiakaoyi.teachingk2.autocreate.i.f.a> list7 = bVar.f6194a.b;
        cn.mucang.android.jiakaoyi.teachingk2.autocreate.i.f.a aVar5 = new cn.mucang.android.jiakaoyi.teachingk2.autocreate.i.f.a(new NormalVariable().setPos(pos9, cn.mucang.android.jiakaoyi.hpmap.d.a.s(pos10, pos9, 30.0d)), 0.0d);
        aVar5.e();
        list7.add(aVar5);
        cn.mucang.android.jiakaoyi.teachingk2.autocreate.i.f.b bVar19 = new cn.mucang.android.jiakaoyi.teachingk2.autocreate.i.f.b(Step.K2_DaoCheRuKu, 2, 2);
        bVar.b = bVar19;
        bVar19.f6203a = arrayList;
        bVar19.b = new ArrayList();
        bVar.b.b.add(new cn.mucang.android.jiakaoyi.teachingk2.autocreate.i.f.a(new NormalVariable().setPos(new Pos(pos14), cn.mucang.android.jiakaoyi.teachingk2.autocreate.i.f.b.a(pos14, pos4, false)), d64));
        bVar.b.b.add(new cn.mucang.android.jiakaoyi.teachingk2.autocreate.i.f.a(new NormalVariable().setPos(pos5, cn.mucang.android.jiakaoyi.teachingk2.autocreate.i.f.b.a(pos5, pos4, false)), d5));
        bVar.b.b.add(new cn.mucang.android.jiakaoyi.teachingk2.autocreate.i.f.a(new NormalVariable().setPos(pos7, cn.mucang.android.jiakaoyi.teachingk2.autocreate.i.f.b.a(pos7, posT, false)), 0.0d));
        List<cn.mucang.android.jiakaoyi.teachingk2.autocreate.i.f.a> list8 = bVar.b.b;
        cn.mucang.android.jiakaoyi.teachingk2.autocreate.i.f.a aVar6 = new cn.mucang.android.jiakaoyi.teachingk2.autocreate.i.f.a(new NormalVariable().setPos(new Pos(pos3), cn.mucang.android.jiakaoyi.hpmap.d.a.s(pos6, pos3, 50.0d)), 0.0d);
        aVar6.e();
        list8.add(aVar6);
        Pos pos25 = new Pos(posA2);
        pos25.translate(Math.cos(1.5707963267948966d) * dTan2, Math.sin(1.5707963267948966d) * dTan2);
        Pos posRotate5 = new Pos(posA2).rotate(pos25, Math.cos(1.5707963267948966d), Math.sin(1.5707963267948966d));
        ArrayList arrayList8 = new ArrayList();
        List<TraceItemModel> listB5 = cn.mucang.android.jiakaoyi.teachingk2.autocreate.i.f.b.b(pos3, posA2, 21.0d);
        Iterator<TraceItemModel> it9 = listB5.iterator();
        while (it9.hasNext()) {
            it9.next().set(0, 0, Step.K2_DaoCheRuKu.type, 0, 0, 0, i2, 0);
        }
        arrayList8.addAll(listB5);
        int i20 = (int) ((d4 * 1.5707963267948966d) / 30.0d);
        double d65 = 1.5707963267948966d / ((double) i20);
        int i21 = 1;
        while (i21 < i20) {
            double d66 = ((double) i21) * d65;
            TraceItemModel traceItemModel7 = new TraceItemModel().set(new Pos(posA2).rotate(pos25, Math.cos(d66), Math.sin(d66)));
            arrayList8.add(traceItemModel7);
            int i22 = i21;
            traceItemModel7.set((int) d64, (int) (Math.toDegrees(d66) * 10.0d), Step.K2_DaoCheRuKu.type, 0, 0, 0, i2, 0);
            if (i22 == 1 || i22 == i20 - 1) {
                traceItemModel7.setPointType(1);
            }
            i21 = i22 + 1;
        }
        Pos pos26 = new Pos();
        pos26.x = posRotate5.x;
        pos26.y = bVar2.a(cVar2.r.start).y + 150.0d;
        List<TraceItemModel> listB6 = cn.mucang.android.jiakaoyi.teachingk2.autocreate.i.f.b.b(posRotate5, pos26, 30.0d);
        Iterator<TraceItemModel> it10 = listB6.iterator();
        while (it10.hasNext()) {
            it10.next().set(0, Videoio.CAP_OPENNI, Step.K2_DaoCheRuKu.type, 0, 0, 0, i2, 0);
        }
        arrayList8.addAll(listB6);
        cn.mucang.android.jiakaoyi.teachingk2.autocreate.i.f.b bVar20 = new cn.mucang.android.jiakaoyi.teachingk2.autocreate.i.f.b(Step.K2_DaoCheRuKu, 5, 2);
        bVar.f6196e = bVar20;
        bVar20.f6203a = arrayList8;
        bVar20.b = new ArrayList();
        bVar.f6196e.b.add(new cn.mucang.android.jiakaoyi.teachingk2.autocreate.i.f.a(new NormalVariable().setPos(posA2, cn.mucang.android.jiakaoyi.teachingk2.autocreate.i.f.b.a(posA2, pos25, true)), d64));
        bVar.f6196e.b.add(new cn.mucang.android.jiakaoyi.teachingk2.autocreate.i.f.a(new NormalVariable().setPos(posRotate5, cn.mucang.android.jiakaoyi.teachingk2.autocreate.i.f.b.a(posRotate5, pos25, true)), 0.0d));
        return bVar;
    }
}
