package cn.mucang.android.jiakaoyi.examk2.rule.global;

import cn.mucang.android.jiakaoyi.engine.model.Deduct;
import cn.mucang.android.jiakaoyi.engine.model.Step;
import cn.mucang.android.jiakaoyi.engine.processor.exam.ExamProcessor;
import cn.mucang.android.jiakaoyi.engine.processor.exam.step.b;
import cn.mucang.android.jiakaoyi.engine.processor.exam.step.e.d;
import cn.mucang.android.jiakaoyi.examk2.config.K2GlobalConfig;
import cn.mucang.android.jiakaoyi.signal.c.e;
import cn.mucang.android.jiakaoyi.signal.center.model.KeyState;
import com.google.android.exoplayer2.SimpleExoPlayer;

/* JADX INFO: loaded from: classes2.dex */
public class K2_Global_300108_Event extends d<K2GlobalConfig> {
    private boolean check;
    private long lastDeductTime;
    private KeyState lastState;

    public K2_Global_300108_Event(K2GlobalConfig k2GlobalConfig, Deduct deduct) {
        super(k2GlobalConfig, deduct);
        this.lastState = KeyState.Invalid;
        this.check = false;
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // cn.mucang.android.jiakaoyi.engine.processor.exam.step.e.d
    protected boolean handleSuccess(e eVar, ExamProcessor examProcessor, b bVar) {
        if (examProcessor.v() && examProcessor.s().f3142e == Step.K2_QiDianQuYu) {
            this.check = false;
            return true;
        }
        boolean zF = eVar.d().f();
        if (!this.check && zF) {
            this.check = true;
        }
        if (!this.check || examProcessor.i - this.lastDeductTime <= SimpleExoPlayer.DEFAULT_DETACH_SURFACE_TIMEOUT_MS) {
            return true;
        }
        if (((Boolean) ((K2GlobalConfig) this.config).p401122.value).booleanValue() && !zF) {
            this.lastDeductTime = examProcessor.i;
            this.check = false;
            return false;
        }
        if (eVar.d().p != KeyState.ON) {
            this.lastState = eVar.d().p;
            if (!zF) {
                this.check = false;
            }
            return true;
        }
        if (zF) {
            this.lastState = eVar.d().p;
        } else {
            this.check = false;
        }
        if (this.lastState == KeyState.ACC || examProcessor.w() || zF) {
            return true;
        }
        this.lastDeductTime = examProcessor.i;
        return false;
    }

    @Override // cn.mucang.android.jiakaoyi.engine.processor.exam.step.e.a
    protected void initArgs(e eVar, ExamProcessor examProcessor, b bVar) {
        super.initArgs(eVar, examProcessor, bVar);
    }
}
