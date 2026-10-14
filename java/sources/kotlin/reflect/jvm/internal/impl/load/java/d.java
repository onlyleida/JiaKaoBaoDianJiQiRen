package kotlin.reflect.jvm.internal.impl.load.java;

/* JADX INFO: loaded from: classes6.dex */
public final class d {
    /* JADX INFO: Access modifiers changed from: private */
    public static final kotlin.reflect.jvm.internal.impl.name.c c(kotlin.reflect.jvm.internal.impl.name.c cVar, String str) {
        kotlin.reflect.jvm.internal.impl.name.c cVarC = cVar.c(kotlin.reflect.jvm.internal.impl.name.f.g(str));
        kotlin.jvm.internal.r.d(cVarC, "child(Name.identifier(name))");
        return cVarC;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final kotlin.reflect.jvm.internal.impl.name.c d(kotlin.reflect.jvm.internal.impl.name.d dVar, String str) {
        kotlin.reflect.jvm.internal.impl.name.c cVarL = dVar.c(kotlin.reflect.jvm.internal.impl.name.f.g(str)).l();
        kotlin.jvm.internal.r.d(cVarL, "child(Name.identifier(name)).toSafe()");
        return cVarL;
    }
}
