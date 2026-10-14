package kotlin.reflect.jvm.internal.impl.descriptors.impl;

import java.util.List;
import java.util.Objects;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.PropertyReference1Impl;
import kotlin.reflect.KProperty;
import kotlin.reflect.jvm.internal.impl.descriptors.CallableMemberDescriptor;
import kotlin.reflect.jvm.internal.impl.descriptors.Modality;
import kotlin.reflect.jvm.internal.impl.descriptors.m0;
import kotlin.reflect.jvm.internal.impl.descriptors.o0;
import kotlin.reflect.jvm.internal.impl.descriptors.s0;
import kotlin.reflect.jvm.internal.impl.descriptors.v0;
import kotlin.reflect.jvm.internal.impl.types.TypeSubstitutor;
import kotlin.reflect.jvm.internal.impl.types.Variance;

/* JADX INFO: loaded from: classes6.dex */
public final class TypeAliasConstructorDescriptorImpl extends o implements f0 {
    private final kotlin.reflect.jvm.internal.impl.storage.m D;
    private final s0 E;
    private kotlin.reflect.jvm.internal.impl.descriptors.c F;
    static final /* synthetic */ KProperty<Object>[] H = {kotlin.jvm.internal.v.i(new PropertyReference1Impl(kotlin.jvm.internal.v.b(TypeAliasConstructorDescriptorImpl.class), "withDispatchReceiver", "getWithDispatchReceiver()Lorg/jetbrains/kotlin/descriptors/impl/TypeAliasConstructorDescriptor;"))};
    public static final a G = new a(null);

    public static final class a {
        private a() {
        }

        public /* synthetic */ a(kotlin.jvm.internal.o oVar) {
            this();
        }

        /* JADX INFO: Access modifiers changed from: private */
        public final TypeSubstitutor c(s0 s0Var) {
            if (s0Var.r() == null) {
                return null;
            }
            return TypeSubstitutor.f(s0Var.F());
        }

        public final f0 b(kotlin.reflect.jvm.internal.impl.storage.m storageManager, s0 typeAliasDescriptor, kotlin.reflect.jvm.internal.impl.descriptors.c constructor) {
            kotlin.reflect.jvm.internal.impl.descriptors.c cVarC;
            kotlin.jvm.internal.r.e(storageManager, "storageManager");
            kotlin.jvm.internal.r.e(typeAliasDescriptor, "typeAliasDescriptor");
            kotlin.jvm.internal.r.e(constructor, "constructor");
            TypeSubstitutor typeSubstitutorC = c(typeAliasDescriptor);
            if (typeSubstitutorC == null || (cVarC = constructor.c(typeSubstitutorC)) == null) {
                return null;
            }
            kotlin.reflect.jvm.internal.impl.descriptors.annotations.e annotations = constructor.getAnnotations();
            CallableMemberDescriptor.Kind kindG = constructor.g();
            kotlin.jvm.internal.r.d(kindG, "constructor.kind");
            o0 o0VarO = typeAliasDescriptor.o();
            kotlin.jvm.internal.r.d(o0VarO, "typeAliasDescriptor.source");
            TypeAliasConstructorDescriptorImpl typeAliasConstructorDescriptorImpl = new TypeAliasConstructorDescriptorImpl(storageManager, typeAliasDescriptor, cVarC, null, annotations, kindG, o0VarO, null);
            List<v0> listK0 = o.K0(typeAliasConstructorDescriptorImpl, constructor.f(), typeSubstitutorC);
            if (listK0 == null) {
                return null;
            }
            kotlin.reflect.jvm.internal.impl.types.f0 f0VarC = kotlin.reflect.jvm.internal.impl.types.y.c(cVarC.getReturnType().L0());
            kotlin.reflect.jvm.internal.impl.types.f0 f0VarN = typeAliasDescriptor.n();
            kotlin.jvm.internal.r.d(f0VarN, "typeAliasDescriptor.defaultType");
            kotlin.reflect.jvm.internal.impl.types.f0 f0VarJ = kotlin.reflect.jvm.internal.impl.types.i0.j(f0VarC, f0VarN);
            m0 m0VarK = constructor.K();
            typeAliasConstructorDescriptorImpl.N0(m0VarK != null ? kotlin.reflect.jvm.internal.impl.resolve.b.f(typeAliasConstructorDescriptorImpl, typeSubstitutorC.n(m0VarK.getType(), Variance.INVARIANT), kotlin.reflect.jvm.internal.impl.descriptors.annotations.e.O.b()) : null, null, typeAliasDescriptor.p(), listK0, f0VarJ, Modality.FINAL, typeAliasDescriptor.getVisibility());
            return typeAliasConstructorDescriptorImpl;
        }
    }

