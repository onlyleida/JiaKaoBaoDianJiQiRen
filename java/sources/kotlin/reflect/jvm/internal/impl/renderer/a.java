package kotlin.reflect.jvm.internal.impl.renderer;

import java.util.ArrayList;
import kotlin.collections.a0;
import kotlin.jvm.internal.r;
import kotlin.reflect.jvm.internal.impl.descriptors.b0;
import kotlin.reflect.jvm.internal.impl.descriptors.f;
import kotlin.reflect.jvm.internal.impl.descriptors.k;
import kotlin.reflect.jvm.internal.impl.descriptors.t0;

/* JADX INFO: loaded from: classes6.dex */
public interface a {

    /* JADX INFO: renamed from: kotlin.reflect.jvm.internal.impl.renderer.a$a, reason: collision with other inner class name */
    public static final class C0350a implements a {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public static final C0350a f15474a = new C0350a();

        private C0350a() {
        }

        @Override // kotlin.reflect.jvm.internal.impl.renderer.a
        public String a(f classifier, DescriptorRenderer renderer) {
            r.e(classifier, "classifier");
            r.e(renderer, "renderer");
            if (classifier instanceof t0) {
                kotlin.reflect.jvm.internal.impl.name.f name = ((t0) classifier).getName();
                r.d(name, "classifier.name");
                return renderer.v(name, false);
            }
            kotlin.reflect.jvm.internal.impl.name.d dVarM = kotlin.reflect.jvm.internal.impl.resolve.c.m(classifier);
            r.d(dVarM, "getFqName(classifier)");
            return renderer.u(dVarM);
        }
    }

    public static final class b implements a {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public static final b f15475a = new b();

        private b() {
        }

        /* JADX WARN: Multi-variable type inference failed */
        /* JADX WARN: Type inference failed for: r2v0, types: [java.lang.Object, kotlin.reflect.jvm.internal.impl.descriptors.f] */
        /* JADX WARN: Type inference failed for: r2v1, types: [kotlin.reflect.jvm.internal.impl.descriptors.a0, kotlin.reflect.jvm.internal.impl.descriptors.k] */
        /* JADX WARN: Type inference failed for: r2v2, types: [kotlin.reflect.jvm.internal.impl.descriptors.k] */
        @Override // kotlin.reflect.jvm.internal.impl.renderer.a
        public String a(f classifier, DescriptorRenderer renderer) {
            r.e(classifier, "classifier");
            r.e(renderer, "renderer");
            if (classifier instanceof t0) {
                kotlin.reflect.jvm.internal.impl.name.f name = ((t0) classifier).getName();
                r.d(name, "classifier.name");
                return renderer.v(name, false);
            }
            ArrayList arrayList = new ArrayList();
            do {
                arrayList.add(classifier.getName());
                classifier = classifier.b();
            } while (classifier instanceof kotlin.reflect.jvm.internal.impl.descriptors.d);
            return e.c(a0.M(arrayList));
        }
    }

    public static final class c implements a {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public static final c f15476a = new c();

        private c() {
        }

        private final String b(f fVar) {
            kotlin.reflect.jvm.internal.impl.name.f name = fVar.getName();
            r.d(name, "descriptor.name");
            String strB = e.b(name);
            if (fVar instanceof t0) {
                return strB;
            }
            k kVarB = fVar.b();
            r.d(kVarB, "descriptor.containingDeclaration");
            String strC = c(kVarB);
            if (strC == null || r.a(strC, "")) {
                return strB;
            }
            return ((Object) strC) + '.' + strB;
        }

        private final String c(k kVar) {
            if (kVar instanceof kotlin.reflect.jvm.internal.impl.descriptors.d) {
                return b((f) kVar);
            }
            if (!(kVar instanceof b0)) {
                return null;
            }
            kotlin.reflect.jvm.internal.impl.name.d dVarJ = ((b0) kVar).e().j();
            r.d(dVarJ, "descriptor.fqName.toUnsafe()");
            return e.a(dVarJ);
        }

        @Override // kotlin.reflect.jvm.internal.impl.renderer.a
        public String a(f classifier, DescriptorRenderer renderer) {
            r.e(classifier, "classifier");
            r.e(renderer, "renderer");
            return b(classifier);
        }
    }

    String a(f fVar, DescriptorRenderer descriptorRenderer);
}
