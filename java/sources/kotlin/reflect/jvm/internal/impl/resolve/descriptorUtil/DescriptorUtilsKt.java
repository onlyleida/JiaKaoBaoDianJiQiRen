package kotlin.reflect.jvm.internal.impl.resolve.descriptorUtil;

import java.util.ArrayList;
import java.util.Collection;
import java.util.Iterator;
import java.util.Objects;
import kotlin.collections.s;
import kotlin.collections.t;
import kotlin.collections.u;
import kotlin.collections.v;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Ref$ObjectRef;
import kotlin.jvm.internal.r;
import kotlin.reflect.jvm.internal.impl.descriptors.CallableMemberDescriptor;
import kotlin.reflect.jvm.internal.impl.descriptors.b0;
import kotlin.reflect.jvm.internal.impl.descriptors.i0;
import kotlin.reflect.jvm.internal.impl.descriptors.j0;
import kotlin.reflect.jvm.internal.impl.descriptors.k;
import kotlin.reflect.jvm.internal.impl.descriptors.v0;
import kotlin.reflect.jvm.internal.impl.descriptors.z;
import kotlin.reflect.jvm.internal.impl.name.d;
import kotlin.reflect.jvm.internal.impl.name.f;
import kotlin.reflect.jvm.internal.impl.resolve.constants.g;
import kotlin.reflect.jvm.internal.impl.resolve.scopes.MemberScope;
import kotlin.reflect.jvm.internal.impl.types.a0;
import kotlin.reflect.jvm.internal.impl.types.checker.h;
import kotlin.reflect.jvm.internal.impl.types.checker.o;
import kotlin.sequences.Sequence;
import kotlin.sequences.SequencesKt__SequencesKt;
import kotlin.sequences.SequencesKt___SequencesKt;

/* JADX INFO: loaded from: classes6.dex */
public final class DescriptorUtilsKt {

    static final class a<N> implements kotlin.reflect.jvm.internal.impl.utils.b.c {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public static final a<N> f15504a = new a<>();

        a() {
        }

        @Override // kotlin.reflect.jvm.internal.impl.utils.b.c
        /* JADX INFO: renamed from: b, reason: merged with bridge method [inline-methods] */
        public final Iterable<v0> a(v0 v0Var) {
            Collection<v0> collectionD = v0Var.d();
            ArrayList arrayList = new ArrayList(v.u(collectionD, 10));
            Iterator<T> it = collectionD.iterator();
            while (it.hasNext()) {
                arrayList.add(((v0) it.next()).a());
            }
            return arrayList;
        }
    }

    static final class b<N> implements kotlin.reflect.jvm.internal.impl.utils.b.c {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        final /* synthetic */ boolean f15505a;

        b(boolean z) {
            this.f15505a = z;
        }

        @Override // kotlin.reflect.jvm.internal.impl.utils.b.c
        /* JADX INFO: renamed from: b, reason: merged with bridge method [inline-methods] */
        public final Iterable<CallableMemberDescriptor> a(CallableMemberDescriptor callableMemberDescriptor) {
            if (this.f15505a) {
                callableMemberDescriptor = callableMemberDescriptor == null ? null : callableMemberDescriptor.a();
            }
            Collection<? extends CallableMemberDescriptor> collectionD = callableMemberDescriptor != null ? callableMemberDescriptor.d() : null;
            return collectionD == null ? u.j() : collectionD;
        }
    }

    public static final class c extends kotlin.reflect.jvm.internal.impl.utils.b.AbstractC0361b<CallableMemberDescriptor, CallableMemberDescriptor> {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        final /* synthetic */ Ref$ObjectRef<CallableMemberDescriptor> f15506a;
        final /* synthetic */ Function1<CallableMemberDescriptor, Boolean> b;

        /* JADX WARN: Multi-variable type inference failed */
        c(Ref$ObjectRef<CallableMemberDescriptor> ref$ObjectRef, Function1<? super CallableMemberDescriptor, Boolean> function1) {
            this.f15506a = ref$ObjectRef;
            this.b = function1;
        }

        /* JADX WARN: Multi-variable type inference failed */
        @Override // kotlin.reflect.jvm.internal.impl.utils.b.AbstractC0361b, kotlin.reflect.jvm.internal.impl.utils.b.d
        /* JADX INFO: renamed from: d, reason: merged with bridge method [inline-methods] */
        public void b(CallableMemberDescriptor current) {
            r.e(current, "current");
            if (this.f15506a.element == null && this.b.invoke(current).booleanValue()) {
                this.f15506a.element = current;
            }
        }

