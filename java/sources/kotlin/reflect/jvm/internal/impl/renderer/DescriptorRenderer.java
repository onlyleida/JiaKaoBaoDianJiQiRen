package kotlin.reflect.jvm.internal.impl.renderer;

import kotlin.NoWhenBranchMatchedException;
import kotlin.collections.u0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.o;
import kotlin.jvm.internal.r;
import kotlin.reflect.jvm.internal.impl.descriptors.ClassKind;
import kotlin.reflect.jvm.internal.impl.descriptors.annotations.AnnotationUseSiteTarget;
import kotlin.reflect.jvm.internal.impl.descriptors.g;
import kotlin.reflect.jvm.internal.impl.descriptors.k;
import kotlin.reflect.jvm.internal.impl.descriptors.s0;
import kotlin.reflect.jvm.internal.impl.descriptors.v0;
import kotlin.reflect.jvm.internal.impl.name.f;
import kotlin.reflect.jvm.internal.impl.types.a0;
import kotlin.v;

/* JADX INFO: loaded from: classes6.dex */
public abstract class DescriptorRenderer {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final a f15460a;
    public static final DescriptorRenderer b;
    public static final DescriptorRenderer c;

    public static final class a {

        /* JADX INFO: renamed from: kotlin.reflect.jvm.internal.impl.renderer.DescriptorRenderer$a$a, reason: collision with other inner class name */
        public /* synthetic */ class C0348a {

            /* JADX INFO: renamed from: a, reason: collision with root package name */
            public static final /* synthetic */ int[] f15461a;

            static {
                int[] iArr = new int[ClassKind.values().length];
                iArr[ClassKind.CLASS.ordinal()] = 1;
                iArr[ClassKind.INTERFACE.ordinal()] = 2;
                iArr[ClassKind.ENUM_CLASS.ordinal()] = 3;
                iArr[ClassKind.OBJECT.ordinal()] = 4;
                iArr[ClassKind.ANNOTATION_CLASS.ordinal()] = 5;
                iArr[ClassKind.ENUM_ENTRY.ordinal()] = 6;
                f15461a = iArr;
            }
        }

        private a() {
        }

        public /* synthetic */ a(o oVar) {
            this();
        }

        public final String a(g classifier) {
            r.e(classifier, "classifier");
            if (classifier instanceof s0) {
                return "typealias";
            }
            if (!(classifier instanceof kotlin.reflect.jvm.internal.impl.descriptors.d)) {
                throw new AssertionError(r.m("Unexpected classifier: ", classifier));
            }
            kotlin.reflect.jvm.internal.impl.descriptors.d dVar = (kotlin.reflect.jvm.internal.impl.descriptors.d) classifier;
            if (dVar.Y()) {
                return "companion object";
            }
            switch (C0348a.f15461a[dVar.g().ordinal()]) {
                case 1:
                    return "class";
                case 2:
                    return "interface";
                case 3:
                    return "enum class";
                case 4:
                    return "object";
                case 5:
                    return "annotation class";
                case 6:
                    return "enum entry";
                default:
                    throw new NoWhenBranchMatchedException();
            }
        }

        public final DescriptorRenderer b(Function1<? super kotlin.reflect.jvm.internal.impl.renderer.b, v> changeOptions) {
            r.e(changeOptions, "changeOptions");
            DescriptorRendererOptionsImpl descriptorRendererOptionsImpl = new DescriptorRendererOptionsImpl();
            changeOptions.invoke(descriptorRendererOptionsImpl);
            descriptorRendererOptionsImpl.l0();
            return new DescriptorRendererImpl(descriptorRendererOptionsImpl);
        }
    }

    public interface b {

        public static final class a implements b {

            /* JADX INFO: renamed from: a, reason: collision with root package name */
            public static final a f15462a = new a();

            private a() {
            }

            @Override // kotlin.reflect.jvm.internal.impl.renderer.DescriptorRenderer.b
            public void a(v0 parameter, int i, int i2, StringBuilder builder) {
                r.e(parameter, "parameter");
                r.e(builder, "builder");
            }

            @Override // kotlin.reflect.jvm.internal.impl.renderer.DescriptorRenderer.b
            public void b(int i, StringBuilder builder) {
                r.e(builder, "builder");
                builder.append("(");
            }

            @Override // kotlin.reflect.jvm.internal.impl.renderer.DescriptorRenderer.b
            public void c(v0 parameter, int i, int i2, StringBuilder builder) {
                r.e(parameter, "parameter");
                r.e(builder, "builder");
                if (i != i2 - 1) {
                    builder.append(", ");
                }
            }

            @Override // kotlin.reflect.jvm.internal.impl.renderer.DescriptorRenderer.b
            public void d(int i, StringBuilder builder) {
                r.e(builder, "builder");
                builder.append(")");
            }
        }

