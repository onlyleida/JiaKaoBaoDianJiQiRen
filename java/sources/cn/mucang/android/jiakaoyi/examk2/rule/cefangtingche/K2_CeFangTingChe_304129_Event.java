package cn.mucang.android.jiakaoyi.examk2.rule.cefangtingche;

import cn.mucang.android.jiakaoyi.engine.g.b;
import cn.mucang.android.jiakaoyi.engine.model.Deduct;
import cn.mucang.android.jiakaoyi.engine.processor.exam.ExamProcessor;
import cn.mucang.android.jiakaoyi.engine.processor.exam.step.e.d;
import cn.mucang.android.jiakaoyi.engine.trace.model.DeductExtraData;
import cn.mucang.android.jiakaoyi.examk2.b.a;
import cn.mucang.android.jiakaoyi.examk2.config.K2CeFangTingCheConfig;
import cn.mucang.android.jiakaoyi.hpmap.car.Wheel;
import cn.mucang.android.jiakaoyi.signal.c.e;

/* JADX INFO: loaded from: classes2.dex */
public class K2_CeFangTingChe_304129_Event extends d<K2CeFangTingCheConfig> {
    private final b timeoutChecker;
    private int wheel;

    /* JADX WARN: Multi-variable type inference failed */
    public K2_CeFangTingChe_304129_Event(K2CeFangTingCheConfig k2CeFangTingCheConfig, Deduct deduct) {
        super(k2CeFangTingCheConfig, deduct);
        this.timeoutChecker = new b(((Integer) ((K2CeFangTingCheConfig) this.config).p406144.value).intValue());
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
        Wheel wheel = ((cn.mucang.android.jiakaoyi.examk2.collision.b) c).G;
        Wheel wheel2 = Wheel.None;
        if (wheel == wheel2 && ((cn.mucang.android.jiakaoyi.examk2.collision.b) c).H == wheel2 && ((cn.mucang.android.jiakaoyi.examk2.collision.b) c).I == wheel2) {
            this.timeoutChecker.b();
        } else {
            if (!this.timeoutChecker.e()) {
                this.timeoutChecker.g();
            }
            if (this.timeoutChecker.d()) {
                this.timeoutChecker.b();
                setDoNotExecute(true);
                C c2 = aVar.f3279a;
                if (((cn.mucang.android.jiakaoyi.examk2.collision.b) c2).G != wheel2) {
                    this.wheel = ((cn.mucang.android.jiakaoyi.examk2.collision.b) c2).G.wheel;
                    ((cn.mucang.android.jiakaoyi.examk2.collision.b) c2).l = ((cn.mucang.android.jiakaoyi.hpmap.a.a.g.b) ((cn.mucang.android.jiakaoyi.examk2.collision.b) c2).o).o;
                    return false;
                }
                if (((cn.mucang.android.jiakaoyi.examk2.collision.b) c2).H != wheel2) {
                    this.wheel = ((cn.mucang.android.jiakaoyi.examk2.collision.b) c2).H.wheel;
                    ((cn.mucang.android.jiakaoyi.examk2.collision.b) c2).l = ((cn.mucang.android.jiakaoyi.hpmap.a.a.g.b) ((cn.mucang.android.jiakaoyi.examk2.collision.b) c2).o).m;
                    return false;
                }
                if (((cn.mucang.android.jiakaoyi.examk2.collision.b) c2).I == wheel2) {
                    return false;
                }
                this.wheel = ((cn.mucang.android.jiakaoyi.examk2.collision.b) c2).I.wheel;
                ((cn.mucang.android.jiakaoyi.examk2.collision.b) c2).l = ((cn.mucang.android.jiakaoyi.hpmap.a.a.g.b) ((cn.mucang.android.jiakaoyi.examk2.collision.b) c2).o).p;
                return false;
            }
        }
        return true;
    }
}
