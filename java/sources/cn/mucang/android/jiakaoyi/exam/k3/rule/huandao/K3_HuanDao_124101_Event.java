package cn.mucang.android.jiakaoyi.exam.k3.rule.huandao;

import cn.mucang.android.jiakaoyi.engine.model.Deduct;
import cn.mucang.android.jiakaoyi.engine.processor.exam.ExamProcessor;
import cn.mucang.android.jiakaoyi.engine.processor.exam.step.b;
import cn.mucang.android.jiakaoyi.engine.processor.exam.step.e.d;
import cn.mucang.android.jiakaoyi.exam.k3.config.K3HuanDaoStepConfig;
import cn.mucang.android.jiakaoyi.signal.c.e;

/* JADX INFO: loaded from: classes2.dex */
@Deprecated
public class K3_HuanDao_124101_Event extends d<K3HuanDaoStepConfig> {
    public K3_HuanDao_124101_Event(K3HuanDaoStepConfig k3HuanDaoStepConfig, Deduct deduct) {
        super(k3HuanDaoStepConfig, deduct);
    }

    @Override // cn.mucang.android.jiakaoyi.engine.processor.exam.step.e.d
    protected boolean handleSuccess(e eVar, ExamProcessor examProcessor, b bVar) {
        return true;
    }
}
