package f.a.a.c.a.b;

import cn.mucang.android.jiakaoyi.engine.config.SimpleTeachingConfig;
import cn.mucang.android.jiakaoyi.engine.processor.exam.ExamProcessor;
import cn.mucang.android.jiakaoyi.hpmap.collision.k2.checker.SubStep;
import cn.mucang.android.jiakaoyi.hpmap.model.Line;
import cn.mucang.android.jiakaoyi.signal.center.model.CarPos;
import cn.mucang.android.jiakaoyi.signal.center.model.Gear;
import cn.mucang.android.jiakaoyi.signal.pos.Pos;
import com.google.android.exoplayer2.SimpleExoPlayer;
import java.util.List;

/* JADX INFO: loaded from: classes4.dex */
public class a extends cn.mucang.android.jiakaoyi.hpmap.collision.k2.checker.b<cn.mucang.android.jiakaoyi.hpmap.a.a.f.a, SimpleTeachingConfig> {
    private static final String[] s = {"未开始", "驶入项目", "倒入侧方", "驶出侧方"};

    public a(List<cn.mucang.android.jiakaoyi.hpmap.a.a.f.a> list, cn.mucang.android.jiakaoyi.hpmap.collision.k2.checker.c<cn.mucang.android.jiakaoyi.hpmap.a.a.f.a> cVar) {
        this(list, cVar, false);
    }

    private boolean H(cn.mucang.android.jiakaoyi.signal.c.e eVar, CarPos carPos, cn.mucang.android.jiakaoyi.hpmap.a.a.f.a aVar) {
        return cn.mucang.android.jiakaoyi.hpmap.a.b.c.b(aVar.u, carPos.carRect);
    }

    @Override // cn.mucang.android.jiakaoyi.hpmap.collision.k2.checker.b
    protected long E() {
        return SimpleExoPlayer.DEFAULT_DETACH_SURFACE_TIMEOUT_MS;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // cn.mucang.android.jiakaoyi.hpmap.collision.k2.checker.b
    /* JADX INFO: renamed from: G, reason: merged with bridge method [inline-methods] */
    public boolean f(cn.mucang.android.jiakaoyi.signal.c.e eVar, CarPos carPos, cn.mucang.android.jiakaoyi.hpmap.a.a.f.a aVar) {
        return (aVar.l() != null && cn.mucang.android.jiakaoyi.hpmap.a.b.a.b(carPos, aVar.l())) || super.f(eVar, carPos, aVar) || H(eVar, carPos, aVar);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // cn.mucang.android.jiakaoyi.hpmap.collision.k2.checker.b
    /* JADX INFO: renamed from: I, reason: merged with bridge method [inline-methods] */
    public void v(cn.mucang.android.jiakaoyi.signal.c.e eVar, CarPos carPos, cn.mucang.android.jiakaoyi.hpmap.a.a.f.a aVar, ExamProcessor examProcessor) {
        if (this.r == SubStep.None) {
            if (!cn.mucang.android.jiakaoyi.hpmap.a.b.c.b(aVar.u, carPos.carRect) || eVar.d().m.isFront()) {
                y(SubStep.Step1);
            } else {
                y(SubStep.Step2);
            }
        }
        SubStep subStep = this.r;
        SubStep subStep2 = SubStep.Step1;
        if (subStep == subStep2) {
            if (eVar.d().m == Gear.GearBack) {
                y(SubStep.Step2);
            } else if (aVar.v(carPos)) {
                this.b = true;
            }
        }
        SubStep subStep3 = this.r;
        SubStep subStep4 = SubStep.Step2;
        if (subStep3 == subStep4) {
            if (eVar.d().m == Gear.GearBack || !eVar.d().c()) {
                if (aVar.v(carPos)) {
                    this.b = true;
                }
            } else if (cn.mucang.android.jiakaoyi.hpmap.a.b.a.d(carPos, aVar.v)) {
                y(SubStep.Step3);
            } else {
                y(subStep2);
            }
        }
        if (this.r == SubStep.Step3) {
            if (eVar.d().m == Gear.GearBack) {
                Pos pos = carPos.back;
                Line line = aVar.j;
                double dL = cn.mucang.android.jiakaoyi.hpmap.d.a.l(pos, line.start, line.end);
                Pos pos2 = carPos.front;
                Line line2 = aVar.j;
                if (dL > cn.mucang.android.jiakaoyi.hpmap.d.a.l(pos2, line2.start, line2.end) && cn.mucang.android.jiakaoyi.hpmap.a.b.c.g(aVar.u, carPos.carRect)) {
                    y(subStep4);
                }
            }
            if (cn.mucang.android.jiakaoyi.hpmap.a.b.a.a(carPos, aVar.j)) {
                this.b = true;
                this.c = true;
            }
        }
    }

    @Override // cn.mucang.android.jiakaoyi.hpmap.collision.k2.checker.b
    protected boolean d(cn.mucang.android.jiakaoyi.signal.c.e eVar, CarPos carPos, cn.mucang.android.jiakaoyi.hpmap.a.a.b bVar) {
        return super.d(eVar, carPos, bVar) || H(eVar, carPos, (cn.mucang.android.jiakaoyi.hpmap.a.a.f.a) bVar);
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

    public a(List<cn.mucang.android.jiakaoyi.hpmap.a.a.f.a> list, cn.mucang.android.jiakaoyi.hpmap.collision.k2.checker.c<cn.mucang.android.jiakaoyi.hpmap.a.a.f.a> cVar, boolean z) {
        super(list, null, cVar, z);
    }
}
