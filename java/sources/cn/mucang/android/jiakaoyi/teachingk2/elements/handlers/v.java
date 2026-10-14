package cn.mucang.android.jiakaoyi.teachingk2.elements.handlers;

import cn.mucang.android.jiakaoyi.teachingk2.data.TeachModel;
import cn.mucang.android.jiakaoyi.teachingk2.elements.f0;
import cn.mucang.android.jiakaoyi.teachingk2.elements.g0;
import cn.mucang.android.jiakaoyi.teachingk2.elements.variable.TurnHeadVariable;

/* JADX INFO: loaded from: classes4.dex */
public class v implements g0<TurnHeadVariable> {
    @Override // cn.mucang.android.jiakaoyi.teachingk2.elements.g0
    /* JADX INFO: renamed from: b, reason: merged with bridge method [inline-methods] */
    public boolean a(TurnHeadVariable turnHeadVariable, cn.mucang.android.jiakaoyi.signal.c.e eVar, cn.mucang.android.jiakaoyi.hpmap.a.a.b bVar, cn.mucang.android.jiakaoyi.hpmap.collision.k2.checker.b<?, ?> bVar2, TeachModel teachModel, f0 f0Var) {
        int i = turnHeadVariable.headType;
        if (i == 1) {
            return eVar.a().f5209d == 1;
        }
        if (i == 2) {
            return eVar.a().f5209d == 2;
        }
        return eVar.a().f5209d == 0;
    }
}
