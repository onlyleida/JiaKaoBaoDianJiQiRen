package cn.mucang.android.jiakaoyi.k3collect.collision.impl;

import cn.mucang.android.jiakaoyi.engine.processor.exam.ExamProcessor;
import cn.mucang.android.jiakaoyi.hpmap.car.Wheel;
import cn.mucang.android.jiakaoyi.hpmap.model.Line;
import cn.mucang.android.jiakaoyi.k3collect.collision.K3CollisionModel;
import cn.mucang.android.jiakaoyi.signal.center.model.CarPos;

/* JADX INFO: loaded from: classes3.dex */
public class d extends K3CollisionModel {

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public Line f3896d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public Line f3897e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public Line f3898f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public int f3899g;

    @Override // cn.mucang.android.jiakaoyi.k3collect.collision.K3CollisionModel
    public boolean b(cn.mucang.android.jiakaoyi.signal.c.e eVar, ExamProcessor examProcessor, K3CollisionModel.TriggerType triggerType) {
        CarPos carPosC = eVar.c();
        if (carPosC.bound.h(this.c)) {
            return false;
        }
        if (triggerType == K3CollisionModel.TriggerType.WheelPressLine) {
            return cn.mucang.android.jiakaoyi.hpmap.a.b.a.r(carPosC, this.f3898f) != Wheel.None;
        }
        return cn.mucang.android.jiakaoyi.hpmap.a.b.a.b(carPosC, this.f3898f);
    }
}
