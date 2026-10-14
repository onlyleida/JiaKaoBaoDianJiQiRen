package cn.mucang.android.jiakaoyi.examk2.rule.cefangtingche;

import cn.mucang.android.jiakaoyi.engine.g.b;
import cn.mucang.android.jiakaoyi.engine.model.Deduct;
import cn.mucang.android.jiakaoyi.engine.processor.exam.ExamProcessor;
import cn.mucang.android.jiakaoyi.engine.processor.exam.step.e.d;
import cn.mucang.android.jiakaoyi.examk2.b.a;
import cn.mucang.android.jiakaoyi.examk2.config.K2CeFangTingCheConfig;
import cn.mucang.android.jiakaoyi.hpmap.collision.k2.checker.SubStep;
import cn.mucang.android.jiakaoyi.signal.c.e;

/* JADX INFO: loaded from: classes2.dex */
public class K2_CeFangTingChe_304125_Event extends d<K2CeFangTingCheConfig> {
    private final b timeoutChecker;

    /* JADX WARN: Multi-variable type inference failed */
    public K2_CeFangTingChe_304125_Event(K2CeFangTingCheConfig k2CeFangTingCheConfig, Deduct deduct) {
        super(k2CeFangTingCheConfig, deduct);
        this.timeoutChecker = new b(((Integer) ((K2CeFangTingCheConfig) this.config).p406149.value).intValue() * 1000);
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // cn.mucang.android.jiakaoyi.engine.processor.exam.step.e.d
    protected boolean checkConfig() {
        return ((Boolean) ((K2CeFangTingCheConfig) this.config).p406137.value).booleanValue();
    }

    @Override // cn.mucang.android.jiakaoyi.engine.processor.exam.step.e.d
    protected boolean handleSuccess(e eVar, ExamProcessor examProcessor, cn.mucang.android.jiakaoyi.engine.processor.exam.step.b bVar) {
        C c = ((a) bVar.f()).f3279a;
        if (((cn.mucang.android.jiakaoyi.examk2.collision.b) c).d0 && ((cn.mucang.android.jiakaoyi.examk2.collision.b) c).r == SubStep.Step3 && ((cn.mucang.android.jiakaoyi.examk2.collision.b) c).f3695f && ((cn.mucang.android.jiakaoyi.examk2.collision.b) c).u) {
            if (!this.timeoutChecker.e()) {
                this.timeoutChecker.g();
            }
            if (this.timeoutChecker.d()) {
                setDoNotExecute(true);
                this.timeoutChecker.b();
                return false;
            }
            if (!eVar.d().f5268f) {
                setDoNotExecute(true);
            }
        } else {
            this.timeoutChecker.b();
            if (this.timeoutChecker.e()) {
                setDoNotExecute(true);
                return false;
            }
        }
        return true;
    }
}
