package kotlin.reflect.jvm.internal.impl.serialization.deserialization.descriptors;

import java.util.List;
import java.util.Map;
import kotlin.jvm.internal.o;
import kotlin.jvm.internal.r;
import kotlin.reflect.jvm.internal.impl.descriptors.CallableMemberDescriptor;
import kotlin.reflect.jvm.internal.impl.descriptors.Modality;
import kotlin.reflect.jvm.internal.impl.descriptors.impl.d0;
import kotlin.reflect.jvm.internal.impl.descriptors.k;
import kotlin.reflect.jvm.internal.impl.descriptors.m0;
import kotlin.reflect.jvm.internal.impl.descriptors.n0;
import kotlin.reflect.jvm.internal.impl.descriptors.o0;
import kotlin.reflect.jvm.internal.impl.descriptors.s;
import kotlin.reflect.jvm.internal.impl.descriptors.t0;
import kotlin.reflect.jvm.internal.impl.descriptors.u;
import kotlin.reflect.jvm.internal.impl.descriptors.v0;
import kotlin.reflect.jvm.internal.impl.metadata.ProtoBuf$Function;
import kotlin.reflect.jvm.internal.impl.types.a0;

/* JADX INFO: loaded from: classes6.dex */
public final class g extends d0 implements b {
    private final ProtoBuf$Function D;
    private final kotlin.reflect.jvm.internal.impl.metadata.c.c E;
    private final kotlin.reflect.jvm.internal.impl.metadata.c.g F;
    private final kotlin.reflect.jvm.internal.impl.metadata.c.i G;
    private final d H;
    private DeserializedMemberDescriptor.CoroutinesCompatibilityMode I;

    public /* synthetic */ g(k kVar, n0 n0Var, kotlin.reflect.jvm.internal.impl.descriptors.annotations.e eVar, kotlin.reflect.jvm.internal.impl.name.f fVar, CallableMemberDescriptor.Kind kind, ProtoBuf$Function protoBuf$Function, kotlin.reflect.jvm.internal.impl.metadata.c.c cVar, kotlin.reflect.jvm.internal.impl.metadata.c.g gVar, kotlin.reflect.jvm.internal.impl.metadata.c.i iVar, d dVar, o0 o0Var, int i, o oVar) {
        this(kVar, n0Var, eVar, fVar, kind, protoBuf$Function, cVar, gVar, iVar, dVar, (i & 1024) != 0 ? null : o0Var);
    }

    @Override // kotlin.reflect.jvm.internal.impl.serialization.deserialization.descriptors.DeserializedMemberDescriptor
    public kotlin.reflect.jvm.internal.impl.metadata.c.g D() {
        return this.F;
    }

    @Override // kotlin.reflect.jvm.internal.impl.serialization.deserialization.descriptors.DeserializedMemberDescriptor
    public List<kotlin.reflect.jvm.internal.impl.metadata.c.h> E0() {
        return b.a.a(this);
    }

    @Override // kotlin.reflect.jvm.internal.impl.serialization.deserialization.descriptors.DeserializedMemberDescriptor
    public kotlin.reflect.jvm.internal.impl.metadata.c.i G() {
        return this.G;
    }

    @Override // kotlin.reflect.jvm.internal.impl.serialization.deserialization.descriptors.DeserializedMemberDescriptor
    public kotlin.reflect.jvm.internal.impl.metadata.c.c H() {
        return this.E;
    }

    @Override // kotlin.reflect.jvm.internal.impl.descriptors.impl.d0, kotlin.reflect.jvm.internal.impl.descriptors.impl.o
    protected kotlin.reflect.jvm.internal.impl.descriptors.impl.o H0(k newOwner, u uVar, CallableMemberDescriptor.Kind kind, kotlin.reflect.jvm.internal.impl.name.f fVar, kotlin.reflect.jvm.internal.impl.descriptors.annotations.e annotations, o0 source) {
        kotlin.reflect.jvm.internal.impl.name.f fVar2;
        r.e(newOwner, "newOwner");
        r.e(kind, "kind");
        r.e(annotations, "annotations");
        r.e(source, "source");
        n0 n0Var = (n0) uVar;
        if (fVar == null) {
            kotlin.reflect.jvm.internal.impl.name.f name = getName();
            r.d(name, "name");
            fVar2 = name;
        } else {
            fVar2 = fVar;
        }
        g gVar = new g(newOwner, n0Var, annotations, fVar2, kind, c0(), H(), D(), G(), I(), source);
        gVar.U0(M0());
        gVar.I = l1();
        return gVar;
    }

    @Override // kotlin.reflect.jvm.internal.impl.serialization.deserialization.descriptors.DeserializedMemberDescriptor
    public d I() {
        return this.H;
    }

    public DeserializedMemberDescriptor.CoroutinesCompatibilityMode l1() {
        return this.I;
    }

    @Override // kotlin.reflect.jvm.internal.impl.serialization.deserialization.descriptors.DeserializedMemberDescriptor
    /* JADX INFO: renamed from: m1, reason: merged with bridge method [inline-methods] */
    public ProtoBuf$Function c0() {
        return this.D;
    }

    public final d0 n1(m0 m0Var, m0 m0Var2, List<? extends t0> typeParameters, List<? extends v0> unsubstitutedValueParameters, a0 a0Var, Modality modality, s visibility, Map<? extends kotlin.reflect.jvm.internal.impl.descriptors.a.InterfaceC0321a<?>, ?> userDataMap, DeserializedMemberDescriptor.CoroutinesCompatibilityMode isExperimentalCoroutineInReleaseEnvironment) {
        r.e(typeParameters, "typeParameters");
        r.e(unsubstitutedValueParameters, "unsubstitutedValueParameters");
        r.e(visibility, "visibility");
        r.e(userDataMap, "userDataMap");
        r.e(isExperimentalCoroutineInReleaseEnvironment, "isExperimentalCoroutineInReleaseEnvironment");
        super.k1(m0Var, m0Var2, typeParameters, unsubstitutedValueParameters, a0Var, modality, visibility, userDataMap);
        r.d(this, "super.initialize(\n      …    userDataMap\n        )");
        this.I = isExperimentalCoroutineInReleaseEnvironment;
        return this;
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public g(k containingDeclaration, n0 n0Var, kotlin.reflect.jvm.internal.impl.descriptors.annotations.e annotations, kotlin.reflect.jvm.internal.impl.name.f name, CallableMemberDescriptor.Kind kind, ProtoBuf$Function proto, kotlin.reflect.jvm.internal.impl.metadata.c.c nameResolver, kotlin.reflect.jvm.internal.impl.metadata.c.g typeTable, kotlin.reflect.jvm.internal.impl.metadata.c.i versionRequirementTable, d dVar, o0 o0Var) {
        super(containingDeclaration, n0Var, annotations, name, kind, o0Var == null ? o0.f14970a : o0Var);
        r.e(containingDeclaration, "containingDeclaration");
        r.e(annotations, "annotations");
        r.e(name, "name");
        r.e(kind, "kind");
        r.e(proto, "proto");
        r.e(nameResolver, "nameResolver");
        r.e(typeTable, "typeTable");
        r.e(versionRequirementTable, "versionRequirementTable");
        this.D = proto;
        this.E = nameResolver;
        this.F = typeTable;
        this.G = versionRequirementTable;
        this.H = dVar;
        this.I = DeserializedMemberDescriptor.CoroutinesCompatibilityMode.COMPATIBLE;
    }
}
