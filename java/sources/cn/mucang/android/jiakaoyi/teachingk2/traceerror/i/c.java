package cn.mucang.android.jiakaoyi.teachingk2.traceerror.i;

import cn.mucang.android.jiakaoyi.hpmap.a.a.b;
import cn.mucang.android.jiakaoyi.hpmap.car.Wheel;
import cn.mucang.android.jiakaoyi.hpmap.d.a;
import cn.mucang.android.jiakaoyi.hpmap.model.Line;
import cn.mucang.android.jiakaoyi.signal.c.e;
import cn.mucang.android.jiakaoyi.signal.center.model.CarPos;
import cn.mucang.android.jiakaoyi.signal.pos.Pos;

/* JADX INFO: loaded from: classes4.dex */
public class c {
    private f c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private int f5978d;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private boolean f5980f;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private Line f5977a = null;
    private Line b = null;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private Line f5979e = null;

    public boolean a(e eVar, b bVar) {
        CarPos carPosC = eVar.c();
        if (this.f5977a == null) {
            Line line = null;
            if (bVar instanceof cn.mucang.android.jiakaoyi.hpmap.a.a.g.b) {
                cn.mucang.android.jiakaoyi.hpmap.a.a.g.b bVar2 = (cn.mucang.android.jiakaoyi.hpmap.a.a.g.b) bVar;
                line = bVar2.r;
                Pos posT = a.t(line.start, line.end, 50.0d);
                this.b = new Line(posT, new Pos(posT).translate(bVar2.r.start.vectorTo(bVar2.q.end)));
                this.f5978d = 1;
                this.f5979e = bVar2.q;
                this.f5980f = true;
            } else if (bVar instanceof cn.mucang.android.jiakaoyi.hpmap.a.a.g.c) {
                cn.mucang.android.jiakaoyi.hpmap.a.a.g.c cVar = (cn.mucang.android.jiakaoyi.hpmap.a.a.g.c) bVar;
                line = cVar.r;
                this.b = cVar.j;
                this.f5978d = cVar.u ? -1 : 1;
                this.f5979e = cVar.q;
                this.f5980f = false;
            }
            if (line == null) {
                return true;
            }
            Pos pos = line.start;
            this.f5977a = new Line(pos, a.t(pos, line.end, 200.0d));
            this.c = new f();
        }
        cn.mucang.android.jiakaoyi.signal.pos.c cVar2 = carPosC.carRect;
        Line line2 = this.f5977a;
        if (cn.mucang.android.jiakaoyi.hpmap.a.b.c.f(cVar2, line2.start, line2.end)) {
            return false;
        }
        Line line3 = this.f5979e;
        if (line3 != null && cn.mucang.android.jiakaoyi.hpmap.a.b.a.u(Wheel.RightFront, carPosC, line3.start, line3.end)) {
            return false;
        }
        cn.mucang.android.jiakaoyi.signal.pos.c cVar3 = carPosC.carRect;
        Line line4 = this.b;
        if (cn.mucang.android.jiakaoyi.hpmap.a.b.c.f(cVar3, line4.start, line4.end)) {
            return !this.c.a(eVar, this.f5977a, this.f5978d, this.f5980f);
        }
        return true;
    }
}
