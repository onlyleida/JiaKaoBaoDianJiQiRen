package kotlinx.coroutines.android;

import android.os.Handler;
import android.os.Looper;
import kotlin.coroutines.CoroutineContext;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.o;
import kotlin.jvm.internal.r;
import kotlin.ranges.f;
import kotlin.v;
import kotlinx.coroutines.k;
import kotlinx.coroutines.r0;
import kotlinx.coroutines.y0;

/* JADX INFO: loaded from: classes6.dex */
public final class HandlerContext extends kotlinx.coroutines.android.a implements r0 {
    private volatile HandlerContext _immediate;
    private final HandlerContext b;
    private final Handler c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final String f15838d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private final boolean f15839e;

    public static final class a implements y0 {
        final /* synthetic */ Runnable b;

        a(Runnable runnable) {
            this.b = runnable;
        }

        @Override // kotlinx.coroutines.y0
        public void dispose() {
            HandlerContext.this.c.removeCallbacks(this.b);
        }
    }

    public static final class b implements Runnable {
        final /* synthetic */ k b;

        public b(k kVar) {
            this.b = kVar;
        }

        @Override // java.lang.Runnable
        public final void run() {
            this.b.C(HandlerContext.this, v.f15822a);
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    private HandlerContext(Handler handler, String str, boolean z) {
        super(0 == true ? 1 : 0);
        this.c = handler;
        this.f15838d = str;
        this.f15839e = z;
        this._immediate = z ? this : null;
        HandlerContext handlerContext = this._immediate;
        if (handlerContext == null) {
            handlerContext = new HandlerContext(handler, str, true);
            this._immediate = handlerContext;
            v vVar = v.f15822a;
        }
        this.b = handlerContext;
    }

    @Override // kotlinx.coroutines.CoroutineDispatcher
    public boolean A(CoroutineContext coroutineContext) {
        return !this.f15839e || (r.a(Looper.myLooper(), this.c.getLooper()) ^ true);
    }

    @Override // kotlinx.coroutines.d2
    /* JADX INFO: renamed from: E, reason: merged with bridge method [inline-methods] */
    public HandlerContext B() {
        return this.b;
    }

    @Override // kotlinx.coroutines.r0
    public void c(long j, k<? super v> kVar) {
        final b bVar = new b(kVar);
        this.c.postDelayed(bVar, f.f(j, 4611686018427387903L));
        kVar.l(new Function1<Throwable, v>() { // from class: kotlinx.coroutines.android.HandlerContext$scheduleResumeAfterDelay$1
            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            {
                super(1);
            }

            @Override // kotlin.jvm.functions.Function1
            public /* bridge */ /* synthetic */ v invoke(Throwable th) {
                invoke2(th);
                return v.f15822a;
            }

            /* JADX INFO: renamed from: invoke, reason: avoid collision after fix types in other method */
            public final void invoke2(Throwable th) {
                this.this$0.c.removeCallbacks(bVar);
            }
        });
    }

    public boolean equals(Object obj) {
        return (obj instanceof HandlerContext) && ((HandlerContext) obj).c == this.c;
    }

    @Override // kotlinx.coroutines.android.a, kotlinx.coroutines.r0
    public y0 g(long j, Runnable runnable, CoroutineContext coroutineContext) {
        this.c.postDelayed(runnable, f.f(j, 4611686018427387903L));
        return new a(runnable);
    }

    public int hashCode() {
        return System.identityHashCode(this.c);
    }

    @Override // kotlinx.coroutines.d2, kotlinx.coroutines.CoroutineDispatcher
    public String toString() {
        String strC = C();
        if (strC != null) {
            return strC;
        }
        String string = this.f15838d;
        if (string == null) {
            string = this.c.toString();
        }
        if (!this.f15839e) {
            return string;
        }
        return string + ".immediate";
    }

    @Override // kotlinx.coroutines.CoroutineDispatcher
    public void y(CoroutineContext coroutineContext, Runnable runnable) {
        this.c.post(runnable);
    }

    public /* synthetic */ HandlerContext(Handler handler, String str, int i, o oVar) {
        this(handler, (i & 2) != 0 ? null : str);
    }

    public HandlerContext(Handler handler, String str) {
        this(handler, str, false);
    }
}
