package kotlin.reflect.jvm.internal.impl.load.kotlin;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.Objects;
import kotlin.jvm.functions.Function1;
import kotlin.reflect.jvm.internal.impl.descriptors.o0;
import kotlin.reflect.jvm.internal.impl.metadata.ProtoBuf$Annotation;
import kotlin.reflect.jvm.internal.impl.metadata.ProtoBuf$Class;
import kotlin.reflect.jvm.internal.impl.metadata.ProtoBuf$Constructor;
import kotlin.reflect.jvm.internal.impl.metadata.ProtoBuf$EnumEntry;
import kotlin.reflect.jvm.internal.impl.metadata.ProtoBuf$Function;
import kotlin.reflect.jvm.internal.impl.metadata.ProtoBuf$Property;
import kotlin.reflect.jvm.internal.impl.metadata.ProtoBuf$Type;
import kotlin.reflect.jvm.internal.impl.metadata.ProtoBuf$TypeParameter;
import kotlin.reflect.jvm.internal.impl.metadata.ProtoBuf$ValueParameter;
import kotlin.reflect.jvm.internal.impl.metadata.jvm.JvmProtoBuf;
import kotlin.reflect.jvm.internal.impl.protobuf.GeneratedMessageLite;
import kotlin.reflect.jvm.internal.impl.serialization.deserialization.AnnotatedCallableKind;
import kotlin.reflect.jvm.internal.impl.types.a0;
import kotlin.text.StringsKt__StringsKt;

/* JADX INFO: loaded from: classes6.dex */
public abstract class AbstractBinaryClassAnnotationAndConstantLoader<A, C> implements kotlin.reflect.jvm.internal.impl.serialization.deserialization.a<A, C> {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final k f15182a;
    private final kotlin.reflect.jvm.internal.impl.storage.f<m, a<A, C>> b;

    private enum PropertyRelatedElement {
        PROPERTY,
        BACKING_FIELD,
        DELEGATE_FIELD
    }

    /* JADX INFO: Access modifiers changed from: private */
    static final class a<A, C> {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private final Map<p, List<A>> f15183a;
        private final Map<p, C> b;

        /* JADX WARN: Multi-variable type inference failed */
        public a(Map<p, ? extends List<? extends A>> memberAnnotations, Map<p, ? extends C> propertyConstants) {
            kotlin.jvm.internal.r.e(memberAnnotations, "memberAnnotations");
            kotlin.jvm.internal.r.e(propertyConstants, "propertyConstants");
            this.f15183a = memberAnnotations;
            this.b = propertyConstants;
        }

        public final Map<p, List<A>> a() {
            return this.f15183a;
        }

        public final Map<p, C> b() {
            return this.b;
        }
    }

    public /* synthetic */ class b {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public static final /* synthetic */ int[] f15184a;

        static {
            int[] iArr = new int[AnnotatedCallableKind.values().length];
            iArr[AnnotatedCallableKind.PROPERTY_GETTER.ordinal()] = 1;
            iArr[AnnotatedCallableKind.PROPERTY_SETTER.ordinal()] = 2;
            iArr[AnnotatedCallableKind.PROPERTY.ordinal()] = 3;
            f15184a = iArr;
        }
    }

    public static final class c implements m.d {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        final /* synthetic */ AbstractBinaryClassAnnotationAndConstantLoader<A, C> f15185a;
        final /* synthetic */ HashMap<p, List<A>> b;
        final /* synthetic */ HashMap<p, C> c;

        public final class a extends b implements m.e {

            /* JADX INFO: renamed from: d, reason: collision with root package name */
            final /* synthetic */ c f15186d;

            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            public a(c this$0, p signature) {
                super(this$0, signature);
                kotlin.jvm.internal.r.e(this$0, "this$0");
                kotlin.jvm.internal.r.e(signature, "signature");
                this.f15186d = this$0;
            }

