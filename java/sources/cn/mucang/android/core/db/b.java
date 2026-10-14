package cn.mucang.android.core.db;

import android.content.Context;

/* JADX INFO: loaded from: classes.dex */
public class b {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private String f2512a;
    private String b;
    private int c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private a.b f2513d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private Context f2514e;

    public a a() {
        return new a(this.f2512a, this.b, this.c, this.f2514e, this.f2513d);
    }

    public b b(a.b bVar) {
        this.f2513d = bVar;
        return this;
    }

    public b c(String str) {
        this.b = str;
        return this;
    }

    public b d(String str) {
        this.f2512a = str;
        return this;
    }

    public b e(int i) {
        this.c = i;
        return this;
    }
}
