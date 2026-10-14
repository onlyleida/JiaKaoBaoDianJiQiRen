package cn.mucang.android.jiakaoyi.engine.processor.exam.step;

import cn.mucang.android.jiakaoyi.engine.config.BaseStepConfig;
import cn.mucang.android.jiakaoyi.engine.processor.exam.ExamProcessor;
import cn.mucang.android.jiakaoyi.signal.c.e;
import com.amap.api.maps.model.BitmapDescriptorFactory;
import java.util.Iterator;
import java.util.LinkedList;

/* JADX INFO: loaded from: classes2.dex */
public abstract class d<T extends BaseStepConfig> {
    protected static final int DEFAULT_VALUE = -99999999;
    public T config;
    public int rpmRate;
    public long startTime = -99999999;
    public float startEstimateDistance = -1.0E8f;
    public float startAngel = -1.0E8f;
    private final LinkedList<Float> startAngleList = new LinkedList<>();

    public d(T t) {
        this.config = t;
    }

    private float meanStart() {
        Iterator<Float> it = this.startAngleList.iterator();
        float fFloatValue = BitmapDescriptorFactory.HUE_RED;
        while (it.hasNext()) {
            fFloatValue += it.next().floatValue();
        }
        return fFloatValue / this.startAngleList.size();
    }

    protected int beforeGyroCount() {
        return 4;
    }

    public void beforeStart(e eVar, b bVar, ExamProcessor examProcessor) {
        this.rpmRate = cn.mucang.android.jiakaoyi.signal.gearsensor.e.m(eVar);
        int iBeforeGyroCount = beforeGyroCount();
        this.startAngleList.addLast(Float.valueOf(eVar.d().D));
        if (this.startAngleList.size() > iBeforeGyroCount) {
            this.startAngleList.removeFirst();
        }
    }

    public void onChange(e eVar, b bVar, ExamProcessor examProcessor) {
        this.rpmRate = cn.mucang.android.jiakaoyi.signal.gearsensor.e.m(eVar);
        if (this.startTime == -99999999) {
            this.startTime = examProcessor.i;
        }
        if (Math.abs(this.startEstimateDistance - (-1.0E8f)) < 0.001d) {
            this.startEstimateDistance = eVar.d().C;
        }
        if (Math.abs(this.startAngel - (-1.0E8f)) < 0.001d) {
            this.startAngleList.add(Float.valueOf(eVar.d().D));
            this.startAngel = meanStart();
        }
    }
}
