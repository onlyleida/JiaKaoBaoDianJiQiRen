package kotlin.reflect.jvm.internal.impl.types;

import java.util.ArrayDeque;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Iterator;
import java.util.List;
import java.util.Set;
import kotlin.NoWhenBranchMatchedException;
import kotlin.collections.CollectionsKt___CollectionsKt;
import kotlin.reflect.jvm.internal.impl.types.model.ArgumentList;
import kotlin.reflect.jvm.internal.impl.types.model.CaptureStatus;
import kotlin.reflect.jvm.internal.impl.types.model.TypeVariance;

/* JADX INFO: loaded from: classes6.dex */
public final class f {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final f f15682a = new f();
    public static boolean b;

    public /* synthetic */ class a {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public static final /* synthetic */ int[] f15683a;
        public static final /* synthetic */ int[] b;

        static {
            int[] iArr = new int[TypeVariance.values().length];
            iArr[TypeVariance.INV.ordinal()] = 1;
            iArr[TypeVariance.OUT.ordinal()] = 2;
            iArr[TypeVariance.IN.ordinal()] = 3;
            f15683a = iArr;
            int[] iArr2 = new int[AbstractTypeCheckerContext.LowerCapturedTypePolicy.values().length];
            iArr2[AbstractTypeCheckerContext.LowerCapturedTypePolicy.CHECK_ONLY_LOWER.ordinal()] = 1;
            iArr2[AbstractTypeCheckerContext.LowerCapturedTypePolicy.CHECK_SUBTYPE_AND_LOWER.ordinal()] = 2;
            iArr2[AbstractTypeCheckerContext.LowerCapturedTypePolicy.SKIP_LOWER.ordinal()] = 3;
            b = iArr2;
        }
    }

    private f() {
    }

    private final Boolean a(AbstractTypeCheckerContext abstractTypeCheckerContext, kotlin.reflect.jvm.internal.impl.types.model.h hVar, kotlin.reflect.jvm.internal.impl.types.model.h hVar2) {
        Boolean bool = Boolean.TRUE;
        kotlin.reflect.jvm.internal.impl.types.model.m mVarJ = abstractTypeCheckerContext.j();
        if (!mVarJ.a0(hVar) && !mVarJ.a0(hVar2)) {
            return null;
        }
        if (mVarJ.a0(hVar) && mVarJ.a0(hVar2)) {
            return bool;
        }
        if (mVarJ.a0(hVar)) {
            if (c(mVarJ, abstractTypeCheckerContext, hVar, hVar2, false)) {
                return bool;
            }
        } else if (mVarJ.a0(hVar2) && (b(mVarJ, hVar) || c(mVarJ, abstractTypeCheckerContext, hVar2, hVar, true))) {
            return bool;
        }
        return null;
    }

    private static final boolean b(kotlin.reflect.jvm.internal.impl.types.model.m mVar, kotlin.reflect.jvm.internal.impl.types.model.h hVar) {
        boolean z;
        kotlin.reflect.jvm.internal.impl.types.model.k kVarD = mVar.d(hVar);
        if (kVarD instanceof kotlin.reflect.jvm.internal.impl.types.model.f) {
            Collection<kotlin.reflect.jvm.internal.impl.types.model.g> collectionU = mVar.U(kVarD);
            if ((collectionU instanceof Collection) && collectionU.isEmpty()) {
                z = false;
            } else {
                Iterator<T> it = collectionU.iterator();
                while (it.hasNext()) {
                    kotlin.reflect.jvm.internal.impl.types.model.h hVarC = mVar.c((kotlin.reflect.jvm.internal.impl.types.model.g) it.next());
                    if (hVarC != null && mVar.a0(hVarC)) {
                        z = true;
                    }
                }
                z = false;
            }
            if (z) {
                return true;
            }
        }
        return false;
    }

    private static final boolean c(kotlin.reflect.jvm.internal.impl.types.model.m mVar, AbstractTypeCheckerContext abstractTypeCheckerContext, kotlin.reflect.jvm.internal.impl.types.model.h hVar, kotlin.reflect.jvm.internal.impl.types.model.h hVar2, boolean z) {
        Collection<kotlin.reflect.jvm.internal.impl.types.model.g> collectionV = mVar.V(hVar);
        if (!(collectionV instanceof Collection) || !collectionV.isEmpty()) {
            for (kotlin.reflect.jvm.internal.impl.types.model.g gVar : collectionV) {
                if (kotlin.jvm.internal.r.a(mVar.W(gVar), mVar.d(hVar2)) || (z && q(f15682a, abstractTypeCheckerContext, hVar2, gVar, false, 8, null))) {
                    return true;
                }
            }
        }
        return false;
    }

