package kotlin.reflect.jvm.internal.impl.descriptors.c1.a;

import kotlin.jvm.internal.r;
import kotlin.reflect.jvm.internal.impl.descriptors.p0;

/* JADX INFO: loaded from: classes6.dex */
public final class m implements kotlin.reflect.jvm.internal.impl.load.java.w.b {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final m f14884a = new m();

    public static final class a implements kotlin.reflect.jvm.internal.impl.load.java.w.a {
        private final kotlin.reflect.jvm.internal.impl.descriptors.runtime.structure.l b;

        public a(kotlin.reflect.jvm.internal.impl.descriptors.runtime.structure.l javaElement) {
            r.e(javaElement, "javaElement");
            this.b = javaElement;
        }

        @Override // kotlin.reflect.jvm.internal.impl.descriptors.o0
        public p0 b() {
            p0 NO_SOURCE_FILE = p0.f14972a;
            r.d(NO_SOURCE_FILE, "NO_SOURCE_FILE");
            return NO_SOURCE_FILE;
        }

        @Override // kotlin.reflect.jvm.internal.impl.load.java.w.a
        /* JADX INFO: renamed from: d, reason: merged with bridge method [inline-methods] */
        public kotlin.reflect.jvm.internal.impl.descriptors.runtime.structure.l c() {
            return this.b;
        }

        public String toString() {
            return a.class.getName() + ": " + c();
        }
    }

    private m() {
    }

    @Override // kotlin.reflect.jvm.internal.impl.load.java.w.b
    public kotlin.reflect.jvm.internal.impl.load.java.w.a a(kotlin.reflect.jvm.internal.impl.load.java.structure.l javaElement) {
        r.e(javaElement, "javaElement");
        return new a((kotlin.reflect.jvm.internal.impl.descriptors.runtime.structure.l) javaElement);
    }
}
