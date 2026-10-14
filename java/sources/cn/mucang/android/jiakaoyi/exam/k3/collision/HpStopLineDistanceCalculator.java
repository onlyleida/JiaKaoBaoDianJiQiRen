package cn.mucang.android.jiakaoyi.exam.k3.collision;

import cn.mucang.android.jiakaoyi.engine.processor.exam.ExamProcessor;
import cn.mucang.android.jiakaoyi.hpmap.model.Line;
import cn.mucang.android.jiakaoyi.k3collect.collision.K3CollisionModel;
import cn.mucang.android.jiakaoyi.k3collect.collision.impl.k;
import cn.mucang.android.jiakaoyi.signal.c.e;
import cn.mucang.android.jiakaoyi.signal.center.model.CarPos;
import cn.mucang.android.jiakaoyi.signal.pos.Pos;
import cn.mucang.android.jiakaoyi.signal.pos.c;
import java.util.Iterator;
import java.util.List;

/* JADX INFO: loaded from: classes2.dex */
public class HpStopLineDistanceCalculator extends K3HpChecker {
    private final List<K3CollisionModel> stopLineModels;
    private volatile double distance = Double.MAX_VALUE;
    private final Object lock = new Object();
    private volatile long frameTime = 0;

    public HpStopLineDistanceCalculator(List<K3CollisionModel> list) {
        this.stopLineModels = list;
    }

    private double distanceToStopLine(e eVar, ExamProcessor examProcessor) {
        CarPos carPosC = eVar.c();
        Pos posVectorTo = carPosC.back.vectorTo(carPosC.front);
        double dMin = Double.MAX_VALUE;
        if (this.stopLineModels.size() > 0) {
            Iterator<K3CollisionModel> it = this.stopLineModels.iterator();
            while (it.hasNext()) {
                k kVar = (k) it.next();
                Line line = kVar.f3925f;
                Pos pos = kVar.f3923d.start;
                if (cn.mucang.android.jiakaoyi.hpmap.a.b.a.o(carPosC, line.middle())) {
                    double dModel = pos.vectorTo(line.start).model();
                    Pos posVectorTo2 = line.start.vectorTo(line.end);
                    double dAcos = (Math.acos(posVectorTo.dot(posVectorTo2) / (posVectorTo.model() * posVectorTo2.model())) * 180.0d) / 3.141592653589793d;
                    if (dAcos > 75.0d && dAcos < 105.0d) {
                        c cVar = carPosC.carRect;
                        dMin = Math.min(Math.min(dMin, cn.mucang.android.jiakaoyi.k3collect.collision.a.f(cVar.b, line.start, line.end)), cn.mucang.android.jiakaoyi.k3collect.collision.a.f(cVar.c, line.start, line.end)) - dModel;
                    }
                }
            }
        }
        return dMin;
    }

    public double calculate(e eVar, ExamProcessor examProcessor) {
        if (eVar.d().L - this.frameTime > 1000) {
            this.distance = Double.MAX_VALUE;
        }
        if (eVar.d().M != 3) {
            return this.distance;
        }
        synchronized (this.lock) {
            if (this.frameTime == eVar.d().L) {
                return this.distance;
            }
            this.distance = distanceToStopLine(eVar, examProcessor);
            this.frameTime = eVar.d().L;
            return this.distance;
        }
    }

    @Override // cn.mucang.android.jiakaoyi.exam.k3.collision.K3HpChecker
    protected boolean calculateResult(e eVar, ExamProcessor examProcessor, boolean z) {
        return false;
    }

    @Override // cn.mucang.android.jiakaoyi.exam.k3.collision.K3HpChecker
    protected boolean isEmpty() {
        List<K3CollisionModel> list = this.stopLineModels;
        return list == null || list.isEmpty();
    }
}