    /* JADX WARN: Code duplicated, block: B:82:0x012f  */
    private final Boolean d(AbstractTypeCheckerContext abstractTypeCheckerContext, kotlin.reflect.jvm.internal.impl.types.model.h hVar, kotlin.reflect.jvm.internal.impl.types.model.h hVar2) {
        kotlin.reflect.jvm.internal.impl.types.model.h hVarS;
        kotlin.reflect.jvm.internal.impl.types.model.l lVarK;
        Boolean bool = Boolean.TRUE;
        kotlin.reflect.jvm.internal.impl.types.model.m mVarJ = abstractTypeCheckerContext.j();
        boolean z = false;
        if (mVarJ.y(hVar) || mVarJ.y(hVar2)) {
            if (abstractTypeCheckerContext.n()) {
                return bool;
            }
            return (!mVarJ.x(hVar) || mVarJ.x(hVar2)) ? Boolean.valueOf(d.f15679a.b(mVarJ, mVarJ.e(hVar, false), mVarJ.e(hVar2, false))) : Boolean.FALSE;
        }
        if (mVarJ.K(hVar) && mVarJ.K(hVar2)) {
            return Boolean.valueOf(f15682a.n(mVarJ, hVar, hVar2) || abstractTypeCheckerContext.o());
        }
        if (mVarJ.F(hVar) || mVarJ.F(hVar2)) {
            return Boolean.valueOf(abstractTypeCheckerContext.o());
        }
        kotlin.reflect.jvm.internal.impl.types.model.c cVarS0 = mVarJ.s0(hVar2);
        if (cVarS0 == null || (hVarS = mVarJ.s(cVarS0)) == null) {
            hVarS = hVar2;
        }
        kotlin.reflect.jvm.internal.impl.types.model.b bVarG = mVarJ.g(hVarS);
        kotlin.reflect.jvm.internal.impl.types.model.g gVarH0 = bVarG == null ? null : mVarJ.h0(bVarG);
        if (bVarG != null && gVarH0 != null) {
            if (mVarJ.x(hVar2)) {
                gVarH0 = mVarJ.r(gVarH0, true);
            } else if (mVarJ.Z(hVar2)) {
                gVarH0 = mVarJ.f0(gVarH0);
            }
            kotlin.reflect.jvm.internal.impl.types.model.g gVar = gVarH0;
            int i = a.b[abstractTypeCheckerContext.g(hVar, bVarG).ordinal()];
            if (i == 1) {
                return Boolean.valueOf(q(f15682a, abstractTypeCheckerContext, hVar, gVar, false, 8, null));
            }
            if (i == 2 && q(f15682a, abstractTypeCheckerContext, hVar, gVar, false, 8, null)) {
                return bool;
            }
        }
        kotlin.reflect.jvm.internal.impl.types.model.k kVarD = mVarJ.d(hVar2);
        if (mVarJ.j0(kVarD)) {
            mVarJ.x(hVar2);
            Collection<kotlin.reflect.jvm.internal.impl.types.model.g> collectionU = mVarJ.U(kVarD);
            if ((collectionU instanceof Collection) && collectionU.isEmpty()) {
                z = true;
            } else {
                Iterator<T> it = collectionU.iterator();
                while (it.hasNext()) {
                    if (!q(f15682a, abstractTypeCheckerContext, hVar, (kotlin.reflect.jvm.internal.impl.types.model.g) it.next(), false, 8, null)) {
                    }
                }
                z = true;
            }
            return Boolean.valueOf(z);
        }
        kotlin.reflect.jvm.internal.impl.types.model.k kVarD2 = mVarJ.d(hVar);
        if (hVar instanceof kotlin.reflect.jvm.internal.impl.types.model.b) {
            lVarK = f15682a.k(abstractTypeCheckerContext.j(), hVar2, hVar);
            if (lVarK == null && mVarJ.k(lVarK, mVarJ.d(hVar2))) {
                return bool;
            }
        } else if (mVarJ.j0(kVarD2)) {
            Collection<kotlin.reflect.jvm.internal.impl.types.model.g> collectionU2 = mVarJ.U(kVarD2);
            if (!(collectionU2 instanceof Collection) || !collectionU2.isEmpty()) {
                Iterator<T> it2 = collectionU2.iterator();
                do {
                    if (!it2.hasNext()) {
                        z = true;
                        break;
                    }
                } while (((kotlin.reflect.jvm.internal.impl.types.model.g) it2.next()) instanceof kotlin.reflect.jvm.internal.impl.types.model.b);
            } else {
                z = true;
                break;
            }
            if (z) {
                lVarK = f15682a.k(abstractTypeCheckerContext.j(), hVar2, hVar);
                if (lVarK == null) {
                }
            }
        }
        return null;
    }

