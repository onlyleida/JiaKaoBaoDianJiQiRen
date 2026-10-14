package cn.mucang.android.jiakaoyi.teachingk2.traceerror.i;

/* JADX INFO: loaded from: classes4.dex */
public class h {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private long f5995a = 0;
    private final long b;

    public h(long j) {
        this.b = j;
    }

    public boolean a(long j, boolean z) {
        if (!z) {
            this.f5995a = 0L;
            return false;
        }
        if (this.f5995a == 0) {
            this.f5995a = j;
        }
        return j - this.f5995a > this.b;
    }
}