            @Override // kotlin.reflect.jvm.internal.impl.load.kotlin.m.e
            public m.a a(int i, kotlin.reflect.jvm.internal.impl.name.b classId, o0 source) {
                kotlin.jvm.internal.r.e(classId, "classId");
                kotlin.jvm.internal.r.e(source, "source");
                p pVarE = p.b.e(c(), i);
                List<A> arrayList = this.f15186d.b.get(pVarE);
                if (arrayList == null) {
                    arrayList = new ArrayList<>();
                    this.f15186d.b.put(pVarE, arrayList);
                }
                return this.f15186d.f15185a.x(classId, source, arrayList);
            }
        }

        public class b implements m.c {

            /* JADX INFO: renamed from: a, reason: collision with root package name */
            private final p f15187a;
            private final ArrayList<A> b;
            final /* synthetic */ c c;

            public b(c this$0, p signature) {
                kotlin.jvm.internal.r.e(this$0, "this$0");
                kotlin.jvm.internal.r.e(signature, "signature");
                this.c = this$0;
                this.f15187a = signature;
                this.b = new ArrayList<>();
            }

            @Override // kotlin.reflect.jvm.internal.impl.load.kotlin.m.c
            public m.a b(kotlin.reflect.jvm.internal.impl.name.b classId, o0 source) {
                kotlin.jvm.internal.r.e(classId, "classId");
                kotlin.jvm.internal.r.e(source, "source");
                return this.c.f15185a.x(classId, source, this.b);
            }

            protected final p c() {
                return this.f15187a;
            }

            @Override // kotlin.reflect.jvm.internal.impl.load.kotlin.m.c
            public void visitEnd() {
                if (!this.b.isEmpty()) {
                    this.c.b.put(this.f15187a, this.b);
                }
            }
        }

        c(AbstractBinaryClassAnnotationAndConstantLoader<A, C> abstractBinaryClassAnnotationAndConstantLoader, HashMap<p, List<A>> map, HashMap<p, C> map2) {
            this.f15185a = abstractBinaryClassAnnotationAndConstantLoader;
            this.b = map;
            this.c = map2;
        }

        @Override // kotlin.reflect.jvm.internal.impl.load.kotlin.m.d
        public m.c a(kotlin.reflect.jvm.internal.impl.name.f name, String desc, Object obj) {
            C cZ;
            kotlin.jvm.internal.r.e(name, "name");
            kotlin.jvm.internal.r.e(desc, "desc");
            p.a aVar = p.b;
            String strB = name.b();
            kotlin.jvm.internal.r.d(strB, "name.asString()");
            p pVarA = aVar.a(strB, desc);
            if (obj != null && (cZ = this.f15185a.z(desc, obj)) != null) {
                this.c.put(pVarA, cZ);
            }
            return new b(this, pVarA);
        }

        @Override // kotlin.reflect.jvm.internal.impl.load.kotlin.m.d
        public m.e b(kotlin.reflect.jvm.internal.impl.name.f name, String desc) {
            kotlin.jvm.internal.r.e(name, "name");
            kotlin.jvm.internal.r.e(desc, "desc");
            p.a aVar = p.b;
            String strB = name.b();
            kotlin.jvm.internal.r.d(strB, "name.asString()");
            return new a(this, aVar.d(strB, desc));
        }
    }

    public static final class d implements m.c {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        final /* synthetic */ AbstractBinaryClassAnnotationAndConstantLoader<A, C> f15188a;
        final /* synthetic */ ArrayList<A> b;

        d(AbstractBinaryClassAnnotationAndConstantLoader<A, C> abstractBinaryClassAnnotationAndConstantLoader, ArrayList<A> arrayList) {
            this.f15188a = abstractBinaryClassAnnotationAndConstantLoader;
            this.b = arrayList;
        }

        @Override // kotlin.reflect.jvm.internal.impl.load.kotlin.m.c
        public m.a b(kotlin.reflect.jvm.internal.impl.name.b classId, o0 source) {
            kotlin.jvm.internal.r.e(classId, "classId");
            kotlin.jvm.internal.r.e(source, "source");
            return this.f15188a.x(classId, source, this.b);
        }

        @Override // kotlin.reflect.jvm.internal.impl.load.kotlin.m.c
        public void visitEnd() {
        }
    }

