package cn.mucang.android.jiakaoyi.teachingk2.push;

import kotlin.Metadata;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import org.opencv.videoio.Videoio;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(k = 3, mv = {1, 5, 1}, xi = 48)
@DebugMetadata(c = "cn.mucang.android.jiakaoyi.teachingk2.push.PusherManager", f = "PusherManager.kt", l = {Videoio.CAP_PROP_XI_EXPOSURE_BURST_COUNT, Videoio.CAP_PROP_XI_DECIMATION_SELECTOR}, m = "getPushUrl")
final class PusherManager$getPushUrl$1 extends ContinuationImpl {
    Object L$0;
    int label;
    /* synthetic */ Object result;
    final /* synthetic */ PusherManager this$0;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    PusherManager$getPushUrl$1(PusherManager pusherManager, Continuation<? super PusherManager$getPushUrl$1> continuation) {
        super(continuation);
        this.this$0 = pusherManager;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        this.result = obj;
        this.label |= Integer.MIN_VALUE;
        return this.this$0.F(this);
    }
}
