package cn.mucang.android.jiakaoyi.k3collect.collision.impl;

import cn.mucang.android.jiakaoyi.engine.processor.exam.ExamProcessor;
import cn.mucang.android.jiakaoyi.hpmap.car.Wheel;
import cn.mucang.android.jiakaoyi.hpmap.model.Line;
import cn.mucang.android.jiakaoyi.k3collect.collision.K3CollisionModel;
import cn.mucang.android.jiakaoyi.signal.center.model.CarPos;

/* JADX INFO: loaded from: classes3.dex */
public class k extends K3CollisionModel {

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public Line f3923d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public Line f3924e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public Line f3925f;

    @Override // cn.mucang.android.jiakaoyi.k3collect.collision.K3CollisionModel
    public boolean b(cn.mucang.android.jiakaoyi.signal.c.e eVar, ExamProcessor examProcessor, K3CollisionModel.TriggerType triggerType) {
        CarPos carPosC = eVar.c();
        if (carPosC.bound.h(this.c)) {
            return false;
        }
        if (triggerType == K3CollisionModel.TriggerType.WheelPressLine) {
            Wheel wheelR = cn.mucang.android.jiakaoyi.hpmap.a.b.a.r(carPosC, this.f3923d);
            Wheel wheel = Wheel.None;
            return (wheelR == wheel && cn.mucang.android.jiakaoyi.hpmap.a.b.a.r(carPosC, this.f3924e) == wheel) ? false : true;
        }
        Line line = this.f3923d;
        if (!cn.mucang.android.jiakaoyi.hpmap.a.b.a.f(carPosC, line.start, line.end)) {
            return false;
        }
        Line line2 = this.f3924e;
        return cn.mucang.android.jiakaoyi.hpmap.a.b.a.f(carPosC, line2.start, line2.end);
    }
}
