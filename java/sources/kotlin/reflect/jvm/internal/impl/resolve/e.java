package kotlin.reflect.jvm.internal.impl.resolve;

import java.util.Comparator;
import kotlin.reflect.jvm.internal.impl.descriptors.j0;
import kotlin.reflect.jvm.internal.impl.descriptors.s0;
import kotlin.reflect.jvm.internal.impl.descriptors.u;

/* JADX INFO: loaded from: classes6.dex */
public class e implements Comparator<kotlin.reflect.jvm.internal.impl.descriptors.k> {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final e f15507a = new e();

    private e() {
    }

    private static Integer b(kotlin.reflect.jvm.internal.impl.descriptors.k kVar, kotlin.reflect.jvm.internal.impl.descriptors.k kVar2) {
        int iC = c(kVar2) - c(kVar);
        if (iC != 0) {
            return Integer.valueOf(iC);
        }
        if (c.B(kVar) && c.B(kVar2)) {
            return 0;
        }
        int iCompareTo = kVar.getName().compareTo(kVar2.getName());
        if (iCompareTo != 0) {
            return Integer.valueOf(iCompareTo);
        }
        return null;
    }

    private static int c(kotlin.reflect.jvm.internal.impl.descriptors.k kVar) {
        if (c.B(kVar)) {
            return 8;
        }
        if (kVar instanceof kotlin.reflect.jvm.internal.impl.descriptors.j) {
            return 7;
        }
        if (kVar instanceof j0) {
            return ((j0) kVar).O() == null ? 6 : 5;
        }
        if (kVar instanceof u) {
            return ((u) kVar).O() == null ? 4 : 3;
        }
        if (kVar instanceof kotlin.reflect.jvm.internal.impl.descriptors.d) {
            return 2;
        }
        return kVar instanceof s0 ? 1 : 0;
    }

    @Override // java.util.Comparator
    /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
    public int compare(kotlin.reflect.jvm.internal.impl.descriptors.k kVar, kotlin.reflect.jvm.internal.impl.descriptors.k kVar2) {
        Integer numB = b(kVar, kVar2);
        if (numB != null) {
            return numB.intValue();
        }
        return 0;
    }
}
