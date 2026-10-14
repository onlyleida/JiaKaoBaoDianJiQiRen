package cn.mucang.android.jiakaoyi.teachingk2.elements.handlers;

import cn.mucang.android.jiakaoyi.signal.center.model.CarPos;
import cn.mucang.android.jiakaoyi.signal.pos.Pos;
import cn.mucang.android.jiakaoyi.teachingk2.data.TeachModel;
import cn.mucang.android.jiakaoyi.teachingk2.elements.f0;
import cn.mucang.android.jiakaoyi.teachingk2.elements.g0;
import cn.mucang.android.jiakaoyi.teachingk2.elements.variable.CarInRectPositionVariable;

/* JADX INFO: loaded from: classes4.dex */
public class h implements g0<CarInRectPositionVariable> {
    @Override // cn.mucang.android.jiakaoyi.teachingk2.elements.g0
    /* JADX INFO: renamed from: b, reason: merged with bridge method [inline-methods] */
    public boolean a(CarInRectPositionVariable carInRectPositionVariable, cn.mucang.android.jiakaoyi.signal.c.e eVar, cn.mucang.android.jiakaoyi.hpmap.a.a.b bVar, cn.mucang.android.jiakaoyi.hpmap.collision.k2.checker.b<?, ?> bVar2, TeachModel teachModel, f0 f0Var) {
        CarPos carPosC = eVar.c();
        if (!cn.mucang.android.jiakaoyi.hpmap.a.b.a.e(carPosC, carInRectPositionVariable.rect)) {
            return false;
        }
        Pos posMeanWith = new Pos(carInRectPositionVariable.point1).meanWith(carInRectPositionVariable.point4);
        Pos posMeanWith2 = new Pos(carInRectPositionVariable.point2).meanWith(carInRectPositionVariable.point3);
        double dMin = Math.min(cn.mucang.android.jiakaoyi.hpmap.d.a.k(carPosC.wheelLeftFront, posMeanWith, posMeanWith2), cn.mucang.android.jiakaoyi.hpmap.d.a.k(carPosC.wheelLeftBack, posMeanWith, posMeanWith2));
        double dMin2 = Math.min(cn.mucang.android.jiakaoyi.hpmap.d.a.k(carPosC.wheelRightFront, posMeanWith, posMeanWith2), cn.mucang.android.jiakaoyi.hpmap.d.a.k(carPosC.wheelRightBack, posMeanWith, posMeanWith2));
        int i = carInRectPositionVariable.position;
        if (i == 0) {
            return dMin < dMin2 + 10.0d && dMin2 < dMin + 10.0d;
        }
        if (i == 1) {
            return dMin >= dMin2 + 10.0d;
        }
        return i == 2 && dMin2 >= dMin + 10.0d;
    }
}
