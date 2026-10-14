package kotlin.reflect.jvm.internal.impl.renderer;

import java.io.IOException;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Objects;
import java.util.Set;
import kotlin.Lazy;
import kotlin.NoWhenBranchMatchedException;
import kotlin.collections.CollectionsKt___CollectionsKt;
import kotlin.collections.s;
import kotlin.collections.t;
import kotlin.i;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.r;
import kotlin.reflect.jvm.internal.impl.builtins.f;
import kotlin.reflect.jvm.internal.impl.builtins.g;
import kotlin.reflect.jvm.internal.impl.builtins.h;
import kotlin.reflect.jvm.internal.impl.descriptors.CallableMemberDescriptor;
import kotlin.reflect.jvm.internal.impl.descriptors.ClassKind;
import kotlin.reflect.jvm.internal.impl.descriptors.Modality;
import kotlin.reflect.jvm.internal.impl.descriptors.NotFoundClasses;
import kotlin.reflect.jvm.internal.impl.descriptors.TypeParameterUtilsKt;
import kotlin.reflect.jvm.internal.impl.descriptors.annotations.AnnotationUseSiteTarget;
import kotlin.reflect.jvm.internal.impl.descriptors.b0;
import kotlin.reflect.jvm.internal.impl.descriptors.f0;
import kotlin.reflect.jvm.internal.impl.descriptors.h0;
import kotlin.reflect.jvm.internal.impl.descriptors.i0;
import kotlin.reflect.jvm.internal.impl.descriptors.j;
import kotlin.reflect.jvm.internal.impl.descriptors.j0;
import kotlin.reflect.jvm.internal.impl.descriptors.k;
import kotlin.reflect.jvm.internal.impl.descriptors.k0;
import kotlin.reflect.jvm.internal.impl.descriptors.l0;
import kotlin.reflect.jvm.internal.impl.descriptors.m;
import kotlin.reflect.jvm.internal.impl.descriptors.m0;
import kotlin.reflect.jvm.internal.impl.descriptors.n;
import kotlin.reflect.jvm.internal.impl.descriptors.s0;
import kotlin.reflect.jvm.internal.impl.descriptors.t0;
import kotlin.reflect.jvm.internal.impl.descriptors.u;
import kotlin.reflect.jvm.internal.impl.descriptors.v0;
import kotlin.reflect.jvm.internal.impl.descriptors.w;
import kotlin.reflect.jvm.internal.impl.descriptors.w0;
import kotlin.reflect.jvm.internal.impl.descriptors.z;
import kotlin.reflect.jvm.internal.impl.resolve.constants.o;
import kotlin.reflect.jvm.internal.impl.resolve.descriptorUtil.DescriptorUtilsKt;
import kotlin.reflect.jvm.internal.impl.types.IntersectionTypeConstructor;
import kotlin.reflect.jvm.internal.impl.types.Variance;
import kotlin.reflect.jvm.internal.impl.types.a0;
import kotlin.reflect.jvm.internal.impl.types.b1;
import kotlin.reflect.jvm.internal.impl.types.c1;
import kotlin.reflect.jvm.internal.impl.types.d1;
import kotlin.reflect.jvm.internal.impl.types.q0;
import kotlin.reflect.jvm.internal.impl.types.y0;
import kotlin.text.StringsKt__StringsKt;
import kotlin.v;
import org.apache.commons.math3.geometry.VectorFormat;
import org.apache.commons.math3.linear.ConjugateGradient;
import org.slf4j.Marker;

/* JADX INFO: loaded from: classes6.dex */
public final class DescriptorRendererImpl extends DescriptorRenderer implements kotlin.reflect.jvm.internal.impl.renderer.b {

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final DescriptorRendererOptionsImpl f15463d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private final Lazy f15464e;

    private final class a implements m<v, StringBuilder> {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        final /* synthetic */ DescriptorRendererImpl f15465a;

        /* JADX INFO: renamed from: kotlin.reflect.jvm.internal.impl.renderer.DescriptorRendererImpl$a$a, reason: collision with other inner class name */
        public /* synthetic */ class C0349a {

            /* JADX INFO: renamed from: a, reason: collision with root package name */
            public static final /* synthetic */ int[] f15466a;

            static {
                int[] iArr = new int[PropertyAccessorRenderingPolicy.values().length];
                iArr[PropertyAccessorRenderingPolicy.PRETTY.ordinal()] = 1;
                iArr[PropertyAccessorRenderingPolicy.DEBUG.ordinal()] = 2;
                iArr[PropertyAccessorRenderingPolicy.NONE.ordinal()] = 3;
                f15466a = iArr;
            }
        }

        public a(DescriptorRendererImpl this$0) {
            r.e(this$0, "this$0");
            this.f15465a = this$0;
        }

        private final void t(i0 i0Var, StringBuilder sb, String str) throws IOException {
            int i = C0349a.f15466a[this.f15465a.m0().ordinal()];
            if (i != 1) {
                if (i != 2) {
                    return;
                }
                p(i0Var, sb);
            } else {
                this.f15465a.S0(i0Var, sb);
                sb.append(r.m(str, " for "));
                DescriptorRendererImpl descriptorRendererImpl = this.f15465a;
                j0 j0VarT = i0Var.T();
                r.d(j0VarT, "descriptor.correspondingProperty");
                descriptorRendererImpl.z1(j0VarT, sb);
            }
        }

        public void A(v0 descriptor, StringBuilder builder) {
            r.e(descriptor, "descriptor");
            r.e(builder, "builder");
            this.f15465a.R1(descriptor, true, builder, true);
        }

        @Override // kotlin.reflect.jvm.internal.impl.descriptors.m
        public /* bridge */ /* synthetic */ v a(kotlin.reflect.jvm.internal.impl.descriptors.d dVar, StringBuilder sb) throws IOException {
            n(dVar, sb);
            return v.f15822a;
        }

        @Override // kotlin.reflect.jvm.internal.impl.descriptors.m
        public /* bridge */ /* synthetic */ v b(f0 f0Var, StringBuilder sb) {
            s(f0Var, sb);
            return v.f15822a;
        }

        @Override // kotlin.reflect.jvm.internal.impl.descriptors.m
        public /* bridge */ /* synthetic */ v c(j0 j0Var, StringBuilder sb) throws IOException {
            u(j0Var, sb);
            return v.f15822a;
        }

        @Override // kotlin.reflect.jvm.internal.impl.descriptors.m
        public /* bridge */ /* synthetic */ v d(s0 s0Var, StringBuilder sb) {
            y(s0Var, sb);
            return v.f15822a;
        }

        @Override // kotlin.reflect.jvm.internal.impl.descriptors.m
        public /* bridge */ /* synthetic */ v e(l0 l0Var, StringBuilder sb) throws IOException {
            w(l0Var, sb);
            return v.f15822a;
        }

        @Override // kotlin.reflect.jvm.internal.impl.descriptors.m
        public /* bridge */ /* synthetic */ v f(v0 v0Var, StringBuilder sb) {
            A(v0Var, sb);
            return v.f15822a;
        }

        @Override // kotlin.reflect.jvm.internal.impl.descriptors.m
        public /* bridge */ /* synthetic */ v g(k0 k0Var, StringBuilder sb) throws IOException {
            v(k0Var, sb);
            return v.f15822a;
        }

        @Override // kotlin.reflect.jvm.internal.impl.descriptors.m
        public /* bridge */ /* synthetic */ v h(b0 b0Var, StringBuilder sb) {
            r(b0Var, sb);
            return v.f15822a;
        }

        @Override // kotlin.reflect.jvm.internal.impl.descriptors.m
        public /* bridge */ /* synthetic */ v i(u uVar, StringBuilder sb) throws IOException {
            p(uVar, sb);
            return v.f15822a;
        }

        @Override // kotlin.reflect.jvm.internal.impl.descriptors.m
        public /* bridge */ /* synthetic */ v j(j jVar, StringBuilder sb) throws IOException {
            o(jVar, sb);
            return v.f15822a;
        }

        @Override // kotlin.reflect.jvm.internal.impl.descriptors.m
        public /* bridge */ /* synthetic */ v k(z zVar, StringBuilder sb) {
            q(zVar, sb);
            return v.f15822a;
        }

        @Override // kotlin.reflect.jvm.internal.impl.descriptors.m
        public /* bridge */ /* synthetic */ v l(m0 m0Var, StringBuilder sb) {
            x(m0Var, sb);
            return v.f15822a;
        }

        @Override // kotlin.reflect.jvm.internal.impl.descriptors.m
        public /* bridge */ /* synthetic */ v m(t0 t0Var, StringBuilder sb) {
            z(t0Var, sb);
            return v.f15822a;
        }

        public void n(kotlin.reflect.jvm.internal.impl.descriptors.d descriptor, StringBuilder builder) throws IOException {
            r.e(descriptor, "descriptor");
            r.e(builder, "builder");
            this.f15465a.Y0(descriptor, builder);
        }

        public void o(j constructorDescriptor, StringBuilder builder) throws IOException {
            r.e(constructorDescriptor, "constructorDescriptor");
            r.e(builder, "builder");
            this.f15465a.d1(constructorDescriptor, builder);
        }

        public void p(u descriptor, StringBuilder builder) throws IOException {
            r.e(descriptor, "descriptor");
            r.e(builder, "builder");
            this.f15465a.h1(descriptor, builder);
        }

