package cn.mucang.android.jiakaoyi.teachingk2.traceerror.h.c;

import cn.mucang.android.jiakaoyi.hpmap.a.a.g.c;
import cn.mucang.android.jiakaoyi.hpmap.a.a.g.k;
import cn.mucang.android.jiakaoyi.hpmap.model.Line;
import cn.mucang.android.jiakaoyi.signal.center.model.CarModel;
import cn.mucang.android.jiakaoyi.signal.center.model.CarPos;
import cn.mucang.android.jiakaoyi.signal.pos.Pos;
import cn.mucang.android.jiakaoyi.signal.utils.d;
import cn.mucang.android.jiakaoyi.teachingk2.data.TeachModel;
import cn.mucang.android.jiakaoyi.teachingk2.traceerror.h.a;
import java.util.List;

/* JADX INFO: loaded from: classes4.dex */
public class b implements cn.mucang.android.jiakaoyi.teachingk2.traceerror.h.b {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private cn.mucang.android.jiakaoyi.signal.utils.b f5968a = null;
    private Pos b = null;
    private Pos c = null;

    @Override // cn.mucang.android.jiakaoyi.teachingk2.traceerror.h.b
    public void a(a aVar, CarPos carPos, CarModel carModel, TeachModel teachModel, cn.mucang.android.jiakaoyi.hpmap.a.a.b bVar, List<Pos> list) {
        Pos pos;
        if (this.f5968a == null) {
            Pos pos2 = null;
            if (bVar instanceof c) {
                Line line = ((c) bVar).r;
                pos2 = line.end;
                pos = line.start;
            } else if (bVar instanceof cn.mucang.android.jiakaoyi.hpmap.a.a.g.b) {
                Line line2 = ((cn.mucang.android.jiakaoyi.hpmap.a.a.g.b) bVar).r;
                pos2 = line2.end;
                pos = line2.start;
            } else if (bVar instanceof k) {
                k kVar = (k) bVar;
                pos2 = kVar.k.start;
                pos = kVar.o.end;
            } else {
                pos = null;
            }
            if (pos2 == null || pos == null) {
                return;
            }
            Pos pos3 = new Pos(list.get(list.size() - 1));
            Pos posVectorTo = cn.mucang.android.jiakaoyi.hpmap.d.a.n(pos3, pos2, pos).vectorTo(pos3);
            Pos posTranslate = new Pos(pos2).translate(posVectorTo);
            this.b = new Pos(pos).translate(posVectorTo);
            cn.mucang.android.jiakaoyi.signal.utils.b bVar2 = new cn.mucang.android.jiakaoyi.signal.utils.b(new Pos(posTranslate), Math.toDegrees(posTranslate.angleTo(this.b)), true);
            this.f5968a = bVar2;
            Pos pos4 = this.b;
            bVar2.b(pos4, pos4);
            this.c = new Pos();
        }
        if (aVar.f5964d) {
            return;
        }
        this.c.setPos(carPos.wheelLeftFront).meanWith(carPos.wheelRightFront);
        cn.mucang.android.jiakaoyi.signal.utils.b bVar3 = this.f5968a;
        Pos pos5 = this.c;
        bVar3.b(pos5, pos5);
        Pos pos6 = this.c;
        if (pos6.x - this.b.x > -30.0d) {
            aVar.f5964d = true;
            return;
        }
        double dAbs = Math.abs(pos6.y);
        double dC = d.c((float) (carPos.degree - this.f5968a.f5831f));
        double dSin = this.c.y + ((((double) (carModel.c * 100.0f)) / 3.6d) * 1.0d * Math.sin(Math.toRadians(dC)));
        if (dAbs > aVar.f5963a) {
            if (this.c.y > 0.0d) {
                aVar.c = -1000.0d;
            } else {
                aVar.c = 1000.0d;
            }
        } else if (Math.abs(dSin) < 15.0d) {
            aVar.c = 0.0d;
        }
        aVar.b = dAbs;
        aVar.f5965e = dAbs <= aVar.f5963a && Math.abs(dC) < 5.0d;
    }
}
