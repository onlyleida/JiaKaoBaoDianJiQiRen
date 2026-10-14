package kotlin.reflect.jvm.internal.impl.builtins.functions;

import java.util.ArrayList;
import java.util.Collection;
import java.util.Iterator;
import java.util.List;
import kotlin.NoWhenBranchMatchedException;
import kotlin.collections.CollectionsKt___CollectionsKt;
import kotlin.collections.IntIterator;
import kotlin.collections.t;
import kotlin.collections.u;
import kotlin.collections.v;
import kotlin.jvm.internal.r;
import kotlin.ranges.IntRange;
import kotlin.reflect.jvm.internal.impl.builtins.h;
import kotlin.reflect.jvm.internal.impl.descriptors.ClassKind;
import kotlin.reflect.jvm.internal.impl.descriptors.FindClassInModuleKt;
import kotlin.reflect.jvm.internal.impl.descriptors.Modality;
import kotlin.reflect.jvm.internal.impl.descriptors.annotations.e;
import kotlin.reflect.jvm.internal.impl.descriptors.b0;
import kotlin.reflect.jvm.internal.impl.descriptors.impl.g0;
import kotlin.reflect.jvm.internal.impl.descriptors.o0;
import kotlin.reflect.jvm.internal.impl.descriptors.r0;
import kotlin.reflect.jvm.internal.impl.descriptors.s;
import kotlin.reflect.jvm.internal.impl.descriptors.t0;
import kotlin.reflect.jvm.internal.impl.descriptors.z;
import kotlin.reflect.jvm.internal.impl.name.f;
import kotlin.reflect.jvm.internal.impl.resolve.scopes.MemberScope;
import kotlin.reflect.jvm.internal.impl.storage.m;
import kotlin.reflect.jvm.internal.impl.types.KotlinTypeFactory;
import kotlin.reflect.jvm.internal.impl.types.Variance;
import kotlin.reflect.jvm.internal.impl.types.a0;
import kotlin.reflect.jvm.internal.impl.types.checker.g;
import kotlin.reflect.jvm.internal.impl.types.f0;
import kotlin.reflect.jvm.internal.impl.types.q0;
import kotlin.reflect.jvm.internal.impl.types.u0;

/* JADX INFO: loaded from: classes6.dex */
public final class b extends kotlin.reflect.jvm.internal.impl.descriptors.impl.a {
    private static final kotlin.reflect.jvm.internal.impl.name.b m = new kotlin.reflect.jvm.internal.impl.name.b(h.l, f.g("Function"));
    private static final kotlin.reflect.jvm.internal.impl.name.b n = new kotlin.reflect.jvm.internal.impl.name.b(h.i, f.g("KFunction"));

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private final m f14784f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private final b0 f14785g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private final FunctionClassKind f14786h;
    private final int i;
    private final a j;
    private final c k;
    private final List<t0> l;

    private final class a extends kotlin.reflect.jvm.internal.impl.types.b {

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        final /* synthetic */ b f14787d;

        /* JADX INFO: renamed from: kotlin.reflect.jvm.internal.impl.builtins.functions.b$a$a, reason: collision with other inner class name */
        public /* synthetic */ class C0319a {

            /* JADX INFO: renamed from: a, reason: collision with root package name */
            public static final /* synthetic */ int[] f14788a;

            static {
                int[] iArr = new int[FunctionClassKind.values().length];
                iArr[FunctionClassKind.Function.ordinal()] = 1;
                iArr[FunctionClassKind.KFunction.ordinal()] = 2;
                iArr[FunctionClassKind.SuspendFunction.ordinal()] = 3;
                iArr[FunctionClassKind.KSuspendFunction.ordinal()] = 4;
                f14788a = iArr;
            }
        }

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public a(b this$0) {
            super(this$0.f14784f);
            r.e(this$0, "this$0");
            this.f14787d = this$0;
        }

        @Override // kotlin.reflect.jvm.internal.impl.types.q0
        public boolean d() {
            return true;
        }

        @Override // kotlin.reflect.jvm.internal.impl.types.q0
        public List<t0> getParameters() {
            return this.f14787d.l;
        }

