package cn.mucang.android.jiakaoyi.exam.k3.rule.qibu;

import cn.mucang.android.jiakaoyi.engine.model.Deduct;
import cn.mucang.android.jiakaoyi.engine.processor.exam.ExamProcessor;
import cn.mucang.android.jiakaoyi.engine.processor.exam.step.b;
import cn.mucang.android.jiakaoyi.engine.processor.exam.step.e.d;
import cn.mucang.android.jiakaoyi.exam.k3.config.K3QiBuStepConfig;
import cn.mucang.android.jiakaoyi.exam.k3.data.QiBuStepData;
import cn.mucang.android.jiakaoyi.signal.c.e;
import cn.mucang.android.jiakaoyi.signal.center.model.Light;

/* JADX INFO: loaded from: classes2.dex */
public class K3_QiBu_103106_Event extends d<K3QiBuStepConfig> {
    private boolean hadTurnLeftLight;

    public K3_QiBu_103106_Event(K3QiBuStepConfig k3QiBuStepConfig, Deduct deduct) {
        super(k3QiBuStepConfig, deduct);
    }

    @Override // cn.mucang.android.jiakaoyi.engine.processor.exam.step.e.d
    protected boolean handleSuccess(e eVar, ExamProcessor examProcessor, b bVar) {
        QiBuStepData qiBuStepData = (QiBuStepData) bVar.f();
        if (eVar.d().j(Light.TurnLeftLight)) {
            this.hadTurnLeftLight = true;
        }
        if (!qiBuStepData.isCarOn || !eVar.d().c()) {
            return true;
        }
        setDoNotExecute(true);
        return this.hadTurnLeftLight;
    }
}
