package cn.mucang.android.jiakaoyi.signal.center.model;

import cn.mucang.android.jiakaoyi.signal.c.e;
import com.amap.api.maps.model.BitmapDescriptorFactory;

/* JADX INFO: loaded from: classes3.dex */
public class d implements e {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final CarModel f5284a = new CarModel();
    private final b b = new b();
    private final CarPos c = new CarPos();

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final c f5285d = new c();

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private final cn.mucang.android.jiakaoyi.signal.ai.a f5286e = new cn.mucang.android.jiakaoyi.signal.ai.a();

    public static d e(d dVar) {
        d dVar2 = new d();
        g(dVar, dVar2);
        return dVar2;
    }

    public static d g(d dVar, d dVar2) {
        CarModel.a(dVar2.f5284a, dVar.f5284a);
        b.a(dVar2.b, dVar.b);
        c.a(dVar2.f5285d, dVar.f5285d);
        dVar2.c.set(dVar.c);
        dVar2.f5286e.a(dVar.f5286e);
        return dVar2;
    }

    @Override // cn.mucang.android.jiakaoyi.signal.c.e
    public cn.mucang.android.jiakaoyi.signal.ai.a a() {
        return this.f5286e;
    }

    @Override // cn.mucang.android.jiakaoyi.signal.c.e
    public c b() {
        return this.f5285d;
    }

    @Override // cn.mucang.android.jiakaoyi.signal.c.e
    public CarPos c() {
        return this.c;
    }

    @Override // cn.mucang.android.jiakaoyi.signal.c.e
    public CarModel d() {
        return this.f5284a;
    }

    public void f() {
        CarModel carModel = this.f5284a;
        carModel.B = BitmapDescriptorFactory.HUE_RED;
        carModel.C = BitmapDescriptorFactory.HUE_RED;
        cn.mucang.android.jiakaoyi.signal.d.k.c.m();
        this.f5285d.e();
    }

    @Override // cn.mucang.android.jiakaoyi.signal.c.e
    public b getCurrentPosition() {
        return this.b;
    }
}
