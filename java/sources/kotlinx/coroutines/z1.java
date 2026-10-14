package kotlinx.coroutines;

import java.util.Objects;
import kotlinx.coroutines.t1;

/* JADX INFO: loaded from: classes6.dex */
public abstract class z1<J extends t1> extends a0 implements y0, n1 {

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final J f16133d;

    public z1(J j) {
        this.f16133d = j;
    }

    @Override // kotlinx.coroutines.n1
    public e2 d() {
        return null;
    }

    @Override // kotlinx.coroutines.y0
    public void dispose() {
        J j = this.f16133d;
        Objects.requireNonNull(j, "null cannot be cast to non-null type kotlinx.coroutines.JobSupport");
        ((a2) j).E0(this);
    }

    @Override // kotlinx.coroutines.n1
    public boolean isActive() {
        return true;
    }
}
