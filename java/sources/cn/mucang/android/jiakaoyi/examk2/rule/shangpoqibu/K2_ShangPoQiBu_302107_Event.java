package cn.mucang.android.jiakaoyi.examk2.rule.shangpoqibu;

import cn.mucang.android.jiakaoyi.engine.model.Deduct;
import cn.mucang.android.jiakaoyi.engine.processor.exam.ExamProcessor;
import cn.mucang.android.jiakaoyi.engine.processor.exam.step.b;
import cn.mucang.android.jiakaoyi.engine.processor.exam.step.e.d;
import cn.mucang.android.jiakaoyi.examk2.b.k;
import cn.mucang.android.jiakaoyi.examk2.collision.ShangPoChecker;
import cn.mucang.android.jiakaoyi.examk2.config.K2ShangPoQiBuConfig;
import cn.mucang.android.jiakaoyi.hpmap.collision.k2.checker.SubStep;
import cn.mucang.android.jiakaoyi.signal.c.e;
import cn.mucang.android.jiakaoyi.signal.center.model.CarModel;
import cn.mucang.android.jiakaoyi.signal.center.model.Light;

/* JADX INFO: loaded from: classes2.dex */
public class K2_ShangPoQiBu_302107_Event extends d<K2ShangPoQiBuConfig> {
    private long leftLightOnTime;
    private boolean stopped;

    public K2_ShangPoQiBu_302107_Event(K2ShangPoQiBuConfig k2ShangPoQiBuConfig, Deduct deduct) {
        super(k2ShangPoQiBuConfig, deduct);
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // cn.mucang.android.jiakaoyi.engine.processor.exam.step.e.d
    protected boolean handleSuccess(e eVar, ExamProcessor examProcessor, b bVar) {
        k kVar = (k) bVar.f();
        cn.mucang.android.jiakaoyi.signal.c.g.b.c cVarC = eVar.b().c(Light.TurnLeftLight);
        if (((ShangPoChecker) kVar.f3279a).r == SubStep.Step2) {
            this.stopped = true;
            if (cVarC == null || !cVarC.c) {
                this.leftLightOnTime = 0L;
            } else if (this.leftLightOnTime == 0) {
                this.leftLightOnTime = examProcessor.i;
            }
        }
        if (!this.stopped || !eVar.d().c() || eVar.d().F != CarModel.Direction.Forward) {
            return true;
        }
        long j = this.leftLightOnTime;
        if (j <= 0) {
            setDoNotExecute(true);
            return false;
        }
        if (examProcessor.i - j >= ((Integer) ((K2ShangPoQiBuConfig) this.config).p404120.value).intValue() * 1000) {
            setDoNotExecute(true);
            return true;
        }
        this.leftLightOnTime = 0L;
        setDoNotExecute(true);
        return false;
    }
}
