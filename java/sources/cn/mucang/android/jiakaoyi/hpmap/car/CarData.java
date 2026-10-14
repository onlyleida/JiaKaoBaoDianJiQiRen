package cn.mucang.android.jiakaoyi.hpmap.car;

import cn.mucang.android.core.utils.g;
import cn.mucang.android.jiakaoyi.framework.utils.AppUtils;
import cn.mucang.android.jiakaoyi.signal.center.model.CarPos;
import cn.mucang.android.jiakaoyi.signal.pos.Pos;
import cn.mucang.android.jiakaoyi.signal.pos.c;
import cn.mucang.android.jiakaoyi.signal.utils.d;
import java.io.Serializable;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Comparator;
import java.util.Iterator;
import java.util.LinkedList;
import java.util.List;
import java.util.Map;

/* JADX INFO: loaded from: classes2.dex */
public class CarData implements Serializable {
    public static final int CarPointCount = 24;
    public double antennaAngle;
    public double backFrontDistance;
    public Map<Integer, RelatePos> carPoints;
    public Map<Integer, RelatePos> leftMirrorPoints;
    public double mainPosHeight;
    public Map<Integer, RelatePos> rightMirrorPoints;
    private final LinkedList<Double> srcPitches;
    public RelatePos wheelLeftBack;
    public RelatePos wheelLeftBackInner;
    public RelatePos wheelLeftFront;
    public RelatePos wheelLeftFrontInner;
    public RelatePos wheelRightBack;
    public RelatePos wheelRightBackInner;
    public RelatePos wheelRightFront;
    public RelatePos wheelRightFrontInner;
    public final double wheelTouchWidth;
    public int leftMirrorOutIndex = -1;
    public int leftMirrorInIndex = -1;
    public int rightMirrorOutIndex = -1;
    public int rightMirrorInIndex = -1;

    public enum Orientation {
        None,
        Horizontal,
        Vertical
    }

    public static class a {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public Orientation f3682a = Orientation.None;

        public boolean a() {
            return this.f3682a == Orientation.Horizontal;
        }

        public boolean b() {
            Orientation orientation = this.f3682a;
            return orientation == Orientation.None || orientation == null;
        }

        public void c() {
            this.f3682a = Orientation.Horizontal;
        }

        public void d() {
            this.f3682a = Orientation.Vertical;
        }
    }

    public CarData() {
        this.wheelTouchWidth = AppUtils.l() ? 15.0d : 7.5d;
        this.srcPitches = new LinkedList<>();
    }

    private static double calL(CarPos carPos) {
        Pos pos = carPos.wheelLeftBack;
        double d2 = pos.x;
        Pos pos2 = carPos.wheelRightBack;
        double d3 = (d2 + pos2.x) * 0.5d;
        double d4 = (pos.y + pos2.y) * 0.5d;
        Pos pos3 = carPos.wheelLeftFront;
        double d5 = pos3.x;
        Pos pos4 = carPos.wheelRightFront;
        double d6 = d3 - ((d5 + pos4.x) * 0.5d);
        double d7 = d4 - ((pos3.y + pos4.y) * 0.5d);
        return Math.sqrt((d6 * d6) + (d7 * d7));
    }

