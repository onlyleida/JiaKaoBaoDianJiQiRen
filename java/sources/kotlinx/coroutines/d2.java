package kotlinx.coroutines;

/* JADX INFO: loaded from: classes6.dex */
public abstract class d2 extends CoroutineDispatcher {
    public abstract d2 B();

    protected final String C() {
        d2 d2VarB;
        d2 d2VarC = w0.c();
        if (this == d2VarC) {
            return "Dispatchers.Main";
        }
        try {
            d2VarB = d2VarC.B();
        } catch (UnsupportedOperationException unused) {
            d2VarB = null;
        }
        if (this == d2VarB) {
            return "Dispatchers.Main.immediate";
        }
        return null;
    }

    @Override // kotlinx.coroutines.CoroutineDispatcher
    public String toString() {
        String strC = C();
        if (strC != null) {
            return strC;
        }
        return m0.a(this) + '@' + m0.b(this);
    }
}
