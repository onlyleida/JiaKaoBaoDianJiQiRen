package cn.mucang.android.core.api.cache;

import cn.mucang.android.core.api.ApiResponse;

/* JADX INFO: loaded from: classes.dex */
public class a {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private ApiResponse f2327a;
    private long b;
    private long c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private String f2328d;

    public a() {
    }

    public ApiResponse a() {
        return this.f2327a;
    }

    public long b() {
        return this.c;
    }

    public long c() {
        return this.b;
    }

    public String d() {
        return this.f2328d;
    }

    public void e(ApiResponse apiResponse) {
        this.f2327a = apiResponse;
    }

    public void f(long j) {
        this.c = j;
    }

    public void g(long j) {
        this.b = j;
    }

    public a(ApiResponse apiResponse, long j, long j2) {
        this.f2327a = apiResponse;
        this.b = j;
        this.c = j2;
        this.f2328d = apiResponse.getJsonObject().getString("eTag");
    }
}
