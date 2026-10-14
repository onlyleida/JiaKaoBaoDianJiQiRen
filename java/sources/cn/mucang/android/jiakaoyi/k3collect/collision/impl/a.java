package cn.mucang.android.jiakaoyi.k3collect.collision.impl;

import cn.mucang.android.jiakaoyi.engine.processor.exam.ExamProcessor;
import cn.mucang.android.jiakaoyi.hpmap.car.Wheel;
import cn.mucang.android.jiakaoyi.k3collect.collision.K3CollisionModel;
import cn.mucang.android.jiakaoyi.signal.center.model.CarPos;
import cn.mucang.android.jiakaoyi.signal.pos.Pos;
import java.util.List;

/* JADX INFO: loaded from: classes3.dex */
public class a extends K3CollisionModel {

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public List<Pos> f3889d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public int f3890e;

    private boolean d(CarPos carPos, List<Pos> list) {
        if (cn.mucang.android.jiakaoyi.hpmap.a.b.a.c(carPos, list.get(list.size() - 1), list.get(0))) {
            return true;
        }
        int i = 0;
        while (i < list.size() - 1) {
            Pos pos = list.get(i);
            i++;
            if (cn.mucang.android.jiakaoyi.hpmap.a.b.a.c(carPos, pos, list.get(i))) {
                return true;
            }
        }
        return false;
    }

    private boolean e(CarPos carPos, List<Pos> list) {
        if (cn.mucang.android.jiakaoyi.hpmap.a.b.a.s(carPos, list.get(list.size() - 1), list.get(0)) != Wheel.None) {
            return true;
        }
        int i = 0;
        while (i < list.size() - 1) {
            Pos pos = list.get(i);
            i++;
            if (cn.mucang.android.jiakaoyi.hpmap.a.b.a.s(carPos, pos, list.get(i)) != Wheel.None) {
                return true;
            }
        }
        return false;
    }

    @Override // cn.mucang.android.jiakaoyi.k3collect.collision.K3CollisionModel
    public boolean a(cn.mucang.android.jiakaoyi.signal.c.e eVar, ExamProcessor examProcessor) {
        return c(eVar.c(), this.f3889d);
    }

    @Override // cn.mucang.android.jiakaoyi.k3collect.collision.K3CollisionModel
    public boolean b(cn.mucang.android.jiakaoyi.signal.c.e eVar, ExamProcessor examProcessor, K3CollisionModel.TriggerType triggerType) {
        CarPos carPosC = eVar.c();
        if (carPosC.bound.h(this.c)) {
            return false;
        }
        if (cn.mucang.android.jiakaoyi.hpmap.a.b.c.i(carPosC.center, this.f3889d)) {
            return true;
        }
        if (triggerType == K3CollisionModel.TriggerType.WheelPressLine) {
            if (e(carPosC, this.f3889d)) {
                return true;
            }
        } else if (d(carPosC, this.f3889d)) {
            return true;
        }
        return false;
    }

    public boolean c(CarPos carPos, List<Pos> list) {
        return cn.mucang.android.jiakaoyi.hpmap.a.b.c.i(carPos.center, list) && !cn.mucang.android.jiakaoyi.hpmap.a.b.c.h(carPos.carRect, list, true);
    }
}
