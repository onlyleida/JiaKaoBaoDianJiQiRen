package cn.mucang.android.jiakaoyi.exam.k3.helper;

import cn.mucang.android.jiakaoyi.signal.c.e;
import cn.mucang.android.jiakaoyi.signal.center.model.CarModel;
import cn.mucang.android.jiakaoyi.signal.handle.gear.LineAB;
import cn.mucang.android.jiakaoyi.signal.pos.Pos;
import cn.mucang.android.jiakaoyi.signal.utils.d;
import com.amap.api.maps.model.BitmapDescriptorFactory;
import java.util.Iterator;
import java.util.LinkedList;
import java.util.List;

/* JADX INFO: loaded from: classes2.dex */
public class ZhiXianChecker {
    private static final int InValid = -100000;
    private static final long Time = 2000;
    private final CreatePos createPos;
    private LinkedList<Float> latestAngle = new LinkedList<>();
    private LinkedList<Pos> latestPos = new LinkedList<>();
    private LinkedList<Long> latestTime = new LinkedList<>();
    private LineAB line;
    private final float maxFactor;
    private final float maxSpeed;
    private final float minFactor;
    private final float minSpeed;
    private float offset;
    private float startAngle;

    public interface CreatePos {
        Pos from(e eVar);
    }

    public ZhiXianChecker(float f2, float f3, float f4, float f5, CreatePos createPos) {
        this.minFactor = f2;
        this.maxFactor = f3;
        this.minSpeed = f4;
        this.maxSpeed = f5;
        this.createPos = createPos;
        reset();
    }

    private float mean(List<Float> list) {
        Iterator<Float> it = list.iterator();
        double dSin = 0.0d;
        double dCos = 0.0d;
        while (it.hasNext()) {
            double dFloatValue = it.next().floatValue();
            dSin += Math.sin(Math.toRadians(dFloatValue));
            dCos += Math.cos(Math.toRadians(dFloatValue));
        }
        return (float) Math.toDegrees(Math.atan2(dSin / ((double) list.size()), dCos / ((double) list.size())));
    }

    private void onDataChange(long j, float f2, Pos pos, long j2) {
        this.latestTime.addFirst(Long.valueOf(j));
        this.latestAngle.addFirst(Float.valueOf(d.c(f2)));
        this.latestPos.addFirst(pos);
        while (this.latestTime.getFirst().longValue() - this.latestTime.getLast().longValue() > 200 + j2) {
            this.latestTime.removeLast();
            this.latestAngle.removeLast();
            this.latestPos.removeLast();
        }
    }

    public float getStartAngel() {
        return this.startAngle;
    }

    public boolean hasStart() {
        return ((double) Math.abs(this.startAngle - (-100000.0f))) > 0.01d;
    }

    public void onBefore(e eVar) {
        CarModel carModelD = eVar.d();
        Pos posFrom = this.createPos.from(eVar);
        if (posFrom == null) {
            return;
        }
        onDataChange(carModelD.L, carModelD.D, posFrom, 500L);
    }

    public float onSignalFrame(e eVar) {
        float f2;
        CarModel carModelD = eVar.d();
        Pos posFrom = this.createPos.from(eVar);
        if (posFrom == null) {
            return this.offset;
        }
        if (this.line == null) {
            onDataChange(carModelD.L, carModelD.D, posFrom, 2000L);
        }
        if (this.line == null && this.latestPos.size() > 6 && this.latestTime.getFirst().longValue() - this.latestTime.getLast().longValue() >= 1890) {
            this.line = LineAB.calculate(this.latestPos);
            this.startAngle = mean(this.latestAngle);
        }
        LineAB lineAB = this.line;
        if (lineAB != null) {
            float fDistance = lineAB.distance((float) posFrom.x, (float) posFrom.y);
            float f3 = eVar.d().b;
            float f4 = this.minSpeed;
            if (f3 < f4) {
                f2 = this.minFactor;
            } else {
                float f5 = this.maxSpeed;
                if (f3 > f5) {
                    f2 = this.maxFactor;
                } else {
                    float f6 = (f3 - f4) / (f5 - f4);
                    float f7 = this.maxFactor;
                    float f8 = this.minFactor;
                    f2 = (f6 * (f7 - f8)) + f8;
                }
            }
            this.offset = fDistance * f2 * 0.8f;
        }
        return this.offset;
    }

    public void reset() {
        this.latestPos.clear();
        this.latestAngle.clear();
        this.startAngle = -100000.0f;
        this.line = null;
        this.offset = BitmapDescriptorFactory.HUE_RED;
    }
}
