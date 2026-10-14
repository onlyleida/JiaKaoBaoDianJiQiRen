package cn.mucang.android.jiakaoyi.exam.k3.data;

import cn.mucang.android.jiakaoyi.engine.processor.exam.ExamProcessor;
import cn.mucang.android.jiakaoyi.engine.trace.w;
import cn.mucang.android.jiakaoyi.exam.k3.collision.K3CollisionManager;
import cn.mucang.android.jiakaoyi.exam.k3.config.K3ZhiXianStepConfig;
import cn.mucang.android.jiakaoyi.exam.k3.helper.HpZhiXianDistanceChecker;
import cn.mucang.android.jiakaoyi.exam.k3.helper.LineOffsetDistance;
import cn.mucang.android.jiakaoyi.exam.k3.helper.OffsetCalculator;
import cn.mucang.android.jiakaoyi.framework.bus.LiveBus;
import cn.mucang.android.jiakaoyi.signal.c.e;
import cn.mucang.android.jiakaoyi.signal.utils.d;
import com.amap.api.maps.model.BitmapDescriptorFactory;
import java.util.Iterator;
import java.util.LinkedList;

/* JADX INFO: loaded from: classes2.dex */
public class ZhiXianStateData extends K3BaseStepData<K3ZhiXianStepConfig> {
    private LinkedList<Float> angles;
    public double currentDistance;
    public double diffAngle;
    public boolean hasStart;
    private HpZhiXianDistanceChecker hpZhiXianDistanceChecker;
    private double initSideDis;
    private boolean isInit;
    public double lastAngle;
    public double lastCalDistance;
    private final OffsetCalculator offset;
    public double offsetDistance;
    public float startZhiXianAngel;

    public ZhiXianStateData(K3ZhiXianStepConfig k3ZhiXianStepConfig) {
        super(k3ZhiXianStepConfig);
        this.hasStart = false;
        this.offset = new OffsetCalculator(10);
        this.isInit = false;
        this.initSideDis = 0.0d;
        this.angles = new LinkedList<>();
        this.hpZhiXianDistanceChecker = new HpZhiXianDistanceChecker(k3ZhiXianStepConfig);
    }

    /* JADX WARN: Multi-variable type inference failed */
    private void newZhiXianDistance(e eVar, cn.mucang.android.jiakaoyi.engine.processor.exam.step.b bVar) {
        if (K3CollisionManager.getInstance().hasHpCollision(eVar) && !((Boolean) ((K3ZhiXianStepConfig) this.config).p204122.value).booleanValue()) {
            if (eVar.d().h()) {
                this.hpZhiXianDistanceChecker.check(eVar, bVar);
                HpZhiXianDistanceChecker hpZhiXianDistanceChecker = this.hpZhiXianDistanceChecker;
                this.hasStart = hpZhiXianDistanceChecker.hasStart;
                this.offsetDistance = hpZhiXianDistanceChecker.offsetDistance;
                this.diffAngle = hpZhiXianDistanceChecker.diffAngle;
                this.startZhiXianAngel = this.startAngel;
                postResult(bVar);
                return;
            }
            return;
        }
        if (eVar.d().k()) {
            float fC = d.c(eVar.d().D);
            if (((Boolean) ((K3ZhiXianStepConfig) this.config).p204122.value).booleanValue()) {
                fC = d.c(eVar.d().E);
            }
            float fOnSignalFrame = this.offset.onSignalFrame(eVar, fC);
            boolean zHasStart = this.offset.hasStart();
            this.hasStart = zHasStart;
            if (!zHasStart) {
                this.diffAngle = 0.0d;
            } else {
                if (!this.isInit) {
                    this.isInit = true;
                    float startAngel = this.offset.getStartAngel();
                    this.startZhiXianAngel = startAngel;
                    if (Math.abs(d.c(fC - startAngel)) > 1.0f) {
                        this.startZhiXianAngel = fC;
                        return;
                    }
                    return;
                }
                double dC = d.c(fC - this.startZhiXianAngel);
                this.diffAngle = dC;
                double d2 = ((double) fOnSignalFrame) - this.lastCalDistance;
                if (dC < -0.2d) {
                    if (fC <= this.lastAngle) {
                        this.offsetDistance += d2;
                    }
                } else if (dC > 0.2d && fC >= this.lastAngle) {
                    this.offsetDistance += d2;
                }
            }
            this.lastCalDistance = fOnSignalFrame;
            this.lastAngle = fC;
            postResult(bVar);
        }
    }

    private void postResult(cn.mucang.android.jiakaoyi.engine.processor.exam.step.b bVar) {
        this.diffAngle = trim((float) this.diffAngle);
        if (!bVar.l() || bVar.j() || !this.hasStart) {
            w.g("");
            return;
        }
        w.g("偏移距离：" + w.n(this.offsetDistance * 100.0d) + "cm，偏移角度：" + w.n(this.diffAngle) + "°");
        LiveBus.c(new LineOffsetDistance(this.offsetDistance, this.diffAngle, this.currentDistance));
    }

    private float trim(float f2) {
        this.angles.addFirst(Float.valueOf(f2));
        if (this.angles.size() >= 7) {
            if (this.angles.size() > 7) {
                this.angles.removeLast();
            }
            return (((((((this.angles.get(0).floatValue() * 32.0f) + (this.angles.get(1).floatValue() * 15.0f)) + (this.angles.get(2).floatValue() * 3.0f)) - (this.angles.get(3).floatValue() * 4.0f)) - (this.angles.get(4).floatValue() * 6.0f)) - (this.angles.get(5).floatValue() * 3.0f)) + (this.angles.get(6).floatValue() * 5.0f)) / 42.0f;
        }
        float fFloatValue = BitmapDescriptorFactory.HUE_RED;
        Iterator<Float> it = this.angles.iterator();
        while (it.hasNext()) {
            fFloatValue += it.next().floatValue();
        }
        return fFloatValue / this.angles.size();
    }

    @Override // cn.mucang.android.jiakaoyi.engine.processor.exam.step.d
    public void beforeStart(e eVar, cn.mucang.android.jiakaoyi.engine.processor.exam.step.b bVar, ExamProcessor examProcessor) {
        super.beforeStart(eVar, bVar, examProcessor);
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // cn.mucang.android.jiakaoyi.exam.k3.data.K3BaseStepData, cn.mucang.android.jiakaoyi.engine.processor.exam.step.d
    public void onChange(e eVar, cn.mucang.android.jiakaoyi.engine.processor.exam.step.b bVar, ExamProcessor examProcessor) {
        super.onChange(eVar, bVar, examProcessor);
        this.currentDistance = ((Integer) ((K3ZhiXianStepConfig) this.config).p204109.value).intValue() + (eVar.d().C - this.startEstimateDistance);
        newZhiXianDistance(eVar, bVar);
    }
}
