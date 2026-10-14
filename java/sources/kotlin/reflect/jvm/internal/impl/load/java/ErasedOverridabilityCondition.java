package kotlin.reflect.jvm.internal.impl.load.java;

import java.util.Iterator;
import java.util.List;
import kotlin.collections.CollectionsKt___CollectionsKt;
import kotlin.jvm.functions.Function1;
import kotlin.reflect.jvm.internal.impl.descriptors.m0;
import kotlin.reflect.jvm.internal.impl.descriptors.n0;
import kotlin.reflect.jvm.internal.impl.descriptors.t0;
import kotlin.reflect.jvm.internal.impl.descriptors.v0;
import kotlin.reflect.jvm.internal.impl.load.java.descriptors.JavaMethodDescriptor;
import kotlin.reflect.jvm.internal.impl.load.java.lazy.types.RawSubstitution;
import kotlin.reflect.jvm.internal.impl.load.java.lazy.types.RawTypeImpl;
import kotlin.reflect.jvm.internal.impl.resolve.ExternalOverridabilityCondition;
import kotlin.reflect.jvm.internal.impl.resolve.OverridingUtil;
import kotlin.reflect.jvm.internal.impl.types.a0;
import kotlin.sequences.Sequence;
import kotlin.sequences.SequencesKt___SequencesKt;

/* JADX INFO: loaded from: classes6.dex */
public final class ErasedOverridabilityCondition implements ExternalOverridabilityCondition {

    public /* synthetic */ class a {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public static final /* synthetic */ int[] f15007a;

        static {
            int[] iArr = new int[OverridingUtil.OverrideCompatibilityInfo.Result.values().length];
            iArr[OverridingUtil.OverrideCompatibilityInfo.Result.OVERRIDABLE.ordinal()] = 1;
            f15007a = iArr;
        }
    }

    @Override // kotlin.reflect.jvm.internal.impl.resolve.ExternalOverridabilityCondition
    public ExternalOverridabilityCondition.Contract a() {
        return ExternalOverridabilityCondition.Contract.SUCCESS_ONLY;
    }

    @Override // kotlin.reflect.jvm.internal.impl.resolve.ExternalOverridabilityCondition
    public ExternalOverridabilityCondition.Result b(kotlin.reflect.jvm.internal.impl.descriptors.a superDescriptor, kotlin.reflect.jvm.internal.impl.descriptors.a subDescriptor, kotlin.reflect.jvm.internal.impl.descriptors.d dVar) {
        boolean z;
        kotlin.reflect.jvm.internal.impl.descriptors.a aVarC;
        kotlin.jvm.internal.r.e(superDescriptor, "superDescriptor");
        kotlin.jvm.internal.r.e(subDescriptor, "subDescriptor");
        if (subDescriptor instanceof JavaMethodDescriptor) {
            JavaMethodDescriptor javaMethodDescriptor = (JavaMethodDescriptor) subDescriptor;
            List<t0> typeParameters = javaMethodDescriptor.getTypeParameters();
            kotlin.jvm.internal.r.d(typeParameters, "subDescriptor.typeParameters");
            if (!(!typeParameters.isEmpty())) {
                OverridingUtil.OverrideCompatibilityInfo overrideCompatibilityInfoX = OverridingUtil.x(superDescriptor, subDescriptor);
                if ((overrideCompatibilityInfoX == null ? null : overrideCompatibilityInfoX.c()) != null) {
                    return ExternalOverridabilityCondition.Result.UNKNOWN;
                }
                List<v0> listF = javaMethodDescriptor.f();
                kotlin.jvm.internal.r.d(listF, "subDescriptor.valueParameters");
                Sequence sequenceU = SequencesKt___SequencesKt.u(CollectionsKt___CollectionsKt.R(listF), new Function1<v0, a0>() { // from class: kotlin.reflect.jvm.internal.impl.load.java.ErasedOverridabilityCondition$isOverridable$signatureTypes$1
                    @Override // kotlin.jvm.functions.Function1
                    public final a0 invoke(v0 v0Var) {
                        return v0Var.getType();
                    }
                });
                a0 returnType = javaMethodDescriptor.getReturnType();
                kotlin.jvm.internal.r.c(returnType);
                Sequence sequenceX = SequencesKt___SequencesKt.x(sequenceU, returnType);
                m0 m0VarO = javaMethodDescriptor.O();
                Iterator it = SequencesKt___SequencesKt.w(sequenceX, kotlin.collections.u.n(m0VarO == null ? null : m0VarO.getType())).iterator();
                while (true) {
                    if (!it.hasNext()) {
                        z = false;
                        break;
                    }
                    a0 a0Var = (a0) it.next();
                    if ((a0Var.H0().isEmpty() ^ true) && !(a0Var.L0() instanceof RawTypeImpl)) {
                        z = true;
                        break;
                    }
                }
                if (!z && (aVarC = superDescriptor.c(new RawSubstitution(null, 1, null).c())) != null) {
                    if (aVarC instanceof n0) {
                        n0 n0Var = (n0) aVarC;
                        List<t0> typeParameters2 = n0Var.getTypeParameters();
                        kotlin.jvm.internal.r.d(typeParameters2, "erasedSuper.typeParameters");
                        if (!typeParameters2.isEmpty()) {
                            aVarC = n0Var.s().o(kotlin.collections.u.j()).build();
                            kotlin.jvm.internal.r.c(aVarC);
                        }
                    }
                    OverridingUtil.OverrideCompatibilityInfo.Result resultC = OverridingUtil.f15481d.G(aVarC, subDescriptor, false).c();
                    kotlin.jvm.internal.r.d(resultC, "DEFAULT.isOverridableByW…Descriptor, false).result");
                    return a.f15007a[resultC.ordinal()] == 1 ? ExternalOverridabilityCondition.Result.OVERRIDABLE : ExternalOverridabilityCondition.Result.UNKNOWN;
                }
                return ExternalOverridabilityCondition.Result.UNKNOWN;
            }
        }
        return ExternalOverridabilityCondition.Result.UNKNOWN;
    }
}
