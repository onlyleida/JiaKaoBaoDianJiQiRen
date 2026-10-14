package cn.mucang.android.jiakaoyi.k3collect.collision.impl;

import cn.mucang.android.jiakaoyi.engine.processor.exam.ExamProcessor;
import cn.mucang.android.jiakaoyi.k3collect.K3ShapeType;
import cn.mucang.android.jiakaoyi.k3collect.collision.K3CollisionModel;
import cn.mucang.android.jiakaoyi.signal.center.model.CarPos;
import cn.mucang.android.jiakaoyi.signal.pos.Pos;

/* JADX INFO: loaded from: classes3.dex */
public class e extends K3CollisionModel {

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public int f3900d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public Pos f3901e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public double f3902f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public cn.mucang.android.jiakaoyi.signal.pos.c f3903g;

    private boolean c(Pos pos, Pos pos2) {
        Pos posN = cn.mucang.android.jiakaoyi.hpmap.d.a.n(this.f3901e, pos, pos2);
        if (posN.distanceTo(this.f3901e) >= this.f3902f) {
            return false;
        }
        double d2 = pos.x;
        double d3 = posN.x;
        if ((d2 - d3) * (d3 - pos2.x) < 0.0d) {
            return false;
        }
        double d4 = pos.y;
        double d5 = posN.y;
        return (d4 - d5) * (d5 - pos2.y) >= 0.0d;
    }

    private boolean d(CarPos carPos) {
        cn.mucang.android.jiakaoyi.signal.pos.c cVar = carPos.carRect;
        if (c(cVar.f5820a, cVar.b)) {
            return true;
        }
        cn.mucang.android.jiakaoyi.signal.pos.c cVar2 = carPos.carRect;
        if (c(cVar2.b, cVar2.c)) {
            return true;
        }
        cn.mucang.android.jiakaoyi.signal.pos.c cVar3 = carPos.carRect;
        if (c(cVar3.c, cVar3.f5821d)) {
            return true;
        }
        cn.mucang.android.jiakaoyi.signal.pos.c cVar4 = carPos.carRect;
        return c(cVar4.f5821d, cVar4.f5820a);
    }

    @Override // cn.mucang.android.jiakaoyi.k3collect.collision.K3CollisionModel
    public boolean b(cn.mucang.android.jiakaoyi.signal.c.e eVar, ExamProcessor examProcessor, K3CollisionModel.TriggerType triggerType) {
        if (triggerType != K3CollisionModel.TriggerType.WheelPressLine) {
            return false;
        }
        CarPos carPosC = eVar.c();
        if (carPosC.bound.h(this.c)) {
            return false;
        }
        int i = this.f3900d;
        if (i == 1 || i == K3ShapeType.CENTRAL_CIRCLE_ROUND.getType()) {
            if (cn.mucang.android.jiakaoyi.hpmap.a.b.c.a(carPosC.carRect, this.f3901e)) {
                return true;
            }
            return d(carPosC);
        }
        if (this.f3900d == 2) {
            return cn.mucang.android.jiakaoyi.hpmap.a.b.c.g(this.f3903g, carPosC.carRect);
        }
        return false;
    }
}
