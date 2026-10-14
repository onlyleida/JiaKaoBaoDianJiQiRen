package cn.mucang.android.jiakaoyi.examk2.rule.cefangtingche;

import cn.mucang.android.jiakaoyi.engine.g.b;
import cn.mucang.android.jiakaoyi.engine.model.Deduct;
import cn.mucang.android.jiakaoyi.engine.processor.exam.ExamProcessor;
import cn.mucang.android.jiakaoyi.engine.processor.exam.step.e.d;
import cn.mucang.android.jiakaoyi.engine.trace.model.DeductExtraData;
import cn.mucang.android.jiakaoyi.examk2.b.a;
import cn.mucang.android.jiakaoyi.examk2.config.K2CeFangTingCheConfig;
import cn.mucang.android.jiakaoyi.hpmap.car.Wheel;
import cn.mucang.android.jiakaoyi.hpmap.collision.k2.checker.SubStep;
import cn.mucang.android.jiakaoyi.signal.c.e;

/* JADX INFO: loaded from: classes2.dex */
public class K2_CeFangTingChe_304122_Event extends d<K2CeFangTingCheConfig> {
    private boolean canDeduct;
    private final b timeoutChecker;
    private int wheel;

    /* JADX WARN: Multi-variable type inference failed */
    public K2_CeFangTingChe_304122_Event(K2CeFangTingCheConfig k2CeFangTingCheConfig, Deduct deduct) {
        super(k2CeFangTingCheConfig, deduct);
        this.timeoutChecker = new b(((Integer) ((K2CeFangTingCheConfig) this.config).p406144.value).intValue());
        this.wheel = 0;
        this.canDeduct = true;
    }

    @Override // cn.mucang.android.jiakaoyi.engine.processor.exam.step.e.d
    protected DeductExtraData deductExtraData(e eVar, ExamProcessor examProcessor, cn.mucang.android.jiakaoyi.engine.processor.exam.step.b bVar) {
        return ((cn.mucang.android.jiakaoyi.examk2.collision.b) ((a) bVar.f()).f3279a).h(this.wheel, eVar);
    }

    /* JADX WARN: Code duplicated, block: B:24:0x0085  */
    @Override // cn.mucang.android.jiakaoyi.engine.processor.exam.step.e.d
    protected boolean handleSuccess(e eVar, ExamProcessor examProcessor, cn.mucang.android.jiakaoyi.engine.processor.exam.step.b bVar) {
        a aVar = (a) bVar.f();
        if (aVar.f3273d) {
            return true;
        }
        C c = aVar.f3279a;
        if (((cn.mucang.android.jiakaoyi.examk2.collision.b) c).r == SubStep.Step4) {
            Wheel wheel = ((cn.mucang.android.jiakaoyi.examk2.collision.b) c).E;
            Wheel wheel2 = Wheel.None;
            if (wheel == wheel2 && ((cn.mucang.android.jiakaoyi.examk2.collision.b) c).F == wheel2) {
                this.canDeduct = true;
                this.timeoutChecker.b();
            } else if (this.canDeduct) {
                this.timeoutChecker.g();
                if (this.timeoutChecker.e() && this.timeoutChecker.d()) {
                    this.timeoutChecker.b();
                    this.canDeduct = false;
                    C c2 = aVar.f3279a;
                    if (((cn.mucang.android.jiakaoyi.examk2.collision.b) c2).E != wheel2) {
                        this.wheel = ((cn.mucang.android.jiakaoyi.examk2.collision.b) c2).E.wheel;
                        ((cn.mucang.android.jiakaoyi.examk2.collision.b) c2).l = ((cn.mucang.android.jiakaoyi.hpmap.a.a.g.b) ((cn.mucang.android.jiakaoyi.examk2.collision.b) c2).o).r;
                    } else if (((cn.mucang.android.jiakaoyi.examk2.collision.b) c2).F != wheel2) {
                        this.wheel = ((cn.mucang.android.jiakaoyi.examk2.collision.b) c2).F.wheel;
                        ((cn.mucang.android.jiakaoyi.examk2.collision.b) c2).l = ((cn.mucang.android.jiakaoyi.hpmap.a.a.g.b) ((cn.mucang.android.jiakaoyi.examk2.collision.b) c2).o).q;
                    }
                    return false;
                }
            }
        } else {
            this.canDeduct = true;
            this.timeoutChecker.b();
        }
        return true;
    }
}
