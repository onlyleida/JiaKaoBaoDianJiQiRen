package cn.mucang.jiakaoyi.uilib.gear.entity;

import cn.mucang.android.jiakaoyi.framework.log.f;
import cn.mucang.android.jiakaoyi.signal.gearsensor.GearPose;
import cn.mucang.android.jiakaoyi.signal.pos.Pos;
import java.util.ArrayList;
import java.util.List;
import kotlin.Metadata;
import kotlin.jvm.internal.r;
import kotlin.y.c;

/* JADX INFO: loaded from: classes5.dex */
@Metadata(d1 = {"\u0000\u0018\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0000\u001a\u000e\u0010\u0000\u001a\u00020\u00012\u0006\u0010\u0002\u001a\u00020\u0003\u001a\u0012\u0010\u0004\u001a\n\u0012\u0004\u0012\u00020\u0003\u0018\u00010\u0005*\u00020\u0006¨\u0006\u0007"}, d2 = {"convert", "Lcn/mucang/jiakaoyi/uilib/gear/entity/GearTrack;", "gearPose", "Lcn/mucang/android/jiakaoyi/signal/gearsensor/GearPose;", "convertGearPoses", "", "Lcn/mucang/jiakaoyi/uilib/gear/entity/GearEntity;", "uilib_release"}, k = 2, mv = {1, 5, 1}, xi = 48)
public final class a {
    public static final GearTrack a(GearPose gearPose) {
        r.e(gearPose, "gearPose");
        GearTrack gearTrack = new GearTrack();
        gearTrack.setGear(Integer.valueOf(gearPose.gear));
        ArrayList arrayList = new ArrayList();
        gearTrack.setPoints(arrayList);
        Point point = new Point();
        point.setDr(Float.valueOf(-gearPose.roll));
        point.setDp(Float.valueOf(-gearPose.pitch));
        arrayList.add(point);
        List<Pos> list = gearPose.points;
        if (list != null) {
            for (Pos pos : list) {
                Point point2 = new Point();
                point2.setDr(Float.valueOf(-((float) pos.x)));
                point2.setDp(Float.valueOf(-((float) pos.y)));
                arrayList.add(point2);
            }
        }
        return gearTrack;
    }

    public static final List<GearPose> b(GearEntity gearEntity) {
        r.e(gearEntity, "<this>");
        List<GearTrack> gearTracks = gearEntity.getGearTracks();
        if (gearTracks == null) {
            return null;
        }
        ArrayList arrayList = new ArrayList();
        for (GearTrack gearTrack : gearTracks) {
            if (gearTrack.getGear() == null || gearTrack.getPoints() == null) {
                f.o(" gear or points 是null 数据有问题 ");
                return null;
            }
            GearPose gearPose = new GearPose();
            arrayList.add(gearPose);
            Integer gear = gearTrack.getGear();
            r.c(gear);
            if (gear.intValue() == 6) {
                gearPose.gear = 10;
            } else {
                Integer gear2 = gearTrack.getGear();
                r.c(gear2);
                gearPose.gear = gear2.intValue();
            }
            int i = 0;
            List<Point> points = gearTrack.getPoints();
            r.c(points);
            int size = points.size();
            if (size > 0) {
                while (true) {
                    int i2 = i + 1;
                    List<Point> points2 = gearTrack.getPoints();
                    r.c(points2);
                    Point point = points2.get(i);
                    if (point.getDr() == null || point.getDp() == null) {
                        f.o(" dr or dp 是null 数据有问题 ");
                        return null;
                    }
                    Float dr = point.getDr();
                    r.c(dr);
                    float f2 = 100;
                    double dB = ((double) c.b((-dr.floatValue()) * f2)) / 100.0d;
                    Float dp = point.getDp();
                    r.c(dp);
                    double dB2 = ((double) c.b((-dp.floatValue()) * f2)) / 100.0d;
                    if (i == 0) {
                        gearPose.roll = (float) dB;
                        gearPose.pitch = (float) dB2;
                        gearPose.points = new ArrayList();
                    } else {
                        List<Pos> list = gearPose.points;
                        if (list != null) {
                            list.add(new Pos(dB, dB2));
                        }
                    }
                    if (i2 >= size) {
                        break;
                    }
                    i = i2;
                }
            }
        }
        return arrayList;
    }
}
