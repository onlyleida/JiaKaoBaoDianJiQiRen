package cn.mucang.android.jiakaoyi.examk2.rule.cefangtingche;

import cn.mucang.android.jiakaoyi.engine.model.Deduct;
import cn.mucang.android.jiakaoyi.engine.processor.exam.ExamProcessor;
import cn.mucang.android.jiakaoyi.engine.processor.exam.step.b;
import cn.mucang.android.jiakaoyi.engine.processor.exam.step.e.d;
import cn.mucang.android.jiakaoyi.examk2.b.a;
import cn.mucang.android.jiakaoyi.examk2.config.K2CeFangTingCheConfig;
import cn.mucang.android.jiakaoyi.hpmap.collision.k2.checker.SubStep;
import cn.mucang.android.jiakaoyi.signal.c.e;
import cn.mucang.android.jiakaoyi.signal.utils.c;

/* JADX INFO: loaded from: classes2.dex */
public class K2_CeFangTingChe_304132_Event extends d<K2CeFangTingCheConfig> {
    private final c countFilter;
    private boolean firstChangeStep;
    private boolean hasStop;
    private boolean isFirstStop;
    private long startTime;

    public K2_CeFangTingChe_304132_Event(K2CeFangTingCheConfig k2CeFangTingCheConfig, Deduct deduct) {
        super(k2CeFangTingCheConfig, deduct);
        this.startTime = 0L;
        this.isFirstStop = true;
        this.hasStop = false;
        this.firstChangeStep = false;
        this.countFilter = new c(3);
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // cn.mucang.android.jiakaoyi.engine.processor.exam.step.e.d
    protected boolean checkConfig() {
        return ((Integer) ((K2CeFangTingCheConfig) this.config).p406111.value).intValue() > 0;
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // cn.mucang.android.jiakaoyi.engine.processor.exam.step.e.d
    protected boolean handleSuccess(e eVar, ExamProcessor examProcessor, b bVar) {
        a aVar = (a) bVar.f();
        if (!((cn.mucang.android.jiakaoyi.examk2.collision.b) aVar.f3279a).T) {
            this.startTime = 0L;
        } else {
            if (!((Boolean) ((K2CeFangTingCheConfig) this.config).p406155.value).booleanValue() && ((cn.mucang.android.jiakaoyi.examk2.collision.b) aVar.f3279a).r == SubStep.Step1) {
                return true;
            }
            if (((cn.mucang.android.jiakaoyi.examk2.collision.b) aVar.f3279a).W && ((Boolean) ((K2CeFangTingCheConfig) this.config).p406143.value).booleanValue() && ((cn.mucang.android.jiakaoyi.examk2.collision.b) aVar.f3279a).r == SubStep.Step3) {
                this.startTime = 0L;
                return true;
            }
            if (eVar.d().c()) {
                this.countFilter.b();
                long j = this.startTime;
                if (j != 0 && examProcessor.i - j < ((Integer) ((K2CeFangTingCheConfig) this.config).p406111.value).intValue() * 1000) {
                    if (this.firstChangeStep || ((cn.mucang.android.jiakaoyi.examk2.collision.b) aVar.f3279a).r != SubStep.Step2) {
                        this.startTime = 0L;
                        return false;
                    }
                    this.firstChangeStep = true;
                    this.startTime = 0L;
                    return true;
                }
                if (this.hasStop) {
                    this.isFirstStop = false;
                }
                this.startTime = 0L;
            } else {
                if (this.isFirstStop && ((cn.mucang.android.jiakaoyi.examk2.collision.b) aVar.f3279a).r == SubStep.Step3) {
                    this.hasStop = true;
                    return true;
                }
                if (((Boolean) ((K2CeFangTingCheConfig) this.config).p406131.value).booleanValue()) {
                    C c = aVar.f3279a;
                    if (((cn.mucang.android.jiakaoyi.examk2.collision.b) c).D && (((cn.mucang.android.jiakaoyi.examk2.collision.b) c).r == SubStep.Step1 || ((cn.mucang.android.jiakaoyi.examk2.collision.b) c).r == SubStep.Step2)) {
                        return true;
                    }
                }
                if (this.startTime == 0 && this.countFilter.a(eVar.d().F.isStop())) {
                    this.startTime = examProcessor.i;
                }
            }
        }
        return true;
    }

    @Override // cn.mucang.android.jiakaoyi.engine.processor.exam.step.e.a
    protected void initArgs(e eVar, ExamProcessor examProcessor, b bVar) {
        super.initArgs(eVar, examProcessor, bVar);
    }
}
