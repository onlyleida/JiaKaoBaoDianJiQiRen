package cn.mucang.android.jiakaoyi.teachingk2.rule.daocheruku;

import cn.mucang.android.jiakaoyi.engine.config.SimpleTeachingConfig;
import cn.mucang.android.jiakaoyi.engine.model.Deduct;
import cn.mucang.android.jiakaoyi.engine.processor.exam.ExamProcessor;
import cn.mucang.android.jiakaoyi.engine.processor.exam.step.b;
import cn.mucang.android.jiakaoyi.engine.processor.exam.step.e.d;
import cn.mucang.android.jiakaoyi.engine.trace.model.DeductExtraData;
import cn.mucang.android.jiakaoyi.hpmap.collision.k2.checker.SubStep;
import cn.mucang.android.jiakaoyi.signal.c.e;
import cn.mucang.android.jiakaoyi.teachingk2.s0.c;

/* JADX INFO: loaded from: classes4.dex */
public class Teach_DaoCheRuKu_11004_Event extends d<SimpleTeachingConfig> {
    private boolean hasLeaveLine;

    public Teach_DaoCheRuKu_11004_Event(SimpleTeachingConfig simpleTeachingConfig, Deduct deduct) {
        super(simpleTeachingConfig, deduct);
        this.hasLeaveLine = false;
    }

    @Override // cn.mucang.android.jiakaoyi.engine.processor.exam.step.e.d
    protected DeductExtraData deductExtraData(e eVar, ExamProcessor examProcessor, b bVar) {
        return ((c) ((cn.mucang.android.jiakaoyi.teachingk2.y0.b.b) bVar.f()).f8776a).h(-1, eVar);
    }

    @Override // cn.mucang.android.jiakaoyi.engine.processor.exam.step.e.d
    protected boolean handleSuccess(e eVar, ExamProcessor examProcessor, b bVar) {
        cn.mucang.android.jiakaoyi.teachingk2.y0.b.b bVar2 = (cn.mucang.android.jiakaoyi.teachingk2.y0.b.b) bVar.f();
        if (!this.hasLeaveLine) {
            C c = bVar2.f8776a;
            if (((c) c).r == SubStep.Step1 && ((c) c).I == 3) {
                if (((c) c).H) {
                    this.hasLeaveLine = true;
                }
                return true;
            }
        }
        C c2 = bVar2.f8776a;
        if (((c) c2).r == SubStep.Step5 && ((c) c2).u) {
            return true;
        }
        return !((c) c2).t;
    }

    @Override // cn.mucang.android.jiakaoyi.engine.processor.exam.step.e.a
    protected void initArgs(e eVar, ExamProcessor examProcessor, b bVar) {
        super.initArgs(eVar, examProcessor, bVar);
    }
}
