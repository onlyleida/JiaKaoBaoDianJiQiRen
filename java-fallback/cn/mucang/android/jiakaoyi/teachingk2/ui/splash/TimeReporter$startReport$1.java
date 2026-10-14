package cn.mucang.android.jiakaoyi.teachingk2.ui.splash;

import com.google.android.exoplayer2.upstream.DefaultLoadErrorHandlingPolicy;
import kotlin.Metadata;
import kotlin.Result;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.b.p;
import kotlin.v;
import kotlinx.coroutines.i0;
import kotlinx.coroutines.j0;
import kotlinx.coroutines.s0;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\u008a@"}, d2 = {"<anonymous>", "", "Lkotlinx/coroutines/CoroutineScope;"}, k = 3, mv = {1, 5, 1}, xi = 48)
@kotlin.coroutines.jvm.internal.d(c = "cn.mucang.android.jiakaoyi.teachingk2.ui.splash.TimeReporter$startReport$1", f = "TimeReporter.kt", l = {22}, m = "invokeSuspend")
final class TimeReporter$startReport$1 extends SuspendLambda implements p<i0, kotlin.coroutines.c<? super v>, Object> {
    long J$0;
    private /* synthetic */ Object L$0;
    int label;

    TimeReporter$startReport$1(kotlin.coroutines.c<? super TimeReporter$startReport$1> r2) {
        super(2, r2);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final kotlin.coroutines.c<v> create(Object r2, kotlin.coroutines.c<?> r3) {
        TimeReporter$startReport$1 r0 = new TimeReporter$startReport$1(r3);
        r0.L$0 = r2;
        return r0;
    }

    @Override // kotlin.jvm.b.p
    public /* bridge */ /* synthetic */ Object invoke(i0 r1, kotlin.coroutines.c<? super v> r2) {
        return invoke2(r1, r2);
    }

    /* JADX INFO: renamed from: invoke, reason: avoid collision after fix types in other method */
    public final Object invoke2(i0 r1, kotlin.coroutines.c<? super v> r2) {
        return ((TimeReporter$startReport$1) create(r1, r2)).invokeSuspend(v.f15822a);
    }

    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:16:0x004d -> B:18:0x0050). Please report as a decompilation issue!!! */
    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object r9) {
        Object r0 = kotlin.coroutines.intrinsics.a.d();
        int r1 = this.label;
        if (r1 == 0) goto L8;
        if (r1 != 1) goto L7;
        long r3 = this.J$0;
        i0 r2 = (i0) this.L$0;
        kotlin.k.b(r9);
        TimeReporter$startReport$1 r10 = this;
    L18:
        TimeReporter r5 = TimeReporter.f8265a;
        TimeReporter.b(System.currentTimeMillis());
        Result.a r6 = Result.Companion;     // Catch: Throwable -> L21
        new cn.mucang.android.jiakaoyi.teachingk2.record.d().r(r3, TimeReporter.a());     // Catch: Throwable -> L21
        Result.m139constructorimpl(v.f15822a);     // Catch: Throwable -> L21
    L10:
        if (j0.g(r2) == false) goto L24;
        if (TimeReporter.a() != 0) goto L14;
        r3 = System.currentTimeMillis();
    L15:
        r10.L$0 = r2;
        r10.J$0 = r3;
        r10.label = 1;
        if (s0.a(DefaultLoadErrorHandlingPolicy.DEFAULT_TRACK_BLACKLIST_MS, r10) != r0) goto L18;
        return r0;
    L14:
        r3 = TimeReporter.a();
        goto L15
    L24:
        return v.f15822a;
    L21:
        th = move-exception;
        Result.a r4 = Result.Companion;
        Result.m139constructorimpl(kotlin.k.a(th));
        goto L10
    L7:
        throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
    L8:
        kotlin.k.b(r9);
        r2 = (i0) this.L$0;
        r10 = this;
        goto L10
    }
}
