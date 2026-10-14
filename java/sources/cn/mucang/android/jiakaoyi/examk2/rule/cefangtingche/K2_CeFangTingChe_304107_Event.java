package cn.mucang.android.jiakaoyi.examk2.rule.cefangtingche;

import cn.mucang.android.jiakaoyi.engine.model.Deduct;
import cn.mucang.android.jiakaoyi.engine.processor.exam.ExamProcessor;
import cn.mucang.android.jiakaoyi.engine.processor.exam.step.b;
import cn.mucang.android.jiakaoyi.engine.processor.exam.step.e.d;
import cn.mucang.android.jiakaoyi.examk2.b.a;
import cn.mucang.android.jiakaoyi.examk2.config.K2CeFangTingCheConfig;
import cn.mucang.android.jiakaoyi.hpmap.collision.k2.checker.SubStep;
import cn.mucang.android.jiakaoyi.signal.c.e;

/* JADX INFO: loaded from: classes2.dex */
public class K2_CeFangTingChe_304107_Event extends d<K2CeFangTingCheConfig> {
    private boolean hasTouchEndLine;
    private boolean hasValidFront69Line;

    public K2_CeFangTingChe_304107_Event(K2CeFangTingCheConfig k2CeFangTingCheConfig, Deduct deduct) {
        super(k2CeFangTingCheConfig, deduct);
        this.hasValidFront69Line = false;
        this.hasTouchEndLine = false;
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // cn.mucang.android.jiakaoyi.engine.processor.exam.step.e.d
    protected boolean handleSuccess(e eVar, ExamProcessor examProcessor, b bVar) {
        a aVar = (a) bVar.f();
        C c = aVar.f3279a;
        if (((cn.mucang.android.jiakaoyi.examk2.collision.b) c).r == SubStep.Step1 && ((cn.mucang.android.jiakaoyi.examk2.collision.b) c).D) {
            this.hasTouchEndLine = true;
        }
        if (((Boolean) ((K2CeFangTingCheConfig) this.config).p406113.value).booleanValue() && ((cn.mucang.android.jiakaoyi.examk2.collision.b) aVar.f3279a).r == SubStep.Step2) {
            setDoNotExecute(true);
            return ((cn.mucang.android.jiakaoyi.examk2.collision.b) aVar.f3279a).V || this.hasTouchEndLine;
        }
        if (((Boolean) ((K2CeFangTingCheConfig) this.config).p406114.value).booleanValue()) {
            C c2 = aVar.f3279a;
            if (((cn.mucang.android.jiakaoyi.examk2.collision.b) c2).r == SubStep.Step2 && ((cn.mucang.android.jiakaoyi.examk2.collision.b) c2).v && !((cn.mucang.android.jiakaoyi.examk2.collision.b) c2).d0) {
                setDoNotExecute(true);
                return false;
            }
        }
        return true;
    }

    @Override // cn.mucang.android.jiakaoyi.engine.processor.exam.step.e.a
    protected void initArgs(e eVar, ExamProcessor examProcessor, b bVar) {
        super.initArgs(eVar, examProcessor, bVar);
    }
}
