package f.a.a.c.a.b;

import cn.mucang.android.jiakaoyi.engine.config.SimpleTeachingConfig;
import cn.mucang.android.jiakaoyi.engine.processor.exam.ExamProcessor;
import cn.mucang.android.jiakaoyi.hpmap.a.a.f.q;
import cn.mucang.android.jiakaoyi.hpmap.collision.k2.checker.SubStep;
import cn.mucang.android.jiakaoyi.signal.center.model.CarPos;
import cn.mucang.android.jiakaoyi.signal.center.model.Gear;
import com.google.android.exoplayer2.SimpleExoPlayer;
import java.util.List;

/* JADX INFO: loaded from: classes4.dex */
public class p extends cn.mucang.android.jiakaoyi.hpmap.collision.k2.checker.b<q, SimpleTeachingConfig> {
    private static final String[] s = {"未开始", "驶入项目", "倒入乙库", "移库1", "移库2", " 移库3", " 移库4", "驶出甲库", "倒入甲库", "驶出项目"};

    public p(List<q> list, cn.mucang.android.jiakaoyi.hpmap.collision.k2.checker.c<q> cVar) {
        this(list, cVar, false);
    }

    private boolean H(cn.mucang.android.jiakaoyi.signal.c.e eVar, CarPos carPos, q qVar) {
        return cn.mucang.android.jiakaoyi.hpmap.a.b.c.b(qVar.E, carPos.carRect) || cn.mucang.android.jiakaoyi.hpmap.a.b.c.b(qVar.F, carPos.carRect);
    }

    @Override // cn.mucang.android.jiakaoyi.hpmap.collision.k2.checker.b
    protected long E() {
        return SimpleExoPlayer.DEFAULT_DETACH_SURFACE_TIMEOUT_MS;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // cn.mucang.android.jiakaoyi.hpmap.collision.k2.checker.b
    /* JADX INFO: renamed from: G, reason: merged with bridge method [inline-methods] */
    public boolean f(cn.mucang.android.jiakaoyi.signal.c.e eVar, CarPos carPos, q qVar) {
        return (qVar.l() != null && cn.mucang.android.jiakaoyi.hpmap.a.b.a.b(carPos, qVar.l())) || super.f(eVar, carPos, qVar) || H(eVar, carPos, qVar);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // cn.mucang.android.jiakaoyi.hpmap.collision.k2.checker.b
    /* JADX INFO: renamed from: I, reason: merged with bridge method [inline-methods] */
    public void v(cn.mucang.android.jiakaoyi.signal.c.e eVar, CarPos carPos, q qVar, ExamProcessor examProcessor) {
        if (this.r == SubStep.None) {
            if (cn.mucang.android.jiakaoyi.hpmap.a.b.c.b(qVar.E, carPos.carRect)) {
                if (eVar.d().m.isFront()) {
                    y(SubStep.Step1);
                } else {
                    y(SubStep.Step2);
                }
            } else if (cn.mucang.android.jiakaoyi.hpmap.a.b.c.b(qVar.F, carPos.carRect)) {
                y(SubStep.Step3);
            } else {
                y(SubStep.Step1);
            }
        }
        SubStep subStep = this.r;
        SubStep subStep2 = SubStep.Step1;
        if (subStep == subStep2) {
            if (eVar.d().m == Gear.GearBack) {
                y(SubStep.Step2);
            } else if (qVar.v(carPos)) {
                this.b = true;
            }
        }
        SubStep subStep3 = this.r;
        SubStep subStep4 = SubStep.Step2;
        if (subStep3 != subStep4 && eVar.d().m == Gear.GearBack && carPos.back.distanceSquare(qVar.j.middle()) > carPos.front.distanceSquare(qVar.j.middle()) && cn.mucang.android.jiakaoyi.hpmap.a.b.c.b(qVar.E, carPos.carRect)) {
            y(subStep4);
        }
        SubStep subStep5 = this.r;
        SubStep subStep6 = SubStep.Step8;
        if (subStep5 != subStep6 && eVar.d().m == Gear.GearBack && carPos.back.distanceSquare(qVar.i.middle()) > carPos.front.distanceSquare(qVar.i.middle()) && cn.mucang.android.jiakaoyi.hpmap.a.b.c.b(qVar.E, carPos.carRect)) {
            y(subStep6);
        }
        if (this.r == subStep4) {
            if (eVar.d().m != Gear.GearBack) {
                if (cn.mucang.android.jiakaoyi.hpmap.a.b.a.d(carPos, qVar.F)) {
                    y(SubStep.Step3);
                } else if (eVar.d().c()) {
                    y(subStep2);
                }
            } else if (qVar.v(carPos)) {
                this.b = true;
            }
        }
        if (this.r == SubStep.Step3) {
            if (eVar.d().m == Gear.GearBack) {
                y(SubStep.Step4);
            } else if (qVar.v(carPos)) {
                this.b = true;
            }
        }
        if (this.r == SubStep.Step4) {
            if (eVar.d().m != Gear.GearBack) {
                y(SubStep.Step5);
            } else if (qVar.v(carPos)) {
                this.b = true;
            }
        }
        if (this.r == SubStep.Step5) {
            if (eVar.d().m == Gear.GearBack) {
                y(SubStep.Step6);
            } else if (qVar.v(carPos)) {
                this.b = true;
            }
        }
        if (this.r == SubStep.Step6) {
            if (eVar.d().m != Gear.GearBack) {
                y(SubStep.Step7);
            } else if (qVar.v(carPos)) {
                this.b = true;
            }
        }
        if (this.r == SubStep.Step7) {
            if (eVar.d().m == Gear.GearBack) {
                y(subStep6);
            } else if (qVar.v(carPos)) {
                this.b = true;
            }
        }
        if (this.r == subStep6) {
            if (eVar.d().m != Gear.GearBack && cn.mucang.android.jiakaoyi.hpmap.a.b.a.d(carPos, qVar.G)) {
                y(SubStep.Step9);
            } else if (qVar.v(carPos)) {
                this.b = true;
            }
        }
        if (this.r == SubStep.Step9 && cn.mucang.android.jiakaoyi.hpmap.a.b.a.k(carPos, qVar.j)) {
            this.b = true;
            this.c = true;
        }
    }

    @Override // cn.mucang.android.jiakaoyi.hpmap.collision.k2.checker.b
    protected boolean d(cn.mucang.android.jiakaoyi.signal.c.e eVar, CarPos carPos, cn.mucang.android.jiakaoyi.hpmap.a.a.b bVar) {
        return super.d(eVar, carPos, bVar) || H(eVar, carPos, (q) bVar);
    }

    @Override // cn.mucang.android.jiakaoyi.hpmap.collision.k2.checker.b
    protected String[] l() {
        return s;
    }

    @Override // cn.mucang.android.jiakaoyi.hpmap.collision.k2.checker.b
    protected void w() {
        this.m = null;
        this.r = SubStep.None;
    }

    public p(List<q> list, cn.mucang.android.jiakaoyi.hpmap.collision.k2.checker.c<q> cVar, boolean z) {
        super(list, null, cVar, z);
    }
}
