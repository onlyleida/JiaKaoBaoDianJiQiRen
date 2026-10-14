package cn.mucang.android.jiakaoyi.signal.utils;

/* JADX INFO: loaded from: classes3.dex */
public class i {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final long f5836a;
    private long b = 0;

    public i(long j) {
        this.f5836a = j;
    }

    public void a() {
        this.b = 0L;
    }

    public boolean b(boolean z, long j) {
        if (!z) {
            this.b = 0L;
            return false;
        }
        if (this.b == 0) {
            this.b = j;
        }
        return j - this.b >= this.f5836a;
    }
}
