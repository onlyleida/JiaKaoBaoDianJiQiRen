package cn.mucang.android.jiakaoyi.examk2.rule.global;

import cn.mucang.android.jiakaoyi.engine.g.b;
import cn.mucang.android.jiakaoyi.engine.model.Deduct;
import cn.mucang.android.jiakaoyi.engine.processor.exam.ExamProcessor;
import cn.mucang.android.jiakaoyi.engine.processor.exam.step.e.d;
import cn.mucang.android.jiakaoyi.examk2.config.K2GlobalConfig;
import cn.mucang.android.jiakaoyi.signal.c.e;
import cn.mucang.android.jiakaoyi.signal.center.model.KeyState;

/* JADX INFO: loaded from: classes2.dex */
public class K2_Global_300130_Event extends d<K2GlobalConfig> {
    private boolean noStart;
    private final b timeoutChecker;

    /* JADX WARN: Multi-variable type inference failed */
    public K2_Global_300130_Event(K2GlobalConfig k2GlobalConfig, Deduct deduct) {
        super(k2GlobalConfig, deduct);
        this.timeoutChecker = new b(((Integer) ((K2GlobalConfig) this.config).p401161.value).intValue() * 1000);
        this.noStart = false;
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // cn.mucang.android.jiakaoyi.engine.processor.exam.step.e.d
    protected boolean handleSuccess(e eVar, ExamProcessor examProcessor, cn.mucang.android.jiakaoyi.engine.processor.exam.step.b bVar) {
        boolean zF;
        cn.mucang.android.jiakaoyi.examk2.b.d dVar = (cn.mucang.android.jiakaoyi.examk2.b.d) bVar.f();
        KeyState keyState = eVar.d().p;
        if (eVar.d().J) {
            keyState = KeyState.Start;
        }
        this.timeoutChecker.g();
        if (eVar.d().f5265a < dVar.c) {
            this.noStart = true;
        }
        if (((Boolean) ((K2GlobalConfig) this.config).p401104.value).booleanValue()) {
            zF = keyState == KeyState.Start;
        } else {
            zF = eVar.d().f();
        }
        if (this.timeoutChecker.d()) {
            setDoNotExecute(true);
        } else if (this.noStart && zF) {
            setDoNotExecute(true);
            return false;
        }
        return true;
    }
}