        public void q(z descriptor, StringBuilder builder) {
            r.e(descriptor, "descriptor");
            r.e(builder, "builder");
            this.f15465a.r1(descriptor, builder, true);
        }

        public void r(b0 descriptor, StringBuilder builder) {
            r.e(descriptor, "descriptor");
            r.e(builder, "builder");
            this.f15465a.v1(descriptor, builder);
        }

        public void s(f0 descriptor, StringBuilder builder) {
            r.e(descriptor, "descriptor");
            r.e(builder, "builder");
            this.f15465a.x1(descriptor, builder);
        }

        public void u(j0 descriptor, StringBuilder builder) throws IOException {
            r.e(descriptor, "descriptor");
            r.e(builder, "builder");
            this.f15465a.z1(descriptor, builder);
        }

        public void v(k0 descriptor, StringBuilder builder) throws IOException {
            r.e(descriptor, "descriptor");
            r.e(builder, "builder");
            t(descriptor, builder, "getter");
        }

        public void w(l0 descriptor, StringBuilder builder) throws IOException {
            r.e(descriptor, "descriptor");
            r.e(builder, "builder");
            t(descriptor, builder, "setter");
        }

        public void x(m0 descriptor, StringBuilder builder) {
            r.e(descriptor, "descriptor");
            r.e(builder, "builder");
            builder.append(descriptor.getName());
        }

        public void y(s0 descriptor, StringBuilder builder) {
            r.e(descriptor, "descriptor");
            r.e(builder, "builder");
            this.f15465a.H1(descriptor, builder);
        }

        public void z(t0 descriptor, StringBuilder builder) {
            r.e(descriptor, "descriptor");
            r.e(builder, "builder");
            this.f15465a.M1(descriptor, builder, true);
        }
    }

    public /* synthetic */ class b {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public static final /* synthetic */ int[] f15467a;
        public static final /* synthetic */ int[] b;

        static {
            int[] iArr = new int[RenderingFormat.values().length];
            iArr[RenderingFormat.PLAIN.ordinal()] = 1;
            iArr[RenderingFormat.HTML.ordinal()] = 2;
            f15467a = iArr;
            int[] iArr2 = new int[ParameterNameRenderingPolicy.values().length];
            iArr2[ParameterNameRenderingPolicy.ALL.ordinal()] = 1;
            iArr2[ParameterNameRenderingPolicy.ONLY_NON_SYNTHESIZED.ordinal()] = 2;
            iArr2[ParameterNameRenderingPolicy.NONE.ordinal()] = 3;
            b = iArr2;
        }
    }

    public DescriptorRendererImpl(DescriptorRendererOptionsImpl options) {
        r.e(options, "options");
        this.f15463d = options;
        options.k0();
        this.f15464e = i.b(new Function0<DescriptorRendererImpl>() { // from class: kotlin.reflect.jvm.internal.impl.renderer.DescriptorRendererImpl$functionTypeAnnotationsRenderer$2
            {
                super(0);
            }

            @Override // kotlin.jvm.functions.Function0
            public final DescriptorRendererImpl invoke() {
                return (DescriptorRendererImpl) this.this$0.y(new Function1<b, v>() { // from class: kotlin.reflect.jvm.internal.impl.renderer.DescriptorRendererImpl$functionTypeAnnotationsRenderer$2.1
                    @Override // kotlin.jvm.functions.Function1
                    public /* bridge */ /* synthetic */ v invoke(b bVar) {
                        invoke2(bVar);
                        return v.f15822a;
                    }

                    /* JADX INFO: renamed from: invoke, reason: avoid collision after fix types in other method */
                    public final void invoke2(b withOptions) {
                        r.e(withOptions, "$this$withOptions");
                        withOptions.k(kotlin.collections.v0.h(withOptions.h(), t.d(h.a.q)));
                    }
                });
            }
        });
    }

    private final void A1(j0 j0Var, StringBuilder sb) {
        if (f0().contains(DescriptorRendererModifier.ANNOTATIONS)) {
            W0(this, sb, j0Var, null, 2, null);
            kotlin.reflect.jvm.internal.impl.descriptors.t tVarU0 = j0Var.u0();
            if (tVarU0 != null) {
                V0(sb, tVarU0, AnnotationUseSiteTarget.FIELD);
            }
            kotlin.reflect.jvm.internal.impl.descriptors.t tVarP = j0Var.P();
            if (tVarP != null) {
                V0(sb, tVarP, AnnotationUseSiteTarget.PROPERTY_DELEGATE_FIELD);
            }
            if (m0() == PropertyAccessorRenderingPolicy.NONE) {
                k0 getter = j0Var.getGetter();
                if (getter != null) {
                    V0(sb, getter, AnnotationUseSiteTarget.PROPERTY_GETTER);
                }
                l0 setter = j0Var.getSetter();
                if (setter == null) {
                    return;
                }
                V0(sb, setter, AnnotationUseSiteTarget.PROPERTY_SETTER);
                List<v0> listF = setter.f();
                r.d(listF, "setter.valueParameters");
                v0 it = (v0) s.C0(listF);
                r.d(it, "it");
                V0(sb, it, AnnotationUseSiteTarget.SETTER_PARAMETER);
            }
        }
    }

    private final void B1(kotlin.reflect.jvm.internal.impl.descriptors.a aVar, StringBuilder sb) {
        m0 m0VarO = aVar.O();
        if (m0VarO != null) {
            V0(sb, m0VarO, AnnotationUseSiteTarget.RECEIVER);
            a0 type = m0VarO.getType();
            r.d(type, "receiver.type");
            String strW = w(type);
            if (X1(type) && !y0.m(type)) {
                strW = '(' + strW + ')';
            }
            sb.append(strW);
            sb.append(".");
        }
    }

    private final void C1(kotlin.reflect.jvm.internal.impl.descriptors.a aVar, StringBuilder sb) {
        m0 m0VarO;
        if (n0() && (m0VarO = aVar.O()) != null) {
            sb.append(" on ");
            a0 type = m0VarO.getType();
            r.d(type, "receiver.type");
            sb.append(w(type));
        }
    }

    private final void D1(StringBuilder sb, kotlin.reflect.jvm.internal.impl.types.f0 f0Var) {
        if (r.a(f0Var, y0.b) || y0.l(f0Var)) {
            sb.append("???");
            return;
        }
        if (kotlin.reflect.jvm.internal.impl.types.t.t(f0Var)) {
            if (!C0()) {
                sb.append("???");
                return;
            }
            String string = ((kotlin.reflect.jvm.internal.impl.types.t.f) f0Var.I0()).f().getName().toString();
            r.d(string, "type.constructor as Unin…escriptor.name.toString()");
            sb.append(f1(string));
            return;
        }
        if (kotlin.reflect.jvm.internal.impl.types.b0.a(f0Var)) {
            e1(sb, f0Var);
        } else if (X1(f0Var)) {
            i1(sb, f0Var);
        } else {
            e1(sb, f0Var);
        }
    }

    private final void E1(StringBuilder sb) {
        int length = sb.length();
        if (length == 0 || sb.charAt(length - 1) != ' ') {
            sb.append(' ');
        }
    }

    private final void F1(kotlin.reflect.jvm.internal.impl.descriptors.d dVar, StringBuilder sb) throws IOException {
        if (J0() || g.l0(dVar.n())) {
            return;
        }
        Collection<a0> collectionA = dVar.i().a();
        r.d(collectionA, "klass.typeConstructor.supertypes");
        if (collectionA.isEmpty()) {
            return;
        }
        if (collectionA.size() == 1 && g.b0(collectionA.iterator().next())) {
            return;
        }
        E1(sb);
        sb.append(": ");
        s.k0(collectionA, sb, ", ", null, null, 0, null, new Function1<a0, CharSequence>() { // from class: kotlin.reflect.jvm.internal.impl.renderer.DescriptorRendererImpl$renderSuperTypes$1
            {
                super(1);
            }

            @Override // kotlin.jvm.functions.Function1
            public final CharSequence invoke(a0 it) {
                DescriptorRendererImpl descriptorRendererImpl = this.this$0;
                r.d(it, "it");
                return descriptorRendererImpl.w(it);
            }
        }, 60, null);
    }

