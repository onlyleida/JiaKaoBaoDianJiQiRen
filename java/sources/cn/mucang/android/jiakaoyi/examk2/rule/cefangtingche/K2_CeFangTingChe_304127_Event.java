package cn.mucang.android.jiakaoyi.examk2.rule.cefangtingche;

import cn.mucang.android.jiakaoyi.engine.model.Deduct;
import cn.mucang.android.jiakaoyi.engine.processor.exam.ExamProcessor;
import cn.mucang.android.jiakaoyi.engine.processor.exam.step.b;
import cn.mucang.android.jiakaoyi.engine.processor.exam.step.e.d;
import cn.mucang.android.jiakaoyi.examk2.b.a;
import cn.mucang.android.jiakaoyi.examk2.config.K2CeFangTingCheConfig;
import cn.mucang.android.jiakaoyi.hpmap.collision.k2.checker.SubStep;
import cn.mucang.android.jiakaoyi.signal.c.e;
import cn.mucang.android.jiakaoyi.signal.center.model.CarModel;
import cn.mucang.android.jiakaoyi.signal.center.model.Gear;

/* JADX INFO: loaded from: classes2.dex */
public class K2_CeFangTingChe_304127_Event extends d<K2CeFangTingCheConfig> {
    private int backCount;
    private boolean deduct151;
    private boolean deduct152;
    private boolean deduct153;
    private boolean isMoveCar;

    public K2_CeFangTingChe_304127_Event(K2CeFangTingCheConfig k2CeFangTingCheConfig, Deduct deduct) {
        super(k2CeFangTingCheConfig, deduct);
        this.backCount = 0;
        this.isMoveCar = false;
        this.deduct151 = false;
        this.deduct152 = false;
        this.deduct153 = false;
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // cn.mucang.android.jiakaoyi.engine.processor.exam.step.e.d
    protected boolean handleSuccess(e eVar, ExamProcessor examProcessor, b bVar) {
        a aVar = (a) bVar.f();
        if (((Boolean) ((K2CeFangTingCheConfig) this.config).p406151.value).booleanValue() && !this.deduct151 && ((cn.mucang.android.jiakaoyi.examk2.collision.b) aVar.f3279a).W) {
            if (!this.isMoveCar && eVar.d().c() && eVar.d().m == Gear.GearBack && eVar.d().F == CarModel.Direction.Back) {
                this.isMoveCar = true;
                this.backCount++;
            } else if (((cn.mucang.android.jiakaoyi.examk2.collision.b) aVar.f3279a).f3695f) {
                this.isMoveCar = false;
            }
            if (this.backCount >= 2) {
                this.deduct151 = true;
                return false;
            }
        }
        if (((Boolean) ((K2CeFangTingCheConfig) this.config).p406152.value).booleanValue() && !this.deduct152 && ((cn.mucang.android.jiakaoyi.examk2.collision.b) aVar.f3279a).r == SubStep.Step2 && eVar.d().m.isValid() && eVar.d().m != Gear.GearBack && eVar.d().m != Gear.GearN && eVar.d().F.isForward() && eVar.d().c()) {
            this.deduct152 = true;
            return false;
        }
        if (((Boolean) ((K2CeFangTingCheConfig) this.config).p406153.value).booleanValue() && !this.deduct153) {
            C c = aVar.f3279a;
            if (((cn.mucang.android.jiakaoyi.examk2.collision.b) c).Z != null && ((cn.mucang.android.jiakaoyi.examk2.collision.b) c).Z.booleanValue() && eVar.d().c()) {
                this.deduct153 = true;
                return false;
            }
        }
        return true;
    }
}
