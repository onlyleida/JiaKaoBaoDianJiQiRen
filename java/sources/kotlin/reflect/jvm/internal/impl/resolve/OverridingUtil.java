package kotlin.reflect.jvm.internal.impl.resolve;

import com.iflytek.cloud.SpeechUtility;
import com.loc.ak;
import com.mobile.auth.gatewayauth.Constant;
import com.nirvana.tools.logger.cache.db.DBHelpTool;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Collections;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.LinkedHashSet;
import java.util.LinkedList;
import java.util.List;
import java.util.ListIterator;
import java.util.Queue;
import java.util.ServiceLoader;
import java.util.Set;
import kotlin.Pair;
import kotlin.collections.CollectionsKt___CollectionsKt;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import kotlin.reflect.jvm.internal.impl.descriptors.CallableMemberDescriptor;
import kotlin.reflect.jvm.internal.impl.descriptors.Modality;
import kotlin.reflect.jvm.internal.impl.descriptors.i0;
import kotlin.reflect.jvm.internal.impl.descriptors.impl.y;
import kotlin.reflect.jvm.internal.impl.descriptors.impl.z;
import kotlin.reflect.jvm.internal.impl.descriptors.j0;
import kotlin.reflect.jvm.internal.impl.descriptors.m0;
import kotlin.reflect.jvm.internal.impl.descriptors.o;
import kotlin.reflect.jvm.internal.impl.descriptors.r;
import kotlin.reflect.jvm.internal.impl.descriptors.s;
import kotlin.reflect.jvm.internal.impl.descriptors.t0;
import kotlin.reflect.jvm.internal.impl.descriptors.u;
import kotlin.reflect.jvm.internal.impl.descriptors.v0;
import kotlin.reflect.jvm.internal.impl.descriptors.w;
import kotlin.reflect.jvm.internal.impl.resolve.descriptorUtil.DescriptorUtilsKt;
import kotlin.reflect.jvm.internal.impl.types.a0;
import kotlin.reflect.jvm.internal.impl.types.b0;
import kotlin.reflect.jvm.internal.impl.types.checker.KotlinTypePreparator;
import kotlin.reflect.jvm.internal.impl.types.q0;
import kotlin.v;

/* JADX INFO: loaded from: classes6.dex */
public class OverridingUtil {
    private static final List<ExternalOverridabilityCondition> c = CollectionsKt___CollectionsKt.M0(ServiceLoader.load(ExternalOverridabilityCondition.class, ExternalOverridabilityCondition.class.getClassLoader()));

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public static final OverridingUtil f15481d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private static final kotlin.reflect.jvm.internal.impl.types.checker.f.a f15482e;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final kotlin.reflect.jvm.internal.impl.types.checker.g f15483a;
    private final kotlin.reflect.jvm.internal.impl.types.checker.f.a b;

    public static class OverrideCompatibilityInfo {
        private static final OverrideCompatibilityInfo b = new OverrideCompatibilityInfo(Result.OVERRIDABLE, "SUCCESS");

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private final Result f15484a;

        public enum Result {
            OVERRIDABLE,
            INCOMPATIBLE,
            CONFLICT
        }

        public OverrideCompatibilityInfo(Result result, String str) {
            if (result == null) {
                a(3);
                throw null;
            }
            if (str != null) {
                this.f15484a = result;
            } else {
                a(4);
                throw null;
            }
        }

        /* JADX WARN: Code duplicated, block: B:22:0x0031  */
        private static /* synthetic */ void a(int i) {
            String str = (i == 1 || i == 2 || i == 3 || i == 4) ? "Argument for @NotNull parameter '%s' of %s.%s must not be null" : "@NotNull method %s.%s must not return null";
            Object[] objArr = new Object[(i == 1 || i == 2 || i == 3 || i == 4) ? 3 : 2];
            if (i == 1 || i == 2) {
                objArr[0] = "debugMessage";
            } else if (i == 3) {
                objArr[0] = "success";
            } else if (i != 4) {
                objArr[0] = "kotlin/reflect/jvm/internal/impl/resolve/OverridingUtil$OverrideCompatibilityInfo";
            } else {
                objArr[0] = "debugMessage";
            }
            switch (i) {
                case 1:
                case 2:
                case 3:
                case 4:
                    objArr[1] = "kotlin/reflect/jvm/internal/impl/resolve/OverridingUtil$OverrideCompatibilityInfo";
                    break;
                case 5:
                    objArr[1] = "getResult";
                    break;
                case 6:
                    objArr[1] = "getDebugMessage";
                    break;
                default:
                    objArr[1] = "success";
                    break;
            }
            if (i == 1) {
                objArr[2] = "incompatible";
            } else if (i == 2) {
                objArr[2] = "conflict";
            } else if (i == 3 || i == 4) {
                objArr[2] = "<init>";
            }
            String str2 = String.format(str, objArr);
            if (i != 1 && i != 2 && i != 3 && i != 4) {
                throw new IllegalStateException(str2);
            }
            throw new IllegalArgumentException(str2);
        }

        public static OverrideCompatibilityInfo b(String str) {
            if (str != null) {
                return new OverrideCompatibilityInfo(Result.CONFLICT, str);
            }
            a(2);
            throw null;
        }

        public static OverrideCompatibilityInfo d(String str) {
            if (str != null) {
                return new OverrideCompatibilityInfo(Result.INCOMPATIBLE, str);
            }
            a(1);
            throw null;
        }

        public static OverrideCompatibilityInfo e() {
            OverrideCompatibilityInfo overrideCompatibilityInfo = b;
            if (overrideCompatibilityInfo != null) {
                return overrideCompatibilityInfo;
            }
            a(0);
            throw null;
        }

        public Result c() {
            Result result = this.f15484a;
            if (result != null) {
                return result;
            }
            a(5);
            throw null;
        }
    }

    static class a implements kotlin.reflect.jvm.internal.impl.types.checker.f.a {
        a() {
        }

        private static /* synthetic */ void b(int i) {
            Object[] objArr = new Object[3];
            if (i != 1) {
                objArr[0] = "a";
            } else {
                objArr[0] = "b";
            }
            objArr[1] = "kotlin/reflect/jvm/internal/impl/resolve/OverridingUtil$1";
            objArr[2] = "equals";
            throw new IllegalArgumentException(String.format("Argument for @NotNull parameter '%s' of %s.%s must not be null", objArr));
        }

        @Override // kotlin.reflect.jvm.internal.impl.types.checker.f.a
        public boolean a(q0 q0Var, q0 q0Var2) {
            if (q0Var == null) {
                b(0);
                throw null;
            }
            if (q0Var2 != null) {
                return q0Var.equals(q0Var2);
            }
            b(1);
            throw null;
        }
    }

    /* JADX INFO: Add missing generic type declarations: [D] */
    static class b<D> implements Function2<D, D, Pair<kotlin.reflect.jvm.internal.impl.descriptors.a, kotlin.reflect.jvm.internal.impl.descriptors.a>> {
        b() {
        }

        /* JADX WARN: Incorrect types in method signature: (TD;TD;)Lkotlin/Pair<Lkotlin/reflect/jvm/internal/impl/descriptors/a;Lkotlin/reflect/jvm/internal/impl/descriptors/a;>; */
        @Override // kotlin.jvm.functions.Function2
        /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
        public Pair invoke(kotlin.reflect.jvm.internal.impl.descriptors.a aVar, kotlin.reflect.jvm.internal.impl.descriptors.a aVar2) {
            return new Pair(aVar, aVar2);
        }
    }

    static class c implements Function1<CallableMemberDescriptor, Boolean> {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        final /* synthetic */ kotlin.reflect.jvm.internal.impl.descriptors.k f15485a;

        c(kotlin.reflect.jvm.internal.impl.descriptors.k kVar) {
            this.f15485a = kVar;
        }

