package kotlin.reflect.jvm.internal.impl.storage;

import kotlin.jvm.internal.r;
import kotlin.reflect.KProperty;

/* JADX INFO: loaded from: classes6.dex */
public final class l {
    public static final <T> T a(h<? extends T> hVar, Object obj, KProperty<?> p) {
        r.e(hVar, "<this>");
        r.e(p, "p");
        return hVar.invoke();
    }

    public static final <T> T b(i<? extends T> iVar, Object obj, KProperty<?> p) {
        r.e(iVar, "<this>");
        r.e(p, "p");
        return iVar.invoke();
    }
}
