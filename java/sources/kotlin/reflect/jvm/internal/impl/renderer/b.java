package kotlin.reflect.jvm.internal.impl.renderer;

import java.util.Set;
import kotlin.jvm.internal.r;

/* JADX INFO: loaded from: classes6.dex */
public interface b {

    public static final class a {
        public static boolean a(b bVar) {
            r.e(bVar, "this");
            return bVar.j().getIncludeAnnotationArguments();
        }

        public static boolean b(b bVar) {
            r.e(bVar, "this");
            return bVar.j().getIncludeEmptyAnnotationArguments();
        }
    }

    void a(boolean z);

    void b(ParameterNameRenderingPolicy parameterNameRenderingPolicy);

    void c(boolean z);

    boolean d();

    void e(boolean z);

    void f(boolean z);

    void g(RenderingFormat renderingFormat);

    Set<kotlin.reflect.jvm.internal.impl.name.c> h();

    boolean i();

    AnnotationArgumentsRenderingPolicy j();

    void k(Set<kotlin.reflect.jvm.internal.impl.name.c> set);

    void l(Set<? extends DescriptorRendererModifier> set);

    void m(kotlin.reflect.jvm.internal.impl.renderer.a aVar);

    void n(boolean z);

    void o(boolean z);

    void p(boolean z);
}
