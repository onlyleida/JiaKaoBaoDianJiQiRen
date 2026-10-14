package kotlinx.coroutines;

import java.util.Objects;

/* JADX INFO: loaded from: classes6.dex */
public final class e2 extends kotlinx.coroutines.internal.l implements n1 {
    public final String R(String str) {
        StringBuilder sb = new StringBuilder();
        sb.append("List{");
        sb.append(str);
        sb.append("}[");
        Object objG = G();
        Objects.requireNonNull(objG, "null cannot be cast to non-null type kotlinx.coroutines.internal.Node /* = kotlinx.coroutines.internal.LockFreeLinkedListNode */");
        boolean z = true;
        for (kotlinx.coroutines.internal.n nVarH = (kotlinx.coroutines.internal.n) objG; !kotlin.jvm.internal.r.a(nVarH, this); nVarH = nVarH.H()) {
            if (nVarH instanceof z1) {
                z1 z1Var = (z1) nVarH;
                if (z) {
                    z = false;
                } else {
                    sb.append(", ");
                }
                sb.append(z1Var);
            }
        }
        sb.append("]");
        String string = sb.toString();
        kotlin.jvm.internal.r.d(string, "StringBuilder().apply(builderAction).toString()");
        return string;
    }

    @Override // kotlinx.coroutines.n1
    public e2 d() {
        return this;
    }

    @Override // kotlinx.coroutines.n1
    public boolean isActive() {
        return true;
    }

    @Override // kotlinx.coroutines.internal.n
    public String toString() {
        return l0.c() ? R("Active") : super.toString();
    }
}