    private final void G1(u uVar, StringBuilder sb) {
        q1(sb, uVar.isSuspend(), "suspend");
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void H1(s0 s0Var, StringBuilder sb) {
        W0(this, sb, s0Var, null, 2, null);
        kotlin.reflect.jvm.internal.impl.descriptors.s visibility = s0Var.getVisibility();
        r.d(visibility, "typeAlias.visibility");
        U1(visibility, sb);
        m1(s0Var, sb);
        sb.append(k1("typealias"));
        sb.append(" ");
        r1(s0Var, sb, true);
        List<t0> listP = s0Var.p();
        r.d(listP, "typeAlias.declaredTypeParameters");
        O1(listP, sb, false);
        X0(s0Var, sb);
        sb.append(" = ");
        sb.append(w(s0Var.r0()));
    }

    private final void K1(StringBuilder sb, a0 a0Var, q0 q0Var) {
        h0 h0VarA = TypeParameterUtilsKt.a(a0Var);
        if (h0VarA != null) {
            y1(sb, h0VarA);
        } else {
            sb.append(J1(q0Var));
            sb.append(I1(a0Var.H0()));
        }
    }

    private final void L(StringBuilder sb, k kVar) {
        k kVarB;
        String name;
        if ((kVar instanceof b0) || (kVar instanceof f0) || (kVarB = kVar.b()) == null || (kVarB instanceof z)) {
            return;
        }
        sb.append(" ");
        sb.append(n1("defined in"));
        sb.append(" ");
        kotlin.reflect.jvm.internal.impl.name.d dVarM = kotlin.reflect.jvm.internal.impl.resolve.c.m(kVarB);
        r.d(dVarM, "getFqName(containingDeclaration)");
        sb.append(dVarM.e() ? "root package" : u(dVarM));
        if (H0() && (kVarB instanceof b0) && (kVar instanceof n) && (name = ((n) kVar).o().b().getName()) != null) {
            sb.append(" ");
            sb.append(n1("in file"));
            sb.append(" ");
            sb.append(name);
        }
    }

    private final String L0() {
        return P(">");
    }

    static /* synthetic */ void L1(DescriptorRendererImpl descriptorRendererImpl, StringBuilder sb, a0 a0Var, q0 q0Var, int i, Object obj) {
        if ((i & 2) != 0) {
            q0Var = a0Var.I0();
        }
        descriptorRendererImpl.K1(sb, a0Var, q0Var);
    }

    private final void M(StringBuilder sb, List<? extends kotlin.reflect.jvm.internal.impl.types.s0> list) throws IOException {
        s.k0(list, sb, ", ", null, null, 0, null, new Function1<kotlin.reflect.jvm.internal.impl.types.s0, CharSequence>() { // from class: kotlin.reflect.jvm.internal.impl.renderer.DescriptorRendererImpl$appendTypeProjections$1
            {
                super(1);
            }

            @Override // kotlin.jvm.functions.Function1
            public final CharSequence invoke(kotlin.reflect.jvm.internal.impl.types.s0 it) {
                r.e(it, "it");
                if (it.a()) {
                    return Marker.ANY_MARKER;
                }
                DescriptorRendererImpl descriptorRendererImpl = this.this$0;
                a0 type = it.getType();
                r.d(type, "it.type");
                String strW = descriptorRendererImpl.w(type);
                if (it.c() == Variance.INVARIANT) {
                    return strW;
                }
                return it.c() + ' ' + strW;
            }
        }, 60, null);
    }

    private final boolean M0(a0 a0Var) {
        return f.o(a0Var) || !a0Var.getAnnotations().isEmpty();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void M1(t0 t0Var, StringBuilder sb, boolean z) {
        if (z) {
            sb.append(P0());
        }
        if (F0()) {
            sb.append("/*");
            sb.append(t0Var.h());
            sb.append("*/ ");
        }
        q1(sb, t0Var.v(), "reified");
        String label = t0Var.getVariance().getLabel();
        boolean z2 = true;
        q1(sb, label.length() > 0, label);
        W0(this, sb, t0Var, null, 2, null);
        r1(t0Var, sb, z);
        int size = t0Var.getUpperBounds().size();
        if ((size > 1 && !z) || size == 1) {
            a0 upperBound = t0Var.getUpperBounds().iterator().next();
            if (!g.h0(upperBound)) {
                sb.append(" : ");
                r.d(upperBound, "upperBound");
                sb.append(w(upperBound));
            }
        } else if (z) {
            for (a0 upperBound2 : t0Var.getUpperBounds()) {
                if (!g.h0(upperBound2)) {
                    if (z2) {
                        sb.append(" : ");
                    } else {
                        sb.append(" & ");
                    }
                    r.d(upperBound2, "upperBound");
                    sb.append(w(upperBound2));
                    z2 = false;
                }
            }
        }
        if (z) {
            sb.append(L0());
        }
    }

    private final String N() {
        int i = b.f15467a[A0().ordinal()];
        if (i == 1) {
            return P("->");
        }
        if (i == 2) {
            return "&rarr;";
        }
        throw new NoWhenBranchMatchedException();
    }

    private final Modality N0(w wVar) {
        if (wVar instanceof kotlin.reflect.jvm.internal.impl.descriptors.d) {
            return ((kotlin.reflect.jvm.internal.impl.descriptors.d) wVar).g() == ClassKind.INTERFACE ? Modality.ABSTRACT : Modality.FINAL;
        }
        k kVarB = wVar.b();
        kotlin.reflect.jvm.internal.impl.descriptors.d dVar = kVarB instanceof kotlin.reflect.jvm.internal.impl.descriptors.d ? (kotlin.reflect.jvm.internal.impl.descriptors.d) kVarB : null;
        if (dVar != null && (wVar instanceof CallableMemberDescriptor)) {
            CallableMemberDescriptor callableMemberDescriptor = (CallableMemberDescriptor) wVar;
            Collection<? extends CallableMemberDescriptor> collectionD = callableMemberDescriptor.d();
            r.d(collectionD, "this.overriddenDescriptors");
            if ((!collectionD.isEmpty()) && dVar.q() != Modality.FINAL) {
                return Modality.OPEN;
            }
            if (dVar.g() != ClassKind.INTERFACE || r.a(callableMemberDescriptor.getVisibility(), kotlin.reflect.jvm.internal.impl.descriptors.r.f14973a)) {
                return Modality.FINAL;
            }
            Modality modalityQ = callableMemberDescriptor.q();
            Modality modality = Modality.ABSTRACT;
            return modalityQ == modality ? modality : Modality.OPEN;
        }
        return Modality.FINAL;
    }

    private final void N1(StringBuilder sb, List<? extends t0> list) {
        Iterator<? extends t0> it = list.iterator();
        while (it.hasNext()) {
            M1(it.next(), sb, false);
            if (it.hasNext()) {
                sb.append(", ");
            }
        }
    }

    private final boolean O(String str, String str2) {
        if (!r.a(str, kotlin.text.t.x(str2, "?", "", false, 4, null)) && (!kotlin.text.t.o(str2, "?", false, 2, null) || !r.a(r.m(str, "?"), str2))) {
            if (!r.a('(' + str + ")?", str2)) {
                return false;
            }
        }
        return true;
    }

    private final boolean O0(kotlin.reflect.jvm.internal.impl.descriptors.annotations.c cVar) {
        return r.a(cVar.e(), h.a.r);
    }

    private final void O1(List<? extends t0> list, StringBuilder sb, boolean z) {
        if (!K0() && (!list.isEmpty())) {
            sb.append(P0());
            N1(sb, list);
            sb.append(L0());
            if (z) {
                sb.append(" ");
            }
        }
    }

    private final String P(String str) {
        return A0().escape(str);
    }

    private final String P0() {
        return P("<");
    }

    private final void P1(w0 w0Var, StringBuilder sb, boolean z) {
        if (z || !(w0Var instanceof v0)) {
            sb.append(k1(w0Var.M() ? "var" : "val"));
            sb.append(" ");
        }
    }

    private final boolean Q0(CallableMemberDescriptor callableMemberDescriptor) {
        return !callableMemberDescriptor.d().isEmpty();
    }

    static /* synthetic */ void Q1(DescriptorRendererImpl descriptorRendererImpl, w0 w0Var, StringBuilder sb, boolean z, int i, Object obj) {
        if ((i & 4) != 0) {
            z = false;
        }
        descriptorRendererImpl.P1(w0Var, sb, z);
    }

    private final void R0(StringBuilder sb, kotlin.reflect.jvm.internal.impl.types.a aVar) {
        RenderingFormat renderingFormatA0 = A0();
        RenderingFormat renderingFormat = RenderingFormat.HTML;
        if (renderingFormatA0 == renderingFormat) {
            sb.append("<font color=\"808080\"><i>");
        }
        sb.append(" /* = ");
        t1(sb, aVar.F());
        sb.append(" */");
        if (A0() == renderingFormat) {
            sb.append("</i></font>");
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Code duplicated, block: B:20:0x0065  */
    /* JADX WARN: Code duplicated, block: B:31:0x0091  */
    public final void R1(v0 v0Var, boolean z, StringBuilder sb, boolean z2) {
        boolean z3;
        boolean z4;
        if (z2) {
            sb.append(k1("value-parameter"));
            sb.append(" ");
        }
        if (F0()) {
            sb.append("/*");
            sb.append(v0Var.h());
            sb.append("*/ ");
        }
        W0(this, sb, v0Var, null, 2, null);
        q1(sb, v0Var.p0(), "crossinline");
        q1(sb, v0Var.n0(), "noinline");
        if (u0()) {
            kotlin.reflect.jvm.internal.impl.descriptors.a aVarB = v0Var.b();
            kotlin.reflect.jvm.internal.impl.descriptors.c cVar = aVarB instanceof kotlin.reflect.jvm.internal.impl.descriptors.c ? (kotlin.reflect.jvm.internal.impl.descriptors.c) aVarB : null;
            if (cVar != null && cVar.Z()) {
                z3 = true;
            } else {
                z3 = false;
            }
        } else {
            z3 = false;
        }
        if (z3) {
            q1(sb, Q(), "actual");
        }
        T1(v0Var, z, sb, z2, z3);
        if (W() != null) {
            z4 = i() ? v0Var.x0() : DescriptorUtilsKt.a(v0Var);
        }
        if (z4) {
            Function1<v0, String> function1W = W();
            r.c(function1W);
            sb.append(r.m(" = ", function1W.invoke(v0Var)));
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void S0(i0 i0Var, StringBuilder sb) {
        m1(i0Var, sb);
    }

    private final void S1(Collection<? extends v0> collection, boolean z, StringBuilder sb) {
        boolean zY1 = Y1(z);
        int size = collection.size();
        E0().b(size, sb);
        int i = 0;
        for (v0 v0Var : collection) {
            E0().a(v0Var, i, size, sb);
            R1(v0Var, zY1, sb, false);
            E0().c(v0Var, i, size, sb);
            i++;
        }
        E0().d(size, sb);
    }

    /* JADX WARN: Code duplicated, block: B:17:0x003a  */
    private final void T0(u uVar, StringBuilder sb) {
        boolean z;
        boolean z2;
        boolean z3;
        boolean z4 = false;
        if (uVar.isOperator()) {
            Collection<? extends u> collectionD = uVar.d();
            r.d(collectionD, "functionDescriptor.overriddenDescriptors");
            if (!collectionD.isEmpty()) {
                Iterator<T> it = collectionD.iterator();
                while (true) {
                    if (!it.hasNext()) {
                        z3 = true;
                        break;
                    } else if (((u) it.next()).isOperator()) {
                        z3 = false;
                        break;
                    }
                }
            } else {
                z3 = true;
                break;
            }
            if (z3 || R()) {
                z = true;
            } else {
                z = false;
            }
        } else {
            z = false;
        }
        if (uVar.isInfix()) {
            Collection<? extends u> collectionD2 = uVar.d();
            r.d(collectionD2, "functionDescriptor.overriddenDescriptors");
            if (!collectionD2.isEmpty()) {
                Iterator<T> it2 = collectionD2.iterator();
                while (true) {
                    if (!it2.hasNext()) {
                        z2 = true;
                        break;
                    } else if (((u) it2.next()).isInfix()) {
                        z2 = false;
                        break;
                    }
                }
            } else {
                z2 = true;
                break;
            }
            if (z2 || R()) {
                z4 = true;
            }
        }
        q1(sb, uVar.B(), "tailrec");
        G1(uVar, sb);
        q1(sb, uVar.isInline(), "inline");
        q1(sb, z4, "infix");
        q1(sb, z, ConjugateGradient.OPERATOR);
    }

    private final void T1(w0 w0Var, boolean z, StringBuilder sb, boolean z2, boolean z3) {
        a0 type = w0Var.getType();
        r.d(type, "variable.type");
        v0 v0Var = w0Var instanceof v0 ? (v0) w0Var : null;
        a0 a0VarT0 = v0Var != null ? v0Var.t0() : null;
        a0 a0Var = a0VarT0 == null ? type : a0VarT0;
        q1(sb, a0VarT0 != null, "vararg");
        if (z3 || (z2 && !z0())) {
            P1(w0Var, sb, z3);
        }
        if (z) {
            r1(w0Var, sb, z2);
            sb.append(": ");
        }
        sb.append(w(a0Var));
        j1(w0Var, sb);
        if (!F0() || a0VarT0 == null) {
            return;
        }
        sb.append(" /*");
        sb.append(w(type));
        sb.append("*/");
    }

    private final List<String> U0(kotlin.reflect.jvm.internal.impl.descriptors.annotations.c cVar) {
        kotlin.reflect.jvm.internal.impl.descriptors.c cVarC;
        List<v0> listF;
        Map<kotlin.reflect.jvm.internal.impl.name.f, kotlin.reflect.jvm.internal.impl.resolve.constants.g<?>> mapA = cVar.a();
        List listJ = null;
        kotlin.reflect.jvm.internal.impl.descriptors.d dVarF = r0() ? DescriptorUtilsKt.f(cVar) : null;
        if (dVarF != null && (cVarC = dVarF.C()) != null && (listF = cVarC.f()) != null) {
            ArrayList arrayList = new ArrayList();
            for (Object obj : listF) {
                if (((v0) obj).x0()) {
                    arrayList.add(obj);
                }
            }
            ArrayList arrayList2 = new ArrayList(kotlin.collections.v.u(arrayList, 10));
            Iterator it = arrayList.iterator();
            while (it.hasNext()) {
                arrayList2.add(((v0) it.next()).getName());
            }
            listJ = arrayList2;
        }
        if (listJ == null) {
            listJ = kotlin.collections.u.j();
        }
        ArrayList arrayList3 = new ArrayList();
        for (Object obj2 : listJ) {
            kotlin.reflect.jvm.internal.impl.name.f it2 = (kotlin.reflect.jvm.internal.impl.name.f) obj2;
            r.d(it2, "it");
            if (!mapA.containsKey(it2)) {
                arrayList3.add(obj2);
            }
        }
        ArrayList arrayList4 = new ArrayList(kotlin.collections.v.u(arrayList3, 10));
        Iterator it3 = arrayList3.iterator();
        while (it3.hasNext()) {
            arrayList4.add(r.m(((kotlin.reflect.jvm.internal.impl.name.f) it3.next()).b(), " = ..."));
        }
        Set<Map.Entry<kotlin.reflect.jvm.internal.impl.name.f, kotlin.reflect.jvm.internal.impl.resolve.constants.g<?>>> setEntrySet = mapA.entrySet();
        ArrayList arrayList5 = new ArrayList(kotlin.collections.v.u(setEntrySet, 10));
        Iterator<T> it4 = setEntrySet.iterator();
        while (it4.hasNext()) {
            Map.Entry entry = (Map.Entry) it4.next();
            kotlin.reflect.jvm.internal.impl.name.f fVar = (kotlin.reflect.jvm.internal.impl.name.f) entry.getKey();
            kotlin.reflect.jvm.internal.impl.resolve.constants.g<?> gVar = (kotlin.reflect.jvm.internal.impl.resolve.constants.g) entry.getValue();
            StringBuilder sb = new StringBuilder();
            sb.append(fVar.b());
            sb.append(" = ");
            sb.append(!listJ.contains(fVar) ? c1(gVar) : "...");
            arrayList5.add(sb.toString());
        }
        return CollectionsKt___CollectionsKt.F0(CollectionsKt___CollectionsKt.x0(arrayList4, arrayList5));
    }

    private final boolean U1(kotlin.reflect.jvm.internal.impl.descriptors.s sVar, StringBuilder sb) {
        if (!f0().contains(DescriptorRendererModifier.VISIBILITY)) {
            return false;
        }
        if (g0()) {
            sVar = sVar.f();
        }
        if (!t0() && r.a(sVar, kotlin.reflect.jvm.internal.impl.descriptors.r.k)) {
            return false;
        }
        sb.append(k1(sVar.c()));
        sb.append(" ");
        return true;
    }

    private final void V0(StringBuilder sb, kotlin.reflect.jvm.internal.impl.descriptors.annotations.a aVar, AnnotationUseSiteTarget annotationUseSiteTarget) {
        if (f0().contains(DescriptorRendererModifier.ANNOTATIONS)) {
            Set<kotlin.reflect.jvm.internal.impl.name.c> setH = aVar instanceof a0 ? h() : Y();
            Function1<kotlin.reflect.jvm.internal.impl.descriptors.annotations.c, Boolean> function1S = S();
            for (kotlin.reflect.jvm.internal.impl.descriptors.annotations.c cVar : aVar.getAnnotations()) {
                if (!CollectionsKt___CollectionsKt.S(setH, cVar.e()) && !O0(cVar) && (function1S == null || function1S.invoke(cVar).booleanValue())) {
                    sb.append(r(cVar, annotationUseSiteTarget));
                    if (X()) {
                        sb.append('\n');
                        r.d(sb, "append('\\n')");
                    } else {
                        sb.append(" ");
                    }
                }
            }
        }
    }

    private final void V1(List<? extends t0> list, StringBuilder sb) throws IOException {
        if (K0()) {
            return;
        }
        ArrayList arrayList = new ArrayList(0);
        for (t0 t0Var : list) {
            List<a0> upperBounds = t0Var.getUpperBounds();
            r.d(upperBounds, "typeParameter.upperBounds");
            for (a0 it : CollectionsKt___CollectionsKt.U(upperBounds, 1)) {
                StringBuilder sb2 = new StringBuilder();
                kotlin.reflect.jvm.internal.impl.name.f name = t0Var.getName();
                r.d(name, "typeParameter.name");
                sb2.append(v(name, false));
                sb2.append(" : ");
                r.d(it, "it");
                sb2.append(w(it));
                arrayList.add(sb2.toString());
            }
        }
        if (!arrayList.isEmpty()) {
            sb.append(" ");
            sb.append(k1("where"));
            sb.append(" ");
            s.k0(arrayList, sb, ", ", null, null, 0, null, null, 124, null);
        }
    }

    static /* synthetic */ void W0(DescriptorRendererImpl descriptorRendererImpl, StringBuilder sb, kotlin.reflect.jvm.internal.impl.descriptors.annotations.a aVar, AnnotationUseSiteTarget annotationUseSiteTarget, int i, Object obj) {
        if ((i & 2) != 0) {
            annotationUseSiteTarget = null;
        }
        descriptorRendererImpl.V0(sb, aVar, annotationUseSiteTarget);
    }

    private final String W1(String str, String str2, String str3, String str4, String str5) {
        if (kotlin.text.t.B(str, str2, false, 2, null) && kotlin.text.t.B(str3, str4, false, 2, null)) {
            int length = str2.length();
            Objects.requireNonNull(str, "null cannot be cast to non-null type java.lang.String");
            String strSubstring = str.substring(length);
            r.d(strSubstring, "(this as java.lang.String).substring(startIndex)");
            int length2 = str4.length();
            Objects.requireNonNull(str3, "null cannot be cast to non-null type java.lang.String");
            String strSubstring2 = str3.substring(length2);
            r.d(strSubstring2, "(this as java.lang.String).substring(startIndex)");
            String strM = r.m(str5, strSubstring);
            if (r.a(strSubstring, strSubstring2)) {
                return strM;
            }
            if (O(strSubstring, strSubstring2)) {
                return r.m(strM, "!");
            }
        }
        return null;
    }

    private final void X0(kotlin.reflect.jvm.internal.impl.descriptors.g gVar, StringBuilder sb) {
        List<t0> listP = gVar.p();
        r.d(listP, "classifier.declaredTypeParameters");
        List<t0> parameters = gVar.i().getParameters();
        r.d(parameters, "classifier.typeConstructor.parameters");
        if (F0() && gVar.z() && parameters.size() > listP.size()) {
            sb.append(" /*captured type parameters: ");
            N1(sb, parameters.subList(listP.size(), parameters.size()));
            sb.append("*/");
        }
    }

    private final boolean X1(a0 a0Var) {
        boolean z;
        if (!f.m(a0Var)) {
            return false;
        }
        List<kotlin.reflect.jvm.internal.impl.types.s0> listH0 = a0Var.H0();
        if ((listH0 instanceof Collection) && listH0.isEmpty()) {
            z = true;
        } else {
            Iterator<T> it = listH0.iterator();
            while (it.hasNext()) {
                if (((kotlin.reflect.jvm.internal.impl.types.s0) it.next()).a()) {
                    z = false;
                }
            }
            z = true;
        }
        return z;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void Y0(kotlin.reflect.jvm.internal.impl.descriptors.d dVar, StringBuilder sb) throws IOException {
        kotlin.reflect.jvm.internal.impl.descriptors.c cVarC;
        boolean z = dVar.g() == ClassKind.ENUM_ENTRY;
        if (!z0()) {
            W0(this, sb, dVar, null, 2, null);
            if (!z) {
                kotlin.reflect.jvm.internal.impl.descriptors.s visibility = dVar.getVisibility();
                r.d(visibility, "klass.visibility");
                U1(visibility, sb);
            }
            if ((dVar.g() != ClassKind.INTERFACE || dVar.q() != Modality.ABSTRACT) && (!dVar.g().isSingleton() || dVar.q() != Modality.FINAL)) {
                Modality modalityQ = dVar.q();
                r.d(modalityQ, "klass.modality");
                o1(modalityQ, sb, N0(dVar));
            }
            m1(dVar, sb);
            q1(sb, f0().contains(DescriptorRendererModifier.INNER) && dVar.z(), "inner");
            q1(sb, f0().contains(DescriptorRendererModifier.DATA) && dVar.D0(), "data");
            q1(sb, f0().contains(DescriptorRendererModifier.INLINE) && dVar.isInline(), "inline");
            q1(sb, f0().contains(DescriptorRendererModifier.VALUE) && dVar.g0(), "value");
            q1(sb, f0().contains(DescriptorRendererModifier.FUN) && dVar.b0(), "fun");
            Z0(dVar, sb);
        }
        if (kotlin.reflect.jvm.internal.impl.resolve.c.x(dVar)) {
            b1(dVar, sb);
        } else {
            if (!z0()) {
                E1(sb);
            }
            r1(dVar, sb, true);
        }
        if (z) {
            return;
        }
        List<t0> listP = dVar.p();
        r.d(listP, "klass.declaredTypeParameters");
        O1(listP, sb, false);
        X0(dVar, sb);
        if (!dVar.g().isSingleton() && U() && (cVarC = dVar.C()) != null) {
            sb.append(" ");
            W0(this, sb, cVarC, null, 2, null);
            kotlin.reflect.jvm.internal.impl.descriptors.s visibility2 = cVarC.getVisibility();
            r.d(visibility2, "primaryConstructor.visibility");
            U1(visibility2, sb);
            sb.append(k1("constructor"));
            List<v0> listF = cVarC.f();
            r.d(listF, "primaryConstructor.valueParameters");
            S1(listF, cVarC.d0(), sb);
        }
        F1(dVar, sb);
        V1(listP, sb);
    }

    private final boolean Y1(boolean z) {
        int i = b.b[j0().ordinal()];
        if (i != 1) {
            if (i != 2) {
                if (i == 3) {
                    return false;
                }
                throw new NoWhenBranchMatchedException();
            }
            if (z) {
                return false;
            }
        }
        return true;
    }

    private final DescriptorRendererImpl Z() {
        return (DescriptorRendererImpl) this.f15464e.getValue();
    }

    private final void Z0(kotlin.reflect.jvm.internal.impl.descriptors.d dVar, StringBuilder sb) {
        sb.append(k1(DescriptorRenderer.f15460a.a(dVar)));
    }

    private final void b1(k kVar, StringBuilder sb) {
        if (o0()) {
            if (z0()) {
                sb.append("companion object");
            }
            E1(sb);
            k kVarB = kVar.b();
            if (kVarB != null) {
                sb.append("of ");
                kotlin.reflect.jvm.internal.impl.name.f name = kVarB.getName();
                r.d(name, "containingDeclaration.name");
                sb.append(v(name, false));
            }
        }
        if (F0() || !r.a(kVar.getName(), kotlin.reflect.jvm.internal.impl.name.h.b)) {
            if (!z0()) {
                E1(sb);
            }
            kotlin.reflect.jvm.internal.impl.name.f name2 = kVar.getName();
            r.d(name2, "descriptor.name");
            sb.append(v(name2, true));
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final String c1(kotlin.reflect.jvm.internal.impl.resolve.constants.g<?> gVar) {
        if (gVar instanceof kotlin.reflect.jvm.internal.impl.resolve.constants.b) {
            return CollectionsKt___CollectionsKt.m0(((kotlin.reflect.jvm.internal.impl.resolve.constants.b) gVar).b(), ", ", VectorFormat.DEFAULT_PREFIX, VectorFormat.DEFAULT_SUFFIX, 0, null, new Function1<kotlin.reflect.jvm.internal.impl.resolve.constants.g<?>, CharSequence>() { // from class: kotlin.reflect.jvm.internal.impl.renderer.DescriptorRendererImpl$renderConstant$1
                {
                    super(1);
                }

                @Override // kotlin.jvm.functions.Function1
                public final CharSequence invoke(kotlin.reflect.jvm.internal.impl.resolve.constants.g<?> it) {
                    r.e(it, "it");
                    return this.this$0.c1(it);
                }
            }, 24, null);
        }
        if (gVar instanceof kotlin.reflect.jvm.internal.impl.resolve.constants.a) {
            return StringsKt__StringsKt.i0(DescriptorRenderer.s(this, ((kotlin.reflect.jvm.internal.impl.resolve.constants.a) gVar).b(), null, 2, null), "@");
        }
        if (!(gVar instanceof o)) {
            return gVar.toString();
        }
        o.b bVarB = ((o) gVar).b();
        if (bVarB instanceof o.b.a) {
            return ((o.b.a) bVarB).a() + "::class";
        }
        if (!(bVarB instanceof o.b.C0351b)) {
            throw new NoWhenBranchMatchedException();
        }
        o.b.C0351b c0351b = (o.b.C0351b) bVarB;
        String strB = c0351b.b().b().b();
        r.d(strB, "classValue.classId.asSingleFqName().asString()");
        for (int i = 0; i < c0351b.a(); i++) {
            strB = "kotlin.Array<" + strB + '>';
        }
        return r.m(strB, "::class");
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Code duplicated, block: B:9:0x0037  */
    public final void d1(j jVar, StringBuilder sb) throws IOException {
        boolean z;
        kotlin.reflect.jvm.internal.impl.descriptors.c cVarC;
        W0(this, sb, jVar, null, 2, null);
        if (this.f15463d.S() || jVar.a0().q() != Modality.SEALED) {
            kotlin.reflect.jvm.internal.impl.descriptors.s visibility = jVar.getVisibility();
            r.d(visibility, "constructor.visibility");
            if (U1(visibility, sb)) {
                z = true;
            } else {
                z = false;
            }
        } else {
            z = false;
        }
        l1(jVar, sb);
        boolean z2 = q0() || !jVar.Z() || z;
        if (z2) {
            sb.append(k1("constructor"));
        }
        kotlin.reflect.jvm.internal.impl.descriptors.g gVarB = jVar.b();
        r.d(gVarB, "constructor.containingDeclaration");
        if (x0()) {
            if (z2) {
                sb.append(" ");
            }
            r1(gVarB, sb, true);
            List<t0> typeParameters = jVar.getTypeParameters();
            r.d(typeParameters, "constructor.typeParameters");
            O1(typeParameters, sb, false);
        }
        List<v0> listF = jVar.f();
        r.d(listF, "constructor.valueParameters");
        S1(listF, jVar.d0(), sb);
        if (p0() && !jVar.Z() && (gVarB instanceof kotlin.reflect.jvm.internal.impl.descriptors.d) && (cVarC = ((kotlin.reflect.jvm.internal.impl.descriptors.d) gVarB).C()) != null) {
            List<v0> listF2 = cVarC.f();
            r.d(listF2, "primaryConstructor.valueParameters");
            ArrayList arrayList = new ArrayList();
            for (Object obj : listF2) {
                v0 v0Var = (v0) obj;
                if (!v0Var.x0() && v0Var.t0() == null) {
                    arrayList.add(obj);
                }
            }
            if (!arrayList.isEmpty()) {
                sb.append(" : ");
                sb.append(k1("this"));
                sb.append(CollectionsKt___CollectionsKt.m0(arrayList, ", ", "(", ")", 0, null, new Function1<v0, CharSequence>() { // from class: kotlin.reflect.jvm.internal.impl.renderer.DescriptorRendererImpl$renderConstructor$1
                    @Override // kotlin.jvm.functions.Function1
                    public final CharSequence invoke(v0 v0Var2) {
                        return "";
                    }
                }, 24, null));
            }
        }
        if (x0()) {
            List<t0> typeParameters2 = jVar.getTypeParameters();
            r.d(typeParameters2, "constructor.typeParameters");
            V1(typeParameters2, sb);
        }
    }

    private final void e1(StringBuilder sb, a0 a0Var) {
        W0(this, sb, a0Var, null, 2, null);
        kotlin.reflect.jvm.internal.impl.types.k kVar = a0Var instanceof kotlin.reflect.jvm.internal.impl.types.k ? (kotlin.reflect.jvm.internal.impl.types.k) a0Var : null;
        kotlin.reflect.jvm.internal.impl.types.f0 f0VarU0 = kVar != null ? kVar.U0() : null;
        if (kotlin.reflect.jvm.internal.impl.types.b0.a(a0Var)) {
            if ((a0Var instanceof b1) && l0()) {
                sb.append(((b1) a0Var).R0());
            } else if (!(a0Var instanceof kotlin.reflect.jvm.internal.impl.types.s) || e0()) {
                sb.append(a0Var.I0().toString());
            } else {
                sb.append(((kotlin.reflect.jvm.internal.impl.types.s) a0Var).R0());
            }
            sb.append(I1(a0Var.H0()));
        } else if (a0Var instanceof kotlin.reflect.jvm.internal.impl.types.l0) {
            sb.append(((kotlin.reflect.jvm.internal.impl.types.l0) a0Var).R0().toString());
        } else if (f0VarU0 instanceof kotlin.reflect.jvm.internal.impl.types.l0) {
            sb.append(((kotlin.reflect.jvm.internal.impl.types.l0) f0VarU0).R0().toString());
        } else {
            L1(this, sb, a0Var, null, 2, null);
        }
        if (a0Var.J0()) {
            sb.append("?");
        }
        if (kotlin.reflect.jvm.internal.impl.types.i0.c(a0Var)) {
            sb.append("!!");
        }
    }

    private final String f1(String str) {
        int i = b.f15467a[A0().ordinal()];
        if (i == 1) {
            return str;
        }
        if (i != 2) {
            throw new NoWhenBranchMatchedException();
        }
        return "<font color=red><b>" + str + "</b></font>";
    }

    private final String g1(List<kotlin.reflect.jvm.internal.impl.name.f> list) {
        return P(e.c(list));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void h1(u uVar, StringBuilder sb) throws IOException {
        if (!z0()) {
            if (!y0()) {
                W0(this, sb, uVar, null, 2, null);
                kotlin.reflect.jvm.internal.impl.descriptors.s visibility = uVar.getVisibility();
                r.d(visibility, "function.visibility");
                U1(visibility, sb);
                p1(uVar, sb);
                if (a0()) {
                    m1(uVar, sb);
                }
                u1(uVar, sb);
                if (a0()) {
                    T0(uVar, sb);
                } else {
                    G1(uVar, sb);
                }
                l1(uVar, sb);
                if (F0()) {
                    if (uVar.y0()) {
                        sb.append("/*isHiddenToOvercomeSignatureClash*/ ");
                    }
                    if (uVar.A0()) {
                        sb.append("/*isHiddenForResolutionEverywhereBesideSupercalls*/ ");
                    }
                }
            }
            sb.append(k1("fun"));
            sb.append(" ");
            List<t0> typeParameters = uVar.getTypeParameters();
            r.d(typeParameters, "function.typeParameters");
            O1(typeParameters, sb, true);
            B1(uVar, sb);
        }
        r1(uVar, sb, true);
        List<v0> listF = uVar.f();
        r.d(listF, "function.valueParameters");
        S1(listF, uVar.d0(), sb);
        C1(uVar, sb);
        a0 returnType = uVar.getReturnType();
        if (!I0() && (D0() || returnType == null || !g.A0(returnType))) {
            sb.append(": ");
            sb.append(returnType == null ? "[NULL]" : w(returnType));
        }
        List<t0> typeParameters2 = uVar.getTypeParameters();
        r.d(typeParameters2, "function.typeParameters");
        V1(typeParameters2, sb);
    }

    private final void i1(StringBuilder sb, a0 a0Var) {
        kotlin.reflect.jvm.internal.impl.name.f fVarC;
        int length = sb.length();
        W0(Z(), sb, a0Var, null, 2, null);
        boolean z = true;
        boolean z2 = sb.length() != length;
        boolean zO = f.o(a0Var);
        boolean zJ0 = a0Var.J0();
        a0 a0VarH = f.h(a0Var);
        boolean z3 = zJ0 || (z2 && a0VarH != null);
        if (z3) {
            if (zO) {
                sb.insert(length, '(');
            } else {
                if (z2) {
                    kotlin.text.b.c(kotlin.text.v.L0(sb));
                    if (sb.charAt(StringsKt__StringsKt.N(sb) - 1) != ')') {
                        sb.insert(StringsKt__StringsKt.N(sb), "()");
                    }
                }
                sb.append("(");
            }
        }
        q1(sb, zO, "suspend");
        if (a0VarH != null) {
            if ((!X1(a0VarH) || a0VarH.J0()) && !M0(a0VarH)) {
                z = false;
            }
            if (z) {
                sb.append("(");
            }
            s1(sb, a0VarH);
            if (z) {
                sb.append(")");
            }
            sb.append(".");
        }
        sb.append("(");
        int i = 0;
        for (kotlin.reflect.jvm.internal.impl.types.s0 s0Var : f.j(a0Var)) {
            int i2 = i + 1;
            if (i > 0) {
                sb.append(", ");
            }
            if (k0()) {
                a0 type = s0Var.getType();
                r.d(type, "typeProjection.type");
                fVarC = f.c(type);
            } else {
                fVarC = null;
            }
            if (fVarC != null) {
                sb.append(v(fVarC, false));
                sb.append(": ");
            }
            sb.append(x(s0Var));
            i = i2;
        }
        sb.append(") ");
        sb.append(N());
        sb.append(" ");
        s1(sb, f.i(a0Var));
        if (z3) {
            sb.append(")");
        }
        if (zJ0) {
            sb.append("?");
        }
    }

    private final void j1(w0 w0Var, StringBuilder sb) {
        kotlin.reflect.jvm.internal.impl.resolve.constants.g<?> gVarM0;
        if (!d0() || (gVarM0 = w0Var.m0()) == null) {
            return;
        }
        sb.append(" = ");
        sb.append(P(c1(gVarM0)));
    }

    private final String k1(String str) {
        int i = b.f15467a[A0().ordinal()];
        if (i == 1) {
            return str;
        }
        if (i != 2) {
            throw new NoWhenBranchMatchedException();
        }
        if (T()) {
            return str;
        }
        return "<b>" + str + "</b>";
    }

    private final void l1(CallableMemberDescriptor callableMemberDescriptor, StringBuilder sb) {
        if (f0().contains(DescriptorRendererModifier.MEMBER_KIND) && F0() && callableMemberDescriptor.g() != CallableMemberDescriptor.Kind.DECLARATION) {
            sb.append("/*");
            sb.append(kotlin.reflect.jvm.internal.impl.util.j.a.f(callableMemberDescriptor.g().name()));
            sb.append("*/ ");
        }
    }

    private final void m1(w wVar, StringBuilder sb) {
        q1(sb, wVar.isExternal(), "external");
        q1(sb, f0().contains(DescriptorRendererModifier.EXPECT) && wVar.i0(), "expect");
        q1(sb, f0().contains(DescriptorRendererModifier.ACTUAL) && wVar.V(), "actual");
    }

    private final void o1(Modality modality, StringBuilder sb, Modality modality2) {
        if (s0() || modality != modality2) {
            q1(sb, f0().contains(DescriptorRendererModifier.MODALITY), kotlin.reflect.jvm.internal.impl.util.j.a.f(modality.name()));
        }
    }

    private final void p1(CallableMemberDescriptor callableMemberDescriptor, StringBuilder sb) {
        if (kotlin.reflect.jvm.internal.impl.resolve.c.J(callableMemberDescriptor) && callableMemberDescriptor.q() == Modality.FINAL) {
            return;
        }
        if (i0() == OverrideRenderingPolicy.RENDER_OVERRIDE && callableMemberDescriptor.q() == Modality.OPEN && Q0(callableMemberDescriptor)) {
            return;
        }
        Modality modalityQ = callableMemberDescriptor.q();
        r.d(modalityQ, "callable.modality");
        o1(modalityQ, sb, N0(callableMemberDescriptor));
    }

    private final void q1(StringBuilder sb, boolean z, String str) {
        if (z) {
            sb.append(k1(str));
            sb.append(" ");
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void r1(k kVar, StringBuilder sb, boolean z) {
        kotlin.reflect.jvm.internal.impl.name.f name = kVar.getName();
        r.d(name, "descriptor.name");
        sb.append(v(name, z));
    }

    private final void s1(StringBuilder sb, a0 a0Var) {
        c1 c1VarL0 = a0Var.L0();
        kotlin.reflect.jvm.internal.impl.types.a aVar = c1VarL0 instanceof kotlin.reflect.jvm.internal.impl.types.a ? (kotlin.reflect.jvm.internal.impl.types.a) c1VarL0 : null;
        if (aVar == null) {
            t1(sb, a0Var);
            return;
        }
        if (v0()) {
            t1(sb, aVar.F());
            return;
        }
        t1(sb, aVar.U0());
        if (w0()) {
            R0(sb, aVar);
        }
    }

    private final void t1(StringBuilder sb, a0 a0Var) {
        if ((a0Var instanceof d1) && i() && !((d1) a0Var).N0()) {
            sb.append("<Not computed yet>");
            return;
        }
        c1 c1VarL0 = a0Var.L0();
        if (c1VarL0 instanceof kotlin.reflect.jvm.internal.impl.types.v) {
            sb.append(((kotlin.reflect.jvm.internal.impl.types.v) c1VarL0).S0(this, this));
        } else if (c1VarL0 instanceof kotlin.reflect.jvm.internal.impl.types.f0) {
            D1(sb, (kotlin.reflect.jvm.internal.impl.types.f0) c1VarL0);
        }
    }

    private final void u1(CallableMemberDescriptor callableMemberDescriptor, StringBuilder sb) {
        if (f0().contains(DescriptorRendererModifier.OVERRIDE) && Q0(callableMemberDescriptor) && i0() != OverrideRenderingPolicy.RENDER_OPEN) {
            q1(sb, true, "override");
            if (F0()) {
                sb.append("/*");
                sb.append(callableMemberDescriptor.d().size());
                sb.append("*/ ");
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void v1(b0 b0Var, StringBuilder sb) {
        w1(b0Var.e(), "package-fragment", sb);
        if (i()) {
            sb.append(" in ");
            r1(b0Var.b(), sb, false);
        }
    }

    private final void w1(kotlin.reflect.jvm.internal.impl.name.c cVar, String str, StringBuilder sb) {
        sb.append(k1(str));
        kotlin.reflect.jvm.internal.impl.name.d dVarJ = cVar.j();
        r.d(dVarJ, "fqName.toUnsafe()");
        String strU = u(dVarJ);
        if (strU.length() > 0) {
            sb.append(" ");
            sb.append(strU);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void x1(f0 f0Var, StringBuilder sb) {
        w1(f0Var.e(), "package", sb);
        if (i()) {
            sb.append(" in context of ");
            r1(f0Var.getModule(), sb, false);
        }
    }

    private final void y1(StringBuilder sb, h0 h0Var) {
        StringBuilder sb2;
        h0 h0VarC = h0Var.c();
        if (h0VarC == null) {
            sb2 = null;
        } else {
            y1(sb, h0VarC);
            sb.append('.');
            kotlin.reflect.jvm.internal.impl.name.f name = h0Var.b().getName();
            r.d(name, "possiblyInnerType.classifierDescriptor.name");
            sb.append(v(name, false));
            sb2 = sb;
        }
        if (sb2 == null) {
            q0 q0VarI = h0Var.b().i();
            r.d(q0VarI, "possiblyInnerType.classi…escriptor.typeConstructor");
            sb.append(J1(q0VarI));
        }
        sb.append(I1(h0Var.a()));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void z1(j0 j0Var, StringBuilder sb) throws IOException {
        if (!z0()) {
            if (!y0()) {
                A1(j0Var, sb);
                kotlin.reflect.jvm.internal.impl.descriptors.s visibility = j0Var.getVisibility();
                r.d(visibility, "property.visibility");
                U1(visibility, sb);
                boolean z = false;
                q1(sb, f0().contains(DescriptorRendererModifier.CONST) && j0Var.isConst(), "const");
                m1(j0Var, sb);
                p1(j0Var, sb);
                u1(j0Var, sb);
                if (f0().contains(DescriptorRendererModifier.LATEINIT) && j0Var.v0()) {
                    z = true;
                }
                q1(sb, z, "lateinit");
                l1(j0Var, sb);
            }
            Q1(this, j0Var, sb, false, 4, null);
            List<t0> typeParameters = j0Var.getTypeParameters();
            r.d(typeParameters, "property.typeParameters");
            O1(typeParameters, sb, true);
            B1(j0Var, sb);
        }
        r1(j0Var, sb, true);
        sb.append(": ");
        a0 type = j0Var.getType();
        r.d(type, "property.type");
        sb.append(w(type));
        C1(j0Var, sb);
        j1(j0Var, sb);
        List<t0> typeParameters2 = j0Var.getTypeParameters();
        r.d(typeParameters2, "property.typeParameters");
        V1(typeParameters2, sb);
    }

    public RenderingFormat A0() {
        return this.f15463d.Z();
    }

    public Function1<a0, a0> B0() {
        return this.f15463d.a0();
    }

    public boolean C0() {
        return this.f15463d.b0();
    }

    public boolean D0() {
        return this.f15463d.c0();
    }

    public DescriptorRenderer.b E0() {
        return this.f15463d.d0();
    }

    public boolean F0() {
        return this.f15463d.e0();
    }

    public boolean G0() {
        return this.f15463d.f0();
    }

    public boolean H0() {
        return this.f15463d.g0();
    }

    public boolean I0() {
        return this.f15463d.h0();
    }

    public String I1(List<? extends kotlin.reflect.jvm.internal.impl.types.s0> typeArguments) throws IOException {
        r.e(typeArguments, "typeArguments");
        if (typeArguments.isEmpty()) {
            return "";
        }
        StringBuilder sb = new StringBuilder();
        sb.append(P0());
        M(sb, typeArguments);
        sb.append(L0());
        String string = sb.toString();
        r.d(string, "StringBuilder().apply(builderAction).toString()");
        return string;
    }

    public boolean J0() {
        return this.f15463d.i0();
    }

    public String J1(q0 typeConstructor) {
        r.e(typeConstructor, "typeConstructor");
        kotlin.reflect.jvm.internal.impl.descriptors.f fVarU = typeConstructor.u();
        if (fVarU instanceof t0 ? true : fVarU instanceof kotlin.reflect.jvm.internal.impl.descriptors.d ? true : fVarU instanceof s0) {
            return a1(fVarU);
        }
        if (fVarU == null) {
            return typeConstructor instanceof IntersectionTypeConstructor ? ((IntersectionTypeConstructor) typeConstructor).h(new Function1<a0, Object>() { // from class: kotlin.reflect.jvm.internal.impl.renderer.DescriptorRendererImpl$renderTypeConstructor$1
                @Override // kotlin.jvm.functions.Function1
                public final Object invoke(a0 it) {
                    r.e(it, "it");
                    return it instanceof kotlin.reflect.jvm.internal.impl.types.l0 ? ((kotlin.reflect.jvm.internal.impl.types.l0) it).R0() : it;
                }
            }) : typeConstructor.toString();
        }
        throw new IllegalStateException(r.m("Unexpected classifier: ", fVarU.getClass()).toString());
    }

    public boolean K0() {
        return this.f15463d.j0();
    }

    public boolean Q() {
        return this.f15463d.r();
    }

    public boolean R() {
        return this.f15463d.s();
    }

    public Function1<kotlin.reflect.jvm.internal.impl.descriptors.annotations.c, Boolean> S() {
        return this.f15463d.t();
    }

    public boolean T() {
        return this.f15463d.u();
    }

    public boolean U() {
        return this.f15463d.v();
    }

    public kotlin.reflect.jvm.internal.impl.renderer.a V() {
        return this.f15463d.w();
    }

    public Function1<v0, String> W() {
        return this.f15463d.x();
    }

    public boolean X() {
        return this.f15463d.y();
    }

    public Set<kotlin.reflect.jvm.internal.impl.name.c> Y() {
        return this.f15463d.z();
    }

    @Override // kotlin.reflect.jvm.internal.impl.renderer.b
    public void a(boolean z) {
        this.f15463d.a(z);
    }

    public boolean a0() {
        return this.f15463d.A();
    }

    public String a1(kotlin.reflect.jvm.internal.impl.descriptors.f klass) {
        r.e(klass, "klass");
        return kotlin.reflect.jvm.internal.impl.types.t.r(klass) ? klass.i().toString() : V().a(klass, this);
    }

    @Override // kotlin.reflect.jvm.internal.impl.renderer.b
    public void b(ParameterNameRenderingPolicy parameterNameRenderingPolicy) {
        r.e(parameterNameRenderingPolicy, "<set-?>");
        this.f15463d.b(parameterNameRenderingPolicy);
    }

    public boolean b0() {
        return this.f15463d.B();
    }

    @Override // kotlin.reflect.jvm.internal.impl.renderer.b
    public void c(boolean z) {
        this.f15463d.c(z);
    }

    public boolean c0() {
        return this.f15463d.C();
    }

    @Override // kotlin.reflect.jvm.internal.impl.renderer.b
    public boolean d() {
        return this.f15463d.d();
    }

    public boolean d0() {
        return this.f15463d.D();
    }

    @Override // kotlin.reflect.jvm.internal.impl.renderer.b
    public void e(boolean z) {
        this.f15463d.e(z);
    }

    public boolean e0() {
        return this.f15463d.E();
    }

    @Override // kotlin.reflect.jvm.internal.impl.renderer.b
    public void f(boolean z) {
        this.f15463d.f(z);
    }

    public Set<DescriptorRendererModifier> f0() {
        return this.f15463d.F();
    }

    @Override // kotlin.reflect.jvm.internal.impl.renderer.b
    public void g(RenderingFormat renderingFormat) {
        r.e(renderingFormat, "<set-?>");
        this.f15463d.g(renderingFormat);
    }

    public boolean g0() {
        return this.f15463d.G();
    }

    @Override // kotlin.reflect.jvm.internal.impl.renderer.b
    public Set<kotlin.reflect.jvm.internal.impl.name.c> h() {
        return this.f15463d.h();
    }

    public final DescriptorRendererOptionsImpl h0() {
        return this.f15463d;
    }

    @Override // kotlin.reflect.jvm.internal.impl.renderer.b
    public boolean i() {
        return this.f15463d.i();
    }

    public OverrideRenderingPolicy i0() {
        return this.f15463d.H();
    }

    @Override // kotlin.reflect.jvm.internal.impl.renderer.b
    public AnnotationArgumentsRenderingPolicy j() {
        return this.f15463d.j();
    }

    public ParameterNameRenderingPolicy j0() {
        return this.f15463d.I();
    }

    @Override // kotlin.reflect.jvm.internal.impl.renderer.b
    public void k(Set<kotlin.reflect.jvm.internal.impl.name.c> set) {
        r.e(set, "<set-?>");
        this.f15463d.k(set);
    }

    public boolean k0() {
        return this.f15463d.J();
    }

    @Override // kotlin.reflect.jvm.internal.impl.renderer.b
    public void l(Set<? extends DescriptorRendererModifier> set) {
        r.e(set, "<set-?>");
        this.f15463d.l(set);
    }

    public boolean l0() {
        return this.f15463d.K();
    }

    @Override // kotlin.reflect.jvm.internal.impl.renderer.b
    public void m(kotlin.reflect.jvm.internal.impl.renderer.a aVar) {
        r.e(aVar, "<set-?>");
        this.f15463d.m(aVar);
    }

    public PropertyAccessorRenderingPolicy m0() {
        return this.f15463d.L();
    }

    @Override // kotlin.reflect.jvm.internal.impl.renderer.b
    public void n(boolean z) {
        this.f15463d.n(z);
    }

    public boolean n0() {
        return this.f15463d.M();
    }

    public String n1(String message) {
        r.e(message, "message");
        int i = b.f15467a[A0().ordinal()];
        if (i == 1) {
            return message;
        }
        if (i != 2) {
            throw new NoWhenBranchMatchedException();
        }
        return "<i>" + message + "</i>";
    }

    @Override // kotlin.reflect.jvm.internal.impl.renderer.b
    public void o(boolean z) {
        this.f15463d.o(z);
    }

    public boolean o0() {
        return this.f15463d.N();
    }

    @Override // kotlin.reflect.jvm.internal.impl.renderer.b
    public void p(boolean z) {
        this.f15463d.p(z);
    }

    public boolean p0() {
        return this.f15463d.O();
    }

    @Override // kotlin.reflect.jvm.internal.impl.renderer.DescriptorRenderer
    public String q(k declarationDescriptor) {
        r.e(declarationDescriptor, "declarationDescriptor");
        StringBuilder sb = new StringBuilder();
        declarationDescriptor.y(new a(this), sb);
        if (G0()) {
            L(sb, declarationDescriptor);
        }
        String string = sb.toString();
        r.d(string, "StringBuilder().apply(builderAction).toString()");
        return string;
    }

    public boolean q0() {
        return this.f15463d.P();
    }

    @Override // kotlin.reflect.jvm.internal.impl.renderer.DescriptorRenderer
    public String r(kotlin.reflect.jvm.internal.impl.descriptors.annotations.c annotation, AnnotationUseSiteTarget annotationUseSiteTarget) throws IOException {
        r.e(annotation, "annotation");
        StringBuilder sb = new StringBuilder();
        sb.append('@');
        if (annotationUseSiteTarget != null) {
            sb.append(r.m(annotationUseSiteTarget.getRenderName(), ":"));
        }
        a0 type = annotation.getType();
        sb.append(w(type));
        if (b0()) {
            List<String> listU0 = U0(annotation);
            if (c0() || (!listU0.isEmpty())) {
                s.k0(listU0, sb, ", ", "(", ")", 0, null, null, 112, null);
            }
        }
        if (F0() && (kotlin.reflect.jvm.internal.impl.types.b0.a(type) || (type.I0().u() instanceof NotFoundClasses.b))) {
            sb.append(" /* annotation class not found */");
        }
        String string = sb.toString();
        r.d(string, "StringBuilder().apply(builderAction).toString()");
        return string;
    }

    public boolean r0() {
        return this.f15463d.Q();
    }

    public boolean s0() {
        return this.f15463d.R();
    }

    @Override // kotlin.reflect.jvm.internal.impl.renderer.DescriptorRenderer
    public String t(String lowerRendered, String upperRendered, g builtIns) {
        r.e(lowerRendered, "lowerRendered");
        r.e(upperRendered, "upperRendered");
        r.e(builtIns, "builtIns");
        if (O(lowerRendered, upperRendered)) {
            if (!kotlin.text.t.B(upperRendered, "(", false, 2, null)) {
                return r.m(lowerRendered, "!");
            }
            return '(' + lowerRendered + ")!";
        }
        kotlin.reflect.jvm.internal.impl.renderer.a aVarV = V();
        kotlin.reflect.jvm.internal.impl.descriptors.d dVarW = builtIns.w();
        r.d(dVarW, "builtIns.collection");
        String strG0 = StringsKt__StringsKt.G0(aVarV.a(dVarW, this), "Collection", null, 2, null);
        String strW1 = W1(lowerRendered, r.m(strG0, "Mutable"), upperRendered, strG0, strG0 + "(Mutable)");
        if (strW1 != null) {
            return strW1;
        }
        String strW2 = W1(lowerRendered, r.m(strG0, "MutableMap.MutableEntry"), upperRendered, r.m(strG0, "Map.Entry"), r.m(strG0, "(Mutable)Map.(Mutable)Entry"));
        if (strW2 != null) {
            return strW2;
        }
        kotlin.reflect.jvm.internal.impl.renderer.a aVarV2 = V();
        kotlin.reflect.jvm.internal.impl.descriptors.d dVarJ = builtIns.j();
        r.d(dVarJ, "builtIns.array");
        String strG1 = StringsKt__StringsKt.G0(aVarV2.a(dVarJ, this), "Array", null, 2, null);
        String strW3 = W1(lowerRendered, r.m(strG1, P("Array<")), upperRendered, r.m(strG1, P("Array<out ")), r.m(strG1, P("Array<(out) ")));
        if (strW3 != null) {
            return strW3;
        }
        return '(' + lowerRendered + ".." + upperRendered + ')';
    }

    public boolean t0() {
        return this.f15463d.S();
    }

    @Override // kotlin.reflect.jvm.internal.impl.renderer.DescriptorRenderer
    public String u(kotlin.reflect.jvm.internal.impl.name.d fqName) {
        r.e(fqName, "fqName");
        List<kotlin.reflect.jvm.internal.impl.name.f> listH = fqName.h();
        r.d(listH, "fqName.pathSegments()");
        return g1(listH);
    }

    public boolean u0() {
        return this.f15463d.T();
    }

    @Override // kotlin.reflect.jvm.internal.impl.renderer.DescriptorRenderer
    public String v(kotlin.reflect.jvm.internal.impl.name.f name, boolean z) {
        r.e(name, "name");
        String strP = P(e.b(name));
        if (!T() || A0() != RenderingFormat.HTML || !z) {
            return strP;
        }
        return "<b>" + strP + "</b>";
    }

    public boolean v0() {
        return this.f15463d.U();
    }

    @Override // kotlin.reflect.jvm.internal.impl.renderer.DescriptorRenderer
    public String w(a0 type) {
        r.e(type, "type");
        StringBuilder sb = new StringBuilder();
        s1(sb, B0().invoke(type));
        String string = sb.toString();
        r.d(string, "StringBuilder().apply(builderAction).toString()");
        return string;
    }

    public boolean w0() {
        return this.f15463d.V();
    }

    @Override // kotlin.reflect.jvm.internal.impl.renderer.DescriptorRenderer
    public String x(kotlin.reflect.jvm.internal.impl.types.s0 typeProjection) throws IOException {
        r.e(typeProjection, "typeProjection");
        StringBuilder sb = new StringBuilder();
        M(sb, t.d(typeProjection));
        String string = sb.toString();
        r.d(string, "StringBuilder().apply(builderAction).toString()");
        return string;
    }

    public boolean x0() {
        return this.f15463d.W();
    }

    public boolean y0() {
        return this.f15463d.X();
    }

    public boolean z0() {
        return this.f15463d.Y();
    }
}
