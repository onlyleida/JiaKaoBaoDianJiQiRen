package cn.mucang.android.jiakaoyi.examk2.rule.cefangtingche;

import cn.mucang.android.jiakaoyi.engine.g.b;
import cn.mucang.android.jiakaoyi.engine.model.Deduct;
import cn.mucang.android.jiakaoyi.engine.processor.exam.ExamProcessor;
import cn.mucang.android.jiakaoyi.engine.processor.exam.step.e.d;
import cn.mucang.android.jiakaoyi.engine.trace.model.DeductExtraData;
import cn.mucang.android.jiakaoyi.examk2.b.a;
import cn.mucang.android.jiakaoyi.examk2.config.K2CeFangTingCheConfig;
import cn.mucang.android.jiakaoyi.hpmap.collision.k2.checker.SubStep;
import cn.mucang.android.jiakaoyi.signal.c.e;

/* JADX INFO: loaded from: classes2.dex */
public class K2_CeFangTingChe_304110_Event extends d<K2CeFangTingCheConfig> {
    private final b timeoutChecker;

    /* JADX WARN: Multi-variable type inference failed */
    public K2_CeFangTingChe_304110_Event(K2CeFangTingCheConfig k2CeFangTingCheConfig, Deduct deduct) {
        super(k2CeFangTingCheConfig, deduct);
        this.timeoutChecker = new b(((Integer) ((K2CeFangTingCheConfig) this.config).p406144.value).intValue());
    }

    @Override // cn.mucang.android.jiakaoyi.engine.processor.exam.step.e.d
    protected DeductExtraData deductExtraData(e eVar, ExamProcessor examProcessor, cn.mucang.android.jiakaoyi.engine.processor.exam.step.b bVar) {
        return ((cn.mucang.android.jiakaoyi.examk2.collision.b) ((a) bVar.f()).f3279a).h(-1, eVar);
    }

