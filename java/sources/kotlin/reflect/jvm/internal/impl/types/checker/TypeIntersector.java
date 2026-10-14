package kotlin.reflect.jvm.internal.impl.types.checker;

import cn.mucang.jiakaoyi.uilib.cost.entity.ConsumeRecord;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Iterator;
import java.util.LinkedHashSet;
import java.util.List;
import java.util.Set;
import kotlin.collections.CollectionsKt___CollectionsKt;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function2;
import kotlin.reflect.jvm.internal.impl.resolve.constants.IntegerLiteralTypeConstructor;
import kotlin.reflect.jvm.internal.impl.types.IntersectionTypeConstructor;
import kotlin.reflect.jvm.internal.impl.types.a0;
import kotlin.reflect.jvm.internal.impl.types.c1;
import kotlin.reflect.jvm.internal.impl.types.f0;
import kotlin.reflect.jvm.internal.impl.types.i0;
import kotlin.reflect.jvm.internal.impl.types.l0;
import kotlin.reflect.jvm.internal.impl.types.y;

/* JADX INFO: loaded from: classes6.dex */
public final class TypeIntersector {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final TypeIntersector f15658a = new TypeIntersector();

    /* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
    /* JADX WARN: Unknown enum class pattern. Please report as an issue! */
    private static final class ResultNullability {
        public static final ResultNullability START = new START(ConsumeRecord.Start, 0);
        public static final ResultNullability ACCEPT_NULL = new ACCEPT_NULL("ACCEPT_NULL", 1);
        public static final ResultNullability UNKNOWN = new UNKNOWN("UNKNOWN", 2);
        public static final ResultNullability NOT_NULL = new NOT_NULL("NOT_NULL", 3);
        private static final /* synthetic */ ResultNullability[] $VALUES = $values();

        static final class ACCEPT_NULL extends ResultNullability {
            ACCEPT_NULL(String str, int i) {
                super(str, i, null);
            }

            @Override // kotlin.reflect.jvm.internal.impl.types.checker.TypeIntersector.ResultNullability
            public ResultNullability combine(c1 nextType) {
                kotlin.jvm.internal.r.e(nextType, "nextType");
                return getResultNullability(nextType);
            }
        }

        static final class NOT_NULL extends ResultNullability {
            NOT_NULL(String str, int i) {
                super(str, i, null);
            }

            @Override // kotlin.reflect.jvm.internal.impl.types.checker.TypeIntersector.ResultNullability
            public NOT_NULL combine(c1 nextType) {
                kotlin.jvm.internal.r.e(nextType, "nextType");
                return this;
            }
        }

        static final class START extends ResultNullability {
            START(String str, int i) {
                super(str, i, null);
            }

            @Override // kotlin.reflect.jvm.internal.impl.types.checker.TypeIntersector.ResultNullability
            public ResultNullability combine(c1 nextType) {
                kotlin.jvm.internal.r.e(nextType, "nextType");
                return getResultNullability(nextType);
            }
        }

        static final class UNKNOWN extends ResultNullability {
            UNKNOWN(String str, int i) {
                super(str, i, null);
            }

            @Override // kotlin.reflect.jvm.internal.impl.types.checker.TypeIntersector.ResultNullability
            public ResultNullability combine(c1 nextType) {
                kotlin.jvm.internal.r.e(nextType, "nextType");
                ResultNullability resultNullability = getResultNullability(nextType);
                return resultNullability == ResultNullability.ACCEPT_NULL ? this : resultNullability;
            }
        }

        private static final /* synthetic */ ResultNullability[] $values() {
            return new ResultNullability[]{START, ACCEPT_NULL, UNKNOWN, NOT_NULL};
        }

        private ResultNullability(String str, int i) {
            super(str, i);
        }

        public /* synthetic */ ResultNullability(String str, int i, kotlin.jvm.internal.o oVar) {
            this(str, i);
        }

        public static ResultNullability valueOf(String str) {
            return (ResultNullability) Enum.valueOf(ResultNullability.class, str);
        }

        public static ResultNullability[] values() {
            return (ResultNullability[]) $VALUES.clone();
        }

        public abstract ResultNullability combine(c1 c1Var);

        protected final ResultNullability getResultNullability(c1 c1Var) {
            kotlin.jvm.internal.r.e(c1Var, "<this>");
            if (c1Var.J0()) {
                return ACCEPT_NULL;
            }
            if ((c1Var instanceof kotlin.reflect.jvm.internal.impl.types.k) && (((kotlin.reflect.jvm.internal.impl.types.k) c1Var).U0() instanceof l0)) {
                return NOT_NULL;
            }
            if (c1Var instanceof l0) {
                return UNKNOWN;
            }
            return n.f15674a.a(c1Var) ? NOT_NULL : UNKNOWN;
        }
    }

