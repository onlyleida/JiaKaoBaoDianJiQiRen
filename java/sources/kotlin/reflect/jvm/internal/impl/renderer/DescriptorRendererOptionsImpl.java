package kotlin.reflect.jvm.internal.impl.renderer;

import java.lang.reflect.Field;
import java.util.Set;
import kotlin.collections.u0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.MutablePropertyReference1Impl;
import kotlin.jvm.internal.PropertyReference1Impl;
import kotlin.jvm.internal.r;
import kotlin.jvm.internal.v;
import kotlin.properties.Delegates;
import kotlin.properties.ObservableProperty;
import kotlin.properties.ReadWriteProperty;
import kotlin.reflect.KClass;
import kotlin.reflect.KProperty;
import kotlin.reflect.jvm.internal.impl.descriptors.v0;
import kotlin.reflect.jvm.internal.impl.types.a0;
import kotlin.text.t;

/* JADX INFO: loaded from: classes6.dex */
public final class DescriptorRendererOptionsImpl implements b {
    static final /* synthetic */ KProperty<Object>[] X = {v.f(new MutablePropertyReference1Impl(v.b(DescriptorRendererOptionsImpl.class), "classifierNamePolicy", "getClassifierNamePolicy()Lorg/jetbrains/kotlin/renderer/ClassifierNamePolicy;")), v.f(new MutablePropertyReference1Impl(v.b(DescriptorRendererOptionsImpl.class), "withDefinedIn", "getWithDefinedIn()Z")), v.f(new MutablePropertyReference1Impl(v.b(DescriptorRendererOptionsImpl.class), "withSourceFileForTopLevel", "getWithSourceFileForTopLevel()Z")), v.f(new MutablePropertyReference1Impl(v.b(DescriptorRendererOptionsImpl.class), "modifiers", "getModifiers()Ljava/util/Set;")), v.f(new MutablePropertyReference1Impl(v.b(DescriptorRendererOptionsImpl.class), "startFromName", "getStartFromName()Z")), v.f(new MutablePropertyReference1Impl(v.b(DescriptorRendererOptionsImpl.class), "startFromDeclarationKeyword", "getStartFromDeclarationKeyword()Z")), v.f(new MutablePropertyReference1Impl(v.b(DescriptorRendererOptionsImpl.class), "debugMode", "getDebugMode()Z")), v.f(new MutablePropertyReference1Impl(v.b(DescriptorRendererOptionsImpl.class), "classWithPrimaryConstructor", "getClassWithPrimaryConstructor()Z")), v.f(new MutablePropertyReference1Impl(v.b(DescriptorRendererOptionsImpl.class), "verbose", "getVerbose()Z")), v.f(new MutablePropertyReference1Impl(v.b(DescriptorRendererOptionsImpl.class), "unitReturnType", "getUnitReturnType()Z")), v.f(new MutablePropertyReference1Impl(v.b(DescriptorRendererOptionsImpl.class), "withoutReturnType", "getWithoutReturnType()Z")), v.f(new MutablePropertyReference1Impl(v.b(DescriptorRendererOptionsImpl.class), "enhancedTypes", "getEnhancedTypes()Z")), v.f(new MutablePropertyReference1Impl(v.b(DescriptorRendererOptionsImpl.class), "normalizedVisibilities", "getNormalizedVisibilities()Z")), v.f(new MutablePropertyReference1Impl(v.b(DescriptorRendererOptionsImpl.class), "renderDefaultVisibility", "getRenderDefaultVisibility()Z")), v.f(new MutablePropertyReference1Impl(v.b(DescriptorRendererOptionsImpl.class), "renderDefaultModality", "getRenderDefaultModality()Z")), v.f(new MutablePropertyReference1Impl(v.b(DescriptorRendererOptionsImpl.class), "renderConstructorDelegation", "getRenderConstructorDelegation()Z")), v.f(new MutablePropertyReference1Impl(v.b(DescriptorRendererOptionsImpl.class), "renderPrimaryConstructorParametersAsProperties", "getRenderPrimaryConstructorParametersAsProperties()Z")), v.f(new MutablePropertyReference1Impl(v.b(DescriptorRendererOptionsImpl.class), "actualPropertiesInPrimaryConstructor", "getActualPropertiesInPrimaryConstructor()Z")), v.f(new MutablePropertyReference1Impl(v.b(DescriptorRendererOptionsImpl.class), "uninferredTypeParameterAsName", "getUninferredTypeParameterAsName()Z")), v.f(new MutablePropertyReference1Impl(v.b(DescriptorRendererOptionsImpl.class), "includePropertyConstant", "getIncludePropertyConstant()Z")), v.f(new MutablePropertyReference1Impl(v.b(DescriptorRendererOptionsImpl.class), "withoutTypeParameters", "getWithoutTypeParameters()Z")), v.f(new MutablePropertyReference1Impl(v.b(DescriptorRendererOptionsImpl.class), "withoutSuperTypes", "getWithoutSuperTypes()Z")), v.f(new MutablePropertyReference1Impl(v.b(DescriptorRendererOptionsImpl.class), "typeNormalizer", "getTypeNormalizer()Lkotlin/jvm/functions/Function1;")), v.f(new MutablePropertyReference1Impl(v.b(DescriptorRendererOptionsImpl.class), "defaultParameterValueRenderer", "getDefaultParameterValueRenderer()Lkotlin/jvm/functions/Function1;")), v.f(new MutablePropertyReference1Impl(v.b(DescriptorRendererOptionsImpl.class), "secondaryConstructorsAsPrimary", "getSecondaryConstructorsAsPrimary()Z")), v.f(new MutablePropertyReference1Impl(v.b(DescriptorRendererOptionsImpl.class), "overrideRenderingPolicy", "getOverrideRenderingPolicy()Lorg/jetbrains/kotlin/renderer/OverrideRenderingPolicy;")), v.f(new MutablePropertyReference1Impl(v.b(DescriptorRendererOptionsImpl.class), "valueParametersHandler", "getValueParametersHandler()Lorg/jetbrains/kotlin/renderer/DescriptorRenderer$ValueParametersHandler;")), v.f(new MutablePropertyReference1Impl(v.b(DescriptorRendererOptionsImpl.class), "textFormat", "getTextFormat()Lorg/jetbrains/kotlin/renderer/RenderingFormat;")), v.f(new MutablePropertyReference1Impl(v.b(DescriptorRendererOptionsImpl.class), "parameterNameRenderingPolicy", "getParameterNameRenderingPolicy()Lorg/jetbrains/kotlin/renderer/ParameterNameRenderingPolicy;")), v.f(new MutablePropertyReference1Impl(v.b(DescriptorRendererOptionsImpl.class), "receiverAfterName", "getReceiverAfterName()Z")), v.f(new MutablePropertyReference1Impl(v.b(DescriptorRendererOptionsImpl.class), "renderCompanionObjectName", "getRenderCompanionObjectName()Z")), v.f(new MutablePropertyReference1Impl(v.b(DescriptorRendererOptionsImpl.class), "propertyAccessorRenderingPolicy", "getPropertyAccessorRenderingPolicy()Lorg/jetbrains/kotlin/renderer/PropertyAccessorRenderingPolicy;")), v.f(new MutablePropertyReference1Impl(v.b(DescriptorRendererOptionsImpl.class), "renderDefaultAnnotationArguments", "getRenderDefaultAnnotationArguments()Z")), v.f(new MutablePropertyReference1Impl(v.b(DescriptorRendererOptionsImpl.class), "eachAnnotationOnNewLine", "getEachAnnotationOnNewLine()Z")), v.f(new MutablePropertyReference1Impl(v.b(DescriptorRendererOptionsImpl.class), "excludedAnnotationClasses", "getExcludedAnnotationClasses()Ljava/util/Set;")), v.f(new MutablePropertyReference1Impl(v.b(DescriptorRendererOptionsImpl.class), "excludedTypeAnnotationClasses", "getExcludedTypeAnnotationClasses()Ljava/util/Set;")), v.f(new MutablePropertyReference1Impl(v.b(DescriptorRendererOptionsImpl.class), "annotationFilter", "getAnnotationFilter()Lkotlin/jvm/functions/Function1;")), v.f(new MutablePropertyReference1Impl(v.b(DescriptorRendererOptionsImpl.class), "annotationArgumentsRenderingPolicy", "getAnnotationArgumentsRenderingPolicy()Lorg/jetbrains/kotlin/renderer/AnnotationArgumentsRenderingPolicy;")), v.f(new MutablePropertyReference1Impl(v.b(DescriptorRendererOptionsImpl.class), "alwaysRenderModifiers", "getAlwaysRenderModifiers()Z")), v.f(new MutablePropertyReference1Impl(v.b(DescriptorRendererOptionsImpl.class), "renderConstructorKeyword", "getRenderConstructorKeyword()Z")), v.f(new MutablePropertyReference1Impl(v.b(DescriptorRendererOptionsImpl.class), "renderUnabbreviatedType", "getRenderUnabbreviatedType()Z")), v.f(new MutablePropertyReference1Impl(v.b(DescriptorRendererOptionsImpl.class), "renderTypeExpansions", "getRenderTypeExpansions()Z")), v.f(new MutablePropertyReference1Impl(v.b(DescriptorRendererOptionsImpl.class), "includeAdditionalModifiers", "getIncludeAdditionalModifiers()Z")), v.f(new MutablePropertyReference1Impl(v.b(DescriptorRendererOptionsImpl.class), "parameterNamesInFunctionalTypes", "getParameterNamesInFunctionalTypes()Z")), v.f(new MutablePropertyReference1Impl(v.b(DescriptorRendererOptionsImpl.class), "renderFunctionContracts", "getRenderFunctionContracts()Z")), v.f(new MutablePropertyReference1Impl(v.b(DescriptorRendererOptionsImpl.class), "presentableUnresolvedTypes", "getPresentableUnresolvedTypes()Z")), v.f(new MutablePropertyReference1Impl(v.b(DescriptorRendererOptionsImpl.class), "boldOnlyForNamesInHtml", "getBoldOnlyForNamesInHtml()Z")), v.f(new MutablePropertyReference1Impl(v.b(DescriptorRendererOptionsImpl.class), "informativeErrorType", "getInformativeErrorType()Z"))};
    private final ReadWriteProperty A;
    private final ReadWriteProperty B;
    private final ReadWriteProperty C;
    private final ReadWriteProperty D;
    private final ReadWriteProperty E;
    private final ReadWriteProperty F;
    private final ReadWriteProperty G;
    private final ReadWriteProperty H;
    private final ReadWriteProperty I;
    private final ReadWriteProperty J;
    private final ReadWriteProperty K;
    private final ReadWriteProperty L;
    private final ReadWriteProperty M;
    private final ReadWriteProperty N;
    private final ReadWriteProperty O;
    private final ReadWriteProperty P;
    private final ReadWriteProperty Q;
    private final ReadWriteProperty R;
    private final ReadWriteProperty S;
    private final ReadWriteProperty T;
    private final ReadWriteProperty U;
    private final ReadWriteProperty V;
    private final ReadWriteProperty W;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private boolean f15468a;
    private final ReadWriteProperty b = m0(kotlin.reflect.jvm.internal.impl.renderer.a.c.f15476a);
    private final ReadWriteProperty c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final ReadWriteProperty f15469d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private final ReadWriteProperty f15470e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private final ReadWriteProperty f15471f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private final ReadWriteProperty f15472g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private final ReadWriteProperty f15473h;
    private final ReadWriteProperty i;
    private final ReadWriteProperty j;
    private final ReadWriteProperty k;
    private final ReadWriteProperty l;
    private final ReadWriteProperty m;
    private final ReadWriteProperty n;
    private final ReadWriteProperty o;
    private final ReadWriteProperty p;
    private final ReadWriteProperty q;
    private final ReadWriteProperty r;
    private final ReadWriteProperty s;
    private final ReadWriteProperty t;
    private final ReadWriteProperty u;
    private final ReadWriteProperty v;
    private final ReadWriteProperty w;
    private final ReadWriteProperty x;
    private final ReadWriteProperty y;
    private final ReadWriteProperty z;