        void a(v0 v0Var, int i, int i2, StringBuilder sb);

        void b(int i, StringBuilder sb);

        void c(v0 v0Var, int i, int i2, StringBuilder sb);

        void d(int i, StringBuilder sb);
    }

    static {
        a aVar = new a(null);
        f15460a = aVar;
        aVar.b(new Function1<kotlin.reflect.jvm.internal.impl.renderer.b, v>() { // from class: kotlin.reflect.jvm.internal.impl.renderer.DescriptorRenderer$Companion$COMPACT_WITH_MODIFIERS$1
            @Override // kotlin.jvm.functions.Function1
            public /* bridge */ /* synthetic */ v invoke(b bVar) {
                invoke2(bVar);
                return v.f15822a;
            }

            /* JADX INFO: renamed from: invoke, reason: avoid collision after fix types in other method */
            public final void invoke2(b withOptions) {
                r.e(withOptions, "$this$withOptions");
                withOptions.c(false);
            }
        });
        aVar.b(new Function1<kotlin.reflect.jvm.internal.impl.renderer.b, v>() { // from class: kotlin.reflect.jvm.internal.impl.renderer.DescriptorRenderer$Companion$COMPACT$1
            @Override // kotlin.jvm.functions.Function1
            public /* bridge */ /* synthetic */ v invoke(b bVar) {
                invoke2(bVar);
                return v.f15822a;
            }

            /* JADX INFO: renamed from: invoke, reason: avoid collision after fix types in other method */
            public final void invoke2(b withOptions) {
                r.e(withOptions, "$this$withOptions");
                withOptions.c(false);
                withOptions.l(u0.b());
            }
        });
        aVar.b(new Function1<kotlin.reflect.jvm.internal.impl.renderer.b, v>() { // from class: kotlin.reflect.jvm.internal.impl.renderer.DescriptorRenderer$Companion$COMPACT_WITHOUT_SUPERTYPES$1
            @Override // kotlin.jvm.functions.Function1
            public /* bridge */ /* synthetic */ v invoke(b bVar) {
                invoke2(bVar);
                return v.f15822a;
            }

            /* JADX INFO: renamed from: invoke, reason: avoid collision after fix types in other method */
            public final void invoke2(b withOptions) {
                r.e(withOptions, "$this$withOptions");
                withOptions.c(false);
                withOptions.l(u0.b());
                withOptions.e(true);
            }
        });
        aVar.b(new Function1<kotlin.reflect.jvm.internal.impl.renderer.b, v>() { // from class: kotlin.reflect.jvm.internal.impl.renderer.DescriptorRenderer$Companion$COMPACT_WITH_SHORT_TYPES$1
            @Override // kotlin.jvm.functions.Function1
            public /* bridge */ /* synthetic */ v invoke(b bVar) {
                invoke2(bVar);
                return v.f15822a;
            }

            /* JADX INFO: renamed from: invoke, reason: avoid collision after fix types in other method */
            public final void invoke2(b withOptions) {
                r.e(withOptions, "$this$withOptions");
                withOptions.l(u0.b());
                withOptions.m(a.b.f15475a);
                withOptions.b(ParameterNameRenderingPolicy.ONLY_NON_SYNTHESIZED);
            }
        });
        aVar.b(new Function1<kotlin.reflect.jvm.internal.impl.renderer.b, v>() { // from class: kotlin.reflect.jvm.internal.impl.renderer.DescriptorRenderer$Companion$ONLY_NAMES_WITH_SHORT_TYPES$1
            @Override // kotlin.jvm.functions.Function1
            public /* bridge */ /* synthetic */ v invoke(b bVar) {
                invoke2(bVar);
                return v.f15822a;
            }

            /* JADX INFO: renamed from: invoke, reason: avoid collision after fix types in other method */
            public final void invoke2(b withOptions) {
                r.e(withOptions, "$this$withOptions");
                withOptions.c(false);
                withOptions.l(u0.b());
                withOptions.m(a.b.f15475a);
                withOptions.p(true);
                withOptions.b(ParameterNameRenderingPolicy.NONE);
                withOptions.f(true);
                withOptions.o(true);
                withOptions.e(true);
                withOptions.a(true);
            }
        });
        b = aVar.b(new Function1<kotlin.reflect.jvm.internal.impl.renderer.b, v>() { // from class: kotlin.reflect.jvm.internal.impl.renderer.DescriptorRenderer$Companion$FQ_NAMES_IN_TYPES$1
            @Override // kotlin.jvm.functions.Function1
            public /* bridge */ /* synthetic */ v invoke(b bVar) {
                invoke2(bVar);
                return v.f15822a;
            }

            /* JADX INFO: renamed from: invoke, reason: avoid collision after fix types in other method */
            public final void invoke2(b withOptions) {
                r.e(withOptions, "$this$withOptions");
                withOptions.l(DescriptorRendererModifier.ALL_EXCEPT_ANNOTATIONS);
            }
        });
        aVar.b(new Function1<kotlin.reflect.jvm.internal.impl.renderer.b, v>() { // from class: kotlin.reflect.jvm.internal.impl.renderer.DescriptorRenderer$Companion$FQ_NAMES_IN_TYPES_WITH_ANNOTATIONS$1
            @Override // kotlin.jvm.functions.Function1
            public /* bridge */ /* synthetic */ v invoke(b bVar) {
                invoke2(bVar);
                return v.f15822a;
            }

            /* JADX INFO: renamed from: invoke, reason: avoid collision after fix types in other method */
            public final void invoke2(b withOptions) {
                r.e(withOptions, "$this$withOptions");
                withOptions.l(DescriptorRendererModifier.ALL);
            }
        });
        aVar.b(new Function1<kotlin.reflect.jvm.internal.impl.renderer.b, v>() { // from class: kotlin.reflect.jvm.internal.impl.renderer.DescriptorRenderer$Companion$SHORT_NAMES_IN_TYPES$1
            @Override // kotlin.jvm.functions.Function1
            public /* bridge */ /* synthetic */ v invoke(b bVar) {
                invoke2(bVar);
                return v.f15822a;
            }

            /* JADX INFO: renamed from: invoke, reason: avoid collision after fix types in other method */
            public final void invoke2(b withOptions) {
                r.e(withOptions, "$this$withOptions");
                withOptions.m(a.b.f15475a);
                withOptions.b(ParameterNameRenderingPolicy.ONLY_NON_SYNTHESIZED);
            }
        });
        c = aVar.b(new Function1<kotlin.reflect.jvm.internal.impl.renderer.b, v>() { // from class: kotlin.reflect.jvm.internal.impl.renderer.DescriptorRenderer$Companion$DEBUG_TEXT$1
            @Override // kotlin.jvm.functions.Function1
            public /* bridge */ /* synthetic */ v invoke(b bVar) {
                invoke2(bVar);
                return v.f15822a;
            }

            /* JADX INFO: renamed from: invoke, reason: avoid collision after fix types in other method */
            public final void invoke2(b withOptions) {
                r.e(withOptions, "$this$withOptions");
                withOptions.n(true);
                withOptions.m(a.C0350a.f15474a);
                withOptions.l(DescriptorRendererModifier.ALL);
            }
        });
        aVar.b(new Function1<kotlin.reflect.jvm.internal.impl.renderer.b, v>() { // from class: kotlin.reflect.jvm.internal.impl.renderer.DescriptorRenderer$Companion$HTML$1
            @Override // kotlin.jvm.functions.Function1
            public /* bridge */ /* synthetic */ v invoke(b bVar) {
                invoke2(bVar);
                return v.f15822a;
            }

            /* JADX INFO: renamed from: invoke, reason: avoid collision after fix types in other method */
            public final void invoke2(b withOptions) {
                r.e(withOptions, "$this$withOptions");
                withOptions.g(RenderingFormat.HTML);
                withOptions.l(DescriptorRendererModifier.ALL);
            }
        });
    }

