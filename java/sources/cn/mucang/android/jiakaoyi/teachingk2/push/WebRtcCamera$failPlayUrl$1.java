package cn.mucang.android.jiakaoyi.teachingk2.push;

import kotlin.Metadata;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
import kotlin.coroutines.jvm.internal.DebugMetadata;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(k = 3, mv = {1, 5, 1}, xi = 48)
@DebugMetadata(c = "cn.mucang.android.jiakaoyi.teachingk2.push.WebRtcCamera", f = "WebRtcCamera.kt", l = {237}, m = "failPlayUrl")
final class WebRtcCamera$failPlayUrl$1 extends ContinuationImpl {
    Object L$0;
    Object L$1;
    int label;
    /* synthetic */ Object result;
    final /* synthetic */ WebRtcCamera this$0;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    WebRtcCamera$failPlayUrl$1(WebRtcCamera webRtcCamera, Continuation<? super WebRtcCamera$failPlayUrl$1> continuation) {
        super(continuation);
        this.this$0 = webRtcCamera;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        this.result = obj;
        this.label |= Integer.MIN_VALUE;
        return this.this$0.w(null, this);
    }
}