    private final List<kotlin.reflect.jvm.internal.impl.types.model.h> e(AbstractTypeCheckerContext abstractTypeCheckerContext, kotlin.reflect.jvm.internal.impl.types.model.h hVar, kotlin.reflect.jvm.internal.impl.types.model.k kVar) {
        AbstractTypeCheckerContext.a aVarR;
        kotlin.reflect.jvm.internal.impl.types.model.m mVarJ = abstractTypeCheckerContext.j();
        List<kotlin.reflect.jvm.internal.impl.types.model.h> listQ = mVarJ.Q(hVar, kVar);
        if (listQ == null) {
            if (!mVarJ.i0(kVar) && mVarJ.J(hVar)) {
                return kotlin.collections.u.j();
            }
            if (mVarJ.t0(kVar)) {
                if (!mVarJ.w0(mVarJ.d(hVar), kVar)) {
                    return kotlin.collections.u.j();
                }
                kotlin.reflect.jvm.internal.impl.types.model.h hVarR0 = mVarJ.r0(hVar, CaptureStatus.FOR_SUBTYPING);
                if (hVarR0 != null) {
                    hVar = hVarR0;
                }
                return kotlin.collections.t.d(hVar);
            }
            listQ = new kotlin.reflect.jvm.internal.impl.utils.d<>();
            abstractTypeCheckerContext.k();
            ArrayDeque<kotlin.reflect.jvm.internal.impl.types.model.h> arrayDequeH = abstractTypeCheckerContext.h();
            kotlin.jvm.internal.r.c(arrayDequeH);
            Set<kotlin.reflect.jvm.internal.impl.types.model.h> setI = abstractTypeCheckerContext.i();
            kotlin.jvm.internal.r.c(setI);
            arrayDequeH.push(hVar);
            while (!arrayDequeH.isEmpty()) {
                if (setI.size() > 1000) {
                    throw new IllegalStateException(("Too many supertypes for type: " + hVar + ". Supertypes = " + CollectionsKt___CollectionsKt.m0(setI, null, null, null, 0, null, null, 63, null)).toString());
                }
                kotlin.reflect.jvm.internal.impl.types.model.h current = arrayDequeH.pop();
                kotlin.jvm.internal.r.d(current, "current");
                if (setI.add(current)) {
                    kotlin.reflect.jvm.internal.impl.types.model.h hVarR1 = mVarJ.r0(current, CaptureStatus.FOR_SUBTYPING);
                    if (hVarR1 == null) {
                        hVarR1 = current;
                    }
                    if (mVarJ.w0(mVarJ.d(hVarR1), kVar)) {
                        listQ.add(hVarR1);
                        aVarR = AbstractTypeCheckerContext.a.c.f15639a;
                    } else {
                        aVarR = mVarJ.i(hVarR1) == 0 ? AbstractTypeCheckerContext.a.b.f15638a : abstractTypeCheckerContext.r(hVarR1);
                    }
                    if (!(!kotlin.jvm.internal.r.a(aVarR, AbstractTypeCheckerContext.a.c.f15639a))) {
                        aVarR = null;
                    }
                    if (aVarR != null) {
                        kotlin.reflect.jvm.internal.impl.types.model.m mVarJ2 = abstractTypeCheckerContext.j();
                        Iterator<kotlin.reflect.jvm.internal.impl.types.model.g> it = mVarJ2.U(mVarJ2.d(current)).iterator();
                        while (it.hasNext()) {
                            arrayDequeH.add(aVarR.a(abstractTypeCheckerContext, it.next()));
                        }
                    }
                }
            }
            abstractTypeCheckerContext.e();
        }
        return listQ;
    }

    private final List<kotlin.reflect.jvm.internal.impl.types.model.h> f(AbstractTypeCheckerContext abstractTypeCheckerContext, kotlin.reflect.jvm.internal.impl.types.model.h hVar, kotlin.reflect.jvm.internal.impl.types.model.k kVar) {
        return t(abstractTypeCheckerContext, e(abstractTypeCheckerContext, hVar, kVar));
    }

