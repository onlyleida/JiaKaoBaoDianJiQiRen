package cn.mucang.android.jiakaoyi.framework.qrcode.zxing;

import java.lang.reflect.Array;

/* JADX INFO: loaded from: classes2.dex */
public final class d {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final byte[][] f3493a;
    private final int b;
    private final int c;

    public d(int i, int i2) {
        this.f3493a = (byte[][]) Array.newInstance((Class<?>) byte.class, i2, i);
        this.b = i;
        this.c = i2;
    }

    public void a(byte b) {
        for (int i = 0; i < this.c; i++) {
            for (int i2 = 0; i2 < this.b; i2++) {
                this.f3493a[i][i2] = b;
            }
        }
    }

    public byte b(int i, int i2) {
        return this.f3493a[i2][i];
    }

    public byte[][] c() {
        return this.f3493a;
    }

    public int d() {
        return this.c;
    }

    public int e() {
        return this.b;
    }

    public void f(int i, int i2, int i3) {
        this.f3493a[i2][i] = (byte) i3;
    }

    public void g(int i, int i2, boolean z) {
        this.f3493a[i2][i] = z ? (byte) 1 : (byte) 0;
    }

    public String toString() {
        StringBuilder sb = new StringBuilder((this.b * 2 * this.c) + 2);
        for (int i = 0; i < this.c; i++) {
            for (int i2 = 0; i2 < this.b; i2++) {
                byte b = this.f3493a[i][i2];
                if (b == 0) {
                    sb.append(" 0");
                } else if (b != 1) {
                    sb.append("  ");
                } else {
                    sb.append(" 1");
                }
            }
            sb.append('\n');
        }
        return sb.toString();
    }
}
