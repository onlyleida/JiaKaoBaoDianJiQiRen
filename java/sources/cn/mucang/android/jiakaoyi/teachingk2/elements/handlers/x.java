package cn.mucang.android.jiakaoyi.teachingk2.elements.handlers;

import cn.mucang.android.jiakaoyi.signal.center.model.CarPos;
import cn.mucang.android.jiakaoyi.teachingk2.data.TeachModel;
import cn.mucang.android.jiakaoyi.teachingk2.elements.f0;
import cn.mucang.android.jiakaoyi.teachingk2.elements.g0;
import cn.mucang.android.jiakaoyi.teachingk2.elements.variable.WheelCrossOverLineVariable;

/* JADX INFO: loaded from: classes4.dex */
public class x implements g0<WheelCrossOverLineVariable> {
    @Override // cn.mucang.android.jiakaoyi.teachingk2.elements.g0
    /* JADX INFO: renamed from: b, reason: merged with bridge method [inline-methods] */
    public boolean a(WheelCrossOverLineVariable wheelCrossOverLineVariable, cn.mucang.android.jiakaoyi.signal.c.e eVar, cn.mucang.android.jiakaoyi.hpmap.a.a.b bVar, cn.mucang.android.jiakaoyi.hpmap.collision.k2.checker.b<?, ?> bVar2, TeachModel teachModel, f0 f0Var) {
        CarPos carPosC = eVar.c();
        return cn.mucang.android.jiakaoyi.hpmap.d.a.C(wheelCrossOverLineVariable.startPoint, wheelCrossOverLineVariable.endPoint, carPosC.wheelRightBack, carPosC.wheelRightFront) && cn.mucang.android.jiakaoyi.hpmap.d.a.C(wheelCrossOverLineVariable.startPoint, wheelCrossOverLineVariable.endPoint, carPosC.wheelLeftBack, carPosC.wheelLeftFront);
    }
}
