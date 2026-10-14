package kotlinx.coroutines;

/* JADX INFO: loaded from: classes6.dex */
public final class m1 implements n1 {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final e2 f16054a;

    public m1(e2 e2Var) {
        this.f16054a = e2Var;
    }

    @Override // kotlinx.coroutines.n1
    public e2 d() {
        return this.f16054a;
    }

    @Override // kotlinx.coroutines.n1
    public boolean isActive() {
        return false;
    }

    public String toString() {
        return l0.c() ? d().R("New") : super.toString();
    }
}
