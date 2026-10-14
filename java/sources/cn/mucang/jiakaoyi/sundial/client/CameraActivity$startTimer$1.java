package cn.mucang.jiakaoyi.sundial.client;

import kotlin.Metadata;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.Ref$IntRef;
import kotlin.v;
import kotlinx.coroutines.i0;

/* JADX INFO: loaded from: classes5.dex */
@Metadata(d1 = {"\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\u008a@"}, d2 = {"<anonymous>", "", "Lkotlinx/coroutines/CoroutineScope;"}, k = 3, mv = {1, 5, 1}, xi = 48)
@DebugMetadata(c = "cn.mucang.jiakaoyi.sundial.client.CameraActivity$startTimer$1", f = "CameraActivity.kt", l = {123, 129}, m = "invokeSuspend")
final class CameraActivity$startTimer$1 extends SuspendLambda implements Function2<i0, Continuation<? super v>, Object> {
    final /* synthetic */ int $limit;
    final /* synthetic */ Ref$IntRef $time;
    int I$0;
    private /* synthetic */ Object L$0;
    int label;
    final /* synthetic */ CameraActivity this$0;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    CameraActivity$startTimer$1(CameraActivity cameraActivity, int i, Ref$IntRef ref$IntRef, Continuation<? super CameraActivity$startTimer$1> continuation) {
        super(2, continuation);
        this.this$0 = cameraActivity;
        this.$limit = i;
        this.$time = ref$IntRef;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation<v> create(Object obj, Continuation<?> continuation) {
        CameraActivity$startTimer$1 cameraActivity$startTimer$1 = new CameraActivity$startTimer$1(this.this$0, this.$limit, this.$time, continuation);
        cameraActivity$startTimer$1.L$0 = obj;
        return cameraActivity$startTimer$1;
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(i0 i0Var, Continuation<? super v> continuation) {
        return ((CameraActivity$startTimer$1) create(i0Var, continuation)).invokeSuspend(v.f15822a);
    }

    /* JADX WARN: Code duplicated, block: B:11:0x0031 A[PHI: r5 r14
      0x0031: PHI (r5v1 kotlinx.coroutines.i0) = (r5v0 kotlinx.coroutines.i0), (r5v2 kotlinx.coroutines.i0) binds: [B:10:0x0028, B:21:0x0083] A[DONT_GENERATE, DONT_INLINE]
      0x0031: PHI (r14v4 cn.mucang.jiakaoyi.sundial.client.CameraActivity$startTimer$1) = 
      (r14v3 cn.mucang.jiakaoyi.sundial.client.CameraActivity$startTimer$1)
      (r14v5 cn.mucang.jiakaoyi.sundial.client.CameraActivity$startTimer$1)
     binds: [B:10:0x0028, B:21:0x0083] A[DONT_GENERATE, DONT_INLINE]] */
    /* JADX WARN: Code duplicated, block: B:13:0x0037  */
    /* JADX WARN: Code duplicated, block: B:15:0x003f  */
    /* JADX WARN: Code duplicated, block: B:16:0x0041  */
    /* JADX WARN: Code duplicated, block: B:19:0x0079 A[RETURN] */
    /* JADX WARN: Code duplicated, block: B:22:0x0085  */
    /* JADX WARN: Code duplicated, block: B:25:0x009d  */
    /* JADX WARN: Code duplicated, block: B:29:0x00bb  */
    /* JADX WARN: Code duplicated, block: B:32:0x00ca A[RETURN] */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:18:0x0077 -> B:20:0x007a). Please report as a decompilation issue!!! */
    /*  JADX ERROR: JadxOverflowException in pass: RegionMakerVisitor
        jadx.core.utils.exceptions.JadxOverflowException: Regions stack size limit reached
        	at jadx.core.utils.ErrorsCounter.addError(ErrorsCounter.java:59)
        	at jadx.core.utils.ErrorsCounter.error(ErrorsCounter.java:31)
        	at jadx.core.dex.attributes.nodes.NotificationAttrNode.addError(NotificationAttrNode.java:19)
        */
    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final java.lang.Object invokeSuspend(java.lang.Object r14) {
        /*
            Method dump skipped, instruction units count: 224
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: cn.mucang.jiakaoyi.sundial.client.CameraActivity$startTimer$1.invokeSuspend(java.lang.Object):java.lang.Object");
    }
}