    public static c calculateCenter(List<Pos> list, Pos pos, double d2, Pos pos2, Pos pos3) {
        Pos pos4 = new Pos(pos);
        ArrayList<Pos> arrayList = new ArrayList();
        double d3 = -d2;
        double dSin = Math.sin(d3);
        double dCos = Math.cos(d3);
        Iterator<Pos> it = list.iterator();
        while (it.hasNext()) {
            arrayList.add(new Pos(it.next()).rotate(pos4, dCos, dSin));
        }
        double d4 = -1.7976931348623157E308d;
        double d5 = -1.7976931348623157E308d;
        double d6 = Double.MAX_VALUE;
        double d7 = Double.MAX_VALUE;
        double d8 = Double.MAX_VALUE;
        double d9 = -1.7976931348623157E308d;
        for (Pos pos5 : arrayList) {
            double d10 = pos5.x;
            if (d7 > d10) {
                pos3.setPos(pos5);
                d7 = d10;
            }
            double d11 = pos5.y;
            if (d8 > d11) {
                d8 = d11;
            }
            double d12 = pos5.z;
            if (d6 > d12) {
                d6 = d12;
            }
            double d13 = pos5.x;
            if (d5 < d13) {
                pos2.setPos(pos5);
                d5 = d13;
            }
            double d14 = pos5.y;
            if (d9 < d14) {
                d9 = d14;
            }
            double d15 = pos5.z;
            if (d4 < d15) {
                d4 = d15;
            }
        }
        double d16 = (d6 + d4) * 0.5d;
        double d17 = d9;
        Pos pos6 = new Pos(d7, d17, d16);
        double d18 = d5;
        Pos pos7 = new Pos(d18, d17, d16);
        Pos pos8 = new Pos(d18, d8, d16);
        Pos pos9 = new Pos(d7, d8, d16);
        double d19 = -dSin;
        pos6.rotate(pos4, dCos, d19);
        pos7.rotate(pos4, dCos, d19);
        pos8.rotate(pos4, dCos, d19);
        pos9.rotate(pos4, dCos, d19);
        pos2.rotate(pos4, dCos, d19);
        pos3.rotate(pos4, dCos, d19);
        return new c(pos6, pos7, pos8, pos9);
    }

    private static double mean(List<Double> list) {
        double dDoubleValue = 0.0d;
        if (list.isEmpty()) {
            return 0.0d;
        }
        Iterator<Double> it = list.iterator();
        while (it.hasNext()) {
            dDoubleValue += it.next().doubleValue();
        }
        return dDoubleValue / ((double) list.size());
    }

