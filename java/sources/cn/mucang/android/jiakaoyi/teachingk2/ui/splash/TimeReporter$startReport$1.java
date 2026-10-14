package cn.mucang.android.jiakaoyi.teachingk2.ui.splash;

import kotlin.Metadata;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;
import kotlin.v;
import kotlinx.coroutines.i0;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\u008a@"}, d2 = {"<anonymous>", "", "Lkotlinx/coroutines/CoroutineScope;"}, k = 3, mv = {1, 5, 1}, xi = 48)
@DebugMetadata(c = "cn.mucang.android.jiakaoyi.teachingk2.ui.splash.TimeReporter$startReport$1", f = "TimeReporter.kt", l = {22}, m = "invokeSuspend")
final class TimeReporter$startReport$1 extends SuspendLambda implements Function2<i0, Continuation<? super v>, Object> {
    long J$0;
    private /* synthetic */ Object L$0;
    int label;

    TimeReporter$startReport$1(Continuation<? super TimeReporter$startReport$1> continuation) {
        super(2, continuation);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation<v> create(Object obj, Continuation<?> continuation) {
        TimeReporter$startReport$1 timeReporter$startReport$1 = new TimeReporter$startReport$1(continuation);
        timeReporter$startReport$1.L$0 = obj;
        return timeReporter$startReport$1;
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(i0 i0Var, Continuation<? super v> continuation) {
        return ((TimeReporter$startReport$1) create(i0Var, continuation)).invokeSuspend(v.f15822a);
    }

    /* JADX WARN: Code duplicated, block: B:11:0x002d  */
    /* JADX WARN: Code duplicated, block: B:13:0x0037  */
    /* JADX WARN: Code duplicated, block: B:14:0x003c  */
    /* JADX WARN: Code duplicated, block: B:17:0x004f A[RETURN] */
    /* JADX WARN: Code duplicated, block: B:23:0x0078  */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:16:0x004d -> B:18:0x0050). Please report as a decompilation issue!!! */
    /*  JADX ERROR: JadxOverflowException in pass: RegionMakerVisitor
        jadx.core.utils.exceptions.JadxOverflowException: Regions count limit reached at block B:17:0x004f
        	at jadx.core.utils.ErrorsCounter.addError(ErrorsCounter.java:59)
        	at jadx.core.utils.ErrorsCounter.error(ErrorsCounter.java:31)
        	at jadx.core.dex.attributes.nodes.NotificationAttrNode.addError(NotificationAttrNode.java:19)
        */
    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final java.lang.Object invokeSuspend(java.lang.Object r9) {
        /*
            r8 = this;
            java.lang.Object r0 = kotlin.coroutines.intrinsics.a.d()
            int r1 = r8.label
            r2 = 1
            if (r1 == 0) goto L1e
            if (r1 != r2) goto L16
            long r3 = r8.J$0
            java.lang.Object r1 = r8.L$0
            kotlinx.coroutines.i0 r1 = (kotlinx.coroutines.i0) r1
            kotlin.k.b(r9)
            r9 = r8
            goto L50
        L16:
            java.lang.IllegalStateException r9 = new java.lang.IllegalStateException
            java.lang.String r0 = "call to 'resume' before 'invoke' with coroutine"
            r9.<init>(r0)
            throw r9
        L1e:
            kotlin.k.b(r9)
            java.lang.Object r9 = r8.L$0
            kotlinx.coroutines.i0 r9 = (kotlinx.coroutines.i0) r9
            r1 = r9
            r9 = r8
        L27:
            boolean r3 = kotlinx.coroutines.j0.g(r1)
            if (r3 == 0) goto L78
            long r3 = cn.mucang.android.jiakaoyi.teachingk2.ui.splash.TimeReporter.a()
            r5 = 0
            int r7 = (r3 > r5 ? 1 : (r3 == r5 ? 0 : -1))
            if (r7 != 0) goto L3c
            long r3 = java.lang.System.currentTimeMillis()
            goto L40
        L3c:
            long r3 = cn.mucang.android.jiakaoyi.teachingk2.ui.splash.TimeReporter.a()
        L40:
            r5 = 60000(0xea60, double:2.9644E-319)
            r9.L$0 = r1
            r9.J$0 = r3
            r9.label = r2
            java.lang.Object r5 = kotlinx.coroutines.s0.a(r5, r9)
            if (r5 != r0) goto L50
            return r0
        L50:
            cn.mucang.android.jiakaoyi.teachingk2.ui.splash.TimeReporter r5 = cn.mucang.android.jiakaoyi.teachingk2.ui.splash.TimeReporter.f8265a
            long r5 = java.lang.System.currentTimeMillis()
            cn.mucang.android.jiakaoyi.teachingk2.ui.splash.TimeReporter.b(r5)
            kotlin.Result$a r5 = kotlin.Result.INSTANCE     // Catch: java.lang.Throwable -> L6d
            cn.mucang.android.jiakaoyi.teachingk2.record.d r5 = new cn.mucang.android.jiakaoyi.teachingk2.record.d     // Catch: java.lang.Throwable -> L6d
            r5.<init>()     // Catch: java.lang.Throwable -> L6d
            long r6 = cn.mucang.android.jiakaoyi.teachingk2.ui.splash.TimeReporter.a()     // Catch: java.lang.Throwable -> L6d
            r5.r(r3, r6)     // Catch: java.lang.Throwable -> L6d
            kotlin.v r3 = kotlin.v.f15822a     // Catch: java.lang.Throwable -> L6d
            kotlin.Result.m139constructorimpl(r3)     // Catch: java.lang.Throwable -> L6d
            goto L27
        L6d:
            r3 = move-exception
            kotlin.Result$a r4 = kotlin.Result.INSTANCE
            java.lang.Object r3 = kotlin.k.a(r3)
            kotlin.Result.m139constructorimpl(r3)
            goto L27
        L78:
            kotlin.v r9 = kotlin.v.f15822a
            return r9
        */
        throw new UnsupportedOperationException("Method not decompiled: cn.mucang.android.jiakaoyi.teachingk2.ui.splash.TimeReporter$startReport$1.invokeSuspend(java.lang.Object):java.lang.Object");
    }
}