    public AbstractBinaryClassAnnotationAndConstantLoader(kotlin.reflect.jvm.internal.impl.storage.m storageManager, k kotlinClassFinder) {
        kotlin.jvm.internal.r.e(storageManager, "storageManager");
        kotlin.jvm.internal.r.e(kotlinClassFinder, "kotlinClassFinder");
        this.f15182a = kotlinClassFinder;
        this.b = storageManager.i(new Function1<m, a<? extends A, ? extends C>>(this) { // from class: kotlin.reflect.jvm.internal.impl.load.kotlin.AbstractBinaryClassAnnotationAndConstantLoader$storage$1
            final /* synthetic */ AbstractBinaryClassAnnotationAndConstantLoader<A, C> this$0;

            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            {
                super(1);
                this.this$0 = this;
            }

            @Override // kotlin.jvm.functions.Function1
            public final AbstractBinaryClassAnnotationAndConstantLoader.a<A, C> invoke(m kotlinClass) {
                kotlin.jvm.internal.r.e(kotlinClass, "kotlinClass");
                return this.this$0.y(kotlinClass);
            }
        });
    }

    private final List<A> A(kotlin.reflect.jvm.internal.impl.serialization.deserialization.s sVar, ProtoBuf$Property protoBuf$Property, PropertyRelatedElement propertyRelatedElement) {
        Boolean boolD = kotlin.reflect.jvm.internal.impl.metadata.c.b.A.d(protoBuf$Property.getFlags());
        kotlin.jvm.internal.r.d(boolD, "IS_CONST.get(proto.flags)");
        boolean zBooleanValue = boolD.booleanValue();
        boolean zF = kotlin.reflect.jvm.internal.impl.metadata.jvm.a.g.f(protoBuf$Property);
        if (propertyRelatedElement == PropertyRelatedElement.PROPERTY) {
            p pVarU = u(this, protoBuf$Property, sVar.b(), sVar.d(), false, true, false, 40, null);
            return pVarU == null ? kotlin.collections.u.j() : o(this, sVar, pVarU, true, false, Boolean.valueOf(zBooleanValue), zF, 8, null);
        }
        p pVarU2 = u(this, protoBuf$Property, sVar.b(), sVar.d(), true, false, false, 48, null);
        if (pVarU2 == null) {
            return kotlin.collections.u.j();
        }
        return StringsKt__StringsKt.G(pVarU2.a(), "$delegate", false, 2, null) != (propertyRelatedElement == PropertyRelatedElement.DELEGATE_FIELD) ? kotlin.collections.u.j() : n(sVar, pVarU2, true, true, Boolean.valueOf(zBooleanValue), zF);
    }

    private final m C(kotlin.reflect.jvm.internal.impl.serialization.deserialization.s.a aVar) {
        o0 o0VarC = aVar.c();
        o oVar = o0VarC instanceof o ? (o) o0VarC : null;
        if (oVar == null) {
            return null;
        }
        return oVar.d();
    }

    private final int m(kotlin.reflect.jvm.internal.impl.serialization.deserialization.s sVar, kotlin.reflect.jvm.internal.impl.protobuf.n nVar) {
        if (nVar instanceof ProtoBuf$Function) {
            if (kotlin.reflect.jvm.internal.impl.metadata.c.f.d((ProtoBuf$Function) nVar)) {
                return 1;
            }
        } else if (nVar instanceof ProtoBuf$Property) {
            if (kotlin.reflect.jvm.internal.impl.metadata.c.f.e((ProtoBuf$Property) nVar)) {
                return 1;
            }
        } else {
            if (!(nVar instanceof ProtoBuf$Constructor)) {
                throw new UnsupportedOperationException(kotlin.jvm.internal.r.m("Unsupported message: ", nVar.getClass()));
            }
            kotlin.reflect.jvm.internal.impl.serialization.deserialization.s.a aVar = (kotlin.reflect.jvm.internal.impl.serialization.deserialization.s.a) sVar;
            if (aVar.g() == ProtoBuf$Class.Kind.ENUM_CLASS) {
                return 2;
            }
            if (aVar.i()) {
                return 1;
            }
        }
        return 0;
    }

