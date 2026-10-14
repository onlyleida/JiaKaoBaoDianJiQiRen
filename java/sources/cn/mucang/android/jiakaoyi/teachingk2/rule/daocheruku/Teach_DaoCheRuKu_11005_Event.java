package cn.mucang.android.jiakaoyi.teachingk2.rule.daocheruku;

import cn.mucang.android.jiakaoyi.engine.config.SimpleTeachingConfig;
import cn.mucang.android.jiakaoyi.engine.model.Deduct;
import cn.mucang.android.jiakaoyi.engine.processor.exam.ExamProcessor;
import cn.mucang.android.jiakaoyi.engine.processor.exam.step.b;
import cn.mucang.android.jiakaoyi.engine.processor.exam.step.e.d;
import cn.mucang.android.jiakaoyi.hpmap.collision.k2.checker.SubStep;
import cn.mucang.android.jiakaoyi.signal.c.e;
import cn.mucang.android.jiakaoyi.teachingk2.dksingle.SingleType;
import cn.mucang.android.jiakaoyi.teachingk2.s0.c;

/* JADX INFO: loaded from: classes4.dex */
public class Teach_DaoCheRuKu_11005_Event extends d<SimpleTeachingConfig> {
    private SubStep lastStep;

    public Teach_DaoCheRuKu_11005_Event(SimpleTeachingConfig simpleTeachingConfig, Deduct deduct) {
        super(simpleTeachingConfig, deduct);
        this.lastStep = SubStep.None;
    }

    @Override // cn.mucang.android.jiakaoyi.engine.processor.exam.step.e.d
    protected boolean handleSuccess(e eVar, ExamProcessor examProcessor, b bVar) {
        SubStep subStep;
        c cVar = (c) ((cn.mucang.android.jiakaoyi.teachingk2.y0.b.b) bVar.f()).f8776a;
        SingleType singleType = cVar.K;
        if (!(singleType != SingleType.All ? !(singleType != SingleType.Left ? !(singleType == SingleType.Right && this.lastStep == SubStep.Step2 && cVar.r == SubStep.Step5) : !(this.lastStep == SubStep.Step4 && cVar.r == SubStep.Step3)) : ((subStep = this.lastStep) == SubStep.Step2 && cVar.r == SubStep.Step3) || (subStep == SubStep.Step4 && cVar.r == SubStep.Step5)) || cVar.E) {
            this.lastStep = cVar.r;
            return true;
        }
        this.lastStep = SubStep.None;
        return false;
    }

    @Override // cn.mucang.android.jiakaoyi.engine.processor.exam.step.e.a
    protected void initArgs(e eVar, ExamProcessor examProcessor, b bVar) {
        super.initArgs(eVar, examProcessor, bVar);
    }
}
