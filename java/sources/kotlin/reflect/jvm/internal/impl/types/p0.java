package kotlin.reflect.jvm.internal.impl.types;

/* JADX INFO: loaded from: classes6.dex */
public final class p0 {
    public static final j a(a0 a0Var) {
        kotlin.jvm.internal.r.e(a0Var, "<this>");
        kotlin.reflect.jvm.internal.impl.types.model.g gVarL0 = a0Var.L0();
        j jVar = gVarL0 instanceof j ? (j) gVarL0 : null;
        if (jVar != null && jVar.w()) {
            return jVar;
        }
        return null;
    }

    public static final boolean b(a0 a0Var) {
        kotlin.jvm.internal.r.e(a0Var, "<this>");
        kotlin.reflect.jvm.internal.impl.types.model.g gVarL0 = a0Var.L0();
        j jVar = gVarL0 instanceof j ? (j) gVarL0 : null;
        if (jVar == null) {
            return false;
        }
        return jVar.w();
    }
}