    /* JADX INFO: Add missing generic type declarations: [T] */
    public static final class a<T> extends ObservableProperty<T> {
        final /* synthetic */ Object b;
        final /* synthetic */ DescriptorRendererOptionsImpl c;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public a(Object obj, Object obj2, DescriptorRendererOptionsImpl descriptorRendererOptionsImpl) {
            super(obj2);
            this.b = obj;
            this.c = descriptorRendererOptionsImpl;
        }

        @Override // kotlin.properties.ObservableProperty
        protected boolean d(KProperty<?> property, T t, T t2) {
            r.e(property, "property");
            if (this.c.k0()) {
                throw new IllegalStateException("Cannot modify readonly DescriptorRendererOptions");
            }
            return true;
        }
    }

    public DescriptorRendererOptionsImpl() {
        Boolean bool = Boolean.TRUE;
        this.c = m0(bool);
        this.f15469d = m0(bool);
        this.f15470e = m0(DescriptorRendererModifier.ALL_EXCEPT_ANNOTATIONS);
        Boolean bool2 = Boolean.FALSE;
        this.f15471f = m0(bool2);
        this.f15472g = m0(bool2);
        this.f15473h = m0(bool2);
        this.i = m0(bool2);
        this.j = m0(bool2);
        this.k = m0(bool);
        this.l = m0(bool2);
        this.m = m0(bool2);
        this.n = m0(bool2);
        this.o = m0(bool);
        this.p = m0(bool);
        this.q = m0(bool2);
        this.r = m0(bool2);
        this.s = m0(bool2);
        this.t = m0(bool2);
        this.u = m0(bool2);
        this.v = m0(bool2);
        this.w = m0(bool2);
        this.x = m0(new Function1<a0, a0>() { // from class: kotlin.reflect.jvm.internal.impl.renderer.DescriptorRendererOptionsImpl$typeNormalizer$2
            @Override // kotlin.jvm.functions.Function1
            public final a0 invoke(a0 it) {
                r.e(it, "it");
                return it;
            }
        });
        this.y = m0(new Function1<v0, String>() { // from class: kotlin.reflect.jvm.internal.impl.renderer.DescriptorRendererOptionsImpl$defaultParameterValueRenderer$2
            @Override // kotlin.jvm.functions.Function1
            public final String invoke(v0 it) {
                r.e(it, "it");
                return "...";
            }
        });
        this.z = m0(bool);
        this.A = m0(OverrideRenderingPolicy.RENDER_OPEN);
        this.B = m0(DescriptorRenderer.b.a.f15462a);
        this.C = m0(RenderingFormat.PLAIN);
        this.D = m0(ParameterNameRenderingPolicy.ALL);
        this.E = m0(bool2);
        this.F = m0(bool2);
        this.G = m0(PropertyAccessorRenderingPolicy.DEBUG);
        this.H = m0(bool2);
        this.I = m0(bool2);
        this.J = m0(u0.b());
        this.K = m0(c.f15477a.a());
        this.L = m0(null);
        this.M = m0(AnnotationArgumentsRenderingPolicy.NO_ARGUMENTS);
        this.N = m0(bool2);
        this.O = m0(bool);
        this.P = m0(bool);
        this.Q = m0(bool2);
        this.R = m0(bool);
        this.S = m0(bool);
        this.T = m0(bool2);
        this.U = m0(bool2);
        this.V = m0(bool2);
        this.W = m0(bool);
    }

