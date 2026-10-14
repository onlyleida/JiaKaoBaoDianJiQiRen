.class public Lcom/alivc/component/player/BGMPlayer/BGMPlayerDynamicListener;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final kCurrentPositionCode:I = 0x2

.field private static final kErrorCodeClassName:Ljava/lang/String; = "com.aliyun.player.bean.ErrorCode"

.field private static final kErrorInfoClassName:Ljava/lang/String; = "com.aliyun.player.bean.ErrorInfo"

.field private static final kFrameInfoClassName:Ljava/lang/String; = "com.cicada.player.utils.FrameInfo"

.field private static final kFrameType_audio:I = 0x2

.field private static final kInfoBeanClassName:Ljava/lang/String; = "com.aliyun.player.bean.InfoBean"

.field private static final kInfoCodeClassName:Ljava/lang/String; = "com.aliyun.player.bean.InfoCode"

.field private static final kOnErrorListenerClassName:Ljava/lang/String; = "com.aliyun.player.IPlayer$OnErrorListener"

.field private static final kOnErrorMethodName:Ljava/lang/String; = "onError"

.field private static final kOnInfoListenerClassName:Ljava/lang/String; = "com.aliyun.player.IPlayer$OnInfoListener"

.field private static final kOnInfoMethodName:Ljava/lang/String; = "onInfo"

.field private static final kOnRenderFrameClassName:Ljava/lang/String; = "com.aliyun.player.IPlayer$OnRenderFrameCallback"

.field private static final kOnRenderFrameMethodName:Ljava/lang/String; = "onRenderFrame"

.field private static final kOnStateChangedListenerClassName:Ljava/lang/String; = "com.aliyun.player.IPlayer$OnStateChangedListener"

.field private static final kOnStateChangedMethodName:Ljava/lang/String; = "onStateChanged"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getOnErrorListenerProxyContext()Lcom/alivc/component/player/BGMPlayer/ReflectionProxyContext;
    .locals 2

    new-instance v0, Lcom/alivc/component/player/BGMPlayer/BGMPlayerDynamicListener$3;

    invoke-direct {v0, p0}, Lcom/alivc/component/player/BGMPlayer/BGMPlayerDynamicListener$3;-><init>(Lcom/alivc/component/player/BGMPlayer/BGMPlayerDynamicListener;)V

    const-string v1, "com.aliyun.player.IPlayer$OnErrorListener"

    invoke-static {v1, v0}, Lcom/alivc/component/player/BGMPlayer/ReflectionUtility;->newProxyContextByClassName(Ljava/lang/String;Ljava/lang/reflect/InvocationHandler;)Lcom/alivc/component/player/BGMPlayer/ReflectionProxyContext;

    move-result-object v0

    return-object v0
.end method

.method public getOnInfoListenerProxyContext()Lcom/alivc/component/player/BGMPlayer/ReflectionProxyContext;
    .locals 2

    new-instance v0, Lcom/alivc/component/player/BGMPlayer/BGMPlayerDynamicListener$1;

    invoke-direct {v0, p0}, Lcom/alivc/component/player/BGMPlayer/BGMPlayerDynamicListener$1;-><init>(Lcom/alivc/component/player/BGMPlayer/BGMPlayerDynamicListener;)V

    const-string v1, "com.aliyun.player.IPlayer$OnInfoListener"

    invoke-static {v1, v0}, Lcom/alivc/component/player/BGMPlayer/ReflectionUtility;->newProxyContextByClassName(Ljava/lang/String;Ljava/lang/reflect/InvocationHandler;)Lcom/alivc/component/player/BGMPlayer/ReflectionProxyContext;

    move-result-object v0

    return-object v0
.end method

.method public getOnRenderFrameProxyContext()Lcom/alivc/component/player/BGMPlayer/ReflectionProxyContext;
    .locals 2

    new-instance v0, Lcom/alivc/component/player/BGMPlayer/BGMPlayerDynamicListener$4;

    invoke-direct {v0, p0}, Lcom/alivc/component/player/BGMPlayer/BGMPlayerDynamicListener$4;-><init>(Lcom/alivc/component/player/BGMPlayer/BGMPlayerDynamicListener;)V

    const-string v1, "com.aliyun.player.IPlayer$OnRenderFrameCallback"

    invoke-static {v1, v0}, Lcom/alivc/component/player/BGMPlayer/ReflectionUtility;->newProxyContextByClassName(Ljava/lang/String;Ljava/lang/reflect/InvocationHandler;)Lcom/alivc/component/player/BGMPlayer/ReflectionProxyContext;

    move-result-object v0

    return-object v0
.end method

.method public getOnStateChangedListenerProxyContext()Lcom/alivc/component/player/BGMPlayer/ReflectionProxyContext;
    .locals 2

    new-instance v0, Lcom/alivc/component/player/BGMPlayer/BGMPlayerDynamicListener$2;

    invoke-direct {v0, p0}, Lcom/alivc/component/player/BGMPlayer/BGMPlayerDynamicListener$2;-><init>(Lcom/alivc/component/player/BGMPlayer/BGMPlayerDynamicListener;)V

    const-string v1, "com.aliyun.player.IPlayer$OnStateChangedListener"

    invoke-static {v1, v0}, Lcom/alivc/component/player/BGMPlayer/ReflectionUtility;->newProxyContextByClassName(Ljava/lang/String;Ljava/lang/reflect/InvocationHandler;)Lcom/alivc/component/player/BGMPlayer/ReflectionProxyContext;

    move-result-object v0

    return-object v0
.end method

.method public setListenerHandler(J)V
    .locals 0

    invoke-static {p1, p2}, Lcom/alivc/component/player/BGMPlayerEventJNI;->setListenerHandler(J)V

    return-void
.end method
