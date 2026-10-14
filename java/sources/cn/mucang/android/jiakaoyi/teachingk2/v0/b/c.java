package cn.mucang.android.jiakaoyi.teachingk2.v0.b;

import cn.mucang.android.jiakaoyi.hpmap.collision.k2.checker.SubStep;
import cn.mucang.android.jiakaoyi.signal.c.e;
import cn.mucang.android.jiakaoyi.signal.center.model.CarPos;
import cn.mucang.android.jiakaoyi.signal.pos.Pos;
import cn.mucang.android.jiakaoyi.teachingk2.firstpractice.FirstPracticeStep;
import java.util.ArrayList;

/* JADX INFO: loaded from: classes4.dex */
public class c extends a {
    private Pos k;
    private Pos l;

    public c() {
        super(FirstPracticeStep.DaoKu_Line);
    }

    @Override // cn.mucang.android.jiakaoyi.teachingk2.v0.b.a
    protected cn.mucang.android.jiakaoyi.teachingk2.v0.a<cn.mucang.android.jiakaoyi.hpmap.a.a.g.c> g() {
        this.k = new Pos();
        this.l = new Pos();
        ArrayList arrayList = new ArrayList();
        arrayList.add(new cn.mucang.android.jiakaoyi.teachingk2.v0.f.c(this.f8684d, this.f8685e, this.f8687g));
        Pos pos = this.l;
        Pos pos2 = this.k;
        SubStep subStep = SubStep.Step8;
        cn.mucang.android.jiakaoyi.teachingk2.v0.f.d dVar = new cn.mucang.android.jiakaoyi.teachingk2.v0.f.d(pos, pos2, subStep);
        Pos pos3 = this.k;
        Pos pos4 = this.l;
        SubStep subStep2 = SubStep.Step9;
        return new cn.mucang.android.jiakaoyi.teachingk2.v0.a<>(dVar, new cn.mucang.android.jiakaoyi.teachingk2.v0.f.d(pos3, pos4, subStep2), arrayList, new cn.mucang.android.jiakaoyi.teachingk2.v0.f.a(), subStep, subStep2, this.f8686f);
    }

    @Override // cn.mucang.android.jiakaoyi.teachingk2.v0.b.a
    protected void h(e eVar, cn.mucang.android.jiakaoyi.hpmap.a.a.g.c cVar) {
        CarPos carPosC = eVar.c();
        Pos posMiddle = cVar.m.middle();
        Pos posMiddle2 = cVar.k.middle();
        double dDistanceTo = posMiddle2.distanceTo(posMiddle);
        cn.mucang.android.jiakaoyi.signal.pos.c cVar2 = carPosC.carRect;
        this.k.setPos(cn.mucang.android.jiakaoyi.hpmap.d.a.t(posMiddle, posMiddle2, ((dDistanceTo - cVar2.f5820a.distanceTo(cVar2.b)) * 0.5d) + carPosC.rearAxlePoint.distanceTo(new Pos(carPosC.carRect.f5820a).meanWith(carPosC.carRect.f5821d))));
        this.l.setPos(cn.mucang.android.jiakaoyi.hpmap.d.a.s(posMiddle, posMiddle2, 10.0d));
    }
}
