package cn.mucang.android.jiakaoyi.examk2.rule.daocheruku;

import cn.mucang.android.jiakaoyi.engine.model.Deduct;
import cn.mucang.android.jiakaoyi.engine.processor.exam.ExamProcessor;
import cn.mucang.android.jiakaoyi.engine.processor.exam.step.b;
import cn.mucang.android.jiakaoyi.examk2.config.K2DaoCheRuKuConfig;
import cn.mucang.android.jiakaoyi.examk2.rule.TeachBaseDeduct;
import cn.mucang.android.jiakaoyi.hpmap.car.Wheel;
import cn.mucang.android.jiakaoyi.hpmap.collision.k2.checker.SubStep;
import cn.mucang.android.jiakaoyi.signal.c.e;
import cn.mucang.android.jiakaoyi.teachingk2.s0.c;

/* JADX INFO: loaded from: classes2.dex */
public class K2_DaoCheRuKu_301804_Event extends TeachBaseDeduct<K2DaoCheRuKuConfig, c> {
    private boolean hasLeaveLine;

    public K2_DaoCheRuKu_301804_Event(K2DaoCheRuKuConfig k2DaoCheRuKuConfig, Deduct deduct) {
        super(k2DaoCheRuKuConfig, deduct);
        this.hasLeaveLine = false;
    }

    @Override // cn.mucang.android.jiakaoyi.examk2.rule.TeachBaseDeduct
    protected int wheel() {
        return Wheel.RightFront.wheel;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // cn.mucang.android.jiakaoyi.examk2.rule.TeachBaseDeduct
    public boolean handleTeachSuccess(e eVar, ExamProcessor examProcessor, b bVar, c cVar) {
        if (this.hasLeaveLine || cVar.r != SubStep.Step1 || cVar.I != 3) {
            return (cVar.F && cVar.y == Wheel.RightFront) ? false : true;
        }
        if (cVar.H) {
            this.hasLeaveLine = true;
        }
        return true;
    }
}
