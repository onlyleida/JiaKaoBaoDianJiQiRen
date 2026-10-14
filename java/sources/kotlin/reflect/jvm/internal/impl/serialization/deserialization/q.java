package kotlin.reflect.jvm.internal.impl.serialization.deserialization;

/* JADX INFO: loaded from: classes6.dex */
public final class q {
    public static final kotlin.reflect.jvm.internal.impl.name.b a(kotlin.reflect.jvm.internal.impl.metadata.c.c cVar, int i) {
        kotlin.jvm.internal.r.e(cVar, "<this>");
        kotlin.reflect.jvm.internal.impl.name.b bVarF = kotlin.reflect.jvm.internal.impl.name.b.f(cVar.b(i), cVar.a(i));
        kotlin.jvm.internal.r.d(bVarF, "fromString(getQualifiedC… isLocalClassName(index))");
        return bVarF;
    }

    public static final kotlin.reflect.jvm.internal.impl.name.f b(kotlin.reflect.jvm.internal.impl.metadata.c.c cVar, int i) {
        kotlin.jvm.internal.r.e(cVar, "<this>");
        kotlin.reflect.jvm.internal.impl.name.f fVarE = kotlin.reflect.jvm.internal.impl.name.f.e(cVar.getString(i));
        kotlin.jvm.internal.r.d(fVarE, "guessByFirstCharacter(getString(index))");
        return fVarE;
    }
}
