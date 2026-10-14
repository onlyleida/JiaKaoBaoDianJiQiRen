package kotlin.reflect.jvm.internal.impl.descriptors.impl;

import java.util.ArrayList;
import java.util.Collection;
import java.util.List;
import kotlin.jvm.functions.Function1;
import kotlin.reflect.jvm.internal.impl.descriptors.o0;
import kotlin.reflect.jvm.internal.impl.descriptors.s0;
import kotlin.reflect.jvm.internal.impl.descriptors.t0;
import kotlin.reflect.jvm.internal.impl.resolve.descriptorUtil.DescriptorUtilsKt;
import kotlin.reflect.jvm.internal.impl.resolve.scopes.MemberScope;
import kotlin.reflect.jvm.internal.impl.types.c1;
import kotlin.reflect.jvm.internal.impl.types.q0;
import kotlin.reflect.jvm.internal.impl.types.y0;

/* JADX INFO: loaded from: classes6.dex */
public abstract class AbstractTypeAliasDescriptor extends j implements s0 {

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private final kotlin.reflect.jvm.internal.impl.descriptors.s f14887e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private List<? extends t0> f14888f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private final a f14889g;

    public static final class a implements q0 {
        a() {
        }

        @Override // kotlin.reflect.jvm.internal.impl.types.q0
        public Collection<kotlin.reflect.jvm.internal.impl.types.a0> a() {
            Collection<kotlin.reflect.jvm.internal.impl.types.a0> collectionA = u().r0().I0().a();
            kotlin.jvm.internal.r.d(collectionA, "declarationDescriptor.un…pe.constructor.supertypes");
            return collectionA;
        }

        @Override // kotlin.reflect.jvm.internal.impl.types.q0
        public q0 b(kotlin.reflect.jvm.internal.impl.types.checker.g kotlinTypeRefiner) {
            kotlin.jvm.internal.r.e(kotlinTypeRefiner, "kotlinTypeRefiner");
            return this;
        }

        @Override // kotlin.reflect.jvm.internal.impl.types.q0
        public boolean d() {
            return true;
        }

        @Override // kotlin.reflect.jvm.internal.impl.types.q0
        /* JADX INFO: renamed from: e, reason: merged with bridge method [inline-methods] */
        public s0 u() {
            return AbstractTypeAliasDescriptor.this;
        }

        @Override // kotlin.reflect.jvm.internal.impl.types.q0
        public List<t0> getParameters() {
            return AbstractTypeAliasDescriptor.this.I0();
        }

        @Override // kotlin.reflect.jvm.internal.impl.types.q0
        public kotlin.reflect.jvm.internal.impl.builtins.g k() {
            return DescriptorUtilsKt.g(u());
        }