    private TypeAliasConstructorDescriptorImpl(kotlin.reflect.jvm.internal.impl.storage.m mVar, s0 s0Var, final kotlin.reflect.jvm.internal.impl.descriptors.c cVar, f0 f0Var, kotlin.reflect.jvm.internal.impl.descriptors.annotations.e eVar, CallableMemberDescriptor.Kind kind, o0 o0Var) {
        super(s0Var, f0Var, eVar, kotlin.reflect.jvm.internal.impl.name.f.n("<init>"), kind, o0Var);
        this.D = mVar;
        this.E = s0Var;
        R0(k1().V());
        mVar.e(new Function0<TypeAliasConstructorDescriptorImpl>() { // from class: kotlin.reflect.jvm.internal.impl.descriptors.impl.TypeAliasConstructorDescriptorImpl$withDispatchReceiver$2
            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            {
                super(0);
            }

            @Override // kotlin.jvm.functions.Function0
            public final TypeAliasConstructorDescriptorImpl invoke() {
                kotlin.reflect.jvm.internal.impl.storage.m mVarL = this.this$0.L();
                s0 s0VarK1 = this.this$0.k1();
                kotlin.reflect.jvm.internal.impl.descriptors.c cVar2 = cVar;
                TypeAliasConstructorDescriptorImpl typeAliasConstructorDescriptorImpl = this.this$0;
                kotlin.reflect.jvm.internal.impl.descriptors.annotations.e annotations = cVar2.getAnnotations();
                CallableMemberDescriptor.Kind kindG = cVar.g();
                kotlin.jvm.internal.r.d(kindG, "underlyingConstructorDescriptor.kind");
                o0 o0VarO = this.this$0.k1().o();
                kotlin.jvm.internal.r.d(o0VarO, "typeAliasDescriptor.source");
                TypeAliasConstructorDescriptorImpl typeAliasConstructorDescriptorImpl2 = new TypeAliasConstructorDescriptorImpl(mVarL, s0VarK1, cVar2, typeAliasConstructorDescriptorImpl, annotations, kindG, o0VarO, null);
                TypeAliasConstructorDescriptorImpl typeAliasConstructorDescriptorImpl3 = this.this$0;
                kotlin.reflect.jvm.internal.impl.descriptors.c cVar3 = cVar;
                TypeSubstitutor typeSubstitutorC = TypeAliasConstructorDescriptorImpl.G.c(typeAliasConstructorDescriptorImpl3.k1());
                if (typeSubstitutorC == null) {
                    return null;
                }
                m0 m0VarK = cVar3.K();
                typeAliasConstructorDescriptorImpl2.N0(null, m0VarK == null ? null : m0VarK.c(typeSubstitutorC), typeAliasConstructorDescriptorImpl3.k1().p(), typeAliasConstructorDescriptorImpl3.f(), typeAliasConstructorDescriptorImpl3.getReturnType(), Modality.FINAL, typeAliasConstructorDescriptorImpl3.k1().getVisibility());
                return typeAliasConstructorDescriptorImpl2;
            }
        });
        this.F = cVar;
    }

    public /* synthetic */ TypeAliasConstructorDescriptorImpl(kotlin.reflect.jvm.internal.impl.storage.m mVar, s0 s0Var, kotlin.reflect.jvm.internal.impl.descriptors.c cVar, f0 f0Var, kotlin.reflect.jvm.internal.impl.descriptors.annotations.e eVar, CallableMemberDescriptor.Kind kind, o0 o0Var, kotlin.jvm.internal.o oVar) {
        this(mVar, s0Var, cVar, f0Var, eVar, kind, o0Var);
    }

    public final kotlin.reflect.jvm.internal.impl.storage.m L() {
        return this.D;
    }

    @Override // kotlin.reflect.jvm.internal.impl.descriptors.impl.f0
    public kotlin.reflect.jvm.internal.impl.descriptors.c R() {
        return this.F;
    }

    @Override // kotlin.reflect.jvm.internal.impl.descriptors.j
    public boolean Z() {
        return R().Z();
    }

    @Override // kotlin.reflect.jvm.internal.impl.descriptors.j
    public kotlin.reflect.jvm.internal.impl.descriptors.d a0() {
        kotlin.reflect.jvm.internal.impl.descriptors.d dVarA0 = R().a0();
        kotlin.jvm.internal.r.d(dVarA0, "underlyingConstructorDescriptor.constructedClass");
        return dVarA0;
    }