        @Override // kotlin.reflect.jvm.internal.impl.types.AbstractTypeConstructor
        protected Collection<a0> j() {
            List<kotlin.reflect.jvm.internal.impl.name.b> listD;
            int i = C0319a.f14788a[this.f14787d.Q0().ordinal()];
            if (i == 1) {
                listD = t.d(b.m);
            } else if (i == 2) {
                listD = u.m(b.n, new kotlin.reflect.jvm.internal.impl.name.b(h.l, FunctionClassKind.Function.numberedClassName(this.f14787d.M0())));
            } else if (i == 3) {
                listD = t.d(b.m);
            } else {
                if (i != 4) {
                    throw new NoWhenBranchMatchedException();
                }
                listD = u.m(b.n, new kotlin.reflect.jvm.internal.impl.name.b(h.f14800d, FunctionClassKind.SuspendFunction.numberedClassName(this.f14787d.M0())));
            }
            z zVarB = this.f14787d.f14785g.b();
            ArrayList arrayList = new ArrayList(v.u(listD, 10));
            for (kotlin.reflect.jvm.internal.impl.name.b bVar : listD) {
                kotlin.reflect.jvm.internal.impl.descriptors.d dVarA = FindClassInModuleKt.a(zVarB, bVar);
                if (dVarA == null) {
                    throw new IllegalStateException(("Built-in class " + bVar + " not found").toString());
                }
                List listI0 = CollectionsKt___CollectionsKt.I0(getParameters(), dVarA.i().getParameters().size());
                ArrayList arrayList2 = new ArrayList(v.u(listI0, 10));
                Iterator it = listI0.iterator();
                while (it.hasNext()) {
                    arrayList2.add(new u0(((t0) it.next()).n()));
                }
                arrayList.add(KotlinTypeFactory.g(e.O.b(), dVarA, arrayList2));
            }
            return CollectionsKt___CollectionsKt.M0(arrayList);
        }

        @Override // kotlin.reflect.jvm.internal.impl.types.AbstractTypeConstructor
        protected r0 o() {
            return r0.a.f14979a;
        }

        public String toString() {
            return u().toString();
        }

