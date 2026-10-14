package cn.mucang.android.jiakaoyi.examk2.rule.daocheruku;

import cn.mucang.android.jiakaoyi.engine.g.b;
import cn.mucang.android.jiakaoyi.engine.model.Deduct;
import cn.mucang.android.jiakaoyi.engine.processor.exam.ExamProcessor;
import cn.mucang.android.jiakaoyi.engine.processor.exam.step.e.d;
import cn.mucang.android.jiakaoyi.examk2.collision.DaoKuChecker;
import cn.mucang.android.jiakaoyi.examk2.config.K2DaoCheRuKuConfig;
import cn.mucang.android.jiakaoyi.hpmap.collision.k2.checker.SubStep;
import cn.mucang.android.jiakaoyi.signal.c.e;
import cn.mucang.android.jiakaoyi.signal.center.model.CarModel;

/* JADX INFO: loaded from: classes2.dex */
public class K2_DaoCheRuKu_301108_Event extends d<K2DaoCheRuKuConfig> {
    private boolean hasMoveCar;
    private CarModel.Direction lastDirection;
    private final b timeoutCheck;

    /* JADX WARN: Multi-variable type inference failed */
    public K2_DaoCheRuKu_301108_Event(K2DaoCheRuKuConfig k2DaoCheRuKuConfig, Deduct deduct) {
        super(k2DaoCheRuKuConfig, deduct);
        this.timeoutCheck = new b(((Integer) ((K2DaoCheRuKuConfig) this.config).p402120.value).intValue());
        this.lastDirection = CarModel.Direction.None;
        this.hasMoveCar = true;
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // cn.mucang.android.jiakaoyi.engine.processor.exam.step.e.d
    protected boolean checkConfig() {
        return ((Boolean) ((K2DaoCheRuKuConfig) this.config).p402124.value).booleanValue();
    }

    @Override // cn.mucang.android.jiakaoyi.engine.processor.exam.step.e.d
    protected boolean handleSuccess(e eVar, ExamProcessor examProcessor, cn.mucang.android.jiakaoyi.engine.processor.exam.step.b bVar) {
        cn.mucang.android.jiakaoyi.examk2.b.b bVar2 = (cn.mucang.android.jiakaoyi.examk2.b.b) bVar.f();
        if (this.lastDirection != eVar.d().F && eVar.d().F != CarModel.Direction.Stop) {
            this.lastDirection = eVar.d().F;
        }
        C c = bVar2.f3279a;
        if (!((DaoKuChecker) c).z || ((DaoKuChecker) c).H) {
            this.timeoutCheck.b();
        } else {
            if (!((DaoKuChecker) c).f3695f) {
                this.hasMoveCar = true;
                this.timeoutCheck.b();
            } else {
                if (((DaoKuChecker) c).r == SubStep.Step6 && ((DaoKuChecker) c).a0 != DaoKuChecker.ToucheLineState.Step3) {
                    return true;
                }
                if (!this.timeoutCheck.e() && this.hasMoveCar) {
                    this.timeoutCheck.g();
                }
            }
            if (this.timeoutCheck.e() && this.lastDirection == CarModel.Direction.Forward) {
                C c2 = bVar2.f3279a;
                if ((((DaoKuChecker) c2).r == SubStep.Step3 || ((DaoKuChecker) c2).r == SubStep.Step4 || ((DaoKuChecker) c2).r == SubStep.Step6 || ((DaoKuChecker) c2).r == SubStep.Step7) && this.timeoutCheck.d()) {
                    this.timeoutCheck.b();
                    this.hasMoveCar = false;
                    return false;
                }
            }
        }
        return true;
    }

    @Override // cn.mucang.android.jiakaoyi.engine.processor.exam.step.e.a
    protected void initArgs(e eVar, ExamProcessor examProcessor, cn.mucang.android.jiakaoyi.engine.processor.exam.step.b bVar) {
        super.initArgs(eVar, examProcessor, bVar);
    }
}
