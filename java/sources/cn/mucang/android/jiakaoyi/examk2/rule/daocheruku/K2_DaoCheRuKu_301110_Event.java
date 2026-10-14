package cn.mucang.android.jiakaoyi.examk2.rule.daocheruku;

import cn.mucang.android.jiakaoyi.engine.g.b;
import cn.mucang.android.jiakaoyi.engine.model.Deduct;
import cn.mucang.android.jiakaoyi.engine.processor.exam.ExamProcessor;
import cn.mucang.android.jiakaoyi.engine.processor.exam.step.e.d;
import cn.mucang.android.jiakaoyi.examk2.collision.DaoKuChecker;
import cn.mucang.android.jiakaoyi.examk2.config.K2DaoCheRuKuConfig;
import cn.mucang.android.jiakaoyi.hpmap.collision.k2.checker.SubStep;
import cn.mucang.android.jiakaoyi.signal.c.e;

/* JADX INFO: loaded from: classes2.dex */
public class K2_DaoCheRuKu_301110_Event extends d<K2DaoCheRuKuConfig> {
    private int dkCount;
    private boolean isRKSuccess;
    private final b stopChecker;

    /* JADX WARN: Multi-variable type inference failed */
    public K2_DaoCheRuKu_301110_Event(K2DaoCheRuKuConfig k2DaoCheRuKuConfig, Deduct deduct) {
        super(k2DaoCheRuKuConfig, deduct);
        this.stopChecker = new b(((Integer) ((K2DaoCheRuKuConfig) this.config).p402112.value).intValue() * 1000);
        this.isRKSuccess = false;
        this.dkCount = 0;
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // cn.mucang.android.jiakaoyi.engine.processor.exam.step.e.d
    protected boolean handleSuccess(e eVar, ExamProcessor examProcessor, cn.mucang.android.jiakaoyi.engine.processor.exam.step.b bVar) {
        cn.mucang.android.jiakaoyi.examk2.b.b bVar2 = (cn.mucang.android.jiakaoyi.examk2.b.b) bVar.f();
        if (bVar.j()) {
            SubStep subStep = ((DaoKuChecker) bVar2.f3279a).r;
            SubStep subStep2 = SubStep.Step7;
            if (subStep == subStep2 && !((Boolean) ((K2DaoCheRuKuConfig) this.config).p402123.value).booleanValue() && this.dkCount >= 2) {
                return true;
            }
            if (((Boolean) ((K2DaoCheRuKuConfig) this.config).p402123.value).booleanValue() && !((DaoKuChecker) bVar2.f3279a).c) {
                setDoNotExecute(true);
                return false;
            }
            C c = bVar2.f3279a;
            if (((DaoKuChecker) c).r != subStep2 || !((DaoKuChecker) c).F || this.dkCount < 2) {
                setDoNotExecute(true);
                return false;
            }
        } else {
            C c2 = bVar2.f3279a;
            if (((DaoKuChecker) c2).r == SubStep.Step4) {
                this.isRKSuccess = false;
            }
            if (this.isRKSuccess || !((DaoKuChecker) c2).d0 || (((DaoKuChecker) c2).r != SubStep.Step3 && ((DaoKuChecker) c2).r != SubStep.Step6)) {
                this.stopChecker.b();
            } else if (eVar.d().c < 0.2d) {
                if (!this.stopChecker.e()) {
                    this.stopChecker.g();
                }
                if (this.stopChecker.d()) {
                    this.stopChecker.b();
                    this.isRKSuccess = true;
                    this.dkCount++;
                    return true;
                }
            }
            if (this.stopChecker.e() && !this.stopChecker.d() && eVar.d().c() && eVar.d().F.isForward()) {
                this.stopChecker.b();
            }
        }
        return true;
    }
}
