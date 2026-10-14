package cn.mucang.android.jiakaoyi.teachingk2.elements.handlers;

import cn.mucang.android.jiakaoyi.signal.center.model.Light;
import cn.mucang.android.jiakaoyi.teachingk2.data.TeachModel;
import cn.mucang.android.jiakaoyi.teachingk2.elements.f0;
import cn.mucang.android.jiakaoyi.teachingk2.elements.g0;
import cn.mucang.android.jiakaoyi.teachingk2.elements.variable.LightVariable;

/* JADX INFO: loaded from: classes4.dex */
public class q implements g0<LightVariable> {
    @Override // cn.mucang.android.jiakaoyi.teachingk2.elements.g0
    /* JADX INFO: renamed from: b, reason: merged with bridge method [inline-methods] */
    public boolean a(LightVariable lightVariable, cn.mucang.android.jiakaoyi.signal.c.e eVar, cn.mucang.android.jiakaoyi.hpmap.a.a.b bVar, cn.mucang.android.jiakaoyi.hpmap.collision.k2.checker.b<?, ?> bVar2, TeachModel teachModel, f0 f0Var) {
        Light lightFindLightWithId = Light.findLightWithId(lightVariable.light);
        if (lightFindLightWithId == Light.Off) {
            return (eVar.d().j(Light.TurnLeftLight) || eVar.d().j(Light.TurnRightLight)) ? false : true;
        }
        return eVar.d().j(lightFindLightWithId);
    }
}
