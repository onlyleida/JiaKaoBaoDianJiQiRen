package kotlin.reflect.jvm.internal.impl.load.kotlin;

/* JADX INFO: loaded from: classes6.dex */
public interface k extends kotlin.reflect.jvm.internal.impl.serialization.deserialization.o {

    public static abstract class a {

        /* JADX INFO: renamed from: kotlin.reflect.jvm.internal.impl.load.kotlin.k$a$a, reason: collision with other inner class name */
        public static final class C0341a extends a {

            /* JADX INFO: renamed from: a, reason: collision with root package name */
            private final byte[] f15234a;

            public final byte[] b() {
                return this.f15234a;
            }
        }

        public static final class b extends a {

            /* JADX INFO: renamed from: a, reason: collision with root package name */
            private final m f15235a;

            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            public b(m kotlinJvmBinaryClass, byte[] bArr) {
                super(null);
                kotlin.jvm.internal.r.e(kotlinJvmBinaryClass, "kotlinJvmBinaryClass");
                this.f15235a = kotlinJvmBinaryClass;
            }

            public final m b() {
                return this.f15235a;
            }

            public /* synthetic */ b(m mVar, byte[] bArr, int i, kotlin.jvm.internal.o oVar) {
                this(mVar, (i & 2) != 0 ? null : bArr);
            }
        }

        private a() {
        }

        public /* synthetic */ a(kotlin.jvm.internal.o oVar) {
            this();
        }

        public final m a() {
            b bVar = this instanceof b ? (b) this : null;
            if (bVar == null) {
                return null;
            }
            return bVar.b();
        }
    }

    a a(kotlin.reflect.jvm.internal.impl.load.java.structure.g gVar);

    a c(kotlin.reflect.jvm.internal.impl.name.b bVar);
}