    private final List<A> n(kotlin.reflect.jvm.internal.impl.serialization.deserialization.s sVar, p pVar, boolean z, boolean z2, Boolean bool, boolean z3) {
        m mVarP = p(sVar, v(sVar, z, z2, bool, z3));
        if (mVarP == null) {
            return kotlin.collections.u.j();
        }
        List<A> list = this.b.invoke(mVarP).a().get(pVar);
        return list == null ? kotlin.collections.u.j() : list;
    }

    static /* synthetic */ List o(AbstractBinaryClassAnnotationAndConstantLoader abstractBinaryClassAnnotationAndConstantLoader, kotlin.reflect.jvm.internal.impl.serialization.deserialization.s sVar, p pVar, boolean z, boolean z2, Boolean bool, boolean z3, int i, Object obj) {
        if (obj == null) {
            return abstractBinaryClassAnnotationAndConstantLoader.n(sVar, pVar, (i & 4) != 0 ? false : z, (i & 8) != 0 ? false : z2, (i & 16) != 0 ? null : bool, (i & 32) != 0 ? false : z3);
        }
        throw new UnsupportedOperationException("Super calls with default arguments not supported in this target, function: findClassAndLoadMemberAnnotations");
    }

    private final m p(kotlin.reflect.jvm.internal.impl.serialization.deserialization.s sVar, m mVar) {
        if (mVar != null) {
            return mVar;
        }
        if (sVar instanceof kotlin.reflect.jvm.internal.impl.serialization.deserialization.s.a) {
            return C((kotlin.reflect.jvm.internal.impl.serialization.deserialization.s.a) sVar);
        }
        return null;
    }

    private final p r(kotlin.reflect.jvm.internal.impl.protobuf.n nVar, kotlin.reflect.jvm.internal.impl.metadata.c.c cVar, kotlin.reflect.jvm.internal.impl.metadata.c.g gVar, AnnotatedCallableKind annotatedCallableKind, boolean z) {
        if (nVar instanceof ProtoBuf$Constructor) {
            p.a aVar = p.b;
            kotlin.reflect.jvm.internal.impl.metadata.jvm.a.d.b bVarB = kotlin.reflect.jvm.internal.impl.metadata.jvm.a.g.f15380a.b((ProtoBuf$Constructor) nVar, cVar, gVar);
            if (bVarB == null) {
                return null;
            }
            return aVar.b(bVarB);
        }
        if (nVar instanceof ProtoBuf$Function) {
            p.a aVar2 = p.b;
            kotlin.reflect.jvm.internal.impl.metadata.jvm.a.d.b bVarE = kotlin.reflect.jvm.internal.impl.metadata.jvm.a.g.f15380a.e((ProtoBuf$Function) nVar, cVar, gVar);
            if (bVarE == null) {
                return null;
            }
            return aVar2.b(bVarE);
        }
        if (!(nVar instanceof ProtoBuf$Property)) {
            return null;
        }
        GeneratedMessageLite.e<ProtoBuf$Property, JvmProtoBuf.JvmPropertySignature> propertySignature = JvmProtoBuf.f15353d;
        kotlin.jvm.internal.r.d(propertySignature, "propertySignature");
        JvmProtoBuf.JvmPropertySignature jvmPropertySignature = (JvmProtoBuf.JvmPropertySignature) kotlin.reflect.jvm.internal.impl.metadata.c.e.a((GeneratedMessageLite.ExtendableMessage) nVar, propertySignature);
        if (jvmPropertySignature == null) {
            return null;
        }
        int i = b.f15184a[annotatedCallableKind.ordinal()];
        if (i == 1) {
            if (!jvmPropertySignature.hasGetter()) {
                return null;
            }
            p.a aVar3 = p.b;
            JvmProtoBuf.JvmMethodSignature getter = jvmPropertySignature.getGetter();
            kotlin.jvm.internal.r.d(getter, "signature.getter");
            return aVar3.c(cVar, getter);
        }
        if (i != 2) {
            if (i != 3) {
                return null;
            }
            return t((ProtoBuf$Property) nVar, cVar, gVar, true, true, z);
        }
        if (!jvmPropertySignature.hasSetter()) {
            return null;
        }
        p.a aVar4 = p.b;
        JvmProtoBuf.JvmMethodSignature setter = jvmPropertySignature.getSetter();
        kotlin.jvm.internal.r.d(setter, "signature.setter");
        return aVar4.c(cVar, setter);
    }