    private final <T> ReadWriteProperty<DescriptorRendererOptionsImpl, T> m0(T t) {
        Delegates delegates = Delegates.f15824a;
        return new a(t, t, this);
    }

    public boolean A() {
        return ((Boolean) this.R.b(this, X[42])).booleanValue();
    }

    public boolean B() {
        return b.a.a(this);
    }

    public boolean C() {
        return b.a.b(this);
    }

    public boolean D() {
        return ((Boolean) this.u.b(this, X[19])).booleanValue();
    }

    public boolean E() {
        return ((Boolean) this.W.b(this, X[47])).booleanValue();
    }

    public Set<DescriptorRendererModifier> F() {
        return (Set) this.f15470e.b(this, X[3]);
    }

    public boolean G() {
        return ((Boolean) this.n.b(this, X[12])).booleanValue();
    }

    public OverrideRenderingPolicy H() {
        return (OverrideRenderingPolicy) this.A.b(this, X[25]);
    }

    public ParameterNameRenderingPolicy I() {
        return (ParameterNameRenderingPolicy) this.D.b(this, X[28]);
    }

    public boolean J() {
        return ((Boolean) this.S.b(this, X[43])).booleanValue();
    }

    public boolean K() {
        return ((Boolean) this.U.b(this, X[45])).booleanValue();
    }

