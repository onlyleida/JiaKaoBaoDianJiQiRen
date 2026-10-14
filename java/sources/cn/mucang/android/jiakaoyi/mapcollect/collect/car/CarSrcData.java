package cn.mucang.android.jiakaoyi.mapcollect.collect.car;

import cn.mucang.android.core.utils.g;
import cn.mucang.android.jiakaoyi.framework.utils.AppUtils;
import cn.mucang.android.jiakaoyi.hpmap.car.CarData;
import cn.mucang.android.jiakaoyi.hpmap.car.RelatePos;
import cn.mucang.android.jiakaoyi.mapcollect.collect.data.SourceData;
import cn.mucang.android.jiakaoyi.signal.gps.GpsAnalysis;
import cn.mucang.android.jiakaoyi.signal.pos.Gps;
import cn.mucang.android.jiakaoyi.signal.pos.Pos;
import java.io.Serializable;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Comparator;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;

/* JADX INFO: loaded from: classes3.dex */
public class CarSrcData implements Serializable, SourceData<CarSrcData> {
    public static final int CAR_TYPE = -99;
    private static final double Radius = 1.5915494309189535d;
    public static double carHeight;
    public double backDistance;
    public Map<Integer, Gps> carPoints;
    public double frontDistance;
    public double leftBackWidth;
    public double leftFrontWidth;
    public Map<Integer, Gps> leftMirrorPoints;
    public Gps mainPoint;
    public double mainPosDegree;
    public double mainPosDistance;
    public double mainPosHeight;
    public String name;
    public double pitch;
    public double rightBackWidth;
    public double rightFrontWidth;
    public Map<Integer, Gps> rightMirrorPoints;
    public Gps wheelLeftBack;
    public Gps wheelLeftFront;
    public Gps wheelRightBack;
    public Gps wheelRightFront;
    public double leftFrontOffset = 0.0d;
    public double leftBackOffset = 0.0d;
    public double rightFrontOffset = 0.0d;
    public double rightBackOffset = 0.0d;
    public int stepId = stepId();
    public long time = System.currentTimeMillis();

    public CarSrcData() {
        this.leftFrontWidth = AppUtils.l() ? 20.5d : 18.5d;
        this.rightFrontWidth = AppUtils.l() ? 20.5d : 18.5d;
        this.leftBackWidth = AppUtils.l() ? 47.0d : 18.5d;
        this.rightBackWidth = AppUtils.l() ? 47.0d : 18.5d;
    }

