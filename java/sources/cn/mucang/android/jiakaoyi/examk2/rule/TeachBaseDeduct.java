package cn.mucang.android.jiakaoyi.examk2.rule;

import cn.mucang.android.jiakaoyi.engine.config.BaseStepConfig;
import cn.mucang.android.jiakaoyi.engine.config.SimpleTeachingConfig;
import cn.mucang.android.jiakaoyi.engine.model.Deduct;
import cn.mucang.android.jiakaoyi.engine.processor.exam.ExamProcessor;
import cn.mucang.android.jiakaoyi.engine.processor.exam.step.e.d;
import cn.mucang.android.jiakaoyi.engine.trace.model.DeductExtraData;
import cn.mucang.android.jiakaoyi.examk2.b.g;
import cn.mucang.android.jiakaoyi.hpmap.collision.k2.checker.b;
import cn.mucang.android.jiakaoyi.signal.c.e;

/* JADX INFO: loaded from: classes2.dex */
public abstract class TeachBaseDeduct<T extends BaseStepConfig, TC extends b<?, SimpleTeachingConfig>> extends d<T> {
    public TeachBaseDeduct(T t, Deduct deduct) {
        super(t, deduct);
    }

    @Override // cn.mucang.android.jiakaoyi.engine.processor.exam.step.e.d
    protected DeductExtraData deductExtraData(e eVar, ExamProcessor examProcessor, cn.mucang.android.jiakaoyi.engine.processor.exam.step.b bVar) {
        b bVarTeachChecker = teachChecker(bVar);
        return bVarTeachChecker != null ? bVarTeachChecker.h(wheel(), eVar) : super.deductExtraData(eVar, examProcessor, bVar);
    }

    @Override // cn.mucang.android.jiakaoyi.engine.processor.exam.step.e.d
    protected boolean handleSuccess(e eVar, ExamProcessor examProcessor, cn.mucang.android.jiakaoyi.engine.processor.exam.step.b bVar) {
        b bVarTeachChecker = teachChecker(bVar);
        if (bVarTeachChecker == null) {
            return true;
        }
        return handleTeachSuccess(eVar, examProcessor, bVar, bVarTeachChecker);
    }

    protected abstract boolean handleTeachSuccess(e eVar, ExamProcessor examProcessor, cn.mucang.android.jiakaoyi.engine.processor.exam.step.b bVar, TC tc);

    protected TC teachChecker(cn.mucang.android.jiakaoyi.engine.processor.exam.step.b bVar) {
        TC tc;
        cn.mucang.android.jiakaoyi.engine.processor.exam.step.d dVarF = bVar.f();
        if ((dVarF instanceof g) && (tc = (TC) ((g) dVarF).f3279a.q) != null) {
            return tc;
        }
        return null;
    }

    protected abstract int wheel();
}
