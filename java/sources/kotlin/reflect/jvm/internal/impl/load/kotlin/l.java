package kotlin.reflect.jvm.internal.impl.load.kotlin;

/* JADX INFO: loaded from: classes6.dex */
public final class l {
    public static final m a(k kVar, kotlin.reflect.jvm.internal.impl.load.java.structure.g javaClass) {
        kotlin.jvm.internal.r.e(kVar, "<this>");
        kotlin.jvm.internal.r.e(javaClass, "javaClass");
        k.a aVarA = kVar.a(javaClass);
        if (aVarA == null) {
            return null;
        }
        return aVarA.a();
    }

    public static final m b(k kVar, kotlin.reflect.jvm.internal.impl.name.b classId) {
        kotlin.jvm.internal.r.e(kVar, "<this>");
        kotlin.jvm.internal.r.e(classId, "classId");
        k.a aVarC = kVar.c(classId);
        if (aVarC == null) {
            return null;
        }
        return aVarC.a();
    }
}
