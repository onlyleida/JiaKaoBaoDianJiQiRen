package cn.mucang.android.jiakaoyi.teachingk2.p007unity.communicators.controller;

import cn.mucang.android.core.utils.u;
import cn.mucang.android.jiakaoyi.hpmap.car.CarData;
import cn.mucang.android.jiakaoyi.mapcollect.c.i;
import cn.mucang.android.jiakaoyi.signal.i.a;
import cn.mucang.android.jiakaoyi.signal.pos.Gps;
import cn.mucang.android.jiakaoyi.teachingk2.res.n;

/* JADX INFO: loaded from: classes4.dex */
public class x {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private i f8508a;
    private final Gps b = new Gps();

    public void a() {
        CarData carDataC = n.b().c();
        if (carDataC == null) {
            u.h("没有车身数据");
            return;
        }
        a aVar = n.b().f7599a;
        if (this.f8508a == null || !this.b.sameWith(aVar.getZero())) {
            this.b.setGps(aVar.getZero());
            b();
            i iVar = new i(carDataC, aVar);
            this.f8508a = iVar;
            iVar.f();
        }
    }

    public void b() {
        i iVar = this.f8508a;
        if (iVar != null) {
            iVar.g();
            this.f8508a = null;
        }
    }
}
