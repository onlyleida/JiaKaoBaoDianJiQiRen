package kotlinx.coroutines.flow;

/* JADX INFO: loaded from: classes6.dex */
final class StartedLazily implements h2 {
    @Override // kotlinx.coroutines.flow.h2
    public c<SharingCommand> a(k2<Integer> k2Var) {
        return f.t(new StartedLazily$command$1(k2Var, null));
    }

    public String toString() {
        return "SharingStarted.Lazily";
    }
}