    static /* synthetic */ p s(AbstractBinaryClassAnnotationAndConstantLoader abstractBinaryClassAnnotationAndConstantLoader, kotlin.reflect.jvm.internal.impl.protobuf.n nVar, kotlin.reflect.jvm.internal.impl.metadata.c.c cVar, kotlin.reflect.jvm.internal.impl.metadata.c.g gVar, AnnotatedCallableKind annotatedCallableKind, boolean z, int i, Object obj) {
        if (obj == null) {
            return abstractBinaryClassAnnotationAndConstantLoader.r(nVar, cVar, gVar, annotatedCallableKind, (i & 16) != 0 ? false : z);
        }
        throw new UnsupportedOperationException("Super calls with default arguments not supported in this target, function: getCallableSignature");
    }

    private final p t(ProtoBuf$Property protoBuf$Property, kotlin.reflect.jvm.internal.impl.metadata.c.c cVar, kotlin.reflect.jvm.internal.impl.metadata.c.g gVar, boolean z, boolean z2, boolean z3) {
        GeneratedMessageLite.e<ProtoBuf$Property, JvmProtoBuf.JvmPropertySignature> propertySignature = JvmProtoBuf.f15353d;
        kotlin.jvm.internal.r.d(propertySignature, "propertySignature");
        JvmProtoBuf.JvmPropertySignature jvmPropertySignature = (JvmProtoBuf.JvmPropertySignature) kotlin.reflect.jvm.internal.impl.metadata.c.e.a(protoBuf$Property, propertySignature);
        if (jvmPropertySignature == null) {
            return null;
        }
        if (z) {
            kotlin.reflect.jvm.internal.impl.metadata.jvm.a.d.a aVarC = kotlin.reflect.jvm.internal.impl.metadata.jvm.a.g.f15380a.c(protoBuf$Property, cVar, gVar, z3);
            if (aVarC == null) {
                return null;
            }
            return p.b.b(aVarC);
        }
        if (!z2 || !jvmPropertySignature.hasSyntheticMethod()) {
            return null;
        }
        p.a aVar = p.b;
        JvmProtoBuf.JvmMethodSignature syntheticMethod = jvmPropertySignature.getSyntheticMethod();
        kotlin.jvm.internal.r.d(syntheticMethod, "signature.syntheticMethod");
        return aVar.c(cVar, syntheticMethod);
    }

    static /* synthetic */ p u(AbstractBinaryClassAnnotationAndConstantLoader abstractBinaryClassAnnotationAndConstantLoader, ProtoBuf$Property protoBuf$Property, kotlin.reflect.jvm.internal.impl.metadata.c.c cVar, kotlin.reflect.jvm.internal.impl.metadata.c.g gVar, boolean z, boolean z2, boolean z3, int i, Object obj) {
        if (obj == null) {
            return abstractBinaryClassAnnotationAndConstantLoader.t(protoBuf$Property, cVar, gVar, (i & 8) != 0 ? false : z, (i & 16) != 0 ? false : z2, (i & 32) != 0 ? true : z3);
        }
        throw new UnsupportedOperationException("Super calls with default arguments not supported in this target, function: getPropertySignature");
    }

