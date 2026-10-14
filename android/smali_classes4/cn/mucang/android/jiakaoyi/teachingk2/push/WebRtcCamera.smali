.class public final Lcn/mucang/android/jiakaoyi/teachingk2/push/WebRtcCamera;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/webrtc/PeerConnection$Observer;
.implements Lorg/webrtc/SdpObserver;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/mucang/android/jiakaoyi/teachingk2/push/WebRtcCamera$a;,
        Lcn/mucang/android/jiakaoyi/teachingk2/push/WebRtcCamera$b;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u00d8\u0001\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010%\n\u0002\u0018\u0002\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0007\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\t\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\n\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0011\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u000b\u0018\u0000 l2\u00020\u00012\u00020\u0002:\u0001lB\u0005\u00a2\u0006\u0002\u0010\u0003J\u000e\u0010,\u001a\u00020-2\u0006\u0010.\u001a\u00020/J\u0006\u00100\u001a\u00020-J\u000e\u00101\u001a\u00020\u00072\u0006\u0010.\u001a\u00020/J\u0006\u00102\u001a\u00020-J\u0010\u00103\u001a\u00020-2\u0008\u0008\u0002\u00104\u001a\u00020\u0007J\u001b\u00105\u001a\u00020-2\u0008\u00106\u001a\u0004\u0018\u00010\u001fH\u0082@\u00f8\u0001\u0000\u00a2\u0006\u0002\u00107J\u0010\u00108\u001a\u00020\u001d2\u0006\u00109\u001a\u00020:H\u0002J\u0008\u0010;\u001a\u0004\u0018\u00010\u0011J\u0008\u0010<\u001a\u0004\u0018\u00010=J\u0006\u0010>\u001a\u00020\u0007J\u0006\u0010?\u001a\u00020-J\u0006\u0010\u0014\u001a\u00020\u0007J\u0010\u0010@\u001a\u00020-2\u0006\u0010A\u001a\u00020BH\u0016J#\u0010C\u001a\u00020-2\u0006\u0010D\u001a\u00020E2\u000c\u0010F\u001a\u0008\u0012\u0004\u0012\u00020B0GH\u0016\u00a2\u0006\u0002\u0010HJ\u0010\u0010I\u001a\u00020-2\u0006\u0010J\u001a\u00020\u001fH\u0016J\u0010\u0010K\u001a\u00020-2\u0006\u00106\u001a\u00020LH\u0016J\u0010\u0010M\u001a\u00020-2\u0006\u0010N\u001a\u00020OH\u0016J\u0010\u0010P\u001a\u00020-2\u0006\u0010Q\u001a\u00020RH\u0016J\u001b\u0010S\u001a\u00020-2\u000c\u0010T\u001a\u0008\u0012\u0004\u0012\u00020R0GH\u0016\u00a2\u0006\u0002\u0010UJ\u0010\u0010V\u001a\u00020-2\u0006\u0010W\u001a\u00020XH\u0016J\u0010\u0010Y\u001a\u00020-2\u0006\u0010Z\u001a\u00020\u0007H\u0016J\u0010\u0010[\u001a\u00020-2\u0006\u0010W\u001a\u00020\\H\u0016J\u0010\u0010]\u001a\u00020-2\u0006\u0010A\u001a\u00020BH\u0016J\u0008\u0010^\u001a\u00020-H\u0016J\u0010\u0010_\u001a\u00020-2\u0006\u0010J\u001a\u00020\u001fH\u0016J\u0008\u0010`\u001a\u00020-H\u0016J\u0010\u0010a\u001a\u00020-2\u0006\u0010W\u001a\u00020bH\u0016J\u0012\u0010c\u001a\u00020-2\u0008\u00106\u001a\u0004\u0018\u00010\u001fH\u0002J\u0008\u0010d\u001a\u00020-H\u0002J\u0010\u0010e\u001a\u00020-2\u0006\u0010f\u001a\u00020\u001fH\u0002J\u000e\u0010g\u001a\u00020-2\u0006\u0010.\u001a\u00020/J\u0012\u0010h\u001a\u00020-2\u0008\u00106\u001a\u0004\u0018\u00010\u001fH\u0002J\u0010\u0010i\u001a\u00020-2\u0008\u0010j\u001a\u0004\u0018\u00010=J\u0006\u0010k\u001a\u00020-R\u001c\u0010\u0004\u001a\u0010\u0012\u0004\u0012\u00020\u0006\u0012\u0006\u0012\u0004\u0018\u00010\u00070\u0005X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0008\u001a\u00020\tX\u0082.\u00a2\u0006\u0002\n\u0000R\u0014\u0010\n\u001a\u00020\u000b8BX\u0082\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\u000c\u0010\rR\u0010\u0010\u000e\u001a\u0004\u0018\u00010\u000fX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0010\u0010\u0010\u001a\u0004\u0018\u00010\u0011X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0012\u001a\u00020\u0007X\u0082\u000e\u00a2\u0006\u0002\n\u0000R$\u0010\u0014\u001a\u0004\u0018\u00010\u00072\u0008\u0010\u0013\u001a\u0004\u0018\u00010\u0007@BX\u0082\u000e\u00a2\u0006\n\n\u0002\u0010\u0017\"\u0004\u0008\u0015\u0010\u0016R\u0010\u0010\u0018\u001a\u0004\u0018\u00010\u0019X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0010\u0010\u001a\u001a\u0004\u0018\u00010\u001bX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0010\u0010\u001c\u001a\u0004\u0018\u00010\u001dX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0010\u0010\u001e\u001a\u0004\u0018\u00010\u001fX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010 \u001a\u00020!X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0010\u0010\"\u001a\u0004\u0018\u00010\u0019X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0010\u0010#\u001a\u0004\u0018\u00010$X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0010\u0010%\u001a\u0004\u0018\u00010&X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\'\u001a\u00020(X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010)\u001a\u00020!X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010*\u001a\u00020+X\u0082\u0004\u00a2\u0006\u0002\n\u0000\u0082\u0002\u0004\n\u0002\u0008\u0019\u00a8\u0006m"
    }
    d2 = {
        "Lcn/mucang/android/jiakaoyi/teachingk2/push/WebRtcCamera;",
        "Lorg/webrtc/PeerConnection$Observer;",
        "Lorg/webrtc/SdpObserver;",
        "()V",
        "aiStatusMap",
        "",
        "Lcn/mucang/android/jiakaoyi/signal/center/model/CheckModuleStatus;",
        "",
        "audioDeviceModule",
        "Lorg/webrtc/audio/JavaAudioDeviceModule;",
        "config",
        "Lorg/webrtc/PeerConnection$RTCConfiguration;",
        "getConfig",
        "()Lorg/webrtc/PeerConnection$RTCConfiguration;",
        "dispatcher",
        "Lkotlinx/coroutines/CoroutineDispatcher;",
        "eglBase",
        "Lorg/webrtc/EglBase;",
        "isConnecting",
        "value",
        "isPlaying",
        "setPlaying",
        "(Ljava/lang/Boolean;)V",
        "Ljava/lang/Boolean;",
        "openWebRtcJob",
        "Lkotlinx/coroutines/Job;",
        "peerConnection",
        "Lorg/webrtc/PeerConnection;",
        "peerConnectionFactory",
        "Lorg/webrtc/PeerConnectionFactory;",
        "playUrl",
        "",
        "playUrlErrorTime",
        "",
        "reconnectJob",
        "rtcThread",
        "Landroid/os/HandlerThread;",
        "scope",
        "Lkotlinx/coroutines/CoroutineScope;",
        "signalCallback",
        "Lcn/mucang/android/jiakaoyi/signal/center/callback/SignalCallback;",
        "time",
        "videoProxySink",
        "Lcn/mucang/android/jiakaoyi/teachingk2/push/ProxyVideoSink;",
        "addYuvCallback",
        "",
        "frameCallback",
        "Lcn/mucang/android/jiakaoyi/framework/camera/YuvFrameCallback;",
        "connect",
        "containYuvCallback",
        "destroy",
        "disConnect",
        "exeOnMain",
        "failPlayUrl",
        "sdp",
        "(Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;",
        "getPeerConnectionFactory",
        "context",
        "Landroid/content/Context;",
        "getSharedEglBase",
        "getTarget",
        "Lorg/webrtc/VideoSink;",
        "hasObserver",
        "init",
        "onAddStream",
        "stream",
        "Lorg/webrtc/MediaStream;",
        "onAddTrack",
        "receiver",
        "Lorg/webrtc/RtpReceiver;",
        "mediaStreams",
        "",
        "(Lorg/webrtc/RtpReceiver;[Lorg/webrtc/MediaStream;)V",
        "onCreateFailure",
        "error",
        "onCreateSuccess",
        "Lorg/webrtc/SessionDescription;",
        "onDataChannel",
        "dataChannel",
        "Lorg/webrtc/DataChannel;",
        "onIceCandidate",
        "candidate",
        "Lorg/webrtc/IceCandidate;",
        "onIceCandidatesRemoved",
        "candidates",
        "([Lorg/webrtc/IceCandidate;)V",
        "onIceConnectionChange",
        "newState",
        "Lorg/webrtc/PeerConnection$IceConnectionState;",
        "onIceConnectionReceivingChange",
        "receiving",
        "onIceGatheringChange",
        "Lorg/webrtc/PeerConnection$IceGatheringState;",
        "onRemoveStream",
        "onRenegotiationNeeded",
        "onSetFailure",
        "onSetSuccess",
        "onSignalingChange",
        "Lorg/webrtc/PeerConnection$SignalingState;",
        "openWebRtc",
        "prepareConnect",
        "reconnect",
        "reason",
        "removeYuvCallback",
        "setRemoteSdp",
        "setRender",
        "videoSink",
        "tryReconnect",
        "Companion",
        "teachbase_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x5,
        0x1
    }
    xi = 0x30