    private TypeIntersector() {
    }

    /* JADX WARN: Code duplicated, block: B:16:0x004e  */
    private final Collection<f0> b(Collection<? extends f0> collection, Function2<? super f0, ? super f0, Boolean> function2) {
        boolean z;
        ArrayList arrayList = new ArrayList(collection);
        Iterator it = arrayList.iterator();
        kotlin.jvm.internal.r.d(it, "filteredTypes.iterator()");
        while (it.hasNext()) {
            f0 upper = (f0) it.next();
            boolean z2 = true;
            if (!arrayList.isEmpty()) {
                Iterator it2 = arrayList.iterator();
                do {
                    if (!it2.hasNext()) {
                        z2 = false;
                        break;
                    }
                    f0 lower = (f0) it2.next();
                    if (lower != upper) {
                        kotlin.jvm.internal.r.d(lower, "lower");
                        kotlin.jvm.internal.r.d(upper, "upper");
                        if (function2.invoke(lower, upper).booleanValue()) {
                            z = true;
                        } else {
                            z = false;
                        }
                    } else {
                        z = false;
                    }
                } while (!z);
            } else {
                z2 = false;
                break;
            }
            if (z2) {
                it.remove();
            }
        }
        return arrayList;
    }

    private final f0 d(final Set<? extends f0> set) {
        if (set.size() == 1) {
            return (f0) kotlin.collections.s.B0(set);
        }
        new Function0<String>() { // from class: kotlin.reflect.jvm.internal.impl.types.checker.TypeIntersector$intersectTypesWithoutIntersectionType$errorMessage$1
            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            /* JADX WARN: Multi-variable type inference failed */
            {
                super(0);
            }

            @Override // kotlin.jvm.functions.Function0
            public final String invoke() {
                return kotlin.jvm.internal.r.m("This collections cannot be empty! input types: ", CollectionsKt___CollectionsKt.m0(set, null, null, null, 0, null, null, 63, null));
            }
        };
        Collection<f0> collectionB = b(set, new TypeIntersector$intersectTypesWithoutIntersectionType$filteredEqualTypes$1(this));
        collectionB.isEmpty();
        f0 f0VarB = IntegerLiteralTypeConstructor.f15494f.b(collectionB);
        if (f0VarB != null) {
            return f0VarB;
        }
        Collection<f0> collectionB2 = b(collectionB, new TypeIntersector$intersectTypesWithoutIntersectionType$filteredSuperAndEqualTypes$1(k.b.a()));
        collectionB2.isEmpty();
        return collectionB2.size() < 2 ? (f0) kotlin.collections.s.B0(collectionB2) : new IntersectionTypeConstructor(set).f();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final boolean e(a0 a0Var, a0 a0Var2) {
        l lVarA = k.b.a();
        return lVarA.d(a0Var, a0Var2) && !lVarA.d(a0Var2, a0Var);
    }

    public final f0 c(List<? extends f0> types) {
        kotlin.jvm.internal.r.e(types, "types");
        types.size();
        ArrayList<f0> arrayList = new ArrayList();
        for (f0 f0Var : types) {
            if (f0Var.I0() instanceof IntersectionTypeConstructor) {
                Collection<a0> collectionA = f0Var.I0().a();
                kotlin.jvm.internal.r.d(collectionA, "type.constructor.supertypes");
                ArrayList arrayList2 = new ArrayList(kotlin.collections.v.u(collectionA, 10));
                for (a0 it : collectionA) {
                    kotlin.jvm.internal.r.d(it, "it");
                    f0 f0VarD = y.d(it);
                    if (f0Var.J0()) {
                        f0VarD = f0VarD.M0(true);
                    }
                    arrayList2.add(f0VarD);
                }
                arrayList.addAll(arrayList2);
            } else {
                arrayList.add(f0Var);
            }
        }
        ResultNullability resultNullabilityCombine = ResultNullability.START;
        Iterator it2 = arrayList.iterator();
        while (it2.hasNext()) {
            resultNullabilityCombine = resultNullabilityCombine.combine((c1) it2.next());
        }
        LinkedHashSet linkedHashSet = new LinkedHashSet();
        for (f0 f0VarI : arrayList) {
            if (resultNullabilityCombine == ResultNullability.NOT_NULL) {
                if (f0VarI instanceof i) {
                    f0VarI = i0.k((i) f0VarI);
                }
                f0VarI = i0.i(f0VarI, false, 1, null);
            }
            linkedHashSet.add(f0VarI);
        }
        return d(linkedHashSet);
    }
}
