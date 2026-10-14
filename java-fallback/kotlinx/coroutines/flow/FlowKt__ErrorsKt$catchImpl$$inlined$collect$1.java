package kotlinx.coroutines.flow;

import androidx.exifinterface.media.ExifInterface;
import kotlin.Metadata;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
import kotlin.jvm.internal.Ref$ObjectRef;

/* JADX INFO: Add missing generic type declarations: [T] */
/* JADX INFO: loaded from: classes6.dex */
public final class FlowKt__ErrorsKt$catchImpl$$inlined$collect$1<T> implements d<T> {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    final /* synthetic */ d f15934a;
    final /* synthetic */ Ref$ObjectRef b;

    /* JADX INFO: renamed from: kotlinx.coroutines.flow.FlowKt__ErrorsKt$catchImpl$$inlined$collect$1$1, reason: invalid class name */
    @Metadata(bv = {1, 0, 3}, d1 = {"\u0000\u0016\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0000\n\u0002\b\u0002\u0010\u0007\u001a\u0004\u0018\u00010\u0005\"\u0004\b\u0000\u0010\u00002\u0006\u0010\u0001\u001a\u00028\u00002\f\u0010\u0004\u001a\b\u0012\u0004\u0012\u00020\u00030\u0002H\u0096@¨\u0006\u0006"}, d2 = {ExifInterface.GPS_DIRECTION_TRUE, "value", "Lkotlin/coroutines/c;", "Lkotlin/v;", "continuation", "", "kotlinx/coroutines/flow/FlowKt__CollectKt$collect$3$emit$1", "emit"}, k = 3, mv = {1, 1, 15})
    @kotlin.coroutines.jvm.internal.d(c = "kotlinx.coroutines.flow.FlowKt__ErrorsKt$catchImpl$$inlined$collect$1", f = "Errors.kt", l = {134}, m = "emit")
    public static final class AnonymousClass1 extends ContinuationImpl {
        Object L$0;
        Object L$1;
        Object L$2;
        Object L$3;
        int label;
        /* synthetic */ Object result;
        final /* synthetic */ FlowKt__ErrorsKt$catchImpl$$inlined$collect$1 this$0;

        public AnonymousClass1(FlowKt__ErrorsKt$catchImpl$$inlined$collect$1 r1, kotlin.coroutines.c r2) {
            this.this$0 = r1;
            super(r2);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object r2) {
            this.result = r2;
            this.label |= Integer.MIN_VALUE;
            return this.this$0.emit(null, this);
        }
    }

    public FlowKt__ErrorsKt$catchImpl$$inlined$collect$1(d r1, Ref$ObjectRef r2) {
        this.f15934a = r1;
        this.b = r2;
    }

    @Override // kotlinx.coroutines.flow.d
    public Object emit(Object r5, kotlin.coroutines.c r6) {
        if ((r6 instanceof AnonymousClass1) == false) goto L7;
        AnonymousClass1 r0 = (AnonymousClass1) r6;
        int r1 = r0.label;
        if ((r1 & Integer.MIN_VALUE) == 0) goto L7;
        r0.label = r1 - Integer.MIN_VALUE;
    L8:
        Object r7 = r0.result;
        Object r2 = kotlin.coroutines.intrinsics.a.d();
        int r3 = r0.label;
        if (r3 == 0) goto L18;
        if (r3 != 1) goto L17;
        Object r8 = r0.L$3;
        kotlin.coroutines.c r9 = (kotlin.coroutines.c) r0.L$2;
        Object r10 = r0.L$1;
        FlowKt__ErrorsKt$catchImpl$$inlined$collect$1<T> r11 = (FlowKt__ErrorsKt$catchImpl$$inlined$collect$1) r0.L$0;
        kotlin.k.b(r7);     // Catch: Throwable -> L14
    L23:
        return kotlin.v.f15822a;
    L14:
        th = move-exception;
        r6 = (T) th;
    L26:
        T r12 = (T) r6;
        r11.b.element = r12;
        throw ((Throwable) r6);
    L17:
        throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
    L18:
        kotlin.k.b(r7);
        d r13 = this.f15934a;     // Catch: Throwable -> L24
        r0.L$0 = this;     // Catch: Throwable -> L24
        r0.L$1 = r5;     // Catch: Throwable -> L24
        r0.L$2 = r0;     // Catch: Throwable -> L24
        r0.L$3 = r5;     // Catch: Throwable -> L24
        r0.label = 1;     // Catch: Throwable -> L24
        if (r13.emit(r5, r0) != r2) goto L23;
        return r2;
    L24:
        th = move-exception;
        r6 = (T) th;
        r11 = this;
    L7:
        r0 = new AnonymousClass1(this, r6);
        goto L8
    }
}
