package cn.mucang.android.jiakaoyi.exam.k3.rule.linting;

import cn.mucang.android.jiakaoyi.engine.g.a;
import cn.mucang.android.jiakaoyi.engine.model.Deduct;
import cn.mucang.android.jiakaoyi.engine.processor.exam.ExamProcessor;
import cn.mucang.android.jiakaoyi.engine.processor.exam.step.b;
import cn.mucang.android.jiakaoyi.engine.processor.exam.step.e.d;
import cn.mucang.android.jiakaoyi.exam.k3.config.K3LinTingStepConfig;
import cn.mucang.android.jiakaoyi.signal.c.e;

/* JADX INFO: loaded from: classes2.dex */
@Deprecated
public class K3_LinTing_122111_Event extends d<K3LinTingStepConfig> {
    private final a checker;
    private long startTime;

    public K3_LinTing_122111_Event(K3LinTingStepConfig k3LinTingStepConfig, Deduct deduct) {
        super(k3LinTingStepConfig, deduct);
        this.checker = new a();
        this.startTime = 0L;
    }

    @Override // cn.mucang.android.jiakaoyi.engine.processor.exam.step.e.d
    protected boolean handleSuccess(e eVar, ExamProcessor examProcessor, b bVar) {
        return true;
    }
}
