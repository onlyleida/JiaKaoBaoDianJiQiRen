package cn.mucang.android.jiakaoyi.signal.center.model;

import cn.mucang.android.jiakaoyi.signal.utils.e;

/* JADX INFO: loaded from: classes3.dex */
public class a {

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private static volatile a f5272g;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private int f5273a = 30;
    private int b = 500;
    private int c = 500;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private long f5274d = -1;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private long f5275e = -1;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private boolean f5276f = false;

    private a() {
    }

    public static a a() {
        if (f5272g == null) {
            synchronized (a.class) {
                if (f5272g == null) {
                    f5272g = new a();
                }
            }
        }
        return f5272g;
    }

    public void b(int i, int i2) {
        c(i, -1, i2);
    }

    public void c(int i, int i2, int i3) {
        this.f5273a = i;
        if (i2 > 0) {
            this.c = Math.max(i2, 2000);
        }
        if (i3 > 0) {
            this.b = Math.max(i3, 2000);
        }
        this.f5274d = -1L;
        this.f5275e = -1L;
    }

    public boolean d(CarModel carModel) {
        if (e.a()) {
            if (carModel.p != KeyState.ON) {
                return false;
            }
            if (carModel.f5265a <= 1) {
                carModel.f5265a = 1000;
            }
            return true;
        }
        int i = this.b;
        if (i <= 0) {
            int i2 = this.f5273a;
            if (i2 < 0) {
                this.f5276f = carModel.f5265a > 30;
            } else {
                this.f5276f = carModel.f5265a > i2;
            }
        } else if (carModel.f5265a > this.f5273a) {
            this.f5274d = 0L;
            if (this.f5275e <= 0) {
                this.f5275e = carModel.L;
            }
            if (carModel.L - this.f5275e > this.c) {
                this.f5276f = true;
            }
        } else {
            if (this.f5274d <= 0) {
                this.f5274d = carModel.L;
            }
            this.f5275e = 0L;
            if (carModel.L - this.f5274d > i) {
                this.f5276f = false;
            }
        }
        return this.f5276f;
    }

    public void e() {
        this.f5274d = -1L;
        this.f5275e = -1L;
        this.b = 500;
        this.c = 500;
    }
}
