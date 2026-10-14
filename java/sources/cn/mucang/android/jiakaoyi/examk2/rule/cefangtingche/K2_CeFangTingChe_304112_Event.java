package cn.mucang.android.jiakaoyi.examk2.rule.cefangtingche;

import cn.mucang.android.jiakaoyi.engine.g.b;
import cn.mucang.android.jiakaoyi.engine.model.Deduct;
import cn.mucang.android.jiakaoyi.engine.processor.exam.ExamProcessor;
import cn.mucang.android.jiakaoyi.engine.processor.exam.step.e.d;
import cn.mucang.android.jiakaoyi.examk2.b.a;
import cn.mucang.android.jiakaoyi.examk2.config.K2CeFangTingCheConfig;
import cn.mucang.android.jiakaoyi.hpmap.collision.k2.checker.SubStep;
import cn.mucang.android.jiakaoyi.signal.c.e;
import com.google.android.exoplayer2.DefaultRenderersFactory;

/* JADX INFO: loaded from: classes2.dex */
public class K2_CeFangTingChe_304112_Event extends d<K2CeFangTingCheConfig> {
    private boolean canDeduct;
    private boolean delayDeduct;
    private boolean firstChangeStep;
    private boolean hasStop;
    private boolean isFirstStop;
    private long startTime;
    private final b timeoutCheck;

    public K2_CeFangTingChe_304112_Event(K2CeFangTingCheConfig k2CeFangTingCheConfig, Deduct deduct) {
        super(k2CeFangTingCheConfig, deduct);
        this.timeoutCheck = new b(DefaultRenderersFactory.DEFAULT_ALLOWED_VIDEO_JOINING_TIME_MS);
        this.canDeduct = true;
        this.isFirstStop = true;
        this.hasStop = false;
        this.firstChangeStep = false;
        this.delayDeduct = false;
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // cn.mucang.android.jiakaoyi.engine.processor.exam.step.e.d
    protected boolean checkConfig() {
        return ((Boolean) ((K2CeFangTingCheConfig) this.config).p406116.value).booleanValue();
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // cn.mucang.android.jiakaoyi.engine.processor.exam.step.e.d
    protected boolean handleSuccess(e eVar, ExamProcessor examProcessor, cn.mucang.android.jiakaoyi.engine.processor.exam.step.b bVar) {
        a aVar = (a) bVar.f();
        if (!((cn.mucang.android.jiakaoyi.examk2.collision.b) aVar.f3279a).T) {
            this.timeoutCheck.b();
        } else {
            if (!((Boolean) ((K2CeFangTingCheConfig) this.config).p406155.value).booleanValue() && ((cn.mucang.android.jiakaoyi.examk2.collision.b) aVar.f3279a).r == SubStep.Step1) {
                return true;
            }
            if (eVar.d().c()) {
                if (((cn.mucang.android.jiakaoyi.examk2.collision.b) aVar.f3279a).r == SubStep.Step1 && eVar.d().F.isForward()) {
                    if (this.startTime == 0 && this.delayDeduct) {
                        this.startTime = examProcessor.i;
                    }
                    if (this.delayDeduct && examProcessor.i - this.startTime >= 1000) {
                        this.delayDeduct = false;
                        this.startTime = 0L;
                        this.timeoutCheck.b();
                        return false;
                    }
                } else if (((cn.mucang.android.jiakaoyi.examk2.collision.b) aVar.f3279a).r != SubStep.Step3 || ((Integer) ((K2CeFangTingCheConfig) this.config).p406156.value).intValue() != 1) {
                    C c = aVar.f3279a;
                    if (((cn.mucang.android.jiakaoyi.examk2.collision.b) c).r == SubStep.Step4 && this.firstChangeStep) {
                        this.delayDeduct = false;
                        this.timeoutCheck.b();
                        this.firstChangeStep = false;
                    } else if (!this.firstChangeStep && ((cn.mucang.android.jiakaoyi.examk2.collision.b) c).r == SubStep.Step2) {
                        this.firstChangeStep = true;
                        this.delayDeduct = false;
                        this.startTime = 0L;
                        this.timeoutCheck.b();
                    }
                } else if (this.delayDeduct && eVar.d().c() && eVar.d().F.isBack() && eVar.d().m.isBack()) {
                    this.delayDeduct = false;
                    this.timeoutCheck.b();
                    return false;
                }
                if (this.hasStop) {
                    this.isFirstStop = false;
                }
                this.canDeduct = true;
            } else {
                if (this.isFirstStop && ((cn.mucang.android.jiakaoyi.examk2.collision.b) aVar.f3279a).r == SubStep.Step3 && ((Integer) ((K2CeFangTingCheConfig) this.config).p406156.value).intValue() == 0) {
                    this.hasStop = true;
                    return true;
                }
                if (((Boolean) ((K2CeFangTingCheConfig) this.config).p406131.value).booleanValue()) {
                    C c2 = aVar.f3279a;
                    if (((cn.mucang.android.jiakaoyi.examk2.collision.b) c2).D && (((cn.mucang.android.jiakaoyi.examk2.collision.b) c2).r == SubStep.Step1 || ((cn.mucang.android.jiakaoyi.examk2.collision.b) c2).r == SubStep.Step2)) {
                        return true;
                    }
                }
                if (!this.timeoutCheck.e() && this.canDeduct) {
                    this.timeoutCheck.g();
                }
                if (this.timeoutCheck.d()) {
                    C c3 = aVar.f3279a;
                    if (((cn.mucang.android.jiakaoyi.examk2.collision.b) c3).r == SubStep.Step1) {
                        this.delayDeduct = true;
                        return true;
                    }
                    if (((cn.mucang.android.jiakaoyi.examk2.collision.b) c3).W && ((Boolean) ((K2CeFangTingCheConfig) this.config).p406143.value).booleanValue() && ((cn.mucang.android.jiakaoyi.examk2.collision.b) aVar.f3279a).r == SubStep.Step3) {
                        this.timeoutCheck.b();
                        return true;
                    }
                    C c4 = aVar.f3279a;
                    if (((cn.mucang.android.jiakaoyi.examk2.collision.b) c4).r == SubStep.Step3 && ((cn.mucang.android.jiakaoyi.examk2.collision.b) c4).v && ((Integer) ((K2CeFangTingCheConfig) this.config).p406156.value).intValue() == 1) {
                        this.delayDeduct = true;
                        return true;
                    }
                    this.timeoutCheck.b();
                    this.canDeduct = false;
                    return false;
                }
            }
        }
        return true;
    }
}
