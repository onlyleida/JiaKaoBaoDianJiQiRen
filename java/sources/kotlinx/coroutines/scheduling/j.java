package kotlinx.coroutines.scheduling;

import kotlinx.coroutines.m0;

/* JADX INFO: loaded from: classes6.dex */
public final class j extends h {
    public final Runnable c;

    public j(Runnable runnable, long j, i iVar) {
        super(j, iVar);
        this.c = runnable;
    }

    @Override // java.lang.Runnable
    public void run() {
        try {
            this.c.run();
        } finally {
            this.b.k();
        }
    }

    public String toString() {
        return "Task[" + m0.a(this.c) + '@' + m0.b(this.c) + ", " + this.f16094a + ", " + this.b + ']';
    }
}
