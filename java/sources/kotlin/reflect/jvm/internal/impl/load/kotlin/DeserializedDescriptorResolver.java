package kotlin.reflect.jvm.internal.impl.load.kotlin;

import java.util.Collection;
import java.util.Set;
import kotlin.Pair;
import kotlin.collections.t0;
import kotlin.collections.u0;
import kotlin.jvm.functions.Function0;
import kotlin.reflect.jvm.internal.impl.descriptors.b0;
import kotlin.reflect.jvm.internal.impl.load.kotlin.header.KotlinClassHeader;
import kotlin.reflect.jvm.internal.impl.metadata.ProtoBuf$Class;
import kotlin.reflect.jvm.internal.impl.metadata.ProtoBuf$Package;
import kotlin.reflect.jvm.internal.impl.protobuf.InvalidProtocolBufferException;
import kotlin.reflect.jvm.internal.impl.resolve.scopes.MemberScope;
import kotlin.reflect.jvm.internal.impl.serialization.deserialization.descriptors.DeserializedContainerAbiStability;

/* JADX INFO: loaded from: classes6.dex */
public final class DeserializedDescriptorResolver {
    public static final a b = new a(null);
    private static final Set<KotlinClassHeader.Kind> c = t0.a(KotlinClassHeader.Kind.CLASS);

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private static final Set<KotlinClassHeader.Kind> f15189d = u0.f(KotlinClassHeader.Kind.FILE_FACADE, KotlinClassHeader.Kind.MULTIFILE_CLASS_PART);

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private static final kotlin.reflect.jvm.internal.impl.metadata.jvm.a.e f15190e = new kotlin.reflect.jvm.internal.impl.metadata.jvm.a.e(1, 1, 2);

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private static final kotlin.reflect.jvm.internal.impl.metadata.jvm.a.e f15191f = new kotlin.reflect.jvm.internal.impl.metadata.jvm.a.e(1, 1, 11);

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private static final kotlin.reflect.jvm.internal.impl.metadata.jvm.a.e f15192g = new kotlin.reflect.jvm.internal.impl.metadata.jvm.a.e(1, 1, 13);

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public kotlin.reflect.jvm.internal.impl.serialization.deserialization.g f15193a;

    public static final class a {
        private a() {
        }

        public /* synthetic */ a(kotlin.jvm.internal.o oVar) {
            this();
        }

        public final kotlin.reflect.jvm.internal.impl.metadata.jvm.a.e a() {
            return DeserializedDescriptorResolver.f15192g;
        }
    }

    private final DeserializedContainerAbiStability d(m mVar) {
        if (e().g().d()) {
            return DeserializedContainerAbiStability.STABLE;
        }
        if (mVar.b().j()) {
            return DeserializedContainerAbiStability.FIR_UNSTABLE;
        }
        return mVar.b().k() ? DeserializedContainerAbiStability.IR_UNSTABLE : DeserializedContainerAbiStability.STABLE;
    }

