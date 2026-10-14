package kotlinx.coroutines;

/* JADX INFO: loaded from: classes6.dex */
public class v1 extends a2 implements w {
    private final boolean b;

    public v1(t1 t1Var) {
        super(true);
        n0(t1Var);
        this.b = R0();
    }

    private final boolean R0() {
        a2 a2Var;
        q qVarJ0 = j0();
        if (!(qVarJ0 instanceof r)) {
            qVarJ0 = null;
        }
        r rVar = (r) qVarJ0;
        if (rVar != null && (a2Var = (a2) rVar.f16133d) != null) {
            while (!a2Var.g0()) {
                q qVarJ1 = a2Var.j0();
                if (!(qVarJ1 instanceof r)) {
                    qVarJ1 = null;
                }
                r rVar2 = (r) qVarJ1;
                if (rVar2 == null || (a2Var = (a2) rVar2.f16133d) == null) {
                }
            }
            return true;
        }
        return false;
    }

    @Override // kotlinx.coroutines.a2
    public boolean g0() {
        return this.b;
    }

    @Override // kotlinx.coroutines.a2
    public boolean h0() {
        return true;
    }
}
