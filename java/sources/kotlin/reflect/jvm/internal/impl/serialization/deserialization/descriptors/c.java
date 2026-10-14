package kotlin.reflect.jvm.internal.impl.serialization.deserialization.descriptors;

import java.util.List;
import kotlin.jvm.internal.o;
import kotlin.jvm.internal.r;
import kotlin.reflect.jvm.internal.impl.descriptors.CallableMemberDescriptor;
import kotlin.reflect.jvm.internal.impl.descriptors.j;
import kotlin.reflect.jvm.internal.impl.descriptors.k;
import kotlin.reflect.jvm.internal.impl.descriptors.o0;
import kotlin.reflect.jvm.internal.impl.descriptors.u;
import kotlin.reflect.jvm.internal.impl.metadata.ProtoBuf$Constructor;

/* JADX INFO: loaded from: classes6.dex */
public final class c extends kotlin.reflect.jvm.internal.impl.descriptors.impl.e implements b {
    private final ProtoBuf$Constructor F;
    private final kotlin.reflect.jvm.internal.impl.metadata.c.c G;
    private final kotlin.reflect.jvm.internal.impl.metadata.c.g H;
    private final kotlin.reflect.jvm.internal.impl.metadata.c.i I;
    private final d K;
    private DeserializedMemberDescriptor.CoroutinesCompatibilityMode M;

    public /* synthetic */ c(kotlin.reflect.jvm.internal.impl.descriptors.d dVar, j jVar, kotlin.reflect.jvm.internal.impl.descriptors.annotations.e eVar, boolean z, CallableMemberDescriptor.Kind kind, ProtoBuf$Constructor protoBuf$Constructor, kotlin.reflect.jvm.internal.impl.metadata.c.c cVar, kotlin.reflect.jvm.internal.impl.metadata.c.g gVar, kotlin.reflect.jvm.internal.impl.metadata.c.i iVar, d dVar2, o0 o0Var, int i, o oVar) {
        this(dVar, jVar, eVar, z, kind, protoBuf$Constructor, cVar, gVar, iVar, dVar2, (i & 1024) != 0 ? null : o0Var);
    }

    @Override // kotlin.reflect.jvm.internal.impl.descriptors.impl.o, kotlin.reflect.jvm.internal.impl.descriptors.u
    public boolean B() {
        return false;
    }

    @Override // kotlin.reflect.jvm.internal.impl.serialization.deserialization.descriptors.DeserializedMemberDescriptor
    public kotlin.reflect.jvm.internal.impl.metadata.c.g D() {
        return this.H;
    }

    @Override // kotlin.reflect.jvm.internal.impl.serialization.deserialization.descriptors.DeserializedMemberDescriptor
    public List<kotlin.reflect.jvm.internal.impl.metadata.c.h> E0() {
        return b.a.a(this);
    }

    @Override // kotlin.reflect.jvm.internal.impl.serialization.deserialization.descriptors.DeserializedMemberDescriptor
    public kotlin.reflect.jvm.internal.impl.metadata.c.i G() {
        return this.I;
    }

    @Override // kotlin.reflect.jvm.internal.impl.serialization.deserialization.descriptors.DeserializedMemberDescriptor
    public kotlin.reflect.jvm.internal.impl.metadata.c.c H() {
        return this.G;
    }

    @Override // kotlin.reflect.jvm.internal.impl.serialization.deserialization.descriptors.DeserializedMemberDescriptor
    public d I() {
        return this.K;
    }

    @Override // kotlin.reflect.jvm.internal.impl.descriptors.impl.o, kotlin.reflect.jvm.internal.impl.descriptors.w
    public boolean isExternal() {
        return false;
    }

    @Override // kotlin.reflect.jvm.internal.impl.descriptors.impl.o, kotlin.reflect.jvm.internal.impl.descriptors.u
    public boolean isInline() {
        return false;
    }

    @Override // kotlin.reflect.jvm.internal.impl.descriptors.impl.o, kotlin.reflect.jvm.internal.impl.descriptors.u
    public boolean isSuspend() {
        return false;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // kotlin.reflect.jvm.internal.impl.descriptors.impl.e
    /* JADX INFO: renamed from: n1, reason: merged with bridge method [inline-methods] */
    public c H0(k newOwner, u uVar, CallableMemberDescriptor.Kind kind, kotlin.reflect.jvm.internal.impl.name.f fVar, kotlin.reflect.jvm.internal.impl.descriptors.annotations.e annotations, o0 source) {
        r.e(newOwner, "newOwner");
        r.e(kind, "kind");
        r.e(annotations, "annotations");
        r.e(source, "source");
        c cVar = new c((kotlin.reflect.jvm.internal.impl.descriptors.d) newOwner, (j) uVar, annotations, this.D, kind, c0(), H(), D(), G(), I(), source);
        cVar.U0(M0());
        cVar.q1(o1());
        return cVar;
    }

    public DeserializedMemberDescriptor.CoroutinesCompatibilityMode o1() {
        return this.M;
    }

    @Override // kotlin.reflect.jvm.internal.impl.serialization.deserialization.descriptors.DeserializedMemberDescriptor
    /* JADX INFO: renamed from: p1, reason: merged with bridge method [inline-methods] */
    public ProtoBuf$Constructor c0() {
        return this.F;
    }

    public void q1(DeserializedMemberDescriptor.CoroutinesCompatibilityMode coroutinesCompatibilityMode) {
        r.e(coroutinesCompatibilityMode, "<set-?>");
        this.M = coroutinesCompatibilityMode;
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public c(kotlin.reflect.jvm.internal.impl.descriptors.d containingDeclaration, j jVar, kotlin.reflect.jvm.internal.impl.descriptors.annotations.e annotations, boolean z, CallableMemberDescriptor.Kind kind, ProtoBuf$Constructor proto, kotlin.reflect.jvm.internal.impl.metadata.c.c nameResolver, kotlin.reflect.jvm.internal.impl.metadata.c.g typeTable, kotlin.reflect.jvm.internal.impl.metadata.c.i versionRequirementTable, d dVar, o0 o0Var) {
        super(containingDeclaration, jVar, annotations, z, kind, o0Var == null ? o0.f14970a : o0Var);
        r.e(containingDeclaration, "containingDeclaration");
        r.e(annotations, "annotations");
        r.e(kind, "kind");
        r.e(proto, "proto");
        r.e(nameResolver, "nameResolver");
        r.e(typeTable, "typeTable");
        r.e(versionRequirementTable, "versionRequirementTable");
        this.F = proto;
        this.G = nameResolver;
        this.H = typeTable;
        this.I = versionRequirementTable;
        this.K = dVar;
        this.M = DeserializedMemberDescriptor.CoroutinesCompatibilityMode.COMPATIBLE;
    }
}
