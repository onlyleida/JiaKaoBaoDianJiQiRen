package cn.mucang.android.jiakaoyi.teachingk2.elements.handlers;

import cn.mucang.android.jiakaoyi.signal.center.model.CarModel;
import cn.mucang.android.jiakaoyi.teachingk2.data.TeachModel;
import cn.mucang.android.jiakaoyi.teachingk2.elements.f0;
import cn.mucang.android.jiakaoyi.teachingk2.elements.g0;
import cn.mucang.android.jiakaoyi.teachingk2.elements.variable.DirectionVariable;

/* JADX INFO: loaded from: classes4.dex */
public class l implements g0<DirectionVariable> {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private long f7031a = 0;

    /* JADX WARN: Code duplicated, block: B:14:0x0026  */
    /* JADX WARN: Code duplicated, block: B:5:0x0012  */
    @Override // cn.mucang.android.jiakaoyi.teachingk2.elements.g0
    /* JADX INFO: renamed from: b, reason: merged with bridge method [inline-methods] */
    public boolean a(DirectionVariable directionVariable, cn.mucang.android.jiakaoyi.signal.c.e eVar, cn.mucang.android.jiakaoyi.hpmap.a.a.b bVar, cn.mucang.android.jiakaoyi.hpmap.collision.k2.checker.b<?, ?> bVar2, TeachModel teachModel, f0 f0Var) {
        boolean z;
        CarModel.Direction direction = eVar.d().F;
        int i = directionVariable.direction;
        CarModel.Direction direction2 = CarModel.Direction.Stop;
        if (i != direction2.direction) {
            CarModel.Direction direction3 = CarModel.Direction.Forward;
            if (i != direction3.direction) {
                CarModel.Direction direction4 = CarModel.Direction.Back;
                if (i == direction4.direction && direction == direction4) {
                    z = true;
                } else {
                    z = false;
                }
            } else if (direction == direction3) {
                z = true;
            } else {
                z = false;
            }
        } else if (direction == direction2) {
            z = true;
        } else {
            z = false;
        }
        if (z) {
            if (this.f7031a == 0) {
                this.f7031a = eVar.d().L;
            }
            if (directionVariable.duration > 0) {
                return eVar.d().L - this.f7031a >= ((long) directionVariable.duration);
            }
        } else {
            this.f7031a = 0L;
        }
        return z;
    }
}
