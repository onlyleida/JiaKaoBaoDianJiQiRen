package cn.mucang.android.jiakaoyi.signal.center.model;

/* JADX INFO: loaded from: classes3.dex */
public class c {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private cn.mucang.android.jiakaoyi.signal.c.g.b f5283a = new cn.mucang.android.jiakaoyi.signal.c.g.b();

    public static void a(c cVar, c cVar2) {
        cVar.f5283a.a(cVar2.f5283a);
    }

    public long b() {
        return this.f5283a.b.f5242a;
    }

    public cn.mucang.android.jiakaoyi.signal.c.g.b.c c(Light light) {
        return this.f5283a.f5241d[light.lightId];
    }

    public cn.mucang.android.jiakaoyi.signal.c.g.b.C0119b d(Gear gear) {
        return this.f5283a.c[gear.gear + 1];
    }

    public void e() {
        this.f5283a.b();
    }

    public void f() {
        this.f5283a.b.i();
    }

    public void g(CarModel carModel) {
        this.f5283a.c(carModel);
    }
}