    public PropertyAccessorRenderingPolicy L() {
        return (PropertyAccessorRenderingPolicy) this.G.b(this, X[31]);
    }

    public boolean M() {
        return ((Boolean) this.E.b(this, X[29])).booleanValue();
    }

    public boolean N() {
        return ((Boolean) this.F.b(this, X[30])).booleanValue();
    }

    public boolean O() {
        return ((Boolean) this.q.b(this, X[15])).booleanValue();
    }

    public boolean P() {
        return ((Boolean) this.O.b(this, X[39])).booleanValue();
    }

    public boolean Q() {
        return ((Boolean) this.H.b(this, X[32])).booleanValue();
    }

    public boolean R() {
        return ((Boolean) this.p.b(this, X[14])).booleanValue();
    }

    public boolean S() {
        return ((Boolean) this.o.b(this, X[13])).booleanValue();
    }

    public boolean T() {
        return ((Boolean) this.r.b(this, X[16])).booleanValue();
    }

    public boolean U() {
        return ((Boolean) this.Q.b(this, X[41])).booleanValue();
    }

    public boolean V() {
        return ((Boolean) this.P.b(this, X[40])).booleanValue();
    }

    public boolean W() {
        return ((Boolean) this.z.b(this, X[24])).booleanValue();
    }