    private final m v(kotlin.reflect.jvm.internal.impl.serialization.deserialization.s sVar, boolean z, boolean z2, Boolean bool, boolean z3) {
        kotlin.reflect.jvm.internal.impl.serialization.deserialization.s.a aVarH;
        if (z) {
            if (bool == null) {
                throw new IllegalStateException(("isConst should not be null for property (container=" + sVar + ')').toString());
            }
            if (sVar instanceof kotlin.reflect.jvm.internal.impl.serialization.deserialization.s.a) {
                kotlin.reflect.jvm.internal.impl.serialization.deserialization.s.a aVar = (kotlin.reflect.jvm.internal.impl.serialization.deserialization.s.a) sVar;
                if (aVar.g() == ProtoBuf$Class.Kind.INTERFACE) {
                    k kVar = this.f15182a;
                    kotlin.reflect.jvm.internal.impl.name.b bVarD = aVar.e().d(kotlin.reflect.jvm.internal.impl.name.f.g("DefaultImpls"));
                    kotlin.jvm.internal.r.d(bVarD, "container.classId.create…EFAULT_IMPLS_CLASS_NAME))");
                    return l.b(kVar, bVarD);
                }
            }
            if (bool.booleanValue() && (sVar instanceof kotlin.reflect.jvm.internal.impl.serialization.deserialization.s.b)) {
                o0 o0VarC = sVar.c();
                g gVar = o0VarC instanceof g ? (g) o0VarC : null;
                kotlin.reflect.jvm.internal.impl.resolve.jvm.d dVarE = gVar == null ? null : gVar.e();
                if (dVarE != null) {
                    k kVar2 = this.f15182a;
                    String strF = dVarE.f();
                    kotlin.jvm.internal.r.d(strF, "facadeClassName.internalName");
                    kotlin.reflect.jvm.internal.impl.name.b bVarM = kotlin.reflect.jvm.internal.impl.name.b.m(new kotlin.reflect.jvm.internal.impl.name.c(kotlin.text.t.w(strF, '/', '.', false, 4, null)));
                    kotlin.jvm.internal.r.d(bVarM, "topLevel(FqName(facadeCl…lName.replace('/', '.')))");
                    return l.b(kVar2, bVarM);
                }
            }
        }
        if (z2 && (sVar instanceof kotlin.reflect.jvm.internal.impl.serialization.deserialization.s.a)) {
            kotlin.reflect.jvm.internal.impl.serialization.deserialization.s.a aVar2 = (kotlin.reflect.jvm.internal.impl.serialization.deserialization.s.a) sVar;
            if (aVar2.g() == ProtoBuf$Class.Kind.COMPANION_OBJECT && (aVarH = aVar2.h()) != null && (aVarH.g() == ProtoBuf$Class.Kind.CLASS || aVarH.g() == ProtoBuf$Class.Kind.ENUM_CLASS || (z3 && (aVarH.g() == ProtoBuf$Class.Kind.INTERFACE || aVarH.g() == ProtoBuf$Class.Kind.ANNOTATION_CLASS)))) {
                return C(aVarH);
            }
        }
        if (!(sVar instanceof kotlin.reflect.jvm.internal.impl.serialization.deserialization.s.b) || !(sVar.c() instanceof g)) {
            return null;
        }
        o0 o0VarC2 = sVar.c();
        Objects.requireNonNull(o0VarC2, "null cannot be cast to non-null type org.jetbrains.kotlin.load.kotlin.JvmPackagePartSource");
        g gVar2 = (g) o0VarC2;
        m mVarF = gVar2.f();
        return mVarF == null ? l.b(this.f15182a, gVar2.d()) : mVarF;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final m.a x(kotlin.reflect.jvm.internal.impl.name.b bVar, o0 o0Var, List<A> list) {
        if (kotlin.reflect.jvm.internal.s.a.f15772a.a().contains(bVar)) {
            return null;
        }
        return w(bVar, o0Var, list);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final a<A, C> y(m mVar) {
        HashMap map = new HashMap();
        HashMap map2 = new HashMap();
        mVar.a(new c(this, map, map2), q(mVar));
        return new a<>(map, map2);
    }

    protected abstract A B(ProtoBuf$Annotation protoBuf$Annotation, kotlin.reflect.jvm.internal.impl.metadata.c.c cVar);

    protected abstract C D(C c2);

    @Override // kotlin.reflect.jvm.internal.impl.serialization.deserialization.a
    public List<A> a(kotlin.reflect.jvm.internal.impl.serialization.deserialization.s container, kotlin.reflect.jvm.internal.impl.protobuf.n callableProto, AnnotatedCallableKind kind, int i, ProtoBuf$ValueParameter proto) {
        kotlin.jvm.internal.r.e(container, "container");
        kotlin.jvm.internal.r.e(callableProto, "callableProto");
        kotlin.jvm.internal.r.e(kind, "kind");
        kotlin.jvm.internal.r.e(proto, "proto");
        p pVarS = s(this, callableProto, container.b(), container.d(), kind, false, 16, null);
        if (pVarS == null) {
            return kotlin.collections.u.j();
        }
        return o(this, container, p.b.e(pVarS, i + m(container, callableProto)), false, false, null, false, 60, null);
    }

    @Override // kotlin.reflect.jvm.internal.impl.serialization.deserialization.a
    public List<A> b(kotlin.reflect.jvm.internal.impl.serialization.deserialization.s.a container) {
        kotlin.jvm.internal.r.e(container, "container");
        m mVarC = C(container);
        if (mVarC == null) {
            throw new IllegalStateException(kotlin.jvm.internal.r.m("Class for loading annotations is not found: ", container.a()).toString());
        }
        ArrayList arrayList = new ArrayList(1);
        mVarC.c(new d(this, arrayList), q(mVarC));
        return arrayList;
    }

    @Override // kotlin.reflect.jvm.internal.impl.serialization.deserialization.a
    public List<A> c(ProtoBuf$Type proto, kotlin.reflect.jvm.internal.impl.metadata.c.c nameResolver) {
        kotlin.jvm.internal.r.e(proto, "proto");
        kotlin.jvm.internal.r.e(nameResolver, "nameResolver");
        Object extension = proto.getExtension(JvmProtoBuf.f15355f);
        kotlin.jvm.internal.r.d(extension, "proto.getExtension(JvmProtoBuf.typeAnnotation)");
        Iterable<ProtoBuf$Annotation> iterable = (Iterable) extension;
        ArrayList arrayList = new ArrayList(kotlin.collections.v.u(iterable, 10));
        for (ProtoBuf$Annotation it : iterable) {
            kotlin.jvm.internal.r.d(it, "it");
            arrayList.add(B(it, nameResolver));
        }
        return arrayList;
    }

    @Override // kotlin.reflect.jvm.internal.impl.serialization.deserialization.a
    public List<A> d(kotlin.reflect.jvm.internal.impl.serialization.deserialization.s container, ProtoBuf$EnumEntry proto) {
        kotlin.jvm.internal.r.e(container, "container");
        kotlin.jvm.internal.r.e(proto, "proto");
        p.a aVar = p.b;
        String string = container.b().getString(proto.getName());
        String strC = ((kotlin.reflect.jvm.internal.impl.serialization.deserialization.s.a) container).e().c();
        kotlin.jvm.internal.r.d(strC, "container as ProtoContai…Class).classId.asString()");
        return o(this, container, aVar.a(string, kotlin.reflect.jvm.internal.impl.metadata.jvm.a.b.b(strC)), false, false, null, false, 60, null);
    }

    @Override // kotlin.reflect.jvm.internal.impl.serialization.deserialization.a
    public List<A> e(kotlin.reflect.jvm.internal.impl.serialization.deserialization.s container, kotlin.reflect.jvm.internal.impl.protobuf.n proto, AnnotatedCallableKind kind) {
        kotlin.jvm.internal.r.e(container, "container");
        kotlin.jvm.internal.r.e(proto, "proto");
        kotlin.jvm.internal.r.e(kind, "kind");
        if (kind == AnnotatedCallableKind.PROPERTY) {
            return A(container, (ProtoBuf$Property) proto, PropertyRelatedElement.PROPERTY);
        }
        p pVarS = s(this, proto, container.b(), container.d(), kind, false, 16, null);
        return pVarS == null ? kotlin.collections.u.j() : o(this, container, pVarS, false, false, null, false, 60, null);
    }

    @Override // kotlin.reflect.jvm.internal.impl.serialization.deserialization.a
    public List<A> f(ProtoBuf$TypeParameter proto, kotlin.reflect.jvm.internal.impl.metadata.c.c nameResolver) {
        kotlin.jvm.internal.r.e(proto, "proto");
        kotlin.jvm.internal.r.e(nameResolver, "nameResolver");
        Object extension = proto.getExtension(JvmProtoBuf.f15357h);
        kotlin.jvm.internal.r.d(extension, "proto.getExtension(JvmPr….typeParameterAnnotation)");
        Iterable<ProtoBuf$Annotation> iterable = (Iterable) extension;
        ArrayList arrayList = new ArrayList(kotlin.collections.v.u(iterable, 10));
        for (ProtoBuf$Annotation it : iterable) {
            kotlin.jvm.internal.r.d(it, "it");
            arrayList.add(B(it, nameResolver));
        }
        return arrayList;
    }

    @Override // kotlin.reflect.jvm.internal.impl.serialization.deserialization.a
    public C g(kotlin.reflect.jvm.internal.impl.serialization.deserialization.s container, ProtoBuf$Property proto, a0 expectedType) {
        C c2;
        kotlin.jvm.internal.r.e(container, "container");
        kotlin.jvm.internal.r.e(proto, "proto");
        kotlin.jvm.internal.r.e(expectedType, "expectedType");
        m mVarP = p(container, v(container, true, true, kotlin.reflect.jvm.internal.impl.metadata.c.b.A.d(proto.getFlags()), kotlin.reflect.jvm.internal.impl.metadata.jvm.a.g.f(proto)));
        if (mVarP == null) {
            return null;
        }
        p pVarR = r(proto, container.b(), container.d(), AnnotatedCallableKind.PROPERTY, mVarP.b().d().d(DeserializedDescriptorResolver.b.a()));
        if (pVarR == null || (c2 = this.b.invoke(mVarP).b().get(pVarR)) == null) {
            return null;
        }
        return kotlin.reflect.jvm.internal.impl.builtins.j.d(expectedType) ? D(c2) : c2;
    }

    @Override // kotlin.reflect.jvm.internal.impl.serialization.deserialization.a
    public List<A> h(kotlin.reflect.jvm.internal.impl.serialization.deserialization.s container, ProtoBuf$Property proto) {
        kotlin.jvm.internal.r.e(container, "container");
        kotlin.jvm.internal.r.e(proto, "proto");
        return A(container, proto, PropertyRelatedElement.BACKING_FIELD);
    }

    @Override // kotlin.reflect.jvm.internal.impl.serialization.deserialization.a
    public List<A> i(kotlin.reflect.jvm.internal.impl.serialization.deserialization.s container, kotlin.reflect.jvm.internal.impl.protobuf.n proto, AnnotatedCallableKind kind) {
        kotlin.jvm.internal.r.e(container, "container");
        kotlin.jvm.internal.r.e(proto, "proto");
        kotlin.jvm.internal.r.e(kind, "kind");
        p pVarS = s(this, proto, container.b(), container.d(), kind, false, 16, null);
        return pVarS != null ? o(this, container, p.b.e(pVarS, 0), false, false, null, false, 60, null) : kotlin.collections.u.j();
    }

    @Override // kotlin.reflect.jvm.internal.impl.serialization.deserialization.a
    public List<A> j(kotlin.reflect.jvm.internal.impl.serialization.deserialization.s container, ProtoBuf$Property proto) {
        kotlin.jvm.internal.r.e(container, "container");
        kotlin.jvm.internal.r.e(proto, "proto");
        return A(container, proto, PropertyRelatedElement.DELEGATE_FIELD);
    }

    protected byte[] q(m kotlinClass) {
        kotlin.jvm.internal.r.e(kotlinClass, "kotlinClass");
        return null;
    }

    protected abstract m.a w(kotlin.reflect.jvm.internal.impl.name.b bVar, o0 o0Var, List<A> list);

    protected abstract C z(String str, Object obj);
}
