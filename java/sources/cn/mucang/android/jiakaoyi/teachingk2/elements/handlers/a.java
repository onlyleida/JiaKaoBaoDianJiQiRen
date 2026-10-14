package cn.mucang.android.jiakaoyi.teachingk2.elements.handlers;

import cn.mucang.android.jiakaoyi.teachingk2.data.TeachModel;
import cn.mucang.android.jiakaoyi.teachingk2.elements.f0;
import cn.mucang.android.jiakaoyi.teachingk2.elements.g0;
import cn.mucang.android.jiakaoyi.teachingk2.elements.variable.CarAngleToLineVariable;

/* JADX INFO: loaded from: classes4.dex */
public class a implements g0<CarAngleToLineVariable> {
    @Override // cn.mucang.android.jiakaoyi.teachingk2.elements.g0
    /* JADX INFO: renamed from: b, reason: merged with bridge method [inline-methods] */
    public boolean a(CarAngleToLineVariable carAngleToLineVariable, cn.mucang.android.jiakaoyi.signal.c.e eVar, cn.mucang.android.jiakaoyi.hpmap.a.a.b bVar, cn.mucang.android.jiakaoyi.hpmap.collision.k2.checker.b<?, ?> bVar2, TeachModel teachModel, f0 f0Var) {
        return Math.abs(Math.abs((double) cn.mucang.android.jiakaoyi.signal.utils.d.c((float) Math.toDegrees(carAngleToLineVariable.startPoint.vectorTo(carAngleToLineVariable.endPoint).vectorAngle(eVar.c().back.vectorTo(eVar.c().front))))) - ((double) carAngleToLineVariable.degree)) <= ((double) Math.abs(carAngleToLineVariable.accuracy));
    }
}