    private final boolean g(AbstractTypeCheckerContext abstractTypeCheckerContext, kotlin.reflect.jvm.internal.impl.types.model.g gVar, kotlin.reflect.jvm.internal.impl.types.model.g gVar2, boolean z) {
        kotlin.reflect.jvm.internal.impl.types.model.m mVarJ = abstractTypeCheckerContext.j();
        kotlin.reflect.jvm.internal.impl.types.model.g gVarP = abstractTypeCheckerContext.p(abstractTypeCheckerContext.q(gVar));
        kotlin.reflect.jvm.internal.impl.types.model.g gVarP2 = abstractTypeCheckerContext.p(abstractTypeCheckerContext.q(gVar2));
        f fVar = f15682a;
        Boolean boolD = fVar.d(abstractTypeCheckerContext, mVarJ.m0(gVarP), mVarJ.w(gVarP2));
        if (boolD == null) {
            Boolean boolC = abstractTypeCheckerContext.c(gVarP, gVarP2, z);
            return boolC == null ? fVar.r(abstractTypeCheckerContext, mVarJ.m0(gVarP), mVarJ.w(gVarP2)) : boolC.booleanValue();
        }
        boolean zBooleanValue = boolD.booleanValue();
        abstractTypeCheckerContext.c(gVarP, gVarP2, z);
        return zBooleanValue;
    }

    private final kotlin.reflect.jvm.internal.impl.types.model.l k(kotlin.reflect.jvm.internal.impl.types.model.m mVar, kotlin.reflect.jvm.internal.impl.types.model.g gVar, kotlin.reflect.jvm.internal.impl.types.model.g gVar2) {
        int i = mVar.i(gVar);
        if (i > 0) {
            int i2 = 0;
            while (true) {
                int i3 = i2 + 1;
                kotlin.reflect.jvm.internal.impl.types.model.j jVarC = mVar.C(gVar, i2);
                if (!(!mVar.t(jVarC))) {
                    jVarC = null;
                }
                kotlin.reflect.jvm.internal.impl.types.model.g gVarU0 = jVarC == null ? null : mVar.u0(jVarC);
                if (gVarU0 != null) {
                    boolean z = mVar.n(mVar.m0(gVarU0)) && mVar.n(mVar.m0(gVar2));
                    if (kotlin.jvm.internal.r.a(gVarU0, gVar2) || (z && kotlin.jvm.internal.r.a(mVar.W(gVarU0), mVar.W(gVar2)))) {
                        break;
                    }
                    kotlin.reflect.jvm.internal.impl.types.model.l lVarK = k(mVar, gVarU0, gVar2);
                    if (lVarK != null) {
                        return lVarK;
                    }
                }
                if (i3 < i) {
                    i2 = i3;
                }
            }
            return mVar.o(mVar.W(gVar), i2);
        }
        return null;
    }

    private final boolean l(AbstractTypeCheckerContext abstractTypeCheckerContext, kotlin.reflect.jvm.internal.impl.types.model.h hVar) {
        kotlin.reflect.jvm.internal.impl.types.model.m mVarJ = abstractTypeCheckerContext.j();
        kotlin.reflect.jvm.internal.impl.types.model.k kVarD = mVarJ.d(hVar);
        if (mVarJ.i0(kVarD)) {
            return mVarJ.R(kVarD);
        }
        if (mVarJ.R(mVarJ.d(hVar))) {
            return true;
        }
        abstractTypeCheckerContext.k();
        ArrayDeque<kotlin.reflect.jvm.internal.impl.types.model.h> arrayDequeH = abstractTypeCheckerContext.h();
        kotlin.jvm.internal.r.c(arrayDequeH);
        Set<kotlin.reflect.jvm.internal.impl.types.model.h> setI = abstractTypeCheckerContext.i();
        kotlin.jvm.internal.r.c(setI);
        arrayDequeH.push(hVar);
        while (!arrayDequeH.isEmpty()) {
            if (setI.size() > 1000) {
                throw new IllegalStateException(("Too many supertypes for type: " + hVar + ". Supertypes = " + CollectionsKt___CollectionsKt.m0(setI, null, null, null, 0, null, null, 63, null)).toString());
            }
            kotlin.reflect.jvm.internal.impl.types.model.h current = arrayDequeH.pop();
            kotlin.jvm.internal.r.d(current, "current");
            if (setI.add(current)) {
                AbstractTypeCheckerContext.a aVar = mVarJ.J(current) ? AbstractTypeCheckerContext.a.c.f15639a : AbstractTypeCheckerContext.a.b.f15638a;
                if (!(!kotlin.jvm.internal.r.a(aVar, AbstractTypeCheckerContext.a.c.f15639a))) {
                    aVar = null;
                }
                if (aVar == null) {
                    continue;
                } else {
                    kotlin.reflect.jvm.internal.impl.types.model.m mVarJ2 = abstractTypeCheckerContext.j();
                    Iterator<kotlin.reflect.jvm.internal.impl.types.model.g> it = mVarJ2.U(mVarJ2.d(current)).iterator();
                    while (it.hasNext()) {
                        kotlin.reflect.jvm.internal.impl.types.model.h hVarA = aVar.a(abstractTypeCheckerContext, it.next());
                        if (mVarJ.R(mVarJ.d(hVarA))) {
                            abstractTypeCheckerContext.e();
                            return true;
                        }
                        arrayDequeH.add(hVarA);
                    }
                }
            }
        }
        abstractTypeCheckerContext.e();
        return false;
    }

