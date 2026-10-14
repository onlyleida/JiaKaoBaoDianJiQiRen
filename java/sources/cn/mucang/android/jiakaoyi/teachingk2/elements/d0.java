package cn.mucang.android.jiakaoyi.teachingk2.elements;

import cn.mucang.android.jiakaoyi.teachingk2.elements.handlers.StopPositionHandler;
import cn.mucang.android.jiakaoyi.teachingk2.elements.variable.CarAngleToLineVariable;
import cn.mucang.android.jiakaoyi.teachingk2.elements.variable.CarCrossLineVariable;
import cn.mucang.android.jiakaoyi.teachingk2.elements.variable.CarCrossRectVariable;
import cn.mucang.android.jiakaoyi.teachingk2.elements.variable.CarDistanceToLineVariable;
import cn.mucang.android.jiakaoyi.teachingk2.elements.variable.CarFaceToLineVariable;
import cn.mucang.android.jiakaoyi.teachingk2.elements.variable.CarHeaderDistanceToLineVariable;
import cn.mucang.android.jiakaoyi.teachingk2.elements.variable.CarInRectPositionVariable;
import cn.mucang.android.jiakaoyi.teachingk2.elements.variable.CarInRectVariable;
import cn.mucang.android.jiakaoyi.teachingk2.elements.variable.CarStopVariable;
import cn.mucang.android.jiakaoyi.teachingk2.elements.variable.DelayDistanceVariable;
import cn.mucang.android.jiakaoyi.teachingk2.elements.variable.DelayTimeVariable;
import cn.mucang.android.jiakaoyi.teachingk2.elements.variable.DirectionVariable;
import cn.mucang.android.jiakaoyi.teachingk2.elements.variable.FootBrakeVariable;
import cn.mucang.android.jiakaoyi.teachingk2.elements.variable.GearVariable;
import cn.mucang.android.jiakaoyi.teachingk2.elements.variable.HandBrakeVariable;
import cn.mucang.android.jiakaoyi.teachingk2.elements.variable.KuWeiPoseVariable;
import cn.mucang.android.jiakaoyi.teachingk2.elements.variable.LightVariable;
import cn.mucang.android.jiakaoyi.teachingk2.elements.variable.NormalVariable;
import cn.mucang.android.jiakaoyi.teachingk2.elements.variable.RepeatVariable;
import cn.mucang.android.jiakaoyi.teachingk2.elements.variable.SpeedVariable;
import cn.mucang.android.jiakaoyi.teachingk2.elements.variable.StopPositionVariable;
import cn.mucang.android.jiakaoyi.teachingk2.elements.variable.TraceVariable;
import cn.mucang.android.jiakaoyi.teachingk2.elements.variable.TurnHeadVariable;
import cn.mucang.android.jiakaoyi.teachingk2.elements.variable.WheelCrossLineVariable;
import cn.mucang.android.jiakaoyi.teachingk2.elements.variable.WheelCrossOverLineVariable;
import cn.mucang.android.jiakaoyi.teachingk2.elements.variable.WheelDegreeVariable;
import cn.mucang.android.jiakaoyi.teachingk2.elements.variable.WheelDistanceToLineVariable;
import cn.mucang.android.jiakaoyi.teachingk2.elements.variable.quxian.QuXianPositionVariable;
import cn.mucang.android.jiakaoyi.teachingk2.elements.variable.specific.CarHouLiuVariable;
import java.util.HashMap;
import java.util.Map;

/* JADX INFO: loaded from: classes4.dex */
public class d0 {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final Map<Class<? extends Variable>, b<?, g0<? extends Variable>>> f7011a;
    private final Map<Integer, Class<? extends Variable>> b;

    /* JADX INFO: Access modifiers changed from: private */
    interface b<C extends Variable, T extends g0<C>> {
        T create();
    }

    private static class c {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private static final d0 f7012a = new d0();
    }

    public static <T extends Variable> Class<T> a(int i) {
        Class<T> cls = (Class) c.f7012a.b.get(Integer.valueOf(i));
        if (cls == null) {
            return null;
        }
        return cls;
    }

    public static <C extends Variable, T extends g0<C>> T b(Class<C> cls) {
        b<?, g0<? extends Variable>> bVar = c.f7012a.f7011a.get(cls);
        if (bVar == null) {
            return null;
        }
        return (T) bVar.create();
    }

    private <C extends Variable, T extends g0<C>> void c(int i, Class<C> cls, b<C, T> bVar) {
        this.f7011a.put(cls, bVar);
        this.b.put(Integer.valueOf(i), cls);
    }

