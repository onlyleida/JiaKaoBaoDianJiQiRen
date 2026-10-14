package cn.mucang.android.jiakaoyi.engine.processor.exam.step.e;

import cn.mucang.android.jiakaoyi.engine.config.BaseStepConfig;
import cn.mucang.android.jiakaoyi.engine.config.param.ExamParam;
import cn.mucang.android.jiakaoyi.engine.model.Deduct;
import cn.mucang.android.jiakaoyi.engine.processor.exam.ExamProcessor;
import cn.mucang.android.jiakaoyi.engine.trace.model.DeductExtraData;
import cn.mucang.android.jiakaoyi.framework.dataprovider.DataProviderRegister;
import cn.mucang.android.jiakaoyi.framework.language.Language;
import cn.mucang.android.jiakaoyi.framework.language.LanguageManager;
import cn.mucang.android.jiakaoyi.framework.tts.AbsTtsDataProvider;
import cn.mucang.android.jiakaoyi.framework.tts.TtsGrade;
import cn.mucang.android.jiakaoyi.framework.tts.TtsManager;

/* JADX INFO: loaded from: classes2.dex */
public abstract class d<T extends BaseStepConfig> extends cn.mucang.android.jiakaoyi.engine.processor.exam.step.e.a {
    protected final T config;
    protected final Deduct deduct;
    private final cn.mucang.android.jiakaoyi.engine.i.e.a count = new cn.mucang.android.jiakaoyi.engine.i.e.a(new a());
    protected boolean doNotExecute = false;
    protected boolean isPlayScore = true;

    class a implements cn.mucang.android.jiakaoyi.engine.i.e.b {
        a() {
        }

        @Override // cn.mucang.android.jiakaoyi.engine.i.e.b
        public boolean trigger(cn.mucang.android.jiakaoyi.signal.c.e eVar, ExamProcessor examProcessor, cn.mucang.android.jiakaoyi.engine.processor.exam.step.b bVar) {
            return !d.this.handleSuccess(eVar, examProcessor, bVar);
        }
    }

    public d(T t, Deduct deduct) {
        this.config = t;
        this.deduct = deduct;
    }

    private boolean needAutoCheck() {
        return this.deduct.needAutoCheck() && checkConfig();
    }

    protected boolean checkConfig() {
        return true;
    }

    protected DeductExtraData deductExtraData(cn.mucang.android.jiakaoyi.signal.c.e eVar, ExamProcessor examProcessor, cn.mucang.android.jiakaoyi.engine.processor.exam.step.b bVar) {
        if (bVar.f() instanceof cn.mucang.android.jiakaoyi.engine.processor.exam.step.a) {
            return ((cn.mucang.android.jiakaoyi.engine.processor.exam.step.a) bVar.f()).a();
        }
        return null;
    }

    protected boolean finishWhenTrigger() {
        return true;
    }

    @Override // cn.mucang.android.jiakaoyi.engine.processor.exam.step.e.a, cn.mucang.android.jiakaoyi.engine.processor.exam.step.e.e
    public f handle(cn.mucang.android.jiakaoyi.signal.c.e eVar, ExamProcessor examProcessor, cn.mucang.android.jiakaoyi.engine.processor.exam.step.b bVar) {
        super.handle(eVar, examProcessor, bVar);
        if (examProcessor.f3104a.p == 1 && !needAutoCheck()) {
            return null;
        }
        if ((examProcessor.f3104a.c() && !this.deduct.supportPracticeMode() && this.deduct.code > 0) || this.doNotExecute || examProcessor.f3104a.k || handleOnce(eVar, examProcessor, bVar)) {
            return null;
        }
        if (this.deduct.deductScore > 0 && examProcessor.f3104a.f3123h && bVar.k()) {
            String str = (this.isPlayScore && LanguageManager.a() == Language.Chinese) ? this.deduct.desc : this.deduct.name;
            cn.mucang.android.jiakaoyi.engine.processor.exam.d dVar = examProcessor.f3104a;
            if (dVar.p == 2) {
                AbsTtsDataProvider absTtsDataProvider = (AbsTtsDataProvider) DataProviderRegister.f3433a.a(AbsTtsDataProvider.class, null);
                if (absTtsDataProvider != null) {
                    absTtsDataProvider.startSpeechLow(str, TtsGrade.TeachDeduct, this.deduct.code);
                } else {
                    TtsManager.A(str, TtsGrade.TeachDeduct, this.deduct.code);
                }
            } else {
                ExamParam examParam = dVar.n;
                if (examParam != null ? examParam.enableTwoChannel() : false) {
                    TtsManager.A(str, TtsGrade.ExamDeduct, this.deduct.code);
                } else {
                    TtsManager.s(str, TtsGrade.ExamDeduct, this.deduct.code);
                }
            }
        }
        return new f(finishWhenTrigger(), this.deduct, examProcessor.f3104a.f3123h, bVar.f3143f, deductExtraData(eVar, examProcessor, bVar));
    }

    protected boolean handleOnce(cn.mucang.android.jiakaoyi.signal.c.e eVar, ExamProcessor examProcessor, cn.mucang.android.jiakaoyi.engine.processor.exam.step.b bVar) {
        return sameEventDeductOnce() ? !this.count.c(eVar, examProcessor, bVar) : handleSuccess(eVar, examProcessor, bVar);
    }

    protected abstract boolean handleSuccess(cn.mucang.android.jiakaoyi.signal.c.e eVar, ExamProcessor examProcessor, cn.mucang.android.jiakaoyi.engine.processor.exam.step.b bVar);

    protected boolean isFinished(ExamProcessor examProcessor) {
        return examProcessor.w();
    }

    protected boolean isTrigger(cn.mucang.android.jiakaoyi.signal.c.e eVar, ExamProcessor examProcessor, cn.mucang.android.jiakaoyi.engine.processor.exam.step.b bVar) {
        return true;
    }

    @Override // cn.mucang.android.jiakaoyi.engine.processor.exam.step.e.e
    public boolean isTrigger(cn.mucang.android.jiakaoyi.signal.c.e eVar, ExamProcessor examProcessor, cn.mucang.android.jiakaoyi.engine.processor.exam.step.b bVar, boolean z) {
        return isTrigger(eVar, examProcessor, bVar);
    }

    protected boolean sameEventDeductOnce() {
        return true;
    }

    protected void setDoNotExecute(boolean z) {
        this.doNotExecute = z;
    }

    public void setPlayScore(boolean z) {
        this.isPlayScore = z;
    }

    public String stepName() {
        return this.deduct.name;
    }
}
