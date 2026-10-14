package cn.mucang.android.jiakaoyi.teachingk2.elements.handlers;

import cn.mucang.android.jiakaoyi.teachingk2.data.TeachModel;
import cn.mucang.android.jiakaoyi.teachingk2.elements.f0;
import cn.mucang.android.jiakaoyi.teachingk2.elements.g0;
import cn.mucang.android.jiakaoyi.teachingk2.elements.variable.WheelDegreeVariable;

/* JADX INFO: loaded from: classes4.dex */
public class y implements g0<WheelDegreeVariable> {
    @Override // cn.mucang.android.jiakaoyi.teachingk2.elements.g0
    /* JADX INFO: renamed from: b, reason: merged with bridge method [inline-methods] */
    public boolean a(WheelDegreeVariable wheelDegreeVariable, cn.mucang.android.jiakaoyi.signal.c.e eVar, cn.mucang.android.jiakaoyi.hpmap.a.a.b bVar, cn.mucang.android.jiakaoyi.hpmap.collision.k2.checker.b<?, ?> bVar2, TeachModel teachModel, f0 f0Var) {
        float f2 = eVar.d().r;
        int i = wheelDegreeVariable.direction;
        if (i == 0) {
            return Math.abs(f2) <= ((float) Math.abs(wheelDegreeVariable.radius));
        }
        if (i == 1) {
            return Math.abs((-f2) - ((float) wheelDegreeVariable.degree)) <= ((float) Math.abs(wheelDegreeVariable.radius));
        }
        return i == 2 && Math.abs(f2 - ((float) wheelDegreeVariable.degree)) <= ((float) Math.abs(wheelDegreeVariable.radius));
    }
}