        public String toString() {
            return "[typealias " + u().getName().b() + ']';
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public AbstractTypeAliasDescriptor(kotlin.reflect.jvm.internal.impl.descriptors.k containingDeclaration, kotlin.reflect.jvm.internal.impl.descriptors.annotations.e annotations, kotlin.reflect.jvm.internal.impl.name.f name, o0 sourceElement, kotlin.reflect.jvm.internal.impl.descriptors.s visibilityImpl) {
        super(containingDeclaration, annotations, name, sourceElement);
        kotlin.jvm.internal.r.e(containingDeclaration, "containingDeclaration");
        kotlin.jvm.internal.r.e(annotations, "annotations");
        kotlin.jvm.internal.r.e(name, "name");
        kotlin.jvm.internal.r.e(sourceElement, "sourceElement");
        kotlin.jvm.internal.r.e(visibilityImpl, "visibilityImpl");
        this.f14887e = visibilityImpl;
        this.f14889g = new a();
    }

    protected final kotlin.reflect.jvm.internal.impl.types.f0 B0() {
        kotlin.reflect.jvm.internal.impl.descriptors.d dVarR = r();
        MemberScope memberScopeU = dVarR == null ? null : dVarR.U();
        if (memberScopeU == null) {
            memberScopeU = MemberScope.a.b;
        }
        kotlin.reflect.jvm.internal.impl.types.f0 f0VarU = y0.u(this, memberScopeU, new Function1<kotlin.reflect.jvm.internal.impl.types.checker.g, kotlin.reflect.jvm.internal.impl.types.f0>() { // from class: kotlin.reflect.jvm.internal.impl.descriptors.impl.AbstractTypeAliasDescriptor$computeDefaultType$1
            {
                super(1);
            }

            @Override // kotlin.jvm.functions.Function1
            public final kotlin.reflect.jvm.internal.impl.types.f0 invoke(kotlin.reflect.jvm.internal.impl.types.checker.g gVar) {
                kotlin.reflect.jvm.internal.impl.descriptors.f fVarE = gVar.e(this.this$0);
                if (fVarE == null) {
                    return null;
                }
                return fVarE.n();
            }
        });
        kotlin.jvm.internal.r.d(f0VarU, "@OptIn(TypeRefinement::c…s)?.defaultType\n        }");
        return f0VarU;
    }

    @Override // kotlin.reflect.jvm.internal.impl.descriptors.impl.j
    /* JADX INFO: renamed from: G0, reason: merged with bridge method [inline-methods] */
    public s0 a() {
        return (s0) super.a();
    }

    public final Collection<f0> H0() {
        kotlin.reflect.jvm.internal.impl.descriptors.d dVarR = r();
        if (dVarR == null) {
            return kotlin.collections.u.j();
        }
        Collection<kotlin.reflect.jvm.internal.impl.descriptors.c> collectionJ = dVarR.j();
        kotlin.jvm.internal.r.d(collectionJ, "classDescriptor.constructors");
        ArrayList arrayList = new ArrayList();
        for (kotlin.reflect.jvm.internal.impl.descriptors.c it : collectionJ) {
            TypeAliasConstructorDescriptorImpl.a aVar = TypeAliasConstructorDescriptorImpl.G;
            kotlin.reflect.jvm.internal.impl.storage.m mVarL = L();
            kotlin.jvm.internal.r.d(it, "it");
            f0 f0VarB = aVar.b(mVarL, this, it);
            if (f0VarB != null) {
                arrayList.add(f0VarB);
            }
        }
        return arrayList;
    }

    protected abstract List<t0> I0();

    public final void J0(List<? extends t0> declaredTypeParameters) {
        kotlin.jvm.internal.r.e(declaredTypeParameters, "declaredTypeParameters");
        this.f14888f = declaredTypeParameters;
    }

    protected abstract kotlin.reflect.jvm.internal.impl.storage.m L();

    @Override // kotlin.reflect.jvm.internal.impl.descriptors.w
    public boolean V() {
        return false;
    }

    @Override // kotlin.reflect.jvm.internal.impl.descriptors.o, kotlin.reflect.jvm.internal.impl.descriptors.w
    public kotlin.reflect.jvm.internal.impl.descriptors.s getVisibility() {
        return this.f14887e;
    }

    @Override // kotlin.reflect.jvm.internal.impl.descriptors.f
    public q0 i() {
        return this.f14889g;
    }

    @Override // kotlin.reflect.jvm.internal.impl.descriptors.w
    public boolean i0() {
        return false;
    }

    @Override // kotlin.reflect.jvm.internal.impl.descriptors.w
    public boolean isExternal() {
        return false;
    }

    @Override // kotlin.reflect.jvm.internal.impl.descriptors.g
    public List<t0> p() {
        List list = this.f14888f;
        if (list != null) {
            return list;
        }
        kotlin.jvm.internal.r.u("declaredTypeParametersImpl");
        throw null;
    }

    @Override // kotlin.reflect.jvm.internal.impl.descriptors.impl.i
    public String toString() {
        return kotlin.jvm.internal.r.m("typealias ", getName().b());
    }

    @Override // kotlin.reflect.jvm.internal.impl.descriptors.k
    public <R, D> R y(kotlin.reflect.jvm.internal.impl.descriptors.m<R, D> visitor, D d2) {
        kotlin.jvm.internal.r.e(visitor, "visitor");
        return visitor.d(this, d2);
    }

    @Override // kotlin.reflect.jvm.internal.impl.descriptors.g
    public boolean z() {
        return y0.c(r0(), new Function1<c1, Boolean>() { // from class: kotlin.reflect.jvm.internal.impl.descriptors.impl.AbstractTypeAliasDescriptor$isInner$1
            {
                super(1);
            }

            /* JADX WARN: Code duplicated, block: B:12:0x002d  */
            @Override // kotlin.jvm.functions.Function1
            public final Boolean invoke(c1 type) {
                boolean z;
                kotlin.jvm.internal.r.d(type, "type");
                if (!kotlin.reflect.jvm.internal.impl.types.b0.a(type)) {
                    AbstractTypeAliasDescriptor abstractTypeAliasDescriptor = this.this$0;
                    kotlin.reflect.jvm.internal.impl.descriptors.f fVarU = type.I0().u();
                    z = (fVarU instanceof t0) && !kotlin.jvm.internal.r.a(((t0) fVarU).b(), abstractTypeAliasDescriptor);
                }
                return Boolean.valueOf(z);
            }
        });
    }
}
