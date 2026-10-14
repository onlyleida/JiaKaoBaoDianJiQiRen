package cn.mucang.android.jiakaoyi.teachingk2.push;

import android.app.Application;
import android.content.Context;
import android.os.Handler;
import android.os.HandlerThread;
import android.os.Looper;
import android.text.TextUtils;
import cn.mucang.android.core.config.MucangConfig;
import cn.mucang.android.jiakaoyi.framework.camera.YuvFrameCallback;
import cn.mucang.android.jiakaoyi.signal.center.model.CheckModuleStatus;
import com.alibaba.fastjson.JSON;
import com.google.android.exoplayer2.DefaultRenderersFactory;
import com.tencent.connect.common.Constants;
import com.tencent.open.SocialConstants;
import java.io.UnsupportedEncodingException;
import java.lang.reflect.Constructor;
import java.nio.charset.Charset;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;
import java.util.Objects;
import java.util.concurrent.Callable;
import kotlin.Metadata;
import kotlin.Result;
import kotlin.coroutines.Continuation;
import kotlinx.coroutines.CoroutineDispatcher;
import kotlinx.coroutines.p2;
import kotlinx.coroutines.s0;
import kotlinx.coroutines.t1;
import okhttp3.MediaType;
import okhttp3.OkHttpClient;
import okhttp3.Request;
import okhttp3.RequestBody;
import org.webrtc.CandidatePairChangeEvent;
import org.webrtc.DataChannel;
import org.webrtc.DefaultVideoDecoderFactory;
import org.webrtc.DefaultVideoEncoderFactory;
import org.webrtc.EglBase;
import org.webrtc.IceCandidate;
import org.webrtc.Logging;
import org.webrtc.MediaConstraints;
import org.webrtc.MediaStream;
import org.webrtc.MediaStreamTrack;
import org.webrtc.PeerConnection;
import org.webrtc.PeerConnectionFactory;
import org.webrtc.RtpReceiver;
import org.webrtc.RtpTransceiver;
import org.webrtc.SdpObserver;
import org.webrtc.SessionDescription;
import org.webrtc.VideoDecoderFactory;
import org.webrtc.VideoSink;
import org.webrtc.VideoTrack;
import org.webrtc.audio.JavaAudioDeviceModule;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000Ø\u0001\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010%\n\u0002\u0018\u0002\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0007\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\t\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\n\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0011\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u000b\u0018\u0000 l2\u00020\u00012\u00020\u0002:\u0001lB\u0005¢\u0006\u0002\u0010\u0003J\u000e\u0010,\u001a\u00020-2\u0006\u0010.\u001a\u00020/J\u0006\u00100\u001a\u00020-J\u000e\u00101\u001a\u00020\u00072\u0006\u0010.\u001a\u00020/J\u0006\u00102\u001a\u00020-J\u0010\u00103\u001a\u00020-2\b\b\u0002\u00104\u001a\u00020\u0007J\u001b\u00105\u001a\u00020-2\b\u00106\u001a\u0004\u0018\u00010\u001fH\u0082@ø\u0001\u0000¢\u0006\u0002\u00107J\u0010\u00108\u001a\u00020\u001d2\u0006\u00109\u001a\u00020:H\u0002J\b\u0010;\u001a\u0004\u0018\u00010\u0011J\b\u0010<\u001a\u0004\u0018\u00010=J\u0006\u0010>\u001a\u00020\u0007J\u0006\u0010?\u001a\u00020-J\u0006\u0010\u0014\u001a\u00020\u0007J\u0010\u0010@\u001a\u00020-2\u0006\u0010A\u001a\u00020BH\u0016J#\u0010C\u001a\u00020-2\u0006\u0010D\u001a\u00020E2\f\u0010F\u001a\b\u0012\u0004\u0012\u00020B0GH\u0016¢\u0006\u0002\u0010HJ\u0010\u0010I\u001a\u00020-2\u0006\u0010J\u001a\u00020\u001fH\u0016J\u0010\u0010K\u001a\u00020-2\u0006\u00106\u001a\u00020LH\u0016J\u0010\u0010M\u001a\u00020-2\u0006\u0010N\u001a\u00020OH\u0016J\u0010\u0010P\u001a\u00020-2\u0006\u0010Q\u001a\u00020RH\u0016J\u001b\u0010S\u001a\u00020-2\f\u0010T\u001a\b\u0012\u0004\u0012\u00020R0GH\u0016¢\u0006\u0002\u0010UJ\u0010\u0010V\u001a\u00020-2\u0006\u0010W\u001a\u00020XH\u0016J\u0010\u0010Y\u001a\u00020-2\u0006\u0010Z\u001a\u00020\u0007H\u0016J\u0010\u0010[\u001a\u00020-2\u0006\u0010W\u001a\u00020\\H\u0016J\u0010\u0010]\u001a\u00020-2\u0006\u0010A\u001a\u00020BH\u0016J\b\u0010^\u001a\u00020-H\u0016J\u0010\u0010_\u001a\u00020-2\u0006\u0010J\u001a\u00020\u001fH\u0016J\b\u0010`\u001a\u00020-H\u0016J\u0010\u0010a\u001a\u00020-2\u0006\u0010W\u001a\u00020bH\u0016J\u0012\u0010c\u001a\u00020-2\b\u00106\u001a\u0004\u0018\u00010\u001fH\u0002J\b\u0010d\u001a\u00020-H\u0002J\u0010\u0010e\u001a\u00020-2\u0006\u0010f\u001a\u00020\u001fH\u0002J\u000e\u0010g\u001a\u00020-2\u0006\u0010.\u001a\u00020/J\u0012\u0010h\u001a\u00020-2\b\u00106\u001a\u0004\u0018\u00010\u001fH\u0002J\u0010\u0010i\u001a\u00020-2\b\u0010j\u001a\u0004\u0018\u00010=J\u0006\u0010k\u001a\u00020-R\u001c\u0010\u0004\u001a\u0010\u0012\u0004\u0012\u00020\u0006\u0012\u0006\u0012\u0004\u0018\u00010\u00070\u0005X\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\b\u001a\u00020\tX\u0082.¢\u0006\u0002\n\u0000R\u0014\u0010\n\u001a\u00020\u000b8BX\u0082\u0004¢\u0006\u0006\u001a\u0004\b\f\u0010\rR\u0010\u0010\u000e\u001a\u0004\u0018\u00010\u000fX\u0082\u000e¢\u0006\u0002\n\u0000R\u0010\u0010\u0010\u001a\u0004\u0018\u00010\u0011X\u0082\u000e¢\u0006\u0002\n\u0000R\u000e\u0010\u0012\u001a\u00020\u0007X\u0082\u000e¢\u0006\u0002\n\u0000R$\u0010\u0014\u001a\u0004\u0018\u00010\u00072\b\u0010\u0013\u001a\u0004\u0018\u00010\u0007@BX\u0082\u000e¢\u0006\n\n\u0002\u0010\u0017\"\u0004\b\u0015\u0010\u0016R\u0010\u0010\u0018\u001a\u0004\u0018\u00010\u0019X\u0082\u000e¢\u0006\u0002\n\u0000R\u0010\u0010\u001a\u001a\u0004\u0018\u00010\u001bX\u0082\u000e¢\u0006\u0002\n\u0000R\u0010\u0010\u001c\u001a\u0004\u0018\u00010\u001dX\u0082\u000e¢\u0006\u0002\n\u0000R\u0010\u0010\u001e\u001a\u0004\u0018\u00010\u001fX\u0082\u000e¢\u0006\u0002\n\u0000R\u000e\u0010 \u001a\u00020!X\u0082\u000e¢\u0006\u0002\n\u0000R\u0010\u0010\"\u001a\u0004\u0018\u00010\u0019X\u0082\u000e¢\u0006\u0002\n\u0000R\u0010\u0010#\u001a\u0004\u0018\u00010$X\u0082\u000e¢\u0006\u0002\n\u0000R\u0010\u0010%\u001a\u0004\u0018\u00010&X\u0082\u000e¢\u0006\u0002\n\u0000R\u000e\u0010'\u001a\u00020(X\u0082\u000e¢\u0006\u0002\n\u0000R\u000e\u0010)\u001a\u00020!X\u0082\u000e¢\u0006\u0002\n\u0000R\u000e\u0010*\u001a\u00020+X\u0082\u0004¢\u0006\u0002\n\u0000\u0082\u0002\u0004\n\u0002\b\u0019¨\u0006m"}, d2 = {"Lcn/mucang/android/jiakaoyi/teachingk2/push/WebRtcCamera;", "Lorg/webrtc/PeerConnection$Observer;", "Lorg/webrtc/SdpObserver;", "()V", "aiStatusMap", "", "Lcn/mucang/android/jiakaoyi/signal/center/model/CheckModuleStatus;", "", "audioDeviceModule", "Lorg/webrtc/audio/JavaAudioDeviceModule;", "config", "Lorg/webrtc/PeerConnection$RTCConfiguration;", "getConfig", "()Lorg/webrtc/PeerConnection$RTCConfiguration;", "dispatcher", "Lkotlinx/coroutines/CoroutineDispatcher;", "eglBase", "Lorg/webrtc/EglBase;", "isConnecting", "value", "isPlaying", "setPlaying", "(Ljava/lang/Boolean;)V", "Ljava/lang/Boolean;", "openWebRtcJob", "Lkotlinx/coroutines/Job;", "peerConnection", "Lorg/webrtc/PeerConnection;", "peerConnectionFactory", "Lorg/webrtc/PeerConnectionFactory;", "playUrl", "", "playUrlErrorTime", "", "reconnectJob", "rtcThread", "Landroid/os/HandlerThread;", Constants.PARAM_SCOPE, "Lkotlinx/coroutines/CoroutineScope;", "signalCallback", "Lcn/mucang/android/jiakaoyi/signal/center/callback/SignalCallback;", "time", "videoProxySink", "Lcn/mucang/android/jiakaoyi/teachingk2/push/ProxyVideoSink;", "addYuvCallback", "", "frameCallback", "Lcn/mucang/android/jiakaoyi/framework/camera/YuvFrameCallback;", "connect", "containYuvCallback", "destroy", "disConnect", "exeOnMain", "failPlayUrl", "sdp", "(Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "getPeerConnectionFactory", "context", "Landroid/content/Context;", "getSharedEglBase", "getTarget", "Lorg/webrtc/VideoSink;", "hasObserver", "init", "onAddStream", "stream", "Lorg/webrtc/MediaStream;", "onAddTrack", SocialConstants.PARAM_RECEIVER, "Lorg/webrtc/RtpReceiver;", "mediaStreams", "", "(Lorg/webrtc/RtpReceiver;[Lorg/webrtc/MediaStream;)V", "onCreateFailure", "error", "onCreateSuccess", "Lorg/webrtc/SessionDescription;", "onDataChannel", "dataChannel", "Lorg/webrtc/DataChannel;", "onIceCandidate", "candidate", "Lorg/webrtc/IceCandidate;", "onIceCandidatesRemoved", "candidates", "([Lorg/webrtc/IceCandidate;)V", "onIceConnectionChange", "newState", "Lorg/webrtc/PeerConnection$IceConnectionState;", "onIceConnectionReceivingChange", "receiving", "onIceGatheringChange", "Lorg/webrtc/PeerConnection$IceGatheringState;", "onRemoveStream", "onRenegotiationNeeded", "onSetFailure", "onSetSuccess", "onSignalingChange", "Lorg/webrtc/PeerConnection$SignalingState;", "openWebRtc", "prepareConnect", "reconnect", "reason", "removeYuvCallback", "setRemoteSdp", "setRender", "videoSink", "tryReconnect", "Companion", "teachbase_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
public final class WebRtcCamera implements PeerConnection.Observer, SdpObserver {
    public static final a q = new a(null);

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private EglBase f7490a;
    private String b;
    private PeerConnection c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private PeerConnectionFactory f7491d;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private boolean f7493f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private kotlinx.coroutines.i0 f7494g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private HandlerThread f7495h;
    private CoroutineDispatcher i;
    private t1 j;
    private t1 k;
    private long l;
    private Boolean m;
    private long p;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private final ProxyVideoSink f7492e = new ProxyVideoSink();
    private final Map<CheckModuleStatus, Boolean> n = new LinkedHashMap();
    private cn.mucang.android.jiakaoyi.signal.c.f.a o = new cn.mucang.android.jiakaoyi.signal.c.f.a() { // from class: cn.mucang.android.jiakaoyi.teachingk2.push.f0
        @Override // cn.mucang.android.jiakaoyi.signal.c.f.a
        public final void onSignalChanged(cn.mucang.android.jiakaoyi.signal.c.e eVar) {
            WebRtcCamera.P(this.f7509a, eVar);
        }
    };

