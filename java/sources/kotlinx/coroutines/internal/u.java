package kotlinx.coroutines.internal;

import kotlinx.coroutines.m0;

/* JADX INFO: loaded from: classes6.dex */
public abstract class u {
    public abstract d<?> a();

    public final boolean b(u uVar) {
        d<?> dVarA;
        d<?> dVarA2 = a();
        return (dVarA2 == null || (dVarA = uVar.a()) == null || dVarA2.g() >= dVarA.g()) ? false : true;
    }

    public abstract Object c(Object obj);

    public String toString() {
        return m0.a(this) + '@' + m0.b(this);
    }
}
