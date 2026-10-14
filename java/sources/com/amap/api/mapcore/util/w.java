package com.amap.api.mapcore.util;

import android.graphics.Point;
import com.autonavi.amap.mapcore.IPoint;

/* JADX INFO: loaded from: classes5.dex */
public class w {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public int f11293a;
    public int b;
    public int c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public int f11294d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public int f11295e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public int f11296f;

    public w(int i, int i2, int i3, int i4) {
        a(i, i2, i3, i4);
    }

    public void a(int i, int i2, int i3, int i4) {
        this.f11293a = i;
        this.b = i3;
        this.c = i2;
        this.f11294d = i4;
        this.f11295e = (i + i2) / 2;
        this.f11296f = (i3 + i4) / 2;
    }

    public boolean b(int i, int i2) {
        return this.f11293a <= i && i <= this.c && this.b <= i2 && i2 <= this.f11294d;
    }

    public boolean c(w wVar) {
        if (wVar == null) {
            return false;
        }
        return e(wVar.f11293a, wVar.c, wVar.b, wVar.f11294d);
    }

    public boolean d(IPoint iPoint) {
        if (iPoint == null) {
            return false;
        }
        return b(((Point) iPoint).x, ((Point) iPoint).y);
    }

    public boolean e(int i, int i2, int i3, int i4) {
        return i < this.c && this.f11293a < i2 && i3 < this.f11294d && this.b < i4;
    }
}
