package cn.mucang.android.jiakaoyi.teachingk2.elements.handlers;

import cn.mucang.android.jiakaoyi.teachingk2.data.TeachModel;
import cn.mucang.android.jiakaoyi.teachingk2.elements.f0;
import cn.mucang.android.jiakaoyi.teachingk2.elements.g0;
import cn.mucang.android.jiakaoyi.teachingk2.elements.model.Relation;
import cn.mucang.android.jiakaoyi.teachingk2.elements.variable.SpeedVariable;

/* JADX INFO: loaded from: classes4.dex */
public class t implements g0<SpeedVariable> {
    @Override // cn.mucang.android.jiakaoyi.teachingk2.elements.g0
    /* JADX INFO: renamed from: b, reason: merged with bridge method [inline-methods] */
    public boolean a(SpeedVariable speedVariable, cn.mucang.android.jiakaoyi.signal.c.e eVar, cn.mucang.android.jiakaoyi.hpmap.a.a.b bVar, cn.mucang.android.jiakaoyi.hpmap.collision.k2.checker.b<?, ?> bVar2, TeachModel teachModel, f0 f0Var) {
        float f2 = eVar.d().c;
        Relation relation = speedVariable.mode;
        if (relation == Relation.Equal) {
            return (speedVariable.speed == 0 && !eVar.d().c()) || f2 == ((float) speedVariable.speed);
        }
        if (relation == Relation.SmallThan) {
            return f2 < ((float) speedVariable.speed);
        }
        if (relation == Relation.Between) {
            return f2 <= speedVariable.speedMax && f2 >= ((float) speedVariable.speed);
        }
        if (relation == Relation.OutOfRange) {
            return f2 < ((float) speedVariable.speed) || f2 > speedVariable.speedMax;
        }
        return (speedVariable.speed == 0 && eVar.d().c()) || f2 > ((float) speedVariable.speed);
    }
}
