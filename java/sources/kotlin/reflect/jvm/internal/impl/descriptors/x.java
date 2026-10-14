package kotlin.reflect.jvm.internal.impl.descriptors;

/* JADX INFO: loaded from: classes6.dex */
public final class x {
    public static final boolean a(d dVar) {
        kotlin.jvm.internal.r.e(dVar, "<this>");
        return dVar.q() == Modality.FINAL && dVar.g() != ClassKind.ENUM_CLASS;
    }
}
