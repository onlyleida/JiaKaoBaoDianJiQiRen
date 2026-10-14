package kotlinx.coroutines.scheduling;

/* JADX INFO: loaded from: classes6.dex */
public abstract class h implements Runnable {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public long f16094a;
    public i b;

    public h(long j, i iVar) {
        this.f16094a = j;
        this.b = iVar;
    }

    public h() {
        this(0L, g.b);
    }
}