        @Override // kotlin.reflect.jvm.internal.impl.utils.b.d
        /* JADX INFO: renamed from: e, reason: merged with bridge method [inline-methods] */
        public boolean c(CallableMemberDescriptor current) {
            r.e(current, "current");
            return this.f15506a.element == null;
        }

        @Override // kotlin.reflect.jvm.internal.impl.utils.b.d
        /* JADX INFO: renamed from: f, reason: merged with bridge method [inline-methods] */
        public CallableMemberDescriptor a() {
            return this.f15506a.element;
        }
    }

    static {
        r.d(f.g("value"), "identifier(\"value\")");
    }

    public static final boolean a(v0 v0Var) {
        r.e(v0Var, "<this>");
        Boolean boolE = kotlin.reflect.jvm.internal.impl.utils.b.e(t.d(v0Var), a.f15504a, DescriptorUtilsKt$declaresOrInheritsDefaultValue$2.INSTANCE);
        r.d(boolE, "ifAny(\n        listOf(th…eclaresDefaultValue\n    )");
        return boolE.booleanValue();
    }

    public static final g<?> b(kotlin.reflect.jvm.internal.impl.descriptors.annotations.c cVar) {
        r.e(cVar, "<this>");
        return (g) s.d0(cVar.a().values());
    }

    public static final CallableMemberDescriptor c(CallableMemberDescriptor callableMemberDescriptor, boolean z, Function1<? super CallableMemberDescriptor, Boolean> predicate) {
        r.e(callableMemberDescriptor, "<this>");
        r.e(predicate, "predicate");
        return (CallableMemberDescriptor) kotlin.reflect.jvm.internal.impl.utils.b.b(t.d(callableMemberDescriptor), new b(z), new c(new Ref$ObjectRef(), predicate));
    }

    public static /* synthetic */ CallableMemberDescriptor d(CallableMemberDescriptor callableMemberDescriptor, boolean z, Function1 function1, int i, Object obj) {
        if ((i & 1) != 0) {
            z = false;
        }
        return c(callableMemberDescriptor, z, function1);
    }

    public static final kotlin.reflect.jvm.internal.impl.name.c e(k kVar) {
        r.e(kVar, "<this>");
        d dVarJ = j(kVar);
        if (!dVarJ.f()) {
            dVarJ = null;
        }
        if (dVarJ == null) {
            return null;
        }
        return dVarJ.l();
    }

    public static final kotlin.reflect.jvm.internal.impl.descriptors.d f(kotlin.reflect.jvm.internal.impl.descriptors.annotations.c cVar) {
        r.e(cVar, "<this>");
        kotlin.reflect.jvm.internal.impl.descriptors.f fVarC = cVar.getType().I0().u();
        if (fVarC instanceof kotlin.reflect.jvm.internal.impl.descriptors.d) {
            return (kotlin.reflect.jvm.internal.impl.descriptors.d) fVarC;
        }
        return null;
    }

    public static final kotlin.reflect.jvm.internal.impl.builtins.g g(k kVar) {
        r.e(kVar, "<this>");
        return l(kVar).k();
    }

    public static final kotlin.reflect.jvm.internal.impl.name.b h(kotlin.reflect.jvm.internal.impl.descriptors.f fVar) {
        k kVarB;
        kotlin.reflect.jvm.internal.impl.name.b bVarH;
        if (fVar == null || (kVarB = fVar.b()) == null) {
            return null;
        }
        if (kVarB instanceof b0) {
            return new kotlin.reflect.jvm.internal.impl.name.b(((b0) kVarB).e(), fVar.getName());
        }
        if (!(kVarB instanceof kotlin.reflect.jvm.internal.impl.descriptors.g) || (bVarH = h((kotlin.reflect.jvm.internal.impl.descriptors.f) kVarB)) == null) {
            return null;
        }
        return bVarH.d(fVar.getName());
    }

    public static final kotlin.reflect.jvm.internal.impl.name.c i(k kVar) {
        r.e(kVar, "<this>");
        kotlin.reflect.jvm.internal.impl.name.c cVarN = kotlin.reflect.jvm.internal.impl.resolve.c.n(kVar);
        r.d(cVarN, "getFqNameSafe(this)");
        return cVarN;
    }

