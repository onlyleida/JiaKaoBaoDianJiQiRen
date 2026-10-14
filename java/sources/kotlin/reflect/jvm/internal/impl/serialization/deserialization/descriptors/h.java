package kotlin.reflect.jvm.internal.impl.serialization.deserialization.descriptors;

import java.util.Collection;
import java.util.List;
import kotlin.jvm.internal.r;
import kotlin.reflect.jvm.internal.impl.descriptors.TypeParameterUtilsKt;
import kotlin.reflect.jvm.internal.impl.descriptors.impl.AbstractTypeAliasDescriptor;
import kotlin.reflect.jvm.internal.impl.descriptors.impl.f0;
import kotlin.reflect.jvm.internal.impl.descriptors.k;
import kotlin.reflect.jvm.internal.impl.descriptors.o0;
import kotlin.reflect.jvm.internal.impl.descriptors.s;
import kotlin.reflect.jvm.internal.impl.descriptors.s0;
import kotlin.reflect.jvm.internal.impl.descriptors.t0;
import kotlin.reflect.jvm.internal.impl.metadata.ProtoBuf$TypeAlias;
import kotlin.reflect.jvm.internal.impl.storage.m;
import kotlin.reflect.jvm.internal.impl.types.TypeSubstitutor;
import kotlin.reflect.jvm.internal.impl.types.Variance;
import kotlin.reflect.jvm.internal.impl.types.a0;
import kotlin.reflect.jvm.internal.impl.types.b0;
import kotlin.reflect.jvm.internal.impl.types.w0;

/* JADX INFO: loaded from: classes6.dex */
public final class h extends AbstractTypeAliasDescriptor implements DeserializedMemberDescriptor {

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private final m f15583h;
    private final ProtoBuf$TypeAlias i;
    private final kotlin.reflect.jvm.internal.impl.metadata.c.c j;
    private final kotlin.reflect.jvm.internal.impl.metadata.c.g k;
    private final kotlin.reflect.jvm.internal.impl.metadata.c.i l;
    private final d m;
    private Collection<? extends f0> n;
    private kotlin.reflect.jvm.internal.impl.types.f0 o;
    private kotlin.reflect.jvm.internal.impl.types.f0 p;
    private List<? extends t0> q;
    private kotlin.reflect.jvm.internal.impl.types.f0 r;
    private DeserializedMemberDescriptor.CoroutinesCompatibilityMode s;

    /* JADX WARN: Illegal instructions before constructor call */
    public h(m storageManager, k containingDeclaration, kotlin.reflect.jvm.internal.impl.descriptors.annotations.e annotations, kotlin.reflect.jvm.internal.impl.name.f name, s visibility, ProtoBuf$TypeAlias proto, kotlin.reflect.jvm.internal.impl.metadata.c.c nameResolver, kotlin.reflect.jvm.internal.impl.metadata.c.g typeTable, kotlin.reflect.jvm.internal.impl.metadata.c.i versionRequirementTable, d dVar) {
        r.e(storageManager, "storageManager");
        r.e(containingDeclaration, "containingDeclaration");
        r.e(annotations, "annotations");
        r.e(name, "name");
        r.e(visibility, "visibility");
        r.e(proto, "proto");
        r.e(nameResolver, "nameResolver");
        r.e(typeTable, "typeTable");
        r.e(versionRequirementTable, "versionRequirementTable");
        o0 NO_SOURCE = o0.f14970a;
        r.d(NO_SOURCE, "NO_SOURCE");
        super(containingDeclaration, annotations, name, NO_SOURCE, visibility);
        this.f15583h = storageManager;
        this.i = proto;
        this.j = nameResolver;
        this.k = typeTable;
        this.l = versionRequirementTable;
        this.m = dVar;
        this.s = DeserializedMemberDescriptor.CoroutinesCompatibilityMode.COMPATIBLE;
    }

    @Override // kotlin.reflect.jvm.internal.impl.serialization.deserialization.descriptors.DeserializedMemberDescriptor
    public kotlin.reflect.jvm.internal.impl.metadata.c.g D() {
        return this.k;
    }

    @Override // kotlin.reflect.jvm.internal.impl.serialization.deserialization.descriptors.DeserializedMemberDescriptor
    public List<kotlin.reflect.jvm.internal.impl.metadata.c.h> E0() {
        return DeserializedMemberDescriptor.a.a(this);
    }

    @Override // kotlin.reflect.jvm.internal.impl.descriptors.s0
    public kotlin.reflect.jvm.internal.impl.types.f0 F() {
        kotlin.reflect.jvm.internal.impl.types.f0 f0Var = this.p;
        if (f0Var != null) {
            return f0Var;
        }
        r.u("expandedType");
        throw null;
    }

    @Override // kotlin.reflect.jvm.internal.impl.serialization.deserialization.descriptors.DeserializedMemberDescriptor
    public kotlin.reflect.jvm.internal.impl.metadata.c.i G() {
        return this.l;
    }

