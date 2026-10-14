package f.a.a.c.a.b;

import cn.mucang.android.jiakaoyi.engine.config.SimpleTeachingConfig;
import cn.mucang.android.jiakaoyi.engine.processor.exam.ExamProcessor;
import cn.mucang.android.jiakaoyi.engine.trace.w;
import cn.mucang.android.jiakaoyi.hpmap.collision.k2.checker.SubStep;
import cn.mucang.android.jiakaoyi.hpmap.model.Line;
import cn.mucang.android.jiakaoyi.signal.center.model.CarPos;
import cn.mucang.android.jiakaoyi.signal.pos.Pos;
import com.google.android.exoplayer2.SimpleExoPlayer;
import java.util.ArrayList;
import java.util.List;

/* JADX INFO: loaded from: classes4.dex */
public class o extends cn.mucang.android.jiakaoyi.hpmap.collision.k2.checker.b<cn.mucang.android.jiakaoyi.hpmap.a.a.f.p, SimpleTeachingConfig> {
    public o(List<cn.mucang.android.jiakaoyi.hpmap.a.a.f.p> list, cn.mucang.android.jiakaoyi.hpmap.collision.k2.checker.c<cn.mucang.android.jiakaoyi.hpmap.a.a.f.p> cVar) {
        this(list, cVar, false);
    }

    private boolean H(cn.mucang.android.jiakaoyi.signal.c.e eVar, CarPos carPos, cn.mucang.android.jiakaoyi.hpmap.a.a.f.p pVar) {
        Pos pos = carPos.wheelLeftBack;
        Pos pos2 = carPos.wheelLeftFront;
        Line line = pVar.k;
        if (!cn.mucang.android.jiakaoyi.hpmap.d.a.C(pos, pos2, line.start, line.end)) {
            Pos pos3 = carPos.wheelLeftBack;
            Pos pos4 = carPos.wheelLeftFront;
            Line line2 = pVar.n;
            if (!cn.mucang.android.jiakaoyi.hpmap.d.a.C(pos3, pos4, line2.start, line2.end)) {
                Pos pos5 = carPos.wheelRightBack;
                Pos pos6 = carPos.wheelRightFront;
                Line line3 = pVar.k;
                if (!cn.mucang.android.jiakaoyi.hpmap.d.a.C(pos5, pos6, line3.start, line3.end)) {
                    Pos pos7 = carPos.wheelRightBack;
                    Pos pos8 = carPos.wheelRightFront;
                    Line line4 = pVar.n;
                    if (!cn.mucang.android.jiakaoyi.hpmap.d.a.C(pos7, pos8, line4.start, line4.end)) {
                        Pos pos9 = carPos.wheelLeftFront;
                        Pos pos10 = carPos.wheelRightFront;
                        Line line5 = pVar.n;
                        if (!cn.mucang.android.jiakaoyi.hpmap.d.a.C(pos9, pos10, line5.start, line5.end)) {
                            Pos pos11 = carPos.wheelLeftFront;
                            Pos pos12 = carPos.wheelRightFront;
                            Line line6 = pVar.k;
                            if (!cn.mucang.android.jiakaoyi.hpmap.d.a.C(pos11, pos12, line6.start, line6.end) && cn.mucang.android.jiakaoyi.hpmap.a.b.c.i(carPos.center, J(pVar))) {
                                return true;
                            }
                        }
                    }
                }
            }
        }
        return false;
    }

    private List<Pos> J(cn.mucang.android.jiakaoyi.hpmap.a.a.f.p pVar) {
        ArrayList arrayList = new ArrayList();
        arrayList.add(pVar.n.end);
        arrayList.add(pVar.n.start);
        arrayList.add(pVar.k.end);
        arrayList.add(pVar.k.start);
        return arrayList;
    }

    @Override // cn.mucang.android.jiakaoyi.hpmap.collision.k2.checker.b
    protected long E() {
        return SimpleExoPlayer.DEFAULT_DETACH_SURFACE_TIMEOUT_MS;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // cn.mucang.android.jiakaoyi.hpmap.collision.k2.checker.b
    /* JADX INFO: renamed from: G, reason: merged with bridge method [inline-methods] */
    public boolean f(cn.mucang.android.jiakaoyi.signal.c.e eVar, CarPos carPos, cn.mucang.android.jiakaoyi.hpmap.a.a.f.p pVar) {
        return (pVar.l() != null && cn.mucang.android.jiakaoyi.hpmap.a.b.a.b(carPos, pVar.l())) || super.f(eVar, carPos, pVar) || H(eVar, carPos, pVar);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // cn.mucang.android.jiakaoyi.hpmap.collision.k2.checker.b
    /* JADX INFO: renamed from: I, reason: merged with bridge method [inline-methods] */
    public void v(cn.mucang.android.jiakaoyi.signal.c.e eVar, CarPos carPos, cn.mucang.android.jiakaoyi.hpmap.a.a.f.p pVar, ExamProcessor examProcessor) {
        if (this.r == SubStep.None) {
            y(SubStep.Step1);
        }
        if (this.r == SubStep.Step1 && cn.mucang.android.jiakaoyi.hpmap.a.b.a.a(carPos, pVar.j)) {
            this.b = true;
            this.c = true;
            if (this.j) {
                return;
            }
            w.O();
        }
    }

    @Override // cn.mucang.android.jiakaoyi.hpmap.collision.k2.checker.b
    protected boolean d(cn.mucang.android.jiakaoyi.signal.c.e eVar, CarPos carPos, cn.mucang.android.jiakaoyi.hpmap.a.a.b bVar) {
        return super.d(eVar, carPos, bVar) || H(eVar, carPos, (cn.mucang.android.jiakaoyi.hpmap.a.a.f.p) bVar);
    }

    @Override // cn.mucang.android.jiakaoyi.hpmap.collision.k2.checker.b
    protected void w() {
        this.m = null;
        this.r = SubStep.None;
    }

    public o(List<cn.mucang.android.jiakaoyi.hpmap.a.a.f.p> list, cn.mucang.android.jiakaoyi.hpmap.collision.k2.checker.c<cn.mucang.android.jiakaoyi.hpmap.a.a.f.p> cVar, boolean z) {
        super(list, null, cVar, z);
    }
}
