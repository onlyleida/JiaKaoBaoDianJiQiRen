package cn.mucang.android.jiakaoyi.examk2.rule.global;

import cn.mucang.android.jiakaoyi.engine.model.Deduct;
import cn.mucang.android.jiakaoyi.engine.processor.exam.ExamProcessor;
import cn.mucang.android.jiakaoyi.engine.processor.exam.step.b;
import cn.mucang.android.jiakaoyi.engine.processor.exam.step.e.d;
import cn.mucang.android.jiakaoyi.examk2.config.K2GlobalConfig;
import cn.mucang.android.jiakaoyi.signal.c.e;
import cn.mucang.android.jiakaoyi.signal.center.model.Gear;
import cn.mucang.android.jiakaoyi.signal.center.model.KeyState;

/* JADX INFO: loaded from: classes2.dex */
public class K2_Global_300119_Event extends d<K2GlobalConfig> {
    private boolean canCheck;
    private boolean firstCheck;
    private boolean lastEngineStart;

    public K2_Global_300119_Event(K2GlobalConfig k2GlobalConfig, Deduct deduct) {
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
        if (!this.firstCheck) {
            this.firstCheck = true;
            if (zF && !((Boolean) ((K2GlobalConfig) this.config).p401104.value).booleanValue()) {
                this.lastEngineStart = true;
                return true;
            }
        }
        cn.mucang.android.jiakaoyi.examk2.b.d dVar = (cn.mucang.android.jiakaoyi.examk2.b.d) bVar.f();
        if (this.lastEngineStart || !zF) {
            if (((Boolean) ((K2GlobalConfig) this.config).p401104.value).booleanValue()) {
                boolean z = eVar.d().f5265a > dVar.c;
                this.lastEngineStart = z;
                if (z) {
                    this.canCheck = true;
                }
            } else {
                this.lastEngineStart = zF;
                this.canCheck = true;
            }
        } else if (this.canCheck) {
            this.canCheck = false;
            return eVar.d().m == Gear.GearN || eVar.d().m == Gear.GearP || eVar.d().k;
        }
        return true;
    }

    @Override // cn.mucang.android.jiakaoyi.engine.processor.exam.step.e.a
    protected void initArgs(e eVar, ExamProcessor examProcessor, b bVar) {
        super.initArgs(eVar, examProcessor, bVar);
    }
}
