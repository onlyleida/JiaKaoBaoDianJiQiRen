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
public class K2_CeFangTingChe_304109_Event extends d<K2CeFangTingCheConfig> {
    private final b timeoutChecker;
    private int wheel;

    /* JADX WARN: Multi-variable type inference failed */
    public K2_CeFangTingChe_304109_Event(K2CeFangTingCheConfig k2CeFangTingCheConfig, Deduct deduct) {
        super(k2CeFangTingCheConfig, deduct);
        this.timeoutChecker = new b(((Integer) ((K2CeFangTingCheConfig) this.config).p406144.value).intValue());
        this.wheel = 0;
    }

    @Override // cn.mucang.android.jiakaoyi.engine.processor.exam.step.e.d
    protected DeductExtraData deductExtraData(e eVar, ExamProcessor examProcessor, cn.mucang.android.jiakaoyi.engine.processor.exam.step.b bVar) {
        return ((cn.mucang.android.jiakaoyi.examk2.collision.b) ((a) bVar.f()).f3279a).h(this.wheel, eVar);
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // cn.mucang.android.jiakaoyi.engine.processor.exam.step.e.d
    protected boolean handleSuccess(e eVar, ExamProcessor examProcessor, cn.mucang.android.jiakaoyi.engine.processor.exam.step.b bVar) {
        a aVar = (a) bVar.f();
        C c = aVar.f3279a;
        Wheel wheel = ((cn.mucang.android.jiakaoyi.examk2.collision.b) c).E;
        Wheel wheel2 = Wheel.None;
        if (wheel == wheel2 && ((cn.mucang.android.jiakaoyi.examk2.collision.b) c).J == wheel2) {
            this.timeoutChecker.b();
        } else {
            if (((cn.mucang.android.jiakaoyi.examk2.collision.b) c).E != wheel2 && (aVar.f3273d || aVar.f3275f)) {
                return true;
            }
            if (((Boolean) ((K2CeFangTingCheConfig) this.config).p406124.value).booleanValue()) {
                C c2 = aVar.f3279a;
                if (((cn.mucang.android.jiakaoyi.examk2.collision.b) c2).r == SubStep.Step4 && ((cn.mucang.android.jiakaoyi.examk2.collision.b) c2).E == wheel2) {
                    this.timeoutChecker.b();
                    return true;
                }
            } else if (!((Boolean) ((K2CeFangTingCheConfig) this.config).p406160.value).booleanValue() && ((cn.mucang.android.jiakaoyi.examk2.collision.b) aVar.f3279a).r == SubStep.Step4) {
                return true;
            }
            if (!this.timeoutChecker.e()) {
                this.timeoutChecker.g();
            }
            if (this.timeoutChecker.d()) {
                C c3 = aVar.f3279a;
                if (((cn.mucang.android.jiakaoyi.examk2.collision.b) c3).E == wheel2) {
                    this.wheel = ((cn.mucang.android.jiakaoyi.examk2.collision.b) c3).J.wheel;
                    return false;
                }
                this.wheel = ((cn.mucang.android.jiakaoyi.examk2.collision.b) c3).E.wheel;
                ((cn.mucang.android.jiakaoyi.examk2.collision.b) c3).l = ((cn.mucang.android.jiakaoyi.hpmap.a.a.g.b) ((cn.mucang.android.jiakaoyi.examk2.collision.b) c3).o).r;
                return false;
            }
        }
        return true;
    }
}
