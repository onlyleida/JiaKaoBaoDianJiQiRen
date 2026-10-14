package kotlin.reflect.jvm.internal.impl.resolve.constants;

import kotlin.reflect.jvm.internal.impl.descriptors.z;
import kotlin.reflect.jvm.internal.impl.types.f0;

/* JADX INFO: loaded from: classes6.dex */
public abstract class j extends g<kotlin.v> {
    public static final a b = new a(null);

    public static final class a {
        private a() {
        }

        public /* synthetic */ a(kotlin.jvm.internal.o oVar) {
            this();
        }

        public final j a(String message) {
            kotlin.jvm.internal.r.e(message, "message");
            return new b(message);
        }
    }

    public static final class b extends j {
        private final String c;

        public b(String message) {
            kotlin.jvm.internal.r.e(message, "message");
            this.c = message;
        }

        @Override // kotlin.reflect.jvm.internal.impl.resolve.constants.g
        /* JADX INFO: renamed from: d, reason: merged with bridge method [inline-methods] */
        public f0 a(z module) {
            kotlin.jvm.internal.r.e(module, "module");
            f0 f0VarJ = kotlin.reflect.jvm.internal.impl.types.t.j(this.c);
            kotlin.jvm.internal.r.d(f0VarJ, "createErrorType(message)");
            return f0VarJ;
        }

        @Override // kotlin.reflect.jvm.internal.impl.resolve.constants.g
        public String toString() {
            return this.c;
        }
    }

    public j() {
        super(kotlin.v.f15822a);
    }

    @Override // kotlin.reflect.jvm.internal.impl.resolve.constants.g
    public /* bridge */ /* synthetic */ kotlin.v b() {
        c();
        throw null;
    }

    public kotlin.v c() {
        throw new UnsupportedOperationException();
    }
}