    public static /* synthetic */ String s(DescriptorRenderer descriptorRenderer, kotlin.reflect.jvm.internal.impl.descriptors.annotations.c cVar, AnnotationUseSiteTarget annotationUseSiteTarget, int i, Object obj) {
        if (obj != null) {
            throw new UnsupportedOperationException("Super calls with default arguments not supported in this target, function: renderAnnotation");
        }
        if ((i & 2) != 0) {
            annotationUseSiteTarget = null;
        }
        return descriptorRenderer.r(cVar, annotationUseSiteTarget);
    }

    public abstract String q(k kVar);

    public abstract String r(kotlin.reflect.jvm.internal.impl.descriptors.annotations.c cVar, AnnotationUseSiteTarget annotationUseSiteTarget);

    public abstract String t(String str, String str2, kotlin.reflect.jvm.internal.impl.builtins.g gVar);

    public abstract String u(kotlin.reflect.jvm.internal.impl.name.d dVar);

    public abstract String v(f fVar, boolean z);

    public abstract String w(a0 a0Var);

    public abstract String x(kotlin.reflect.jvm.internal.impl.types.s0 s0Var);

    public final DescriptorRenderer y(Function1<? super kotlin.reflect.jvm.internal.impl.renderer.b, v> changeOptions) {
        r.e(changeOptions, "changeOptions");
        DescriptorRendererOptionsImpl descriptorRendererOptionsImplQ = ((DescriptorRendererImpl) this).h0().q();
        changeOptions.invoke(descriptorRendererOptionsImplQ);
        descriptorRendererOptionsImplQ.l0();
        return new DescriptorRendererImpl(descriptorRendererOptionsImplQ);
    }
}