    @Metadata(d1 = {"\u0000\u001a\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0010\t\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0004\b\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J\b\u0010\t\u001a\u00020\u0006H\u0002R\u000e\u0010\u0003\u001a\u00020\u0004X\u0082T¢\u0006\u0002\n\u0000R\u000e\u0010\u0005\u001a\u00020\u0006X\u0082T¢\u0006\u0002\n\u0000R\u000e\u0010\u0007\u001a\u00020\u0006X\u0082T¢\u0006\u0002\n\u0000R\u000e\u0010\b\u001a\u00020\u0006X\u0082T¢\u0006\u0002\n\u0000¨\u0006\n"}, d2 = {"Lcn/mucang/android/jiakaoyi/teachingk2/push/WebRtcCamera$Companion;", "", "()V", "DELAY_TIME", "", "TAG", "", "debugIP", "releaseIP", "ip", "teachbase_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
    public static final class a {
        private a() {
        }

        public /* synthetic */ a(kotlin.jvm.internal.o oVar) {
            this();
        }

        /* JADX INFO: Access modifiers changed from: private */
        public final String b() {
            MucangConfig.v();
            return "192.168.118.116";
        }
    }

    @Metadata(k = 3, mv = {1, 5, 1}, xi = 48)
    public /* synthetic */ class b {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public static final /* synthetic */ int[] f7496a;
        public static final /* synthetic */ int[] b;
        public static final /* synthetic */ int[] c;

        static {
            int[] iArr = new int[CheckModuleStatus.values().length];
            iArr[CheckModuleStatus.M_70001.ordinal()] = 1;
            iArr[CheckModuleStatus.M_70003.ordinal()] = 2;
            iArr[CheckModuleStatus.M_70004.ordinal()] = 3;
            f7496a = iArr;
            int[] iArr2 = new int[SessionDescription.Type.values().length];
            iArr2[SessionDescription.Type.OFFER.ordinal()] = 1;
            b = iArr2;
            int[] iArr3 = new int[PeerConnection.IceConnectionState.values().length];
            iArr3[PeerConnection.IceConnectionState.FAILED.ordinal()] = 1;
            iArr3[PeerConnection.IceConnectionState.DISCONNECTED.ordinal()] = 2;
            iArr3[PeerConnection.IceConnectionState.CLOSED.ordinal()] = 3;
            iArr3[PeerConnection.IceConnectionState.CONNECTED.ordinal()] = 4;
            c = iArr3;
        }
    }

    private final void I(String str) {
        byte[] bytes;
        String str2 = "http://" + q.b() + ":1985/rtc/v1/play/";
        OkHttpClient okHttpClientBuild = new OkHttpClient.Builder().build();
        HashMap map = new HashMap();
        map.put("api", str2);
        map.put("streamurl", this.b);
        map.put("clientip", null);
        map.put("sdp", str);
        map.put("tid", "361cb89");
        String json = JSON.toJSONString(map);
        MediaType mediaType = MediaType.parse("application/json; charset=utf-8");
        try {
            kotlin.jvm.internal.r.d(json, "json");
            Charset charsetForName = Charset.forName("utf-8");
            kotlin.jvm.internal.r.d(charsetForName, "Charset.forName(charsetName)");
            bytes = json.getBytes(charsetForName);
            kotlin.jvm.internal.r.d(bytes, "(this as java.lang.String).getBytes(charset)");
        } catch (UnsupportedEncodingException e2) {
            e2.printStackTrace();
            bytes = null;
        }
        Request.Builder builderUrl = new Request.Builder().url(str2);
        kotlin.jvm.internal.r.c(bytes);
        Request requestBuild = builderUrl.method(Constants.HTTP_POST, RequestBody.create(mediaType, bytes)).build();
        t1 t1Var = this.k;
        if (t1Var != null) {
            t1.a.a(t1Var, null, 1, null);
        }
        kotlinx.coroutines.i0 i0Var = this.f7494g;
        this.k = i0Var != null ? kotlinx.coroutines.g.b(i0Var, null, null, new WebRtcCamera$openWebRtc$1(okHttpClientBuild, requestBuild, this, str, null), 3, null) : null;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void J() {
        cn.mucang.android.core.utils.t.h("WebRtcCamera", "准备连接");
        cn.mucang.android.jiakaoyi.framework.log.f.o("rtc播放器准备连接");
        PeerConnectionFactory peerConnectionFactory = this.f7491d;
        PeerConnection peerConnectionCreatePeerConnection = peerConnectionFactory == null ? null : peerConnectionFactory.createPeerConnection(x(), this);
        this.c = peerConnectionCreatePeerConnection;
        if (peerConnectionCreatePeerConnection != null) {
            peerConnectionCreatePeerConnection.addTransceiver(MediaStreamTrack.MediaType.MEDIA_TYPE_AUDIO, new RtpTransceiver.RtpTransceiverInit(RtpTransceiver.RtpTransceiverDirection.INACTIVE));
        }
        PeerConnection peerConnection = this.c;
        if (peerConnection != null) {
            peerConnection.addTransceiver(MediaStreamTrack.MediaType.MEDIA_TYPE_VIDEO, new RtpTransceiver.RtpTransceiverInit(RtpTransceiver.RtpTransceiverDirection.RECV_ONLY));
        }
        PeerConnection peerConnection2 = this.c;
        if (peerConnection2 == null) {
            return;
        }
        peerConnection2.createOffer(this, new MediaConstraints());
    }

    private final void K(String str) {
        kotlinx.coroutines.i0 i0Var = this.f7494g;
        if (i0Var == null) {
            return;
        }
        kotlinx.coroutines.g.b(i0Var, null, null, new WebRtcCamera$reconnect$1(this, str, null), 3, null);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void M(Boolean bool) {
        if (kotlin.jvm.internal.r.a(bool, Boolean.FALSE) && !kotlin.jvm.internal.r.a(bool, this.m)) {
            PusherStatusHelper.f7484a.a(4);
        }
        this.m = bool;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void N(String str) {
        SessionDescription sessionDescription = new SessionDescription(SessionDescription.Type.ANSWER, str);
        PeerConnection peerConnection = this.c;
        if (peerConnection == null) {
            return;
        }
        peerConnection.setRemoteDescription(this, sessionDescription);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void P(WebRtcCamera this$0, cn.mucang.android.jiakaoyi.signal.c.e signal) {
        kotlin.jvm.internal.r.e(this$0, "this$0");
        kotlin.jvm.internal.r.e(signal, "signal");
        CheckModuleStatus[] checkModuleStatusArr = {CheckModuleStatus.M_70001, CheckModuleStatus.M_70003, CheckModuleStatus.M_70004};
        for (int i = 0; i < 3; i++) {
            CheckModuleStatus checkModuleStatus = checkModuleStatusArr[i];
            boolean zCheckPass = checkModuleStatus.checkPass(signal.a().f5210e);
            if (!kotlin.jvm.internal.r.a(this$0.n.get(checkModuleStatus), Boolean.valueOf(zCheckPass))) {
                this$0.n.put(checkModuleStatus, Boolean.valueOf(zCheckPass));
                if (!zCheckPass) {
                    int i2 = b.f7496a[checkModuleStatus.ordinal()];
                    if (i2 == 1) {
                        PusherStatusHelper.f7484a.a(1);
                    } else if (i2 == 2) {
                        PusherStatusHelper.f7484a.a(2);
                    } else if (i2 == 3) {
                        PusherStatusHelper.f7484a.a(3);
                    }
                }
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final kotlin.v r(WebRtcCamera this$0) {
        kotlin.jvm.internal.r.e(this$0, "this$0");
        EglBase eglBase = this$0.f7490a;
        if (eglBase == null) {
            return null;
        }
        eglBase.release();
        return kotlin.v.f15822a;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void s(WebRtcCamera this$0) {
        kotlin.jvm.internal.r.e(this$0, "this$0");
        PeerConnectionFactory peerConnectionFactory = this$0.f7491d;
        if (peerConnectionFactory != null) {
            peerConnectionFactory.dispose();
        }
        this$0.f7491d = null;
    }

    public static /* synthetic */ void u(WebRtcCamera webRtcCamera, boolean z, int i, Object obj) {
        if ((i & 1) != 0) {
            z = false;
        }
        webRtcCamera.t(z);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void v(WebRtcCamera this$0) {
        List<RtpReceiver> receivers;
        kotlin.jvm.internal.r.e(this$0, "this$0");
        PeerConnection peerConnection = this$0.c;
        if (peerConnection != null && (receivers = peerConnection.getReceivers()) != null) {
            for (RtpReceiver rtpReceiver : receivers) {
                if (rtpReceiver.track() instanceof VideoTrack) {
                    MediaStreamTrack mediaStreamTrackTrack = rtpReceiver.track();
                    Objects.requireNonNull(mediaStreamTrackTrack, "null cannot be cast to non-null type org.webrtc.VideoTrack");
                    ((VideoTrack) mediaStreamTrackTrack).removeSink(this$0.f7492e);
                }
            }
        }
        PeerConnection peerConnection2 = this$0.c;
        if (peerConnection2 != null) {
            peerConnection2.close();
        }
        PeerConnection peerConnection3 = this$0.c;
        if (peerConnection3 != null) {
            peerConnection3.dispose();
        }
        this$0.c = null;
        cn.mucang.android.jiakaoyi.framework.log.f.o("rtc播放器连接断开");
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Code duplicated, block: B:7:0x0013  */
    public final Object w(String str, Continuation<? super kotlin.v> continuation) throws Throwable {
        WebRtcCamera$failPlayUrl$1 webRtcCamera$failPlayUrl$1;
        WebRtcCamera webRtcCamera;
        if (continuation instanceof WebRtcCamera$failPlayUrl$1) {
            webRtcCamera$failPlayUrl$1 = (WebRtcCamera$failPlayUrl$1) continuation;
            int i = webRtcCamera$failPlayUrl$1.label;
            if ((i & Integer.MIN_VALUE) != 0) {
                webRtcCamera$failPlayUrl$1.label = i - Integer.MIN_VALUE;
            } else {
                webRtcCamera$failPlayUrl$1 = new WebRtcCamera$failPlayUrl$1(this, continuation);
            }
        } else {
            webRtcCamera$failPlayUrl$1 = new WebRtcCamera$failPlayUrl$1(this, continuation);
        }
        Object obj = webRtcCamera$failPlayUrl$1.result;
        Object objD = kotlin.coroutines.intrinsics.b.d();
        int i2 = webRtcCamera$failPlayUrl$1.label;
        if (i2 == 0) {
            kotlin.k.b(obj);
            if (this.f7493f) {
                webRtcCamera = this;
            } else {
                cn.mucang.android.core.utils.t.d("WebRtcCamera", "尝试重新获取Ai盒子playUrl");
                webRtcCamera$failPlayUrl$1.L$0 = this;
                webRtcCamera$failPlayUrl$1.L$1 = str;
                webRtcCamera$failPlayUrl$1.label = 1;
                if (s0.a(DefaultRenderersFactory.DEFAULT_ALLOWED_VIDEO_JOINING_TIME_MS, webRtcCamera$failPlayUrl$1) == objD) {
                    return objD;
                }
                webRtcCamera = this;
            }
            webRtcCamera.M(kotlin.coroutines.jvm.internal.a.a(false));
            webRtcCamera.f7493f = false;
            return kotlin.v.f15822a;
        }
        if (i2 != 1) {
            throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
        }
        str = (String) webRtcCamera$failPlayUrl$1.L$1;
        webRtcCamera = (WebRtcCamera) webRtcCamera$failPlayUrl$1.L$0;
        kotlin.k.b(obj);
        webRtcCamera.I(str);
        webRtcCamera.M(kotlin.coroutines.jvm.internal.a.a(false));
        webRtcCamera.f7493f = false;
        return kotlin.v.f15822a;
    }

    private final PeerConnection.RTCConfiguration x() {
        PeerConnection.RTCConfiguration rTCConfiguration = new PeerConnection.RTCConfiguration(new ArrayList());
        rTCConfiguration.tcpCandidatePolicy = PeerConnection.TcpCandidatePolicy.ENABLED;
        rTCConfiguration.bundlePolicy = PeerConnection.BundlePolicy.MAXBUNDLE;
        rTCConfiguration.rtcpMuxPolicy = PeerConnection.RtcpMuxPolicy.NEGOTIATE;
        rTCConfiguration.continualGatheringPolicy = PeerConnection.ContinualGatheringPolicy.GATHER_CONTINUALLY;
        rTCConfiguration.keyType = PeerConnection.KeyType.ECDSA;
        rTCConfiguration.enableDtlsSrtp = Boolean.TRUE;
        rTCConfiguration.enableCpuOveruseDetection = false;
        rTCConfiguration.sdpSemantics = PeerConnection.SdpSemantics.UNIFIED_PLAN;
        return rTCConfiguration;
    }

    private final PeerConnectionFactory y(Context context) {
        Object objM139constructorimpl;
        PeerConnectionFactory.initialize(PeerConnectionFactory.InitializationOptions.builder(context).setEnableInternalTracer(true).setFieldTrials("WebRTC-H264HighProfile/Enabled/").createInitializationOptions());
        EglBase eglBase = this.f7490a;
        kotlin.jvm.internal.r.c(eglBase);
        DefaultVideoEncoderFactory defaultVideoEncoderFactory = new DefaultVideoEncoderFactory(eglBase.getEglBaseContext(), false, true);
        try {
            Result.Companion companion = Result.INSTANCE;
            EglBase eglBase2 = this.f7490a;
            kotlin.jvm.internal.r.c(eglBase2);
            m0 m0Var = new m0(eglBase2.getEglBaseContext());
            Constructor declaredConstructor = DefaultVideoDecoderFactory.class.getDeclaredConstructor(VideoDecoderFactory.class);
            declaredConstructor.setAccessible(true);
            DefaultVideoDecoderFactory defaultVideoDecoderFactory = (DefaultVideoDecoderFactory) declaredConstructor.newInstance(m0Var);
            declaredConstructor.setAccessible(false);
            objM139constructorimpl = Result.m139constructorimpl(defaultVideoDecoderFactory);
        } catch (Throwable th) {
            Result.Companion companion2 = Result.INSTANCE;
            objM139constructorimpl = Result.m139constructorimpl(kotlin.k.a(th));
        }
        Throwable thM142exceptionOrNullimpl = Result.m142exceptionOrNullimpl(objM139constructorimpl);
        if (thM142exceptionOrNullimpl != null) {
            thM142exceptionOrNullimpl.printStackTrace();
        }
        if (Result.m145isFailureimpl(objM139constructorimpl)) {
            objM139constructorimpl = null;
        }
        DefaultVideoDecoderFactory defaultVideoDecoderFactory2 = (DefaultVideoDecoderFactory) objM139constructorimpl;
        cn.mucang.android.jiakaoyi.framework.log.f.o(kotlin.jvm.internal.r.m("defaultVideoDecoderFactory:", defaultVideoDecoderFactory2));
        if (defaultVideoDecoderFactory2 == null) {
            EglBase eglBase3 = this.f7490a;
            kotlin.jvm.internal.r.c(eglBase3);
            defaultVideoDecoderFactory2 = new DefaultVideoDecoderFactory(eglBase3.getEglBaseContext());
        }
        PeerConnectionFactory.initialize(PeerConnectionFactory.InitializationOptions.builder(context).createInitializationOptions());
        PeerConnectionFactory peerConnectionFactoryCreatePeerConnectionFactory = PeerConnectionFactory.builder().setOptions(new PeerConnectionFactory.Options()).setAudioDeviceModule(JavaAudioDeviceModule.builder(context).createAudioDeviceModule()).setVideoEncoderFactory(defaultVideoEncoderFactory).setVideoDecoderFactory(defaultVideoDecoderFactory2).createPeerConnectionFactory();
        kotlin.jvm.internal.r.d(peerConnectionFactoryCreatePeerConnectionFactory, "builder()\n            .s…tePeerConnectionFactory()");
        return peerConnectionFactoryCreatePeerConnectionFactory;
    }

    public final VideoSink A() {
        return this.f7492e.c();
    }

    public final boolean B() {
        return this.f7492e.d();
    }

    public final void C() {
        Looper looper;
        this.p = System.currentTimeMillis();
        HandlerThread handlerThread = new HandlerThread("WebRtcThread");
        this.f7495h = handlerThread;
        if (handlerThread != null) {
            handlerThread.start();
        }
        HandlerThread handlerThread2 = this.f7495h;
        kotlinx.coroutines.android.a aVarC = null;
        if (handlerThread2 != null && (looper = handlerThread2.getLooper()) != null) {
            aVarC = kotlinx.coroutines.android.b.c(new Handler(looper), null, 1, null);
        }
        this.i = aVarC;
        this.f7490a = org.webrtc.o0.b();
        this.b = "webrtc://" + q.b() + "/live/livestream";
        Application context = MucangConfig.getContext();
        kotlin.jvm.internal.r.d(context, "getContext()");
        this.f7491d = y(context);
        Logging.enableLogToDebugOutput(Logging.Severity.LS_ERROR);
        cn.mucang.android.jiakaoyi.signal.c.d.m.b(this.o);
        cn.mucang.android.core.utils.t.h("www", kotlin.jvm.internal.r.m("time:", Long.valueOf(System.currentTimeMillis() - this.p)));
    }

    public final boolean D() {
        return kotlin.jvm.internal.r.a(this.m, Boolean.TRUE);
    }

    public final void L(YuvFrameCallback frameCallback) {
        kotlin.jvm.internal.r.e(frameCallback, "frameCallback");
        this.f7492e.g(frameCallback);
    }

    public final void O(VideoSink videoSink) {
        this.f7492e.h(videoSink);
    }

    public final void Q() {
        K("外部调用重连");
    }

    public final void n(YuvFrameCallback frameCallback) {
        kotlin.jvm.internal.r.e(frameCallback, "frameCallback");
        this.f7492e.a(frameCallback);
    }

    public final void o() {
        kotlinx.coroutines.i0 i0Var = this.f7494g;
        boolean z = false;
        if (i0Var != null && kotlinx.coroutines.j0.g(i0Var)) {
            z = true;
        }
        if (z) {
            cn.mucang.android.jiakaoyi.framework.log.f.o("rtc播放器已连接，直接返回");
            return;
        }
        CoroutineDispatcher coroutineDispatcher = this.i;
        kotlinx.coroutines.i0 i0VarA = coroutineDispatcher == null ? null : kotlinx.coroutines.j0.a(p2.b(null, 1, null).plus(coroutineDispatcher));
        this.f7494g = i0VarA;
        if (i0VarA == null) {
            return;
        }
        kotlinx.coroutines.g.b(i0VarA, null, null, new WebRtcCamera$connect$2(this, null), 3, null);
    }

    @Override // org.webrtc.PeerConnection.Observer
    public void onAddStream(MediaStream stream) {
        kotlin.jvm.internal.r.e(stream, "stream");
    }

    @Override // org.webrtc.PeerConnection.Observer
    public void onAddTrack(RtpReceiver receiver, MediaStream[] mediaStreams) {
        kotlin.jvm.internal.r.e(receiver, "receiver");
        kotlin.jvm.internal.r.e(mediaStreams, "mediaStreams");
        MediaStreamTrack mediaStreamTrackTrack = receiver.track();
        if (mediaStreamTrackTrack instanceof VideoTrack) {
            VideoTrack videoTrack = (VideoTrack) mediaStreamTrackTrack;
            videoTrack.setEnabled(true);
            M(Boolean.TRUE);
            cn.mucang.android.core.utils.t.h("WebRtcCamera", "收到视频流，开始发流");
            cn.mucang.android.jiakaoyi.framework.log.f.o("收到视频流，开始发流");
            videoTrack.addSink(this.f7492e);
        }
    }

    @Override // org.webrtc.PeerConnection.Observer
    public /* synthetic */ void onConnectionChange(PeerConnection.PeerConnectionState peerConnectionState) {
        org.webrtc.p0.$default$onConnectionChange(this, peerConnectionState);
    }

    @Override // org.webrtc.SdpObserver
    public void onCreateFailure(String error) {
        kotlin.jvm.internal.r.e(error, "error");
    }

    @Override // org.webrtc.SdpObserver
    public void onCreateSuccess(SessionDescription sdp) {
        kotlin.jvm.internal.r.e(sdp, "sdp");
        SessionDescription.Type type = sdp.type;
        if ((type == null ? -1 : b.b[type.ordinal()]) == 1) {
            PeerConnection peerConnection = this.c;
            if (peerConnection != null) {
                peerConnection.setLocalDescription(this, sdp);
            }
            if (TextUtils.isEmpty(sdp.description)) {
                return;
            }
            cn.mucang.android.core.utils.t.h("WebRtcCamera", "创建offer成功，准备请求播放地址");
            cn.mucang.android.jiakaoyi.framework.log.f.o("创建offer成功，准备请求播放地址");
            I(sdp.description);
        }
    }

    @Override // org.webrtc.PeerConnection.Observer
    public void onDataChannel(DataChannel dataChannel) {
        kotlin.jvm.internal.r.e(dataChannel, "dataChannel");
    }

    @Override // org.webrtc.PeerConnection.Observer
    public void onIceCandidate(IceCandidate candidate) {
        kotlin.jvm.internal.r.e(candidate, "candidate");
        PeerConnection peerConnection = this.c;
        if (peerConnection == null) {
            return;
        }
        peerConnection.addIceCandidate(candidate);
    }

    @Override // org.webrtc.PeerConnection.Observer
    public void onIceCandidatesRemoved(IceCandidate[] candidates) {
        kotlin.jvm.internal.r.e(candidates, "candidates");
        PeerConnection peerConnection = this.c;
        if (peerConnection == null) {
            return;
        }
        peerConnection.removeIceCandidates(candidates);
    }

    @Override // org.webrtc.PeerConnection.Observer
    public void onIceConnectionChange(PeerConnection.IceConnectionState newState) {
        kotlin.jvm.internal.r.e(newState, "newState");
        int i = b.c[newState.ordinal()];
        if (i == 1 || i == 2 || i == 3) {
            K("ICE连接失败,准备重连");
        } else if (i == 4) {
            cn.mucang.android.core.utils.t.h("WebRtcCamera", "ICE连接成功");
            cn.mucang.android.jiakaoyi.framework.log.f.o("ICE连接成功");
            t1 t1Var = this.j;
            if (t1Var != null) {
                t1.a.a(t1Var, null, 1, null);
            }
        }
        cn.mucang.android.core.utils.t.h("WebRtcCamera", kotlin.jvm.internal.r.m("ICE连接状态：", newState));
        cn.mucang.android.jiakaoyi.framework.log.f.o(kotlin.jvm.internal.r.m("ICE连接状态：", newState));
    }

    @Override // org.webrtc.PeerConnection.Observer
    public void onIceConnectionReceivingChange(boolean receiving) {
    }

    @Override // org.webrtc.PeerConnection.Observer
    public void onIceGatheringChange(PeerConnection.IceGatheringState newState) {
        kotlin.jvm.internal.r.e(newState, "newState");
    }

    @Override // org.webrtc.PeerConnection.Observer
    public void onRemoveStream(MediaStream stream) {
        kotlin.jvm.internal.r.e(stream, "stream");
    }

    @Override // org.webrtc.PeerConnection.Observer
    public void onRenegotiationNeeded() {
    }

    @Override // org.webrtc.PeerConnection.Observer
    public /* synthetic */ void onSelectedCandidatePairChanged(CandidatePairChangeEvent candidatePairChangeEvent) {
        org.webrtc.p0.$default$onSelectedCandidatePairChanged(this, candidatePairChangeEvent);
    }

    @Override // org.webrtc.SdpObserver
    public void onSetFailure(String error) {
        kotlin.jvm.internal.r.e(error, "error");
    }

    @Override // org.webrtc.SdpObserver
    public void onSetSuccess() {
    }

    @Override // org.webrtc.PeerConnection.Observer
    public void onSignalingChange(PeerConnection.SignalingState newState) {
        kotlin.jvm.internal.r.e(newState, "newState");
    }

    @Override // org.webrtc.PeerConnection.Observer
    public /* synthetic */ void onStandardizedIceConnectionChange(PeerConnection.IceConnectionState iceConnectionState) {
        org.webrtc.p0.$default$onStandardizedIceConnectionChange(this, iceConnectionState);
    }

    @Override // org.webrtc.PeerConnection.Observer
    public /* synthetic */ void onTrack(RtpTransceiver rtpTransceiver) {
        org.webrtc.p0.$default$onTrack(this, rtpTransceiver);
    }

    public final boolean p(YuvFrameCallback frameCallback) {
        kotlin.jvm.internal.r.e(frameCallback, "frameCallback");
        return this.f7492e.b(frameCallback);
    }

    public final void q() {
        t(true);
        cn.mucang.android.jiakaoyi.signal.c.d.m.n(this.o);
        this.f7492e.f();
        cn.mucang.android.jiakaoyi.framework.p002e.m.h(new Callable() { // from class: cn.mucang.android.jiakaoyi.teachingk2.push.i0
            @Override // java.util.concurrent.Callable
            public final Object call() {
                return WebRtcCamera.r(this.f7515a);
            }
        });
        cn.mucang.android.core.utils.u.c(new Runnable() { // from class: cn.mucang.android.jiakaoyi.teachingk2.push.g0
            @Override // java.lang.Runnable
            public final void run() {
                WebRtcCamera.s(this.f7511a);
            }
        });
        HandlerThread handlerThread = this.f7495h;
        if (handlerThread == null) {
            return;
        }
        handlerThread.quit();
    }

    public final void t(boolean z) {
        Looper looper;
        if (z) {
            looper = Looper.getMainLooper();
        } else {
            HandlerThread handlerThread = this.f7495h;
            looper = handlerThread == null ? null : handlerThread.getLooper();
            if (looper == null) {
                looper = Looper.getMainLooper();
            }
        }
        if (looper != null) {
            new Handler(looper).post(new Runnable() { // from class: cn.mucang.android.jiakaoyi.teachingk2.push.h0
                @Override // java.lang.Runnable
                public final void run() {
                    WebRtcCamera.v(this.f7513a);
                }
            });
        }
        M(null);
        kotlinx.coroutines.i0 i0Var = this.f7494g;
        if (i0Var != null) {
            kotlinx.coroutines.j0.d(i0Var, null, 1, null);
        }
        this.f7494g = null;
    }

    /* JADX INFO: renamed from: z, reason: from getter */
    public final EglBase getF7490a() {
        return this.f7490a;
    }
}
