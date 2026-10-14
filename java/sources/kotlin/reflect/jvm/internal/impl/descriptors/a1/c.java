package kotlin.reflect.jvm.internal.impl.descriptors.a1;

import kotlin.jvm.internal.r;
import kotlin.reflect.jvm.internal.impl.descriptors.n0;

/* JADX INFO: loaded from: classes6.dex */
public interface c {

    public static final class a implements c {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public static final a f14861a = new a();

        private a() {
        }

        @Override // kotlin.reflect.jvm.internal.impl.descriptors.a1.c
        public boolean b(kotlin.reflect.jvm.internal.impl.descriptors.d classDescriptor, n0 functionDescriptor) {
            r.e(classDescriptor, "classDescriptor");
            r.e(functionDescriptor, "functionDescriptor");
            return true;
        }
    }

    public static final class b implements c {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public static final b f14862a = new b();

        private b() {
        }

        @Override // kotlin.reflect.jvm.internal.impl.descriptors.a1.c
        public boolean b(kotlin.reflect.jvm.internal.impl.descriptors.d classDescriptor, n0 functionDescriptor) {
            r.e(classDescriptor, "classDescriptor");
            r.e(functionDescriptor, "functionDescriptor");
            return !functionDescriptor.getAnnotations().h(d.a());
        }
    }

    boolean b(kotlin.reflect.jvm.internal.impl.descriptors.d dVar, n0 n0Var);
}
