package kotlinx.coroutines.flow;

/* JADX INFO: loaded from: classes6.dex */
final class i2 implements h2 {
    @Override // kotlinx.coroutines.flow.h2
    public c<SharingCommand> a(k2<Integer> k2Var) {
        return f.u(SharingCommand.START);
    }

    public String toString() {
        return "SharingStarted.Eagerly";
    }
}
