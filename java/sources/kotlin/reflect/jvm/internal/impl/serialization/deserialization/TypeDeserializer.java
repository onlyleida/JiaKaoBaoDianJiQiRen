package kotlin.reflect.jvm.internal.impl.serialization.deserialization;

import java.util.ArrayList;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;
import kotlin.collections.CollectionsKt___CollectionsKt;
import kotlin.collections.o0;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.reflect.jvm.internal.impl.descriptors.FindClassInModuleKt;
import kotlin.reflect.jvm.internal.impl.descriptors.t0;
import kotlin.reflect.jvm.internal.impl.metadata.ProtoBuf$Type;
import kotlin.reflect.jvm.internal.impl.metadata.ProtoBuf$TypeParameter;
import kotlin.reflect.jvm.internal.impl.resolve.descriptorUtil.DescriptorUtilsKt;
import kotlin.reflect.jvm.internal.impl.serialization.deserialization.descriptors.DeserializedTypeParameterDescriptor;
import kotlin.reflect.jvm.internal.impl.types.KotlinTypeFactory;
import kotlin.reflect.jvm.internal.impl.types.StarProjectionImpl;
import kotlin.reflect.jvm.internal.impl.types.Variance;
import kotlin.reflect.jvm.internal.impl.types.a0;
import kotlin.reflect.jvm.internal.impl.types.b0;
import kotlin.reflect.jvm.internal.impl.types.f0;
import kotlin.reflect.jvm.internal.impl.types.i0;
import kotlin.reflect.jvm.internal.impl.types.j0;
import kotlin.reflect.jvm.internal.impl.types.q0;
import kotlin.reflect.jvm.internal.impl.types.s0;
import kotlin.reflect.jvm.internal.impl.types.typeUtil.TypeUtilsKt;
import kotlin.reflect.jvm.internal.impl.types.u0;
import kotlin.sequences.SequencesKt__SequencesKt;
import kotlin.sequences.SequencesKt___SequencesKt;

/* JADX INFO: loaded from: classes6.dex */
public final class TypeDeserializer {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final i f15543a;
    private final TypeDeserializer b;
    private final String c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final String f15544d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private boolean f15545e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private final Function1<Integer, kotlin.reflect.jvm.internal.impl.descriptors.f> f15546f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private final Function1<Integer, kotlin.reflect.jvm.internal.impl.descriptors.f> f15547g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private final Map<Integer, t0> f15548h;