    /* JADX WARN: Code duplicated, block: B:18:0x0053  */
    /* JADX WARN: Code duplicated, block: B:32:0x0086  */
    /* JADX WARN: Code duplicated, block: B:34:0x0096  */
    /* JADX WARN: Code duplicated, block: B:39:0x00a9  */
    /* JADX WARN: Code duplicated, block: B:42:0x00b6  */
    /* JADX WARN: Code duplicated, block: B:44:0x00bf  */
    /* JADX WARN: Code duplicated, block: B:45:0x00cd  */
    /* JADX WARN: Code duplicated, block: B:47:0x00d4  */
    /* JADX WARN: Code duplicated, block: B:48:0x00e2  */
    /* JADX WARN: Code duplicated, block: B:50:0x00e9  */
    /* JADX WARN: Code duplicated, block: B:51:0x00f7  */
    /* JADX WARN: Code duplicated, block: B:53:0x00fe  */
    /* JADX WARN: Code duplicated, block: B:54:0x010c  */
    /* JADX WARN: Code duplicated, block: B:56:0x0113  */
    /* JADX WARN: Code duplicated, block: B:57:0x0121  */
    /* JADX WARN: Code duplicated, block: B:59:0x0128  */
    /* JADX WARN: Multi-variable type inference failed */
    @Override // cn.mucang.android.jiakaoyi.engine.processor.exam.step.e.d
    protected boolean handleSuccess(e eVar, ExamProcessor examProcessor, cn.mucang.android.jiakaoyi.engine.processor.exam.step.b bVar) {
        C c;
        C c2;
        a aVar = (a) bVar.f();
        if (((Boolean) ((K2CeFangTingCheConfig) this.config).p406123.value).booleanValue()) {
            C c3 = aVar.f3279a;
            if (((cn.mucang.android.jiakaoyi.examk2.collision.b) c3).r != SubStep.Step4) {
                c = aVar.f3279a;
                if (((cn.mucang.android.jiakaoyi.examk2.collision.b) c).A && !((cn.mucang.android.jiakaoyi.examk2.collision.b) c).C && !((cn.mucang.android.jiakaoyi.examk2.collision.b) c).s && !((cn.mucang.android.jiakaoyi.examk2.collision.b) c).t && !((cn.mucang.android.jiakaoyi.examk2.collision.b) c).B && !((cn.mucang.android.jiakaoyi.examk2.collision.b) c).z) {
                    this.timeoutChecker.b();
                } else {
                    if (((Boolean) ((K2CeFangTingCheConfig) this.config).p406160.value).booleanValue() && ((cn.mucang.android.jiakaoyi.examk2.collision.b) aVar.f3279a).r == SubStep.Step4) {
                        return true;
                    }
                    if (!this.timeoutChecker.e()) {
                        this.timeoutChecker.g();
                    }
                    if (this.timeoutChecker.d()) {
                        c2 = aVar.f3279a;
                        if (((cn.mucang.android.jiakaoyi.examk2.collision.b) c2).A) {
                            ((cn.mucang.android.jiakaoyi.examk2.collision.b) c2).m = ((cn.mucang.android.jiakaoyi.hpmap.a.a.g.b) ((cn.mucang.android.jiakaoyi.examk2.collision.b) c2).o).n;
                        } else if (((cn.mucang.android.jiakaoyi.examk2.collision.b) c2).C) {
                            ((cn.mucang.android.jiakaoyi.examk2.collision.b) c2).m = ((cn.mucang.android.jiakaoyi.hpmap.a.a.g.b) ((cn.mucang.android.jiakaoyi.examk2.collision.b) c2).o).o;
                        } else if (((cn.mucang.android.jiakaoyi.examk2.collision.b) c2).s) {
                            ((cn.mucang.android.jiakaoyi.examk2.collision.b) c2).m = ((cn.mucang.android.jiakaoyi.hpmap.a.a.g.b) ((cn.mucang.android.jiakaoyi.examk2.collision.b) c2).o).m;
                        } else if (((cn.mucang.android.jiakaoyi.examk2.collision.b) c2).t) {
                            ((cn.mucang.android.jiakaoyi.examk2.collision.b) c2).m = ((cn.mucang.android.jiakaoyi.hpmap.a.a.g.b) ((cn.mucang.android.jiakaoyi.examk2.collision.b) c2).o).p;
                        } else if (((cn.mucang.android.jiakaoyi.examk2.collision.b) c2).B) {
                            ((cn.mucang.android.jiakaoyi.examk2.collision.b) c2).m = ((cn.mucang.android.jiakaoyi.hpmap.a.a.g.b) ((cn.mucang.android.jiakaoyi.examk2.collision.b) c2).o).q;
                        } else if (((cn.mucang.android.jiakaoyi.examk2.collision.b) c2).z) {
                            ((cn.mucang.android.jiakaoyi.examk2.collision.b) c2).m = ((cn.mucang.android.jiakaoyi.hpmap.a.a.g.b) ((cn.mucang.android.jiakaoyi.examk2.collision.b) c2).o).r;
                        }
                        return false;
                    }
                }
            } else if (!aVar.f3274e && ((cn.mucang.android.jiakaoyi.examk2.collision.b) c3).z) {
                if (!this.timeoutChecker.e()) {
                    this.timeoutChecker.g();
                }
                if (this.timeoutChecker.d()) {
                    C c4 = aVar.f3279a;
                    ((cn.mucang.android.jiakaoyi.examk2.collision.b) c4).m = ((cn.mucang.android.jiakaoyi.hpmap.a.a.g.b) ((cn.mucang.android.jiakaoyi.examk2.collision.b) c4).o).r;
                    return false;
                }
            }
        } else {
            c = aVar.f3279a;
            if (((cn.mucang.android.jiakaoyi.examk2.collision.b) c).A) {
                if (((Boolean) ((K2CeFangTingCheConfig) this.config).p406160.value).booleanValue()) {
                }
                if (!this.timeoutChecker.e()) {
                    this.timeoutChecker.g();
                }
                if (this.timeoutChecker.d()) {
                    c2 = aVar.f3279a;
                    if (((cn.mucang.android.jiakaoyi.examk2.collision.b) c2).A) {
                        ((cn.mucang.android.jiakaoyi.examk2.collision.b) c2).m = ((cn.mucang.android.jiakaoyi.hpmap.a.a.g.b) ((cn.mucang.android.jiakaoyi.examk2.collision.b) c2).o).n;
                    } else if (((cn.mucang.android.jiakaoyi.examk2.collision.b) c2).C) {
                        ((cn.mucang.android.jiakaoyi.examk2.collision.b) c2).m = ((cn.mucang.android.jiakaoyi.hpmap.a.a.g.b) ((cn.mucang.android.jiakaoyi.examk2.collision.b) c2).o).o;
                    } else if (((cn.mucang.android.jiakaoyi.examk2.collision.b) c2).s) {
                        ((cn.mucang.android.jiakaoyi.examk2.collision.b) c2).m = ((cn.mucang.android.jiakaoyi.hpmap.a.a.g.b) ((cn.mucang.android.jiakaoyi.examk2.collision.b) c2).o).m;
                    } else if (((cn.mucang.android.jiakaoyi.examk2.collision.b) c2).t) {
                        ((cn.mucang.android.jiakaoyi.examk2.collision.b) c2).m = ((cn.mucang.android.jiakaoyi.hpmap.a.a.g.b) ((cn.mucang.android.jiakaoyi.examk2.collision.b) c2).o).p;
                    } else if (((cn.mucang.android.jiakaoyi.examk2.collision.b) c2).B) {
                        ((cn.mucang.android.jiakaoyi.examk2.collision.b) c2).m = ((cn.mucang.android.jiakaoyi.hpmap.a.a.g.b) ((cn.mucang.android.jiakaoyi.examk2.collision.b) c2).o).q;
                    } else if (((cn.mucang.android.jiakaoyi.examk2.collision.b) c2).z) {
                        ((cn.mucang.android.jiakaoyi.examk2.collision.b) c2).m = ((cn.mucang.android.jiakaoyi.hpmap.a.a.g.b) ((cn.mucang.android.jiakaoyi.examk2.collision.b) c2).o).r;
                    }
                    return false;
                }
            } else {
                if (((Boolean) ((K2CeFangTingCheConfig) this.config).p406160.value).booleanValue()) {
                }
                if (!this.timeoutChecker.e()) {
                    this.timeoutChecker.g();
                }
                if (this.timeoutChecker.d()) {
                    c2 = aVar.f3279a;
                    if (((cn.mucang.android.jiakaoyi.examk2.collision.b) c2).A) {
                        ((cn.mucang.android.jiakaoyi.examk2.collision.b) c2).m = ((cn.mucang.android.jiakaoyi.hpmap.a.a.g.b) ((cn.mucang.android.jiakaoyi.examk2.collision.b) c2).o).n;
                    } else if (((cn.mucang.android.jiakaoyi.examk2.collision.b) c2).C) {
                        ((cn.mucang.android.jiakaoyi.examk2.collision.b) c2).m = ((cn.mucang.android.jiakaoyi.hpmap.a.a.g.b) ((cn.mucang.android.jiakaoyi.examk2.collision.b) c2).o).o;
                    } else if (((cn.mucang.android.jiakaoyi.examk2.collision.b) c2).s) {
                        ((cn.mucang.android.jiakaoyi.examk2.collision.b) c2).m = ((cn.mucang.android.jiakaoyi.hpmap.a.a.g.b) ((cn.mucang.android.jiakaoyi.examk2.collision.b) c2).o).m;
                    } else if (((cn.mucang.android.jiakaoyi.examk2.collision.b) c2).t) {
                        ((cn.mucang.android.jiakaoyi.examk2.collision.b) c2).m = ((cn.mucang.android.jiakaoyi.hpmap.a.a.g.b) ((cn.mucang.android.jiakaoyi.examk2.collision.b) c2).o).p;
                    } else if (((cn.mucang.android.jiakaoyi.examk2.collision.b) c2).B) {
                        ((cn.mucang.android.jiakaoyi.examk2.collision.b) c2).m = ((cn.mucang.android.jiakaoyi.hpmap.a.a.g.b) ((cn.mucang.android.jiakaoyi.examk2.collision.b) c2).o).q;
                    } else if (((cn.mucang.android.jiakaoyi.examk2.collision.b) c2).z) {
                        ((cn.mucang.android.jiakaoyi.examk2.collision.b) c2).m = ((cn.mucang.android.jiakaoyi.hpmap.a.a.g.b) ((cn.mucang.android.jiakaoyi.examk2.collision.b) c2).o).r;
                    }
                    return false;
                }
            }
        }
        return true;
    }
}
