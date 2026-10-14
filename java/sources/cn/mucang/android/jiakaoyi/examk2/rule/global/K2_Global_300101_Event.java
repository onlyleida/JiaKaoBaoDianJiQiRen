package cn.mucang.android.jiakaoyi.examk2.rule.global;

import cn.mucang.android.jiakaoyi.engine.model.Deduct;
import cn.mucang.android.jiakaoyi.engine.processor.exam.ExamProcessor;
import cn.mucang.android.jiakaoyi.engine.processor.exam.conflict.ConflictSignal;
import cn.mucang.android.jiakaoyi.engine.processor.exam.step.b;
import cn.mucang.android.jiakaoyi.engine.processor.exam.step.e.d;
import cn.mucang.android.jiakaoyi.examk2.config.K2GlobalConfig;
import cn.mucang.android.jiakaoyi.signal.c.e;
import cn.mucang.android.jiakaoyi.signal.center.model.CarModel;

/* JADX INFO: loaded from: classes2.dex */
public class K2_Global_300101_Event extends d<K2GlobalConfig> {
    private float brakeTime;
    private float lastSpeed;
    private float startSpeed;
    private long startTime;

    public K2_Global_300101_Event(K2GlobalConfig k2GlobalConfig, Deduct deduct) {
        super(k2GlobalConfig, deduct);
        this.startSpeed = -1.0f;
        this.startTime = -1L;
        this.lastSpeed = -1.0f;
        this.brakeTime = 1000.0f;
    }

    @Override // cn.mucang.android.jiakaoyi.engine.processor.exam.step.e.d
    protected boolean handleSuccess(e eVar, ExamProcessor examProcessor, b bVar) {
        if (examProcessor.n.b(ConflictSignal.BrakeNotSmooth)) {
            return true;
        }
        CarModel carModelD = eVar.d();
        if (carModelD.f5269g) {
            float f2 = carModelD.c;
            if (f2 < 1.0f) {
                float f3 = this.lastSpeed;
                if (f3 > 1.0f) {
                    double dSqrt = ((double) (((f3 - f2) * 1000.0f) / (examProcessor.i - this.startTime))) / Math.sqrt(f3);
                    this.lastSpeed = carModelD.c;
                    return dSqrt <= 1.45d;
                }
            }
        } else {
            this.startTime = examProcessor.i;
            this.lastSpeed = carModelD.c;
        }
        return true;
    }
}
