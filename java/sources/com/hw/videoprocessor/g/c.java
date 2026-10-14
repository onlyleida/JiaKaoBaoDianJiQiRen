package com.hw.videoprocessor.g;

/* JADX INFO: loaded from: classes4.dex */
public class c {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private int f12087a;
    private int b;
    private boolean c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private int f12088d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private int f12089e;

    public c(int i, int i2) {
        this.f12087a = i;
        this.b = i2;
        if (i <= i2) {
            b.b("原始帧率:" + i + "小于目标帧率:" + i2 + "，不支持补帧", new Object[0]);
            this.c = true;
        }
    }

    public boolean a(int i) {
        if (this.c) {
            return false;
        }
        if (i == 0) {
            this.f12089e++;
            return false;
        }
        int i2 = this.f12087a;
        float f2 = (i2 - this.b) / i2;
        int i3 = this.f12088d;
        int i4 = this.f12089e;
        boolean z = Math.abs((((float) (i3 + 1)) / ((float) (i3 + i4))) - f2) < Math.abs((((float) i3) / ((float) ((i3 + i4) + 1))) - f2);
        if (z) {
            this.f12088d++;
        } else {
            this.f12089e++;
        }
        return z;
    }
}