    private final boolean m(kotlin.reflect.jvm.internal.impl.types.model.m mVar, kotlin.reflect.jvm.internal.impl.types.model.g gVar) {
        return mVar.X(mVar.W(gVar)) && !mVar.T(gVar) && !mVar.Z(gVar) && kotlin.jvm.internal.r.a(mVar.d(mVar.m0(gVar)), mVar.d(mVar.w(gVar)));
    }

    private final boolean n(kotlin.reflect.jvm.internal.impl.types.model.m mVar, kotlin.reflect.jvm.internal.impl.types.model.h hVar, kotlin.reflect.jvm.internal.impl.types.model.h hVar2) {
        kotlin.reflect.jvm.internal.impl.types.model.h hVarS;
        kotlin.reflect.jvm.internal.impl.types.model.h hVarS2;
        kotlin.reflect.jvm.internal.impl.types.model.c cVarS0 = mVar.s0(hVar);
        if (cVarS0 == null || (hVarS = mVar.s(cVarS0)) == null) {
            hVarS = hVar;
        }
        kotlin.reflect.jvm.internal.impl.types.model.c cVarS1 = mVar.s0(hVar2);
        if (cVarS1 == null || (hVarS2 = mVar.s(cVarS1)) == null) {
            hVarS2 = hVar2;
        }
        if (mVar.d(hVarS) != mVar.d(hVarS2)) {
            return false;
        }
        if (mVar.Z(hVar) || !mVar.Z(hVar2)) {
            return !mVar.x(hVar) || mVar.x(hVar2);
        }
        return false;
    }

    public static /* synthetic */ boolean q(f fVar, AbstractTypeCheckerContext abstractTypeCheckerContext, kotlin.reflect.jvm.internal.impl.types.model.g gVar, kotlin.reflect.jvm.internal.impl.types.model.g gVar2, boolean z, int i, Object obj) {
        if ((i & 8) != 0) {
            z = false;
        }
        return fVar.p(abstractTypeCheckerContext, gVar, gVar2, z);
    }

