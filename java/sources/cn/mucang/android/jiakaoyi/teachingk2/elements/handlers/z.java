package cn.mucang.android.jiakaoyi.teachingk2.elements.handlers;

import cn.mucang.android.jiakaoyi.hpmap.car.Wheel;
import cn.mucang.android.jiakaoyi.signal.center.model.CarPos;
import cn.mucang.android.jiakaoyi.signal.pos.Pos;
import cn.mucang.android.jiakaoyi.teachingk2.data.TeachModel;
import cn.mucang.android.jiakaoyi.teachingk2.elements.f0;
import cn.mucang.android.jiakaoyi.teachingk2.elements.g0;
import cn.mucang.android.jiakaoyi.teachingk2.elements.model.Relation;
import cn.mucang.android.jiakaoyi.teachingk2.elements.variable.WheelDistanceToLineVariable;

/* JADX INFO: loaded from: classes4.dex */
public class z implements g0<WheelDistanceToLineVariable> {

    static /* synthetic */ class a {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        static final /* synthetic */ int[] f7045a;

        static {
            int[] iArr = new int[Wheel.values().length];
            f7045a = iArr;
            try {
                iArr[Wheel.LeftBack.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                f7045a[Wheel.LeftFront.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                f7045a[Wheel.RightFront.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                f7045a[Wheel.RightBack.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
        }
    }

    @Override // cn.mucang.android.jiakaoyi.teachingk2.elements.g0
    /* JADX INFO: renamed from: b, reason: merged with bridge method [inline-methods] */
    public boolean a(WheelDistanceToLineVariable wheelDistanceToLineVariable, cn.mucang.android.jiakaoyi.signal.c.e eVar, cn.mucang.android.jiakaoyi.hpmap.a.a.b bVar, cn.mucang.android.jiakaoyi.hpmap.collision.k2.checker.b<?, ?> bVar2, TeachModel teachModel, f0 f0Var) {
        Pos pos;
        CarPos carPosC = eVar.c();
        int i = a.f7045a[wheelDistanceToLineVariable.wheel.ordinal()];
        if (i == 1) {
            pos = carPosC.wheelLeftBack;
        } else if (i == 2) {
            pos = carPosC.wheelLeftFront;
        } else if (i != 3) {
            pos = i != 4 ? null : carPosC.wheelRightBack;
        } else {
            pos = carPosC.wheelRightFront;
        }
        if (pos == null) {
            return false;
        }
        double dK = cn.mucang.android.jiakaoyi.hpmap.d.a.k(pos, wheelDistanceToLineVariable.startPoint, wheelDistanceToLineVariable.endPoint);
        Relation relation = wheelDistanceToLineVariable.mode;
        if (relation == Relation.BigThan) {
            return dK > ((double) wheelDistanceToLineVariable.distance);
        }
        if (relation == Relation.Equal) {
            return Math.abs(dK - ((double) wheelDistanceToLineVariable.distance)) <= ((double) wheelDistanceToLineVariable.accuracy);
        }
        if (relation == Relation.SmallThan) {
            return dK < ((double) wheelDistanceToLineVariable.distance);
        }
        if (relation == Relation.Between) {
            return dK <= ((double) wheelDistanceToLineVariable.distanceMax) && dK >= ((double) wheelDistanceToLineVariable.distance);
        }
        if (relation == Relation.OutOfRange) {
            return dK < ((double) wheelDistanceToLineVariable.distance) || dK > ((double) wheelDistanceToLineVariable.distanceMax);
        }
        return false;
    }
}
