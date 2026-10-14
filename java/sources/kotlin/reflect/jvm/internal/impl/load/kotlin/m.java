package kotlin.reflect.jvm.internal.impl.load.kotlin;

import kotlin.reflect.jvm.internal.impl.descriptors.o0;
import kotlin.reflect.jvm.internal.impl.load.kotlin.header.KotlinClassHeader;

/* JADX INFO: loaded from: classes6.dex */
public interface m {

    public interface a {
        void a(kotlin.reflect.jvm.internal.impl.name.f fVar, kotlin.reflect.jvm.internal.impl.name.b bVar, kotlin.reflect.jvm.internal.impl.name.f fVar2);

        a b(kotlin.reflect.jvm.internal.impl.name.f fVar, kotlin.reflect.jvm.internal.impl.name.b bVar);

        void c(kotlin.reflect.jvm.internal.impl.name.f fVar, kotlin.reflect.jvm.internal.impl.resolve.constants.f fVar2);

        void d(kotlin.reflect.jvm.internal.impl.name.f fVar, Object obj);

        b e(kotlin.reflect.jvm.internal.impl.name.f fVar);

        void visitEnd();
    }

    public interface b {
        a a(kotlin.reflect.jvm.internal.impl.name.b bVar);

        void b(Object obj);

        void c(kotlin.reflect.jvm.internal.impl.name.b bVar, kotlin.reflect.jvm.internal.impl.name.f fVar);

        void d(kotlin.reflect.jvm.internal.impl.resolve.constants.f fVar);

        void visitEnd();
    }

    public interface c {
        a b(kotlin.reflect.jvm.internal.impl.name.b bVar, o0 o0Var);

        void visitEnd();
    }

    public interface d {
        c a(kotlin.reflect.jvm.internal.impl.name.f fVar, String str, Object obj);

        e b(kotlin.reflect.jvm.internal.impl.name.f fVar, String str);
    }

    public interface e extends c {
        a a(int i, kotlin.reflect.jvm.internal.impl.name.b bVar, o0 o0Var);
    }

    void a(d dVar, byte[] bArr);

    KotlinClassHeader b();

    void c(c cVar, byte[] bArr);

    kotlin.reflect.jvm.internal.impl.name.b g();

    String getLocation();
}