    private final boolean r(AbstractTypeCheckerContext abstractTypeCheckerContext, kotlin.reflect.jvm.internal.impl.types.model.h hVar, kotlin.reflect.jvm.internal.impl.types.model.h hVar2) {
        boolean z;
        kotlin.reflect.jvm.internal.impl.types.model.k kVar;
        kotlin.reflect.jvm.internal.impl.types.model.k kVar2;
        kotlin.reflect.jvm.internal.impl.types.model.m mVarJ = abstractTypeCheckerContext.j();
        if (b) {
            if (!mVarJ.a(hVar) && !mVarJ.j0(mVarJ.d(hVar))) {
                abstractTypeCheckerContext.m(hVar);
            }
            if (!mVarJ.a(hVar2)) {
                abstractTypeCheckerContext.m(hVar2);
            }
        }
        if (!c.f15653a.d(abstractTypeCheckerContext, hVar, hVar2)) {
            return false;
        }
        f fVar = f15682a;
        Boolean boolA = fVar.a(abstractTypeCheckerContext, mVarJ.m0(hVar), mVarJ.w(hVar2));
        if (boolA != null) {
            boolean zBooleanValue = boolA.booleanValue();
            AbstractTypeCheckerContext.d(abstractTypeCheckerContext, hVar, hVar2, false, 4, null);
            return zBooleanValue;
        }
        kotlin.reflect.jvm.internal.impl.types.model.k kVarD = mVarJ.d(hVar2);
        if ((mVarJ.w0(mVarJ.d(hVar), kVarD) && mVarJ.N(kVarD) == 0) || mVarJ.E(mVarJ.d(hVar2))) {
            return true;
        }
        List<kotlin.reflect.jvm.internal.impl.types.model.h> listJ = fVar.j(abstractTypeCheckerContext, hVar, kVarD);
        int i = 10;
        ArrayList<kotlin.reflect.jvm.internal.impl.types.model.h> arrayList = new ArrayList(kotlin.collections.v.u(listJ, 10));
        for (kotlin.reflect.jvm.internal.impl.types.model.h hVar3 : listJ) {
            kotlin.reflect.jvm.internal.impl.types.model.h hVarC = mVarJ.c(abstractTypeCheckerContext.p(hVar3));
            if (hVarC != null) {
                hVar3 = hVarC;
            }
            arrayList.add(hVar3);
        }
        int size = arrayList.size();
        if (size == 0) {
            return f15682a.l(abstractTypeCheckerContext, hVar);
        }
        if (size == 1) {
            return f15682a.o(abstractTypeCheckerContext, mVarJ.l((kotlin.reflect.jvm.internal.impl.types.model.h) kotlin.collections.s.c0(arrayList)), hVar2);
        }
        ArgumentList argumentList = new ArgumentList(mVarJ.N(kVarD));
        int iN = mVarJ.N(kVarD);
        if (iN > 0) {
            int i2 = 0;
            z = false;
            while (true) {
                int i3 = i2 + 1;
                z = z || mVarJ.u(mVarJ.o(kVarD, i2)) != TypeVariance.OUT;
                if (z) {
                    kVar = kVarD;
                } else {
                    ArrayList arrayList2 = new ArrayList(kotlin.collections.v.u(arrayList, i));
                    for (kotlin.reflect.jvm.internal.impl.types.model.h hVar4 : arrayList) {
                        kotlin.reflect.jvm.internal.impl.types.model.j jVarL = mVarJ.L(hVar4, i2);
                        kotlin.reflect.jvm.internal.impl.types.model.g gVarU0 = null;
                        if (jVarL == null) {
                            kVar2 = kVarD;
                        } else {
                            kVar2 = kVarD;
                            if (!(mVarJ.n0(jVarL) == TypeVariance.INV)) {
                                jVarL = null;
                            }
                            if (jVarL != null) {
                                gVarU0 = mVarJ.u0(jVarL);
                            }
                        }
                        kotlin.reflect.jvm.internal.impl.types.model.g gVar = gVarU0;
                        if (gVar == null) {
                            throw new IllegalStateException(("Incorrect type: " + hVar4 + ", subType: " + hVar + ", superType: " + hVar2).toString());
                        }
                        arrayList2.add(gVar);
                        kVarD = kVar2;
                    }
                    kVar = kVarD;
                    argumentList.add(mVarJ.A(mVarJ.d0(arrayList2)));
                }
                if (i3 >= iN) {
                    break;
                }
                i2 = i3;
                kVarD = kVar;
                i = 10;
            }
        } else {
            z = false;
        }
        if (!z && f15682a.o(abstractTypeCheckerContext, argumentList, hVar2)) {
            return true;
        }
        if (!arrayList.isEmpty()) {
            Iterator it = arrayList.iterator();
            while (it.hasNext()) {
                if (f15682a.o(abstractTypeCheckerContext, mVarJ.l((kotlin.reflect.jvm.internal.impl.types.model.h) it.next()), hVar2)) {
                    return true;
                }
            }
        }
        return false;
    }

    private final boolean s(kotlin.reflect.jvm.internal.impl.types.model.m mVar, kotlin.reflect.jvm.internal.impl.types.model.g gVar, kotlin.reflect.jvm.internal.impl.types.model.g gVar2, kotlin.reflect.jvm.internal.impl.types.model.k kVar) {
        kotlin.reflect.jvm.internal.impl.types.model.l lVarP0;
        kotlin.reflect.jvm.internal.impl.types.model.h hVarC = mVar.c(gVar);
        if (!(hVarC instanceof kotlin.reflect.jvm.internal.impl.types.model.b)) {
            return false;
        }
        kotlin.reflect.jvm.internal.impl.types.model.b bVar = (kotlin.reflect.jvm.internal.impl.types.model.b) hVarC;
        if (mVar.S(bVar) || !mVar.t(mVar.g0(mVar.B(bVar))) || mVar.e0(bVar) != CaptureStatus.FOR_SUBTYPING) {
            return false;
        }
        kotlin.reflect.jvm.internal.impl.types.model.k kVarW = mVar.W(gVar2);
        kotlin.reflect.jvm.internal.impl.types.model.q qVar = kVarW instanceof kotlin.reflect.jvm.internal.impl.types.model.q ? (kotlin.reflect.jvm.internal.impl.types.model.q) kVarW : null;
        return (qVar == null || (lVarP0 = mVar.p0(qVar)) == null || !mVar.k(lVarP0, kVar)) ? false : true;
    }

    /* JADX WARN: Multi-variable type inference failed */
    private final List<kotlin.reflect.jvm.internal.impl.types.model.h> t(AbstractTypeCheckerContext abstractTypeCheckerContext, List<? extends kotlin.reflect.jvm.internal.impl.types.model.h> list) {
        kotlin.reflect.jvm.internal.impl.types.model.m mVarJ = abstractTypeCheckerContext.j();
        if (list.size() < 2) {
            return list;
        }
        ArrayList arrayList = new ArrayList();
        Iterator it = list.iterator();
        while (true) {
            boolean z = true;
            if (!it.hasNext()) {
                break;
            }
            Object next = it.next();
            kotlin.reflect.jvm.internal.impl.types.model.i iVarL = mVarJ.l((kotlin.reflect.jvm.internal.impl.types.model.h) next);
            int iV = mVarJ.v(iVarL);
            for (int i = 0; i < iV; i++) {
                if (!(mVarJ.c0(mVarJ.u0(mVarJ.m(iVarL, i))) == null)) {
                    z = false;
                    break;
                }
            }
            if (z) {
                arrayList.add(next);
            }
        }
        return arrayList.isEmpty() ^ true ? arrayList : list;
    }

