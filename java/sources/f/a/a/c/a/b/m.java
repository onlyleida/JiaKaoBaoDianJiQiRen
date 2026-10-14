package f.a.a.c.a.b;

import cn.mucang.android.jiakaoyi.engine.config.SimpleTeachingConfig;
import cn.mucang.android.jiakaoyi.engine.processor.exam.ExamProcessor;
import cn.mucang.android.jiakaoyi.engine.trace.w;
import cn.mucang.android.jiakaoyi.hpmap.collision.k2.checker.SubStep;
import cn.mucang.android.jiakaoyi.hpmap.model.Line;
import cn.mucang.android.jiakaoyi.signal.center.model.CarPos;
import cn.mucang.android.jiakaoyi.signal.center.model.Gear;
import cn.mucang.android.jiakaoyi.signal.pos.Pos;
import com.google.android.exoplayer2.SimpleExoPlayer;
import java.util.List;

/* JADX INFO: loaded from: classes4.dex */
public class m extends cn.mucang.android.jiakaoyi.hpmap.collision.k2.checker.b<cn.mucang.android.jiakaoyi.hpmap.a.a.f.n, SimpleTeachingConfig> {
    private static final String[] s = {"未开始", "驶入项目", "倒车1", "前进2", "倒车2", "驶出项目"};

    public m(List<cn.mucang.android.jiakaoyi.hpmap.a.a.f.n> list, cn.mucang.android.jiakaoyi.hpmap.collision.k2.checker.c<cn.mucang.android.jiakaoyi.hpmap.a.a.f.n> cVar) {
        this(list, cVar, false);
    }

    private boolean H(cn.mucang.android.jiakaoyi.signal.c.e eVar, CarPos carPos, cn.mucang.android.jiakaoyi.hpmap.a.a.f.n nVar) {
        return cn.mucang.android.jiakaoyi.hpmap.a.b.c.a(nVar.p, carPos.center);
    }

    @Override // cn.mucang.android.jiakaoyi.hpmap.collision.k2.checker.b
    protected long E() {
        return SimpleExoPlayer.DEFAULT_DETACH_SURFACE_TIMEOUT_MS;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // cn.mucang.android.jiakaoyi.hpmap.collision.k2.checker.b
    /* JADX INFO: renamed from: G, reason: merged with bridge method [inline-methods] */
    public boolean f(cn.mucang.android.jiakaoyi.signal.c.e eVar, CarPos carPos, cn.mucang.android.jiakaoyi.hpmap.a.a.f.n nVar) {
        return (nVar.l() != null && cn.mucang.android.jiakaoyi.hpmap.a.b.a.b(carPos, nVar.l())) || super.f(eVar, carPos, nVar) || H(eVar, carPos, nVar);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // cn.mucang.android.jiakaoyi.hpmap.collision.k2.checker.b
    /* JADX INFO: renamed from: I, reason: merged with bridge method [inline-methods] */
    public void v(cn.mucang.android.jiakaoyi.signal.c.e eVar, CarPos carPos, cn.mucang.android.jiakaoyi.hpmap.a.a.f.n nVar, ExamProcessor examProcessor) {
        if (this.r == SubStep.None) {
            if (cn.mucang.android.jiakaoyi.hpmap.a.b.c.a(nVar.p, carPos.center)) {
                Pos pos = carPos.back;
                Line line = nVar.k;
                double dL = cn.mucang.android.jiakaoyi.hpmap.d.a.l(pos, line.start, line.end);
                Pos pos2 = carPos.front;
                Line line2 = nVar.k;
                if (dL > cn.mucang.android.jiakaoyi.hpmap.d.a.l(pos2, line2.start, line2.end)) {
                    Pos posVectorTo = carPos.back.vectorTo(carPos.front);
                    Line line3 = nVar.k;
                    if (Math.abs(Math.toDegrees(posVectorTo.vectorAngle(line3.start.vectorTo(line3.end)))) > 35.0d) {
                        y(SubStep.Step1);
                    } else {
                        y(SubStep.Step3);
                    }
                } else {
                    y(SubStep.Step3);
                }
            } else {
                y(SubStep.Step1);
            }
        }
        if (!this.j && eVar.d().F.isBack()) {
            w.O();
        }
        if (this.r == SubStep.Step1) {
            if (this.f3695f && !this.j) {
                w.O();
            }
            if (eVar.d().m == Gear.GearBack) {
                y(SubStep.Step2);
            }
            if (nVar.v(carPos)) {
                this.b = true;
                this.c = true;
            }
        }
        if (this.r == SubStep.Step2) {
            if (eVar.d().m != Gear.GearBack) {
                y(SubStep.Step3);
            }
            if (nVar.v(carPos)) {
                this.b = true;
                this.c = true;
            }
        }
        if (this.r == SubStep.Step3) {
            if (eVar.d().m == Gear.GearBack) {
                y(SubStep.Step4);
            }
            if (nVar.v(carPos)) {
                this.b = true;
                this.c = true;
            }
        }
        if (this.r == SubStep.Step4 && eVar.d().m != Gear.GearBack) {
            y(SubStep.Step5);
        }
        if (this.r == SubStep.Step5 && cn.mucang.android.jiakaoyi.hpmap.a.b.a.k(carPos, nVar.i)) {
            this.b = true;
            this.c = true;
        }
    }

    @Override // cn.mucang.android.jiakaoyi.hpmap.collision.k2.checker.b
    protected boolean d(cn.mucang.android.jiakaoyi.signal.c.e eVar, CarPos carPos, cn.mucang.android.jiakaoyi.hpmap.a.a.b bVar) {
        return super.d(eVar, carPos, bVar) || H(eVar, carPos, (cn.mucang.android.jiakaoyi.hpmap.a.a.f.n) bVar);
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

    public m(List<cn.mucang.android.jiakaoyi.hpmap.a.a.f.n> list, cn.mucang.android.jiakaoyi.hpmap.collision.k2.checker.c<cn.mucang.android.jiakaoyi.hpmap.a.a.f.n> cVar, boolean z) {
        super(list, null, cVar, z);
    }
}
