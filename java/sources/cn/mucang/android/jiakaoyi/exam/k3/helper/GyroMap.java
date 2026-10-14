package cn.mucang.android.jiakaoyi.exam.k3.helper;

import cn.mucang.android.jiakaoyi.signal.pos.Pos;
import com.amap.api.maps.model.BitmapDescriptorFactory;
import java.util.LinkedList;

/* JADX INFO: loaded from: classes2.dex */
public class GyroMap {
    private final int count;
    private int curvature;
    private LinkedList<Float> distanceList;
    private boolean isInit;
    private Pos last;
    private float lastGyro;
    private float lastSpeed;
    private float lastTime;
    private LinkedList<Pos> points;
    private float startGyro;
    private float totalDistance;

    public GyroMap() {
        this(16);
    }

    public void init() {
        this.isInit = false;
    }

    public boolean isStraight() {
        return this.curvature < 5;
    }

    public int put(float f2, float f3, float f4) {
        if (!this.isInit) {
            this.startGyro = f2;
            this.isInit = true;
            this.lastGyro = BitmapDescriptorFactory.HUE_RED;
            this.lastSpeed = f3;
            this.lastTime = f4;
            this.totalDistance = BitmapDescriptorFactory.HUE_RED;
            this.points.clear();
            Pos pos = new Pos(0.0d, 0.0d);
            this.last = pos;
            this.points.add(new Pos(pos));
            return 0;
        }
        float f5 = f2 - this.startGyro;
        float f6 = (((this.lastSpeed + f3) * 100.0f) / 3.6f) * 0.5f * (f4 - this.lastTime) * 0.001f;
        float f7 = (f5 + this.lastGyro) * 0.5f;
        double d2 = f6;
        double radians = (float) Math.toRadians(f7);
        Pos pos2 = new Pos(this.last.x + (Math.cos(radians) * d2), this.last.y + (d2 * Math.sin(radians)));
        this.points.add(pos2);
        this.distanceList.addLast(Float.valueOf(f6));
        this.totalDistance += f6;
        Pos pos3 = this.points.get(0);
        LinkedList<Pos> linkedList = this.points;
        this.curvature = (int) ((1.0d - (pos3.distanceTo(linkedList.get(linkedList.size() - 1)) / ((double) this.totalDistance))) * 10000.0d);
        if (this.points.size() > this.count) {
            this.points.removeFirst();
            this.totalDistance -= this.distanceList.removeFirst().floatValue();
        }
        this.last.setPos(pos2);
        this.lastGyro = f7;
        this.lastSpeed = f3;
        this.lastTime = f4;
        return this.curvature;
    }

    public GyroMap(int i) {
        this.points = new LinkedList<>();
        this.distanceList = new LinkedList<>();
        this.lastGyro = -1000000.0f;
        this.totalDistance = BitmapDescriptorFactory.HUE_RED;
        this.count = i;
        this.isInit = false;
    }
}