    public final TypeVariance h(TypeVariance declared, TypeVariance useSite) {
        kotlin.jvm.internal.r.e(declared, "declared");
        kotlin.jvm.internal.r.e(useSite, "useSite");
        TypeVariance typeVariance = TypeVariance.INV;
        if (declared == typeVariance) {
            return useSite;
        }
        if (useSite == typeVariance || declared == useSite) {
            return declared;
        }
        return null;
    }

    public final boolean i(AbstractTypeCheckerContext context, kotlin.reflect.jvm.internal.impl.types.model.g a2, kotlin.reflect.jvm.internal.impl.types.model.g b2) {
        kotlin.jvm.internal.r.e(context, "context");
        kotlin.jvm.internal.r.e(a2, "a");
        kotlin.jvm.internal.r.e(b2, "b");
        kotlin.reflect.jvm.internal.impl.types.model.m mVarJ = context.j();
        if (a2 == b2) {
            return true;
        }
        f fVar = f15682a;
        if (fVar.m(mVarJ, a2) && fVar.m(mVarJ, b2)) {
            kotlin.reflect.jvm.internal.impl.types.model.g gVarP = context.p(context.q(a2));
            kotlin.reflect.jvm.internal.impl.types.model.g gVarP2 = context.p(context.q(b2));
            kotlin.reflect.jvm.internal.impl.types.model.h hVarM0 = mVarJ.m0(gVarP);
            if (!mVarJ.w0(mVarJ.W(gVarP), mVarJ.W(gVarP2))) {
                return false;
            }
            if (mVarJ.i(hVarM0) == 0) {
                return mVarJ.Y(gVarP) || mVarJ.Y(gVarP2) || mVarJ.x(hVarM0) == mVarJ.x(mVarJ.m0(gVarP2));
            }
        }
        return q(fVar, context, a2, b2, false, 8, null) && q(fVar, context, b2, a2, false, 8, null);
    }

    public final List<kotlin.reflect.jvm.internal.impl.types.model.h> j(AbstractTypeCheckerContext context, kotlin.reflect.jvm.internal.impl.types.model.h subType, kotlin.reflect.jvm.internal.impl.types.model.k superConstructor) {
        AbstractTypeCheckerContext.a aVar;
        kotlin.jvm.internal.r.e(context, "context");
        kotlin.jvm.internal.r.e(subType, "subType");
        kotlin.jvm.internal.r.e(superConstructor, "superConstructor");
        kotlin.reflect.jvm.internal.impl.types.model.m mVarJ = context.j();
        if (mVarJ.J(subType)) {
            return f15682a.f(context, subType, superConstructor);
        }
        if (!mVarJ.i0(superConstructor) && !mVarJ.H(superConstructor)) {
            return f15682a.e(context, subType, superConstructor);
        }
        kotlin.reflect.jvm.internal.impl.utils.d<kotlin.reflect.jvm.internal.impl.types.model.h> dVar = new kotlin.reflect.jvm.internal.impl.utils.d();
        context.k();
        ArrayDeque<kotlin.reflect.jvm.internal.impl.types.model.h> arrayDequeH = context.h();
        kotlin.jvm.internal.r.c(arrayDequeH);
        Set<kotlin.reflect.jvm.internal.impl.types.model.h> setI = context.i();
        kotlin.jvm.internal.r.c(setI);
        arrayDequeH.push(subType);
        while (!arrayDequeH.isEmpty()) {
            if (setI.size() > 1000) {
                throw new IllegalStateException(("Too many supertypes for type: " + subType + ". Supertypes = " + CollectionsKt___CollectionsKt.m0(setI, null, null, null, 0, null, null, 63, null)).toString());
            }
            kotlin.reflect.jvm.internal.impl.types.model.h current = arrayDequeH.pop();
            kotlin.jvm.internal.r.d(current, "current");
            if (setI.add(current)) {
                if (mVarJ.J(current)) {
                    dVar.add(current);
                    aVar = AbstractTypeCheckerContext.a.c.f15639a;
                } else {
                    aVar = AbstractTypeCheckerContext.a.b.f15638a;
                }
                if (!(!kotlin.jvm.internal.r.a(aVar, AbstractTypeCheckerContext.a.c.f15639a))) {
                    aVar = null;
                }
                if (aVar != null) {
                    kotlin.reflect.jvm.internal.impl.types.model.m mVarJ2 = context.j();
                    Iterator<kotlin.reflect.jvm.internal.impl.types.model.g> it = mVarJ2.U(mVarJ2.d(current)).iterator();
                    while (it.hasNext()) {
                        arrayDequeH.add(aVar.a(context, it.next()));
                    }
                }
            }
        }
        context.e();
        ArrayList arrayList = new ArrayList();
        for (kotlin.reflect.jvm.internal.impl.types.model.h it2 : dVar) {
            f fVar = f15682a;
            kotlin.jvm.internal.r.d(it2, "it");
            kotlin.collections.z.B(arrayList, fVar.f(context, it2, superConstructor));
        }
        return arrayList;
    }

