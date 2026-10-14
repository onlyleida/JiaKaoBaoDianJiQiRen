package cn.mucang.android.jiakaoyi.teachingk2.push;

import kotlin.Metadata;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;
import org.opencv.videoio.Videoio;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\u008a@"}, d2 = {"<anonymous>", "", "Lkotlinx/coroutines/CoroutineScope;"}, k = 3, mv = {1, 5, 1}, xi = 48)
@DebugMetadata(c = "cn.mucang.android.jiakaoyi.teachingk2.push.PusherManager$Traffic$start$1", f = "PusherManager.kt", l = {Videoio.CAP_PROP_XI_LENS_FOCUS_MOVE}, m = "invokeSuspend")
final class PusherManager$Traffic$start$1 extends SuspendLambda implements Function2<kotlinx.coroutines.i0, Continuation<? super kotlin.v>, Object> {
    private /* synthetic */ Object L$0;
    int label;
    final /* synthetic */ PusherManager.Traffic this$0;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    PusherManager$Traffic$start$1(PusherManager.Traffic traffic, Continuation<? super PusherManager$Traffic$start$1> continuation) {
        super(2, continuation);
        this.this$0 = traffic;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation<kotlin.v> create(Object obj, Continuation<?> continuation) {
        PusherManager$Traffic$start$1 pusherManager$Traffic$start$1 = new PusherManager$Traffic$start$1(this.this$0, continuation);
        pusherManager$Traffic$start$1.L$0 = obj;
        return pusherManager$Traffic$start$1;
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(kotlinx.coroutines.i0 i0Var, Continuation<? super kotlin.v> continuation) {
        return ((PusherManager$Traffic$start$1) create(i0Var, continuation)).invokeSuspend(kotlin.v.f15822a);
    }

    /* JADX WARN: Code duplicated, block: B:11:0x002b  */
    /* JADX WARN: Code duplicated, block: B:13:0x0037 A[RETURN] */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:12:0x0035 -> B:14:0x0038). Please report as a decompilation issue!!! */
    /*  JADX ERROR: JadxOverflowException in pass: RegionMakerVisitor
        jadx.core.utils.exceptions.JadxOverflowException: Regions stack size limit reached
        	at jadx.core.utils.ErrorsCounter.addError(ErrorsCounter.java:59)
        	at jadx.core.utils.ErrorsCounter.error(ErrorsCounter.java:31)
        	at jadx.core.dex.attributes.nodes.NotificationAttrNode.addError(NotificationAttrNode.java:19)
        */
    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final java.lang.Object invokeSuspend(java.lang.Object r6) {
        /*
            r5 = this;
            java.lang.Object r0 = kotlin.coroutines.intrinsics.a.d()
            int r1 = r5.label
            r2 = 1
            if (r1 == 0) goto L1c
            if (r1 != r2) goto L14
            java.lang.Object r1 = r5.L$0
            kotlinx.coroutines.i0 r1 = (kotlinx.coroutines.i0) r1
            kotlin.k.b(r6)
            r6 = r5
            goto L38
        L14:
            java.lang.IllegalStateException r6 = new java.lang.IllegalStateException
            java.lang.String r0 = "call to 'resume' before 'invoke' with coroutine"
            r6.<init>(r0)
            throw r6
        L1c:
            kotlin.k.b(r6)
            java.lang.Object r6 = r5.L$0
            kotlinx.coroutines.i0 r6 = (kotlinx.coroutines.i0) r6
            r1 = r6
            r6 = r5
        L25:
            boolean r3 = kotlinx.coroutines.j0.g(r1)
            if (r3 == 0) goto L3e
            r3 = 1000(0x3e8, double:4.94E-321)
            r6.L$0 = r1
            r6.label = r2
            java.lang.Object r3 = kotlinx.coroutines.s0.a(r3, r6)
            if (r3 != r0) goto L38
            return r0
        L38:
            cn.mucang.android.jiakaoyi.teachingk2.push.PusherManager$Traffic r3 = r6.this$0
            cn.mucang.android.jiakaoyi.teachingk2.push.PusherManager.Traffic.m(r3)
            goto L25
        L3e:
            kotlin.v r6 = kotlin.v.f15822a
            return r6
        */
        throw new UnsupportedOperationException("Method not decompiled: cn.mucang.android.jiakaoyi.teachingk2.push.PusherManager$Traffic$start$1.invokeSuspend(java.lang.Object):java.lang.Object");
    }
}
