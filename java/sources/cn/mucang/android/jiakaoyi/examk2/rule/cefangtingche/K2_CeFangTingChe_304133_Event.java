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
public class K2_CeFangTingChe_304133_Event extends d<K2CeFangTingCheConfig> {
    private final b timeoutChecker;
    private int wheel;

    /* JADX WARN: Multi-variable type inference failed */
    public K2_CeFangTingChe_304133_Event(K2CeFangTingCheConfig k2CeFangTingCheConfig, Deduct deduct) {
        super(k2CeFangTingCheConfig, deduct);
        this.timeoutChecker = new b(((Integer) ((K2CeFangTingCheConfig) this.config).p406108.value).intValue() * 1000);
        this.wheel = 0;
    }

    @Override // cn.mucang.android.jiakaoyi.engine.processor.exam.step.e.d
    protected DeductExtraData deductExtraData(e eVar, ExamProcessor examProcessor, cn.mucang.android.jiakaoyi.engine.processor.exam.step.b bVar) {
        return ((cn.mucang.android.jiakaoyi.examk2.collision.b) ((a) bVar.f()).f3279a).h(this.wheel, eVar);
    }

    @Override // cn.mucang.android.jiakaoyi.engine.processor.exam.step.e.d
    protected boolean handleSuccess(e eVar, ExamProcessor examProcessor, cn.mucang.android.jiakaoyi.engine.processor.exam.step.b bVar) {
        a aVar = (a) bVar.f();
        C c = aVar.f3279a;
        if (((cn.mucang.android.jiakaoyi.examk2.collision.b) c).r == SubStep.Step3 && ((cn.mucang.android.jiakaoyi.examk2.collision.b) c).f3695f) {
            if (!this.timeoutChecker.e()) {
                this.timeoutChecker.g();
            }
            if (this.timeoutChecker.d()) {
                C c2 = aVar.f3279a;
                Wheel wheel = ((cn.mucang.android.jiakaoyi.examk2.collision.b) c2).x;
                Wheel wheel2 = Wheel.None;
                if (wheel != wheel2 || ((cn.mucang.android.jiakaoyi.examk2.collision.b) c2).w != wheel2) {
                    setDoNotExecute(true);
                    this.timeoutChecker.b();
                    C c3 = aVar.f3279a;
                    if (((cn.mucang.android.jiakaoyi.examk2.collision.b) c3).x != wheel2) {
                        this.wheel = ((cn.mucang.android.jiakaoyi.examk2.collision.b) c3).x.wheel;
                        ((cn.mucang.android.jiakaoyi.examk2.collision.b) c3).l = ((cn.mucang.android.jiakaoyi.hpmap.a.a.g.b) ((cn.mucang.android.jiakaoyi.examk2.collision.b) c3).o).k;
                        return false;
                    }
                    if (((cn.mucang.android.jiakaoyi.examk2.collision.b) c3).w == wheel2) {
                        return false;
                    }
                    this.wheel = ((cn.mucang.android.jiakaoyi.examk2.collision.b) c3).w.wheel;
                    ((cn.mucang.android.jiakaoyi.examk2.collision.b) c3).l = ((cn.mucang.android.jiakaoyi.hpmap.a.a.g.b) ((cn.mucang.android.jiakaoyi.examk2.collision.b) c3).o).l;
                    return false;
                }
            }
        } else {
            this.timeoutChecker.b();
        }
        return true;
    }
}
