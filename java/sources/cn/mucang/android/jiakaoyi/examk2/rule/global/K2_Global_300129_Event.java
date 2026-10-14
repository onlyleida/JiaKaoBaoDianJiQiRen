package cn.mucang.android.jiakaoyi.examk2.rule.global;

import cn.mucang.android.jiakaoyi.engine.model.Deduct;
import cn.mucang.android.jiakaoyi.engine.processor.exam.ExamProcessor;
import cn.mucang.android.jiakaoyi.engine.processor.exam.step.b;
import cn.mucang.android.jiakaoyi.engine.processor.exam.step.e.d;
import cn.mucang.android.jiakaoyi.examk2.config.K2GlobalConfig;
import cn.mucang.android.jiakaoyi.signal.c.e;
import cn.mucang.android.jiakaoyi.signal.center.model.KeyState;

/* JADX INFO: loaded from: classes2.dex */
public class K2_Global_300129_Event extends d<K2GlobalConfig> {
    private boolean canCheck;
    private boolean engineStop;

    public K2_Global_300129_Event(K2GlobalConfig k2GlobalConfig, Deduct deduct) {
        super(k2GlobalConfig, deduct);
        this.canCheck = true;
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // cn.mucang.android.jiakaoyi.engine.processor.exam.step.e.d
    protected boolean handleSuccess(e eVar, ExamProcessor examProcessor, b bVar) {
        boolean zF;
        KeyState keyState = eVar.d().p;
        if (eVar.d().J) {
            keyState = KeyState.Start;
        }
        if (((Boolean) ((K2GlobalConfig) this.config).p401104.value).booleanValue()) {
            zF = keyState == KeyState.Start;
        } else {
            zF = eVar.d().f();
        }
        cn.mucang.android.jiakaoyi.examk2.b.d dVar = (cn.mucang.android.jiakaoyi.examk2.b.d) bVar.f();
        if (this.engineStop && zF && this.canCheck) {
            this.canCheck = false;
            if (eVar.d().f5268f) {
                return false;
            }
        }
        if (((Boolean) ((K2GlobalConfig) this.config).p401104.value).booleanValue()) {
            boolean z = eVar.d().f5265a < dVar.c;
            this.engineStop = z;
            if (!z) {
                this.canCheck = true;
            }
        } else {
            this.engineStop = !zF;
        }
        return true;
    }
}
