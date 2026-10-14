package kotlin.reflect.jvm.internal.impl.load.java.components;

import kotlin.jvm.internal.r;
import kotlin.reflect.jvm.internal.impl.descriptors.j0;
import kotlin.reflect.jvm.internal.impl.load.java.structure.n;
import kotlin.reflect.jvm.internal.impl.resolve.constants.g;

/* JADX INFO: loaded from: classes6.dex */
public interface c {

    public static final class a implements c {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public static final a f15048a = new a();

        private a() {
        }

        @Override // kotlin.reflect.jvm.internal.impl.load.java.components.c
        public g<?> a(n field, j0 descriptor) {
            r.e(field, "field");
            r.e(descriptor, "descriptor");
            return null;
        }
    }

    g<?> a(n nVar, j0 j0Var);
}
