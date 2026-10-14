package cn.mucang.android.jiakaoyi.exam.k3.rule.suidao;

import cn.mucang.android.jiakaoyi.engine.model.Deduct;
import cn.mucang.android.jiakaoyi.engine.processor.exam.ExamProcessor;
import cn.mucang.android.jiakaoyi.engine.processor.exam.step.b;
import cn.mucang.android.jiakaoyi.engine.processor.exam.step.e.d;
import cn.mucang.android.jiakaoyi.exam.k3.config.K3SuiDaoStepConfig;
import cn.mucang.android.jiakaoyi.signal.c.e;
import cn.mucang.android.jiakaoyi.signal.center.model.Light;

/* JADX INFO: loaded from: classes2.dex */
public class K3_SuiDao_119101_Event extends d<K3SuiDaoStepConfig> {
    public K3_SuiDao_119101_Event(K3SuiDaoStepConfig k3SuiDaoStepConfig, Deduct deduct) {
        super(k3SuiDaoStepConfig, deduct);
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // cn.mucang.android.jiakaoyi.engine.processor.exam.step.e.d
    protected boolean checkConfig() {
        return ((Boolean) ((K3SuiDaoStepConfig) this.config).p219104.value).booleanValue();
    }

    @Override // cn.mucang.android.jiakaoyi.engine.processor.exam.step.e.d
    protected boolean handleSuccess(e eVar, ExamProcessor examProcessor, b bVar) {
        if (!eVar.d().j(Light.NearLight)) {
            return !bVar.j();
        }
        setDoNotExecute(true);
        return true;
    }
}