    private d0() {
        this.f7011a = new HashMap();
        this.b = new HashMap();
        c(1, GearVariable.class, new b() { // from class: cn.mucang.android.jiakaoyi.teachingk2.elements.m
            @Override // cn.mucang.android.jiakaoyi.teachingk2.elements.d0.b
            public final g0 create() {
                return new cn.mucang.android.jiakaoyi.teachingk2.elements.handlers.n();
            }
        });
        c(3, SpeedVariable.class, new b() { // from class: cn.mucang.android.jiakaoyi.teachingk2.elements.z
            @Override // cn.mucang.android.jiakaoyi.teachingk2.elements.d0.b
            public final g0 create() {
                return new cn.mucang.android.jiakaoyi.teachingk2.elements.handlers.t();
            }
        });
        c(4, DirectionVariable.class, new b() { // from class: cn.mucang.android.jiakaoyi.teachingk2.elements.a
            @Override // cn.mucang.android.jiakaoyi.teachingk2.elements.d0.b
            public final g0 create() {
                return new cn.mucang.android.jiakaoyi.teachingk2.elements.handlers.l();
            }
        });
        c(5, HandBrakeVariable.class, new b() { // from class: cn.mucang.android.jiakaoyi.teachingk2.elements.e
            @Override // cn.mucang.android.jiakaoyi.teachingk2.elements.d0.b
            public final g0 create() {
                return new cn.mucang.android.jiakaoyi.teachingk2.elements.handlers.o();
            }
        });
        c(6, FootBrakeVariable.class, new b() { // from class: cn.mucang.android.jiakaoyi.teachingk2.elements.o
            @Override // cn.mucang.android.jiakaoyi.teachingk2.elements.d0.b
            public final g0 create() {
                return new cn.mucang.android.jiakaoyi.teachingk2.elements.handlers.m();
            }
        });
        c(52, CarAngleToLineVariable.class, new b() { // from class: cn.mucang.android.jiakaoyi.teachingk2.elements.v
            @Override // cn.mucang.android.jiakaoyi.teachingk2.elements.d0.b
            public final g0 create() {
                return new cn.mucang.android.jiakaoyi.teachingk2.elements.handlers.a();
            }
        });
        c(50, CarHeaderDistanceToLineVariable.class, new b() { // from class: cn.mucang.android.jiakaoyi.teachingk2.elements.q
            @Override // cn.mucang.android.jiakaoyi.teachingk2.elements.d0.b
            public final g0 create() {
                return new cn.mucang.android.jiakaoyi.teachingk2.elements.handlers.f();
            }
        });
        c(53, CarCrossLineVariable.class, new b() { // from class: cn.mucang.android.jiakaoyi.teachingk2.elements.x
            @Override // cn.mucang.android.jiakaoyi.teachingk2.elements.d0.b
            public final g0 create() {
                return new cn.mucang.android.jiakaoyi.teachingk2.elements.handlers.b();
            }
        });
        c(25, WheelCrossLineVariable.class, new b() { // from class: cn.mucang.android.jiakaoyi.teachingk2.elements.b0
            @Override // cn.mucang.android.jiakaoyi.teachingk2.elements.d0.b
            public final g0 create() {
                return new cn.mucang.android.jiakaoyi.teachingk2.elements.handlers.w();
            }
        });
        c(21, WheelCrossOverLineVariable.class, new b() { // from class: cn.mucang.android.jiakaoyi.teachingk2.elements.h
            @Override // cn.mucang.android.jiakaoyi.teachingk2.elements.d0.b
            public final g0 create() {
                return new cn.mucang.android.jiakaoyi.teachingk2.elements.handlers.x();
            }
        });
        c(2, CarStopVariable.class, new b() { // from class: cn.mucang.android.jiakaoyi.teachingk2.elements.a0
            @Override // cn.mucang.android.jiakaoyi.teachingk2.elements.d0.b
            public final g0 create() {
                return new cn.mucang.android.jiakaoyi.teachingk2.elements.handlers.i();
            }
        });
        c(54, CarInRectVariable.class, new b() { // from class: cn.mucang.android.jiakaoyi.teachingk2.elements.w
            @Override // cn.mucang.android.jiakaoyi.teachingk2.elements.d0.b
            public final g0 create() {
                return new cn.mucang.android.jiakaoyi.teachingk2.elements.handlers.g();
            }
        });
        c(58, CarCrossRectVariable.class, new b() { // from class: cn.mucang.android.jiakaoyi.teachingk2.elements.i
            @Override // cn.mucang.android.jiakaoyi.teachingk2.elements.d0.b
            public final g0 create() {
                return new cn.mucang.android.jiakaoyi.teachingk2.elements.handlers.c();
            }
        });
        c(55, CarInRectPositionVariable.class, new b() { // from class: cn.mucang.android.jiakaoyi.teachingk2.elements.p
            @Override // cn.mucang.android.jiakaoyi.teachingk2.elements.d0.b
            public final g0 create() {
                return new cn.mucang.android.jiakaoyi.teachingk2.elements.handlers.h();
            }
        });
        c(24, WheelDistanceToLineVariable.class, new b() { // from class: cn.mucang.android.jiakaoyi.teachingk2.elements.c0
            @Override // cn.mucang.android.jiakaoyi.teachingk2.elements.d0.b
            public final g0 create() {
                return new cn.mucang.android.jiakaoyi.teachingk2.elements.handlers.z();
            }
        });
        c(59, CarHouLiuVariable.class, new b() { // from class: cn.mucang.android.jiakaoyi.teachingk2.elements.j
            @Override // cn.mucang.android.jiakaoyi.teachingk2.elements.d0.b
            public final g0 create() {
                return new cn.mucang.android.jiakaoyi.teachingk2.elements.handlers.b0.a();
            }
        });
        c(60, CarFaceToLineVariable.class, new b() { // from class: cn.mucang.android.jiakaoyi.teachingk2.elements.t
            @Override // cn.mucang.android.jiakaoyi.teachingk2.elements.d0.b
            public final g0 create() {
                return new cn.mucang.android.jiakaoyi.teachingk2.elements.handlers.e();
            }
        });
        c(62, CarDistanceToLineVariable.class, new b() { // from class: cn.mucang.android.jiakaoyi.teachingk2.elements.r
            @Override // cn.mucang.android.jiakaoyi.teachingk2.elements.d0.b
            public final g0 create() {
                return new cn.mucang.android.jiakaoyi.teachingk2.elements.handlers.d();
            }
        });
        c(63, QuXianPositionVariable.class, new b() { // from class: cn.mucang.android.jiakaoyi.teachingk2.elements.n
            @Override // cn.mucang.android.jiakaoyi.teachingk2.elements.d0.b
            public final g0 create() {
                return new cn.mucang.android.jiakaoyi.teachingk2.elements.handlers.a0.a();
            }
        });
        c(64, KuWeiPoseVariable.class, new b() { // from class: cn.mucang.android.jiakaoyi.teachingk2.elements.g
            @Override // cn.mucang.android.jiakaoyi.teachingk2.elements.d0.b
            public final g0 create() {
                return new cn.mucang.android.jiakaoyi.teachingk2.elements.handlers.p();
            }
        });
        c(80, WheelDegreeVariable.class, new b() { // from class: cn.mucang.android.jiakaoyi.teachingk2.elements.l
            @Override // cn.mucang.android.jiakaoyi.teachingk2.elements.d0.b
            public final g0 create() {
                return new cn.mucang.android.jiakaoyi.teachingk2.elements.handlers.y();
            }
        });
        c(81, LightVariable.class, new b() { // from class: cn.mucang.android.jiakaoyi.teachingk2.elements.c
            @Override // cn.mucang.android.jiakaoyi.teachingk2.elements.d0.b
            public final g0 create() {
                return new cn.mucang.android.jiakaoyi.teachingk2.elements.handlers.q();
            }
        });
        c(90, DelayTimeVariable.class, new b() { // from class: cn.mucang.android.jiakaoyi.teachingk2.elements.y
            @Override // cn.mucang.android.jiakaoyi.teachingk2.elements.d0.b
            public final g0 create() {
                return new cn.mucang.android.jiakaoyi.teachingk2.elements.handlers.k();
            }
        });
        c(91, DelayDistanceVariable.class, new b() { // from class: cn.mucang.android.jiakaoyi.teachingk2.elements.k
            @Override // cn.mucang.android.jiakaoyi.teachingk2.elements.d0.b
            public final g0 create() {
                return new cn.mucang.android.jiakaoyi.teachingk2.elements.handlers.j();
            }
        });
        c(82, RepeatVariable.class, new b() { // from class: cn.mucang.android.jiakaoyi.teachingk2.elements.s
            @Override // cn.mucang.android.jiakaoyi.teachingk2.elements.d0.b
            public final g0 create() {
                return new cn.mucang.android.jiakaoyi.teachingk2.elements.handlers.s();
            }
        });
        c(100, TraceVariable.class, new b() { // from class: cn.mucang.android.jiakaoyi.teachingk2.elements.b
            @Override // cn.mucang.android.jiakaoyi.teachingk2.elements.d0.b
            public final g0 create() {
                return new cn.mucang.android.jiakaoyi.teachingk2.elements.handlers.u();
            }
        });
        c(7, TurnHeadVariable.class, new b() { // from class: cn.mucang.android.jiakaoyi.teachingk2.elements.u
            @Override // cn.mucang.android.jiakaoyi.teachingk2.elements.d0.b
            public final g0 create() {
                return new cn.mucang.android.jiakaoyi.teachingk2.elements.handlers.v();
            }
        });
        c(8, NormalVariable.class, new b() { // from class: cn.mucang.android.jiakaoyi.teachingk2.elements.d
            @Override // cn.mucang.android.jiakaoyi.teachingk2.elements.d0.b
            public final g0 create() {
                return new cn.mucang.android.jiakaoyi.teachingk2.elements.handlers.r();
            }
        });
        c(65, StopPositionVariable.class, new b() { // from class: cn.mucang.android.jiakaoyi.teachingk2.elements.f
            @Override // cn.mucang.android.jiakaoyi.teachingk2.elements.d0.b
            public final g0 create() {
                return new StopPositionHandler();
            }
        });
    }
}
