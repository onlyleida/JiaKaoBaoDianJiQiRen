package kotlin.reflect.jvm.internal.impl.types.checker;

import java.util.ArrayList;
import java.util.Collection;
import java.util.Iterator;
import java.util.List;
import kotlin.Pair;
import kotlin.collections.CollectionsKt___CollectionsKt;
import kotlin.reflect.jvm.internal.impl.descriptors.t0;
import kotlin.reflect.jvm.internal.impl.types.KotlinTypeFactory;
import kotlin.reflect.jvm.internal.impl.types.TypeSubstitutor;
import kotlin.reflect.jvm.internal.impl.types.Variance;
import kotlin.reflect.jvm.internal.impl.types.a0;
import kotlin.reflect.jvm.internal.impl.types.c1;
import kotlin.reflect.jvm.internal.impl.types.f0;
import kotlin.reflect.jvm.internal.impl.types.model.CaptureStatus;
import kotlin.reflect.jvm.internal.impl.types.r0;
import kotlin.reflect.jvm.internal.impl.types.s0;
import kotlin.reflect.jvm.internal.impl.types.typeUtil.TypeUtilsKt;

/* JADX INFO: loaded from: classes6.dex */
public final class j {
    private static final List<s0> a(c1 c1Var, CaptureStatus captureStatus) {
        if (c1Var.H0().size() != c1Var.I0().getParameters().size()) {
            return null;
        }
        List<s0> listH0 = c1Var.H0();
        int i = 0;
        boolean z = true;
        if (!(listH0 instanceof Collection) || !listH0.isEmpty()) {
            Iterator<T> it = listH0.iterator();
            while (it.hasNext()) {
                if (!(((s0) it.next()).c() == Variance.INVARIANT)) {
                    z = false;
                    break;
                }
            }
        }
        if (z) {
            return null;
        }
        List<t0> parameters = c1Var.I0().getParameters();
        kotlin.jvm.internal.r.d(parameters, "type.constructor.parameters");
        List<Pair> listT0 = CollectionsKt___CollectionsKt.T0(listH0, parameters);
        ArrayList arrayList = new ArrayList(kotlin.collections.v.u(listT0, 10));
        for (Pair pair : listT0) {
            s0 s0VarA = (s0) pair.component1();
            t0 parameter = (t0) pair.component2();
            if (s0VarA.c() != Variance.INVARIANT) {
                c1 c1VarL0 = (s0VarA.a() || s0VarA.c() != Variance.IN_VARIANCE) ? null : s0VarA.getType().L0();
                kotlin.jvm.internal.r.d(parameter, "parameter");
                s0VarA = TypeUtilsKt.a(new i(captureStatus, c1VarL0, s0VarA, parameter));
            }
            arrayList.add(s0VarA);
        }
        TypeSubstitutor typeSubstitutorC = r0.b.b(c1Var.I0(), arrayList).c();
        int size = listH0.size() - 1;
        if (size >= 0) {
            while (true) {
                int i2 = i + 1;
                s0 s0Var = listH0.get(i);
                s0 s0Var2 = (s0) arrayList.get(i);
                if (s0Var.c() != Variance.INVARIANT) {
                    List<a0> upperBounds = c1Var.I0().getParameters().get(i).getUpperBounds();
                    kotlin.jvm.internal.r.d(upperBounds, "type.constructor.parameters[index].upperBounds");
                    ArrayList arrayList2 = new ArrayList();
                    Iterator<T> it2 = upperBounds.iterator();
                    while (it2.hasNext()) {
                        arrayList2.add(KotlinTypePreparator.a.f15654a.a(typeSubstitutorC.n((a0) it2.next(), Variance.INVARIANT).L0()));
                    }
                    if (!s0Var.a() && s0Var.c() == Variance.OUT_VARIANCE) {
                        arrayList2.add(KotlinTypePreparator.a.f15654a.a(s0Var.getType().L0()));
                    }
                    ((i) s0Var2.getType()).I0().h(arrayList2);
                }
                if (i2 > size) {
                    break;
                }
                i = i2;
            }
        }
        return arrayList;
    }

    public static final f0 b(f0 type, CaptureStatus status) {
        kotlin.jvm.internal.r.e(type, "type");
        kotlin.jvm.internal.r.e(status, "status");
        List<s0> listA = a(type, status);
        if (listA == null) {
            return null;
        }
        return c(type, listA);
    }

    private static final f0 c(c1 c1Var, List<? extends s0> list) {
        return KotlinTypeFactory.i(c1Var.getAnnotations(), c1Var.I0(), list, c1Var.J0(), null, 16, null);
    }
}
