package cn.mucang.android.jiakaoyi.k3collect.collision.impl;

import cn.mucang.android.jiakaoyi.engine.processor.exam.ExamProcessor;
import cn.mucang.android.jiakaoyi.hpmap.car.Wheel;
import cn.mucang.android.jiakaoyi.hpmap.model.Line;
import cn.mucang.android.jiakaoyi.k3collect.K3ShapeType;
import cn.mucang.android.jiakaoyi.k3collect.collision.K3CollisionModel;
import cn.mucang.android.jiakaoyi.signal.center.model.CarPos;

/* JADX INFO: loaded from: classes3.dex */
public class f extends K3CollisionModel {

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public Line f3904d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public Line f3905e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public Line f3906f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public int f3907g;

    @Override // cn.mucang.android.jiakaoyi.k3collect.collision.K3CollisionModel
    public boolean b(cn.mucang.android.jiakaoyi.signal.c.e eVar, ExamProcessor examProcessor, K3CollisionModel.TriggerType triggerType) {
        CarPos carPosC = eVar.c();
        if (carPosC.bound.h(this.c)) {
            return false;
        }
        if (triggerType == K3CollisionModel.TriggerType.WheelPressLine) {
            return cn.mucang.android.jiakaoyi.hpmap.a.b.a.r(carPosC, this.f3906f) != Wheel.None;
        }
        return cn.mucang.android.jiakaoyi.hpmap.a.b.a.b(carPosC, this.f3906f);
    }

    public boolean c(int i) {
        if (i == 1) {
            return this.f3907g == K3ShapeType.ARROW_TURN_LEFT.getType() || this.f3907g == K3ShapeType.ARROW_TURN_LEFT_RIGHT.getType() || this.f3907g == K3ShapeType.ARROW_STRAIGHT_TURN_LEFT.getType() || this.f3907g == K3ShapeType.ARROW_TURN_LEFT_AROUND.getType();
        }
        if (i == 2) {
            return this.f3907g == K3ShapeType.ARROW_TURN_RIGHT.getType() || this.f3907g == K3ShapeType.ARROW_TURN_LEFT_RIGHT.getType() || this.f3907g == K3ShapeType.ARROW_STRAIGHT_TURN_RIGHT.getType();
        }
        if (i == 3) {
            return this.f3907g == K3ShapeType.ARROW_STRAIGHT.getType() || this.f3907g == K3ShapeType.ARROW_STRAIGHT_TURN_RIGHT.getType() || this.f3907g == K3ShapeType.ARROW_STRAIGHT_TURN_LEFT.getType() || this.f3907g == K3ShapeType.ARROW_STRAIGHT_TURN_AROUND.getType();
        }
        return i != 4 || this.f3907g == K3ShapeType.ARROW_STRAIGHT_TURN_AROUND.getType() || this.f3907g == K3ShapeType.ARROW_TURN_AROUND.getType() || this.f3907g == K3ShapeType.ARROW_TURN_LEFT.getType() || this.f3907g == K3ShapeType.ARROW_STRAIGHT_TURN_LEFT.getType() || this.f3907g == K3ShapeType.ARROW_TURN_LEFT_RIGHT.getType() || this.f3907g == K3ShapeType.ARROW_TURN_LEFT_AROUND.getType();
    }
}
