package cn.mucang.android.jiakaoyi.teachingk2.elements.handlers;

import cn.mucang.android.jiakaoyi.hpmap.car.Wheel;
import cn.mucang.android.jiakaoyi.teachingk2.data.TeachModel;
import cn.mucang.android.jiakaoyi.teachingk2.elements.f0;
import cn.mucang.android.jiakaoyi.teachingk2.elements.g0;
import cn.mucang.android.jiakaoyi.teachingk2.elements.variable.WheelCrossLineVariable;
import java.util.Iterator;

/* JADX INFO: loaded from: classes4.dex */
public class w implements g0<WheelCrossLineVariable> {
    @Override // cn.mucang.android.jiakaoyi.teachingk2.elements.g0
    /* JADX INFO: renamed from: b, reason: merged with bridge method [inline-methods] */
    public boolean a(WheelCrossLineVariable wheelCrossLineVariable, cn.mucang.android.jiakaoyi.signal.c.e eVar, cn.mucang.android.jiakaoyi.hpmap.a.a.b bVar, cn.mucang.android.jiakaoyi.hpmap.collision.k2.checker.b<?, ?> bVar2, TeachModel teachModel, f0 f0Var) {
        if (cn.mucang.android.core.utils.g.b(wheelCrossLineVariable.wheels)) {
            return false;
        }
        Wheel wheelS = cn.mucang.android.jiakaoyi.hpmap.a.b.a.s(eVar.c(), wheelCrossLineVariable.startPoint, wheelCrossLineVariable.endPoint);
        Iterator<Wheel> it = wheelCrossLineVariable.wheels.iterator();
        while (it.hasNext()) {
            if (it.next() == wheelS) {
                return true;
            }
        }
        return false;
    }
}
