package cn.mucang.android.jiakaoyi.teachingk2.elements.handlers.a0;

import cn.mucang.android.jiakaoyi.hpmap.a.a.b;
import cn.mucang.android.jiakaoyi.hpmap.a.a.g.j;
import cn.mucang.android.jiakaoyi.hpmap.model.Line;
import cn.mucang.android.jiakaoyi.signal.c.e;
import cn.mucang.android.jiakaoyi.signal.pos.Pos;
import cn.mucang.android.jiakaoyi.teachingk2.data.TeachModel;
import cn.mucang.android.jiakaoyi.teachingk2.elements.f0;
import cn.mucang.android.jiakaoyi.teachingk2.elements.g0;
import cn.mucang.android.jiakaoyi.teachingk2.elements.variable.quxian.QuXianPositionVariable;

/* JADX INFO: loaded from: classes4.dex */
public class a implements g0<QuXianPositionVariable> {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private Pos f7025a;
    private Pos b;
    private Pos c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private Pos f7026d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private Pos f7027e;

    @Override // cn.mucang.android.jiakaoyi.teachingk2.elements.g0
    /* JADX INFO: renamed from: b, reason: merged with bridge method [inline-methods] */
    public boolean a(QuXianPositionVariable quXianPositionVariable, e eVar, b bVar, cn.mucang.android.jiakaoyi.hpmap.collision.k2.checker.b<?, ?> bVar2, TeachModel teachModel, f0 f0Var) {
        if (!(bVar instanceof j)) {
            return false;
        }
        if (this.f7025a == null) {
            j jVar = (j) bVar;
            this.f7025a = (quXianPositionVariable.centerCoordinate ? cn.mucang.android.jiakaoyi.teachingk2.elements.model.a.a(jVar) : cn.mucang.android.jiakaoyi.teachingk2.elements.model.a.b(jVar)).c(new Pos(quXianPositionVariable.x, quXianPositionVariable.y));
            Pos pos = new Pos();
            Pos pos2 = new Pos();
            Pos pos3 = new Pos();
            Pos pos4 = new Pos();
            double d2 = Double.MAX_VALUE;
            double d3 = Double.MAX_VALUE;
            int i = 0;
            while (i < jVar.i.size() - 1) {
                Pos pos5 = jVar.i.get(i);
                i++;
                Pos pos6 = jVar.i.get(i);
                double dDistanceTo = pos5.distanceTo(this.f7025a) + pos6.distanceTo(this.f7025a);
                if (dDistanceTo < d3) {
                    pos3.setPos(pos5);
                    pos4.setPos(pos6);
                    d3 = dDistanceTo;
                }
            }
            pos.setPos(cn.mucang.android.jiakaoyi.hpmap.d.a.n(this.f7025a, pos3, pos4));
            pos3.setPos(0.0d, 0.0d);
            pos4.setPos(0.0d, 0.0d);
            int i2 = 0;
            while (i2 < jVar.j.size() - 1) {
                Pos pos7 = jVar.j.get(i2);
                i2++;
                Pos pos8 = jVar.j.get(i2);
                double dDistanceTo2 = pos7.distanceTo(this.f7025a) + pos8.distanceTo(this.f7025a);
                if (dDistanceTo2 < d2) {
                    pos3.setPos(pos7);
                    pos4.setPos(pos8);
                    d2 = dDistanceTo2;
                }
            }
            pos2.setPos(cn.mucang.android.jiakaoyi.hpmap.d.a.n(this.f7025a, pos3, pos4));
            Line lineP = cn.mucang.android.jiakaoyi.hpmap.d.a.p(pos, pos2, quXianPositionVariable.radius * 0.5d);
            this.b = lineP.start;
            this.c = lineP.end;
            Line lineQ = cn.mucang.android.jiakaoyi.hpmap.d.a.q(pos, pos2, quXianPositionVariable.radius * 0.5d);
            this.f7026d = lineQ.start;
            this.f7027e = lineQ.end;
        }
        return eVar.c().center.distanceTo(this.f7025a) <= quXianPositionVariable.radius || cn.mucang.android.jiakaoyi.hpmap.d.a.C(eVar.c().center, eVar.c().lastCenter, this.b, this.c) || cn.mucang.android.jiakaoyi.hpmap.d.a.C(eVar.c().center, eVar.c().lastCenter, this.f7026d, this.f7027e);
    }
}
