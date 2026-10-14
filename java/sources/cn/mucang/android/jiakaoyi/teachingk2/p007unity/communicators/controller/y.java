package cn.mucang.android.jiakaoyi.teachingk2.p007unity.communicators.controller;

import cn.mucang.android.jiakaoyi.signal.c.e;
import cn.mucang.android.jiakaoyi.teachingk2.p007unity.models.CarPoseModel;
import cn.mucang.android.jiakaoyi.teachingk2.unity.a;
import cn.mucang.android.jiakaoyi.unity.c.d;

/* JADX INFO: loaded from: classes4.dex */
public class y extends w {
    @Override // cn.mucang.android.jiakaoyi.teachingk2.p007unity.communicators.controller.w
    /* JADX INFO: renamed from: c */
    public void b(e eVar) {
        CarPoseModel carPoseModelB;
        if (eVar.d().M == 3 && d.r() && (carPoseModelB = a.b(eVar)) != null) {
            d.f(carPoseModelB, false);
        }
    }
}