    public final boolean o(AbstractTypeCheckerContext abstractTypeCheckerContext, kotlin.reflect.jvm.internal.impl.types.model.i capturedSubArguments, kotlin.reflect.jvm.internal.impl.types.model.h superType) {
        boolean zI;
        kotlin.jvm.internal.r.e(abstractTypeCheckerContext, "<this>");
        kotlin.jvm.internal.r.e(capturedSubArguments, "capturedSubArguments");
        kotlin.jvm.internal.r.e(superType, "superType");
        kotlin.reflect.jvm.internal.impl.types.model.m mVarJ = abstractTypeCheckerContext.j();
        kotlin.reflect.jvm.internal.impl.types.model.k kVarD = mVarJ.d(superType);
        int iV = mVarJ.v(capturedSubArguments);
        int iN = mVarJ.N(kVarD);
        if (iV != iN || iV != mVarJ.i(superType)) {
            return false;
        }
        if (iN > 0) {
            int i = 0;
            while (true) {
                int i2 = i + 1;
                kotlin.reflect.jvm.internal.impl.types.model.j jVarC = mVarJ.C(superType, i);
                if (!mVarJ.t(jVarC)) {
                    kotlin.reflect.jvm.internal.impl.types.model.g gVarU0 = mVarJ.u0(jVarC);
                    kotlin.reflect.jvm.internal.impl.types.model.j jVarM = mVarJ.m(capturedSubArguments, i);
                    mVarJ.n0(jVarM);
                    TypeVariance typeVariance = TypeVariance.INV;
                    kotlin.reflect.jvm.internal.impl.types.model.g gVarU1 = mVarJ.u0(jVarM);
                    f fVar = f15682a;
                    TypeVariance typeVarianceH = fVar.h(mVarJ.u(mVarJ.o(kVarD, i)), mVarJ.n0(jVarC));
                    if (typeVarianceH == null) {
                        return abstractTypeCheckerContext.n();
                    }
                    if (!(typeVarianceH == typeVariance && (fVar.s(mVarJ, gVarU1, gVarU0, kVarD) || fVar.s(mVarJ, gVarU0, gVarU1, kVarD)))) {
                        if (abstractTypeCheckerContext.f15636a > 100) {
                            throw new IllegalStateException(kotlin.jvm.internal.r.m("Arguments depth is too high. Some related argument: ", gVarU1).toString());
                        }
                        abstractTypeCheckerContext.f15636a++;
                        int i3 = a.f15683a[typeVarianceH.ordinal()];
                        if (i3 == 1) {
                            zI = fVar.i(abstractTypeCheckerContext, gVarU1, gVarU0);
                        } else if (i3 == 2) {
                            zI = q(fVar, abstractTypeCheckerContext, gVarU1, gVarU0, false, 8, null);
                        } else {
                            if (i3 != 3) {
                                throw new NoWhenBranchMatchedException();
                            }
                            zI = q(fVar, abstractTypeCheckerContext, gVarU0, gVarU1, false, 8, null);
                        }
                        abstractTypeCheckerContext.f15636a--;
                        if (!zI) {
                            return false;
                        }
                    }
                }
                if (i2 < iN) {
                    i = i2;
                }
            }
        }
        return true;
    }

    public final boolean p(AbstractTypeCheckerContext context, kotlin.reflect.jvm.internal.impl.types.model.g subType, kotlin.reflect.jvm.internal.impl.types.model.g superType, boolean z) {
        kotlin.jvm.internal.r.e(context, "context");
        kotlin.jvm.internal.r.e(subType, "subType");
        kotlin.jvm.internal.r.e(superType, "superType");
        if (subType == superType) {
            return true;
        }
        if (context.f(subType, superType)) {
            return g(context, subType, superType, z);
        }
        return false;
    }
}