    public boolean X() {
        return ((Boolean) this.f15472g.b(this, X[5])).booleanValue();
    }

    public boolean Y() {
        return ((Boolean) this.f15471f.b(this, X[4])).booleanValue();
    }

    public RenderingFormat Z() {
        return (RenderingFormat) this.C.b(this, X[27]);
    }

    @Override // kotlin.reflect.jvm.internal.impl.renderer.b
    public void a(boolean z) {
        this.f15471f.a(this, X[4], Boolean.valueOf(z));
    }

    public Function1<a0, a0> a0() {
        return (Function1) this.x.b(this, X[22]);
    }

    @Override // kotlin.reflect.jvm.internal.impl.renderer.b
    public void b(ParameterNameRenderingPolicy parameterNameRenderingPolicy) {
        r.e(parameterNameRenderingPolicy, "<set-?>");
        this.D.a(this, X[28], parameterNameRenderingPolicy);
    }

    public boolean b0() {
        return ((Boolean) this.t.b(this, X[18])).booleanValue();
    }

    @Override // kotlin.reflect.jvm.internal.impl.renderer.b
    public void c(boolean z) {
        this.c.a(this, X[1], Boolean.valueOf(z));
    }

    public boolean c0() {
        return ((Boolean) this.k.b(this, X[9])).booleanValue();
    }

    @Override // kotlin.reflect.jvm.internal.impl.renderer.b
    public boolean d() {
        return ((Boolean) this.m.b(this, X[11])).booleanValue();
    }

    public DescriptorRenderer.b d0() {
        return (DescriptorRenderer.b) this.B.b(this, X[26]);
    }

    @Override // kotlin.reflect.jvm.internal.impl.renderer.b
    public void e(boolean z) {
        this.w.a(this, X[21], Boolean.valueOf(z));
    }

    public boolean e0() {
        return ((Boolean) this.j.b(this, X[8])).booleanValue();
    }

    @Override // kotlin.reflect.jvm.internal.impl.renderer.b
    public void f(boolean z) {
        this.E.a(this, X[29], Boolean.valueOf(z));
    }

    public boolean f0() {
        return ((Boolean) this.c.b(this, X[1])).booleanValue();
    }

    @Override // kotlin.reflect.jvm.internal.impl.renderer.b
    public void g(RenderingFormat renderingFormat) {
        r.e(renderingFormat, "<set-?>");
        this.C.a(this, X[27], renderingFormat);
    }

    public boolean g0() {
        return ((Boolean) this.f15469d.b(this, X[2])).booleanValue();
    }

    @Override // kotlin.reflect.jvm.internal.impl.renderer.b
    public Set<kotlin.reflect.jvm.internal.impl.name.c> h() {
        return (Set) this.K.b(this, X[35]);
    }

    public boolean h0() {
        return ((Boolean) this.l.b(this, X[10])).booleanValue();
    }

    @Override // kotlin.reflect.jvm.internal.impl.renderer.b
    public boolean i() {
        return ((Boolean) this.f15473h.b(this, X[6])).booleanValue();
    }

    public boolean i0() {
        return ((Boolean) this.w.b(this, X[21])).booleanValue();
    }

    @Override // kotlin.reflect.jvm.internal.impl.renderer.b
    public AnnotationArgumentsRenderingPolicy j() {
        return (AnnotationArgumentsRenderingPolicy) this.M.b(this, X[37]);
    }

