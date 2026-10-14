package cn.mucang.android.jiakaoyi.signal.c.g;

import cn.mucang.android.jiakaoyi.signal.center.model.CarModel;
import cn.mucang.android.jiakaoyi.signal.center.model.Gear;
import cn.mucang.android.jiakaoyi.signal.center.model.Light;
import com.amap.api.maps.model.BitmapDescriptorFactory;
import java.util.Arrays;

/* JADX INFO: loaded from: classes3.dex */
public class b {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public float f5240a = BitmapDescriptorFactory.HUE_RED;
    public final a b = new a();
    public final C0119b[] c = new C0119b[16];

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final c[] f5241d = new c[16];

    public static class a {
        private long c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        private float f5243d;

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public long f5242a = 0;
        public float b = BitmapDescriptorFactory.HUE_RED;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        private boolean f5244e = false;

        public static void g(a aVar, a aVar2) {
            aVar.f5242a = aVar2.f5242a;
            aVar.b = aVar2.b;
            aVar.c = aVar2.c;
            aVar.f5243d = aVar2.f5243d;
            aVar.f5244e = aVar2.f5244e;
        }

        public void h() {
            this.b = BitmapDescriptorFactory.HUE_RED;
            this.f5243d = BitmapDescriptorFactory.HUE_RED;
        }

        public void i() {
            this.f5242a = 0L;
            this.c = 0L;
        }
    }

    /* JADX INFO: renamed from: cn.mucang.android.jiakaoyi.signal.c.g.b$b, reason: collision with other inner class name */
    public static class C0119b {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public long f5245a = 0;
        public float b = BitmapDescriptorFactory.HUE_RED;
        public long c = 0;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        public float f5246d = BitmapDescriptorFactory.HUE_RED;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        public long f5247e = 0;

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        public float f5248f = BitmapDescriptorFactory.HUE_RED;

        /* JADX INFO: renamed from: g, reason: collision with root package name */
        public long f5249g = -999999;

        /* JADX INFO: renamed from: h, reason: collision with root package name */
        public long f5250h = 0;
        public float i = -999999.0f;
        public float j = BitmapDescriptorFactory.HUE_RED;
        public float k = -999999.0f;
        public float l = BitmapDescriptorFactory.HUE_RED;
        public long m;
        public float n;

        public static C0119b a(C0119b c0119b) {
            C0119b c0119b2 = new C0119b();
            c0119b2.f5245a = c0119b.f5245a;
            c0119b2.b = c0119b.b;
            c0119b2.c = c0119b.c;
            c0119b2.f5246d = c0119b.f5246d;
            c0119b2.f5247e = c0119b.f5247e;
            c0119b2.f5248f = c0119b.f5248f;
            c0119b2.f5249g = c0119b.f5249g;
            c0119b2.f5250h = c0119b.f5250h;
            c0119b2.i = c0119b.i;
            c0119b2.j = c0119b.j;
            c0119b2.k = c0119b.k;
            c0119b2.l = c0119b.l;
            c0119b2.m = c0119b.m;
            c0119b2.n = c0119b.n;
            return c0119b2;
        }
    }

    public static class c {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public long f5251a = 0;
        public float b = BitmapDescriptorFactory.HUE_RED;
        public boolean c = false;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        public long f5252d = 0;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        public float f5253e = BitmapDescriptorFactory.HUE_RED;

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        public long f5254f = 0;

        public static c a(c cVar) {
            c cVar2 = new c();
            cVar2.b = cVar.b;
            cVar2.f5251a = cVar.f5251a;
            cVar2.c = cVar.c;
            cVar2.f5252d = cVar.f5252d;
            cVar2.f5253e = cVar.f5253e;
            cVar2.f5254f = cVar.f5254f;
            return cVar2;
        }
    }

    private void d(CarModel carModel) {
        boolean z = carModel.f5267e;
        long j = carModel.L;
        float f2 = carModel.C;
        if (!z) {
            this.b.i();
            this.b.h();
        } else if (!this.b.f5244e || this.b.c <= 0) {
            this.b.c = j;
            this.b.f5243d = f2;
            a aVar = this.b;
            aVar.f5242a = 0L;
            aVar.b = BitmapDescriptorFactory.HUE_RED;
        } else {
            a aVar2 = this.b;
            aVar2.f5242a = j - aVar2.c;
            a aVar3 = this.b;
            aVar3.b = f2 - aVar3.f5243d;
        }
        this.b.f5244e = z;
    }

