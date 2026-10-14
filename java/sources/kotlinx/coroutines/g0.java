package kotlinx.coroutines;

import java.util.Objects;
import kotlin.coroutines.AbstractCoroutineContextElement;
import kotlin.coroutines.CoroutineContext;
import kotlin.jvm.functions.Function2;
import kotlin.text.StringsKt__StringsKt;

/* JADX INFO: loaded from: classes6.dex */
public final class g0 extends AbstractCoroutineContextElement implements q2<String> {
    public static final a b = new a(null);

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final long f15997a;

    public static final class a implements CoroutineContext.b<g0> {
        private a() {
        }

        public /* synthetic */ a(kotlin.jvm.internal.o oVar) {
            this();
        }
    }

    public g0(long j) {
        super(b);
        this.f15997a = j;
    }

    @Override // kotlinx.coroutines.q2
    /* JADX INFO: renamed from: A, reason: merged with bridge method [inline-methods] */
    public String H(CoroutineContext coroutineContext) {
        String strY;
        h0 h0Var = (h0) coroutineContext.get(h0.b);
        if (h0Var == null || (strY = h0Var.y()) == null) {
            strY = "coroutine";
        }
        Thread threadCurrentThread = Thread.currentThread();
        String name = threadCurrentThread.getName();
        int iZ = StringsKt__StringsKt.Z(name, " @", 0, false, 6, null);
        if (iZ < 0) {
            iZ = name.length();
        }
        StringBuilder sb = new StringBuilder(strY.length() + iZ + 10);
        Objects.requireNonNull(name, "null cannot be cast to non-null type java.lang.String");
        String strSubstring = name.substring(0, iZ);
        kotlin.jvm.internal.r.d(strSubstring, "(this as java.lang.Strin…ing(startIndex, endIndex)");
        sb.append(strSubstring);
        sb.append(" @");
        sb.append(strY);
        sb.append('#');
        sb.append(this.f15997a);
        kotlin.v vVar = kotlin.v.f15822a;
        String string = sb.toString();
        kotlin.jvm.internal.r.d(string, "StringBuilder(capacity).…builderAction).toString()");
        threadCurrentThread.setName(string);
        return name;
    }

    public boolean equals(Object obj) {
        if (this != obj) {
            return (obj instanceof g0) && this.f15997a == ((g0) obj).f15997a;
        }
        return true;
    }

    @Override // kotlin.coroutines.AbstractCoroutineContextElement, kotlin.coroutines.CoroutineContext
    public <R> R fold(R r, Function2<? super R, ? super CoroutineContext.a, ? extends R> function2) {
        return (R) q2.a.a(this, r, function2);
    }

    @Override // kotlin.coroutines.AbstractCoroutineContextElement, kotlin.coroutines.CoroutineContext.a, kotlin.coroutines.CoroutineContext
    public <E extends CoroutineContext.a> E get(CoroutineContext.b<E> bVar) {
        return (E) q2.a.b(this, bVar);
    }

    public int hashCode() {
        long j = this.f15997a;
        return (int) (j ^ (j >>> 32));
    }

    @Override // kotlin.coroutines.AbstractCoroutineContextElement, kotlin.coroutines.CoroutineContext
    public CoroutineContext minusKey(CoroutineContext.b<?> bVar) {
        return q2.a.c(this, bVar);
    }

    @Override // kotlin.coroutines.AbstractCoroutineContextElement, kotlin.coroutines.CoroutineContext
    public CoroutineContext plus(CoroutineContext coroutineContext) {
        return q2.a.d(this, coroutineContext);
    }

    public String toString() {
        return "CoroutineId(" + this.f15997a + ')';
    }

    public final long y() {
        return this.f15997a;
    }

    @Override // kotlinx.coroutines.q2
    /* JADX INFO: renamed from: z, reason: merged with bridge method [inline-methods] */
    public void p(CoroutineContext coroutineContext, String str) {
        Thread.currentThread().setName(str);
    }
}
