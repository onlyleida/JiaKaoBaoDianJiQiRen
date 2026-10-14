package kotlin.reflect.jvm.internal.impl.resolve.constants;

import java.util.Collection;
import java.util.Iterator;
import java.util.List;
import java.util.Set;
import kotlin.Lazy;
import kotlin.NoWhenBranchMatchedException;
import kotlin.collections.CollectionsKt___CollectionsKt;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.reflect.jvm.internal.impl.descriptors.t0;
import kotlin.reflect.jvm.internal.impl.descriptors.z;
import kotlin.reflect.jvm.internal.impl.types.KotlinTypeFactory;
import kotlin.reflect.jvm.internal.impl.types.Variance;
import kotlin.reflect.jvm.internal.impl.types.a0;
import kotlin.reflect.jvm.internal.impl.types.f0;
import kotlin.reflect.jvm.internal.impl.types.q0;
import kotlin.reflect.jvm.internal.impl.types.u0;
import kotlin.reflect.jvm.internal.impl.types.w0;

/* JADX INFO: loaded from: classes6.dex */
public final class IntegerLiteralTypeConstructor implements q0 {

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public static final Companion f15494f = new Companion(null);

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final long f15495a;
    private final z b;
    private final Set<a0> c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final f0 f15496d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private final Lazy f15497e;

    public static final class Companion {

        private enum Mode {
            COMMON_SUPER_TYPE,
            INTERSECTION_TYPE
        }

        public /* synthetic */ class a {

            /* JADX INFO: renamed from: a, reason: collision with root package name */
            public static final /* synthetic */ int[] f15498a;

            static {
                int[] iArr = new int[Mode.values().length];
                iArr[Mode.COMMON_SUPER_TYPE.ordinal()] = 1;
                iArr[Mode.INTERSECTION_TYPE.ordinal()] = 2;
                f15498a = iArr;
            }
        }

        private Companion() {
        }

        public /* synthetic */ Companion(kotlin.jvm.internal.o oVar) {
            this();
        }

        private final f0 a(Collection<? extends f0> collection, Mode mode) {
            if (collection.isEmpty()) {
                return null;
            }
            Iterator<T> it = collection.iterator();
            if (!it.hasNext()) {
                throw new UnsupportedOperationException("Empty collection can't be reduced.");
            }
            Object next = it.next();
            while (it.hasNext()) {
                f0 f0Var = (f0) it.next();
                next = IntegerLiteralTypeConstructor.f15494f.e((f0) next, f0Var, mode);
            }
            return (f0) next;
        }

        private final f0 c(IntegerLiteralTypeConstructor integerLiteralTypeConstructor, IntegerLiteralTypeConstructor integerLiteralTypeConstructor2, Mode mode) {
            Set setI0;
            int i = a.f15498a[mode.ordinal()];
            if (i == 1) {
                setI0 = CollectionsKt___CollectionsKt.i0(integerLiteralTypeConstructor.i(), integerLiteralTypeConstructor2.i());
            } else {
                if (i != 2) {
                    throw new NoWhenBranchMatchedException();
                }
                setI0 = CollectionsKt___CollectionsKt.R0(integerLiteralTypeConstructor.i(), integerLiteralTypeConstructor2.i());
            }
            return KotlinTypeFactory.e(kotlin.reflect.jvm.internal.impl.descriptors.annotations.e.O.b(), new IntegerLiteralTypeConstructor(integerLiteralTypeConstructor.f15495a, integerLiteralTypeConstructor.b, setI0, null), false);
        }

        private final f0 d(IntegerLiteralTypeConstructor integerLiteralTypeConstructor, f0 f0Var) {
            if (integerLiteralTypeConstructor.i().contains(f0Var)) {
                return f0Var;
            }
            return null;
        }

