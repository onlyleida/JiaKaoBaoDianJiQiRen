package cn.mucang.android.jiakaoyi.signal.utils;

/* JADX INFO: loaded from: classes3.dex */
public class c {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final int f5832a;
    private boolean c = false;
    private int b = 0;

    public c(int i) {
        this.f5832a = i;
    }

    public boolean a(boolean z) {
        if (z) {
            int i = this.b + 1;
            this.b = i;
            int i2 = this.f5832a;
            if (i >= i2) {
                this.b = i2;
                this.c = true;
                return true;
            }
        } else {
            int i3 = this.b - 1;
            this.b = i3;
            if (i3 <= 0) {
                this.b = 0;
                this.c = false;
                return false;
            }
        }
        return this.c;
    }

    public void b() {
        this.b = 0;
    }
}
