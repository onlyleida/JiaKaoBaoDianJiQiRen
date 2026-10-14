package cn.mucang.android.jiakaoyi.k3collect.collision.impl;

import cn.mucang.android.jiakaoyi.engine.processor.exam.ExamProcessor;
import cn.mucang.android.jiakaoyi.k3collect.collision.K3CollisionModel;
import cn.mucang.android.jiakaoyi.signal.center.model.CarPos;
import cn.mucang.android.jiakaoyi.signal.pos.Pos;

/* JADX INFO: loaded from: classes3.dex */
public class c extends K3CollisionModel {

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public Pos f3891d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public Pos f3892e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public Pos f3893f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public Pos f3894g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public cn.mucang.android.jiakaoyi.signal.pos.c f3895h;

    @Override // cn.mucang.android.jiakaoyi.k3collect.collision.K3CollisionModel
    public boolean b(cn.mucang.android.jiakaoyi.signal.c.e eVar, ExamProcessor examProcessor, K3CollisionModel.TriggerType triggerType) {
        CarPos carPosC = eVar.c();
        if (this.c.h(carPosC.bound)) {
            return false;
        }
        return triggerType == K3CollisionModel.TriggerType.WheelPressLine ? cn.mucang.android.jiakaoyi.hpmap.a.b.c.g(new cn.mucang.android.jiakaoyi.signal.pos.c(carPosC.wheelLeftFront, carPosC.wheelLeftBack, carPosC.wheelRightBack, carPosC.wheelRightFront), this.f3895h) : cn.mucang.android.jiakaoyi.hpmap.a.b.c.g(carPosC.carRect, this.f3895h);
    }
}
