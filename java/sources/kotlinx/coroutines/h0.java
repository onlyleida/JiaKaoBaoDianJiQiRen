package kotlinx.coroutines;

import kotlin.coroutines.AbstractCoroutineContextElement;
import kotlin.coroutines.CoroutineContext;

/* JADX INFO: loaded from: classes6.dex */
public final class h0 extends AbstractCoroutineContextElement {
    public static final a b = new a(null);

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final String f16000a;

    public static final class a implements CoroutineContext.b<h0> {
        private a() {
        }

        public /* synthetic */ a(kotlin.jvm.internal.o oVar) {
            this();
        }
    }

    public boolean equals(Object obj) {
        if (this != obj) {
            return (obj instanceof h0) && kotlin.jvm.internal.r.a(this.f16000a, ((h0) obj).f16000a);
        }
        return true;
    }

    public int hashCode() {
        String str = this.f16000a;
        if (str != null) {
            return str.hashCode();
        }
        return 0;
    }

    public String toString() {
        return "CoroutineName(" + this.f16000a + ')';
    }

    public final String y() {
        return this.f16000a;
    }
}