        @Override // kotlin.jvm.functions.Function1
        /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
        public Boolean invoke(CallableMemberDescriptor callableMemberDescriptor) {
            return Boolean.valueOf(callableMemberDescriptor.b() == this.f15485a);
        }
    }

    static class d implements Function1<CallableMemberDescriptor, kotlin.reflect.jvm.internal.impl.descriptors.a> {
        d() {
        }

        public CallableMemberDescriptor a(CallableMemberDescriptor callableMemberDescriptor) {
            return callableMemberDescriptor;
        }

        @Override // kotlin.jvm.functions.Function1
        public /* bridge */ /* synthetic */ kotlin.reflect.jvm.internal.impl.descriptors.a invoke(CallableMemberDescriptor callableMemberDescriptor) {
            CallableMemberDescriptor callableMemberDescriptor2 = callableMemberDescriptor;
            a(callableMemberDescriptor2);
            return callableMemberDescriptor2;
        }
    }

    static class e implements Function1<CallableMemberDescriptor, Boolean> {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        final /* synthetic */ kotlin.reflect.jvm.internal.impl.descriptors.d f15486a;

        e(kotlin.reflect.jvm.internal.impl.descriptors.d dVar) {
            this.f15486a = dVar;
        }

        @Override // kotlin.jvm.functions.Function1
        /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
        public Boolean invoke(CallableMemberDescriptor callableMemberDescriptor) {
            return Boolean.valueOf(!r.g(callableMemberDescriptor.getVisibility()) && r.h(callableMemberDescriptor, this.f15486a));
        }
    }

    static class f implements Function1<CallableMemberDescriptor, kotlin.reflect.jvm.internal.impl.descriptors.a> {
        f() {
        }

        public kotlin.reflect.jvm.internal.impl.descriptors.a a(CallableMemberDescriptor callableMemberDescriptor) {
            return callableMemberDescriptor;
        }

        @Override // kotlin.jvm.functions.Function1
        public /* bridge */ /* synthetic */ kotlin.reflect.jvm.internal.impl.descriptors.a invoke(CallableMemberDescriptor callableMemberDescriptor) {
            CallableMemberDescriptor callableMemberDescriptor2 = callableMemberDescriptor;
            a(callableMemberDescriptor2);
            return callableMemberDescriptor2;
        }
    }

    static class g implements Function1<CallableMemberDescriptor, v> {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        final /* synthetic */ kotlin.reflect.jvm.internal.impl.resolve.g f15487a;
        final /* synthetic */ CallableMemberDescriptor b;

        g(kotlin.reflect.jvm.internal.impl.resolve.g gVar, CallableMemberDescriptor callableMemberDescriptor) {
            this.f15487a = gVar;
            this.b = callableMemberDescriptor;
        }

        @Override // kotlin.jvm.functions.Function1
        /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
        public v invoke(CallableMemberDescriptor callableMemberDescriptor) {
            this.f15487a.b(this.b, callableMemberDescriptor);
            return v.f15822a;
        }
    }