    public TypeDeserializer(i c, TypeDeserializer typeDeserializer, List<ProtoBuf$TypeParameter> typeParameterProtos, String debugName, String containerPresentableName, boolean z) {
        Map<Integer, t0> linkedHashMap;
        kotlin.jvm.internal.r.e(c, "c");
        kotlin.jvm.internal.r.e(typeParameterProtos, "typeParameterProtos");
        kotlin.jvm.internal.r.e(debugName, "debugName");
        kotlin.jvm.internal.r.e(containerPresentableName, "containerPresentableName");
        this.f15543a = c;
        this.b = typeDeserializer;
        this.c = debugName;
        this.f15544d = containerPresentableName;
        this.f15545e = z;
        this.f15546f = c.h().g(new Function1<Integer, kotlin.reflect.jvm.internal.impl.descriptors.f>() { // from class: kotlin.reflect.jvm.internal.impl.serialization.deserialization.TypeDeserializer$classifierDescriptors$1
            {
                super(1);
            }

            @Override // kotlin.jvm.functions.Function1
            public /* bridge */ /* synthetic */ kotlin.reflect.jvm.internal.impl.descriptors.f invoke(Integer num) {
                return invoke(num.intValue());
            }

            public final kotlin.reflect.jvm.internal.impl.descriptors.f invoke(int i) {
                return this.this$0.d(i);
            }
        });
        this.f15547g = c.h().g(new Function1<Integer, kotlin.reflect.jvm.internal.impl.descriptors.f>() { // from class: kotlin.reflect.jvm.internal.impl.serialization.deserialization.TypeDeserializer$typeAliasDescriptors$1
            {
                super(1);
            }

            @Override // kotlin.jvm.functions.Function1
            public /* bridge */ /* synthetic */ kotlin.reflect.jvm.internal.impl.descriptors.f invoke(Integer num) {
                return invoke(num.intValue());
            }

            public final kotlin.reflect.jvm.internal.impl.descriptors.f invoke(int i) {
                return this.this$0.f(i);
            }
        });
        if (typeParameterProtos.isEmpty()) {
            linkedHashMap = o0.h();
        } else {
            linkedHashMap = new LinkedHashMap<>();
            int i = 0;
            for (ProtoBuf$TypeParameter protoBuf$TypeParameter : typeParameterProtos) {
                linkedHashMap.put(Integer.valueOf(protoBuf$TypeParameter.getId()), new DeserializedTypeParameterDescriptor(this.f15543a, protoBuf$TypeParameter, i));
                i++;
            }
        }
        this.f15548h = linkedHashMap;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final kotlin.reflect.jvm.internal.impl.descriptors.f d(int i) {
        kotlin.reflect.jvm.internal.impl.name.b bVarA = q.a(this.f15543a.g(), i);
        return bVarA.k() ? this.f15543a.c().b(bVarA) : FindClassInModuleKt.b(this.f15543a.c().p(), bVarA);
    }

    private final f0 e(int i) {
        if (q.a(this.f15543a.g(), i).k()) {
            return this.f15543a.c().n().a();
        }
        return null;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final kotlin.reflect.jvm.internal.impl.descriptors.f f(int i) {
        kotlin.reflect.jvm.internal.impl.name.b bVarA = q.a(this.f15543a.g(), i);
        if (bVarA.k()) {
            return null;
        }
        return FindClassInModuleKt.d(this.f15543a.c().p(), bVarA);
    }

    private final f0 g(a0 a0Var, a0 a0Var2) {
        kotlin.reflect.jvm.internal.impl.builtins.g gVarH = TypeUtilsKt.h(a0Var);
        kotlin.reflect.jvm.internal.impl.descriptors.annotations.e annotations = a0Var.getAnnotations();
        a0 a0VarH = kotlin.reflect.jvm.internal.impl.builtins.f.h(a0Var);
        List listV = CollectionsKt___CollectionsKt.V(kotlin.reflect.jvm.internal.impl.builtins.f.j(a0Var), 1);
        ArrayList arrayList = new ArrayList(kotlin.collections.v.u(listV, 10));
        Iterator it = listV.iterator();
        while (it.hasNext()) {
            arrayList.add(((s0) it.next()).getType());
        }
        return kotlin.reflect.jvm.internal.impl.builtins.f.a(gVarH, annotations, a0VarH, arrayList, null, a0Var2, true).M0(a0Var.J0());
    }

    private final f0 h(kotlin.reflect.jvm.internal.impl.descriptors.annotations.e eVar, q0 q0Var, List<? extends s0> list, boolean z) {
        int size;
        int size2 = q0Var.getParameters().size() - list.size();
        f0 f0VarI = null;
        if (size2 == 0) {
            f0VarI = i(eVar, q0Var, list, z);
        } else if (size2 == 1 && (size = list.size() - 1) >= 0) {
            q0 q0VarI = q0Var.k().X(size).i();
            kotlin.jvm.internal.r.d(q0VarI, "functionTypeConstructor.…on(arity).typeConstructor");
            f0VarI = KotlinTypeFactory.i(eVar, q0VarI, list, z, null, 16, null);
        }
        if (f0VarI != null) {
            return f0VarI;
        }
        f0 f0VarN = kotlin.reflect.jvm.internal.impl.types.t.n(kotlin.jvm.internal.r.m("Bad suspend function in metadata with constructor: ", q0Var), list);
        kotlin.jvm.internal.r.d(f0VarN, "createErrorTypeWithArgum…      arguments\n        )");
        return f0VarN;
    }

    private final f0 i(kotlin.reflect.jvm.internal.impl.descriptors.annotations.e eVar, q0 q0Var, List<? extends s0> list, boolean z) {
        f0 f0VarI = KotlinTypeFactory.i(eVar, q0Var, list, z, null, 16, null);
        if (kotlin.reflect.jvm.internal.impl.builtins.f.n(f0VarI)) {
            return p(f0VarI);
        }
        return null;
    }

    private final t0 l(int i) {
        t0 t0Var = this.f15548h.get(Integer.valueOf(i));
        if (t0Var != null) {
            return t0Var;
        }
        TypeDeserializer typeDeserializer = this.b;
        if (typeDeserializer == null) {
            return null;
        }
        return typeDeserializer.l(i);
    }

    private static final List<ProtoBuf$Type.Argument> n(ProtoBuf$Type protoBuf$Type, TypeDeserializer typeDeserializer) {
        List<ProtoBuf$Type.Argument> argumentList = protoBuf$Type.getArgumentList();
        kotlin.jvm.internal.r.d(argumentList, "argumentList");
        ProtoBuf$Type protoBuf$TypeG = kotlin.reflect.jvm.internal.impl.metadata.c.f.g(protoBuf$Type, typeDeserializer.f15543a.j());
        List<ProtoBuf$Type.Argument> listN = protoBuf$TypeG == null ? null : n(protoBuf$TypeG, typeDeserializer);
        if (listN == null) {
            listN = kotlin.collections.u.j();
        }
        return CollectionsKt___CollectionsKt.x0(argumentList, listN);
    }

    public static /* synthetic */ f0 o(TypeDeserializer typeDeserializer, ProtoBuf$Type protoBuf$Type, boolean z, int i, Object obj) {
        if ((i & 2) != 0) {
            z = true;
        }
        return typeDeserializer.m(protoBuf$Type, z);
    }

    private final f0 p(a0 a0Var) {
        boolean zG = this.f15543a.c().g().g();
        s0 s0Var = (s0) kotlin.collections.s.q0(kotlin.reflect.jvm.internal.impl.builtins.f.j(a0Var));
        a0 type = s0Var == null ? null : s0Var.getType();
        if (type == null) {
            return null;
        }
        kotlin.reflect.jvm.internal.impl.descriptors.f fVarC = type.I0().u();
        kotlin.reflect.jvm.internal.impl.name.c cVarI = fVarC == null ? null : DescriptorUtilsKt.i(fVarC);
        boolean z = true;
        if (type.H0().size() != 1 || (!kotlin.reflect.jvm.internal.impl.builtins.i.a(cVarI, true) && !kotlin.reflect.jvm.internal.impl.builtins.i.a(cVarI, false))) {
            return (f0) a0Var;
        }
        a0 type2 = ((s0) kotlin.collections.s.C0(type.H0())).getType();
        kotlin.jvm.internal.r.d(type2, "continuationArgumentType.arguments.single().type");
        kotlin.reflect.jvm.internal.impl.descriptors.k kVarE = this.f15543a.e();
        if (!(kVarE instanceof kotlin.reflect.jvm.internal.impl.descriptors.a)) {
            kVarE = null;
        }
        kotlin.reflect.jvm.internal.impl.descriptors.a aVar = (kotlin.reflect.jvm.internal.impl.descriptors.a) kVarE;
        if (kotlin.jvm.internal.r.a(aVar != null ? DescriptorUtilsKt.e(aVar) : null, v.f15619a)) {
            return g(a0Var, type2);
        }
        if (!this.f15545e && (!zG || !kotlin.reflect.jvm.internal.impl.builtins.i.a(cVarI, !zG))) {
            z = false;
        }
        this.f15545e = z;
        return g(a0Var, type2);
    }

    private final s0 r(t0 t0Var, ProtoBuf$Type.Argument argument) {
        if (argument.getProjection() == ProtoBuf$Type.Argument.Projection.STAR) {
            return t0Var == null ? new j0(this.f15543a.c().p().k()) : new StarProjectionImpl(t0Var);
        }
        t tVar = t.f15615a;
        ProtoBuf$Type.Argument.Projection projection = argument.getProjection();
        kotlin.jvm.internal.r.d(projection, "typeArgumentProto.projection");
        Variance varianceC = tVar.c(projection);
        ProtoBuf$Type protoBuf$TypeM = kotlin.reflect.jvm.internal.impl.metadata.c.f.m(argument, this.f15543a.j());
        return protoBuf$TypeM == null ? new u0(kotlin.reflect.jvm.internal.impl.types.t.j("No type recorded")) : new u0(varianceC, q(protoBuf$TypeM));
    }

    private final q0 s(ProtoBuf$Type protoBuf$Type) {
        kotlin.reflect.jvm.internal.impl.descriptors.f fVarInvoke;
        Object next;
        if (protoBuf$Type.hasClassName()) {
            fVarInvoke = this.f15546f.invoke(Integer.valueOf(protoBuf$Type.getClassName()));
            if (fVarInvoke == null) {
                fVarInvoke = t(this, protoBuf$Type, protoBuf$Type.getClassName());
            }
        } else if (protoBuf$Type.hasTypeParameter()) {
            fVarInvoke = l(protoBuf$Type.getTypeParameter());
            if (fVarInvoke == null) {
                q0 q0VarK = kotlin.reflect.jvm.internal.impl.types.t.k("Unknown type parameter " + protoBuf$Type.getTypeParameter() + ". Please try recompiling module containing \"" + this.f15544d + '\"');
                kotlin.jvm.internal.r.d(q0VarK, "createErrorTypeConstruct…\\\"\"\n                    )");
                return q0VarK;
            }
        } else if (protoBuf$Type.hasTypeParameterName()) {
            String string = this.f15543a.g().getString(protoBuf$Type.getTypeParameterName());
            Iterator<T> it = k().iterator();
            do {
                if (!it.hasNext()) {
                    next = null;
                    break;
                }
                next = it.next();
            } while (!kotlin.jvm.internal.r.a(((t0) next).getName().b(), string));
            fVarInvoke = (t0) next;
            if (fVarInvoke == null) {
                q0 q0VarK2 = kotlin.reflect.jvm.internal.impl.types.t.k("Deserialized type parameter " + string + " in " + this.f15543a.e());
                kotlin.jvm.internal.r.d(q0VarK2, "createErrorTypeConstruct….containingDeclaration}\")");
                return q0VarK2;
            }
        } else {
            if (!protoBuf$Type.hasTypeAliasName()) {
                q0 q0VarK3 = kotlin.reflect.jvm.internal.impl.types.t.k("Unknown type");
                kotlin.jvm.internal.r.d(q0VarK3, "createErrorTypeConstructor(\"Unknown type\")");
                return q0VarK3;
            }
            fVarInvoke = this.f15547g.invoke(Integer.valueOf(protoBuf$Type.getTypeAliasName()));
            if (fVarInvoke == null) {
                fVarInvoke = t(this, protoBuf$Type, protoBuf$Type.getTypeAliasName());
            }
        }
        q0 q0VarI = fVarInvoke.i();
        kotlin.jvm.internal.r.d(q0VarI, "classifier.typeConstructor");
        return q0VarI;
    }

    private static final kotlin.reflect.jvm.internal.impl.descriptors.d t(final TypeDeserializer typeDeserializer, ProtoBuf$Type protoBuf$Type, int i) {
        kotlin.reflect.jvm.internal.impl.name.b bVarA = q.a(typeDeserializer.f15543a.g(), i);
        List<Integer> listB = SequencesKt___SequencesKt.B(SequencesKt___SequencesKt.u(SequencesKt__SequencesKt.h(protoBuf$Type, new Function1<ProtoBuf$Type, ProtoBuf$Type>() { // from class: kotlin.reflect.jvm.internal.impl.serialization.deserialization.TypeDeserializer$typeConstructor$notFoundClass$typeParametersCount$1
            {
                super(1);
            }

            @Override // kotlin.jvm.functions.Function1
            public final ProtoBuf$Type invoke(ProtoBuf$Type it) {
                kotlin.jvm.internal.r.e(it, "it");
                return kotlin.reflect.jvm.internal.impl.metadata.c.f.g(it, this.this$0.f15543a.j());
            }
        }), new Function1<ProtoBuf$Type, Integer>() { // from class: kotlin.reflect.jvm.internal.impl.serialization.deserialization.TypeDeserializer$typeConstructor$notFoundClass$typeParametersCount$2
            @Override // kotlin.jvm.functions.Function1
            public final Integer invoke(ProtoBuf$Type it) {
                kotlin.jvm.internal.r.e(it, "it");
                return Integer.valueOf(it.getArgumentCount());
            }
        }));
        int iM = SequencesKt___SequencesKt.m(SequencesKt__SequencesKt.h(bVarA, TypeDeserializer$typeConstructor$notFoundClass$classNestingLevel$1.INSTANCE));
        while (listB.size() < iM) {
            listB.add(0);
        }
        return typeDeserializer.f15543a.c().q().d(bVarA, listB);
    }

    public final boolean j() {
        return this.f15545e;
    }

    public final List<t0> k() {
        return CollectionsKt___CollectionsKt.M0(this.f15548h.values());
    }

    public final f0 m(final ProtoBuf$Type proto, boolean z) {
        f0 f0VarI;
        f0 f0VarJ;
        kotlin.jvm.internal.r.e(proto, "proto");
        f0 f0VarE = proto.hasClassName() ? e(proto.getClassName()) : proto.hasTypeAliasName() ? e(proto.getTypeAliasName()) : null;
        if (f0VarE != null) {
            return f0VarE;
        }
        q0 q0VarS = s(proto);
        if (kotlin.reflect.jvm.internal.impl.types.t.r(q0VarS.u())) {
            f0 f0VarO = kotlin.reflect.jvm.internal.impl.types.t.o(q0VarS.toString(), q0VarS);
            kotlin.jvm.internal.r.d(f0VarO, "createErrorTypeWithCusto….toString(), constructor)");
            return f0VarO;
        }
        kotlin.reflect.jvm.internal.impl.serialization.deserialization.descriptors.a aVar = new kotlin.reflect.jvm.internal.impl.serialization.deserialization.descriptors.a(this.f15543a.h(), new Function0<List<? extends kotlin.reflect.jvm.internal.impl.descriptors.annotations.c>>() { // from class: kotlin.reflect.jvm.internal.impl.serialization.deserialization.TypeDeserializer$simpleType$annotations$1
            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            {
                super(0);
            }

            @Override // kotlin.jvm.functions.Function0
            public final List<? extends kotlin.reflect.jvm.internal.impl.descriptors.annotations.c> invoke() {
                return this.this$0.f15543a.c().d().c(proto, this.this$0.f15543a.g());
            }
        });
        List<ProtoBuf$Type.Argument> listN = n(proto, this);
        ArrayList arrayList = new ArrayList(kotlin.collections.v.u(listN, 10));
        int i = 0;
        for (Object obj : listN) {
            int i2 = i + 1;
            if (i < 0) {
                kotlin.collections.s.t();
                throw null;
            }
            List<t0> parameters = q0VarS.getParameters();
            kotlin.jvm.internal.r.d(parameters, "constructor.parameters");
            arrayList.add(r((t0) kotlin.collections.s.f0(parameters, i), (ProtoBuf$Type.Argument) obj));
            i = i2;
        }
        List<? extends s0> listM0 = CollectionsKt___CollectionsKt.M0(arrayList);
        kotlin.reflect.jvm.internal.impl.descriptors.f fVarC = q0VarS.u();
        if (z && (fVarC instanceof kotlin.reflect.jvm.internal.impl.descriptors.s0)) {
            KotlinTypeFactory kotlinTypeFactory = KotlinTypeFactory.f15645a;
            f0 f0VarB = KotlinTypeFactory.b((kotlin.reflect.jvm.internal.impl.descriptors.s0) fVarC, listM0);
            f0VarI = f0VarB.M0(b0.b(f0VarB) || proto.getNullable()).Q0(kotlin.reflect.jvm.internal.impl.descriptors.annotations.e.O.a(CollectionsKt___CollectionsKt.v0(aVar, f0VarB.getAnnotations())));
        } else {
            Boolean boolD = kotlin.reflect.jvm.internal.impl.metadata.c.b.f15333a.d(proto.getFlags());
            kotlin.jvm.internal.r.d(boolD, "SUSPEND_TYPE.get(proto.flags)");
            if (boolD.booleanValue()) {
                f0VarI = h(aVar, q0VarS, listM0, proto.getNullable());
            } else {
                f0VarI = KotlinTypeFactory.i(aVar, q0VarS, listM0, proto.getNullable(), null, 16, null);
                Boolean boolD2 = kotlin.reflect.jvm.internal.impl.metadata.c.b.b.d(proto.getFlags());
                kotlin.jvm.internal.r.d(boolD2, "DEFINITELY_NOT_NULL_TYPE.get(proto.flags)");
                if (boolD2.booleanValue()) {
                    kotlin.reflect.jvm.internal.impl.types.k kVarC = kotlin.reflect.jvm.internal.impl.types.k.a.c(kotlin.reflect.jvm.internal.impl.types.k.f15692d, f0VarI, false, 2, null);
                    if (kVarC == null) {
                        throw new IllegalStateException(("null DefinitelyNotNullType for '" + f0VarI + '\'').toString());
                    }
                    f0VarI = kVarC;
                }
            }
        }
        ProtoBuf$Type protoBuf$TypeA = kotlin.reflect.jvm.internal.impl.metadata.c.f.a(proto, this.f15543a.j());
        if (protoBuf$TypeA != null && (f0VarJ = i0.j(f0VarI, m(protoBuf$TypeA, false))) != null) {
            f0VarI = f0VarJ;
        }
        return proto.hasClassName() ? this.f15543a.c().t().a(q.a(this.f15543a.g(), proto.getClassName()), f0VarI) : f0VarI;
    }

    public final a0 q(ProtoBuf$Type proto) {
        kotlin.jvm.internal.r.e(proto, "proto");
        if (!proto.hasFlexibleTypeCapabilitiesId()) {
            return m(proto, true);
        }
        String string = this.f15543a.g().getString(proto.getFlexibleTypeCapabilitiesId());
        f0 f0VarO = o(this, proto, false, 2, null);
        ProtoBuf$Type protoBuf$TypeC = kotlin.reflect.jvm.internal.impl.metadata.c.f.c(proto, this.f15543a.j());
        kotlin.jvm.internal.r.c(protoBuf$TypeC);
        return this.f15543a.c().l().a(proto, string, f0VarO, o(this, protoBuf$TypeC, false, 2, null));
    }

    public String toString() {
        String str = this.c;
        TypeDeserializer typeDeserializer = this.b;
        return kotlin.jvm.internal.r.m(str, typeDeserializer == null ? "" : kotlin.jvm.internal.r.m(". Child of ", typeDeserializer.c));
    }

    public /* synthetic */ TypeDeserializer(i iVar, TypeDeserializer typeDeserializer, List list, String str, String str2, boolean z, int i, kotlin.jvm.internal.o oVar) {
        this(iVar, typeDeserializer, list, str, str2, (i & 32) != 0 ? false : z);
    }
}
