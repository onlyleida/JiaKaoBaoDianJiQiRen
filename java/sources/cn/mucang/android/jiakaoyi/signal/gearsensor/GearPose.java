package cn.mucang.android.jiakaoyi.signal.gearsensor;

import cn.mucang.android.core.utils.t;
import cn.mucang.android.jiakaoyi.signal.handle.gear.LineAB;
import cn.mucang.android.jiakaoyi.signal.pos.Pos;
import com.amap.api.maps.model.BitmapDescriptorFactory;
import java.io.Serializable;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

/* JADX INFO: loaded from: classes3.dex */
public class GearPose implements Serializable {
    private static final float MAX = 1000000.0f;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public float f5592a;
    public transient boolean canCalculate;
    public float endRoll;
    public transient float factor;
    public int gear;
    public transient boolean hasCrossMustLine;
    public LineAB line;
    public float pitch;
    public List<Pos> points;
    public float roll;
    public transient GearPose src;
    public float startRoll;
    public float yaw;
    public float minRoll = 360.0f;
    public float maxRoll = -360.0f;
    public float minPitch = 360.0f;
    public float maxPitch = -360.0f;
    public float minYaw = 360.0f;
    public float maxYaw = -360.0f;
    public float width = BitmapDescriptorFactory.HUE_RED;
    public float height = BitmapDescriptorFactory.HUE_RED;
    public float offset = BitmapDescriptorFactory.HUE_RED;

    public void area(double d2, double d3, double d4, double d5, double d6, double d7) {
        double d8;
        if (this.line == null) {
            this.f5592a = MAX;
            this.canCalculate = false;
            return;
        }
        float f2 = this.startRoll;
        if ((d2 - ((double) f2)) * ((double) (f2 - this.endRoll)) >= 0.0d) {
            this.f5592a = MAX;
            this.canCalculate = false;
            return;
        }
        float f3 = this.roll;
        this.canCalculate = (d2 - ((double) ((f2 + f3) * 0.5f))) * (d2 - ((double) f2)) > 0.0d || Math.abs(((double) f3) - d2) < 4.0d;
        float f4 = this.endRoll;
        float f5 = this.startRoll;
        int i = ((double) (f4 - f5)) * (d2 - d4) > 0.0d ? 1 : -1;
        double d9 = f5;
        double d10 = d2 - d9;
        boolean z = (d9 - ((double) f4)) * d10 > 0.0d;
        if (d10 * (d9 - d4) > 0.0d) {
            this.f5592a = 0.001f;
            if (z) {
                this.f5592a = MAX;
                return;
            } else {
                double d11 = d9 - d2;
                d8 = (((d5 - d3) * d11) / d11) + d3;
            }
        } else {
            d9 = d4;
            d8 = d5;
        }
        double y = d3 - ((double) this.line.getY((float) d2));
        double y2 = d8 - ((double) this.line.getY((float) d9));
        double dAbs = Math.abs(y) + Math.abs(y2);
        if (dAbs < 0.001d) {
            this.f5592a += BitmapDescriptorFactory.HUE_RED;
            return;
        }
        double dAbs2 = Math.abs(d2 - d9);
        double d12 = y * y2 >= 0.0d ? dAbs * dAbs2 * 0.5d : (((y * y) + (y2 * y2)) / dAbs) * dAbs2 * 0.5d;
        this.f5592a = (float) (((double) this.f5592a) + (((double) i) * d12));
        t.d("GearPose", "gear=" + this.gear + ",thisArea=" + d12 + ",area=" + this.f5592a);
    }

    public GearPose copyFrom(GearPose gearPose) {
        this.minRoll = gearPose.minRoll;
        this.maxRoll = gearPose.maxRoll;
        this.minPitch = gearPose.minPitch;
        this.maxPitch = gearPose.maxPitch;
        this.minYaw = gearPose.minYaw;
        this.maxYaw = gearPose.maxYaw;
        this.roll = gearPose.roll;
        this.pitch = gearPose.pitch;
        this.yaw = gearPose.yaw;
        this.width = gearPose.width;
        this.height = gearPose.height;
        this.offset = gearPose.offset;
        this.gear = gearPose.gear;
        if (cn.mucang.android.core.utils.g.d(gearPose.points)) {
            this.points = new ArrayList();
            Iterator<Pos> it = gearPose.points.iterator();
            while (it.hasNext()) {
                this.points.add(new Pos(it.next()));
            }
        } else {
            this.points = null;
        }
        return this;
    }

    public float distance(float f2, float f3) {
        float f4 = this.roll - f2;
        float f5 = this.pitch - f3;
        return (float) Math.sqrt((f4 * f4) + (f5 * f5) + BitmapDescriptorFactory.HUE_RED);
    }

    public float distanceSqure(GearPose gearPose) {
        float f2 = this.roll - gearPose.roll;
        float f3 = this.pitch - gearPose.pitch;
        return (f2 * f2) + (f3 * f3);
    }

    public GearPose set(float f2, float f3, float f4) {
        this.roll = f2;
        this.pitch = f3;
        this.yaw = f4;
        if (f2 > this.maxRoll) {
            this.maxRoll = f2;
        }
        if (f2 < this.minRoll) {
            this.minRoll = f2;
        }
        if (f3 > this.maxPitch) {
            this.maxPitch = f3;
        }
        if (f3 < this.minPitch) {
            this.minPitch = f3;
        }
        if (f4 > this.maxYaw) {
            this.maxYaw = f4;
        }
        if (f4 < this.minYaw) {
            this.minYaw = f4;
        }
        return this;
    }

    public void setValue(float f2, float f3, float f4) {
        this.roll = f2;
        this.pitch = f3;
        this.yaw = f4;
        this.factor = 1.0f;
        this.hasCrossMustLine = false;
        this.canCalculate = false;
    }

    public float distance(GearPose gearPose) {
        return distance(gearPose.roll, gearPose.pitch);
    }

    public float area() {
        float fAbs = Math.abs(this.f5592a * this.factor);
        if (fAbs > 1000.0f) {
            return 1000.0f;
        }
        return fAbs;
    }
}
