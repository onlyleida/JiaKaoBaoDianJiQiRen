package cn.mucang.android.core.api.request.e;

import java.net.Proxy;
import okhttp3.Authenticator;

/* JADX INFO: loaded from: classes.dex */
public class c {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private long f2415a;
    private long b;
    private long c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private boolean f2416d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private String f2417e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private Proxy f2418f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private Authenticator f2419g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private Authenticator f2420h;
    private cn.mucang.android.core.http.a.c i;

    public c(long j, long j2, long j3) {
        this.f2415a = j;
        this.b = j2;
        this.c = j3;
    }

    public Authenticator a() {
        return this.f2419g;
    }

    public cn.mucang.android.core.http.a.c b() {
        return this.i;
    }

    public long c() {
        return this.f2415a;
    }

    public Proxy d() {
        return this.f2418f;
    }

    public Authenticator e() {
        return this.f2420h;
    }

    public long f() {
        return this.b;
    }

    public String g() {
        return this.f2417e;
    }

    public long h() {
        return this.c;
    }

    public boolean i() {
        return this.f2416d;
    }

    public void j(long j) {
        this.b = j;
    }
}
