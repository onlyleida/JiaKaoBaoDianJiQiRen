package cn.mucang.android.jiakaoyi.examk2.rule.suidao;

import cn.mucang.android.jiakaoyi.engine.model.Deduct;
import cn.mucang.android.jiakaoyi.engine.processor.exam.ExamProcessor;
import cn.mucang.android.jiakaoyi.engine.processor.exam.step.b;
import cn.mucang.android.jiakaoyi.engine.processor.exam.step.e.d;
import cn.mucang.android.jiakaoyi.examk2.config.K2SuiDaoConfig;
import cn.mucang.android.jiakaoyi.signal.c.e;
import cn.mucang.android.jiakaoyi.signal.center.model.CarModel;
import cn.mucang.android.jiakaoyi.signal.center.model.Light;

/* JADX INFO: loaded from: classes2.dex */
public class K2_SuiDao_312100_Event extends d<K2SuiDaoConfig> {
    private long startTime;

    public K2_SuiDao_312100_Event(K2SuiDaoConfig k2SuiDaoConfig, Deduct deduct) {
        super(k2SuiDaoConfig, deduct);
        this.startTime = 0L;
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // cn.mucang.android.jiakaoyi.engine.processor.exam.step.e.d
    protected boolean checkConfig() {
        return ((Boolean) ((K2SuiDaoConfig) this.config).p412113.value).booleanValue();
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // cn.mucang.android.jiakaoyi.engine.processor.exam.step.e.d
    protected boolean handleSuccess(e eVar, ExamProcessor examProcessor, b bVar) {
        if (this.startTime == 0) {
            this.startTime = examProcessor.i;
        }
        CarModel carModelD = eVar.d();
        if (examProcessor.i - this.startTime > ((Integer) ((K2SuiDaoConfig) this.config).p412114.value).intValue()) {
            setDoNotExecute(true);
        } else if (carModelD.l || carModelD.j(Light.FarLight) || carModelD.j(Light.NearLight)) {
            setDoNotExecute(true);
            return false;
        }
        return true;
    }
}