.end annotation


# static fields
.field public static final q:Lcn/mucang/android/jiakaoyi/teachingk2/push/WebRtcCamera$a;


# instance fields
.field private a:Lorg/webrtc/EglBase;

.field private b:Ljava/lang/String;

.field private c:Lorg/webrtc/PeerConnection;

.field private d:Lorg/webrtc/PeerConnectionFactory;

.field private final e:Lcn/mucang/android/jiakaoyi/teachingk2/push/n0;

.field private f:Z

.field private g:Lkotlinx/coroutines/i0;

.field private h:Landroid/os/HandlerThread;

.field private i:Lkotlinx/coroutines/CoroutineDispatcher;

.field private j:Lkotlinx/coroutines/t1;

.field private k:Lkotlinx/coroutines/t1;

.field private l:J

.field private m:Ljava/lang/Boolean;

.field private final n:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lcn/mucang/android/jiakaoyi/signal/center/model/CheckModuleStatus;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private o:Lcn/mucang/android/jiakaoyi/signal/c/f/a;

.field private p:J


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcn/mucang/android/jiakaoyi/teachingk2/push/WebRtcCamera$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcn/mucang/android/jiakaoyi/teachingk2/push/WebRtcCamera$a;-><init>(Lkotlin/jvm/internal/o;)V

    sput-object v0, Lcn/mucang/android/jiakaoyi/teachingk2/push/WebRtcCamera;->q:Lcn/mucang/android/jiakaoyi/teachingk2/push/WebRtcCamera$a;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Lcn/mucang/android/jiakaoyi/teachingk2/push/n0;

    invoke-direct {v0}, Lcn/mucang/android/jiakaoyi/teachingk2/push/n0;-><init>()V

    iput-object v0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/push/WebRtcCamera;->e:Lcn/mucang/android/jiakaoyi/teachingk2/push/n0;

    .line 3
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/push/WebRtcCamera;->n:Ljava/util/Map;

    .line 4
    new-instance v0, Lcn/mucang/android/jiakaoyi/teachingk2/push/f0;

    invoke-direct {v0, p0}, Lcn/mucang/android/jiakaoyi/teachingk2/push/f0;-><init>(Lcn/mucang/android/jiakaoyi/teachingk2/push/WebRtcCamera;)V

    iput-object v0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/push/WebRtcCamera;->o:Lcn/mucang/android/jiakaoyi/signal/c/f/a;

    return-void
.end method

.method public static synthetic E(Lcn/mucang/android/jiakaoyi/teachingk2/push/WebRtcCamera;Lcn/mucang/android/jiakaoyi/signal/c/e;)V
    .locals 0

    invoke-static {p0, p1}, Lcn/mucang/android/jiakaoyi/teachingk2/push/WebRtcCamera;->P(Lcn/mucang/android/jiakaoyi/teachingk2/push/WebRtcCamera;Lcn/mucang/android/jiakaoyi/signal/c/e;)V

    return-void
.end method

.method public static synthetic F(Lcn/mucang/android/jiakaoyi/teachingk2/push/WebRtcCamera;)V
    .locals 0

    invoke-static {p0}, Lcn/mucang/android/jiakaoyi/teachingk2/push/WebRtcCamera;->s(Lcn/mucang/android/jiakaoyi/teachingk2/push/WebRtcCamera;)V

    return-void
.end method

.method public static synthetic G(Lcn/mucang/android/jiakaoyi/teachingk2/push/WebRtcCamera;)V
    .locals 0

    invoke-static {p0}, Lcn/mucang/android/jiakaoyi/teachingk2/push/WebRtcCamera;->v(Lcn/mucang/android/jiakaoyi/teachingk2/push/WebRtcCamera;)V

    return-void
.end method

.method public static synthetic H(Lcn/mucang/android/jiakaoyi/teachingk2/push/WebRtcCamera;)Lkotlin/v;
    .locals 0

    invoke-static {p0}, Lcn/mucang/android/jiakaoyi/teachingk2/push/WebRtcCamera;->r(Lcn/mucang/android/jiakaoyi/teachingk2/push/WebRtcCamera;)Lkotlin/v;

    move-result-object p0

    return-object p0
.end method

