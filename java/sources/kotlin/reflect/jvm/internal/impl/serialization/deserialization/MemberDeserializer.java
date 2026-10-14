package kotlin.reflect.jvm.internal.impl.serialization.deserialization;

import java.util.ArrayList;
import java.util.Collection;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import kotlin.Pair;
import kotlin.collections.CollectionsKt___CollectionsKt;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.PropertyReference1;
import kotlin.reflect.KDeclarationContainer;
import kotlin.reflect.jvm.internal.impl.descriptors.CallableMemberDescriptor;
import kotlin.reflect.jvm.internal.impl.descriptors.Modality;
import kotlin.reflect.jvm.internal.impl.descriptors.b0;
import kotlin.reflect.jvm.internal.impl.descriptors.impl.ValueParameterDescriptorImpl;
import kotlin.reflect.jvm.internal.impl.descriptors.j0;
import kotlin.reflect.jvm.internal.impl.descriptors.m0;
import kotlin.reflect.jvm.internal.impl.descriptors.n0;
import kotlin.reflect.jvm.internal.impl.descriptors.o0;
import kotlin.reflect.jvm.internal.impl.descriptors.t0;
import kotlin.reflect.jvm.internal.impl.descriptors.v0;
import kotlin.reflect.jvm.internal.impl.metadata.ProtoBuf$Annotation;
import kotlin.reflect.jvm.internal.impl.metadata.ProtoBuf$Constructor;
import kotlin.reflect.jvm.internal.impl.metadata.ProtoBuf$Function;
import kotlin.reflect.jvm.internal.impl.metadata.ProtoBuf$Modality;
import kotlin.reflect.jvm.internal.impl.metadata.ProtoBuf$Property;
import kotlin.reflect.jvm.internal.impl.metadata.ProtoBuf$Type;
import kotlin.reflect.jvm.internal.impl.metadata.ProtoBuf$TypeAlias;
import kotlin.reflect.jvm.internal.impl.metadata.ProtoBuf$TypeParameter;
import kotlin.reflect.jvm.internal.impl.metadata.ProtoBuf$ValueParameter;
import kotlin.reflect.jvm.internal.impl.metadata.ProtoBuf$VersionRequirement;
import kotlin.reflect.jvm.internal.impl.metadata.ProtoBuf$Visibility;
import kotlin.reflect.jvm.internal.impl.resolve.descriptorUtil.DescriptorUtilsKt;
import kotlin.reflect.jvm.internal.impl.serialization.deserialization.descriptors.DeserializedClassDescriptor;
import kotlin.reflect.jvm.internal.impl.serialization.deserialization.descriptors.DeserializedMemberDescriptor;
import kotlin.reflect.jvm.internal.impl.types.a0;
import kotlin.reflect.jvm.internal.impl.types.s0;
import kotlin.reflect.jvm.internal.impl.types.typeUtil.TypeUtilsKt;

/* JADX INFO: loaded from: classes6.dex */
public final class MemberDeserializer {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final i f15542a;
    private final c b;