    public CarPos update(Pos pos, double d2, double d3, double d4, a aVar, double d5) {
        Pos pos2;
        double radians;
        double dC;
        CarPos carPos;
        List<Pos> list;
        double d6;
        double dC2 = d.c((float) d2);
        Pos pos3 = new Pos(pos);
        double d7 = Math.abs(d3) > 30.0d ? 0.0d : d3;
        double radians2 = Math.toRadians(dC2);
        double dSin = Math.sin(Math.toRadians(d7));
        double dCos = Math.cos(Math.toRadians(d7));
        CarPos carPos2 = new CarPos();
        carPos2.pitch = d7;
        carPos2.main = new Pos(pos3);
        carPos2.carPoints = new ArrayList();
        ArrayList arrayList = new ArrayList(this.carPoints.keySet());
        Collections.sort(arrayList, new Comparator() { // from class: cn.mucang.android.jiakaoyi.hpmap.car.a
            @Override // java.util.Comparator
            public final int compare(Object obj, Object obj2) {
                return ((Integer) obj).compareTo((Integer) obj2);
            }
        });
        Iterator it = arrayList.iterator();
        while (it.hasNext()) {
            RelatePos relatePos = this.carPoints.get(Integer.valueOf(((Integer) it.next()).intValue()));
            if (relatePos != null) {
                carPos2.carPoints.add(relatePos.get(pos3, radians2));
            }
        }
        if (g.e(this.leftMirrorPoints)) {
            carPos2.leftMirrorPoints = new ArrayList();
            ArrayList arrayList2 = new ArrayList(this.leftMirrorPoints.keySet());
            Collections.sort(arrayList2, new Comparator() { // from class: cn.mucang.android.jiakaoyi.hpmap.car.a
                @Override // java.util.Comparator
                public final int compare(Object obj, Object obj2) {
                    return ((Integer) obj).compareTo((Integer) obj2);
                }
            });
            Iterator it2 = arrayList2.iterator();
            while (it2.hasNext()) {
                RelatePos relatePos2 = this.leftMirrorPoints.get(Integer.valueOf(((Integer) it2.next()).intValue()));
                if (relatePos2 != null) {
                    carPos2.leftMirrorPoints.add(relatePos2.get(pos3, radians2));
                }
            }
        }
        if (g.e(this.rightMirrorPoints)) {
            carPos2.rightMirrorPoints = new ArrayList();
            ArrayList arrayList3 = new ArrayList(this.rightMirrorPoints.keySet());
            Collections.sort(arrayList3, new Comparator() { // from class: cn.mucang.android.jiakaoyi.hpmap.car.a
                @Override // java.util.Comparator
                public final int compare(Object obj, Object obj2) {
                    return ((Integer) obj).compareTo((Integer) obj2);
                }
            });
            Iterator it3 = arrayList3.iterator();
            while (it3.hasNext()) {
                RelatePos relatePos3 = this.rightMirrorPoints.get(Integer.valueOf(((Integer) it3.next()).intValue()));
                if (relatePos3 != null) {
                    carPos2.rightMirrorPoints.add(relatePos3.get(pos3, radians2));
                }
            }
        }
        carPos2.wheelLeftFront = this.wheelLeftFront.get(pos3, radians2);
        carPos2.wheelLeftBack = this.wheelLeftBack.get(pos3, radians2);
        carPos2.wheelRightBack = this.wheelRightBack.get(pos3, radians2);
        carPos2.wheelRightFront = this.wheelRightFront.get(pos3, radians2);
        carPos2.wheelLeftFrontInner = this.wheelLeftFrontInner.get(pos3, radians2);
        carPos2.wheelLeftBackInner = this.wheelLeftBackInner.get(pos3, radians2);
        carPos2.wheelRightBackInner = this.wheelRightBackInner.get(pos3, radians2);
        carPos2.wheelRightFrontInner = this.wheelRightFrontInner.get(pos3, radians2);
        carPos2.L = calL(carPos2);
        Pos pos4 = new Pos(pos3.x + (this.backFrontDistance * Math.cos(radians2)), pos3.y + (this.backFrontDistance * Math.sin(radians2)), pos3.z);
        if (aVar != null && aVar.b()) {
            if (Math.abs(d.c(d.c((float) Math.toDegrees(carPos2.wheelLeftBack.angleTo(carPos2.wheelLeftFront))) - d.c((float) dC2))) > 45.0d) {
                aVar.c();
            } else {
                aVar.d();
            }
        }
        if (aVar == null || !aVar.a()) {
            carPos2 = carPos2;
            pos2 = new Pos(pos3);
            radians = radians2;
            dC = dC2;
        } else {
            pos2 = new Pos(pos3).meanWith(pos4);
            if (pos3.vectorTo(pos4).dot(carPos2.wheelLeftBack.vectorTo(carPos2.wheelRightBack)) > 0.0d) {
                pos3 = pos3.rotate(pos2, 0.0d, -1.0d);
                pos4 = pos4.rotate(pos2, 0.0d, -1.0d);
                d6 = dC2 - 90.0d;
            } else {
                pos3 = pos3.rotate(pos2, 0.0d, 1.0d);
                pos4 = pos4.rotate(pos2, 0.0d, 1.0d);
                d6 = dC2 + 90.0d;
            }
            dC = d.c((float) d6);
            radians = Math.toRadians(dC);
        }
        carPos2.back = pos3;
        carPos2.front = pos4;
        carPos2.degree = dC;
        ArrayList<Pos> arrayList4 = new ArrayList();
        arrayList4.add(carPos2.wheelLeftBack);
        arrayList4.add(carPos2.wheelLeftFront);
        arrayList4.add(carPos2.wheelRightBack);
        arrayList4.add(carPos2.wheelRightFront);
        Pos pos5 = carPos2.wheelLeftBackInner;
        if (pos5 != null) {
            arrayList4.add(pos5);
        }
        Pos pos6 = carPos2.wheelLeftFrontInner;
        if (pos6 != null) {
            arrayList4.add(pos6);
        }
        Pos pos7 = carPos2.wheelRightBackInner;
        if (pos7 != null) {
            arrayList4.add(pos7);
        }
        Pos pos8 = carPos2.wheelRightFrontInner;
        if (pos8 != null) {
            arrayList4.add(pos8);
        }
        arrayList4.add(carPos2.front);
        arrayList4.add(carPos2.back);
        arrayList4.addAll(carPos2.carPoints);
        if (g.d(carPos2.leftMirrorPoints)) {
            arrayList4.addAll(carPos2.leftMirrorPoints);
        }
        if (g.d(carPos2.rightMirrorPoints)) {
            arrayList4.addAll(carPos2.rightMirrorPoints);
        }
        double dCos2 = Math.cos(radians);
        Pos pos9 = pos2;
        CarPos carPos3 = carPos2;
        double dSin2 = Math.sin(radians);
        double d8 = radians;
        double d9 = (this.mainPosHeight - 30.0d) * dSin;
        double d10 = d9 * dCos2;
        double d11 = d9 * dSin2;
        double d12 = pos3.z;
        for (Pos pos10 : arrayList4) {
            pos10.translate(d10, d11);
            pos10.z = d12 - (this.mainPosHeight * dCos);
            d11 = d11;
        }
        if (aVar != null && aVar.a() && Math.abs(d4) > 2.0d) {
            this.srcPitches.addFirst(Double.valueOf(d4));
            if (this.srcPitches.size() > 5) {
                this.srcPitches.removeLast();
            }
            double dMean = mean(this.srcPitches);
            double dCos3 = Math.cos(Math.toRadians(dC2));
            double dSin3 = Math.sin(Math.toRadians(dC2));
            double dSin4 = (this.mainPosHeight - 30.0d) * Math.sin(Math.toRadians(dMean));
            double d13 = dCos3 * dSin4;
            double d14 = dSin4 * dSin3;
            Iterator it4 = arrayList4.iterator();
            while (it4.hasNext()) {
                ((Pos) it4.next()).translate(d13, d14);
            }
        }
        if (d5 <= -2000.0d || d5 >= 2000.0d) {
            carPos = carPos3;
        } else {
            double radians3 = Math.toRadians(d5 / ((AppUtils.l() || AppUtils.i()) ? 40.0d : 35.0d));
            carPos = carPos3;
            Pos posMeanWith = new Pos(carPos.wheelLeftFront).meanWith(carPos.wheelLeftFrontInner);
            Pos posMeanWith2 = new Pos(carPos.wheelRightFront).meanWith(carPos.wheelRightFrontInner);
            double dCos4 = Math.cos(radians3);
            double dSin5 = Math.sin(radians3);
            carPos.wheelLeftFront.rotate(posMeanWith, dCos4, dSin5);
            carPos.wheelLeftFrontInner.rotate(posMeanWith, dCos4, dSin5);
            carPos.wheelRightFront.rotate(posMeanWith2, dCos4, dSin5);
            carPos.wheelRightFrontInner.rotate(posMeanWith2, dCos4, dSin5);
        }
        carPos.leftFrontTouchRect = cn.mucang.android.jiakaoyi.hpmap.d.a.v(carPos.wheelLeftFront, carPos.wheelLeftFrontInner, this.wheelTouchWidth);
        carPos.leftBackTouchRect = cn.mucang.android.jiakaoyi.hpmap.d.a.v(carPos.wheelLeftBack, carPos.wheelLeftBackInner, this.wheelTouchWidth);
        carPos.rightFrontTouchRect = cn.mucang.android.jiakaoyi.hpmap.d.a.v(carPos.wheelRightFront, carPos.wheelRightFrontInner, this.wheelTouchWidth);
        carPos.rightBackTouchRect = cn.mucang.android.jiakaoyi.hpmap.d.a.v(carPos.wheelRightBack, carPos.wheelRightBackInner, this.wheelTouchWidth);
        carPos.headerPoint = new Pos();
        Pos pos11 = new Pos();
        carPos.tailPoint = pos11;
        c cVarCalculateCenter = calculateCenter(carPos.carPoints, carPos.back, d8, carPos.headerPoint, pos11);
        carPos.carRect = cVarCalculateCenter;
        carPos.center = cVarCalculateCenter.b();
        carPos.rearAxlePoint = new Pos(carPos.wheelLeftBack).meanWith(carPos.wheelRightBack);
        ArrayList arrayList5 = new ArrayList();
        arrayList5.add(carPos.wheelLeftBack);
        arrayList5.add(carPos.wheelLeftFront);
        arrayList5.add(carPos.wheelRightBack);
        arrayList5.add(carPos.wheelRightFront);
        cn.mucang.android.jiakaoyi.signal.pos.a aVarB = cn.mucang.android.jiakaoyi.hpmap.d.a.b(arrayList5);
        cn.mucang.android.jiakaoyi.signal.pos.a aVarB2 = cn.mucang.android.jiakaoyi.hpmap.d.a.b(carPos.carPoints);
        aVarB2.i(aVarB);
        carPos.bound = aVarB2;
        if (g.d(carPos.leftMirrorPoints)) {
            carPos.bound.i(cn.mucang.android.jiakaoyi.hpmap.d.a.b(carPos.leftMirrorPoints));
        }
        if (g.d(carPos.rightMirrorPoints)) {
            carPos.bound.i(cn.mucang.android.jiakaoyi.hpmap.d.a.b(carPos.rightMirrorPoints));
        }
        double d15 = -1.7976931348623157E308d;
        if (carPos.leftMirrorPoints != null && (this.leftMirrorInIndex == -1 || this.leftMirrorOutIndex == -1)) {
            Pos pos12 = new Pos();
            double d16 = -1.7976931348623157E308d;
            double d17 = Double.MAX_VALUE;
            for (int i = 0; i < carPos.leftMirrorPoints.size(); i++) {
                pos12.setPos(carPos.leftMirrorPoints.get(i)).rotate(pos9, dCos2, -dSin2);
                double d18 = pos12.y;
                if (d18 > d16) {
                    this.leftMirrorInIndex = i;
                    d16 = d18;
                }
                if (d18 < d17) {
                    this.leftMirrorOutIndex = i;
                    d17 = d18;
                }
            }
        }
        if (carPos.rightMirrorPoints != null && (this.rightMirrorInIndex == -1 || this.rightMirrorOutIndex == -1)) {
            Pos pos13 = new Pos();
            double d19 = Double.MAX_VALUE;
            for (int i2 = 0; i2 < carPos.rightMirrorPoints.size(); i2++) {
                pos13.setPos(carPos.rightMirrorPoints.get(i2)).rotate(pos9, dCos2, -dSin2);
                double d20 = pos13.y;
                if (d20 > d15) {
                    this.rightMirrorOutIndex = i2;
                    d15 = d20;
                }
                if (d20 < d19) {
                    this.rightMirrorInIndex = i2;
                    d19 = d20;
                }
            }
        }
        int i3 = this.leftMirrorInIndex;
        if (i3 < 0 || this.rightMirrorInIndex < 0 || carPos.rightMirrorPoints == null || (list = carPos.leftMirrorPoints) == null) {
            carPos.leftMirrorInSide = null;
            carPos.leftMirrorOutSide = null;
            carPos.rightMirrorInSide = null;
            carPos.rightMirrorOutSide = null;
        } else {
            carPos.leftMirrorInSide = list.get(i3);
            carPos.leftMirrorOutSide = carPos.leftMirrorPoints.get(this.leftMirrorOutIndex);
            carPos.rightMirrorInSide = carPos.rightMirrorPoints.get(this.rightMirrorInIndex);
            carPos.rightMirrorOutSide = carPos.rightMirrorPoints.get(this.rightMirrorOutIndex);
        }
        carPos.wheelTouchWidth = this.wheelTouchWidth;
        return carPos;
    }
}
