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
public class K2_DaoCheRuKu_301107_Event extends d<K2DaoCheRuKuConfig> {
    private boolean hasMoveCar;
    private boolean isDelay;
    private boolean isPass;
    private CarModel.Direction lastDirection;
    private final b timeoutCheck;

    /* JADX WARN: Multi-variable type inference failed */
    public K2_DaoCheRuKu_301107_Event(K2DaoCheRuKuConfig k2DaoCheRuKuConfig, Deduct deduct) {
        super(k2DaoCheRuKuConfig, deduct);
        this.timeoutCheck = new b(((Integer) ((K2DaoCheRuKuConfig) this.config).p402120.value).intValue());
        this.lastDirection = CarModel.Direction.None;
        this.hasMoveCar = true;
        this.isDelay = false;
        this.isPass = true;
    }

    /* JADX WARN: Code duplicated, block: B:104:0x01c9  */
    /* JADX WARN: Code duplicated, block: B:106:0x01d4  */
    /* JADX WARN: Code duplicated, block: B:110:0x01e0  */
    /* JADX WARN: Multi-variable type inference failed */
    @Override // cn.mucang.android.jiakaoyi.engine.processor.exam.step.e.d
    protected boolean handleSuccess(e eVar, ExamProcessor examProcessor, cn.mucang.android.jiakaoyi.engine.processor.exam.step.b bVar) {
        C c;
        CarModel.Direction direction;
        cn.mucang.android.jiakaoyi.examk2.b.b bVar2 = (cn.mucang.android.jiakaoyi.examk2.b.b) bVar.f();
        C c2 = bVar2.f3279a;
        if (!((DaoKuChecker) c2).y || ((DaoKuChecker) c2).H) {
            this.timeoutCheck.b();
        } else {
            if (!((DaoKuChecker) c2).f3695f) {
                if (((DaoKuChecker) c2).B && (((DaoKuChecker) c2).r == SubStep.Step3 || ((DaoKuChecker) c2).r == SubStep.Step6)) {
                    this.isPass = false;
                }
                if (((DaoKuChecker) c2).r == SubStep.Step5) {
                    this.isPass = true;
                }
                this.hasMoveCar = true;
                if (this.lastDirection != eVar.d().F && eVar.d().F != CarModel.Direction.Stop) {
                    this.lastDirection = eVar.d().F;
                }
                if (!this.isDelay) {
                    this.timeoutCheck.b();
                }
            } else {
                if (((DaoKuChecker) c2).u) {
                    return true;
                }
                if (!((Boolean) ((K2DaoCheRuKuConfig) this.config).p402124.value).booleanValue()) {
                    C c3 = bVar2.f3279a;
                    if (((DaoKuChecker) c3).r == SubStep.Step6 && ((DaoKuChecker) c3).a0 != DaoKuChecker.ToucheLineState.Step3) {
                        return true;
                    }
                }
                if (!((Boolean) ((K2DaoCheRuKuConfig) this.config).p402132.value).booleanValue() && ((Boolean) ((K2DaoCheRuKuConfig) this.config).p402124.value).booleanValue() && ((DaoKuChecker) bVar2.f3279a).B && this.isPass) {
                    return true;
                }
                if (((Boolean) ((K2DaoCheRuKuConfig) this.config).p402130.value).booleanValue()) {
                    C c4 = bVar2.f3279a;
                    if ((((DaoKuChecker) c4).r == SubStep.Step3 || ((DaoKuChecker) c4).r == SubStep.Step6) && ((DaoKuChecker) c4).i0 > 0 && !((DaoKuChecker) c4).h0) {
                        return true;
                    }
                }
                if (this.lastDirection == CarModel.Direction.Back && ((Boolean) ((K2DaoCheRuKuConfig) this.config).p402132.value).booleanValue()) {
                    C c5 = bVar2.f3279a;
                    if ((((DaoKuChecker) c5).r == SubStep.Step3 || ((DaoKuChecker) c5).r == SubStep.Step6) && ((DaoKuChecker) c5).d0) {
                        this.isDelay = true;
                    }
                }
                if (!this.timeoutCheck.e() && this.hasMoveCar) {
                    this.hasMoveCar = false;
                    this.timeoutCheck.g();
                }
            }
            if (this.timeoutCheck.d()) {
                CarModel.Direction direction2 = this.lastDirection;
                if (direction2 == CarModel.Direction.Back || (direction2 == (direction = CarModel.Direction.Forward) && !((DaoKuChecker) bVar2.f3279a).X && ((Boolean) ((K2DaoCheRuKuConfig) this.config).p402128.value).booleanValue() && ((DaoKuChecker) bVar2.f3279a).r == SubStep.Step1)) {
                    c = bVar2.f3279a;
                    if (((DaoKuChecker) c).r != SubStep.Step4 && ((DaoKuChecker) c).r != SubStep.Step7) {
                        if (!this.isDelay && !this.hasMoveCar) {
                            return true;
                        }
                        this.timeoutCheck.b();
                        this.hasMoveCar = false;
                        return false;
                    }
                } else {
                    C c6 = bVar2.f3279a;
                    if (((DaoKuChecker) c6).Y != DaoKuChecker.ToucheLineState.Step3 || (!(((DaoKuChecker) c6).r == SubStep.Step1 || ((DaoKuChecker) c6).r == SubStep.Step2) || ((Boolean) ((K2DaoCheRuKuConfig) this.config).p402134.value).booleanValue())) {
                        C c7 = bVar2.f3279a;
                        if (((((DaoKuChecker) c7).r == SubStep.Step2 && ((DaoKuChecker) c7).b0) || (((DaoKuChecker) c7).r == SubStep.Step5 && ((DaoKuChecker) c7).c0)) && this.lastDirection == direction && ((DaoKuChecker) c7).a0 == DaoKuChecker.ToucheLineState.None) {
                            c = bVar2.f3279a;
                            if (((DaoKuChecker) c).r != SubStep.Step4) {
                                if (!this.isDelay) {
                                }
                                this.timeoutCheck.b();
                                this.hasMoveCar = false;
                                return false;
                            }
                        }
                    } else {
                        c = bVar2.f3279a;
                        if (((DaoKuChecker) c).r != SubStep.Step4) {
                            if (!this.isDelay) {
                            }
                            this.timeoutCheck.b();
                            this.hasMoveCar = false;
                            return false;
                        }
                    }
                }
            }
            if (!((Boolean) ((K2DaoCheRuKuConfig) this.config).p402124.value).booleanValue() && this.timeoutCheck.e() && this.lastDirection == CarModel.Direction.Forward) {
                C c8 = bVar2.f3279a;
                if ((((DaoKuChecker) c8).r == SubStep.Step3 || ((DaoKuChecker) c8).r == SubStep.Step4 || ((DaoKuChecker) c8).r == SubStep.Step6 || ((DaoKuChecker) c8).r == SubStep.Step7) && this.timeoutCheck.d()) {
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
