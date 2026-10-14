package cn.mucang.android.jiakaoyi.examk2.rule.global;

import cn.mucang.android.jiakaoyi.engine.g.b;
import cn.mucang.android.jiakaoyi.engine.model.Deduct;
import cn.mucang.android.jiakaoyi.engine.processor.exam.ExamProcessor;
import cn.mucang.android.jiakaoyi.engine.processor.exam.step.e.d;
import cn.mucang.android.jiakaoyi.examk2.config.K2GlobalConfig;
import cn.mucang.android.jiakaoyi.signal.c.e;

/* JADX INFO: loaded from: classes2.dex */
public class K2_Global_300132_Event extends d<K2GlobalConfig> {
    private final b timeoutChecker;

    public K2_Global_300132_Event(K2GlobalConfig k2GlobalConfig, Deduct deduct) {
        super(k2GlobalConfig, deduct);
        this.timeoutChecker = new b(500L);
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // cn.mucang.android.jiakaoyi.engine.processor.exam.step.e.d
    protected boolean handleSuccess(e eVar, ExamProcessor examProcessor, cn.mucang.android.jiakaoyi.engine.processor.exam.step.b bVar) {
        if (eVar.d().b > ((Integer) ((K2GlobalConfig) this.config).p401166.value).intValue()) {
            this.timeoutChecker.g();
        } else {
            this.timeoutChecker.b();
        }
        return !this.timeoutChecker.d();
    }
}
