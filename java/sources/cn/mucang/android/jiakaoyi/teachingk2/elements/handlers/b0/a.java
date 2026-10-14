package cn.mucang.android.jiakaoyi.teachingk2.elements.handlers.b0;

import cn.mucang.android.jiakaoyi.hpmap.a.a.b;
import cn.mucang.android.jiakaoyi.hpmap.collision.k2.checker.d;
import cn.mucang.android.jiakaoyi.signal.c.e;
import cn.mucang.android.jiakaoyi.teachingk2.data.TeachModel;
import cn.mucang.android.jiakaoyi.teachingk2.elements.f0;
import cn.mucang.android.jiakaoyi.teachingk2.elements.g0;
import cn.mucang.android.jiakaoyi.teachingk2.elements.model.Relation;
import cn.mucang.android.jiakaoyi.teachingk2.elements.variable.specific.CarHouLiuVariable;

/* JADX INFO: loaded from: classes4.dex */
public class a implements g0<CarHouLiuVariable> {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private d f7028a = new d(false);

    @Override // cn.mucang.android.jiakaoyi.teachingk2.elements.g0
    /* JADX INFO: renamed from: b, reason: merged with bridge method [inline-methods] */
    public boolean a(CarHouLiuVariable carHouLiuVariable, e eVar, b bVar, cn.mucang.android.jiakaoyi.hpmap.collision.k2.checker.b<?, ?> bVar2, TeachModel teachModel, f0 f0Var) {
        double dA = this.f7028a.a(eVar);
        if (dA <= 0.0d) {
            return false;
        }
        Relation relation = carHouLiuVariable.mode;
        if (relation == Relation.SmallThan) {
            return dA < ((double) carHouLiuVariable.distance);
        }
        return relation == Relation.BigThan && dA > ((double) carHouLiuVariable.distance);
    }
}
