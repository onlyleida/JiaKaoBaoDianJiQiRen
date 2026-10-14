package cn.mucang.android.jiakaoyi.teachingk2.push;

import com.google.android.exoplayer2.DefaultRenderersFactory;
import java.util.List;
import java.util.Objects;
import kotlin.Metadata;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;
import kotlinx.coroutines.s0;
import org.webrtc.MediaStreamTrack;
import org.webrtc.PeerConnection;
import org.webrtc.RtpReceiver;
import org.webrtc.VideoTrack;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\u008a@"}, d2 = {"<anonymous>", "", "Lkotlinx/coroutines/CoroutineScope;"}, k = 3, mv = {1, 5, 1}, xi = 48)
@DebugMetadata(c = "cn.mucang.android.jiakaoyi.teachingk2.push.WebRtcCamera$reconnect$1$1$1", f = "WebRtcCamera.kt", l = {279}, m = "invokeSuspend")
final class WebRtcCamera$reconnect$1$1$1 extends SuspendLambda implements Function2<kotlinx.coroutines.i0, Continuation<? super kotlin.v>, Object> {
    private /* synthetic */ Object L$0;
    int label;
    final /* synthetic */ WebRtcCamera this$0;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    WebRtcCamera$reconnect$1$1$1(WebRtcCamera webRtcCamera, Continuation<? super WebRtcCamera$reconnect$1$1$1> continuation) {
        super(2, continuation);
        this.this$0 = webRtcCamera;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation<kotlin.v> create(Object obj, Continuation<?> continuation) {
        WebRtcCamera$reconnect$1$1$1 webRtcCamera$reconnect$1$1$1 = new WebRtcCamera$reconnect$1$1$1(this.this$0, continuation);
        webRtcCamera$reconnect$1$1$1.L$0 = obj;
        return webRtcCamera$reconnect$1$1$1;
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(kotlinx.coroutines.i0 i0Var, Continuation<? super kotlin.v> continuation) {
        return ((WebRtcCamera$reconnect$1$1$1) create(i0Var, continuation)).invokeSuspend(kotlin.v.f15822a);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) throws Throwable {
        kotlinx.coroutines.i0 i0Var;
        List<RtpReceiver> receivers;
        Object objD = kotlin.coroutines.intrinsics.b.d();
        int i = this.label;
        if (i == 0) {
            kotlin.k.b(obj);
            i0Var = (kotlinx.coroutines.i0) this.L$0;
        } else {
            if (i != 1) {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
            i0Var = (kotlinx.coroutines.i0) this.L$0;
            kotlin.k.b(obj);
        }
        while (kotlinx.coroutines.j0.g(i0Var)) {
            kotlinx.coroutines.j0.f(i0Var);
            if (!this.this$0.f7493f && cn.mucang.android.core.utils.x.e()) {
                this.this$0.f7493f = true;
                PeerConnection peerConnection = this.this$0.c;
                if (peerConnection != null && (receivers = peerConnection.getReceivers()) != null) {
                    WebRtcCamera webRtcCamera = this.this$0;
                    for (RtpReceiver rtpReceiver : receivers) {
                        if (rtpReceiver.track() instanceof VideoTrack) {
                            MediaStreamTrack mediaStreamTrackTrack = rtpReceiver.track();
                            Objects.requireNonNull(mediaStreamTrackTrack, "null cannot be cast to non-null type org.webrtc.VideoTrack");
                            ((VideoTrack) mediaStreamTrackTrack).removeSink(webRtcCamera.f7492e);
                        }
                    }
                }
                PeerConnection peerConnection2 = this.this$0.c;
                if (peerConnection2 != null) {
                    peerConnection2.close();
                }
                PeerConnection peerConnection3 = this.this$0.c;
                if (peerConnection3 != null) {
                    peerConnection3.dispose();
                }
                this.this$0.J();
            }
            this.L$0 = i0Var;
            this.label = 1;
            if (s0.a(DefaultRenderersFactory.DEFAULT_ALLOWED_VIDEO_JOINING_TIME_MS, this) == objD) {
                return objD;
            }
        }
        cn.mucang.android.core.utils.t.h("PusherManager", "rtc播放器重连结束----end");
        cn.mucang.android.jiakaoyi.framework.log.f.o("rtc播放器重连结束----end");
        return kotlin.v.f15822a;
    }
}
