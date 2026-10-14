package cn.mucang.android.jiakaoyi.teachingk2.traceerror.i;

/* JADX INFO: loaded from: classes4.dex */
public class i {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public long f5996a;
    private long b = 0;

    public i(long j) {
        this.f5996a = j;
    }

    public void a() {
        this.b = 0L;
    }

    public void b(long j) {
        this.f5996a = j;
    }

    public boolean c(long j) {
        if (this.b == 0) {
            this.b = j;
        }
        if (j - this.b < this.f5996a) {
            return false;
        }
        this.b = j;
        return true;
    }
}
