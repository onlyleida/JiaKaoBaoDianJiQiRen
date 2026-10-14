package kotlinx.coroutines;

import kotlin.coroutines.Continuation;
import kotlin.coroutines.CoroutineContext;
import kotlin.coroutines.intrinsics.IntrinsicsKt__IntrinsicsJvmKt;
import kotlin.jvm.functions.Function2;

/* JADX INFO: loaded from: classes6.dex */
final class c2 extends n2 {

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final Continuation<kotlin.v> f15855d;

    public c2(CoroutineContext coroutineContext, Function2<? super i0, ? super Continuation<? super kotlin.v>, ? extends Object> function2) {
        super(coroutineContext, false);
        this.f15855d = IntrinsicsKt__IntrinsicsJvmKt.b(function2, this, this);
    }

    @Override // kotlinx.coroutines.a
    protected void V0() {
        kotlinx.coroutines.a3.a.a(this.f15855d, this);
    }
}