    private void f(CarModel carModel) {
        long j = carModel.L;
        float f2 = carModel.C;
        for (Light light : Light.lights) {
            c[] cVarArr = this.f5241d;
            int i = light.lightId;
            c cVar = cVarArr[i];
            if (cVar == null) {
                cVar = new c();
                cVarArr[i] = cVar;
            }
            boolean zJ = carModel.j(light);
            if (zJ) {
                if (!cVar.c) {
                    cVar.f5251a = j;
                    cVar.b = f2;
                }
                cVar.f5252d = j - cVar.f5251a;
                cVar.f5253e = f2 - cVar.b;
            } else {
                long j2 = cVar.f5251a;
                if (j2 > 0) {
                    cVar.f5254f = j2;
                }
                cVar.b = BitmapDescriptorFactory.HUE_RED;
                cVar.f5251a = 0L;
                cVar.f5252d = 0L;
                cVar.f5253e = BitmapDescriptorFactory.HUE_RED;
            }
            cVar.c = zJ;
        }
    }

    public void a(b bVar) {
        this.f5240a = bVar.f5240a;
        int i = 0;
        int i2 = 0;
        while (true) {
            c[] cVarArr = bVar.f5241d;
            if (i2 >= cVarArr.length) {
                break;
            }
            c cVar = cVarArr[i2];
            if (cVar != null) {
                this.f5241d[i2] = c.a(cVar);
            }
            i2++;
        }
        while (true) {
            C0119b[] c0119bArr = bVar.c;
            if (i >= c0119bArr.length) {
                a.g(this.b, bVar.b);
                return;
            }
            C0119b c0119b = c0119bArr[i];
            if (c0119b != null) {
                this.c[i] = C0119b.a(c0119b);
            }
            i++;
        }
    }

    public void b() {
        this.f5240a = BitmapDescriptorFactory.HUE_RED;
        Arrays.fill(this.f5241d, (Object) null);
        Arrays.fill(this.c, (Object) null);
        this.b.i();
        this.b.h();
        this.b.f5244e = false;
    }

    public void c(CarModel carModel) {
        float f2 = carModel.b;
        if (f2 > this.f5240a) {
            this.f5240a = f2;
        }
        f(carModel);
        e(carModel);
        d(carModel);
    }

    public void e(CarModel carModel) {
        long j = carModel.L;
        float f2 = carModel.C;
        float f3 = carModel.b;
        Gear gear = carModel.m;
        C0119b[] c0119bArr = this.c;
        int i = gear.gear;
        if (c0119bArr[i + 1] == null) {
            c0119bArr[i + 1] = new C0119b();
        }
        int i2 = 0;
        while (true) {
            C0119b[] c0119bArr2 = this.c;
            if (i2 >= c0119bArr2.length) {
                return;
            }
            C0119b c0119b = c0119bArr2[i2];
            if (c0119b != null) {
                if (i2 == gear.gear + 1) {
                    if (c0119b.f5245a <= 0 || !carModel.c()) {
                        c0119b.f5245a = j;
                        c0119b.b = f2;
                        c0119b.f5247e = j;
                        c0119b.f5248f = f2;
                    }
                    c0119b.c = j - c0119b.f5245a;
                    float f4 = f2 - c0119b.b;
                    c0119b.f5246d = f4;
                    c0119b.m += j - c0119b.f5247e;
                    c0119b.n += f2 - c0119b.f5248f;
                    c0119b.f5247e = j;
                    c0119b.f5248f = f2;
                    c0119b.j = Math.max(c0119b.j, f4);
                    c0119b.i = Math.min(c0119b.i, c0119b.f5246d);
                    c0119b.f5250h = Math.max(c0119b.f5250h, c0119b.c);
                    c0119b.f5249g = Math.min(c0119b.f5249g, c0119b.c);
                    c0119b.l = Math.max(c0119b.l, f3);
                    c0119b.k = Math.min(c0119b.k, f3);
                } else {
                    c0119b.f5247e = 0L;
                    c0119b.f5248f = BitmapDescriptorFactory.HUE_RED;
                    c0119b.f5245a = 0L;
                    c0119b.b = BitmapDescriptorFactory.HUE_RED;
                    c0119b.c = 0L;
                    c0119b.f5246d = BitmapDescriptorFactory.HUE_RED;
                }
            }
            i2++;
        }
    }
}