    public static final d j(k kVar) {
        r.e(kVar, "<this>");
        d dVarM = kotlin.reflect.jvm.internal.impl.resolve.c.m(kVar);
        r.d(dVarM, "getFqName(this)");
        return dVarM;
    }

    public static final kotlin.reflect.jvm.internal.impl.types.checker.g k(z zVar) {
        r.e(zVar, "<this>");
        o oVar = (o) zVar.C0(h.a());
        kotlin.reflect.jvm.internal.impl.types.checker.g gVar = oVar == null ? null : (kotlin.reflect.jvm.internal.impl.types.checker.g) oVar.a();
        return gVar == null ? kotlin.reflect.jvm.internal.impl.types.checker.g.a.f15665a : gVar;
    }

    public static final z l(k kVar) {
        r.e(kVar, "<this>");
        z zVarG = kotlin.reflect.jvm.internal.impl.resolve.c.g(kVar);
        r.d(zVarG, "getContainingModule(this)");
        return zVarG;
    }

    public static final Sequence<k> m(k kVar) {
        r.e(kVar, "<this>");
        return SequencesKt___SequencesKt.n(n(kVar), 1);
    }

    public static final Sequence<k> n(k kVar) {
        r.e(kVar, "<this>");
        return SequencesKt__SequencesKt.h(kVar, new Function1<k, k>() { // from class: kotlin.reflect.jvm.internal.impl.resolve.descriptorUtil.DescriptorUtilsKt$parentsWithSelf$1
            @Override // kotlin.jvm.functions.Function1
            public final k invoke(k it) {
                r.e(it, "it");
                return it.b();
            }
        });
    }

    public static final CallableMemberDescriptor o(CallableMemberDescriptor callableMemberDescriptor) {
        r.e(callableMemberDescriptor, "<this>");
        if (!(callableMemberDescriptor instanceof i0)) {
            return callableMemberDescriptor;
        }
        j0 correspondingProperty = ((i0) callableMemberDescriptor).T();
        r.d(correspondingProperty, "correspondingProperty");
        return correspondingProperty;
    }

    public static final kotlin.reflect.jvm.internal.impl.descriptors.d p(kotlin.reflect.jvm.internal.impl.descriptors.d dVar) {
        r.e(dVar, "<this>");
        for (a0 a0Var : dVar.n().I0().a()) {
            if (!kotlin.reflect.jvm.internal.impl.builtins.g.b0(a0Var)) {
                kotlin.reflect.jvm.internal.impl.descriptors.f fVarC = a0Var.I0().u();
                if (kotlin.reflect.jvm.internal.impl.resolve.c.w(fVarC)) {
                    Objects.requireNonNull(fVarC, "null cannot be cast to non-null type org.jetbrains.kotlin.descriptors.ClassDescriptor");
                    return (kotlin.reflect.jvm.internal.impl.descriptors.d) fVarC;
                }
            }
        }
        return null;
    }

    public static final boolean q(z zVar) {
        r.e(zVar, "<this>");
        o oVar = (o) zVar.C0(h.a());
        return (oVar == null ? null : (kotlin.reflect.jvm.internal.impl.types.checker.g) oVar.a()) != null;
    }

    public static final kotlin.reflect.jvm.internal.impl.descriptors.d r(z zVar, kotlin.reflect.jvm.internal.impl.name.c topLevelClassFqName, kotlin.reflect.jvm.internal.impl.incremental.components.b location) {
        r.e(zVar, "<this>");
        r.e(topLevelClassFqName, "topLevelClassFqName");
        r.e(location, "location");
        topLevelClassFqName.d();
        kotlin.reflect.jvm.internal.impl.name.c cVarE = topLevelClassFqName.e();
        r.d(cVarE, "topLevelClassFqName.parent()");
        MemberScope memberScopeM = zVar.j0(cVarE).m();
        f fVarG = topLevelClassFqName.g();
        r.d(fVarG, "topLevelClassFqName.shortName()");
        kotlin.reflect.jvm.internal.impl.descriptors.f fVarF = memberScopeM.f(fVarG, location);
        if (fVarF instanceof kotlin.reflect.jvm.internal.impl.descriptors.d) {
            return (kotlin.reflect.jvm.internal.impl.descriptors.d) fVarF;
        }
        return null;
    }
}
