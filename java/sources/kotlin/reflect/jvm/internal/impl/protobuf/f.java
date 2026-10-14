package kotlin.reflect.jvm.internal.impl.protobuf;

import androidx.exifinterface.media.ExifInterface;
import java.util.Collections;
import java.util.HashMap;
import java.util.Map;

/* JADX INFO: loaded from: classes6.dex */
public class f {
    private static final f b = new f(true);

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final Map<a, GeneratedMessageLite.e<?, ?>> f15423a;

    private static final class a {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private final Object f15424a;
        private final int b;

        a(Object obj, int i) {
            this.f15424a = obj;
            this.b = i;
        }

        public boolean equals(Object obj) {
            if (!(obj instanceof a)) {
                return false;
            }
            a aVar = (a) obj;
            return this.f15424a == aVar.f15424a && this.b == aVar.b;
        }

        public int hashCode() {
            return (System.identityHashCode(this.f15424a) * ExifInterface.COLOR_SPACE_UNCALIBRATED) + this.b;
        }
    }

    f() {
        this.f15423a = new HashMap();
    }

    public static f c() {
        return b;
    }

    public static f d() {
        return new f();
    }

    public final void a(GeneratedMessageLite.e<?, ?> eVar) {
        this.f15423a.put(new a(eVar.b(), eVar.d()), eVar);
    }

    public <ContainingType extends n> GeneratedMessageLite.e<ContainingType, ?> b(ContainingType containingtype, int i) {
        return (GeneratedMessageLite.e) this.f15423a.get(new a(containingtype, i));
    }

    private f(boolean z) {
        this.f15423a = Collections.emptyMap();
    }
}