    private static CarData transform(CarSrcData carSrcData, cn.mucang.android.jiakaoyi.signal.i.a aVar) {
        CarData carData = new CarData();
        double d2 = 1.0d;
        carData.backFrontDistance = carSrcData.mainPosDistance * 1.0d * 100.0d;
        double d3 = carSrcData.mainPosHeight;
        carData.mainPosHeight = d3;
        carHeight = d3;
        Pos posA = aVar.a(carSrcData.mainPoint);
        double radians = Math.toRadians(cn.mucang.android.jiakaoyi.signal.utils.d.c((float) carSrcData.mainPosDegree));
        carData.carPoints = new HashMap();
        ArrayList arrayList = new ArrayList(carSrcData.carPoints.keySet());
        Collections.sort(arrayList, new Comparator() { // from class: cn.mucang.android.jiakaoyi.mapcollect.collect.car.c
            @Override // java.util.Comparator
            public final int compare(Object obj, Object obj2) {
                return ((Integer) obj).compareTo((Integer) obj2);
            }
        });
        ArrayList arrayList2 = new ArrayList();
        Iterator it = arrayList.iterator();
        while (it.hasNext()) {
            Gps gps = carSrcData.carPoints.get(Integer.valueOf(((Integer) it.next()).intValue()));
            if (gps != null) {
                arrayList2.add(aVar.a(gps));
            }
        }
        List<Pos> listH = cn.mucang.android.jiakaoyi.hpmap.d.a.H(arrayList2, Radius, true);
        int i = 0;
        while (i < listH.size()) {
            Pos pos = listH.get(i);
            carData.carPoints.put(Integer.valueOf(i), new RelatePos(pos.distanceTo(posA) * d2, posA.angleTo(pos) - radians));
            i++;
            listH = listH;
            d2 = 1.0d;
        }
        if (g.e(carSrcData.leftMirrorPoints)) {
            carData.leftMirrorPoints = new HashMap();
            ArrayList arrayList3 = new ArrayList(carSrcData.leftMirrorPoints.keySet());
            Collections.sort(arrayList3, new Comparator() { // from class: cn.mucang.android.jiakaoyi.mapcollect.collect.car.c
                @Override // java.util.Comparator
                public final int compare(Object obj, Object obj2) {
                    return ((Integer) obj).compareTo((Integer) obj2);
                }
            });
            ArrayList arrayList4 = new ArrayList();
            Iterator it2 = arrayList3.iterator();
            while (it2.hasNext()) {
                Gps gps2 = carSrcData.leftMirrorPoints.get(Integer.valueOf(((Integer) it2.next()).intValue()));
                if (gps2 != null) {
                    arrayList4.add(aVar.a(gps2));
                }
            }
            List<Pos> listH2 = cn.mucang.android.jiakaoyi.hpmap.d.a.H(arrayList4, 2.5915494309189535d, true);
            for (int i2 = 0; i2 < listH2.size(); i2++) {
                Pos pos2 = listH2.get(i2);
                carData.leftMirrorPoints.put(Integer.valueOf(i2), new RelatePos(pos2.distanceTo(posA) * 1.0d, posA.angleTo(pos2) - radians));
            }
        }
        if (g.e(carSrcData.rightMirrorPoints)) {
            carData.rightMirrorPoints = new HashMap();
            ArrayList arrayList5 = new ArrayList(carSrcData.rightMirrorPoints.keySet());
            Collections.sort(arrayList5, new Comparator() { // from class: cn.mucang.android.jiakaoyi.mapcollect.collect.car.c
                @Override // java.util.Comparator
                public final int compare(Object obj, Object obj2) {
                    return ((Integer) obj).compareTo((Integer) obj2);
                }
            });
            ArrayList arrayList6 = new ArrayList();
            Iterator it3 = arrayList5.iterator();
            while (it3.hasNext()) {
                Gps gps3 = carSrcData.rightMirrorPoints.get(Integer.valueOf(((Integer) it3.next()).intValue()));
                if (gps3 != null) {
                    arrayList6.add(aVar.a(gps3));
                }
            }
            List<Pos> listH3 = cn.mucang.android.jiakaoyi.hpmap.d.a.H(arrayList6, 2.5915494309189535d, true);
            for (int i3 = 0; i3 < listH3.size(); i3++) {
                Pos pos3 = listH3.get(i3);
                carData.rightMirrorPoints.put(Integer.valueOf(i3), new RelatePos(pos3.distanceTo(posA) * 1.0d, posA.angleTo(pos3) - radians));
            }
        }
        Pos posA2 = aVar.a(carSrcData.wheelLeftFront);
        Pos posA3 = aVar.a(carSrcData.wheelLeftBack);
        Pos posA4 = aVar.a(carSrcData.wheelRightFront);
        Pos posA5 = aVar.a(carSrcData.wheelRightBack);
        cn.mucang.android.jiakaoyi.signal.gps.c.l(carSrcData.mainPosDegree - Math.toDegrees(new Pos(posA3).meanWith(posA5).angleTo(new Pos(posA4).meanWith(posA2))));
        Pos posT = cn.mucang.android.jiakaoyi.hpmap.d.a.t(posA2, posA4, Radius - carSrcData.leftFrontOffset);
        Pos posT2 = cn.mucang.android.jiakaoyi.hpmap.d.a.t(posA3, posA5, Radius - carSrcData.leftBackOffset);
        Pos posT3 = cn.mucang.android.jiakaoyi.hpmap.d.a.t(posA4, posT, Radius - carSrcData.rightFrontOffset);
        Pos posT4 = cn.mucang.android.jiakaoyi.hpmap.d.a.t(posA5, posT2, Radius - carSrcData.rightBackOffset);
        Pos posT5 = cn.mucang.android.jiakaoyi.hpmap.d.a.t(posT, posT3, carSrcData.leftFrontWidth);
        Pos posT6 = cn.mucang.android.jiakaoyi.hpmap.d.a.t(posT2, posT4, carSrcData.leftBackWidth);
        Pos posT7 = cn.mucang.android.jiakaoyi.hpmap.d.a.t(posT3, posT, carSrcData.rightFrontWidth);
        Pos posT8 = cn.mucang.android.jiakaoyi.hpmap.d.a.t(posT4, posT2, carSrcData.rightBackWidth);
        carData.wheelLeftFront = trimWheelOffset(posA, posT, radians, 1.0d);
        carData.wheelLeftBack = trimWheelOffset(posA, posT2, radians, 1.0d);
        carData.wheelRightFront = trimWheelOffset(posA, posT3, radians, 1.0d);
        carData.wheelRightBack = trimWheelOffset(posA, posT4, radians, 1.0d);
        carData.wheelLeftFrontInner = trimWheelOffset(posA, posT5, radians, 1.0d);
        carData.wheelLeftBackInner = trimWheelOffset(posA, posT6, radians, 1.0d);
        carData.wheelRightFrontInner = trimWheelOffset(posA, posT7, radians, 1.0d);
        carData.wheelRightBackInner = trimWheelOffset(posA, posT8, radians, 1.0d);
        carData.antennaAngle = carSrcData.pitch - Math.toDegrees(new Pos(posT).meanWith(posT3).angleToInZ(new Pos(posT2).meanWith(posT4)));
        return carData;
    }

