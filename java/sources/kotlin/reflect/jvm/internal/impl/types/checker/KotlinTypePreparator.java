package kotlin.reflect.jvm.internal.impl.types.checker;

import java.util.ArrayList;
import java.util.Collection;
import java.util.Iterator;
import kotlin.NoWhenBranchMatchedException;
import kotlin.reflect.jvm.internal.impl.types.IntersectionTypeConstructor;
import kotlin.reflect.jvm.internal.impl.types.KotlinTypeFactory;
import kotlin.reflect.jvm.internal.impl.types.Variance;
import kotlin.reflect.jvm.internal.impl.types.a0;
import kotlin.reflect.jvm.internal.impl.types.a1;
import kotlin.reflect.jvm.internal.impl.types.c1;
import kotlin.reflect.jvm.internal.impl.types.f0;
import kotlin.reflect.jvm.internal.impl.types.model.CaptureStatus;
import kotlin.reflect.jvm.internal.impl.types.q0;
import kotlin.reflect.jvm.internal.impl.types.s0;
import kotlin.reflect.jvm.internal.impl.types.typeUtil.TypeUtilsKt;
import kotlin.reflect.jvm.internal.impl.types.y0;

/* JADX INFO: loaded from: classes6.dex */
public abstract class KotlinTypePreparator {

    public static final class a extends KotlinTypePreparator {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public static final a f15654a = new a();

        private a() {
        }
    }

    private final f0 b(f0 f0Var) {
        a0 type;
        q0 q0VarI0 = f0Var.I0();
        boolean z = false;
        IntersectionTypeConstructor intersectionTypeConstructorL = null;
        c1VarL0 = null;
        c1 c1VarL0 = null;
        if (q0VarI0 instanceof kotlin.reflect.jvm.internal.impl.resolve.calls.inference.c) {
            kotlin.reflect.jvm.internal.impl.resolve.calls.inference.c cVar = (kotlin.reflect.jvm.internal.impl.resolve.calls.inference.c) q0VarI0;
            s0 projection = cVar.getProjection();
            if (!(projection.c() == Variance.IN_VARIANCE)) {
                projection = null;
            }
            if (projection != null && (type = projection.getType()) != null) {
                c1VarL0 = type.L0();
            }
            c1 c1Var = c1VarL0;
            if (cVar.f() == null) {
                s0 projection2 = cVar.getProjection();
                Collection<a0> collectionA = cVar.a();
                ArrayList arrayList = new ArrayList(kotlin.collections.v.u(collectionA, 10));
                Iterator<T> it = collectionA.iterator();
                while (it.hasNext()) {
                    arrayList.add(((a0) it.next()).L0());
                }
                cVar.h(new NewCapturedTypeConstructor(projection2, arrayList, null, 4, null));
            }
            CaptureStatus captureStatus = CaptureStatus.FOR_SUBTYPING;
            NewCapturedTypeConstructor newCapturedTypeConstructorF = cVar.f();
            kotlin.jvm.internal.r.c(newCapturedTypeConstructorF);
            return new i(captureStatus, newCapturedTypeConstructorF, c1Var, f0Var.getAnnotations(), f0Var.J0(), false, 32, null);
        }
        if (q0VarI0 instanceof kotlin.reflect.jvm.internal.impl.resolve.constants.n) {
            Collection<a0> collectionA2 = ((kotlin.reflect.jvm.internal.impl.resolve.constants.n) q0VarI0).a();
            ArrayList arrayList2 = new ArrayList(kotlin.collections.v.u(collectionA2, 10));
            Iterator<T> it2 = collectionA2.iterator();
            while (it2.hasNext()) {
                a0 a0VarQ = y0.q((a0) it2.next(), f0Var.J0());
                kotlin.jvm.internal.r.d(a0VarQ, "makeNullableAsSpecified(it, type.isMarkedNullable)");
                arrayList2.add(a0VarQ);
            }
            return KotlinTypeFactory.j(f0Var.getAnnotations(), new IntersectionTypeConstructor(arrayList2), kotlin.collections.u.j(), false, f0Var.m());
        }
        if (!(q0VarI0 instanceof IntersectionTypeConstructor) || !f0Var.J0()) {
            return f0Var;
        }
        IntersectionTypeConstructor intersectionTypeConstructor = (IntersectionTypeConstructor) q0VarI0;
        Collection<a0> collectionA3 = intersectionTypeConstructor.a();
        ArrayList arrayList3 = new ArrayList(kotlin.collections.v.u(collectionA3, 10));
        Iterator<T> it3 = collectionA3.iterator();
        while (it3.hasNext()) {
            arrayList3.add(TypeUtilsKt.q((a0) it3.next()));
            z = true;
        }
        if (z) {
            a0 a0VarG = intersectionTypeConstructor.g();
            intersectionTypeConstructorL = new IntersectionTypeConstructor(arrayList3).l(a0VarG != null ? TypeUtilsKt.q(a0VarG) : null);
        }
        if (intersectionTypeConstructorL != null) {
            intersectionTypeConstructor = intersectionTypeConstructorL;
        }
        return intersectionTypeConstructor.f();
    }

    public c1 a(kotlin.reflect.jvm.internal.impl.types.model.g type) {
        c1 c1VarD;
        kotlin.jvm.internal.r.e(type, "type");
        if (!(type instanceof a0)) {
            throw new IllegalArgumentException("Failed requirement.".toString());
        }
        c1 c1VarL0 = ((a0) type).L0();
        if (c1VarL0 instanceof f0) {
            c1VarD = b((f0) c1VarL0);
        } else {
            if (!(c1VarL0 instanceof kotlin.reflect.jvm.internal.impl.types.v)) {
                throw new NoWhenBranchMatchedException();
            }
            kotlin.reflect.jvm.internal.impl.types.v vVar = (kotlin.reflect.jvm.internal.impl.types.v) c1VarL0;
            f0 f0VarB = b(vVar.Q0());
            f0 f0VarB2 = b(vVar.R0());
            c1VarD = (f0VarB == vVar.Q0() && f0VarB2 == vVar.R0()) ? c1VarL0 : KotlinTypeFactory.d(f0VarB, f0VarB2);
        }
        return a1.c(c1VarD, c1VarL0, new KotlinTypePreparator$prepareType$1(this));
    }
}