    static /* synthetic */ class h {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        static final /* synthetic */ int[] f15488a;
        static final /* synthetic */ int[] b;
        static final /* synthetic */ int[] c;

        static {
            int[] iArr = new int[Modality.values().length];
            c = iArr;
            try {
                iArr[Modality.FINAL.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                c[Modality.SEALED.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                c[Modality.OPEN.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                c[Modality.ABSTRACT.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
            int[] iArr2 = new int[OverrideCompatibilityInfo.Result.values().length];
            b = iArr2;
            try {
                iArr2[OverrideCompatibilityInfo.Result.OVERRIDABLE.ordinal()] = 1;
            } catch (NoSuchFieldError unused5) {
            }
            try {
                b[OverrideCompatibilityInfo.Result.CONFLICT.ordinal()] = 2;
            } catch (NoSuchFieldError unused6) {
            }
            try {
                b[OverrideCompatibilityInfo.Result.INCOMPATIBLE.ordinal()] = 3;
            } catch (NoSuchFieldError unused7) {
            }
            int[] iArr3 = new int[ExternalOverridabilityCondition.Result.values().length];
            f15488a = iArr3;
            try {
                iArr3[ExternalOverridabilityCondition.Result.OVERRIDABLE.ordinal()] = 1;
            } catch (NoSuchFieldError unused8) {
            }
            try {
                f15488a[ExternalOverridabilityCondition.Result.CONFLICT.ordinal()] = 2;
            } catch (NoSuchFieldError unused9) {
            }
            try {
                f15488a[ExternalOverridabilityCondition.Result.INCOMPATIBLE.ordinal()] = 3;
            } catch (NoSuchFieldError unused10) {
            }
            try {
                f15488a[ExternalOverridabilityCondition.Result.UNKNOWN.ordinal()] = 4;
            } catch (NoSuchFieldError unused11) {
            }
        }
    }

    static {
        a aVar = new a();
        f15482e = aVar;
        f15481d = new OverridingUtil(aVar, kotlin.reflect.jvm.internal.impl.types.checker.g.a.f15665a);
    }

    private OverridingUtil(kotlin.reflect.jvm.internal.impl.types.checker.f.a aVar, kotlin.reflect.jvm.internal.impl.types.checker.g gVar) {
        if (aVar == null) {
            a(4);
            throw null;
        }
        if (gVar == null) {
            a(5);
            throw null;
        }
        this.b = aVar;
        this.f15483a = gVar;
    }

    public static Set<CallableMemberDescriptor> A(CallableMemberDescriptor callableMemberDescriptor) {
        if (callableMemberDescriptor == null) {
            a(13);
            throw null;
        }
        LinkedHashSet linkedHashSet = new LinkedHashSet();
        f(callableMemberDescriptor, linkedHashSet);
        return linkedHashSet;
    }

    private static boolean B(i0 i0Var, i0 i0Var2) {
        if (i0Var == null || i0Var2 == null) {
            return true;
        }
        return I(i0Var, i0Var2);
    }

    public static boolean C(kotlin.reflect.jvm.internal.impl.descriptors.a aVar, kotlin.reflect.jvm.internal.impl.descriptors.a aVar2) {
        if (aVar == null) {
            a(67);
            throw null;
        }
        if (aVar2 == null) {
            a(68);
            throw null;
        }
        a0 returnType = aVar.getReturnType();
        a0 returnType2 = aVar2.getReturnType();
        if (!I(aVar, aVar2)) {
            return false;
        }
        Pair<kotlin.reflect.jvm.internal.impl.types.checker.l, kotlin.reflect.jvm.internal.impl.types.checker.a> pairL = f15481d.l(aVar.getTypeParameters(), aVar2.getTypeParameters());
        if (aVar instanceof u) {
            return H(aVar, returnType, aVar2, returnType2, pairL);
        }
        if (!(aVar instanceof j0)) {
            throw new IllegalArgumentException("Unexpected callable: " + aVar.getClass());
        }
        j0 j0Var = (j0) aVar;
        j0 j0Var2 = (j0) aVar2;
        if (!B(j0Var.getSetter(), j0Var2.getSetter())) {
            return false;
        }
        if (j0Var.M() && j0Var2.M()) {
            return pairL.getFirst().e(pairL.getSecond(), returnType.L0(), returnType2.L0());
        }
        return (j0Var.M() || !j0Var2.M()) && H(aVar, returnType, aVar2, returnType2, pairL);
    }

    private static boolean D(kotlin.reflect.jvm.internal.impl.descriptors.a aVar, Collection<kotlin.reflect.jvm.internal.impl.descriptors.a> collection) {
        if (aVar == null) {
            a(71);
            throw null;
        }
        if (collection == null) {
            a(72);
            throw null;
        }
        Iterator<kotlin.reflect.jvm.internal.impl.descriptors.a> it = collection.iterator();
        while (it.hasNext()) {
            if (!C(aVar, it.next())) {
                return false;
            }
        }
        return true;
    }

    private static boolean H(kotlin.reflect.jvm.internal.impl.descriptors.a aVar, a0 a0Var, kotlin.reflect.jvm.internal.impl.descriptors.a aVar2, a0 a0Var2, Pair<kotlin.reflect.jvm.internal.impl.types.checker.l, kotlin.reflect.jvm.internal.impl.types.checker.a> pair) {
        if (aVar == null) {
            a(73);
            throw null;
        }
        if (a0Var == null) {
            a(74);
            throw null;
        }
        if (aVar2 == null) {
            a(75);
            throw null;
        }
        if (a0Var2 == null) {
            a(76);
            throw null;
        }
        if (pair != null) {
            return pair.getFirst().g(pair.getSecond(), a0Var.L0(), a0Var2.L0());
        }
        a(77);
        throw null;
    }

    private static boolean I(o oVar, o oVar2) {
        if (oVar == null) {
            a(69);
            throw null;
        }
        if (oVar2 != null) {
            Integer numD = r.d(oVar.getVisibility(), oVar2.getVisibility());
            return numD == null || numD.intValue() >= 0;
        }
        a(70);
        throw null;
    }

    public static boolean J(w wVar, w wVar2) {
        if (wVar == null) {
            a(57);
            throw null;
        }
        if (wVar2 != null) {
            return !r.g(wVar2.getVisibility()) && r.h(wVar2, wVar);
        }
        a(58);
        throw null;
    }

    public static <D extends kotlin.reflect.jvm.internal.impl.descriptors.a> boolean K(D d2, D d3, boolean z, boolean z2) {
        if (d2 == null) {
            a(11);
            throw null;
        }
        if (d3 == null) {
            a(12);
            throw null;
        }
        if (!d2.equals(d3) && DescriptorEquivalenceForOverrides.f15479a.d(d2.a(), d3.a(), z, z2)) {
            return true;
        }
        kotlin.reflect.jvm.internal.impl.descriptors.a aVarA = d3.a();
        Iterator it = kotlin.reflect.jvm.internal.impl.resolve.c.d(d2).iterator();
        while (it.hasNext()) {
            if (DescriptorEquivalenceForOverrides.f15479a.d(aVarA, (kotlin.reflect.jvm.internal.impl.descriptors.a) it.next(), z, z2)) {
                return true;
            }
        }
        return false;
    }

    public static void L(CallableMemberDescriptor callableMemberDescriptor, Function1<CallableMemberDescriptor, v> function1) {
        s sVar;
        if (callableMemberDescriptor == null) {
            a(107);
            throw null;
        }
        for (CallableMemberDescriptor callableMemberDescriptor2 : callableMemberDescriptor.d()) {
            if (callableMemberDescriptor2.getVisibility() == r.f14977g) {
                L(callableMemberDescriptor2, function1);
            }
        }
        if (callableMemberDescriptor.getVisibility() != r.f14977g) {
            return;
        }
        s sVarH = h(callableMemberDescriptor);
        if (sVarH == null) {
            if (function1 != null) {
                function1.invoke(callableMemberDescriptor);
            }
            sVar = r.f14975e;
        } else {
            sVar = sVarH;
        }
        if (callableMemberDescriptor instanceof z) {
            ((z) callableMemberDescriptor).W0(sVar);
            Iterator<i0> it = ((j0) callableMemberDescriptor).u().iterator();
            while (it.hasNext()) {
                L(it.next(), sVarH == null ? null : function1);
            }
            return;
        }
        if (callableMemberDescriptor instanceof kotlin.reflect.jvm.internal.impl.descriptors.impl.o) {
            ((kotlin.reflect.jvm.internal.impl.descriptors.impl.o) callableMemberDescriptor).f1(sVar);
            return;
        }
        y yVar = (y) callableMemberDescriptor;
        yVar.K0(sVar);
        if (sVar != yVar.T().getVisibility()) {
            yVar.I0(false);
        }
    }

    public static <H> H M(Collection<H> collection, Function1<H, kotlin.reflect.jvm.internal.impl.descriptors.a> function1) {
        H h2;
        if (collection == null) {
            a(78);
            throw null;
        }
        if (function1 == null) {
            a(79);
            throw null;
        }
        if (collection.size() == 1) {
            H h3 = (H) kotlin.collections.s.b0(collection);
            if (h3 != null) {
                return h3;
            }
            a(80);
            throw null;
        }
        ArrayList arrayList = new ArrayList(2);
        List listR0 = CollectionsKt___CollectionsKt.r0(collection, function1);
        H h4 = (H) kotlin.collections.s.b0(collection);
        kotlin.reflect.jvm.internal.impl.descriptors.a aVarInvoke = function1.invoke(h4);
        for (H h5 : collection) {
            kotlin.reflect.jvm.internal.impl.descriptors.a aVarInvoke2 = function1.invoke(h5);
            if (D(aVarInvoke2, listR0)) {
                arrayList.add(h5);
            }
            if (C(aVarInvoke2, aVarInvoke) && !C(aVarInvoke, aVarInvoke2)) {
                h4 = h5;
            }
        }
        if (arrayList.isEmpty()) {
            if (h4 != null) {
                return h4;
            }
            a(81);
            throw null;
        }
        if (arrayList.size() == 1) {
            H h6 = (H) kotlin.collections.s.b0(arrayList);
            if (h6 != null) {
                return h6;
            }
            a(82);
            throw null;
        }
        Iterator it = arrayList.iterator();
        do {
            if (!it.hasNext()) {
                h2 = null;
                break;
            }
            h2 = (H) it.next();
        } while (kotlin.reflect.jvm.internal.impl.types.y.b(function1.invoke(h2).getReturnType()));
        if (h2 != null) {
            if (h2 != null) {
                return h2;
            }
            a(83);
            throw null;
        }
        H h7 = (H) kotlin.collections.s.b0(arrayList);
        if (h7 != null) {
            return h7;
        }
        a(84);
        throw null;
    }

    /* JADX WARN: Code duplicated, block: B:101:0x0199  */
    /* JADX WARN: Code duplicated, block: B:17:0x0035 A[FALL_THROUGH] */
    /* JADX WARN: Code duplicated, block: B:33:0x0058 A[FALL_THROUGH] */
    private static /* synthetic */ void a(int i) {
        String str;
        int i2;
        if (i != 9 && i != 10 && i != 14 && i != 19 && i != 95 && i != 98 && i != 103 && i != 44 && i != 45) {
            switch (i) {
                default:
                    switch (i) {
                        default:
                            switch (i) {
                                default:
                                    switch (i) {
                                        case 90:
                                        case 91:
                                        case 92:
                                            break;
                                        default:
                                            str = "Argument for @NotNull parameter '%s' of %s.%s must not be null";
                                            break;
                                    }
                                case 80:
                                case 81:
                                case 82:
                                case 83:
                                case 84:
                                    str = "@NotNull method %s.%s must not return null";
                                    break;
                            }
                        case 30:
                        case 31:
                        case 32:
                        case 33:
                        case 34:
                        case 35:
                        case 36:
                        case 37:
                            str = "@NotNull method %s.%s must not return null";
                            break;
                    }
                case 22:
                case 23:
                case 24:
                case 25:
                case 26:
                case 27:
                    str = "@NotNull method %s.%s must not return null";
                    break;
            }
        } else {
            str = "@NotNull method %s.%s must not return null";
        }
        if (i != 9 && i != 10 && i != 14 && i != 19 && i != 95 && i != 98 && i != 103 && i != 44 && i != 45) {
            switch (i) {
                default:
                    switch (i) {
                        default:
                            switch (i) {
                                default:
                                    switch (i) {
                                        case 90:
                                        case 91:
                                        case 92:
                                            break;
                                        default:
                                            i2 = 3;
                                            break;
                                    }
                                case 80:
                                case 81:
                                case 82:
                                case 83:
                                case 84:
                                    i2 = 2;
                                    break;
                            }
                        case 30:
                        case 31:
                        case 32:
                        case 33:
                        case 34:
                        case 35:
                        case 36:
                        case 37:
                            i2 = 2;
                            break;
                    }
                case 22:
                case 23:
                case 24:
                case 25:
                case 26:
                case 27:
                    i2 = 2;
                    break;
            }
        } else {
            i2 = 2;
        }
        Object[] objArr = new Object[i2];
        switch (i) {
            case 1:
            case 2:
            case 5:
                objArr[0] = "kotlinTypeRefiner";
                break;
            case 3:
            default:
                objArr[0] = "equalityAxioms";
                break;
            case 4:
                objArr[0] = "axioms";
                break;
            case 6:
            case 7:
                objArr[0] = "candidateSet";
                break;
            case 8:
                objArr[0] = "transformFirst";
                break;
            case 9:
            case 10:
            case 14:
            case 19:
            case 22:
            case 23:
            case 24:
            case 25:
            case 26:
            case 27:
            case 30:
            case 31:
            case 32:
            case 33:
            case 34:
            case 35:
            case 36:
            case 37:
            case 44:
            case 45:
            case 80:
            case 81:
            case 82:
            case 83:
            case 84:
            case 90:
            case 91:
            case 92:
            case 95:
            case 98:
            case 103:
                objArr[0] = "kotlin/reflect/jvm/internal/impl/resolve/OverridingUtil";
                break;
            case 11:
                objArr[0] = "f";
                break;
            case 12:
                objArr[0] = ak.f12507f;
                break;
            case 13:
            case 15:
                objArr[0] = "descriptor";
                break;
            case 16:
                objArr[0] = SpeechUtility.TAG_RESOURCE_RESULT;
                break;
            case 17:
            case 20:
            case 28:
            case 38:
                objArr[0] = "superDescriptor";
                break;
            case 18:
            case 21:
            case 29:
            case 39:
                objArr[0] = "subDescriptor";
                break;
            case 40:
            case 42:
                objArr[0] = "firstParameters";
                break;
            case 41:
            case 43:
                objArr[0] = "secondParameters";
                break;
            case 46:
                objArr[0] = "typeInSuper";
                break;
            case 47:
                objArr[0] = "typeInSub";
                break;
            case 48:
            case 51:
            case 77:
                objArr[0] = "typeChecker";
                break;
            case 49:
                objArr[0] = "superTypeParameter";
                break;
            case 50:
                objArr[0] = "subTypeParameter";
                break;
            case 52:
                objArr[0] = Constant.PROTOCOL_WEBVIEW_NAME;
                break;
            case 53:
                objArr[0] = "membersFromSupertypes";
                break;
            case 54:
                objArr[0] = "membersFromCurrent";
                break;
            case 55:
            case 61:
            case 64:
            case 86:
            case 89:
            case 96:
                objArr[0] = "current";
                break;
            case 56:
            case 62:
            case 66:
            case 87:
            case 106:
                objArr[0] = DBHelpTool.RecordEntry.COLUMN_NAME_STRATEGY;
                break;
            case 57:
                objArr[0] = "overriding";
                break;
            case 58:
                objArr[0] = "fromSuper";
                break;
            case 59:
                objArr[0] = "fromCurrent";
                break;
            case 60:
                objArr[0] = "descriptorsFromSuper";
                break;
            case 63:
            case 65:
                objArr[0] = "notOverridden";
                break;
            case 67:
            case 69:
            case 73:
                objArr[0] = "a";
                break;
            case 68:
            case 70:
            case 75:
                objArr[0] = "b";
                break;
            case 71:
                objArr[0] = "candidate";
                break;
            case 72:
            case 88:
            case 93:
            case 109:
                objArr[0] = "descriptors";
                break;
            case 74:
                objArr[0] = "aReturnType";
                break;
            case 76:
                objArr[0] = "bReturnType";
                break;
            case 78:
            case 85:
                objArr[0] = "overridables";
                break;
            case 79:
            case 101:
                objArr[0] = "descriptorByHandle";
                break;
            case 94:
                objArr[0] = "classModality";
                break;
            case 97:
                objArr[0] = "toFilter";
                break;
            case 99:
            case 104:
                objArr[0] = "overrider";
                break;
            case 100:
            case 105:
                objArr[0] = "extractFrom";
                break;
            case 102:
                objArr[0] = "onConflict";
                break;
            case 107:
            case 108:
                objArr[0] = "memberDescriptor";
                break;
        }
        if (i == 9 || i == 10) {
            objArr[1] = "filterOverrides";
        } else if (i == 14) {
            objArr[1] = "getOverriddenDeclarations";
        } else if (i == 19) {
            objArr[1] = "isOverridableBy";
        } else if (i == 95) {
            objArr[1] = "getMinimalModality";
        } else if (i == 98) {
            objArr[1] = "filterVisibleFakeOverrides";
        } else if (i == 103) {
            objArr[1] = "extractMembersOverridableInBothWays";
        } else if (i != 44 && i != 45) {
            switch (i) {
                case 22:
                case 23:
                case 24:
                case 25:
                case 26:
                case 27:
                    objArr[1] = "isOverridableBy";
                    break;
                default:
                    switch (i) {
                        case 30:
                        case 31:
                        case 32:
                        case 33:
                        case 34:
                        case 35:
                        case 36:
                        case 37:
                            objArr[1] = "isOverridableByWithoutExternalConditions";
                            break;
                        default:
                            switch (i) {
                                case 80:
                                case 81:
                                case 82:
                                case 83:
                                case 84:
                                    objArr[1] = "selectMostSpecificMember";
                                    break;
                                default:
                                    switch (i) {
                                        case 90:
                                        case 91:
                                        case 92:
                                            objArr[1] = "determineModalityForFakeOverride";
                                            break;
                                        default:
                                            objArr[1] = "kotlin/reflect/jvm/internal/impl/resolve/OverridingUtil";
                                            break;
                                    }
                                    break;
                            }
                            break;
                    }
                    break;
            }
        } else {
            objArr[1] = "createTypeCheckerContext";
        }
        switch (i) {
            case 1:
                objArr[2] = "createWithTypeRefiner";
                break;
            case 2:
            case 3:
                objArr[2] = "create";
                break;
            case 4:
            case 5:
                objArr[2] = "<init>";
                break;
            case 6:
                objArr[2] = "filterOutOverridden";
                break;
            case 7:
            case 8:
                objArr[2] = "filterOverrides";
                break;
            case 9:
            case 10:
            case 14:
            case 19:
            case 22:
            case 23:
            case 24:
            case 25:
            case 26:
            case 27:
            case 30:
            case 31:
            case 32:
            case 33:
            case 34:
            case 35:
            case 36:
            case 37:
            case 44:
            case 45:
            case 80:
            case 81:
            case 82:
            case 83:
            case 84:
            case 90:
            case 91:
            case 92:
            case 95:
            case 98:
            case 103:
                break;
            case 11:
            case 12:
                objArr[2] = "overrides";
                break;
            case 13:
                objArr[2] = "getOverriddenDeclarations";
                break;
            case 15:
            case 16:
                objArr[2] = "collectOverriddenDeclarations";
                break;
            case 17:
            case 18:
            case 20:
            case 21:
                objArr[2] = "isOverridableBy";
                break;
            case 28:
            case 29:
                objArr[2] = "isOverridableByWithoutExternalConditions";
                break;
            case 38:
            case 39:
                objArr[2] = "getBasicOverridabilityProblem";
                break;
            case 40:
            case 41:
                objArr[2] = "createTypeChecker";
                break;
            case 42:
            case 43:
                objArr[2] = "createTypeCheckerContext";
                break;
            case 46:
            case 47:
            case 48:
                objArr[2] = "areTypesEquivalent";
                break;
            case 49:
            case 50:
            case 51:
                objArr[2] = "areTypeParametersEquivalent";
                break;
            case 52:
            case 53:
            case 54:
            case 55:
            case 56:
                objArr[2] = "generateOverridesInFunctionGroup";
                break;
            case 57:
            case 58:
                objArr[2] = "isVisibleForOverride";
                break;
            case 59:
            case 60:
            case 61:
            case 62:
                objArr[2] = "extractAndBindOverridesForMember";
                break;
            case 63:
                objArr[2] = "allHasSameContainingDeclaration";
                break;
            case 64:
            case 65:
            case 66:
                objArr[2] = "createAndBindFakeOverrides";
                break;
            case 67:
            case 68:
                objArr[2] = "isMoreSpecific";
                break;
            case 69:
            case 70:
                objArr[2] = "isVisibilityMoreSpecific";
                break;
            case 71:
            case 72:
                objArr[2] = "isMoreSpecificThenAllOf";
                break;
            case 73:
            case 74:
            case 75:
            case 76:
            case 77:
                objArr[2] = "isReturnTypeMoreSpecific";
                break;
            case 78:
            case 79:
                objArr[2] = "selectMostSpecificMember";
                break;
            case 85:
            case 86:
            case 87:
                objArr[2] = "createAndBindFakeOverride";
                break;
            case 88:
            case 89:
                objArr[2] = "determineModalityForFakeOverride";
                break;
            case 93:
            case 94:
                objArr[2] = "getMinimalModality";
                break;
            case 96:
            case 97:
                objArr[2] = "filterVisibleFakeOverrides";
                break;
            case 99:
            case 100:
            case 101:
            case 102:
            case 104:
            case 105:
            case 106:
                objArr[2] = "extractMembersOverridableInBothWays";
                break;
            case 107:
                objArr[2] = "resolveUnknownVisibilityForMember";
                break;
            case 108:
                objArr[2] = "computeVisibilityToInherit";
                break;
            case 109:
                objArr[2] = "findMaxVisibility";
                break;
            default:
                objArr[2] = "createWithEqualityAxioms";
                break;
        }
        String str2 = String.format(str, objArr);
        if (i != 9 && i != 10 && i != 14 && i != 19 && i != 95 && i != 98 && i != 103 && i != 44 && i != 45) {
            switch (i) {
                case 22:
                case 23:
                case 24:
                case 25:
                case 26:
                case 27:
                    break;
                default:
                    switch (i) {
                        case 30:
                        case 31:
                        case 32:
                        case 33:
                        case 34:
                        case 35:
                        case 36:
                        case 37:
                            break;
                        default:
                            switch (i) {
                                case 80:
                                case 81:
                                case 82:
                                case 83:
                                case 84:
                                    break;
                                default:
                                    switch (i) {
                                        case 90:
                                        case 91:
                                        case 92:
                                            break;
                                        default:
                                            throw new IllegalArgumentException(str2);
                                    }
                                    break;
                            }
                            break;
                    }
                    break;
            }
        }
        throw new IllegalStateException(str2);
    }

    private static boolean b(Collection<CallableMemberDescriptor> collection) {
        if (collection == null) {
            a(63);
            throw null;
        }
        if (collection.size() < 2) {
            return true;
        }
        return CollectionsKt___CollectionsKt.Q(collection, new c(collection.iterator().next().b()));
    }

    private boolean c(t0 t0Var, t0 t0Var2, Pair<kotlin.reflect.jvm.internal.impl.types.checker.l, kotlin.reflect.jvm.internal.impl.types.checker.a> pair) {
        if (t0Var == null) {
            a(49);
            throw null;
        }
        if (t0Var2 == null) {
            a(50);
            throw null;
        }
        if (pair == null) {
            a(51);
            throw null;
        }
        List<a0> upperBounds = t0Var.getUpperBounds();
        ArrayList arrayList = new ArrayList(t0Var2.getUpperBounds());
        if (upperBounds.size() != arrayList.size()) {
            return false;
        }
        for (a0 a0Var : upperBounds) {
            ListIterator listIterator = arrayList.listIterator();
            while (listIterator.hasNext()) {
                if (d(a0Var, (a0) listIterator.next(), pair)) {
                    listIterator.remove();
                }
            }
            return false;
        }
        return true;
    }

    private boolean d(a0 a0Var, a0 a0Var2, Pair<kotlin.reflect.jvm.internal.impl.types.checker.l, kotlin.reflect.jvm.internal.impl.types.checker.a> pair) {
        if (a0Var == null) {
            a(46);
            throw null;
        }
        if (a0Var2 == null) {
            a(47);
            throw null;
        }
        if (pair == null) {
            a(48);
            throw null;
        }
        if (b0.a(a0Var) && b0.a(a0Var2)) {
            return true;
        }
        return pair.getFirst().e(pair.getSecond(), a0Var.L0(), a0Var2.L0());
    }

    private static OverrideCompatibilityInfo e(kotlin.reflect.jvm.internal.impl.descriptors.a aVar, kotlin.reflect.jvm.internal.impl.descriptors.a aVar2) {
        if ((aVar.O() == null) != (aVar2.O() == null)) {
            return OverrideCompatibilityInfo.d("Receiver presence mismatch");
        }
        if (aVar.f().size() != aVar2.f().size()) {
            return OverrideCompatibilityInfo.d("Value parameter number mismatch");
        }
        return null;
    }

    private static void f(CallableMemberDescriptor callableMemberDescriptor, Set<CallableMemberDescriptor> set) {
        if (callableMemberDescriptor == null) {
            a(15);
            throw null;
        }
        if (set == null) {
            a(16);
            throw null;
        }
        if (callableMemberDescriptor.g().isReal()) {
            set.add(callableMemberDescriptor);
            return;
        }
        if (callableMemberDescriptor.d().isEmpty()) {
            throw new IllegalStateException("No overridden descriptors found for (fake override) " + callableMemberDescriptor);
        }
        Iterator<? extends CallableMemberDescriptor> it = callableMemberDescriptor.d().iterator();
        while (it.hasNext()) {
            f(it.next(), set);
        }
    }

    private static List<a0> g(kotlin.reflect.jvm.internal.impl.descriptors.a aVar) {
        m0 m0VarO = aVar.O();
        ArrayList arrayList = new ArrayList();
        if (m0VarO != null) {
            arrayList.add(m0VarO.getType());
        }
        Iterator<v0> it = aVar.f().iterator();
        while (it.hasNext()) {
            arrayList.add(it.next().getType());
        }
        return arrayList;
    }

    private static s h(CallableMemberDescriptor callableMemberDescriptor) {
        if (callableMemberDescriptor == null) {
            a(108);
            throw null;
        }
        Collection<? extends CallableMemberDescriptor> collectionD = callableMemberDescriptor.d();
        s sVarV = v(collectionD);
        if (sVarV == null) {
            return null;
        }
        if (callableMemberDescriptor.g() != CallableMemberDescriptor.Kind.FAKE_OVERRIDE) {
            return sVarV.f();
        }
        for (CallableMemberDescriptor callableMemberDescriptor2 : collectionD) {
            if (callableMemberDescriptor2.q() != Modality.ABSTRACT && !callableMemberDescriptor2.getVisibility().equals(sVarV)) {
                return null;
            }
        }
        return sVarV;
    }

    public static OverridingUtil i(kotlin.reflect.jvm.internal.impl.types.checker.g gVar, kotlin.reflect.jvm.internal.impl.types.checker.f.a aVar) {
        if (gVar == null) {
            a(2);
            throw null;
        }
        if (aVar != null) {
            return new OverridingUtil(aVar, gVar);
        }
        a(3);
        throw null;
    }

    private static void j(Collection<CallableMemberDescriptor> collection, kotlin.reflect.jvm.internal.impl.descriptors.d dVar, kotlin.reflect.jvm.internal.impl.resolve.g gVar) {
        if (collection == null) {
            a(85);
            throw null;
        }
        if (dVar == null) {
            a(86);
            throw null;
        }
        if (gVar == null) {
            a(87);
            throw null;
        }
        Collection<CallableMemberDescriptor> collectionU = u(dVar, collection);
        boolean zIsEmpty = collectionU.isEmpty();
        if (!zIsEmpty) {
            collection = collectionU;
        }
        CallableMemberDescriptor callableMemberDescriptorN = ((CallableMemberDescriptor) M(collection, new d())).N(dVar, o(collection, dVar), zIsEmpty ? r.f14978h : r.f14977g, CallableMemberDescriptor.Kind.FAKE_OVERRIDE, false);
        gVar.d(callableMemberDescriptorN, collection);
        gVar.a(callableMemberDescriptorN);
    }

    private static void k(kotlin.reflect.jvm.internal.impl.descriptors.d dVar, Collection<CallableMemberDescriptor> collection, kotlin.reflect.jvm.internal.impl.resolve.g gVar) {
        if (dVar == null) {
            a(64);
            throw null;
        }
        if (collection == null) {
            a(65);
            throw null;
        }
        if (gVar == null) {
            a(66);
            throw null;
        }
        if (b(collection)) {
            Iterator<CallableMemberDescriptor> it = collection.iterator();
            while (it.hasNext()) {
                j(Collections.singleton(it.next()), dVar, gVar);
            }
        } else {
            LinkedList linkedList = new LinkedList(collection);
            while (!linkedList.isEmpty()) {
                j(r(l.a(linkedList), linkedList, gVar), dVar, gVar);
            }
        }
    }

    private Pair<kotlin.reflect.jvm.internal.impl.types.checker.l, kotlin.reflect.jvm.internal.impl.types.checker.a> l(List<t0> list, List<t0> list2) {
        if (list == null) {
            a(40);
            throw null;
        }
        if (list2 != null) {
            return new Pair<>(new kotlin.reflect.jvm.internal.impl.types.checker.l(this.f15483a, KotlinTypePreparator.a.f15654a), m(list, list2));
        }
        a(41);
        throw null;
    }

    private kotlin.reflect.jvm.internal.impl.types.checker.a m(List<t0> list, List<t0> list2) {
        if (list == null) {
            a(42);
            throw null;
        }
        if (list2 == null) {
            a(43);
            throw null;
        }
        if (list.isEmpty()) {
            kotlin.reflect.jvm.internal.impl.types.checker.a aVar = (kotlin.reflect.jvm.internal.impl.types.checker.a) new kotlin.reflect.jvm.internal.impl.resolve.h(null, this.b, this.f15483a).z0(true, true);
            if (aVar != null) {
                return aVar;
            }
            a(44);
            throw null;
        }
        HashMap map = new HashMap();
        for (int i = 0; i < list.size(); i++) {
            map.put(list.get(i).i(), list2.get(i).i());
        }
        kotlin.reflect.jvm.internal.impl.types.checker.a aVar2 = (kotlin.reflect.jvm.internal.impl.types.checker.a) new kotlin.reflect.jvm.internal.impl.resolve.h(map, this.b, this.f15483a).z0(true, true);
        if (aVar2 != null) {
            return aVar2;
        }
        a(45);
        throw null;
    }

    public static OverridingUtil n(kotlin.reflect.jvm.internal.impl.types.checker.g gVar) {
        if (gVar != null) {
            return new OverridingUtil(f15482e, gVar);
        }
        a(1);
        throw null;
    }

    private static Modality o(Collection<CallableMemberDescriptor> collection, kotlin.reflect.jvm.internal.impl.descriptors.d dVar) {
        if (collection == null) {
            a(88);
            throw null;
        }
        if (dVar == null) {
            a(89);
            throw null;
        }
        boolean z = false;
        boolean z2 = false;
        boolean z3 = false;
        for (CallableMemberDescriptor callableMemberDescriptor : collection) {
            int i = h.c[callableMemberDescriptor.q().ordinal()];
            if (i == 1) {
                Modality modality = Modality.FINAL;
                if (modality != null) {
                    return modality;
                }
                a(90);
                throw null;
            }
            if (i == 2) {
                throw new IllegalStateException("Member cannot have SEALED modality: " + callableMemberDescriptor);
            }
            if (i == 3) {
                z2 = true;
            } else if (i == 4) {
                z3 = true;
            }
        }
        if (dVar.i0() && dVar.q() != Modality.ABSTRACT && dVar.q() != Modality.SEALED) {
            z = true;
        }
        if (z2 && !z3) {
            Modality modality2 = Modality.OPEN;
            if (modality2 != null) {
                return modality2;
            }
            a(91);
            throw null;
        }
        if (z2 || !z3) {
            HashSet hashSet = new HashSet();
            Iterator<CallableMemberDescriptor> it = collection.iterator();
            while (it.hasNext()) {
                hashSet.addAll(A(it.next()));
            }
            return z(s(hashSet), z, dVar.q());
        }
        Modality modalityQ = z ? dVar.q() : Modality.ABSTRACT;
        if (modalityQ != null) {
            return modalityQ;
        }
        a(92);
        throw null;
    }

    private Collection<CallableMemberDescriptor> p(CallableMemberDescriptor callableMemberDescriptor, Collection<? extends CallableMemberDescriptor> collection, kotlin.reflect.jvm.internal.impl.descriptors.d dVar, kotlin.reflect.jvm.internal.impl.resolve.g gVar) {
        if (callableMemberDescriptor == null) {
            a(59);
            throw null;
        }
        if (collection == null) {
            a(60);
            throw null;
        }
        if (dVar == null) {
            a(61);
            throw null;
        }
        if (gVar == null) {
            a(62);
            throw null;
        }
        ArrayList arrayList = new ArrayList(collection.size());
        kotlin.reflect.jvm.internal.impl.utils.e eVarA = kotlin.reflect.jvm.internal.impl.utils.e.a();
        for (CallableMemberDescriptor callableMemberDescriptor2 : collection) {
            OverrideCompatibilityInfo.Result resultC = E(callableMemberDescriptor2, callableMemberDescriptor, dVar).c();
            boolean zJ = J(callableMemberDescriptor, callableMemberDescriptor2);
            int i = h.b[resultC.ordinal()];
            if (i == 1) {
                if (zJ) {
                    eVarA.add(callableMemberDescriptor2);
                }
                arrayList.add(callableMemberDescriptor2);
            } else if (i == 2) {
                if (zJ) {
                    gVar.c(callableMemberDescriptor2, callableMemberDescriptor);
                }
                arrayList.add(callableMemberDescriptor2);
            }
        }
        gVar.d(callableMemberDescriptor, eVarA);
        return arrayList;
    }

    public static <H> Collection<H> q(H h2, Collection<H> collection, Function1<H, kotlin.reflect.jvm.internal.impl.descriptors.a> function1, Function1<H, v> function2) {
        if (h2 == null) {
            a(99);
            throw null;
        }
        if (collection == null) {
            a(100);
            throw null;
        }
        if (function1 == null) {
            a(101);
            throw null;
        }
        if (function2 == null) {
            a(102);
            throw null;
        }
        ArrayList arrayList = new ArrayList();
        arrayList.add(h2);
        kotlin.reflect.jvm.internal.impl.descriptors.a aVarInvoke = function1.invoke(h2);
        Iterator<H> it = collection.iterator();
        while (it.hasNext()) {
            H next = it.next();
            kotlin.reflect.jvm.internal.impl.descriptors.a aVarInvoke2 = function1.invoke(next);
            if (h2 == next) {
                it.remove();
            } else {
                OverrideCompatibilityInfo.Result resultY = y(aVarInvoke, aVarInvoke2);
                if (resultY == OverrideCompatibilityInfo.Result.OVERRIDABLE) {
                    arrayList.add(next);
                    it.remove();
                } else if (resultY == OverrideCompatibilityInfo.Result.CONFLICT) {
                    function2.invoke(next);
                    it.remove();
                }
            }
        }
        return arrayList;
    }

    private static Collection<CallableMemberDescriptor> r(CallableMemberDescriptor callableMemberDescriptor, Queue<CallableMemberDescriptor> queue, kotlin.reflect.jvm.internal.impl.resolve.g gVar) {
        if (callableMemberDescriptor == null) {
            a(104);
            throw null;
        }
        if (queue == null) {
            a(105);
            throw null;
        }
        if (gVar != null) {
            return q(callableMemberDescriptor, queue, new f(), new g(gVar, callableMemberDescriptor));
        }
        a(106);
        throw null;
    }

    public static <D extends kotlin.reflect.jvm.internal.impl.descriptors.a> Set<D> s(Set<D> set) {
        if (set != null) {
            return t(set, !set.isEmpty() && DescriptorUtilsKt.q(DescriptorUtilsKt.l(set.iterator().next())), null, new b());
        }
        a(6);
        throw null;
    }

    public static <D> Set<D> t(Set<D> set, boolean z, Function0<?> function0, Function2<? super D, ? super D, Pair<kotlin.reflect.jvm.internal.impl.descriptors.a, kotlin.reflect.jvm.internal.impl.descriptors.a>> function2) {
        if (set == null) {
            a(7);
            throw null;
        }
        if (function2 == null) {
            a(8);
            throw null;
        }
        if (set.size() <= 1) {
            if (set != null) {
                return set;
            }
            a(9);
            throw null;
        }
        LinkedHashSet linkedHashSet = new LinkedHashSet();
        for (Object obj : set) {
            if (function0 != null) {
                function0.invoke();
            }
            Iterator it = linkedHashSet.iterator();
            while (true) {
                if (!it.hasNext()) {
                    linkedHashSet.add(obj);
                    break;
                }
                Pair<kotlin.reflect.jvm.internal.impl.descriptors.a, kotlin.reflect.jvm.internal.impl.descriptors.a> pairInvoke = function2.invoke(obj, (Object) it.next());
                kotlin.reflect.jvm.internal.impl.descriptors.a aVarComponent1 = pairInvoke.component1();
                kotlin.reflect.jvm.internal.impl.descriptors.a aVarComponent2 = pairInvoke.component2();
                if (!K(aVarComponent1, aVarComponent2, z, true)) {
                    if (K(aVarComponent2, aVarComponent1, z, true)) {
                        break;
                    }
                } else {
                    it.remove();
                }
            }
        }
        return linkedHashSet;
    }

    private static Collection<CallableMemberDescriptor> u(kotlin.reflect.jvm.internal.impl.descriptors.d dVar, Collection<CallableMemberDescriptor> collection) {
        if (dVar == null) {
            a(96);
            throw null;
        }
        if (collection == null) {
            a(97);
            throw null;
        }
        List listY = CollectionsKt___CollectionsKt.Y(collection, new e(dVar));
        if (listY != null) {
            return listY;
        }
        a(98);
        throw null;
    }

    public static s v(Collection<? extends CallableMemberDescriptor> collection) {
        s sVar;
        if (collection == null) {
            a(109);
            throw null;
        }
        if (collection.isEmpty()) {
            return r.k;
        }
        Iterator<? extends CallableMemberDescriptor> it = collection.iterator();
        loop0: while (true) {
            sVar = null;
            while (true) {
                if (!it.hasNext()) {
                    break loop0;
                }
                s visibility = it.next().getVisibility();
                if (sVar != null) {
                    Integer numD = r.d(visibility, sVar);
                    if (numD == null) {
                        break;
                    }
                    if (numD.intValue() > 0) {
                    }
                }
                sVar = visibility;
            }
        }
        if (sVar == null) {
            return null;
        }
        Iterator<? extends CallableMemberDescriptor> it2 = collection.iterator();
        while (it2.hasNext()) {
            Integer numD2 = r.d(sVar, it2.next().getVisibility());
            if (numD2 == null || numD2.intValue() < 0) {
                return null;
            }
        }
        return sVar;
    }

    public static OverrideCompatibilityInfo x(kotlin.reflect.jvm.internal.impl.descriptors.a aVar, kotlin.reflect.jvm.internal.impl.descriptors.a aVar2) {
        boolean z;
        if (aVar == null) {
            a(38);
            throw null;
        }
        if (aVar2 == null) {
            a(39);
            throw null;
        }
        boolean z2 = aVar instanceof u;
        if ((z2 && !(aVar2 instanceof u)) || (((z = aVar instanceof j0)) && !(aVar2 instanceof j0))) {
            return OverrideCompatibilityInfo.d("Member kind mismatch");
        }
        if (!z2 && !z) {
            throw new IllegalArgumentException("This type of CallableDescriptor cannot be checked for overridability: " + aVar);
        }
        if (!aVar.getName().equals(aVar2.getName())) {
            return OverrideCompatibilityInfo.d("Name mismatch");
        }
        OverrideCompatibilityInfo overrideCompatibilityInfoE = e(aVar, aVar2);
        if (overrideCompatibilityInfoE != null) {
            return overrideCompatibilityInfoE;
        }
        return null;
    }

    public static OverrideCompatibilityInfo.Result y(kotlin.reflect.jvm.internal.impl.descriptors.a aVar, kotlin.reflect.jvm.internal.impl.descriptors.a aVar2) {
        OverridingUtil overridingUtil = f15481d;
        OverrideCompatibilityInfo.Result resultC = overridingUtil.E(aVar2, aVar, null).c();
        OverrideCompatibilityInfo.Result resultC2 = overridingUtil.E(aVar, aVar2, null).c();
        OverrideCompatibilityInfo.Result result = OverrideCompatibilityInfo.Result.OVERRIDABLE;
        if (resultC == result && resultC2 == result) {
            return result;
        }
        OverrideCompatibilityInfo.Result result2 = OverrideCompatibilityInfo.Result.CONFLICT;
        return (resultC == result2 || resultC2 == result2) ? result2 : OverrideCompatibilityInfo.Result.INCOMPATIBLE;
    }

    private static Modality z(Collection<CallableMemberDescriptor> collection, boolean z, Modality modality) {
        if (collection == null) {
            a(93);
            throw null;
        }
        if (modality == null) {
            a(94);
            throw null;
        }
        Modality modality2 = Modality.ABSTRACT;
        for (CallableMemberDescriptor callableMemberDescriptor : collection) {
            Modality modalityQ = (z && callableMemberDescriptor.q() == Modality.ABSTRACT) ? modality : callableMemberDescriptor.q();
            if (modalityQ.compareTo(modality2) < 0) {
                modality2 = modalityQ;
            }
        }
        if (modality2 != null) {
            return modality2;
        }
        a(95);
        throw null;
    }

    public OverrideCompatibilityInfo E(kotlin.reflect.jvm.internal.impl.descriptors.a aVar, kotlin.reflect.jvm.internal.impl.descriptors.a aVar2, kotlin.reflect.jvm.internal.impl.descriptors.d dVar) {
        if (aVar == null) {
            a(17);
            throw null;
        }
        if (aVar2 == null) {
            a(18);
            throw null;
        }
        OverrideCompatibilityInfo overrideCompatibilityInfoF = F(aVar, aVar2, dVar, false);
        if (overrideCompatibilityInfoF != null) {
            return overrideCompatibilityInfoF;
        }
        a(19);
        throw null;
    }

    public OverrideCompatibilityInfo F(kotlin.reflect.jvm.internal.impl.descriptors.a aVar, kotlin.reflect.jvm.internal.impl.descriptors.a aVar2, kotlin.reflect.jvm.internal.impl.descriptors.d dVar, boolean z) {
        if (aVar == null) {
            a(20);
            throw null;
        }
        if (aVar2 == null) {
            a(21);
            throw null;
        }
        OverrideCompatibilityInfo overrideCompatibilityInfoG = G(aVar, aVar2, z);
        boolean z2 = overrideCompatibilityInfoG.c() == OverrideCompatibilityInfo.Result.OVERRIDABLE;
        for (ExternalOverridabilityCondition externalOverridabilityCondition : c) {
            if (externalOverridabilityCondition.a() != ExternalOverridabilityCondition.Contract.CONFLICTS_ONLY && (!z2 || externalOverridabilityCondition.a() != ExternalOverridabilityCondition.Contract.SUCCESS_ONLY)) {
                int i = h.f15488a[externalOverridabilityCondition.b(aVar, aVar2, dVar).ordinal()];
                if (i == 1) {
                    z2 = true;
                } else {
                    if (i == 2) {
                        OverrideCompatibilityInfo overrideCompatibilityInfoB = OverrideCompatibilityInfo.b("External condition failed");
                        if (overrideCompatibilityInfoB != null) {
                            return overrideCompatibilityInfoB;
                        }
                        a(22);
                        throw null;
                    }
                    if (i == 3) {
                        OverrideCompatibilityInfo overrideCompatibilityInfoD = OverrideCompatibilityInfo.d("External condition");
                        if (overrideCompatibilityInfoD != null) {
                            return overrideCompatibilityInfoD;
                        }
                        a(23);
                        throw null;
                    }
                }
            }
        }
        if (!z2) {
            if (overrideCompatibilityInfoG != null) {
                return overrideCompatibilityInfoG;
            }
            a(24);
            throw null;
        }
        for (ExternalOverridabilityCondition externalOverridabilityCondition2 : c) {
            if (externalOverridabilityCondition2.a() == ExternalOverridabilityCondition.Contract.CONFLICTS_ONLY) {
                int i2 = h.f15488a[externalOverridabilityCondition2.b(aVar, aVar2, dVar).ordinal()];
                if (i2 == 1) {
                    throw new IllegalStateException("Contract violation in " + externalOverridabilityCondition2.getClass().getName() + " condition. It's not supposed to end with success");
                }
                if (i2 == 2) {
                    OverrideCompatibilityInfo overrideCompatibilityInfoB2 = OverrideCompatibilityInfo.b("External condition failed");
                    if (overrideCompatibilityInfoB2 != null) {
                        return overrideCompatibilityInfoB2;
                    }
                    a(25);
                    throw null;
                }
                if (i2 == 3) {
                    OverrideCompatibilityInfo overrideCompatibilityInfoD2 = OverrideCompatibilityInfo.d("External condition");
                    if (overrideCompatibilityInfoD2 != null) {
                        return overrideCompatibilityInfoD2;
                    }
                    a(26);
                    throw null;
                }
            }
        }
        OverrideCompatibilityInfo overrideCompatibilityInfoE = OverrideCompatibilityInfo.e();
        if (overrideCompatibilityInfoE != null) {
            return overrideCompatibilityInfoE;
        }
        a(27);
        throw null;
    }

    public OverrideCompatibilityInfo G(kotlin.reflect.jvm.internal.impl.descriptors.a aVar, kotlin.reflect.jvm.internal.impl.descriptors.a aVar2, boolean z) {
        if (aVar == null) {
            a(28);
            throw null;
        }
        if (aVar2 == null) {
            a(29);
            throw null;
        }
        OverrideCompatibilityInfo overrideCompatibilityInfoX = x(aVar, aVar2);
        if (overrideCompatibilityInfoX != null) {
            if (overrideCompatibilityInfoX != null) {
                return overrideCompatibilityInfoX;
            }
            a(30);
            throw null;
        }
        List<a0> listG = g(aVar);
        List<a0> listG2 = g(aVar2);
        List<t0> typeParameters = aVar.getTypeParameters();
        List<t0> typeParameters2 = aVar2.getTypeParameters();
        int i = 0;
        if (typeParameters.size() != typeParameters2.size()) {
            while (i < listG.size()) {
                if (!kotlin.reflect.jvm.internal.impl.types.checker.f.f15664a.b(listG.get(i), listG2.get(i))) {
                    OverrideCompatibilityInfo overrideCompatibilityInfoD = OverrideCompatibilityInfo.d("Type parameter number mismatch");
                    if (overrideCompatibilityInfoD != null) {
                        return overrideCompatibilityInfoD;
                    }
                    a(31);
                    throw null;
                }
                i++;
            }
            OverrideCompatibilityInfo overrideCompatibilityInfoB = OverrideCompatibilityInfo.b("Type parameter number mismatch");
            if (overrideCompatibilityInfoB != null) {
                return overrideCompatibilityInfoB;
            }
            a(32);
            throw null;
        }
        Pair<kotlin.reflect.jvm.internal.impl.types.checker.l, kotlin.reflect.jvm.internal.impl.types.checker.a> pairL = l(typeParameters, typeParameters2);
        for (int i2 = 0; i2 < typeParameters.size(); i2++) {
            if (!c(typeParameters.get(i2), typeParameters2.get(i2), pairL)) {
                OverrideCompatibilityInfo overrideCompatibilityInfoD2 = OverrideCompatibilityInfo.d("Type parameter bounds mismatch");
                if (overrideCompatibilityInfoD2 != null) {
                    return overrideCompatibilityInfoD2;
                }
                a(33);
                throw null;
            }
        }
        for (int i3 = 0; i3 < listG.size(); i3++) {
            if (!d(listG.get(i3), listG2.get(i3), pairL)) {
                OverrideCompatibilityInfo overrideCompatibilityInfoD3 = OverrideCompatibilityInfo.d("Value parameter type mismatch");
                if (overrideCompatibilityInfoD3 != null) {
                    return overrideCompatibilityInfoD3;
                }
                a(34);
                throw null;
            }
        }
        if ((aVar instanceof u) && (aVar2 instanceof u) && ((u) aVar).isSuspend() != ((u) aVar2).isSuspend()) {
            OverrideCompatibilityInfo overrideCompatibilityInfoB2 = OverrideCompatibilityInfo.b("Incompatible suspendability");
            if (overrideCompatibilityInfoB2 != null) {
                return overrideCompatibilityInfoB2;
            }
            a(35);
            throw null;
        }
        if (z) {
            a0 returnType = aVar.getReturnType();
            a0 returnType2 = aVar2.getReturnType();
            if (returnType != null && returnType2 != null) {
                if (b0.a(returnType2) && b0.a(returnType)) {
                    i = 1;
                }
                if (i == 0 && !pairL.getFirst().g(pairL.getSecond(), returnType2.L0(), returnType.L0())) {
                    OverrideCompatibilityInfo overrideCompatibilityInfoB3 = OverrideCompatibilityInfo.b("Return type mismatch");
                    if (overrideCompatibilityInfoB3 != null) {
                        return overrideCompatibilityInfoB3;
                    }
                    a(36);
                    throw null;
                }
            }
        }
        OverrideCompatibilityInfo overrideCompatibilityInfoE = OverrideCompatibilityInfo.e();
        if (overrideCompatibilityInfoE != null) {
            return overrideCompatibilityInfoE;
        }
        a(37);
        throw null;
    }

    public void w(kotlin.reflect.jvm.internal.impl.name.f fVar, Collection<? extends CallableMemberDescriptor> collection, Collection<? extends CallableMemberDescriptor> collection2, kotlin.reflect.jvm.internal.impl.descriptors.d dVar, kotlin.reflect.jvm.internal.impl.resolve.g gVar) {
        if (fVar == null) {
            a(52);
            throw null;
        }
        if (collection == null) {
            a(53);
            throw null;
        }
        if (collection2 == null) {
            a(54);
            throw null;
        }
        if (dVar == null) {
            a(55);
            throw null;
        }
        if (gVar == null) {
            a(56);
            throw null;
        }
        LinkedHashSet linkedHashSet = new LinkedHashSet(collection);
        Iterator<? extends CallableMemberDescriptor> it = collection2.iterator();
        while (it.hasNext()) {
            linkedHashSet.removeAll(p(it.next(), collection, dVar, gVar));
        }
        k(dVar, linkedHashSet, gVar);
    }
}