        @Override // kotlin.reflect.jvm.internal.impl.types.b
        /* JADX INFO: renamed from: v, reason: merged with bridge method [inline-methods] */
        public b u() {
            return this.f14787d;
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public b(m storageManager, b0 containingDeclaration, FunctionClassKind functionKind, int i) {
        super(storageManager, functionKind.numberedClassName(i));
        r.e(storageManager, "storageManager");
        r.e(containingDeclaration, "containingDeclaration");
        r.e(functionKind, "functionKind");
        this.f14784f = storageManager;
        this.f14785g = containingDeclaration;
        this.f14786h = functionKind;
        this.i = i;
        this.j = new a(this);
        this.k = new c(storageManager, this);
        ArrayList arrayList = new ArrayList();
        IntRange intRange = new IntRange(1, i);
        ArrayList arrayList2 = new ArrayList(v.u(intRange, 10));
        Iterator<Integer> it = intRange.iterator();
        while (it.hasNext()) {
            G0(arrayList, this, Variance.IN_VARIANCE, r.m("P", Integer.valueOf(((IntIterator) it).e())));
            arrayList2.add(kotlin.v.f15822a);
        }
        G0(arrayList, this, Variance.OUT_VARIANCE, "R");
        this.l = CollectionsKt___CollectionsKt.M0(arrayList);
    }

    private static final void G0(ArrayList<t0> arrayList, b bVar, Variance variance, String str) {
        arrayList.add(g0.N0(bVar, e.O.b(), false, variance, f.g(str), arrayList.size(), bVar.f14784f));
    }

    @Override // kotlin.reflect.jvm.internal.impl.descriptors.d
    public /* bridge */ /* synthetic */ kotlin.reflect.jvm.internal.impl.descriptors.c C() {
        return (kotlin.reflect.jvm.internal.impl.descriptors.c) U0();
    }

    @Override // kotlin.reflect.jvm.internal.impl.descriptors.d
    public boolean D0() {
        return false;
    }

    public final int M0() {
        return this.i;
    }

    public Void N0() {
        return null;
    }

    @Override // kotlin.reflect.jvm.internal.impl.descriptors.d
    /* JADX INFO: renamed from: O0, reason: merged with bridge method [inline-methods] */
    public List<kotlin.reflect.jvm.internal.impl.descriptors.c> j() {
        return u.j();
    }

    @Override // kotlin.reflect.jvm.internal.impl.descriptors.d, kotlin.reflect.jvm.internal.impl.descriptors.l, kotlin.reflect.jvm.internal.impl.descriptors.k
    /* JADX INFO: renamed from: P0, reason: merged with bridge method [inline-methods] */
    public b0 b() {
        return this.f14785g;
    }

    public final FunctionClassKind Q0() {
        return this.f14786h;
    }

    @Override // kotlin.reflect.jvm.internal.impl.descriptors.d
    /* JADX INFO: renamed from: R0, reason: merged with bridge method [inline-methods] */
    public List<kotlin.reflect.jvm.internal.impl.descriptors.d> x() {
        return u.j();
    }

    @Override // kotlin.reflect.jvm.internal.impl.descriptors.d
    /* JADX INFO: renamed from: S0, reason: merged with bridge method [inline-methods] */
    public MemberScope.a k0() {
        return MemberScope.a.b;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // kotlin.reflect.jvm.internal.impl.descriptors.impl.r
    /* JADX INFO: renamed from: T0, reason: merged with bridge method [inline-methods] */
    public c e0(g kotlinTypeRefiner) {
        r.e(kotlinTypeRefiner, "kotlinTypeRefiner");
        return this.k;
    }

    public Void U0() {
        return null;
    }

    @Override // kotlin.reflect.jvm.internal.impl.descriptors.w
    public boolean V() {
        return false;
    }

    @Override // kotlin.reflect.jvm.internal.impl.descriptors.d
    public boolean Y() {
        return false;
    }

    @Override // kotlin.reflect.jvm.internal.impl.descriptors.d
    public boolean b0() {
        return false;
    }

    @Override // kotlin.reflect.jvm.internal.impl.descriptors.d
    public ClassKind g() {
        return ClassKind.INTERFACE;
    }

    @Override // kotlin.reflect.jvm.internal.impl.descriptors.d
    public boolean g0() {
        return false;
    }

    @Override // kotlin.reflect.jvm.internal.impl.descriptors.annotations.a
    public e getAnnotations() {
        return e.O.b();
    }

    @Override // kotlin.reflect.jvm.internal.impl.descriptors.d, kotlin.reflect.jvm.internal.impl.descriptors.o, kotlin.reflect.jvm.internal.impl.descriptors.w
    public s getVisibility() {
        s PUBLIC = kotlin.reflect.jvm.internal.impl.descriptors.r.f14975e;
        r.d(PUBLIC, "PUBLIC");
        return PUBLIC;
    }

    @Override // kotlin.reflect.jvm.internal.impl.descriptors.f
    public q0 i() {
        return this.j;
    }

    @Override // kotlin.reflect.jvm.internal.impl.descriptors.w
    public boolean i0() {
        return false;
    }

    @Override // kotlin.reflect.jvm.internal.impl.descriptors.w
    public boolean isExternal() {
        return false;
    }

    @Override // kotlin.reflect.jvm.internal.impl.descriptors.d
    public boolean isInline() {
        return false;
    }

    @Override // kotlin.reflect.jvm.internal.impl.descriptors.d
    public /* bridge */ /* synthetic */ kotlin.reflect.jvm.internal.impl.descriptors.d l0() {
        return (kotlin.reflect.jvm.internal.impl.descriptors.d) N0();
    }

    @Override // kotlin.reflect.jvm.internal.impl.descriptors.n
    public o0 o() {
        o0 NO_SOURCE = o0.f14970a;
        r.d(NO_SOURCE, "NO_SOURCE");
        return NO_SOURCE;
    }

    @Override // kotlin.reflect.jvm.internal.impl.descriptors.d, kotlin.reflect.jvm.internal.impl.descriptors.g
    public List<t0> p() {
        return this.l;
    }

    @Override // kotlin.reflect.jvm.internal.impl.descriptors.d, kotlin.reflect.jvm.internal.impl.descriptors.w
    public Modality q() {
        return Modality.ABSTRACT;
    }

    @Override // kotlin.reflect.jvm.internal.impl.descriptors.d
    public kotlin.reflect.jvm.internal.impl.descriptors.v<f0> t() {
        return null;
    }

    public String toString() {
        String strB = getName().b();
        r.d(strB, "name.asString()");
        return strB;
    }

    @Override // kotlin.reflect.jvm.internal.impl.descriptors.g
    public boolean z() {
        return false;
    }
}
