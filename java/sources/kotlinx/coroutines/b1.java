package kotlinx.coroutines;

/* JADX INFO: loaded from: classes6.dex */
final class b1 implements n1 {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final boolean f15843a;

    public b1(boolean z) {
        this.f15843a = z;
    }

    @Override // kotlinx.coroutines.n1
    public e2 d() {
        return null;
    }

    @Override // kotlinx.coroutines.n1
    public boolean isActive() {
        return this.f15843a;
    }

    public String toString() {
        StringBuilder sb = new StringBuilder();
        sb.append("Empty{");
        sb.append(isActive() ? "Active" : "New");
        sb.append('}');
        return sb.toString();
    }
}
