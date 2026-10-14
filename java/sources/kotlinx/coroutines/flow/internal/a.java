package kotlinx.coroutines.flow.internal;

import java.util.Arrays;
import kotlin.Result;
import kotlin.coroutines.Continuation;
import kotlin.v;
import kotlinx.coroutines.flow.b2;
import kotlinx.coroutines.flow.internal.c;
import kotlinx.coroutines.flow.k2;
import kotlinx.coroutines.flow.l2;

/* JADX INFO: loaded from: classes6.dex */
public abstract class a<S extends c<?>> {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private S[] f15971a;
    private int b;
    private int c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private b2<Integer> f15972d;

    public final k2<Integer> b() {
        b2<Integer> b2VarA;
        synchronized (this) {
            b2VarA = this.f15972d;
            if (b2VarA == null) {
                b2VarA = l2.a(Integer.valueOf(this.b));
                this.f15972d = b2VarA;
            }
        }
        return b2VarA;
    }

    protected final S g() {
        S s;
        b2<Integer> b2Var;
        synchronized (this) {
            S[] sArr = this.f15971a;
            if (sArr == null) {
                sArr = (S[]) i(2);
                this.f15971a = sArr;
            } else if (this.b >= sArr.length) {
                Object[] objArrCopyOf = Arrays.copyOf(sArr, sArr.length * 2);
                kotlin.jvm.internal.r.d(objArrCopyOf, "java.util.Arrays.copyOf(this, newSize)");
                this.f15971a = (S[]) ((c[]) objArrCopyOf);
                sArr = (S[]) ((c[]) objArrCopyOf);
            }
            int i = this.c;
            do {
                s = sArr[i];
                if (s == null) {
                    s = (S) h();
                    sArr[i] = s;
                }
                i++;
                if (i >= sArr.length) {
                    i = 0;
                }
                if (s == null) {
                    throw new NullPointerException("null cannot be cast to non-null type kotlinx.coroutines.flow.internal.AbstractSharedFlowSlot<kotlin.Any>");
                }
            } while (!s.a(this));
            this.c = i;
            this.b++;
            b2Var = this.f15972d;
        }
        if (b2Var != null) {
            l2.e(b2Var, 1);
        }
        return s;
    }

    protected abstract S h();

    protected abstract S[] i(int i);

    protected final void j(S s) {
        b2<Integer> b2Var;
        int i;
        Continuation<v>[] continuationArrB;
        synchronized (this) {
            int i2 = this.b - 1;
            this.b = i2;
            b2Var = this.f15972d;
            if (i2 == 0) {
                this.c = 0;
            }
            if (s == null) {
                throw new NullPointerException("null cannot be cast to non-null type kotlinx.coroutines.flow.internal.AbstractSharedFlowSlot<kotlin.Any>");
            }
            continuationArrB = s.b(this);
        }
        for (Continuation<v> continuation : continuationArrB) {
            if (continuation != null) {
                v vVar = v.f15822a;
                Result.Companion companion = Result.INSTANCE;
                continuation.resumeWith(Result.m139constructorimpl(vVar));
            }
        }
        if (b2Var != null) {
            l2.e(b2Var, -1);
        }
    }

    protected final S[] k() {
        return this.f15971a;
    }
}
