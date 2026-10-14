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
public class K2_SuiDao_312107_Event extends d<K2SuiDaoConfig> {
    public K2_SuiDao_312107_Event(K2SuiDaoConfig k2SuiDaoConfig, Deduct deduct) {
        super(k2SuiDaoConfig, deduct);
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // cn.mucang.android.jiakaoyi.engine.processor.exam.step.e.d
    protected boolean checkConfig() {
        return ((Boolean) ((K2SuiDaoConfig) this.config).p412112.value).booleanValue();
    }

    @Override // cn.mucang.android.jiakaoyi.engine.processor.exam.step.e.d
    protected boolean handleSuccess(e eVar, ExamProcessor examProcessor, b bVar) {
        CarModel carModelD = eVar.d();
        setDoNotExecute(true);
        return (carModelD.j(Light.FarLight) || carModelD.j(Light.NearLight)) ? false : true;
    }
}
