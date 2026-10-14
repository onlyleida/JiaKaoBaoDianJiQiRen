package cn.mucang.android.jiakaoyi.teachingk2.push;

import cn.mucang.android.jiakaoyi.framework.utils.DebounceUtil;
import com.alivc.live.pusher.AlivcLivePushStatsInfo;
import com.alivc.live.pusher.AlivcLivePusher;
import kotlin.Metadata;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\u008a@"}, d2 = {"<anonymous>", "", "Lkotlinx/coroutines/CoroutineScope;"}, k = 3, mv = {1, 5, 1}, xi = 48)
@DebugMetadata(c = "cn.mucang.android.jiakaoyi.teachingk2.push.PusherManager$Traffic$statPushStatsInfo$1", f = "PusherManager.kt", l = {}, m = "invokeSuspend")
final class PusherManager$Traffic$statPushStatsInfo$1 extends SuspendLambda implements Function2<kotlinx.coroutines.i0, Continuation<? super kotlin.v>, Object> {
    int label;
    final /* synthetic */ PusherManager.Traffic this$0;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    PusherManager$Traffic$statPushStatsInfo$1(PusherManager.Traffic traffic, Continuation<? super PusherManager$Traffic$statPushStatsInfo$1> continuation) {
        super(2, continuation);
        this.this$0 = traffic;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation<kotlin.v> create(Object obj, Continuation<?> continuation) {
        return new PusherManager$Traffic$statPushStatsInfo$1(this.this$0, continuation);
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(kotlinx.coroutines.i0 i0Var, Continuation<? super kotlin.v> continuation) {
        return ((PusherManager$Traffic$statPushStatsInfo$1) create(i0Var, continuation)).invokeSuspend(kotlin.v.f15822a);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) throws Throwable {
        AlivcLivePushStatsInfo livePushStatsInfo;
        kotlin.coroutines.intrinsics.b.d();
        if (this.label != 0) {
            throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
        }
        kotlin.k.b(obj);
        AlivcLivePusher alivcLivePusher = PusherManager.b;
        if (alivcLivePusher != null && (livePushStatsInfo = alivcLivePusher.getLivePushStatsInfo()) != null) {
            PusherManager.Traffic traffic = this.this$0;
            traffic.f7479d++;
            traffic.f7481f++;
            traffic.c += (long) ((int) (((((livePushStatsInfo.getTotalFramesOfUploadedVideo() - traffic.b) / 1000) * livePushStatsInfo.getVideoUploadBitrate()) / 8) * 1024));
            traffic.b = livePushStatsInfo.getTotalFramesOfUploadedVideo();
            traffic.f7480e += livePushStatsInfo.getVideoCaptureFps();
            traffic.f7482g += livePushStatsInfo.getVideoUploadBitrate();
        }
        DebounceUtil debounceUtil = DebounceUtil.f3633a;
        final PusherManager.Traffic traffic2 = this.this$0;
        debounceUtil.b("statTraffic", 900000, new Runnable() { // from class: cn.mucang.android.jiakaoyi.teachingk2.push.k
            @Override // java.lang.Runnable
            public final void run() {
                PusherManager.Traffic.n(traffic2);
            }
        });
        return kotlin.v.f15822a;
    }
}
