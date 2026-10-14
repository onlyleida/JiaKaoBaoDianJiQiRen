.class Lcom/alivc/component/player/BGMPlayer/BGMPlayerDynamic;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/alivc/component/player/BGMPlayer/IBGMPlayer;


# static fields
.field private static final TAG:Ljava/lang/String; = "BGMPlayerDynamic"

.field private static final kAliPlayerClassName:Ljava/lang/String; = "com.aliyun.player.AliPlayer"

.field private static final kAliPlayerFactoryClassName:Ljava/lang/String; = "com.aliyun.player.AliPlayerFactory"

.field private static final kUrlSourceClassName:Ljava/lang/String; = "com.aliyun.player.source.UrlSource"


# instance fields
.field private listener_:Lcom/alivc/component/player/BGMPlayer/BGMPlayerDynamicListener;

.field private player_:Ljava/lang/Object;


# direct methods
.method constructor <init>(Landroid/content/Context;)V
    .locals 7

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/alivc/component/player/BGMPlayer/BGMPlayerDynamic;->player_:Ljava/lang/Object;

    iput-object v0, p0, Lcom/alivc/component/player/BGMPlayer/BGMPlayerDynamic;->listener_:Lcom/alivc/component/player/BGMPlayer/BGMPlayerDynamicListener;

    invoke-virtual {p0}, Lcom/alivc/component/player/BGMPlayer/BGMPlayerDynamic;->isSDKReady()Z

    move-result v1

    if-nez v1, :cond_0

    return-void

    :cond_0
    const-class v1, Landroid/content/Context;

    const-string v2, "com.aliyun.player.AliPlayerFactory"

    const-string v3, "createAliPlayer"

    invoke-static {v0, v2, v3, v1, p1}, Lcom/alivc/component/player/BGMPlayer/ReflectionUtility;->callFunc1Param(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    iput-object p1, p0, Lcom/alivc/component/player/BGMPlayer/BGMPlayerDynamic;->player_:Ljava/lang/Object;

    new-instance p1, Lcom/alivc/component/player/BGMPlayer/BGMPlayerDynamicListener;

    invoke-direct {p1}, Lcom/alivc/component/player/BGMPlayer/BGMPlayerDynamicListener;-><init>()V

    iput-object p1, p0, Lcom/alivc/component/player/BGMPlayer/BGMPlayerDynamic;->listener_:Lcom/alivc/component/player/BGMPlayer/BGMPlayerDynamicListener;

    invoke-virtual {p1}, Lcom/alivc/component/player/BGMPlayer/BGMPlayerDynamicListener;->getOnInfoListenerProxyContext()Lcom/alivc/component/player/BGMPlayer/ReflectionProxyContext;

    move-result-object p1

    iget-object v1, p0, Lcom/alivc/component/player/BGMPlayer/BGMPlayerDynamic;->player_:Ljava/lang/Object;

    iget-object v2, p1, Lcom/alivc/component/player/BGMPlayer/ReflectionProxyContext;->clazz:Ljava/lang/Class;

    iget-object p1, p1, Lcom/alivc/component/player/BGMPlayer/ReflectionProxyContext;->object:Ljava/lang/Object;

    const-string v3, "com.aliyun.player.AliPlayer"

    const-string v4, "setOnInfoListener"

    invoke-static {v1, v3, v4, v2, p1}, Lcom/alivc/component/player/BGMPlayer/ReflectionUtility;->callFunc1Param(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p1, p0, Lcom/alivc/component/player/BGMPlayer/BGMPlayerDynamic;->listener_:Lcom/alivc/component/player/BGMPlayer/BGMPlayerDynamicListener;

    invoke-virtual {p1}, Lcom/alivc/component/player/BGMPlayer/BGMPlayerDynamicListener;->getOnStateChangedListenerProxyContext()Lcom/alivc/component/player/BGMPlayer/ReflectionProxyContext;

    move-result-object p1

    iget-object v1, p0, Lcom/alivc/component/player/BGMPlayer/BGMPlayerDynamic;->player_:Ljava/lang/Object;

    iget-object v2, p1, Lcom/alivc/component/player/BGMPlayer/ReflectionProxyContext;->clazz:Ljava/lang/Class;

    iget-object p1, p1, Lcom/alivc/component/player/BGMPlayer/ReflectionProxyContext;->object:Ljava/lang/Object;

    const-string v4, "setOnStateChangedListener"

    invoke-static {v1, v3, v4, v2, p1}, Lcom/alivc/component/player/BGMPlayer/ReflectionUtility;->callFunc1Param(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p1, p0, Lcom/alivc/component/player/BGMPlayer/BGMPlayerDynamic;->listener_:Lcom/alivc/component/player/BGMPlayer/BGMPlayerDynamicListener;

    invoke-virtual {p1}, Lcom/alivc/component/player/BGMPlayer/BGMPlayerDynamicListener;->getOnErrorListenerProxyContext()Lcom/alivc/component/player/BGMPlayer/ReflectionProxyContext;

    move-result-object p1

    iget-object v1, p0, Lcom/alivc/component/player/BGMPlayer/BGMPlayerDynamic;->player_:Ljava/lang/Object;

    iget-object v2, p1, Lcom/alivc/component/player/BGMPlayer/ReflectionProxyContext;->clazz:Ljava/lang/Class;

    iget-object p1, p1, Lcom/alivc/component/player/BGMPlayer/ReflectionProxyContext;->object:Ljava/lang/Object;

    const-string v4, "setOnErrorListener"

    invoke-static {v1, v3, v4, v2, p1}, Lcom/alivc/component/player/BGMPlayer/ReflectionUtility;->callFunc1Param(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p1, p0, Lcom/alivc/component/player/BGMPlayer/BGMPlayerDynamic;->listener_:Lcom/alivc/component/player/BGMPlayer/BGMPlayerDynamicListener;

    invoke-virtual {p1}, Lcom/alivc/component/player/BGMPlayer/BGMPlayerDynamicListener;->getOnRenderFrameProxyContext()Lcom/alivc/component/player/BGMPlayer/ReflectionProxyContext;

    move-result-object p1

    iget-object v1, p0, Lcom/alivc/component/player/BGMPlayer/BGMPlayerDynamic;->player_:Ljava/lang/Object;

    iget-object v2, p1, Lcom/alivc/component/player/BGMPlayer/ReflectionProxyContext;->clazz:Ljava/lang/Class;

    iget-object p1, p1, Lcom/alivc/component/player/BGMPlayer/ReflectionProxyContext;->object:Ljava/lang/Object;

    const-string v4, "setOnRenderFrameCallback"

    invoke-static {v1, v3, v4, v2, p1}, Lcom/alivc/component/player/BGMPlayer/ReflectionUtility;->callFunc1Param(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 p1, 0x4

    new-array v1, p1, [Ljava/lang/Class;

    sget-object v2, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    const/4 v3, 0x0

    aput-object v2, v1, v3

    const-class v2, Ljava/lang/String;

    const/4 v4, 0x1

    aput-object v2, v1, v4

    sget-object v2, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const/4 v5, 0x2

    aput-object v2, v1, v5

    const/4 v6, 0x3

    aput-object v2, v1, v6

    new-array p1, p1, [Ljava/lang/Object;

    sget-object v2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    aput-object v2, p1, v3

    const-string v2, "s16"

    aput-object v2, p1, v4

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, p1, v5

    const v2, 0xac44

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, p1, v6

    const-string v2, "com.aliyun.player.AliPlayerGlobalSettings"

    const-string v3, "forceAudioRendingFormat"

    invoke-static {v0, v2, v3, v1, p1}, Lcom/alivc/component/player/BGMPlayer/ReflectionUtility;->callFuncNParam(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public getDuration()J
    .locals 3

    iget-object v0, p0, Lcom/alivc/component/player/BGMPlayer/BGMPlayerDynamic;->player_:Ljava/lang/Object;

    if-nez v0, :cond_0

    const-wide/16 v0, 0x0

    return-wide v0

    :cond_0
    const-string v1, "com.aliyun.player.AliPlayer"

    const-string v2, "getDuration"

    invoke-static {v0, v1, v2}, Lcom/alivc/component/player/BGMPlayer/ReflectionUtility;->callFunc0Param(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    return-wide v0
.end method

.method public isSDKReady()Z
    .locals 5

    const-string v0, "com.aliyun.player.AliPlayer"

    invoke-static {v0}, Lcom/alivc/component/player/BGMPlayer/ReflectionUtility;->isClassAvailable(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x1

    const-string v2, "com.aliyun.player.AliPlayerFactory"

    if-eqz v0, :cond_0

    invoke-static {v2}, Lcom/alivc/component/player/BGMPlayer/ReflectionUtility;->isClassAvailable(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    const-string v3, "BGMPlayerDynamic"

    if-nez v0, :cond_1

    const-string v0, "Can\'t find player SDK"

    invoke-static {v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    const/4 v0, 0x0

    const-string v4, "getSdkVersion"

    invoke-static {v0, v2, v4}, Lcom/alivc/component/player/BGMPlayer/ReflectionUtility;->callFunc0Param(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "player SDK version = "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string v2, "5.4.1"

    invoke-static {v0, v2}, Lcom/alivc/live/utils/APKVersionCodeUtils;->compareVersion(Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    if-ltz v2, :cond_2

    return v1

    :cond_2
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Please use [5.4.1+] version of AliPlayer SDK, current is using:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public pause()V
    .locals 3

    iget-object v0, p0, Lcom/alivc/component/player/BGMPlayer/BGMPlayerDynamic;->player_:Ljava/lang/Object;

    if-nez v0, :cond_0

    return-void

    :cond_0
    const-string v1, "com.aliyun.player.AliPlayer"

    const-string v2, "pause"

    invoke-static {v0, v1, v2}, Lcom/alivc/component/player/BGMPlayer/ReflectionUtility;->callFunc0Param(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    return-void
.end method

.method public prepare()V
    .locals 5

    iget-object v0, p0, Lcom/alivc/component/player/BGMPlayer/BGMPlayerDynamic;->player_:Ljava/lang/Object;

    if-nez v0, :cond_0

    return-void

    :cond_0
    sget-object v1, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    sget-object v2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    const-string v3, "com.aliyun.player.AliPlayer"

    const-string v4, "setMute"

    invoke-static {v0, v3, v4, v1, v2}, Lcom/alivc/component/player/BGMPlayer/ReflectionUtility;->callFunc1Param(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/alivc/component/player/BGMPlayer/BGMPlayerDynamic;->player_:Ljava/lang/Object;

    const-string v1, "prepare"

    invoke-static {v0, v3, v1}, Lcom/alivc/component/player/BGMPlayer/ReflectionUtility;->callFunc0Param(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    return-void
.end method

.method public release()V
    .locals 3

    iget-object v0, p0, Lcom/alivc/component/player/BGMPlayer/BGMPlayerDynamic;->player_:Ljava/lang/Object;

    if-nez v0, :cond_0

    return-void

    :cond_0
    const-string v1, "com.aliyun.player.AliPlayer"

    const-string v2, "release"

    invoke-static {v0, v1, v2}, Lcom/alivc/component/player/BGMPlayer/ReflectionUtility;->callFunc0Param(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/alivc/component/player/BGMPlayer/BGMPlayerDynamic;->player_:Ljava/lang/Object;

    iput-object v0, p0, Lcom/alivc/component/player/BGMPlayer/BGMPlayerDynamic;->listener_:Lcom/alivc/component/player/BGMPlayer/BGMPlayerDynamicListener;

    return-void
.end method

.method public setAutoPlay(Z)V
    .locals 4

    iget-object v0, p0, Lcom/alivc/component/player/BGMPlayer/BGMPlayerDynamic;->player_:Ljava/lang/Object;

    if-nez v0, :cond_0

    return-void

    :cond_0
    sget-object v1, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    const-string v2, "com.aliyun.player.AliPlayer"

    const-string v3, "setAutoPlay"

    invoke-static {v0, v2, v3, v1, p1}, Lcom/alivc/component/player/BGMPlayer/ReflectionUtility;->callFunc1Param(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public setListenerHandler(J)V
    .locals 1

    iget-object v0, p0, Lcom/alivc/component/player/BGMPlayer/BGMPlayerDynamic;->listener_:Lcom/alivc/component/player/BGMPlayer/BGMPlayerDynamicListener;

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {v0, p1, p2}, Lcom/alivc/component/player/BGMPlayer/BGMPlayerDynamicListener;->setListenerHandler(J)V

    return-void
.end method

.method public setLoop(Z)V
    .locals 4

    iget-object v0, p0, Lcom/alivc/component/player/BGMPlayer/BGMPlayerDynamic;->player_:Ljava/lang/Object;

    if-nez v0, :cond_0

    return-void

    :cond_0
    sget-object v1, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    const-string v2, "com.aliyun.player.AliPlayer"

    const-string v3, "setLoop"

    invoke-static {v0, v2, v3, v1, p1}, Lcom/alivc/component/player/BGMPlayer/ReflectionUtility;->callFunc1Param(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public setUrlSource(Ljava/lang/String;)V
    .locals 4

    iget-object v0, p0, Lcom/alivc/component/player/BGMPlayer/BGMPlayerDynamic;->player_:Ljava/lang/Object;

    if-nez v0, :cond_0

    return-void

    :cond_0
    const-string v0, "com.aliyun.player.source.UrlSource"

    invoke-static {v0}, Lcom/alivc/component/player/BGMPlayer/ReflectionUtility;->newObject(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    const-class v2, Ljava/lang/String;

    const-string v3, "setUri"

    invoke-static {v1, v0, v3, v2, p1}, Lcom/alivc/component/player/BGMPlayer/ReflectionUtility;->callFunc1Param(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p1, p0, Lcom/alivc/component/player/BGMPlayer/BGMPlayerDynamic;->player_:Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-string v2, "com.aliyun.player.AliPlayer"

    const-string v3, "setDataSource"

    invoke-static {p1, v2, v3, v0, v1}, Lcom/alivc/component/player/BGMPlayer/ReflectionUtility;->callFunc1Param(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public start()V
    .locals 3

    iget-object v0, p0, Lcom/alivc/component/player/BGMPlayer/BGMPlayerDynamic;->player_:Ljava/lang/Object;

    if-nez v0, :cond_0

    return-void

    :cond_0
    const-string v1, "com.aliyun.player.AliPlayer"

    const-string v2, "start"

    invoke-static {v0, v1, v2}, Lcom/alivc/component/player/BGMPlayer/ReflectionUtility;->callFunc0Param(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    return-void
.end method

.method public stop()V
    .locals 3

    iget-object v0, p0, Lcom/alivc/component/player/BGMPlayer/BGMPlayerDynamic;->player_:Ljava/lang/Object;

    if-nez v0, :cond_0

    return-void

    :cond_0
    const-string v1, "com.aliyun.player.AliPlayer"

    const-string v2, "stop"

    invoke-static {v0, v1, v2}, Lcom/alivc/component/player/BGMPlayer/ReflectionUtility;->callFunc0Param(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    return-void
.end method
