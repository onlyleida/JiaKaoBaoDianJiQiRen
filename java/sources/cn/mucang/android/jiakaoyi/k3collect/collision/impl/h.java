package cn.mucang.android.jiakaoyi.k3collect.collision.impl;

import cn.mucang.android.jiakaoyi.engine.processor.exam.ExamProcessor;
import cn.mucang.android.jiakaoyi.hpmap.car.Wheel;
import cn.mucang.android.jiakaoyi.hpmap.model.Line;
import cn.mucang.android.jiakaoyi.k3collect.collision.K3CollisionModel;
import cn.mucang.android.jiakaoyi.signal.center.model.CarPos;

/* JADX INFO: loaded from: classes3.dex */
public class h extends K3CollisionModel {

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public Line f3910d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public Line f3911e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public int f3912f;

    private boolean d(cn.mucang.android.jiakaoyi.signal.c.e eVar, K3CollisionModel.TriggerType triggerType, Line line) {
        CarPos carPosC = eVar.c();
        if (carPosC.bound.h(this.c)) {
            return false;
        }
        if (triggerType == K3CollisionModel.TriggerType.WheelPressLine) {
            return cn.mucang.android.jiakaoyi.hpmap.a.b.a.r(carPosC, line) != Wheel.None;
        }
        return cn.mucang.android.jiakaoyi.hpmap.a.b.a.f(carPosC, line.start, line.end);
    }

    @Override // cn.mucang.android.jiakaoyi.k3collect.collision.K3CollisionModel
    public boolean b(cn.mucang.android.jiakaoyi.signal.c.e eVar, ExamProcessor examProcessor, K3CollisionModel.TriggerType triggerType) {
        return d(eVar, triggerType, this.f3910d);
    }

    public boolean c(cn.mucang.android.jiakaoyi.signal.c.e eVar, K3CollisionModel.TriggerType triggerType) {
        return d(eVar, triggerType, this.f3911e);
    }
}
