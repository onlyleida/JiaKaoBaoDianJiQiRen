package kotlin.reflect.jvm.internal.impl.serialization.deserialization.descriptors;

import java.util.List;
import kotlin.jvm.internal.r;
import kotlin.reflect.jvm.internal.impl.descriptors.CallableMemberDescriptor;
import kotlin.reflect.jvm.internal.impl.descriptors.Modality;
import kotlin.reflect.jvm.internal.impl.descriptors.impl.a0;
import kotlin.reflect.jvm.internal.impl.descriptors.impl.z;
import kotlin.reflect.jvm.internal.impl.descriptors.j0;
import kotlin.reflect.jvm.internal.impl.descriptors.k;
import kotlin.reflect.jvm.internal.impl.descriptors.l0;
import kotlin.reflect.jvm.internal.impl.descriptors.o0;
import kotlin.reflect.jvm.internal.impl.descriptors.s;
import kotlin.reflect.jvm.internal.impl.descriptors.t;
import kotlin.reflect.jvm.internal.impl.metadata.ProtoBuf$Property;
import kotlin.v;

/* JADX INFO: loaded from: classes6.dex */
public final class f extends z implements b {
    private final ProtoBuf$Property A;
    private final kotlin.reflect.jvm.internal.impl.metadata.c.c B;
    private final kotlin.reflect.jvm.internal.impl.metadata.c.g C;
    private final kotlin.reflect.jvm.internal.impl.metadata.c.i D;
    private final d E;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public f(k containingDeclaration, j0 j0Var, kotlin.reflect.jvm.internal.impl.descriptors.annotations.e annotations, Modality modality, s visibility, boolean z, kotlin.reflect.jvm.internal.impl.name.f name, CallableMemberDescriptor.Kind kind, boolean z2, boolean z3, boolean z4, boolean z5, boolean z6, ProtoBuf$Property proto, kotlin.reflect.jvm.internal.impl.metadata.c.c nameResolver, kotlin.reflect.jvm.internal.impl.metadata.c.g typeTable, kotlin.reflect.jvm.internal.impl.metadata.c.i versionRequirementTable, d dVar) {
        super(containingDeclaration, j0Var, annotations, modality, visibility, z, name, kind, o0.f14970a, z2, z3, z6, false, z4, z5);
        r.e(containingDeclaration, "containingDeclaration");
        r.e(annotations, "annotations");
        r.e(modality, "modality");
        r.e(visibility, "visibility");
        r.e(name, "name");
        r.e(kind, "kind");
        r.e(proto, "proto");
        r.e(nameResolver, "nameResolver");
        r.e(typeTable, "typeTable");
        r.e(versionRequirementTable, "versionRequirementTable");
        this.A = proto;
        this.B = nameResolver;
        this.C = typeTable;
        this.D = versionRequirementTable;
        this.E = dVar;
        DeserializedMemberDescriptor.CoroutinesCompatibilityMode coroutinesCompatibilityMode = DeserializedMemberDescriptor.CoroutinesCompatibilityMode.COMPATIBLE;
    }

    @Override // kotlin.reflect.jvm.internal.impl.serialization.deserialization.descriptors.DeserializedMemberDescriptor
    public kotlin.reflect.jvm.internal.impl.metadata.c.g D() {
        return this.C;
    }

    @Override // kotlin.reflect.jvm.internal.impl.serialization.deserialization.descriptors.DeserializedMemberDescriptor
    public List<kotlin.reflect.jvm.internal.impl.metadata.c.h> E0() {
        return b.a.a(this);
    }

    @Override // kotlin.reflect.jvm.internal.impl.serialization.deserialization.descriptors.DeserializedMemberDescriptor
    public kotlin.reflect.jvm.internal.impl.metadata.c.i G() {
        return this.D;
    }

    @Override // kotlin.reflect.jvm.internal.impl.serialization.deserialization.descriptors.DeserializedMemberDescriptor
    public kotlin.reflect.jvm.internal.impl.metadata.c.c H() {
        return this.B;
    }

    @Override // kotlin.reflect.jvm.internal.impl.serialization.deserialization.descriptors.DeserializedMemberDescriptor
    public d I() {
        return this.E;
    }

    @Override // kotlin.reflect.jvm.internal.impl.descriptors.impl.z
    protected z K0(k newOwner, Modality newModality, s newVisibility, j0 j0Var, CallableMemberDescriptor.Kind kind, kotlin.reflect.jvm.internal.impl.name.f newName, o0 source) {
        r.e(newOwner, "newOwner");
        r.e(newModality, "newModality");
        r.e(newVisibility, "newVisibility");
        r.e(kind, "kind");
        r.e(newName, "newName");
        r.e(source, "source");
        return new f(newOwner, j0Var, getAnnotations(), newModality, newVisibility, M(), newName, kind, v0(), isConst(), isExternal(), A(), i0(), c0(), H(), D(), G(), I());
    }

    @Override // kotlin.reflect.jvm.internal.impl.serialization.deserialization.descriptors.DeserializedMemberDescriptor
    /* JADX INFO: renamed from: X0, reason: merged with bridge method [inline-methods] */
    public ProtoBuf$Property c0() {
        return this.A;
    }

    public final void Y0(a0 a0Var, l0 l0Var, t tVar, t tVar2, DeserializedMemberDescriptor.CoroutinesCompatibilityMode isExperimentalCoroutineInReleaseEnvironment) {
        r.e(isExperimentalCoroutineInReleaseEnvironment, "isExperimentalCoroutineInReleaseEnvironment");
        super.Q0(a0Var, l0Var, tVar, tVar2);
        v vVar = v.f15822a;
    }

    @Override // kotlin.reflect.jvm.internal.impl.descriptors.impl.z, kotlin.reflect.jvm.internal.impl.descriptors.w
    public boolean isExternal() {
        Boolean boolD = kotlin.reflect.jvm.internal.impl.metadata.c.b.D.d(c0().getFlags());
        r.d(boolD, "IS_EXTERNAL_PROPERTY.get(proto.flags)");
        return boolD.booleanValue();
    }
}
