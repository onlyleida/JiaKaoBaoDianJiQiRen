package cn.mucang.android.jiakaoyi.exam.k3.data;

import cn.mucang.android.jiakaoyi.engine.processor.exam.ExamProcessor;
import cn.mucang.android.jiakaoyi.exam.k3.config.K3BianDaoChaoCheStepConfig;
import cn.mucang.android.jiakaoyi.exam.k3.helper.BianDaoChecker;
import cn.mucang.android.jiakaoyi.signal.c.e;

/* JADX INFO: loaded from: classes2.dex */
public class BianDaoChaoCheStateData extends K3BaseStepData<K3BianDaoChaoCheStepConfig> {
    public BianDaoChecker bianDaoChecker;

    public BianDaoChaoCheStateData(K3BianDaoChaoCheStepConfig k3BianDaoChaoCheStepConfig) {
        super(k3BianDaoChaoCheStepConfig);
        this.bianDaoChecker = new BianDaoChecker(k3BianDaoChaoCheStepConfig.p226109, this);
    }

    @Override // cn.mucang.android.jiakaoyi.engine.processor.exam.step.d
    public void beforeStart(e eVar, cn.mucang.android.jiakaoyi.engine.processor.exam.step.b bVar, ExamProcessor examProcessor) {
        super.beforeStart(eVar, bVar, examProcessor);
        this.bianDaoChecker.beforeStart(eVar, bVar, examProcessor);
    }

    @Override // cn.mucang.android.jiakaoyi.exam.k3.data.K3BaseStepData, cn.mucang.android.jiakaoyi.engine.processor.exam.step.d
    public void onChange(e eVar, cn.mucang.android.jiakaoyi.engine.processor.exam.step.b bVar, ExamProcessor examProcessor) {
        super.onChange(eVar, bVar, examProcessor);
        this.bianDaoChecker.check(eVar, bVar, examProcessor);
    }
}
