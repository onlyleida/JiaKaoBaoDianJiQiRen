package cn.mucang.android.jiakaoyi.exam.k3.helper;

import cn.mucang.android.core.utils.t;
import cn.mucang.android.jiakaoyi.framework.log.f;
import cn.mucang.android.jiakaoyi.signal.c.e;
import cn.mucang.android.jiakaoyi.signal.center.model.CarModel;
import com.amap.api.maps.model.BitmapDescriptorFactory;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

/* JADX INFO: loaded from: classes2.dex */
public class OffsetCalculator {
    private static final float GPS_PERCENT = 0.5f;
    private List<Float> angles;
    private final int calculateCount;
    private int count;
    private float factor;
    private float gpsOffset;
    private boolean hasStart;
    private long interval;
    private boolean isInit;
    private float lastAngel;
    private float lastDistance;
    private float lastSpeed;
    private float speedOffset;
    private long st;
    private float startAngle;
    private List<Float> startAngleList;
    private long time;
    private boolean useInterval;

    public OffsetCalculator() {
        this(8);
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

    private float trimDegree(float f2) {
        return ((int) (f2 * 100.0f)) / 100.0f;
    }

    public float getFactor() {
        return this.factor;
    }

    public float getGpsOffset() {
        return this.gpsOffset;
    }

    public long getInterval() {
        return this.interval;
    }

    public float getSpeedOffset() {
        return this.speedOffset;
    }

    public float getStartAngel() {
        return this.startAngle;
    }

    public float getStartAngle() {
        return this.startAngle;
    }

    public boolean hasStart() {
        return this.hasStart;
    }

    public void init() {
        this.count = 0;
        this.isInit = false;
        this.startAngleList.clear();
    }

    public boolean isStart() {
        return this.isInit;
    }

    public boolean isUseInterval() {
        return this.useInterval;
    }

    public float onSignalFrame(e eVar, float f2) {
        CarModel carModelD = eVar.d();
        float fTrimDegree = trimDegree(f2);
        if (this.isInit) {
            this.hasStart = true;
            long j = carModelD.L;
            if (this.useInterval) {
                long j2 = this.interval;
                if (j2 > 0 && j - this.time <= j2) {
                    return Math.abs((this.gpsOffset * 0.5f) + (this.speedOffset * 0.5f)) * this.factor;
                }
            }
            float fSin = (float) (((double) ((((carModelD.b * 0.5f) + (this.lastSpeed * 0.5f)) / 3.6f) * (j - this.time) * 0.001f)) * Math.sin(Math.toRadians(((f2 * 0.5f) + (this.lastAngel * 0.5f)) - this.startAngle)));
            this.speedOffset += fSin;
            this.time = j;
            this.lastAngel = f2;
            this.lastSpeed = carModelD.b;
            t.h("TAG", "直线判断的偏移量 ，GPS : " + this.gpsOffset + "  , 速度积分 : " + this.speedOffset + " , dis : " + fSin);
            return this.speedOffset;
        }
        this.count++;
        this.hasStart = false;
        this.startAngle = fTrimDegree;
        this.startAngleList.add(Float.valueOf(fTrimDegree));
        if (this.count >= this.calculateCount) {
            this.isInit = true;
            this.gpsOffset = BitmapDescriptorFactory.HUE_RED;
            this.speedOffset = BitmapDescriptorFactory.HUE_RED;
            this.lastDistance = carModelD.C;
            this.time = carModelD.L;
            this.lastSpeed = eVar.d().b;
            this.lastAngel = fTrimDegree;
            this.count = 0;
            this.st = 0L;
            int i = this.calculateCount / 2;
            float[] fArr = new float[i];
            fArr[0] = (float) (((double) (-0.5f)) / (1.0d - Math.pow(1.5f, i)));
            for (int i2 = 1; i2 < i; i2++) {
                fArr[i2] = fArr[i2 - 1] * 1.5f;
            }
            this.startAngle = mean(this.startAngleList);
            f.o("startAngleList " + this.startAngleList.toString() + "; startAngle = " + this.startAngle);
            this.startAngleList.clear();
        }
        return BitmapDescriptorFactory.HUE_RED;
    }

    public void setFactor(float f2) {
        this.factor = Math.min(2.0f, Math.max(f2, 0.3f));
    }

    public OffsetCalculator setInterval(long j) {
        this.interval = j;
        return this;
    }

    public OffsetCalculator setUseInterval(boolean z) {
        this.useInterval = z;
        return this;
    }

    public OffsetCalculator(int i) {
        this.isInit = false;
        this.gpsOffset = BitmapDescriptorFactory.HUE_RED;
        this.angles = new ArrayList();
        this.st = 0L;
        this.calculateCount = i % 2 != 0 ? i + 1 : i;
        this.startAngleList = new ArrayList();
        this.useInterval = false;
        this.interval = 500L;
        this.factor = 0.9f;
        this.hasStart = false;
    }

    public OffsetCalculator(float f2, CarModel carModel) {
        this(8);
        this.startAngle = f2;
        this.isInit = true;
        this.gpsOffset = BitmapDescriptorFactory.HUE_RED;
        this.speedOffset = BitmapDescriptorFactory.HUE_RED;
        this.lastDistance = carModel.C;
        this.time = carModel.L;
        this.lastSpeed = carModel.b;
        this.lastAngel = f2;
        this.count = 0;
    }

    public float onSignalFrame(e eVar) {
        return onSignalFrame(eVar, eVar.d().D);
    }
}
