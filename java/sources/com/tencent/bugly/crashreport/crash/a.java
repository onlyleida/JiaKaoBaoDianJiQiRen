package com.tencent.bugly.crashreport.crash;

/* JADX INFO: loaded from: classes6.dex */
public final class a implements Comparable<a> {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public long f13720a = -1;
    public long b = -1;
    public String c = null;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public boolean f13721d = false;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public boolean f13722e = false;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public int f13723f = 0;

    @Override // java.lang.Comparable
    public final /* bridge */ /* synthetic */ int compareTo(a aVar) {
        a aVar2 = aVar;
        if (aVar2 == null) {
            return 1;
        }
        long j = this.b - aVar2.b;
        if (j <= 0) {
            return j < 0 ? -1 : 0;
        }
        return 1;
    }
}
