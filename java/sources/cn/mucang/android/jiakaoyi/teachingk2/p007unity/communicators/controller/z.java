package cn.mucang.android.jiakaoyi.teachingk2.p007unity.communicators.controller;

import cn.mucang.android.jiakaoyi.signal.c.e;
import cn.mucang.android.jiakaoyi.teachingk2.p007unity.models.CarStateModel;
import cn.mucang.android.jiakaoyi.teachingk2.unity.a;
import cn.mucang.android.jiakaoyi.unity.c.d;

/* JADX INFO: loaded from: classes4.dex */
public class z extends w {
    private CarStateModel b;

    @Override // cn.mucang.android.jiakaoyi.teachingk2.p007unity.communicators.controller.w
    /* JADX INFO: renamed from: c */
    public void b(e eVar) {
        if (eVar.d().M != 1) {
            return;
        }
        CarStateModel carStateModelC = a.c(eVar);
        if (carStateModelC.equals(this.b)) {
            return;
        }
        this.b = carStateModelC;
        d.f(carStateModelC, false);
    }

    @Override // cn.mucang.android.jiakaoyi.teachingk2.p007unity.communicators.controller.w
    public void e() {
        super.e();
        this.b = null;
    }
}
