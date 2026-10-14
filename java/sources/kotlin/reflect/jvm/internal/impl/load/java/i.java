package kotlin.reflect.jvm.internal.impl.load.java;

import java.util.Arrays;
import java.util.Set;

/* JADX INFO: loaded from: classes6.dex */
public interface i {
    kotlin.reflect.jvm.internal.impl.load.java.structure.g a(a aVar);

    kotlin.reflect.jvm.internal.impl.load.java.structure.u b(kotlin.reflect.jvm.internal.impl.name.c cVar);

    Set<String> c(kotlin.reflect.jvm.internal.impl.name.c cVar);

    public static final class a {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private final kotlin.reflect.jvm.internal.impl.name.b f15058a;
        private final byte[] b;
        private final kotlin.reflect.jvm.internal.impl.load.java.structure.g c;

        public a(kotlin.reflect.jvm.internal.impl.name.b classId, byte[] bArr, kotlin.reflect.jvm.internal.impl.load.java.structure.g gVar) {
            kotlin.jvm.internal.r.e(classId, "classId");
            this.f15058a = classId;
            this.b = bArr;
            this.c = gVar;
        }

        public final kotlin.reflect.jvm.internal.impl.name.b a() {
            return this.f15058a;
        }

        public boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (!(obj instanceof a)) {
                return false;
            }
            a aVar = (a) obj;
            return kotlin.jvm.internal.r.a(this.f15058a, aVar.f15058a) && kotlin.jvm.internal.r.a(this.b, aVar.b) && kotlin.jvm.internal.r.a(this.c, aVar.c);
        }

        public int hashCode() {
            int iHashCode = this.f15058a.hashCode() * 31;
            byte[] bArr = this.b;
            int iHashCode2 = (iHashCode + (bArr == null ? 0 : Arrays.hashCode(bArr))) * 31;
            kotlin.reflect.jvm.internal.impl.load.java.structure.g gVar = this.c;
            return iHashCode2 + (gVar != null ? gVar.hashCode() : 0);
        }

        public String toString() {
            return "Request(classId=" + this.f15058a + ", previouslyFoundClassFileContent=" + Arrays.toString(this.b) + ", outerClass=" + this.c + ')';
        }

        public /* synthetic */ a(kotlin.reflect.jvm.internal.impl.name.b bVar, byte[] bArr, kotlin.reflect.jvm.internal.impl.load.java.structure.g gVar, int i, kotlin.jvm.internal.o oVar) {
            this(bVar, (i & 2) != 0 ? null : bArr, (i & 4) != 0 ? null : gVar);
        }
    }
}
