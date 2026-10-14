package kotlin.reflect.jvm.internal.impl.resolve;

import kotlin.jvm.internal.r;
import kotlin.reflect.jvm.internal.impl.descriptors.y;
import kotlin.reflect.jvm.internal.impl.descriptors.z;

/* JADX INFO: loaded from: classes6.dex */
public final class j {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private static final y<i> f15509a = new y<>("ResolutionAnchorProvider");

    public static final z a(z zVar) {
        r.e(zVar, "<this>");
        i iVar = (i) zVar.C0(f15509a);
        if (iVar == null) {
            return null;
        }
        return iVar.a(zVar);
    }
}