    @Override // kotlin.reflect.jvm.internal.impl.descriptors.impl.o, kotlin.reflect.jvm.internal.impl.descriptors.CallableMemberDescriptor
    /* JADX INFO: renamed from: g1, reason: merged with bridge method [inline-methods] */
    public f0 N(kotlin.reflect.jvm.internal.impl.descriptors.k newOwner, Modality modality, kotlin.reflect.jvm.internal.impl.descriptors.s visibility, CallableMemberDescriptor.Kind kind, boolean z) {
        kotlin.jvm.internal.r.e(newOwner, "newOwner");
        kotlin.jvm.internal.r.e(modality, "modality");
        kotlin.jvm.internal.r.e(visibility, "visibility");
        kotlin.jvm.internal.r.e(kind, "kind");
        kotlin.reflect.jvm.internal.impl.descriptors.u uVarBuild = s().p(newOwner).j(modality).g(visibility).q(kind).n(z).build();
        Objects.requireNonNull(uVarBuild, "null cannot be cast to non-null type org.jetbrains.kotlin.descriptors.impl.TypeAliasConstructorDescriptor");
        return (f0) uVarBuild;
    }

    @Override // kotlin.reflect.jvm.internal.impl.descriptors.impl.o, kotlin.reflect.jvm.internal.impl.descriptors.a, kotlin.reflect.jvm.internal.impl.descriptors.j
    public kotlin.reflect.jvm.internal.impl.types.a0 getReturnType() {
        kotlin.reflect.jvm.internal.impl.types.a0 returnType = super.getReturnType();
        kotlin.jvm.internal.r.c(returnType);
        kotlin.jvm.internal.r.d(returnType, "super.getReturnType()!!");
        return returnType;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // kotlin.reflect.jvm.internal.impl.descriptors.impl.o
    /* JADX INFO: renamed from: h1, reason: merged with bridge method [inline-methods] */
    public TypeAliasConstructorDescriptorImpl H0(kotlin.reflect.jvm.internal.impl.descriptors.k newOwner, kotlin.reflect.jvm.internal.impl.descriptors.u uVar, CallableMemberDescriptor.Kind kind, kotlin.reflect.jvm.internal.impl.name.f fVar, kotlin.reflect.jvm.internal.impl.descriptors.annotations.e annotations, o0 source) {
        kotlin.jvm.internal.r.e(newOwner, "newOwner");
        kotlin.jvm.internal.r.e(kind, "kind");
        kotlin.jvm.internal.r.e(annotations, "annotations");
        kotlin.jvm.internal.r.e(source, "source");
        CallableMemberDescriptor.Kind kind2 = CallableMemberDescriptor.Kind.DECLARATION;
        if (kind != kind2) {
            CallableMemberDescriptor.Kind kind3 = CallableMemberDescriptor.Kind.SYNTHESIZED;
        }
        return new TypeAliasConstructorDescriptorImpl(this.D, k1(), R(), this, annotations, kind2, source);
    }

    @Override // kotlin.reflect.jvm.internal.impl.descriptors.impl.j, kotlin.reflect.jvm.internal.impl.descriptors.k
    /* JADX INFO: renamed from: i1, reason: merged with bridge method [inline-methods] */
    public s0 b() {
        return k1();
    }

    @Override // kotlin.reflect.jvm.internal.impl.descriptors.impl.o, kotlin.reflect.jvm.internal.impl.descriptors.impl.j
    /* JADX INFO: renamed from: j1, reason: merged with bridge method [inline-methods] */
    public f0 a() {
        return (f0) super.a();
    }

    public s0 k1() {
        return this.E;
    }

    @Override // kotlin.reflect.jvm.internal.impl.descriptors.impl.o, kotlin.reflect.jvm.internal.impl.descriptors.u, kotlin.reflect.jvm.internal.impl.descriptors.q0
    /* JADX INFO: renamed from: l1, reason: merged with bridge method [inline-methods] */
    public f0 c(TypeSubstitutor substitutor) {
        kotlin.jvm.internal.r.e(substitutor, "substitutor");
        kotlin.reflect.jvm.internal.impl.descriptors.u uVarC = super.c(substitutor);
        Objects.requireNonNull(uVarC, "null cannot be cast to non-null type org.jetbrains.kotlin.descriptors.impl.TypeAliasConstructorDescriptorImpl");
        TypeAliasConstructorDescriptorImpl typeAliasConstructorDescriptorImpl = (TypeAliasConstructorDescriptorImpl) uVarC;
        TypeSubstitutor typeSubstitutorF = TypeSubstitutor.f(typeAliasConstructorDescriptorImpl.getReturnType());
        kotlin.jvm.internal.r.d(typeSubstitutorF, "create(substitutedTypeAliasConstructor.returnType)");
        kotlin.reflect.jvm.internal.impl.descriptors.c cVarC = R().a().c(typeSubstitutorF);
        if (cVarC == null) {
            return null;
        }
        typeAliasConstructorDescriptorImpl.F = cVarC;
        return typeAliasConstructorDescriptorImpl;
    }
}