        private final f0 e(f0 f0Var, f0 f0Var2, Mode mode) {
            if (f0Var == null || f0Var2 == null) {
                return null;
            }
            q0 q0VarI0 = f0Var.I0();
            q0 q0VarI1 = f0Var2.I0();
            boolean z = q0VarI0 instanceof IntegerLiteralTypeConstructor;
            if (z && (q0VarI1 instanceof IntegerLiteralTypeConstructor)) {
                return c((IntegerLiteralTypeConstructor) q0VarI0, (IntegerLiteralTypeConstructor) q0VarI1, mode);
            }
            if (z) {
                return d((IntegerLiteralTypeConstructor) q0VarI0, f0Var2);
            }
            if (q0VarI1 instanceof IntegerLiteralTypeConstructor) {
                return d((IntegerLiteralTypeConstructor) q0VarI1, f0Var);
            }
            return null;
        }

        public final f0 b(Collection<? extends f0> types) {
            kotlin.jvm.internal.r.e(types, "types");
            return a(types, Mode.INTERSECTION_TYPE);
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    private IntegerLiteralTypeConstructor(long j, z zVar, Set<? extends a0> set) {
        this.f15496d = KotlinTypeFactory.e(kotlin.reflect.jvm.internal.impl.descriptors.annotations.e.O.b(), this, false);
        this.f15497e = kotlin.i.b(new Function0<List<f0>>() { // from class: kotlin.reflect.jvm.internal.impl.resolve.constants.IntegerLiteralTypeConstructor$supertypes$2
            {
                super(0);
            }

            @Override // kotlin.jvm.functions.Function0
            public final List<f0> invoke() {
                f0 f0VarN = this.this$0.k().x().n();
                kotlin.jvm.internal.r.d(f0VarN, "builtIns.comparable.defaultType");
                List<f0> listP = kotlin.collections.u.p(w0.f(f0VarN, kotlin.collections.t.d(new u0(Variance.IN_VARIANCE, this.this$0.f15496d)), null, 2, null));
                if (!this.this$0.l()) {
                    listP.add(this.this$0.k().L());
                }
                return listP;
            }
        });
        this.f15495a = j;
        this.b = zVar;
        this.c = set;
    }

    public /* synthetic */ IntegerLiteralTypeConstructor(long j, z zVar, Set set, kotlin.jvm.internal.o oVar) {
        this(j, zVar, set);
    }

    private final List<a0> j() {
        return (List) this.f15497e.getValue();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final boolean l() {
        Collection<a0> collectionA = r.a(this.b);
        if ((collectionA instanceof Collection) && collectionA.isEmpty()) {
            return true;
        }
        Iterator<T> it = collectionA.iterator();
        while (it.hasNext()) {
            if (!(!i().contains((a0) it.next()))) {
                return false;
            }
        }
        return true;
    }

    private final String m() {
        return '[' + CollectionsKt___CollectionsKt.m0(this.c, ",", null, null, 0, null, new Function1<a0, CharSequence>() { // from class: kotlin.reflect.jvm.internal.impl.resolve.constants.IntegerLiteralTypeConstructor$valueToString$1
            @Override // kotlin.jvm.functions.Function1
            public final CharSequence invoke(a0 it) {
                kotlin.jvm.internal.r.e(it, "it");
                return it.toString();
            }
        }, 30, null) + ']';
    }

    @Override // kotlin.reflect.jvm.internal.impl.types.q0
    public Collection<a0> a() {
        return j();
    }

    @Override // kotlin.reflect.jvm.internal.impl.types.q0
    public q0 b(kotlin.reflect.jvm.internal.impl.types.checker.g kotlinTypeRefiner) {
        kotlin.jvm.internal.r.e(kotlinTypeRefiner, "kotlinTypeRefiner");
        return this;
    }

    @Override // kotlin.reflect.jvm.internal.impl.types.q0
    /* JADX INFO: renamed from: c */
    public kotlin.reflect.jvm.internal.impl.descriptors.f u() {
        return null;
    }

    @Override // kotlin.reflect.jvm.internal.impl.types.q0
    public boolean d() {
        return false;
    }

    @Override // kotlin.reflect.jvm.internal.impl.types.q0
    public List<t0> getParameters() {
        return kotlin.collections.u.j();
    }

    public final Set<a0> i() {
        return this.c;
    }

    @Override // kotlin.reflect.jvm.internal.impl.types.q0
    public kotlin.reflect.jvm.internal.impl.builtins.g k() {
        return this.b.k();
    }

    public String toString() {
        return kotlin.jvm.internal.r.m("IntegerLiteralType", m());
    }
}
