package cn.mucang.android.jiakaoyi.examk2.rule.quka;

import cn.mucang.android.jiakaoyi.engine.model.Deduct;
import cn.mucang.android.jiakaoyi.engine.processor.exam.ExamProcessor;
import cn.mucang.android.jiakaoyi.engine.processor.exam.step.b;
import cn.mucang.android.jiakaoyi.engine.processor.exam.step.e.d;
import cn.mucang.android.jiakaoyi.examk2.b.i;
import cn.mucang.android.jiakaoyi.examk2.collision.f;
import cn.mucang.android.jiakaoyi.examk2.config.K2QuKaConfig;
import cn.mucang.android.jiakaoyi.hpmap.collision.k2.checker.SubStep;
import cn.mucang.android.jiakaoyi.signal.c.e;

/* JADX INFO: loaded from: classes2.dex */
public class K2_QuKa_307101_Event extends d<K2QuKaConfig> {
    private boolean isHandbrakeOpen;

    public K2_QuKa_307101_Event(K2QuKaConfig k2QuKaConfig, Deduct deduct) {
        super(k2QuKaConfig, deduct);
        this.isHandbrakeOpen = false;
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // cn.mucang.android.jiakaoyi.engine.processor.exam.step.e.d
    protected boolean checkConfig() {
        return ((Boolean) ((K2QuKaConfig) this.config).p407109.value).booleanValue();
    }

    @Override // cn.mucang.android.jiakaoyi.engine.processor.exam.step.e.d
    protected boolean handleSuccess(e eVar, ExamProcessor examProcessor, b bVar) {
        i iVar = (i) bVar.f();
        if (((f) iVar.f3279a).r == SubStep.Step2) {
            if (!this.isHandbrakeOpen && !eVar.d().f5268f) {
                this.isHandbrakeOpen = true;
            }
            if (((f) iVar.f3279a).y) {
                setDoNotExecute(true);
                return this.isHandbrakeOpen;
            }
        }
        C c = iVar.f3279a;
        if (((f) c).r != SubStep.Step3 || !((f) c).z) {
            return true;
        }
        setDoNotExecute(true);
        return this.isHandbrakeOpen;
    }
}