    public MemberDeserializer(i c) {
        kotlin.jvm.internal.r.e(c, "c");
        this.f15542a = c;
        this.b = new c(c.c().p(), c.c().q());
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final s c(kotlin.reflect.jvm.internal.impl.descriptors.k kVar) {
        if (kVar instanceof b0) {
            return new s.b(((b0) kVar).e(), this.f15542a.g(), this.f15542a.j(), this.f15542a.d());
        }
        if (kVar instanceof DeserializedClassDescriptor) {
            return ((DeserializedClassDescriptor) kVar).Z0();
        }
        return null;
    }

    private final DeserializedMemberDescriptor.CoroutinesCompatibilityMode d(DeserializedMemberDescriptor deserializedMemberDescriptor, TypeDeserializer typeDeserializer) {
        if (!s(deserializedMemberDescriptor)) {
            return DeserializedMemberDescriptor.CoroutinesCompatibilityMode.COMPATIBLE;
        }
        g(typeDeserializer);
        return typeDeserializer.j() ? DeserializedMemberDescriptor.CoroutinesCompatibilityMode.INCOMPATIBLE : DeserializedMemberDescriptor.CoroutinesCompatibilityMode.COMPATIBLE;
    }

    private final DeserializedMemberDescriptor.CoroutinesCompatibilityMode e(kotlin.reflect.jvm.internal.impl.serialization.deserialization.descriptors.b bVar, m0 m0Var, Collection<? extends v0> collection, Collection<? extends t0> collection2, a0 a0Var, boolean z) {
        boolean z2;
        boolean z3;
        DeserializedMemberDescriptor.CoroutinesCompatibilityMode coroutinesCompatibilityMode;
        boolean z4;
        if (s(bVar) && !kotlin.jvm.internal.r.a(DescriptorUtilsKt.e(bVar), v.f15619a)) {
            ArrayList arrayList = new ArrayList(kotlin.collections.v.u(collection, 10));
            Iterator<T> it = collection.iterator();
            while (it.hasNext()) {
                arrayList.add(((v0) it.next()).getType());
            }
            List<a0> listX0 = CollectionsKt___CollectionsKt.x0(arrayList, kotlin.collections.u.n(m0Var == null ? null : m0Var.getType()));
            if (a0Var != null && f(a0Var)) {
                return DeserializedMemberDescriptor.CoroutinesCompatibilityMode.INCOMPATIBLE;
            }
            if (!(collection2 instanceof Collection) || !collection2.isEmpty()) {
                Iterator<T> it2 = collection2.iterator();
                while (true) {
                    if (!it2.hasNext()) {
                        z3 = false;
                        break;
                    }
                    List<a0> upperBounds = ((t0) it2.next()).getUpperBounds();
                    kotlin.jvm.internal.r.d(upperBounds, "typeParameter.upperBounds");
                    if (!(upperBounds instanceof Collection) || !upperBounds.isEmpty()) {
                        Iterator<T> it3 = upperBounds.iterator();
                        while (true) {
                            if (!it3.hasNext()) {
                                z2 = false;
                                break;
                            }
                            a0 it4 = (a0) it3.next();
                            kotlin.jvm.internal.r.d(it4, "it");
                            if (f(it4)) {
                                z2 = true;
                                break;
                            }
                        }
                    } else {
                        z2 = false;
                        break;
                        break;
                    }
                    if (z2) {
                        z3 = true;
                        break;
                    }
                }
            } else {
                z3 = false;
                break;
            }
            if (z3) {
                return DeserializedMemberDescriptor.CoroutinesCompatibilityMode.INCOMPATIBLE;
            }
            ArrayList arrayList2 = new ArrayList(kotlin.collections.v.u(listX0, 10));
            for (a0 type : listX0) {
                kotlin.jvm.internal.r.d(type, "type");
                if (!kotlin.reflect.jvm.internal.impl.builtins.f.o(type) || type.H0().size() > 3) {
                    coroutinesCompatibilityMode = f(type) ? DeserializedMemberDescriptor.CoroutinesCompatibilityMode.INCOMPATIBLE : DeserializedMemberDescriptor.CoroutinesCompatibilityMode.COMPATIBLE;
                } else {
                    List<s0> listH0 = type.H0();
                    if (!(listH0 instanceof Collection) || !listH0.isEmpty()) {
                        Iterator<T> it5 = listH0.iterator();
                        while (true) {
                            if (!it5.hasNext()) {
                                z4 = false;
                                break;
                            }
                            a0 type2 = ((s0) it5.next()).getType();
                            kotlin.jvm.internal.r.d(type2, "it.type");
                            if (f(type2)) {
                                z4 = true;
                                break;
                            }
                        }
                    } else {
                        z4 = false;
                        break;
                    }
                    coroutinesCompatibilityMode = z4 ? DeserializedMemberDescriptor.CoroutinesCompatibilityMode.INCOMPATIBLE : DeserializedMemberDescriptor.CoroutinesCompatibilityMode.NEEDS_WRAPPER;
                }
                arrayList2.add(coroutinesCompatibilityMode);
            }
            DeserializedMemberDescriptor.CoroutinesCompatibilityMode coroutinesCompatibilityMode2 = (DeserializedMemberDescriptor.CoroutinesCompatibilityMode) kotlin.collections.s.s0(arrayList2);
            if (coroutinesCompatibilityMode2 == null) {
                coroutinesCompatibilityMode2 = DeserializedMemberDescriptor.CoroutinesCompatibilityMode.COMPATIBLE;
            }
            return (DeserializedMemberDescriptor.CoroutinesCompatibilityMode) kotlin.x.a.e(z ? DeserializedMemberDescriptor.CoroutinesCompatibilityMode.NEEDS_WRAPPER : DeserializedMemberDescriptor.CoroutinesCompatibilityMode.COMPATIBLE, coroutinesCompatibilityMode2);
        }
        return DeserializedMemberDescriptor.CoroutinesCompatibilityMode.COMPATIBLE;
    }

    private final boolean f(a0 a0Var) {
        return TypeUtilsKt.b(a0Var, new PropertyReference1() { // from class: kotlin.reflect.jvm.internal.impl.serialization.deserialization.MemberDeserializer$containsSuspendFunctionType$1
            @Override // kotlin.jvm.internal.PropertyReference1
            public Object get(Object obj) {
                return Boolean.valueOf(kotlin.reflect.jvm.internal.impl.builtins.f.o((a0) obj));
            }

            @Override // kotlin.jvm.internal.CallableReference, kotlin.reflect.KCallable
            /* JADX INFO: renamed from: getName */
            public String getF14721h() {
                return "isSuspendFunctionType";
            }

            @Override // kotlin.jvm.internal.CallableReference
            public KDeclarationContainer getOwner() {
                return kotlin.jvm.internal.v.d(kotlin.reflect.jvm.internal.impl.builtins.f.class, "deserialization");
            }

            @Override // kotlin.jvm.internal.CallableReference
            public String getSignature() {
                return "isSuspendFunctionType(Lorg/jetbrains/kotlin/types/KotlinType;)Z";
            }
        });
    }

    private final void g(TypeDeserializer typeDeserializer) {
        Iterator<T> it = typeDeserializer.k().iterator();
        while (it.hasNext()) {
            ((t0) it.next()).getUpperBounds();
        }
    }

    private final kotlin.reflect.jvm.internal.impl.descriptors.annotations.e h(final kotlin.reflect.jvm.internal.impl.protobuf.n nVar, int i, final AnnotatedCallableKind annotatedCallableKind) {
        return !kotlin.reflect.jvm.internal.impl.metadata.c.b.c.d(i).booleanValue() ? kotlin.reflect.jvm.internal.impl.descriptors.annotations.e.O.b() : new kotlin.reflect.jvm.internal.impl.serialization.deserialization.descriptors.i(this.f15542a.h(), new Function0<List<? extends kotlin.reflect.jvm.internal.impl.descriptors.annotations.c>>() { // from class: kotlin.reflect.jvm.internal.impl.serialization.deserialization.MemberDeserializer$getAnnotations$1
            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            {
                super(0);
            }

            @Override // kotlin.jvm.functions.Function0
            public final List<? extends kotlin.reflect.jvm.internal.impl.descriptors.annotations.c> invoke() {
                List<? extends kotlin.reflect.jvm.internal.impl.descriptors.annotations.c> listM0;
                MemberDeserializer memberDeserializer = this.this$0;
                s sVarC = memberDeserializer.c(memberDeserializer.f15542a.e());
                if (sVarC == null) {
                    listM0 = null;
                } else {
                    listM0 = CollectionsKt___CollectionsKt.M0(this.this$0.f15542a.c().d().e(sVarC, nVar, annotatedCallableKind));
                }
                return listM0 != null ? listM0 : kotlin.collections.u.j();
            }
        });
    }

    private final m0 i() {
        kotlin.reflect.jvm.internal.impl.descriptors.k kVarE = this.f15542a.e();
        kotlin.reflect.jvm.internal.impl.descriptors.d dVar = kVarE instanceof kotlin.reflect.jvm.internal.impl.descriptors.d ? (kotlin.reflect.jvm.internal.impl.descriptors.d) kVarE : null;
        if (dVar == null) {
            return null;
        }
        return dVar.F0();
    }

    private final kotlin.reflect.jvm.internal.impl.descriptors.annotations.e j(final ProtoBuf$Property protoBuf$Property, final boolean z) {
        return !kotlin.reflect.jvm.internal.impl.metadata.c.b.c.d(protoBuf$Property.getFlags()).booleanValue() ? kotlin.reflect.jvm.internal.impl.descriptors.annotations.e.O.b() : new kotlin.reflect.jvm.internal.impl.serialization.deserialization.descriptors.i(this.f15542a.h(), new Function0<List<? extends kotlin.reflect.jvm.internal.impl.descriptors.annotations.c>>() { // from class: kotlin.reflect.jvm.internal.impl.serialization.deserialization.MemberDeserializer$getPropertyFieldAnnotations$1
            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            {
                super(0);
            }

            @Override // kotlin.jvm.functions.Function0
            public final List<? extends kotlin.reflect.jvm.internal.impl.descriptors.annotations.c> invoke() {
                List<? extends kotlin.reflect.jvm.internal.impl.descriptors.annotations.c> listM0;
                MemberDeserializer memberDeserializer = this.this$0;
                s sVarC = memberDeserializer.c(memberDeserializer.f15542a.e());
                if (sVarC == null) {
                    listM0 = null;
                } else {
                    boolean z2 = z;
                    MemberDeserializer memberDeserializer2 = this.this$0;
                    ProtoBuf$Property protoBuf$Property2 = protoBuf$Property;
                    listM0 = z2 ? CollectionsKt___CollectionsKt.M0(memberDeserializer2.f15542a.c().d().j(sVarC, protoBuf$Property2)) : CollectionsKt___CollectionsKt.M0(memberDeserializer2.f15542a.c().d().h(sVarC, protoBuf$Property2));
                }
                return listM0 != null ? listM0 : kotlin.collections.u.j();
            }
        });
    }

    private final kotlin.reflect.jvm.internal.impl.descriptors.annotations.e k(final kotlin.reflect.jvm.internal.impl.protobuf.n nVar, final AnnotatedCallableKind annotatedCallableKind) {
        return new kotlin.reflect.jvm.internal.impl.serialization.deserialization.descriptors.a(this.f15542a.h(), new Function0<List<? extends kotlin.reflect.jvm.internal.impl.descriptors.annotations.c>>() { // from class: kotlin.reflect.jvm.internal.impl.serialization.deserialization.MemberDeserializer$getReceiverParameterAnnotations$1
            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            {
                super(0);
            }

            @Override // kotlin.jvm.functions.Function0
            public final List<? extends kotlin.reflect.jvm.internal.impl.descriptors.annotations.c> invoke() {
                List<kotlin.reflect.jvm.internal.impl.descriptors.annotations.c> listI;
                MemberDeserializer memberDeserializer = this.this$0;
                s sVarC = memberDeserializer.c(memberDeserializer.f15542a.e());
                if (sVarC == null) {
                    listI = null;
                } else {
                    listI = this.this$0.f15542a.c().d().i(sVarC, nVar, annotatedCallableKind);
                }
                return listI != null ? listI : kotlin.collections.u.j();
            }
        });
    }

    private final void l(kotlin.reflect.jvm.internal.impl.serialization.deserialization.descriptors.g gVar, m0 m0Var, m0 m0Var2, List<? extends t0> list, List<? extends v0> list2, a0 a0Var, Modality modality, kotlin.reflect.jvm.internal.impl.descriptors.s sVar, Map<? extends kotlin.reflect.jvm.internal.impl.descriptors.a.InterfaceC0321a<?>, ?> map, boolean z) {
        gVar.n1(m0Var, m0Var2, list, list2, a0Var, modality, sVar, map, e(gVar, m0Var, list2, list, a0Var, z));
    }

    private final int o(int i) {
        return (i & 63) + ((i >> 8) << 6);
    }

    /* JADX WARN: Code duplicated, block: B:15:0x007b  */
    private final List<v0> r(List<ProtoBuf$ValueParameter> list, final kotlin.reflect.jvm.internal.impl.protobuf.n nVar, final AnnotatedCallableKind annotatedCallableKind) {
        kotlin.reflect.jvm.internal.impl.descriptors.annotations.e eVarB;
        kotlin.reflect.jvm.internal.impl.descriptors.a aVar = (kotlin.reflect.jvm.internal.impl.descriptors.a) this.f15542a.e();
        kotlin.reflect.jvm.internal.impl.descriptors.k kVarB = aVar.b();
        kotlin.jvm.internal.r.d(kVarB, "callableDescriptor.containingDeclaration");
        final s sVarC = c(kVarB);
        ArrayList arrayList = new ArrayList(kotlin.collections.v.u(list, 10));
        int i = 0;
        for (Object obj : list) {
            int i2 = i + 1;
            if (i < 0) {
                kotlin.collections.s.t();
                throw null;
            }
            final ProtoBuf$ValueParameter protoBuf$ValueParameter = (ProtoBuf$ValueParameter) obj;
            int flags = protoBuf$ValueParameter.hasFlags() ? protoBuf$ValueParameter.getFlags() : 0;
            if (sVarC != null) {
                Boolean boolD = kotlin.reflect.jvm.internal.impl.metadata.c.b.c.d(flags);
                kotlin.jvm.internal.r.d(boolD, "HAS_ANNOTATIONS.get(flags)");
                if (boolD.booleanValue()) {
                    final int i3 = i;
                    eVarB = new kotlin.reflect.jvm.internal.impl.serialization.deserialization.descriptors.i(this.f15542a.h(), new Function0<List<? extends kotlin.reflect.jvm.internal.impl.descriptors.annotations.c>>() { // from class: kotlin.reflect.jvm.internal.impl.serialization.deserialization.MemberDeserializer$valueParameters$1$annotations$1
                        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                        {
                            super(0);
                        }

                        @Override // kotlin.jvm.functions.Function0
                        public final List<? extends kotlin.reflect.jvm.internal.impl.descriptors.annotations.c> invoke() {
                            return CollectionsKt___CollectionsKt.M0(this.this$0.f15542a.c().d().a(sVarC, nVar, annotatedCallableKind, i3, protoBuf$ValueParameter));
                        }
                    });
                } else {
                    eVarB = kotlin.reflect.jvm.internal.impl.descriptors.annotations.e.O.b();
                }
            } else {
                eVarB = kotlin.reflect.jvm.internal.impl.descriptors.annotations.e.O.b();
            }
            kotlin.reflect.jvm.internal.impl.name.f fVarB = q.b(this.f15542a.g(), protoBuf$ValueParameter.getName());
            a0 a0VarQ = this.f15542a.i().q(kotlin.reflect.jvm.internal.impl.metadata.c.f.n(protoBuf$ValueParameter, this.f15542a.j()));
            Boolean boolD2 = kotlin.reflect.jvm.internal.impl.metadata.c.b.G.d(flags);
            kotlin.jvm.internal.r.d(boolD2, "DECLARES_DEFAULT_VALUE.get(flags)");
            boolean zBooleanValue = boolD2.booleanValue();
            Boolean boolD3 = kotlin.reflect.jvm.internal.impl.metadata.c.b.H.d(flags);
            kotlin.jvm.internal.r.d(boolD3, "IS_CROSSINLINE.get(flags)");
            boolean zBooleanValue2 = boolD3.booleanValue();
            Boolean boolD4 = kotlin.reflect.jvm.internal.impl.metadata.c.b.I.d(flags);
            kotlin.jvm.internal.r.d(boolD4, "IS_NOINLINE.get(flags)");
            boolean zBooleanValue3 = boolD4.booleanValue();
            ProtoBuf$Type protoBuf$TypeQ = kotlin.reflect.jvm.internal.impl.metadata.c.f.q(protoBuf$ValueParameter, this.f15542a.j());
            a0 a0VarQ2 = protoBuf$TypeQ == null ? null : this.f15542a.i().q(protoBuf$TypeQ);
            o0 NO_SOURCE = o0.f14970a;
            kotlin.jvm.internal.r.d(NO_SOURCE, "NO_SOURCE");
            ArrayList arrayList2 = arrayList;
            arrayList2.add(new ValueParameterDescriptorImpl(aVar, null, i, eVarB, fVarB, a0VarQ, zBooleanValue, zBooleanValue2, zBooleanValue3, a0VarQ2, NO_SOURCE));
            arrayList = arrayList2;
            i = i2;
        }
        return CollectionsKt___CollectionsKt.M0(arrayList);
    }

    private final boolean s(DeserializedMemberDescriptor deserializedMemberDescriptor) {
        boolean z;
        if (!this.f15542a.c().g().g()) {
            return false;
        }
        List<kotlin.reflect.jvm.internal.impl.metadata.c.h> listE0 = deserializedMemberDescriptor.E0();
        if ((listE0 instanceof Collection) && listE0.isEmpty()) {
            z = true;
        } else {
            for (kotlin.reflect.jvm.internal.impl.metadata.c.h hVar : listE0) {
                if (kotlin.jvm.internal.r.a(hVar.b(), new kotlin.reflect.jvm.internal.impl.metadata.c.h.b(1, 3, 0, 4, null)) && hVar.a() == ProtoBuf$VersionRequirement.VersionKind.LANGUAGE_VERSION) {
                    z = false;
                }
            }
            z = true;
        }
        return z;
    }

    public final kotlin.reflect.jvm.internal.impl.descriptors.c m(ProtoBuf$Constructor proto, boolean z) {
        i iVarU0;
        TypeDeserializer typeDeserializerI;
        DeserializedMemberDescriptor.CoroutinesCompatibilityMode coroutinesCompatibilityModeE;
        kotlin.jvm.internal.r.e(proto, "proto");
        kotlin.reflect.jvm.internal.impl.descriptors.d dVar = (kotlin.reflect.jvm.internal.impl.descriptors.d) this.f15542a.e();
        int flags = proto.getFlags();
        AnnotatedCallableKind annotatedCallableKind = AnnotatedCallableKind.FUNCTION;
        kotlin.reflect.jvm.internal.impl.serialization.deserialization.descriptors.c cVar = new kotlin.reflect.jvm.internal.impl.serialization.deserialization.descriptors.c(dVar, null, h(proto, flags, annotatedCallableKind), z, CallableMemberDescriptor.Kind.DECLARATION, proto, this.f15542a.g(), this.f15542a.j(), this.f15542a.k(), this.f15542a.d(), null, 1024, null);
        MemberDeserializer memberDeserializerF = i.b(this.f15542a, cVar, kotlin.collections.u.j(), null, null, null, null, 60, null).f();
        List<ProtoBuf$ValueParameter> valueParameterList = proto.getValueParameterList();
        kotlin.jvm.internal.r.d(valueParameterList, "proto.valueParameterList");
        cVar.l1(memberDeserializerF.r(valueParameterList, proto, annotatedCallableKind), u.a(t.f15615a, kotlin.reflect.jvm.internal.impl.metadata.c.b.f15334d.d(proto.getFlags())));
        cVar.c1(dVar.n());
        cVar.U0(!kotlin.reflect.jvm.internal.impl.metadata.c.b.n.d(proto.getFlags()).booleanValue());
        kotlin.reflect.jvm.internal.impl.descriptors.k kVarE = this.f15542a.e();
        DeserializedClassDescriptor deserializedClassDescriptor = kVarE instanceof DeserializedClassDescriptor ? (DeserializedClassDescriptor) kVarE : null;
        if ((deserializedClassDescriptor != null && (iVarU0 = deserializedClassDescriptor.U0()) != null && (typeDeserializerI = iVarU0.i()) != null && typeDeserializerI.j()) && s(cVar)) {
            coroutinesCompatibilityModeE = DeserializedMemberDescriptor.CoroutinesCompatibilityMode.INCOMPATIBLE;
        } else {
            Collection<? extends v0> collectionF = cVar.f();
            kotlin.jvm.internal.r.d(collectionF, "descriptor.valueParameters");
            Collection<? extends t0> typeParameters = cVar.getTypeParameters();
            kotlin.jvm.internal.r.d(typeParameters, "descriptor.typeParameters");
            coroutinesCompatibilityModeE = e(cVar, null, collectionF, typeParameters, cVar.getReturnType(), false);
        }
        cVar.q1(coroutinesCompatibilityModeE);
        return cVar;
    }

    public final n0 n(ProtoBuf$Function proto) {
        a0 a0VarQ;
        kotlin.jvm.internal.r.e(proto, "proto");
        int flags = proto.hasFlags() ? proto.getFlags() : o(proto.getOldFlags());
        AnnotatedCallableKind annotatedCallableKind = AnnotatedCallableKind.FUNCTION;
        kotlin.reflect.jvm.internal.impl.descriptors.annotations.e eVarH = h(proto, flags, annotatedCallableKind);
        kotlin.reflect.jvm.internal.impl.descriptors.annotations.e eVarK = kotlin.reflect.jvm.internal.impl.metadata.c.f.d(proto) ? k(proto, annotatedCallableKind) : kotlin.reflect.jvm.internal.impl.descriptors.annotations.e.O.b();
        kotlin.reflect.jvm.internal.impl.metadata.c.i iVarB = kotlin.jvm.internal.r.a(DescriptorUtilsKt.i(this.f15542a.e()).c(q.b(this.f15542a.g(), proto.getName())), v.f15619a) ? kotlin.reflect.jvm.internal.impl.metadata.c.i.b.b() : this.f15542a.k();
        kotlin.reflect.jvm.internal.impl.name.f fVarB = q.b(this.f15542a.g(), proto.getName());
        t tVar = t.f15615a;
        kotlin.reflect.jvm.internal.impl.serialization.deserialization.descriptors.g gVar = new kotlin.reflect.jvm.internal.impl.serialization.deserialization.descriptors.g(this.f15542a.e(), null, eVarH, fVarB, u.b(tVar, kotlin.reflect.jvm.internal.impl.metadata.c.b.o.d(flags)), proto, this.f15542a.g(), this.f15542a.j(), iVarB, this.f15542a.d(), null, 1024, null);
        i iVar = this.f15542a;
        List<ProtoBuf$TypeParameter> typeParameterList = proto.getTypeParameterList();
        kotlin.jvm.internal.r.d(typeParameterList, "proto.typeParameterList");
        i iVarB2 = i.b(iVar, gVar, typeParameterList, null, null, null, null, 60, null);
        ProtoBuf$Type protoBuf$TypeH = kotlin.reflect.jvm.internal.impl.metadata.c.f.h(proto, this.f15542a.j());
        m0 m0VarF = null;
        if (protoBuf$TypeH != null && (a0VarQ = iVarB2.i().q(protoBuf$TypeH)) != null) {
            m0VarF = kotlin.reflect.jvm.internal.impl.resolve.b.f(gVar, a0VarQ, eVarK);
        }
        m0 m0VarI = i();
        List<t0> listK = iVarB2.i().k();
        MemberDeserializer memberDeserializerF = iVarB2.f();
        List<ProtoBuf$ValueParameter> valueParameterList = proto.getValueParameterList();
        kotlin.jvm.internal.r.d(valueParameterList, "proto.valueParameterList");
        List<v0> listR = memberDeserializerF.r(valueParameterList, proto, annotatedCallableKind);
        a0 a0VarQ2 = iVarB2.i().q(kotlin.reflect.jvm.internal.impl.metadata.c.f.j(proto, this.f15542a.j()));
        Modality modalityB = tVar.b(kotlin.reflect.jvm.internal.impl.metadata.c.b.f15335e.d(flags));
        kotlin.reflect.jvm.internal.impl.descriptors.s sVarA = u.a(tVar, kotlin.reflect.jvm.internal.impl.metadata.c.b.f15334d.d(flags));
        Map<? extends kotlin.reflect.jvm.internal.impl.descriptors.a.InterfaceC0321a<?>, ?> mapH = kotlin.collections.o0.h();
        kotlin.reflect.jvm.internal.impl.metadata.c.b.C0343b c0343b = kotlin.reflect.jvm.internal.impl.metadata.c.b.u;
        Boolean boolD = c0343b.d(flags);
        kotlin.jvm.internal.r.d(boolD, "IS_SUSPEND.get(flags)");
        l(gVar, m0VarF, m0VarI, listK, listR, a0VarQ2, modalityB, sVarA, mapH, boolD.booleanValue());
        Boolean boolD2 = kotlin.reflect.jvm.internal.impl.metadata.c.b.p.d(flags);
        kotlin.jvm.internal.r.d(boolD2, "IS_OPERATOR.get(flags)");
        gVar.b1(boolD2.booleanValue());
        Boolean boolD3 = kotlin.reflect.jvm.internal.impl.metadata.c.b.q.d(flags);
        kotlin.jvm.internal.r.d(boolD3, "IS_INFIX.get(flags)");
        gVar.Y0(boolD3.booleanValue());
        Boolean boolD4 = kotlin.reflect.jvm.internal.impl.metadata.c.b.t.d(flags);
        kotlin.jvm.internal.r.d(boolD4, "IS_EXTERNAL_FUNCTION.get(flags)");
        gVar.T0(boolD4.booleanValue());
        Boolean boolD5 = kotlin.reflect.jvm.internal.impl.metadata.c.b.r.d(flags);
        kotlin.jvm.internal.r.d(boolD5, "IS_INLINE.get(flags)");
        gVar.a1(boolD5.booleanValue());
        Boolean boolD6 = kotlin.reflect.jvm.internal.impl.metadata.c.b.s.d(flags);
        kotlin.jvm.internal.r.d(boolD6, "IS_TAILREC.get(flags)");
        gVar.e1(boolD6.booleanValue());
        Boolean boolD7 = c0343b.d(flags);
        kotlin.jvm.internal.r.d(boolD7, "IS_SUSPEND.get(flags)");
        gVar.d1(boolD7.booleanValue());
        Boolean boolD8 = kotlin.reflect.jvm.internal.impl.metadata.c.b.v.d(flags);
        kotlin.jvm.internal.r.d(boolD8, "IS_EXPECT_FUNCTION.get(flags)");
        gVar.S0(boolD8.booleanValue());
        gVar.U0(!kotlin.reflect.jvm.internal.impl.metadata.c.b.w.d(flags).booleanValue());
        Pair<kotlin.reflect.jvm.internal.impl.descriptors.a.InterfaceC0321a<?>, Object> pairA = this.f15542a.c().h().a(proto, gVar, this.f15542a.j(), iVarB2.i());
        if (pairA != null) {
            gVar.Q0(pairA.getFirst(), pairA.getSecond());
        }
        return gVar;
    }

    public final j0 p(ProtoBuf$Property proto) {
        ProtoBuf$Property protoBuf$Property;
        kotlin.reflect.jvm.internal.impl.descriptors.annotations.e eVarB;
        a0 a0VarQ;
        kotlin.reflect.jvm.internal.impl.serialization.deserialization.descriptors.f fVar;
        m0 m0VarF;
        kotlin.reflect.jvm.internal.impl.descriptors.impl.a0 a0Var;
        final kotlin.reflect.jvm.internal.impl.serialization.deserialization.descriptors.f fVar2;
        final ProtoBuf$Property protoBuf$Property2;
        boolean z;
        kotlin.reflect.jvm.internal.impl.descriptors.impl.b0 b0VarC;
        kotlin.reflect.jvm.internal.impl.descriptors.impl.a0 a0VarB;
        kotlin.jvm.internal.r.e(proto, "proto");
        int flags = proto.hasFlags() ? proto.getFlags() : o(proto.getOldFlags());
        kotlin.reflect.jvm.internal.impl.descriptors.k kVarE = this.f15542a.e();
        kotlin.reflect.jvm.internal.impl.descriptors.annotations.e eVarH = h(proto, flags, AnnotatedCallableKind.PROPERTY);
        t tVar = t.f15615a;
        kotlin.reflect.jvm.internal.impl.metadata.c.b.d<ProtoBuf$Modality> dVar = kotlin.reflect.jvm.internal.impl.metadata.c.b.f15335e;
        Modality modalityB = tVar.b(dVar.d(flags));
        kotlin.reflect.jvm.internal.impl.metadata.c.b.d<ProtoBuf$Visibility> dVar2 = kotlin.reflect.jvm.internal.impl.metadata.c.b.f15334d;
        kotlin.reflect.jvm.internal.impl.descriptors.s sVarA = u.a(tVar, dVar2.d(flags));
        Boolean boolD = kotlin.reflect.jvm.internal.impl.metadata.c.b.x.d(flags);
        kotlin.jvm.internal.r.d(boolD, "IS_VAR.get(flags)");
        boolean zBooleanValue = boolD.booleanValue();
        kotlin.reflect.jvm.internal.impl.name.f fVarB = q.b(this.f15542a.g(), proto.getName());
        CallableMemberDescriptor.Kind kindB = u.b(tVar, kotlin.reflect.jvm.internal.impl.metadata.c.b.o.d(flags));
        Boolean boolD2 = kotlin.reflect.jvm.internal.impl.metadata.c.b.B.d(flags);
        kotlin.jvm.internal.r.d(boolD2, "IS_LATEINIT.get(flags)");
        boolean zBooleanValue2 = boolD2.booleanValue();
        Boolean boolD3 = kotlin.reflect.jvm.internal.impl.metadata.c.b.A.d(flags);
        kotlin.jvm.internal.r.d(boolD3, "IS_CONST.get(flags)");
        boolean zBooleanValue3 = boolD3.booleanValue();
        Boolean boolD4 = kotlin.reflect.jvm.internal.impl.metadata.c.b.D.d(flags);
        kotlin.jvm.internal.r.d(boolD4, "IS_EXTERNAL_PROPERTY.get(flags)");
        boolean zBooleanValue4 = boolD4.booleanValue();
        Boolean boolD5 = kotlin.reflect.jvm.internal.impl.metadata.c.b.E.d(flags);
        kotlin.jvm.internal.r.d(boolD5, "IS_DELEGATED.get(flags)");
        boolean zBooleanValue5 = boolD5.booleanValue();
        Boolean boolD6 = kotlin.reflect.jvm.internal.impl.metadata.c.b.F.d(flags);
        kotlin.jvm.internal.r.d(boolD6, "IS_EXPECT_PROPERTY.get(flags)");
        t tVar2 = tVar;
        kotlin.reflect.jvm.internal.impl.serialization.deserialization.descriptors.f fVar3 = new kotlin.reflect.jvm.internal.impl.serialization.deserialization.descriptors.f(kVarE, null, eVarH, modalityB, sVarA, zBooleanValue, fVarB, kindB, zBooleanValue2, zBooleanValue3, zBooleanValue4, zBooleanValue5, boolD6.booleanValue(), proto, this.f15542a.g(), this.f15542a.j(), this.f15542a.k(), this.f15542a.d());
        i iVar = this.f15542a;
        List<ProtoBuf$TypeParameter> typeParameterList = proto.getTypeParameterList();
        kotlin.jvm.internal.r.d(typeParameterList, "proto.typeParameterList");
        i iVarB = i.b(iVar, fVar3, typeParameterList, null, null, null, null, 60, null);
        Boolean boolD7 = kotlin.reflect.jvm.internal.impl.metadata.c.b.y.d(flags);
        kotlin.jvm.internal.r.d(boolD7, "HAS_GETTER.get(flags)");
        boolean zBooleanValue6 = boolD7.booleanValue();
        if (zBooleanValue6 && kotlin.reflect.jvm.internal.impl.metadata.c.f.e(proto)) {
            protoBuf$Property = proto;
            eVarB = k(protoBuf$Property, AnnotatedCallableKind.PROPERTY_GETTER);
        } else {
            protoBuf$Property = proto;
            eVarB = kotlin.reflect.jvm.internal.impl.descriptors.annotations.e.O.b();
        }
        a0 a0VarQ2 = iVarB.i().q(kotlin.reflect.jvm.internal.impl.metadata.c.f.k(protoBuf$Property, this.f15542a.j()));
        List<t0> listK = iVarB.i().k();
        m0 m0VarI = i();
        ProtoBuf$Type protoBuf$TypeI = kotlin.reflect.jvm.internal.impl.metadata.c.f.i(protoBuf$Property, this.f15542a.j());
        if (protoBuf$TypeI == null || (a0VarQ = iVarB.i().q(protoBuf$TypeI)) == null) {
            fVar = fVar3;
            m0VarF = null;
        } else {
            fVar = fVar3;
            m0VarF = kotlin.reflect.jvm.internal.impl.resolve.b.f(fVar, a0VarQ, eVarB);
        }
        fVar.V0(a0VarQ2, listK, m0VarI, m0VarF);
        Boolean boolD8 = kotlin.reflect.jvm.internal.impl.metadata.c.b.c.d(flags);
        kotlin.jvm.internal.r.d(boolD8, "HAS_ANNOTATIONS.get(flags)");
        kotlin.reflect.jvm.internal.impl.metadata.c.b.d<ProtoBuf$Visibility> dVar3 = dVar2;
        kotlin.reflect.jvm.internal.impl.metadata.c.b.d<ProtoBuf$Modality> dVar4 = dVar;
        int iB = kotlin.reflect.jvm.internal.impl.metadata.c.b.b(boolD8.booleanValue(), dVar3.d(flags), dVar4.d(flags), false, false, false);
        if (zBooleanValue6) {
            int getterFlags = proto.hasGetterFlags() ? proto.getGetterFlags() : iB;
            Boolean boolD9 = kotlin.reflect.jvm.internal.impl.metadata.c.b.J.d(getterFlags);
            kotlin.jvm.internal.r.d(boolD9, "IS_NOT_DEFAULT.get(getterFlags)");
            boolean zBooleanValue7 = boolD9.booleanValue();
            Boolean boolD10 = kotlin.reflect.jvm.internal.impl.metadata.c.b.K.d(getterFlags);
            kotlin.jvm.internal.r.d(boolD10, "IS_EXTERNAL_ACCESSOR.get(getterFlags)");
            boolean zBooleanValue8 = boolD10.booleanValue();
            Boolean boolD11 = kotlin.reflect.jvm.internal.impl.metadata.c.b.L.d(getterFlags);
            kotlin.jvm.internal.r.d(boolD11, "IS_INLINE_ACCESSOR.get(getterFlags)");
            boolean zBooleanValue9 = boolD11.booleanValue();
            kotlin.reflect.jvm.internal.impl.descriptors.annotations.e eVarH2 = h(protoBuf$Property, getterFlags, AnnotatedCallableKind.PROPERTY_GETTER);
            if (zBooleanValue7) {
                tVar2 = tVar2;
                a0VarB = new kotlin.reflect.jvm.internal.impl.descriptors.impl.a0(fVar, eVarH2, tVar2.b(dVar4.d(getterFlags)), u.a(tVar2, dVar3.d(getterFlags)), !zBooleanValue7, zBooleanValue8, zBooleanValue9, fVar.g(), null, o0.f14970a);
            } else {
                a0VarB = kotlin.reflect.jvm.internal.impl.resolve.b.b(fVar, eVarH2);
                kotlin.jvm.internal.r.d(a0VarB, "{\n                Descri…nnotations)\n            }");
            }
            a0VarB.M0(fVar.getReturnType());
            a0Var = a0VarB;
        } else {
            dVar4 = dVar4;
            dVar3 = dVar3;
            a0Var = null;
        }
        Boolean boolD12 = kotlin.reflect.jvm.internal.impl.metadata.c.b.z.d(flags);
        kotlin.jvm.internal.r.d(boolD12, "HAS_SETTER.get(flags)");
        if (boolD12.booleanValue()) {
            if (proto.hasSetterFlags()) {
                iB = proto.getSetterFlags();
            }
            int i = iB;
            Boolean boolD13 = kotlin.reflect.jvm.internal.impl.metadata.c.b.J.d(i);
            kotlin.jvm.internal.r.d(boolD13, "IS_NOT_DEFAULT.get(setterFlags)");
            boolean zBooleanValue10 = boolD13.booleanValue();
            Boolean boolD14 = kotlin.reflect.jvm.internal.impl.metadata.c.b.K.d(i);
            kotlin.jvm.internal.r.d(boolD14, "IS_EXTERNAL_ACCESSOR.get(setterFlags)");
            boolean zBooleanValue11 = boolD14.booleanValue();
            Boolean boolD15 = kotlin.reflect.jvm.internal.impl.metadata.c.b.L.d(i);
            kotlin.jvm.internal.r.d(boolD15, "IS_INLINE_ACCESSOR.get(setterFlags)");
            boolean zBooleanValue12 = boolD15.booleanValue();
            AnnotatedCallableKind annotatedCallableKind = AnnotatedCallableKind.PROPERTY_SETTER;
            kotlin.reflect.jvm.internal.impl.descriptors.annotations.e eVarH3 = h(protoBuf$Property, i, annotatedCallableKind);
            if (zBooleanValue10) {
                t tVar3 = tVar2;
                kotlin.reflect.jvm.internal.impl.descriptors.impl.b0 b0Var = new kotlin.reflect.jvm.internal.impl.descriptors.impl.b0(fVar, eVarH3, tVar3.b(dVar4.d(i)), u.a(tVar3, dVar3.d(i)), !zBooleanValue10, zBooleanValue11, zBooleanValue12, fVar.g(), null, o0.f14970a);
                z = true;
                fVar2 = fVar;
                protoBuf$Property2 = protoBuf$Property;
                b0Var.N0((v0) kotlin.collections.s.C0(i.b(iVarB, b0Var, kotlin.collections.u.j(), null, null, null, null, 60, null).f().r(kotlin.collections.t.d(proto.getSetterValueParameter()), protoBuf$Property2, annotatedCallableKind)));
                b0VarC = b0Var;
            } else {
                fVar2 = fVar;
                protoBuf$Property2 = protoBuf$Property;
                z = true;
                b0VarC = kotlin.reflect.jvm.internal.impl.resolve.b.c(fVar2, eVarH3, kotlin.reflect.jvm.internal.impl.descriptors.annotations.e.O.b());
                kotlin.jvm.internal.r.d(b0VarC, "{\n                Descri…          )\n            }");
            }
        } else {
            fVar2 = fVar;
            protoBuf$Property2 = protoBuf$Property;
            z = true;
            b0VarC = null;
        }
        Boolean boolD16 = kotlin.reflect.jvm.internal.impl.metadata.c.b.C.d(flags);
        kotlin.jvm.internal.r.d(boolD16, "HAS_CONSTANT.get(flags)");
        if (boolD16.booleanValue()) {
            fVar2.G0(this.f15542a.h().e(new Function0<kotlin.reflect.jvm.internal.impl.resolve.constants.g<?>>() { // from class: kotlin.reflect.jvm.internal.impl.serialization.deserialization.MemberDeserializer$loadProperty$3
                /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                {
                    super(0);
                }

                @Override // kotlin.jvm.functions.Function0
                public final kotlin.reflect.jvm.internal.impl.resolve.constants.g<?> invoke() {
                    MemberDeserializer memberDeserializer = this.this$0;
                    s sVarC = memberDeserializer.c(memberDeserializer.f15542a.e());
                    kotlin.jvm.internal.r.c(sVarC);
                    a<kotlin.reflect.jvm.internal.impl.descriptors.annotations.c, kotlin.reflect.jvm.internal.impl.resolve.constants.g<?>> aVarD = this.this$0.f15542a.c().d();
                    ProtoBuf$Property protoBuf$Property3 = protoBuf$Property2;
                    a0 returnType = fVar2.getReturnType();
                    kotlin.jvm.internal.r.d(returnType, "property.returnType");
                    return aVarD.g(sVarC, protoBuf$Property3, returnType);
                }
            }));
        }
        fVar2.Y0(a0Var, b0VarC, new kotlin.reflect.jvm.internal.impl.descriptors.impl.n(j(protoBuf$Property2, false), fVar2), new kotlin.reflect.jvm.internal.impl.descriptors.impl.n(j(protoBuf$Property2, z), fVar2), d(fVar2, iVarB.i()));
        return fVar2;
    }

    public final kotlin.reflect.jvm.internal.impl.descriptors.s0 q(ProtoBuf$TypeAlias proto) {
        kotlin.jvm.internal.r.e(proto, "proto");
        kotlin.reflect.jvm.internal.impl.descriptors.annotations.e.a aVar = kotlin.reflect.jvm.internal.impl.descriptors.annotations.e.O;
        List<ProtoBuf$Annotation> annotationList = proto.getAnnotationList();
        kotlin.jvm.internal.r.d(annotationList, "proto.annotationList");
        ArrayList arrayList = new ArrayList(kotlin.collections.v.u(annotationList, 10));
        for (ProtoBuf$Annotation it : annotationList) {
            c cVar = this.b;
            kotlin.jvm.internal.r.d(it, "it");
            arrayList.add(cVar.a(it, this.f15542a.g()));
        }
        kotlin.reflect.jvm.internal.impl.serialization.deserialization.descriptors.h hVar = new kotlin.reflect.jvm.internal.impl.serialization.deserialization.descriptors.h(this.f15542a.h(), this.f15542a.e(), aVar.a(arrayList), q.b(this.f15542a.g(), proto.getName()), u.a(t.f15615a, kotlin.reflect.jvm.internal.impl.metadata.c.b.f15334d.d(proto.getFlags())), proto, this.f15542a.g(), this.f15542a.j(), this.f15542a.k(), this.f15542a.d());
        i iVar = this.f15542a;
        List<ProtoBuf$TypeParameter> typeParameterList = proto.getTypeParameterList();
        kotlin.jvm.internal.r.d(typeParameterList, "proto.typeParameterList");
        i iVarB = i.b(iVar, hVar, typeParameterList, null, null, null, null, 60, null);
        hVar.M0(iVarB.i().k(), iVarB.i().m(kotlin.reflect.jvm.internal.impl.metadata.c.f.o(proto, this.f15542a.j()), false), iVarB.i().m(kotlin.reflect.jvm.internal.impl.metadata.c.f.b(proto, this.f15542a.j()), false), d(hVar, iVarB.i()));
        return hVar;
    }
}