    private final kotlin.reflect.jvm.internal.impl.serialization.deserialization.n<kotlin.reflect.jvm.internal.impl.metadata.jvm.a.e> f(m mVar) {
        if (g() || mVar.b().d().h()) {
            return null;
        }
        return new kotlin.reflect.jvm.internal.impl.serialization.deserialization.n<>(mVar.b().d(), kotlin.reflect.jvm.internal.impl.metadata.jvm.a.e.f15373g, mVar.getLocation(), mVar.g());
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final boolean g() {
        return e().g().e();
    }

    private final boolean h(m mVar) {
        return !e().g().b() && mVar.b().i() && kotlin.jvm.internal.r.a(mVar.b().d(), f15191f);
    }

    private final boolean i(m mVar) {
        return (e().g().f() && (mVar.b().i() || kotlin.jvm.internal.r.a(mVar.b().d(), f15190e))) || h(mVar);
    }

    private final String[] k(m mVar, Set<? extends KotlinClassHeader.Kind> set) {
        KotlinClassHeader kotlinClassHeaderB = mVar.b();
        String[] strArrA = kotlinClassHeaderB.a();
        if (strArrA == null) {
            strArrA = kotlinClassHeaderB.b();
        }
        if (strArrA != null && set.contains(kotlinClassHeaderB.c())) {
            return strArrA;
        }
        return null;
    }

    public final MemberScope c(b0 descriptor, m kotlinClass) {
        String[] strArrG;
        Pair<kotlin.reflect.jvm.internal.impl.metadata.jvm.a.f, ProtoBuf$Package> pairM;
        kotlin.jvm.internal.r.e(descriptor, "descriptor");
        kotlin.jvm.internal.r.e(kotlinClass, "kotlinClass");
        String[] strArrK = k(kotlinClass, f15189d);
        if (strArrK == null || (strArrG = kotlinClass.b().g()) == null) {
            return null;
        }
        try {
            try {
                pairM = kotlin.reflect.jvm.internal.impl.metadata.jvm.a.g.m(strArrK, strArrG);
            } catch (InvalidProtocolBufferException e2) {
                throw new IllegalStateException(kotlin.jvm.internal.r.m("Could not read data from ", kotlinClass.getLocation()), e2);
            }
        } catch (Throwable th) {
            if (g() || kotlinClass.b().d().h()) {
                throw th;
            }
            pairM = null;
        }
        if (pairM == null) {
            return null;
        }
        kotlin.reflect.jvm.internal.impl.metadata.jvm.a.f fVarComponent1 = pairM.component1();
        ProtoBuf$Package protoBuf$PackageComponent2 = pairM.component2();
        g gVar = new g(kotlinClass, protoBuf$PackageComponent2, fVarComponent1, f(kotlinClass), i(kotlinClass), d(kotlinClass));
        return new kotlin.reflect.jvm.internal.impl.serialization.deserialization.descriptors.e(descriptor, protoBuf$PackageComponent2, fVarComponent1, kotlinClass.b().d(), gVar, e(), "scope for " + gVar + " in " + descriptor, new Function0<Collection<? extends kotlin.reflect.jvm.internal.impl.name.f>>() { // from class: kotlin.reflect.jvm.internal.impl.load.kotlin.DeserializedDescriptorResolver$createKotlinPackagePartScope$2
            @Override // kotlin.jvm.functions.Function0
            public final Collection<? extends kotlin.reflect.jvm.internal.impl.name.f> invoke() {
                return kotlin.collections.u.j();
            }
        });
    }

    public final kotlin.reflect.jvm.internal.impl.serialization.deserialization.g e() {
        kotlin.reflect.jvm.internal.impl.serialization.deserialization.g gVar = this.f15193a;
        if (gVar != null) {
            return gVar;
        }
        kotlin.jvm.internal.r.u("components");
        throw null;
    }

    public final kotlin.reflect.jvm.internal.impl.serialization.deserialization.d j(m kotlinClass) {
        String[] strArrG;
        Pair<kotlin.reflect.jvm.internal.impl.metadata.jvm.a.f, ProtoBuf$Class> pairI;
        kotlin.jvm.internal.r.e(kotlinClass, "kotlinClass");
        String[] strArrK = k(kotlinClass, c);
        if (strArrK == null || (strArrG = kotlinClass.b().g()) == null) {
            return null;
        }
        try {
            try {
                pairI = kotlin.reflect.jvm.internal.impl.metadata.jvm.a.g.i(strArrK, strArrG);
            } catch (InvalidProtocolBufferException e2) {
                throw new IllegalStateException(kotlin.jvm.internal.r.m("Could not read data from ", kotlinClass.getLocation()), e2);
            }
        } catch (Throwable th) {
            if (g() || kotlinClass.b().d().h()) {
                throw th;
            }
            pairI = null;
        }
        if (pairI == null) {
            return null;
        }
        return new kotlin.reflect.jvm.internal.impl.serialization.deserialization.d(pairI.component1(), pairI.component2(), kotlinClass.b().d(), new o(kotlinClass, f(kotlinClass), i(kotlinClass), d(kotlinClass)));
    }

    public final kotlin.reflect.jvm.internal.impl.descriptors.d l(m kotlinClass) {
        kotlin.jvm.internal.r.e(kotlinClass, "kotlinClass");
        kotlin.reflect.jvm.internal.impl.serialization.deserialization.d dVarJ = j(kotlinClass);
        if (dVarJ == null) {
            return null;
        }
        return e().f().d(kotlinClass.g(), dVarJ);
    }

    public final void m(c components) {
        kotlin.jvm.internal.r.e(components, "components");
        n(components.a());
    }

    public final void n(kotlin.reflect.jvm.internal.impl.serialization.deserialization.g gVar) {
        kotlin.jvm.internal.r.e(gVar, "<set-?>");
        this.f15193a = gVar;
    }
}