    @Override // kotlin.reflect.jvm.internal.impl.serialization.deserialization.descriptors.DeserializedMemberDescriptor
    public kotlin.reflect.jvm.internal.impl.metadata.c.c H() {
        return this.j;
    }

    @Override // kotlin.reflect.jvm.internal.impl.serialization.deserialization.descriptors.DeserializedMemberDescriptor
    public d I() {
        return this.m;
    }

    @Override // kotlin.reflect.jvm.internal.impl.descriptors.impl.AbstractTypeAliasDescriptor
    protected List<t0> I0() {
        List list = this.q;
        if (list != null) {
            return list;
        }
        r.u("typeConstructorParameters");
        throw null;
    }

    public DeserializedMemberDescriptor.CoroutinesCompatibilityMode K0() {
        return this.s;
    }

    @Override // kotlin.reflect.jvm.internal.impl.descriptors.impl.AbstractTypeAliasDescriptor
    protected m L() {
        return this.f15583h;
    }

    @Override // kotlin.reflect.jvm.internal.impl.serialization.deserialization.descriptors.DeserializedMemberDescriptor
    /* JADX INFO: renamed from: L0, reason: merged with bridge method [inline-methods] */
    public ProtoBuf$TypeAlias c0() {
        return this.i;
    }

    public final void M0(List<? extends t0> declaredTypeParameters, kotlin.reflect.jvm.internal.impl.types.f0 underlyingType, kotlin.reflect.jvm.internal.impl.types.f0 expandedType, DeserializedMemberDescriptor.CoroutinesCompatibilityMode isExperimentalCoroutineInReleaseEnvironment) {
        r.e(declaredTypeParameters, "declaredTypeParameters");
        r.e(underlyingType, "underlyingType");
        r.e(expandedType, "expandedType");
        r.e(isExperimentalCoroutineInReleaseEnvironment, "isExperimentalCoroutineInReleaseEnvironment");
        J0(declaredTypeParameters);
        this.o = underlyingType;
        this.p = expandedType;
        this.q = TypeParameterUtilsKt.d(this);
        this.r = B0();
        this.n = H0();
        this.s = isExperimentalCoroutineInReleaseEnvironment;
    }

    @Override // kotlin.reflect.jvm.internal.impl.descriptors.q0
    /* JADX INFO: renamed from: N0, reason: merged with bridge method [inline-methods] */
    public s0 c(TypeSubstitutor substitutor) {
        r.e(substitutor, "substitutor");
        if (substitutor.k()) {
            return this;
        }
        m mVarL = L();
        k containingDeclaration = b();
        r.d(containingDeclaration, "containingDeclaration");
        kotlin.reflect.jvm.internal.impl.descriptors.annotations.e annotations = getAnnotations();
        r.d(annotations, "annotations");
        kotlin.reflect.jvm.internal.impl.name.f name = getName();
        r.d(name, "name");
        h hVar = new h(mVarL, containingDeclaration, annotations, name, getVisibility(), c0(), H(), D(), G(), I());
        List<t0> listP = p();
        kotlin.reflect.jvm.internal.impl.types.f0 f0VarR0 = r0();
        Variance variance = Variance.INVARIANT;
        a0 a0VarN = substitutor.n(f0VarR0, variance);
        r.d(a0VarN, "substitutor.safeSubstitu…Type, Variance.INVARIANT)");
        kotlin.reflect.jvm.internal.impl.types.f0 f0VarA = w0.a(a0VarN);
        a0 a0VarN2 = substitutor.n(F(), variance);
        r.d(a0VarN2, "substitutor.safeSubstitu…Type, Variance.INVARIANT)");
        hVar.M0(listP, f0VarA, w0.a(a0VarN2), K0());
        return hVar;
    }

    @Override // kotlin.reflect.jvm.internal.impl.descriptors.f
    public kotlin.reflect.jvm.internal.impl.types.f0 n() {
        kotlin.reflect.jvm.internal.impl.types.f0 f0Var = this.r;
        if (f0Var != null) {
            return f0Var;
        }
        r.u("defaultTypeImpl");
        throw null;
    }

    @Override // kotlin.reflect.jvm.internal.impl.descriptors.s0
    public kotlin.reflect.jvm.internal.impl.descriptors.d r() {
        if (b0.a(F())) {
            return null;
        }
        kotlin.reflect.jvm.internal.impl.descriptors.f fVarU = F().I0().u();
        if (fVarU instanceof kotlin.reflect.jvm.internal.impl.descriptors.d) {
            return (kotlin.reflect.jvm.internal.impl.descriptors.d) fVarU;
        }
        return null;
    }

    @Override // kotlin.reflect.jvm.internal.impl.descriptors.s0
    public kotlin.reflect.jvm.internal.impl.types.f0 r0() {
        kotlin.reflect.jvm.internal.impl.types.f0 f0Var = this.o;
        if (f0Var != null) {
            return f0Var;
        }
        r.u("underlyingType");
        throw null;
    }
}
