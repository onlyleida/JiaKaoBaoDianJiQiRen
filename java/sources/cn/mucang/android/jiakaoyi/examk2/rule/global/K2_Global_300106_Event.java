package cn.mucang.android.jiakaoyi.examk2.rule.global;

import cn.mucang.android.jiakaoyi.engine.model.Deduct;
import cn.mucang.android.jiakaoyi.engine.processor.exam.ExamProcessor;
import cn.mucang.android.jiakaoyi.engine.processor.exam.step.b;
import cn.mucang.android.jiakaoyi.engine.processor.exam.step.e.d;
import cn.mucang.android.jiakaoyi.examk2.config.K2GlobalConfig;
import cn.mucang.android.jiakaoyi.signal.c.e;
import cn.mucang.android.jiakaoyi.signal.center.model.KeyState;

/* JADX INFO: loaded from: classes2.dex */
public class K2_Global_300106_Event extends d<K2GlobalConfig> {
    private long firstTime;
    private boolean lastEngineStart;

    public K2_Global_300106_Event(K2GlobalConfig k2GlobalConfig, Deduct deduct) {
        super(k2GlobalConfig, deduct);
        this.firstTime = -1L;
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // cn.mucang.android.jiakaoyi.engine.processor.exam.step.e.d
    protected boolean handleSuccess(e eVar, ExamProcessor examProcessor, b bVar) {
        cn.mucang.android.jiakaoyi.examk2.b.d dVar = (cn.mucang.android.jiakaoyi.examk2.b.d) bVar.f();
        KeyState keyState = eVar.d().p;
        if (eVar.d().J) {
            keyState = KeyState.Start;
        }
        if (this.lastEngineStart || keyState != KeyState.Start) {
            this.lastEngineStart = eVar.d().f5265a > dVar.c;
            this.firstTime = -1L;
        } else {
            if (this.firstTime == -1) {
                this.firstTime = examProcessor.i;
            }
            if (examProcessor.i - this.firstTime > ((Integer) ((K2GlobalConfig) this.config).p401118.value).intValue() * 1000) {
                this.lastEngineStart = eVar.d().f5265a > dVar.c;
                return false;
            }
        }
        return true;
    }
}
