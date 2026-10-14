package cn.mucang.android.jiakaoyi.teachingk2.elements.handlers;

import cn.mucang.android.jiakaoyi.teachingk2.data.TeachModel;
import cn.mucang.android.jiakaoyi.teachingk2.elements.f0;
import cn.mucang.android.jiakaoyi.teachingk2.elements.g0;
import cn.mucang.android.jiakaoyi.teachingk2.elements.model.Relation;
import cn.mucang.android.jiakaoyi.teachingk2.elements.variable.GearVariable;

/* JADX INFO: loaded from: classes4.dex */
public class n implements g0<GearVariable> {
    @Override // cn.mucang.android.jiakaoyi.teachingk2.elements.g0
    /* JADX INFO: renamed from: b, reason: merged with bridge method [inline-methods] */
    public boolean a(GearVariable gearVariable, cn.mucang.android.jiakaoyi.signal.c.e eVar, cn.mucang.android.jiakaoyi.hpmap.a.a.b bVar, cn.mucang.android.jiakaoyi.hpmap.collision.k2.checker.b<?, ?> bVar2, TeachModel teachModel, f0 f0Var) {
        if (gearVariable.mode == Relation.Equal) {
            return eVar.d().m.gear == gearVariable.gear;
        }
        return eVar.d().m.gear != gearVariable.gear;
    }
}