    private static Pos trimPos(Pos pos, Pos pos2, Pos pos3, Pos pos4) {
        Pos posE = cn.mucang.android.jiakaoyi.hpmap.d.a.e(pos, pos2, pos3, -1.5915494309189535d);
        return pos2.vectorTo(posE).dot(pos2.vectorTo(pos4)) >= 0.0d ? posE : cn.mucang.android.jiakaoyi.hpmap.d.a.e(pos, pos2, pos3, Radius);
    }

    private static RelatePos trimWheelOffset(Pos pos, Pos pos2, double d2, double d3) {
        return new RelatePos(pos2.distanceTo(pos) * d3, pos.angleTo(pos2) - d2);
    }

    @Override // cn.mucang.android.jiakaoyi.mapcollect.collect.data.SourceData
    public boolean canTurnOrientation() {
        return false;
    }

    @Override // cn.mucang.android.jiakaoyi.mapcollect.collect.data.SourceData
    public cn.mucang.android.jiakaoyi.hpmap.a.a.b createCollision(cn.mucang.android.jiakaoyi.signal.i.a aVar, String str) {
        return null;
    }

    @Override // cn.mucang.android.jiakaoyi.mapcollect.collect.data.SourceData
    public String createKey() {
        return "";
    }

    public CarData generateCarData() {
        GpsAnalysis.f().q(this.mainPosDistance);
        return transform(this, new cn.mucang.android.jiakaoyi.signal.i.b(this.mainPoint));
    }

    @Override // cn.mucang.android.jiakaoyi.mapcollect.collect.data.SourceData
    public String getName() {
        return this.name;
    }

    @Override // cn.mucang.android.jiakaoyi.mapcollect.collect.data.SourceData
    public long getTime() {
        return this.time;
    }

    @Override // cn.mucang.android.jiakaoyi.mapcollect.collect.data.SourceData
    public Gps giveOnePointToCalZero() {
        return this.mainPoint;
    }

    @Override // cn.mucang.android.jiakaoyi.mapcollect.collect.data.SourceData
    public void setName(String str) {
        this.name = str;
    }

    @Override // cn.mucang.android.jiakaoyi.mapcollect.collect.data.SourceData
    public void setTime(long j) {
        this.time = j;
    }

    @Override // cn.mucang.android.jiakaoyi.mapcollect.collect.data.SourceData
    public int stepId() {
        return -99;
    }

    @Override // cn.mucang.android.jiakaoyi.mapcollect.collect.data.SourceData
    public void turnOrientation() {
    }

    @Override // cn.mucang.android.jiakaoyi.mapcollect.collect.data.SourceData
    public CarSrcData copy() {
        CarSrcData carSrcData = new CarSrcData();
        carSrcData.set(this);
        return carSrcData;
    }

    @Override // cn.mucang.android.jiakaoyi.mapcollect.collect.data.SourceData
    public void set(CarSrcData carSrcData) {
        this.mainPosDistance = carSrcData.mainPosDistance;
        this.mainPosDegree = carSrcData.mainPosDegree;
        this.mainPoint = new Gps(carSrcData.mainPoint);
        HashMap map = new HashMap();
        this.carPoints = map;
        map.putAll(carSrcData.carPoints);
        this.wheelLeftFront = new Gps(carSrcData.wheelLeftFront);
        this.wheelLeftBack = new Gps(carSrcData.wheelLeftBack);
        this.wheelRightBack = new Gps(carSrcData.wheelRightBack);
        this.wheelRightFront = new Gps(carSrcData.wheelRightFront);
        this.name = carSrcData.name;
        this.time = carSrcData.time;
        this.leftBackOffset = carSrcData.leftBackOffset;
        this.leftFrontOffset = carSrcData.leftFrontOffset;
        this.rightBackOffset = carSrcData.rightBackOffset;
        this.rightFrontOffset = carSrcData.rightFrontOffset;
        this.frontDistance = carSrcData.frontDistance;
        this.backDistance = carSrcData.backDistance;
        this.mainPosHeight = carSrcData.mainPosHeight;
        this.leftFrontWidth = carSrcData.leftFrontWidth;
        this.leftBackWidth = carSrcData.leftBackWidth;
        this.rightFrontWidth = carSrcData.rightFrontWidth;
        this.rightBackWidth = carSrcData.rightBackWidth;
        this.pitch = carSrcData.pitch;
        HashMap map2 = new HashMap();
        this.leftMirrorPoints = map2;
        Map<Integer, Gps> map3 = carSrcData.leftMirrorPoints;
        if (map3 != null) {
            map2.putAll(map3);
        }
        HashMap map4 = new HashMap();
        this.rightMirrorPoints = map4;
        Map<Integer, Gps> map5 = carSrcData.rightMirrorPoints;
        if (map5 != null) {
            map4.putAll(map5);
        }
    }
}