.method private final I(Ljava/lang/String;)V
    .locals 11

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "http://"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Lcn/mucang/android/jiakaoyi/teachingk2/push/WebRtcCamera;->q:Lcn/mucang/android/jiakaoyi/teachingk2/push/WebRtcCamera$a;

    invoke-static {v1}, Lcn/mucang/android/jiakaoyi/teachingk2/push/WebRtcCamera$a;->a(Lcn/mucang/android/jiakaoyi/teachingk2/push/WebRtcCamera$a;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ":1985/rtc/v1/play/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 2
    new-instance v1, Lokhttp3/OkHttpClient$Builder;

    invoke-direct {v1}, Lokhttp3/OkHttpClient$Builder;-><init>()V

    invoke-virtual {v1}, Lokhttp3/OkHttpClient$Builder;->build()Lokhttp3/OkHttpClient;

    move-result-object v3

    .line 3
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    const-string v2, "api"

    .line 4
    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 5
    iget-object v2, p0, Lcn/mucang/android/jiakaoyi/teachingk2/push/WebRtcCamera;->b:Ljava/lang/String;

    const-string v4, "streamurl"

    invoke-interface {v1, v4, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "clientip"

    const/4 v4, 0x0

    .line 6
    invoke-interface {v1, v2, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "sdp"

    .line 7
    invoke-interface {v1, v2, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "tid"

    const-string v5, "361cb89"

    .line 8
    invoke-interface {v1, v2, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 9
    invoke-static {v1}, Lcom/alibaba/fastjson/JSON;->toJSONString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "application/json; charset=utf-8"

    .line 10
    invoke-static {v2}, Lokhttp3/MediaType;->parse(Ljava/lang/String;)Lokhttp3/MediaType;

    move-result-object v2

    :try_start_0
    const-string v5, "json"

    .line 11
    invoke-static {v1, v5}, Lkotlin/jvm/internal/r;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v5, "utf-8"

    invoke-static {v5}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v5

    const-string v6, "Charset.forName(charsetName)"

    invoke-static {v5, v6}, Lkotlin/jvm/internal/r;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v1, v5}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v1

    const-string v5, "(this as java.lang.String).getBytes(charset)"

    invoke-static {v1, v5}, Lkotlin/jvm/internal/r;->d(Ljava/lang/Object;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    .line 12
    invoke-virtual {v1}, Ljava/io/UnsupportedEncodingException;->printStackTrace()V

    move-object v1, v4

    .line 13
    :goto_0
    new-instance v5, Lokhttp3/Request$Builder;

    invoke-direct {v5}, Lokhttp3/Request$Builder;-><init>()V

    .line 14
    invoke-virtual {v5, v0}, Lokhttp3/Request$Builder;->url(Ljava/lang/String;)Lokhttp3/Request$Builder;

    move-result-object v0

    .line 15
    invoke-static {v1}, Lkotlin/jvm/internal/r;->c(Ljava/lang/Object;)V

    invoke-static {v2, v1}, Lokhttp3/RequestBody;->create(Lokhttp3/MediaType;[B)Lokhttp3/RequestBody;

    move-result-object v1

    const-string v2, "POST"

    invoke-virtual {v0, v2, v1}, Lokhttp3/Request$Builder;->method(Ljava/lang/String;Lokhttp3/RequestBody;)Lokhttp3/Request$Builder;

    move-result-object v0

    .line 16
    invoke-virtual {v0}, Lokhttp3/Request$Builder;->build()Lokhttp3/Request;

    move-result-object v0

    .line 17
    iget-object v1, p0, Lcn/mucang/android/jiakaoyi/teachingk2/push/WebRtcCamera;->k:Lkotlinx/coroutines/t1;

    if-nez v1, :cond_0

    goto :goto_1

    :cond_0
    const/4 v2, 0x1

    invoke-static {v1, v4, v2, v4}, Lkotlinx/coroutines/t1$a;->a(Lkotlinx/coroutines/t1;Ljava/util/concurrent/CancellationException;ILjava/lang/Object;)V

    .line 18
    :goto_1
    iget-object v1, p0, Lcn/mucang/android/jiakaoyi/teachingk2/push/WebRtcCamera;->g:Lkotlinx/coroutines/i0;

    if-nez v1, :cond_1

    goto :goto_2

    :cond_1
    const/4 v8, 0x0

    const/4 v9, 0x0

    new-instance v10, Lcn/mucang/android/jiakaoyi/teachingk2/push/WebRtcCamera$openWebRtc$1;

    const/4 v7, 0x0

    move-object v2, v10

    move-object v4, v0

    move-object v5, p0

    move-object v6, p1

    invoke-direct/range {v2 .. v7}, Lcn/mucang/android/jiakaoyi/teachingk2/push/WebRtcCamera$openWebRtc$1;-><init>(Lokhttp3/OkHttpClient;Lokhttp3/Request;Lcn/mucang/android/jiakaoyi/teachingk2/push/WebRtcCamera;Ljava/lang/String;Lkotlin/coroutines/c;)V

    const/4 p1, 0x3

    const/4 v0, 0x0

    move-object v5, v1

    move-object v6, v8

    move-object v7, v9

    move-object v8, v10

    move v9, p1

    move-object v10, v0

    invoke-static/range {v5 .. v10}, Lkotlinx/coroutines/f;->b(Lkotlinx/coroutines/i0;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/b/p;ILjava/lang/Object;)Lkotlinx/coroutines/t1;

    move-result-object v4

    :goto_2
    iput-object v4, p0, Lcn/mucang/android/jiakaoyi/teachingk2/push/WebRtcCamera;->k:Lkotlinx/coroutines/t1;

    return-void
.end method

.method private final J()V
    .locals 4

    const-string v0, "WebRtcCamera"

    const-string v1, "\u51c6\u5907\u8fde\u63a5"

    .line 1
    invoke-static {v0, v1}, Lcn/mucang/android/core/utils/t;->h(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "rtc\u64ad\u653e\u5668\u51c6\u5907\u8fde\u63a5"

    .line 2
    invoke-static {v0}, Lcn/mucang/android/jiakaoyi/framework/log/f;->o(Ljava/lang/Object;)V

    .line 3
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/push/WebRtcCamera;->d:Lorg/webrtc/PeerConnectionFactory;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    invoke-direct {p0}, Lcn/mucang/android/jiakaoyi/teachingk2/push/WebRtcCamera;->x()Lorg/webrtc/PeerConnection$RTCConfiguration;

    move-result-object v1

    invoke-virtual {v0, v1, p0}, Lorg/webrtc/PeerConnectionFactory;->createPeerConnection(Lorg/webrtc/PeerConnection$RTCConfiguration;Lorg/webrtc/PeerConnection$Observer;)Lorg/webrtc/PeerConnection;

    move-result-object v0

    :goto_0
    iput-object v0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/push/WebRtcCamera;->c:Lorg/webrtc/PeerConnection;

    if-nez v0, :cond_1

    goto :goto_1

    .line 4
    :cond_1
    sget-object v1, Lorg/webrtc/MediaStreamTrack$MediaType;->MEDIA_TYPE_AUDIO:Lorg/webrtc/MediaStreamTrack$MediaType;

    .line 5
    new-instance v2, Lorg/webrtc/RtpTransceiver$RtpTransceiverInit;

    sget-object v3, Lorg/webrtc/RtpTransceiver$RtpTransceiverDirection;->INACTIVE:Lorg/webrtc/RtpTransceiver$RtpTransceiverDirection;

    invoke-direct {v2, v3}, Lorg/webrtc/RtpTransceiver$RtpTransceiverInit;-><init>(Lorg/webrtc/RtpTransceiver$RtpTransceiverDirection;)V

    .line 6
    invoke-virtual {v0, v1, v2}, Lorg/webrtc/PeerConnection;->addTransceiver(Lorg/webrtc/MediaStreamTrack$MediaType;Lorg/webrtc/RtpTransceiver$RtpTransceiverInit;)Lorg/webrtc/RtpTransceiver;

    .line 7
    :goto_1
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/push/WebRtcCamera;->c:Lorg/webrtc/PeerConnection;

    if-nez v0, :cond_2

    goto :goto_2

    .line 8
    :cond_2
    sget-object v1, Lorg/webrtc/MediaStreamTrack$MediaType;->MEDIA_TYPE_VIDEO:Lorg/webrtc/MediaStreamTrack$MediaType;

    .line 9
    new-instance v2, Lorg/webrtc/RtpTransceiver$RtpTransceiverInit;

    sget-object v3, Lorg/webrtc/RtpTransceiver$RtpTransceiverDirection;->RECV_ONLY:Lorg/webrtc/RtpTransceiver$RtpTransceiverDirection;

    invoke-direct {v2, v3}, Lorg/webrtc/RtpTransceiver$RtpTransceiverInit;-><init>(Lorg/webrtc/RtpTransceiver$RtpTransceiverDirection;)V

    .line 10
    invoke-virtual {v0, v1, v2}, Lorg/webrtc/PeerConnection;->addTransceiver(Lorg/webrtc/MediaStreamTrack$MediaType;Lorg/webrtc/RtpTransceiver$RtpTransceiverInit;)Lorg/webrtc/RtpTransceiver;

    .line 11
    :goto_2
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/push/WebRtcCamera;->c:Lorg/webrtc/PeerConnection;

    if-nez v0, :cond_3

    goto :goto_3

    :cond_3
    new-instance v1, Lorg/webrtc/MediaConstraints;

    invoke-direct {v1}, Lorg/webrtc/MediaConstraints;-><init>()V

    invoke-virtual {v0, p0, v1}, Lorg/webrtc/PeerConnection;->createOffer(Lorg/webrtc/SdpObserver;Lorg/webrtc/MediaConstraints;)V

    :goto_3
    return-void
.end method

.method private final K(Ljava/lang/String;)V
    .locals 6

    .line 1
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/push/WebRtcCamera;->g:Lkotlinx/coroutines/i0;

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    const/4 v2, 0x0

    new-instance v3, Lcn/mucang/android/jiakaoyi/teachingk2/push/WebRtcCamera$reconnect$1;

    const/4 v4, 0x0

    invoke-direct {v3, p0, p1, v4}, Lcn/mucang/android/jiakaoyi/teachingk2/push/WebRtcCamera$reconnect$1;-><init>(Lcn/mucang/android/jiakaoyi/teachingk2/push/WebRtcCamera;Ljava/lang/String;Lkotlin/coroutines/c;)V

    const/4 v4, 0x3

    const/4 v5, 0x0

    invoke-static/range {v0 .. v5}, Lkotlinx/coroutines/f;->b(Lkotlinx/coroutines/i0;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/b/p;ILjava/lang/Object;)Lkotlinx/coroutines/t1;

    :goto_0
    return-void
.end method

.method private final M(Ljava/lang/Boolean;)V
    .locals 2

    .line 1
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/push/WebRtcCamera;->m:Ljava/lang/Boolean;

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 2
    sget-object v0, Lcn/mucang/android/jiakaoyi/teachingk2/push/PusherStatusHelper;->a:Lcn/mucang/android/jiakaoyi/teachingk2/push/PusherStatusHelper;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcn/mucang/android/jiakaoyi/teachingk2/push/PusherStatusHelper;->a(I)V

    .line 3
    :cond_0
    iput-object p1, p0, Lcn/mucang/android/jiakaoyi/teachingk2/push/WebRtcCamera;->m:Ljava/lang/Boolean;

    return-void
.end method

.method private final N(Ljava/lang/String;)V
    .locals 2

    .line 1
    new-instance v0, Lorg/webrtc/SessionDescription;

    sget-object v1, Lorg/webrtc/SessionDescription$Type;->ANSWER:Lorg/webrtc/SessionDescription$Type;

    invoke-direct {v0, v1, p1}, Lorg/webrtc/SessionDescription;-><init>(Lorg/webrtc/SessionDescription$Type;Ljava/lang/String;)V

    .line 2
    iget-object p1, p0, Lcn/mucang/android/jiakaoyi/teachingk2/push/WebRtcCamera;->c:Lorg/webrtc/PeerConnection;

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p1, p0, v0}, Lorg/webrtc/PeerConnection;->setRemoteDescription(Lorg/webrtc/SdpObserver;Lorg/webrtc/SessionDescription;)V

    :goto_0
    return-void
.end method

.method private static final P(Lcn/mucang/android/jiakaoyi/teachingk2/push/WebRtcCamera;Lcn/mucang/android/jiakaoyi/signal/c/e;)V
    .locals 9

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "signal"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x3

    new-array v1, v0, [Lcn/mucang/android/jiakaoyi/signal/center/model/CheckModuleStatus;

    .line 1
    sget-object v2, Lcn/mucang/android/jiakaoyi/signal/center/model/CheckModuleStatus;->M_70001:Lcn/mucang/android/jiakaoyi/signal/center/model/CheckModuleStatus;

    const/4 v3, 0x0

    aput-object v2, v1, v3

    sget-object v2, Lcn/mucang/android/jiakaoyi/signal/center/model/CheckModuleStatus;->M_70003:Lcn/mucang/android/jiakaoyi/signal/center/model/CheckModuleStatus;

    const/4 v4, 0x1

    aput-object v2, v1, v4

    sget-object v2, Lcn/mucang/android/jiakaoyi/signal/center/model/CheckModuleStatus;->M_70004:Lcn/mucang/android/jiakaoyi/signal/center/model/CheckModuleStatus;

    const/4 v5, 0x2

    aput-object v2, v1, v5

    :goto_0
    if-ge v3, v0, :cond_4

    .line 2
    aget-object v2, v1, v3

    .line 3
    invoke-interface {p1}, Lcn/mucang/android/jiakaoyi/signal/c/e;->a()Lcn/mucang/android/jiakaoyi/signal/ai/a;

    move-result-object v6

    iget v6, v6, Lcn/mucang/android/jiakaoyi/signal/ai/a;->e:I

    invoke-virtual {v2, v6}, Lcn/mucang/android/jiakaoyi/signal/center/model/CheckModuleStatus;->checkPass(I)Z

    move-result v6

    .line 4
    iget-object v7, p0, Lcn/mucang/android/jiakaoyi/teachingk2/push/WebRtcCamera;->n:Ljava/util/Map;

    invoke-interface {v7, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v8

    invoke-static {v7, v8}, Lkotlin/jvm/internal/r;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_3

    .line 5
    iget-object v7, p0, Lcn/mucang/android/jiakaoyi/teachingk2/push/WebRtcCamera;->n:Ljava/util/Map;

    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v8

    invoke-interface {v7, v2, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    if-nez v6, :cond_3

    .line 6
    sget-object v6, Lcn/mucang/android/jiakaoyi/teachingk2/push/WebRtcCamera$b;->a:[I

    invoke-virtual {v2}, Ljava/lang/Enum;->ordinal()I

    move-result v2

    aget v2, v6, v2

    if-eq v2, v4, :cond_2

    if-eq v2, v5, :cond_1

    if-eq v2, v0, :cond_0

    goto :goto_1

    .line 7
    :cond_0
    sget-object v2, Lcn/mucang/android/jiakaoyi/teachingk2/push/PusherStatusHelper;->a:Lcn/mucang/android/jiakaoyi/teachingk2/push/PusherStatusHelper;

    invoke-virtual {v2, v0}, Lcn/mucang/android/jiakaoyi/teachingk2/push/PusherStatusHelper;->a(I)V

    goto :goto_1

    .line 8
    :cond_1
    sget-object v2, Lcn/mucang/android/jiakaoyi/teachingk2/push/PusherStatusHelper;->a:Lcn/mucang/android/jiakaoyi/teachingk2/push/PusherStatusHelper;

    invoke-virtual {v2, v5}, Lcn/mucang/android/jiakaoyi/teachingk2/push/PusherStatusHelper;->a(I)V

    goto :goto_1

    .line 9
    :cond_2
    sget-object v2, Lcn/mucang/android/jiakaoyi/teachingk2/push/PusherStatusHelper;->a:Lcn/mucang/android/jiakaoyi/teachingk2/push/PusherStatusHelper;

    invoke-virtual {v2, v4}, Lcn/mucang/android/jiakaoyi/teachingk2/push/PusherStatusHelper;->a(I)V

    :cond_3
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_4
    return-void
.end method

.method public static final synthetic a(Lcn/mucang/android/jiakaoyi/teachingk2/push/WebRtcCamera;Ljava/lang/String;Lkotlin/coroutines/c;)Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lcn/mucang/android/jiakaoyi/teachingk2/push/WebRtcCamera;->w(Ljava/lang/String;Lkotlin/coroutines/c;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic b(Lcn/mucang/android/jiakaoyi/teachingk2/push/WebRtcCamera;)Lorg/webrtc/PeerConnection;
    .locals 0

    .line 1
    iget-object p0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/push/WebRtcCamera;->c:Lorg/webrtc/PeerConnection;

    return-object p0
.end method

.method public static final synthetic c(Lcn/mucang/android/jiakaoyi/teachingk2/push/WebRtcCamera;)J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/push/WebRtcCamera;->l:J

    return-wide v0
.end method

.method public static final synthetic d(Lcn/mucang/android/jiakaoyi/teachingk2/push/WebRtcCamera;)Lkotlinx/coroutines/t1;
    .locals 0

    .line 1
    iget-object p0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/push/WebRtcCamera;->j:Lkotlinx/coroutines/t1;

    return-object p0
.end method

.method public static final synthetic e(Lcn/mucang/android/jiakaoyi/teachingk2/push/WebRtcCamera;)Lkotlinx/coroutines/i0;
    .locals 0

    .line 1
    iget-object p0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/push/WebRtcCamera;->g:Lkotlinx/coroutines/i0;

    return-object p0
.end method

.method public static final synthetic f(Lcn/mucang/android/jiakaoyi/teachingk2/push/WebRtcCamera;)Lcn/mucang/android/jiakaoyi/teachingk2/push/n0;
    .locals 0

    .line 1
    iget-object p0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/push/WebRtcCamera;->e:Lcn/mucang/android/jiakaoyi/teachingk2/push/n0;

    return-object p0
.end method

.method public static final synthetic g(Lcn/mucang/android/jiakaoyi/teachingk2/push/WebRtcCamera;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/push/WebRtcCamera;->f:Z

    return p0
.end method

.method public static final synthetic h(Lcn/mucang/android/jiakaoyi/teachingk2/push/WebRtcCamera;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcn/mucang/android/jiakaoyi/teachingk2/push/WebRtcCamera;->J()V

    return-void
.end method

.method public static final synthetic i(Lcn/mucang/android/jiakaoyi/teachingk2/push/WebRtcCamera;Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcn/mucang/android/jiakaoyi/teachingk2/push/WebRtcCamera;->f:Z

    return-void
.end method

.method public static final synthetic j(Lcn/mucang/android/jiakaoyi/teachingk2/push/WebRtcCamera;J)V
    .locals 0

    .line 1
    iput-wide p1, p0, Lcn/mucang/android/jiakaoyi/teachingk2/push/WebRtcCamera;->l:J

    return-void
.end method

.method public static final synthetic k(Lcn/mucang/android/jiakaoyi/teachingk2/push/WebRtcCamera;Ljava/lang/Boolean;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcn/mucang/android/jiakaoyi/teachingk2/push/WebRtcCamera;->M(Ljava/lang/Boolean;)V

    return-void
.end method

.method public static final synthetic l(Lcn/mucang/android/jiakaoyi/teachingk2/push/WebRtcCamera;Lkotlinx/coroutines/t1;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcn/mucang/android/jiakaoyi/teachingk2/push/WebRtcCamera;->j:Lkotlinx/coroutines/t1;

    return-void
.end method

.method public static final synthetic m(Lcn/mucang/android/jiakaoyi/teachingk2/push/WebRtcCamera;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcn/mucang/android/jiakaoyi/teachingk2/push/WebRtcCamera;->N(Ljava/lang/String;)V

    return-void
.end method

.method private static final r(Lcn/mucang/android/jiakaoyi/teachingk2/push/WebRtcCamera;)Lkotlin/v;
    .locals 1

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object p0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/push/WebRtcCamera;->a:Lorg/webrtc/EglBase;

    if-nez p0, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    :cond_0
    invoke-interface {p0}, Lorg/webrtc/EglBase;->release()V

    sget-object p0, Lkotlin/v;->a:Lkotlin/v;

    :goto_0
    return-object p0
.end method

.method private static final s(Lcn/mucang/android/jiakaoyi/teachingk2/push/WebRtcCamera;)V
    .locals 1

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/push/WebRtcCamera;->d:Lorg/webrtc/PeerConnectionFactory;

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Lorg/webrtc/PeerConnectionFactory;->dispose()V

    :goto_0
    const/4 v0, 0x0

    .line 2
    iput-object v0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/push/WebRtcCamera;->d:Lorg/webrtc/PeerConnectionFactory;

    return-void
.end method

.method public static synthetic u(Lcn/mucang/android/jiakaoyi/teachingk2/push/WebRtcCamera;ZILjava/lang/Object;)V
    .locals 0

    and-int/lit8 p2, p2, 0x1

    if-eqz p2, :cond_0

    const/4 p1, 0x0

    .line 1
    :cond_0
    invoke-virtual {p0, p1}, Lcn/mucang/android/jiakaoyi/teachingk2/push/WebRtcCamera;->t(Z)V

    return-void
.end method

.method private static final v(Lcn/mucang/android/jiakaoyi/teachingk2/push/WebRtcCamera;)V
    .locals 3

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/push/WebRtcCamera;->c:Lorg/webrtc/PeerConnection;

    if-nez v0, :cond_0

    goto :goto_1

    :cond_0
    invoke-virtual {v0}, Lorg/webrtc/PeerConnection;->getReceivers()Ljava/util/List;

    move-result-object v0

    if-nez v0, :cond_1

    goto :goto_1

    .line 2
    :cond_1
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_2
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/webrtc/RtpReceiver;

    .line 3
    invoke-virtual {v1}, Lorg/webrtc/RtpReceiver;->track()Lorg/webrtc/MediaStreamTrack;

    move-result-object v2

    instance-of v2, v2, Lorg/webrtc/VideoTrack;

    if-eqz v2, :cond_2

    .line 4
    invoke-virtual {v1}, Lorg/webrtc/RtpReceiver;->track()Lorg/webrtc/MediaStreamTrack;

    move-result-object v1

    const-string v2, "null cannot be cast to non-null type org.webrtc.VideoTrack"

    invoke-static {v1, v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    check-cast v1, Lorg/webrtc/VideoTrack;

    iget-object v2, p0, Lcn/mucang/android/jiakaoyi/teachingk2/push/WebRtcCamera;->e:Lcn/mucang/android/jiakaoyi/teachingk2/push/n0;

    invoke-virtual {v1, v2}, Lorg/webrtc/VideoTrack;->removeSink(Lorg/webrtc/VideoSink;)V

    goto :goto_0

    .line 5
    :cond_3
    :goto_1
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/push/WebRtcCamera;->c:Lorg/webrtc/PeerConnection;

    if-nez v0, :cond_4

    goto :goto_2

    :cond_4
    invoke-virtual {v0}, Lorg/webrtc/PeerConnection;->close()V

    .line 6
    :goto_2
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/push/WebRtcCamera;->c:Lorg/webrtc/PeerConnection;

    if-nez v0, :cond_5

    goto :goto_3

    :cond_5
    invoke-virtual {v0}, Lorg/webrtc/PeerConnection;->dispose()V

    :goto_3
    const/4 v0, 0x0

    .line 7
    iput-object v0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/push/WebRtcCamera;->c:Lorg/webrtc/PeerConnection;

    const-string p0, "rtc\u64ad\u653e\u5668\u8fde\u63a5\u65ad\u5f00"

    .line 8
    invoke-static {p0}, Lcn/mucang/android/jiakaoyi/framework/log/f;->o(Ljava/lang/Object;)V

    return-void
.end method

.method private final w(Ljava/lang/String;Lkotlin/coroutines/c;)Ljava/lang/Object;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lkotlin/coroutines/c<",
            "-",
            "Lkotlin/v;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    instance-of v0, p2, Lcn/mucang/android/jiakaoyi/teachingk2/push/WebRtcCamera$failPlayUrl$1;

    if-eqz v0, :cond_0

    move-object v0, p2

    check-cast v0, Lcn/mucang/android/jiakaoyi/teachingk2/push/WebRtcCamera$failPlayUrl$1;

    iget v1, v0, Lcn/mucang/android/jiakaoyi/teachingk2/push/WebRtcCamera$failPlayUrl$1;->label:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_0

    sub-int/2addr v1, v2

    iput v1, v0, Lcn/mucang/android/jiakaoyi/teachingk2/push/WebRtcCamera$failPlayUrl$1;->label:I

    goto :goto_0

    :cond_0
    new-instance v0, Lcn/mucang/android/jiakaoyi/teachingk2/push/WebRtcCamera$failPlayUrl$1;

    invoke-direct {v0, p0, p2}, Lcn/mucang/android/jiakaoyi/teachingk2/push/WebRtcCamera$failPlayUrl$1;-><init>(Lcn/mucang/android/jiakaoyi/teachingk2/push/WebRtcCamera;Lkotlin/coroutines/c;)V

    :goto_0
    iget-object p2, v0, Lcn/mucang/android/jiakaoyi/teachingk2/push/WebRtcCamera$failPlayUrl$1;->result:Ljava/lang/Object;

    invoke-static {}, Lkotlin/coroutines/intrinsics/a;->d()Ljava/lang/Object;

    move-result-object v1

    .line 1
    iget v2, v0, Lcn/mucang/android/jiakaoyi/teachingk2/push/WebRtcCamera$failPlayUrl$1;->label:I

    const/4 v3, 0x1

    if-eqz v2, :cond_2

    if-ne v2, v3, :cond_1

    iget-object p1, v0, Lcn/mucang/android/jiakaoyi/teachingk2/push/WebRtcCamera$failPlayUrl$1;->L$1:Ljava/lang/Object;

    check-cast p1, Ljava/lang/String;

    iget-object v0, v0, Lcn/mucang/android/jiakaoyi/teachingk2/push/WebRtcCamera$failPlayUrl$1;->L$0:Ljava/lang/Object;

    check-cast v0, Lcn/mucang/android/jiakaoyi/teachingk2/push/WebRtcCamera;

    invoke-static {p2}, Lkotlin/k;->b(Ljava/lang/Object;)V

    goto :goto_1

    .line 2
    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 3
    :cond_2
    invoke-static {p2}, Lkotlin/k;->b(Ljava/lang/Object;)V

    .line 4
    iget-boolean p2, p0, Lcn/mucang/android/jiakaoyi/teachingk2/push/WebRtcCamera;->f:Z

    if-nez p2, :cond_4

    const-string p2, "WebRtcCamera"

    const-string v2, "\u5c1d\u8bd5\u91cd\u65b0\u83b7\u53d6Ai\u76d2\u5b50playUrl"

    .line 5
    invoke-static {p2, v2}, Lcn/mucang/android/core/utils/t;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-wide/16 v4, 0x1388

    .line 6
    iput-object p0, v0, Lcn/mucang/android/jiakaoyi/teachingk2/push/WebRtcCamera$failPlayUrl$1;->L$0:Ljava/lang/Object;

    iput-object p1, v0, Lcn/mucang/android/jiakaoyi/teachingk2/push/WebRtcCamera$failPlayUrl$1;->L$1:Ljava/lang/Object;

    iput v3, v0, Lcn/mucang/android/jiakaoyi/teachingk2/push/WebRtcCamera$failPlayUrl$1;->label:I

    invoke-static {v4, v5, v0}, Lkotlinx/coroutines/s0;->a(JLkotlin/coroutines/c;)Ljava/lang/Object;

    move-result-object p2

    if-ne p2, v1, :cond_3

    return-object v1

    :cond_3
    move-object v0, p0

    .line 7
    :goto_1
    invoke-direct {v0, p1}, Lcn/mucang/android/jiakaoyi/teachingk2/push/WebRtcCamera;->I(Ljava/lang/String;)V

    goto :goto_2

    :cond_4
    move-object v0, p0

    :goto_2
    const/4 p1, 0x0

    .line 8
    invoke-static {p1}, Lkotlin/coroutines/jvm/internal/a;->a(Z)Ljava/lang/Boolean;

    move-result-object p2

    invoke-direct {v0, p2}, Lcn/mucang/android/jiakaoyi/teachingk2/push/WebRtcCamera;->M(Ljava/lang/Boolean;)V

    .line 9
    iput-boolean p1, v0, Lcn/mucang/android/jiakaoyi/teachingk2/push/WebRtcCamera;->f:Z

    .line 10
    sget-object p1, Lkotlin/v;->a:Lkotlin/v;

    return-object p1
.end method

.method private final x()Lorg/webrtc/PeerConnection$RTCConfiguration;
    .locals 2

    .line 1
    new-instance v0, Lorg/webrtc/PeerConnection$RTCConfiguration;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-direct {v0, v1}, Lorg/webrtc/PeerConnection$RTCConfiguration;-><init>(Ljava/util/List;)V

    .line 2
    sget-object v1, Lorg/webrtc/PeerConnection$TcpCandidatePolicy;->ENABLED:Lorg/webrtc/PeerConnection$TcpCandidatePolicy;

    iput-object v1, v0, Lorg/webrtc/PeerConnection$RTCConfiguration;->tcpCandidatePolicy:Lorg/webrtc/PeerConnection$TcpCandidatePolicy;

    .line 3
    sget-object v1, Lorg/webrtc/PeerConnection$BundlePolicy;->MAXBUNDLE:Lorg/webrtc/PeerConnection$BundlePolicy;

    iput-object v1, v0, Lorg/webrtc/PeerConnection$RTCConfiguration;->bundlePolicy:Lorg/webrtc/PeerConnection$BundlePolicy;

    .line 4
    sget-object v1, Lorg/webrtc/PeerConnection$RtcpMuxPolicy;->NEGOTIATE:Lorg/webrtc/PeerConnection$RtcpMuxPolicy;

    iput-object v1, v0, Lorg/webrtc/PeerConnection$RTCConfiguration;->rtcpMuxPolicy:Lorg/webrtc/PeerConnection$RtcpMuxPolicy;

    .line 5
    sget-object v1, Lorg/webrtc/PeerConnection$ContinualGatheringPolicy;->GATHER_CONTINUALLY:Lorg/webrtc/PeerConnection$ContinualGatheringPolicy;

    iput-object v1, v0, Lorg/webrtc/PeerConnection$RTCConfiguration;->continualGatheringPolicy:Lorg/webrtc/PeerConnection$ContinualGatheringPolicy;

    .line 6
    sget-object v1, Lorg/webrtc/PeerConnection$KeyType;->ECDSA:Lorg/webrtc/PeerConnection$KeyType;

    iput-object v1, v0, Lorg/webrtc/PeerConnection$RTCConfiguration;->keyType:Lorg/webrtc/PeerConnection$KeyType;

    .line 7
    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    iput-object v1, v0, Lorg/webrtc/PeerConnection$RTCConfiguration;->enableDtlsSrtp:Ljava/lang/Boolean;

    const/4 v1, 0x0

    .line 8
    iput-boolean v1, v0, Lorg/webrtc/PeerConnection$RTCConfiguration;->enableCpuOveruseDetection:Z

    .line 9
    sget-object v1, Lorg/webrtc/PeerConnection$SdpSemantics;->UNIFIED_PLAN:Lorg/webrtc/PeerConnection$SdpSemantics;

    iput-object v1, v0, Lorg/webrtc/PeerConnection$RTCConfiguration;->sdpSemantics:Lorg/webrtc/PeerConnection$SdpSemantics;

    return-object v0
.end method

.method private final y(Landroid/content/Context;)Lorg/webrtc/PeerConnectionFactory;
    .locals 7

    .line 1
    invoke-static {p1}, Lorg/webrtc/PeerConnectionFactory$InitializationOptions;->builder(Landroid/content/Context;)Lorg/webrtc/PeerConnectionFactory$InitializationOptions$Builder;

    move-result-object v0

    const/4 v1, 0x1

    .line 2
    invoke-virtual {v0, v1}, Lorg/webrtc/PeerConnectionFactory$InitializationOptions$Builder;->setEnableInternalTracer(Z)Lorg/webrtc/PeerConnectionFactory$InitializationOptions$Builder;

    move-result-object v0

    const-string v2, "WebRTC-H264HighProfile/Enabled/"

    .line 3
    invoke-virtual {v0, v2}, Lorg/webrtc/PeerConnectionFactory$InitializationOptions$Builder;->setFieldTrials(Ljava/lang/String;)Lorg/webrtc/PeerConnectionFactory$InitializationOptions$Builder;

    move-result-object v0

    .line 4
    invoke-virtual {v0}, Lorg/webrtc/PeerConnectionFactory$InitializationOptions$Builder;->createInitializationOptions()Lorg/webrtc/PeerConnectionFactory$InitializationOptions;

    move-result-object v0

    .line 5
    invoke-static {v0}, Lorg/webrtc/PeerConnectionFactory;->initialize(Lorg/webrtc/PeerConnectionFactory$InitializationOptions;)V

    .line 6
    new-instance v0, Lorg/webrtc/DefaultVideoEncoderFactory;

    .line 7
    iget-object v2, p0, Lcn/mucang/android/jiakaoyi/teachingk2/push/WebRtcCamera;->a:Lorg/webrtc/EglBase;

    invoke-static {v2}, Lkotlin/jvm/internal/r;->c(Ljava/lang/Object;)V

    invoke-interface {v2}, Lorg/webrtc/EglBase;->getEglBaseContext()Lorg/webrtc/EglBase$Context;

    move-result-object v2

    const/4 v3, 0x0

    .line 8
    invoke-direct {v0, v2, v3, v1}, Lorg/webrtc/DefaultVideoEncoderFactory;-><init>(Lorg/webrtc/EglBase$Context;ZZ)V

    .line 9
    :try_start_0
    sget-object v2, Lkotlin/Result;->Companion:Lkotlin/Result$a;

    .line 10
    new-instance v2, Lcn/mucang/android/jiakaoyi/teachingk2/push/m0;

    iget-object v4, p0, Lcn/mucang/android/jiakaoyi/teachingk2/push/WebRtcCamera;->a:Lorg/webrtc/EglBase;

    invoke-static {v4}, Lkotlin/jvm/internal/r;->c(Ljava/lang/Object;)V

    invoke-interface {v4}, Lorg/webrtc/EglBase;->getEglBaseContext()Lorg/webrtc/EglBase$Context;

    move-result-object v4

    invoke-direct {v2, v4}, Lcn/mucang/android/jiakaoyi/teachingk2/push/m0;-><init>(Lorg/webrtc/EglBase$Context;)V

    const-class v4, Lorg/webrtc/DefaultVideoDecoderFactory;

    new-array v5, v1, [Ljava/lang/Class;

    .line 11
    const-class v6, Lorg/webrtc/VideoDecoderFactory;

    aput-object v6, v5, v3

    invoke-virtual {v4, v5}, Ljava/lang/Class;->getDeclaredConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v4

    .line 12
    invoke-virtual {v4, v1}, Ljava/lang/reflect/Constructor;->setAccessible(Z)V

    new-array v1, v1, [Ljava/lang/Object;

    aput-object v2, v1, v3

    .line 13
    invoke-virtual {v4, v1}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/webrtc/DefaultVideoDecoderFactory;

    .line 14
    invoke-virtual {v4, v3}, Ljava/lang/reflect/Constructor;->setAccessible(Z)V

    .line 15
    invoke-static {v1}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v1

    sget-object v2, Lkotlin/Result;->Companion:Lkotlin/Result$a;

    invoke-static {v1}, Lkotlin/k;->a(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 16
    :goto_0
    invoke-static {v1}, Lkotlin/Result;->exceptionOrNull-impl(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 17
    invoke-virtual {v2}, Ljava/lang/Throwable;->printStackTrace()V

    .line 18
    :cond_0
    invoke-static {v1}, Lkotlin/Result;->isFailure-impl(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    const/4 v1, 0x0

    :cond_1
    check-cast v1, Lorg/webrtc/DefaultVideoDecoderFactory;

    const-string v2, "defaultVideoDecoderFactory:"

    .line 19
    invoke-static {v2, v1}, Lkotlin/jvm/internal/r;->m(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcn/mucang/android/jiakaoyi/framework/log/f;->o(Ljava/lang/Object;)V

    if-nez v1, :cond_2

    .line 20
    new-instance v1, Lorg/webrtc/DefaultVideoDecoderFactory;

    iget-object v2, p0, Lcn/mucang/android/jiakaoyi/teachingk2/push/WebRtcCamera;->a:Lorg/webrtc/EglBase;

    invoke-static {v2}, Lkotlin/jvm/internal/r;->c(Ljava/lang/Object;)V

    invoke-interface {v2}, Lorg/webrtc/EglBase;->getEglBaseContext()Lorg/webrtc/EglBase$Context;

    move-result-object v2

    invoke-direct {v1, v2}, Lorg/webrtc/DefaultVideoDecoderFactory;-><init>(Lorg/webrtc/EglBase$Context;)V

    .line 21
    :cond_2
    invoke-static {p1}, Lorg/webrtc/PeerConnectionFactory$InitializationOptions;->builder(Landroid/content/Context;)Lorg/webrtc/PeerConnectionFactory$InitializationOptions$Builder;

    move-result-object v2

    .line 22
    invoke-virtual {v2}, Lorg/webrtc/PeerConnectionFactory$InitializationOptions$Builder;->createInitializationOptions()Lorg/webrtc/PeerConnectionFactory$InitializationOptions;

    move-result-object v2

    .line 23
    invoke-static {v2}, Lorg/webrtc/PeerConnectionFactory;->initialize(Lorg/webrtc/PeerConnectionFactory$InitializationOptions;)V

    .line 24
    invoke-static {}, Lorg/webrtc/PeerConnectionFactory;->builder()Lorg/webrtc/PeerConnectionFactory$Builder;

    move-result-object v2

    .line 25
    new-instance v3, Lorg/webrtc/PeerConnectionFactory$Options;

    invoke-direct {v3}, Lorg/webrtc/PeerConnectionFactory$Options;-><init>()V

    invoke-virtual {v2, v3}, Lorg/webrtc/PeerConnectionFactory$Builder;->setOptions(Lorg/webrtc/PeerConnectionFactory$Options;)Lorg/webrtc/PeerConnectionFactory$Builder;

    move-result-object v2

    .line 26
    invoke-static {p1}, Lorg/webrtc/audio/JavaAudioDeviceModule;->builder(Landroid/content/Context;)Lorg/webrtc/audio/JavaAudioDeviceModule$Builder;

    move-result-object p1

    invoke-virtual {p1}, Lorg/webrtc/audio/JavaAudioDeviceModule$Builder;->createAudioDeviceModule()Lorg/webrtc/audio/JavaAudioDeviceModule;

    move-result-object p1

    invoke-virtual {v2, p1}, Lorg/webrtc/PeerConnectionFactory$Builder;->setAudioDeviceModule(Lorg/webrtc/audio/AudioDeviceModule;)Lorg/webrtc/PeerConnectionFactory$Builder;

    move-result-object p1

    .line 27
    invoke-virtual {p1, v0}, Lorg/webrtc/PeerConnectionFactory$Builder;->setVideoEncoderFactory(Lorg/webrtc/VideoEncoderFactory;)Lorg/webrtc/PeerConnectionFactory$Builder;

    move-result-object p1

    .line 28
    invoke-virtual {p1, v1}, Lorg/webrtc/PeerConnectionFactory$Builder;->setVideoDecoderFactory(Lorg/webrtc/VideoDecoderFactory;)Lorg/webrtc/PeerConnectionFactory$Builder;

    move-result-object p1

    .line 29
    invoke-virtual {p1}, Lorg/webrtc/PeerConnectionFactory$Builder;->createPeerConnectionFactory()Lorg/webrtc/PeerConnectionFactory;

    move-result-object p1

    const-string v0, "builder()\n            .s\u2026tePeerConnectionFactory()"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->d(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p1
.end method


# virtual methods
.method public final A()Lorg/webrtc/VideoSink;
    .locals 1

    .line 1
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/push/WebRtcCamera;->e:Lcn/mucang/android/jiakaoyi/teachingk2/push/n0;

    invoke-virtual {v0}, Lcn/mucang/android/jiakaoyi/teachingk2/push/n0;->c()Lorg/webrtc/VideoSink;

    move-result-object v0

    return-object v0
.end method

.method public final B()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/push/WebRtcCamera;->e:Lcn/mucang/android/jiakaoyi/teachingk2/push/n0;

    invoke-virtual {v0}, Lcn/mucang/android/jiakaoyi/teachingk2/push/n0;->d()Z

    move-result v0

    return v0
.end method

.method public final C()V
    .locals 4

    .line 1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/push/WebRtcCamera;->p:J

    .line 2
    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "WebRtcThread"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/push/WebRtcCamera;->h:Landroid/os/HandlerThread;

    if-nez v0, :cond_0

    goto :goto_0

    .line 3
    :cond_0
    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 4
    :goto_0
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/push/WebRtcCamera;->h:Landroid/os/HandlerThread;

    const/4 v1, 0x0

    if-nez v0, :cond_1

    goto :goto_1

    :cond_1
    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v0

    if-nez v0, :cond_2

    goto :goto_1

    :cond_2
    new-instance v2, Landroid/os/Handler;

    invoke-direct {v2, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    const/4 v0, 0x1

    invoke-static {v2, v1, v0, v1}, Lkotlinx/coroutines/android/b;->c(Landroid/os/Handler;Ljava/lang/String;ILjava/lang/Object;)Lkotlinx/coroutines/android/a;

    move-result-object v1

    :goto_1
    iput-object v1, p0, Lcn/mucang/android/jiakaoyi/teachingk2/push/WebRtcCamera;->i:Lkotlinx/coroutines/CoroutineDispatcher;

    .line 5
    invoke-static {}, Lorg/webrtc/o0;->b()Lorg/webrtc/EglBase;

    move-result-object v0

    iput-object v0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/push/WebRtcCamera;->a:Lorg/webrtc/EglBase;

    .line 6
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "webrtc://"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Lcn/mucang/android/jiakaoyi/teachingk2/push/WebRtcCamera;->q:Lcn/mucang/android/jiakaoyi/teachingk2/push/WebRtcCamera$a;

    invoke-static {v1}, Lcn/mucang/android/jiakaoyi/teachingk2/push/WebRtcCamera$a;->a(Lcn/mucang/android/jiakaoyi/teachingk2/push/WebRtcCamera$a;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "/live/livestream"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/push/WebRtcCamera;->b:Ljava/lang/String;

    .line 7
    invoke-static {}, Lcn/mucang/android/core/config/MucangConfig;->getContext()Landroid/app/Application;

    move-result-object v0

    const-string v1, "getContext()"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/r;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, v0}, Lcn/mucang/android/jiakaoyi/teachingk2/push/WebRtcCamera;->y(Landroid/content/Context;)Lorg/webrtc/PeerConnectionFactory;

    move-result-object v0

    iput-object v0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/push/WebRtcCamera;->d:Lorg/webrtc/PeerConnectionFactory;

    .line 8
    sget-object v0, Lorg/webrtc/Logging$Severity;->LS_ERROR:Lorg/webrtc/Logging$Severity;

    invoke-static {v0}, Lorg/webrtc/Logging;->enableLogToDebugOutput(Lorg/webrtc/Logging$Severity;)V

    .line 9
    sget-object v0, Lcn/mucang/android/jiakaoyi/signal/c/d;->m:Lcn/mucang/android/jiakaoyi/signal/c/d;

    iget-object v1, p0, Lcn/mucang/android/jiakaoyi/teachingk2/push/WebRtcCamera;->o:Lcn/mucang/android/jiakaoyi/signal/c/f/a;

    invoke-virtual {v0, v1}, Lcn/mucang/android/jiakaoyi/signal/c/d;->b(Lcn/mucang/android/jiakaoyi/signal/c/f/a;)V

    .line 10
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcn/mucang/android/jiakaoyi/teachingk2/push/WebRtcCamera;->p:J

    sub-long/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    const-string v1, "time:"

    invoke-static {v1, v0}, Lkotlin/jvm/internal/r;->m(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "www"

    invoke-static {v1, v0}, Lcn/mucang/android/core/utils/t;->h(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public final D()Z
    .locals 2

    .line 1
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/push/WebRtcCamera;->m:Ljava/lang/Boolean;

    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-static {v0, v1}, Lkotlin/jvm/internal/r;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public final L(Lcn/mucang/android/jiakaoyi/framework/camera/c;)V
    .locals 1

    const-string v0, "frameCallback"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/push/WebRtcCamera;->e:Lcn/mucang/android/jiakaoyi/teachingk2/push/n0;

    invoke-virtual {v0, p1}, Lcn/mucang/android/jiakaoyi/teachingk2/push/n0;->g(Lcn/mucang/android/jiakaoyi/framework/camera/c;)V

    return-void
.end method

.method public final O(Lorg/webrtc/VideoSink;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/push/WebRtcCamera;->e:Lcn/mucang/android/jiakaoyi/teachingk2/push/n0;

    invoke-virtual {v0, p1}, Lcn/mucang/android/jiakaoyi/teachingk2/push/n0;->h(Lorg/webrtc/VideoSink;)V

    return-void
.end method

.method public final Q()V
    .locals 1

    const-string v0, "\u5916\u90e8\u8c03\u7528\u91cd\u8fde"

    .line 1
    invoke-direct {p0, v0}, Lcn/mucang/android/jiakaoyi/teachingk2/push/WebRtcCamera;->K(Ljava/lang/String;)V

    return-void
.end method

.method public final n(Lcn/mucang/android/jiakaoyi/framework/camera/c;)V
    .locals 1

    const-string v0, "frameCallback"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/push/WebRtcCamera;->e:Lcn/mucang/android/jiakaoyi/teachingk2/push/n0;

    invoke-virtual {v0, p1}, Lcn/mucang/android/jiakaoyi/teachingk2/push/n0;->a(Lcn/mucang/android/jiakaoyi/framework/camera/c;)V

    return-void
.end method

.method public final o()V
    .locals 8

    .line 1
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/push/WebRtcCamera;->g:Lkotlinx/coroutines/i0;

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-static {v0}, Lkotlinx/coroutines/j0;->g(Lkotlinx/coroutines/i0;)Z

    move-result v0

    if-ne v0, v2, :cond_1

    const/4 v1, 0x1

    :cond_1
    :goto_0
    if-eqz v1, :cond_2

    const-string v0, "rtc\u64ad\u653e\u5668\u5df2\u8fde\u63a5\uff0c\u76f4\u63a5\u8fd4\u56de"

    .line 2
    invoke-static {v0}, Lcn/mucang/android/jiakaoyi/framework/log/f;->o(Ljava/lang/Object;)V

    return-void

    .line 3
    :cond_2
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/push/WebRtcCamera;->i:Lkotlinx/coroutines/CoroutineDispatcher;

    const/4 v1, 0x0

    if-nez v0, :cond_3

    move-object v2, v1

    goto :goto_1

    :cond_3
    invoke-static {v1, v2, v1}, Lkotlinx/coroutines/p2;->b(Lkotlinx/coroutines/t1;ILjava/lang/Object;)Lkotlinx/coroutines/w;

    move-result-object v2

    invoke-interface {v2, v0}, Lkotlin/coroutines/CoroutineContext;->plus(Lkotlin/coroutines/CoroutineContext;)Lkotlin/coroutines/CoroutineContext;

    move-result-object v0

    invoke-static {v0}, Lkotlinx/coroutines/j0;->a(Lkotlin/coroutines/CoroutineContext;)Lkotlinx/coroutines/i0;

    move-result-object v0

    move-object v2, v0

    :goto_1
    iput-object v2, p0, Lcn/mucang/android/jiakaoyi/teachingk2/push/WebRtcCamera;->g:Lkotlinx/coroutines/i0;

    if-nez v2, :cond_4

    goto :goto_2

    :cond_4
    const/4 v3, 0x0

    const/4 v4, 0x0

    .line 4
    new-instance v5, Lcn/mucang/android/jiakaoyi/teachingk2/push/WebRtcCamera$connect$2;

    invoke-direct {v5, p0, v1}, Lcn/mucang/android/jiakaoyi/teachingk2/push/WebRtcCamera$connect$2;-><init>(Lcn/mucang/android/jiakaoyi/teachingk2/push/WebRtcCamera;Lkotlin/coroutines/c;)V

    const/4 v6, 0x3

    const/4 v7, 0x0

    invoke-static/range {v2 .. v7}, Lkotlinx/coroutines/f;->b(Lkotlinx/coroutines/i0;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/b/p;ILjava/lang/Object;)Lkotlinx/coroutines/t1;

    :goto_2
    return-void
.end method

.method public onAddStream(Lorg/webrtc/MediaStream;)V
    .locals 1

    const-string v0, "stream"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method public onAddTrack(Lorg/webrtc/RtpReceiver;[Lorg/webrtc/MediaStream;)V
    .locals 1

    const-string v0, "receiver"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "mediaStreams"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-virtual {p1}, Lorg/webrtc/RtpReceiver;->track()Lorg/webrtc/MediaStreamTrack;

    move-result-object p1

    .line 2
    instance-of p2, p1, Lorg/webrtc/VideoTrack;

    if-eqz p2, :cond_0

    .line 3
    check-cast p1, Lorg/webrtc/VideoTrack;

    const/4 p2, 0x1

    invoke-virtual {p1, p2}, Lorg/webrtc/MediaStreamTrack;->setEnabled(Z)Z

    .line 4
    sget-object p2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-direct {p0, p2}, Lcn/mucang/android/jiakaoyi/teachingk2/push/WebRtcCamera;->M(Ljava/lang/Boolean;)V

    const-string p2, "WebRtcCamera"

    const-string v0, "\u6536\u5230\u89c6\u9891\u6d41\uff0c\u5f00\u59cb\u53d1\u6d41"

    .line 5
    invoke-static {p2, v0}, Lcn/mucang/android/core/utils/t;->h(Ljava/lang/String;Ljava/lang/String;)I

    .line 6
    invoke-static {v0}, Lcn/mucang/android/jiakaoyi/framework/log/f;->o(Ljava/lang/Object;)V

    .line 7
    iget-object p2, p0, Lcn/mucang/android/jiakaoyi/teachingk2/push/WebRtcCamera;->e:Lcn/mucang/android/jiakaoyi/teachingk2/push/n0;

    invoke-virtual {p1, p2}, Lorg/webrtc/VideoTrack;->addSink(Lorg/webrtc/VideoSink;)V

    :cond_0
    return-void
.end method

.method public synthetic onConnectionChange(Lorg/webrtc/PeerConnection$PeerConnectionState;)V
    .locals 0

    invoke-static {p0, p1}, Lorg/webrtc/p0;->$default$onConnectionChange(Lorg/webrtc/PeerConnection$Observer;Lorg/webrtc/PeerConnection$PeerConnectionState;)V

    return-void
.end method

.method public onCreateFailure(Ljava/lang/String;)V
    .locals 1

    const-string v0, "error"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method public onCreateSuccess(Lorg/webrtc/SessionDescription;)V
    .locals 2

    const-string v0, "sdp"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v0, p1, Lorg/webrtc/SessionDescription;->type:Lorg/webrtc/SessionDescription$Type;

    if-nez v0, :cond_0

    const/4 v0, -0x1

    goto :goto_0

    :cond_0
    sget-object v1, Lcn/mucang/android/jiakaoyi/teachingk2/push/WebRtcCamera$b;->b:[I

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    aget v0, v1, v0

    :goto_0
    const/4 v1, 0x1

    if-ne v0, v1, :cond_2

    .line 2
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/push/WebRtcCamera;->c:Lorg/webrtc/PeerConnection;

    if-nez v0, :cond_1

    goto :goto_1

    :cond_1
    invoke-virtual {v0, p0, p1}, Lorg/webrtc/PeerConnection;->setLocalDescription(Lorg/webrtc/SdpObserver;Lorg/webrtc/SessionDescription;)V

    .line 3
    :goto_1
    iget-object v0, p1, Lorg/webrtc/SessionDescription;->description:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    const-string v0, "WebRtcCamera"

    const-string v1, "\u521b\u5efaoffer\u6210\u529f\uff0c\u51c6\u5907\u8bf7\u6c42\u64ad\u653e\u5730\u5740"

    .line 4
    invoke-static {v0, v1}, Lcn/mucang/android/core/utils/t;->h(Ljava/lang/String;Ljava/lang/String;)I

    .line 5
    invoke-static {v1}, Lcn/mucang/android/jiakaoyi/framework/log/f;->o(Ljava/lang/Object;)V

    .line 6
    iget-object p1, p1, Lorg/webrtc/SessionDescription;->description:Ljava/lang/String;

    invoke-direct {p0, p1}, Lcn/mucang/android/jiakaoyi/teachingk2/push/WebRtcCamera;->I(Ljava/lang/String;)V

    :cond_2
    return-void
.end method

.method public onDataChannel(Lorg/webrtc/DataChannel;)V
    .locals 1

    const-string v0, "dataChannel"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method public onIceCandidate(Lorg/webrtc/IceCandidate;)V
    .locals 1

    const-string v0, "candidate"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/push/WebRtcCamera;->c:Lorg/webrtc/PeerConnection;

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {v0, p1}, Lorg/webrtc/PeerConnection;->addIceCandidate(Lorg/webrtc/IceCandidate;)Z

    :goto_0
    return-void
.end method

.method public onIceCandidatesRemoved([Lorg/webrtc/IceCandidate;)V
    .locals 1

    const-string v0, "candidates"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/push/WebRtcCamera;->c:Lorg/webrtc/PeerConnection;

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {v0, p1}, Lorg/webrtc/PeerConnection;->removeIceCandidates([Lorg/webrtc/IceCandidate;)Z

    :goto_0
    return-void
.end method

.method public onIceConnectionChange(Lorg/webrtc/PeerConnection$IceConnectionState;)V
    .locals 4

    const-string v0, "newState"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    sget-object v0, Lcn/mucang/android/jiakaoyi/teachingk2/push/WebRtcCamera$b;->c:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const-string v1, "WebRtcCamera"

    const/4 v2, 0x1

    if-eq v0, v2, :cond_2

    const/4 v3, 0x2

    if-eq v0, v3, :cond_2

    const/4 v3, 0x3

    if-eq v0, v3, :cond_2

    const/4 v3, 0x4

    if-eq v0, v3, :cond_0

    goto :goto_0

    :cond_0
    const-string v0, "ICE\u8fde\u63a5\u6210\u529f"

    .line 2
    invoke-static {v1, v0}, Lcn/mucang/android/core/utils/t;->h(Ljava/lang/String;Ljava/lang/String;)I

    .line 3
    invoke-static {v0}, Lcn/mucang/android/jiakaoyi/framework/log/f;->o(Ljava/lang/Object;)V

    .line 4
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/push/WebRtcCamera;->j:Lkotlinx/coroutines/t1;

    if-nez v0, :cond_1

    goto :goto_0

    :cond_1
    const/4 v3, 0x0

    invoke-static {v0, v3, v2, v3}, Lkotlinx/coroutines/t1$a;->a(Lkotlinx/coroutines/t1;Ljava/util/concurrent/CancellationException;ILjava/lang/Object;)V

    goto :goto_0

    :cond_2
    const-string v0, "ICE\u8fde\u63a5\u5931\u8d25,\u51c6\u5907\u91cd\u8fde"

    .line 5
    invoke-direct {p0, v0}, Lcn/mucang/android/jiakaoyi/teachingk2/push/WebRtcCamera;->K(Ljava/lang/String;)V

    :goto_0
    const-string v0, "ICE\u8fde\u63a5\u72b6\u6001\uff1a"

    .line 6
    invoke-static {v0, p1}, Lkotlin/jvm/internal/r;->m(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcn/mucang/android/core/utils/t;->h(Ljava/lang/String;Ljava/lang/String;)I

    .line 7
    invoke-static {v0, p1}, Lkotlin/jvm/internal/r;->m(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcn/mucang/android/jiakaoyi/framework/log/f;->o(Ljava/lang/Object;)V

    return-void
.end method

.method public onIceConnectionReceivingChange(Z)V
    .locals 0

    return-void
.end method

.method public onIceGatheringChange(Lorg/webrtc/PeerConnection$IceGatheringState;)V
    .locals 1

    const-string v0, "newState"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method public onRemoveStream(Lorg/webrtc/MediaStream;)V
    .locals 1

    const-string v0, "stream"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method public onRenegotiationNeeded()V
    .locals 0

    return-void
.end method

.method public synthetic onSelectedCandidatePairChanged(Lorg/webrtc/CandidatePairChangeEvent;)V
    .locals 0

    invoke-static {p0, p1}, Lorg/webrtc/p0;->$default$onSelectedCandidatePairChanged(Lorg/webrtc/PeerConnection$Observer;Lorg/webrtc/CandidatePairChangeEvent;)V

    return-void
.end method

.method public onSetFailure(Ljava/lang/String;)V
    .locals 1

    const-string v0, "error"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method public onSetSuccess()V
    .locals 0

    return-void
.end method

.method public onSignalingChange(Lorg/webrtc/PeerConnection$SignalingState;)V
    .locals 1

    const-string v0, "newState"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method public synthetic onStandardizedIceConnectionChange(Lorg/webrtc/PeerConnection$IceConnectionState;)V
    .locals 0

    invoke-static {p0, p1}, Lorg/webrtc/p0;->$default$onStandardizedIceConnectionChange(Lorg/webrtc/PeerConnection$Observer;Lorg/webrtc/PeerConnection$IceConnectionState;)V

    return-void
.end method

.method public synthetic onTrack(Lorg/webrtc/RtpTransceiver;)V
    .locals 0

    invoke-static {p0, p1}, Lorg/webrtc/p0;->$default$onTrack(Lorg/webrtc/PeerConnection$Observer;Lorg/webrtc/RtpTransceiver;)V

    return-void
.end method

.method public final p(Lcn/mucang/android/jiakaoyi/framework/camera/c;)Z
    .locals 1

    const-string v0, "frameCallback"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/push/WebRtcCamera;->e:Lcn/mucang/android/jiakaoyi/teachingk2/push/n0;

    invoke-virtual {v0, p1}, Lcn/mucang/android/jiakaoyi/teachingk2/push/n0;->b(Lcn/mucang/android/jiakaoyi/framework/camera/c;)Z

    move-result p1

    return p1
.end method

.method public final q()V
    .locals 2

    const/4 v0, 0x1

    .line 1
    invoke-virtual {p0, v0}, Lcn/mucang/android/jiakaoyi/teachingk2/push/WebRtcCamera;->t(Z)V

    .line 2
    sget-object v0, Lcn/mucang/android/jiakaoyi/signal/c/d;->m:Lcn/mucang/android/jiakaoyi/signal/c/d;

    iget-object v1, p0, Lcn/mucang/android/jiakaoyi/teachingk2/push/WebRtcCamera;->o:Lcn/mucang/android/jiakaoyi/signal/c/f/a;

    invoke-virtual {v0, v1}, Lcn/mucang/android/jiakaoyi/signal/c/d;->n(Lcn/mucang/android/jiakaoyi/signal/c/f/a;)V

    .line 3
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/push/WebRtcCamera;->e:Lcn/mucang/android/jiakaoyi/teachingk2/push/n0;

    invoke-virtual {v0}, Lcn/mucang/android/jiakaoyi/teachingk2/push/n0;->f()V

    .line 4
    new-instance v0, Lcn/mucang/android/jiakaoyi/teachingk2/push/i0;

    invoke-direct {v0, p0}, Lcn/mucang/android/jiakaoyi/teachingk2/push/i0;-><init>(Lcn/mucang/android/jiakaoyi/teachingk2/push/WebRtcCamera;)V

    invoke-static {v0}, Lcn/mucang/android/jiakaoyi/framework/e/m;->h(Ljava/util/concurrent/Callable;)Lcn/mucang/android/jiakaoyi/framework/e/m;

    .line 5
    new-instance v0, Lcn/mucang/android/jiakaoyi/teachingk2/push/g0;

    invoke-direct {v0, p0}, Lcn/mucang/android/jiakaoyi/teachingk2/push/g0;-><init>(Lcn/mucang/android/jiakaoyi/teachingk2/push/WebRtcCamera;)V

    invoke-static {v0}, Lcn/mucang/android/core/utils/u;->c(Ljava/lang/Runnable;)V

    .line 6
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/push/WebRtcCamera;->h:Landroid/os/HandlerThread;

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Landroid/os/HandlerThread;->quit()Z

    :goto_0
    return-void
.end method

.method public final t(Z)V
    .locals 2

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    .line 1
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object p1

    goto :goto_1

    .line 2
    :cond_0
    iget-object p1, p0, Lcn/mucang/android/jiakaoyi/teachingk2/push/WebRtcCamera;->h:Landroid/os/HandlerThread;

    if-nez p1, :cond_1

    move-object p1, v0

    goto :goto_0

    :cond_1
    invoke-virtual {p1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object p1

    :goto_0
    if-nez p1, :cond_2

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object p1

    :cond_2
    :goto_1
    if-nez p1, :cond_3

    goto :goto_2

    .line 3
    :cond_3
    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1, p1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance p1, Lcn/mucang/android/jiakaoyi/teachingk2/push/h0;

    invoke-direct {p1, p0}, Lcn/mucang/android/jiakaoyi/teachingk2/push/h0;-><init>(Lcn/mucang/android/jiakaoyi/teachingk2/push/WebRtcCamera;)V

    invoke-virtual {v1, p1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 4
    :goto_2
    invoke-direct {p0, v0}, Lcn/mucang/android/jiakaoyi/teachingk2/push/WebRtcCamera;->M(Ljava/lang/Boolean;)V

    .line 5
    iget-object p1, p0, Lcn/mucang/android/jiakaoyi/teachingk2/push/WebRtcCamera;->g:Lkotlinx/coroutines/i0;

    if-nez p1, :cond_4

    goto :goto_3

    :cond_4
    const/4 v1, 0x1

    invoke-static {p1, v0, v1, v0}, Lkotlinx/coroutines/j0;->d(Lkotlinx/coroutines/i0;Ljava/util/concurrent/CancellationException;ILjava/lang/Object;)V

    .line 6
    :goto_3
    iput-object v0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/push/WebRtcCamera;->g:Lkotlinx/coroutines/i0;

    return-void
.end method

.method public final z()Lorg/webrtc/EglBase;
    .locals 1

    .line 1
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/push/WebRtcCamera;->a:Lorg/webrtc/EglBase;

    return-object v0
.end method