    public boolean j0() {
        return ((Boolean) this.v.b(this, X[20])).booleanValue();
    }

    @Override // kotlin.reflect.jvm.internal.impl.renderer.b
    public void k(Set<kotlin.reflect.jvm.internal.impl.name.c> set) {
        r.e(set, "<set-?>");
        this.K.a(this, X[35], set);
    }

    public final boolean k0() {
        return this.f15468a;
    }

    @Override // kotlin.reflect.jvm.internal.impl.renderer.b
    public void l(Set<? extends DescriptorRendererModifier> set) {
        r.e(set, "<set-?>");
        this.f15470e.a(this, X[3], set);
    }

    public final void l0() {
        this.f15468a = true;
    }

    @Override // kotlin.reflect.jvm.internal.impl.renderer.b
    public void m(kotlin.reflect.jvm.internal.impl.renderer.a aVar) {
        r.e(aVar, "<set-?>");
        this.b.a(this, X[0], aVar);
    }

    @Override // kotlin.reflect.jvm.internal.impl.renderer.b
    public void n(boolean z) {
        this.f15473h.a(this, X[6], Boolean.valueOf(z));
    }

    @Override // kotlin.reflect.jvm.internal.impl.renderer.b
    public void o(boolean z) {
        this.F.a(this, X[30], Boolean.valueOf(z));
    }

    @Override // kotlin.reflect.jvm.internal.impl.renderer.b
    public void p(boolean z) {
        this.v.a(this, X[20], Boolean.valueOf(z));
    }

    public final DescriptorRendererOptionsImpl q() {
        DescriptorRendererOptionsImpl descriptorRendererOptionsImpl = new DescriptorRendererOptionsImpl();
        Field[] declaredFields = DescriptorRendererOptionsImpl.class.getDeclaredFields();
        r.d(declaredFields, "this::class.java.declaredFields");
        int length = declaredFields.length;
        int i = 0;
        while (i < length) {
            Field field = declaredFields[i];
            i++;
            if ((field.getModifiers() & 8) == 0) {
                field.setAccessible(true);
                Object obj = field.get(this);
                ObservableProperty observableProperty = obj instanceof ObservableProperty ? (ObservableProperty) obj : null;
                if (observableProperty != null) {
                    String name = field.getName();
                    r.d(name, "field.name");
                    t.B(name, "is", false, 2, null);
                    KClass kClassB = v.b(DescriptorRendererOptionsImpl.class);
                    String name2 = field.getName();
                    String name3 = field.getName();
                    r.d(name3, "field.name");
                    if (name3.length() > 0) {
                        char upperCase = Character.toUpperCase(name3.charAt(0));
                        String strSubstring = name3.substring(1);
                        r.d(strSubstring, "(this as java.lang.String).substring(startIndex)");
                        name3 = String.valueOf(upperCase) + strSubstring;
                    }
                    field.set(descriptorRendererOptionsImpl, descriptorRendererOptionsImpl.m0(observableProperty.b(this, new PropertyReference1Impl(kClassB, name2, r.m("get", name3)))));
                }
            }
        }
        return descriptorRendererOptionsImpl;
    }

    public boolean r() {
        return ((Boolean) this.s.b(this, X[17])).booleanValue();
    }

    public boolean s() {
        return ((Boolean) this.N.b(this, X[38])).booleanValue();
    }

    public Function1<kotlin.reflect.jvm.internal.impl.descriptors.annotations.c, Boolean> t() {
        return (Function1) this.L.b(this, X[36]);
    }

    public boolean u() {
        return ((Boolean) this.V.b(this, X[46])).booleanValue();
    }

    public boolean v() {
        return ((Boolean) this.i.b(this, X[7])).booleanValue();
    }

    public kotlin.reflect.jvm.internal.impl.renderer.a w() {
        return (kotlin.reflect.jvm.internal.impl.renderer.a) this.b.b(this, X[0]);
    }

    public Function1<v0, String> x() {
        return (Function1) this.y.b(this, X[23]);
    }

    public boolean y() {
        return ((Boolean) this.I.b(this, X[33])).booleanValue();
    }

    public Set<kotlin.reflect.jvm.internal.impl.name.c> z() {
        return (Set) this.J.b(this, X[34]);
    }
}
