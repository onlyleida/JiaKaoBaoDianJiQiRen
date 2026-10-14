package cn.mucang.android.jiakaoyi.teachingk2.elements.handlers;

import cn.mucang.android.jiakaoyi.teachingk2.data.TeachModel;
import cn.mucang.android.jiakaoyi.teachingk2.elements.f0;
import cn.mucang.android.jiakaoyi.teachingk2.elements.g0;
import cn.mucang.android.jiakaoyi.teachingk2.elements.model.Relation;
import cn.mucang.android.jiakaoyi.teachingk2.elements.variable.CarDistanceToLineVariable;

/* JADX INFO: loaded from: classes4.dex */
public class d implements g0<CarDistanceToLineVariable> {
    @Override // cn.mucang.android.jiakaoyi.teachingk2.elements.g0
    /* JADX INFO: renamed from: b, reason: merged with bridge method [inline-methods] */
    public boolean a(CarDistanceToLineVariable carDistanceToLineVariable, cn.mucang.android.jiakaoyi.signal.c.e eVar, cn.mucang.android.jiakaoyi.hpmap.a.a.b bVar, cn.mucang.android.jiakaoyi.hpmap.collision.k2.checker.b<?, ?> bVar2, TeachModel teachModel, f0 f0Var) {
        double dK = cn.mucang.android.jiakaoyi.hpmap.d.a.k(eVar.c().center, carDistanceToLineVariable.startPoint, carDistanceToLineVariable.endPoint);
        Relation relation = carDistanceToLineVariable.mode;
        if (relation == Relation.BigThan) {
            return dK > ((double) carDistanceToLineVariable.distance);
        }
        if (relation == Relation.Equal) {
            return Math.abs(dK - ((double) carDistanceToLineVariable.distance)) <= ((double) carDistanceToLineVariable.accuracy);
        }
        if (relation == Relation.SmallThan) {
            return dK < ((double) carDistanceToLineVariable.distance);
        }
        if (relation == Relation.Between) {
            return dK <= ((double) carDistanceToLineVariable.distanceMax) && dK >= ((double) carDistanceToLineVariable.distance);
        }
        if (relation == Relation.OutOfRange) {
            return dK < ((double) carDistanceToLineVariable.distance) || dK > ((double) carDistanceToLineVariable.distanceMax);
        }
        return false;
    }
}
