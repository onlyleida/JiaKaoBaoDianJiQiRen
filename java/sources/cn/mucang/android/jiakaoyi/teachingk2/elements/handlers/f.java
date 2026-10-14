package cn.mucang.android.jiakaoyi.teachingk2.elements.handlers;

import cn.mucang.android.jiakaoyi.signal.center.model.CarPos;
import cn.mucang.android.jiakaoyi.teachingk2.data.TeachModel;
import cn.mucang.android.jiakaoyi.teachingk2.elements.f0;
import cn.mucang.android.jiakaoyi.teachingk2.elements.g0;
import cn.mucang.android.jiakaoyi.teachingk2.elements.model.Relation;
import cn.mucang.android.jiakaoyi.teachingk2.elements.variable.CarHeaderDistanceToLineVariable;

/* JADX INFO: loaded from: classes4.dex */
public class f implements g0<CarHeaderDistanceToLineVariable> {
    @Override // cn.mucang.android.jiakaoyi.teachingk2.elements.g0
    /* JADX INFO: renamed from: b, reason: merged with bridge method [inline-methods] */
    public boolean a(CarHeaderDistanceToLineVariable carHeaderDistanceToLineVariable, cn.mucang.android.jiakaoyi.signal.c.e eVar, cn.mucang.android.jiakaoyi.hpmap.a.a.b bVar, cn.mucang.android.jiakaoyi.hpmap.collision.k2.checker.b<?, ?> bVar2, TeachModel teachModel, f0 f0Var) {
        CarPos carPosC = eVar.c();
        double dK = cn.mucang.android.jiakaoyi.hpmap.d.a.k(carPosC.carRect.b, carHeaderDistanceToLineVariable.startPoint, carHeaderDistanceToLineVariable.endPoint);
        double dK2 = cn.mucang.android.jiakaoyi.hpmap.d.a.k(carPosC.carRect.c, carHeaderDistanceToLineVariable.startPoint, carHeaderDistanceToLineVariable.endPoint);
        Relation relation = carHeaderDistanceToLineVariable.mode;
        if (relation == Relation.BigThan) {
            float f2 = carHeaderDistanceToLineVariable.distance;
            return dK > ((double) f2) && dK2 > ((double) f2);
        }
        if (relation == Relation.Equal) {
            return Math.abs(dK - ((double) carHeaderDistanceToLineVariable.distance)) <= ((double) carHeaderDistanceToLineVariable.accuracy) || Math.abs(dK2 - ((double) carHeaderDistanceToLineVariable.distance)) <= ((double) carHeaderDistanceToLineVariable.accuracy);
        }
        if (relation == Relation.SmallThan) {
            float f3 = carHeaderDistanceToLineVariable.distance;
            return dK < ((double) f3) || dK2 < ((double) f3);
        }
        if (relation == Relation.Between) {
            return Math.min(dK, dK2) >= ((double) carHeaderDistanceToLineVariable.distance) && Math.max(dK, dK2) <= ((double) carHeaderDistanceToLineVariable.distanceMax);
        }
        if (relation != Relation.OutOfRange) {
            return false;
        }
        double d2 = (dK + dK2) * 0.5d;
        return d2 < ((double) carHeaderDistanceToLineVariable.distance) || d2 > ((double) carHeaderDistanceToLineVariable.distanceMax);
    }
}
