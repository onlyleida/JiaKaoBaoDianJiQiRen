package cn.mucang.jiakaoyi.uilib.login;

import kotlin.Metadata;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.Ref$LongRef;
import kotlin.v;
import kotlinx.coroutines.i0;

/* JADX INFO: loaded from: classes5.dex */
@Metadata(d1 = {"\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\u008a@"}, d2 = {"<anonymous>", "", "Lkotlinx/coroutines/CoroutineScope;"}, k = 3, mv = {1, 5, 1}, xi = 48)
@DebugMetadata(c = "cn.mucang.jiakaoyi.uilib.login.ClassTimeManager$start$1", f = "ClassTimeManager.kt", l = {33}, m = "invokeSuspend")
final class ClassTimeManager$start$1 extends SuspendLambda implements Function2<i0, Continuation<? super v>, Object> {
    final /* synthetic */ Ref$LongRef $remainTime;
    final /* synthetic */ TimeOutCallback $timeOutCallback;
    private /* synthetic */ Object L$0;
    int label;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    ClassTimeManager$start$1(Ref$LongRef ref$LongRef, TimeOutCallback timeOutCallback, Continuation<? super ClassTimeManager$start$1> continuation) {
        super(2, continuation);
        this.$remainTime = ref$LongRef;
        this.$timeOutCallback = timeOutCallback;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation<v> create(Object obj, Continuation<?> continuation) {
        ClassTimeManager$start$1 classTimeManager$start$1 = new ClassTimeManager$start$1(this.$remainTime, this.$timeOutCallback, continuation);
        classTimeManager$start$1.L$0 = obj;
        return classTimeManager$start$1;
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(i0 i0Var, Continuation<? super v> continuation) {
        return ((ClassTimeManager$start$1) create(i0Var, continuation)).invokeSuspend(v.f15822a);
    }

    /* JADX WARN: Code duplicated, block: B:11:0x002b  */
    /* JADX WARN: Code duplicated, block: B:13:0x0037  */
    /* JADX WARN: Code duplicated, block: B:15:0x0047  */
    /* JADX WARN: Code duplicated, block: B:21:0x006c A[RETURN] */
    /* JADX WARN: Code duplicated, block: B:27:0x005d A[ADDED_TO_REGION, REMOVE, SYNTHETIC] */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:20:0x006a -> B:22:0x006d). Please report as a decompilation issue!!! */
    /*  JADX ERROR: JadxOverflowException in pass: RegionMakerVisitor
        jadx.core.utils.exceptions.JadxOverflowException: Regions count limit reached at block B:15:0x0047
        	at jadx.core.utils.ErrorsCounter.addError(ErrorsCounter.java:59)
        	at jadx.core.utils.ErrorsCounter.error(ErrorsCounter.java:31)
        	at jadx.core.dex.attributes.nodes.NotificationAttrNode.addError(NotificationAttrNode.java:19)
        */
    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final java.lang.Object invokeSuspend(java.lang.Object r12) {
        /*
            r11 = this;
            java.lang.Object r0 = kotlin.coroutines.intrinsics.a.d()
            int r1 = r11.label
            r2 = 1
            if (r1 == 0) goto L1c
            if (r1 != r2) goto L14
            java.lang.Object r1 = r11.L$0
            kotlinx.coroutines.i0 r1 = (kotlinx.coroutines.i0) r1
            kotlin.k.b(r12)
            r12 = r11
            goto L6d
        L14:
            java.lang.IllegalStateException r12 = new java.lang.IllegalStateException
            java.lang.String r0 = "call to 'resume' before 'invoke' with coroutine"
            r12.<init>(r0)
            throw r12
        L1c:
            kotlin.k.b(r12)
            java.lang.Object r12 = r11.L$0
            kotlinx.coroutines.i0 r12 = (kotlinx.coroutines.i0) r12
            r1 = r12
            r12 = r11
        L25:
            boolean r3 = kotlinx.coroutines.j0.g(r1)
            if (r3 == 0) goto L78
            cn.mucang.jiakaoyi.uilib.login.ClassTimeManager$ClassTimeTip[] r3 = cn.mucang.jiakaoyi.uilib.login.ClassTimeManager.ClassTimeTip.values()
            kotlin.jvm.internal.Ref$LongRef r4 = r12.$remainTime
            cn.mucang.jiakaoyi.uilib.login.n r5 = r12.$timeOutCallback
            int r6 = r3.length
            r7 = 0
        L35:
            if (r7 >= r6) goto L60
            r8 = r3[r7]
            android.util.SparseBooleanArray r9 = cn.mucang.jiakaoyi.uilib.login.ClassTimeManager.a()
            int r10 = r8.ordinal()
            boolean r9 = r9.get(r10)
            if (r9 != 0) goto L5d
            long r9 = r4.element
            boolean r9 = r8.nearTime(r9)
            if (r9 == 0) goto L5d
            android.util.SparseBooleanArray r9 = cn.mucang.jiakaoyi.uilib.login.ClassTimeManager.a()
            int r10 = r8.ordinal()
            r9.put(r10, r2)
            r5.a(r8)
        L5d:
            int r7 = r7 + 1
            goto L35
        L60:
            r3 = 1000(0x3e8, double:4.94E-321)
            r12.L$0 = r1
            r12.label = r2
            java.lang.Object r3 = kotlinx.coroutines.s0.a(r3, r12)
            if (r3 != r0) goto L6d
            return r0
        L6d:
            kotlin.jvm.internal.Ref$LongRef r3 = r12.$remainTime
            long r4 = r3.element
            r6 = 1000(0x3e8, float:1.401E-42)
            long r6 = (long) r6
            long r4 = r4 - r6
            r3.element = r4
            goto L25
        L78:
            kotlin.v r12 = kotlin.v.f15822a
            return r12
        */
        throw new UnsupportedOperationException("Method not decompiled: cn.mucang.jiakaoyi.uilib.login.ClassTimeManager$start$1.invokeSuspend(java.lang.Object):java.lang.Object");
    }
}
