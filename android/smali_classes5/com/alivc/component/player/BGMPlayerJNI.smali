.class public Lcom/alivc/component/player/BGMPlayerJNI;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lcom/alivc/component/player/NativeUsed;
.end annotation


# static fields
.field private static context_:Landroid/content/Context;

.field private static instance_:Lcom/alivc/component/player/BGMPlayer/IBGMPlayer;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static createBGMPlayerInstance(JZ)V
    .locals 1
    .annotation runtime Lcom/alivc/component/player/NativeUsed;
    .end annotation

    sget-object v0, Lcom/alivc/component/player/BGMPlayerJNI;->instance_:Lcom/alivc/component/player/BGMPlayer/IBGMPlayer;

    if-nez v0, :cond_0

    sget-object v0, Lcom/alivc/component/player/BGMPlayerJNI;->context_:Landroid/content/Context;

    invoke-static {v0, p2}, Lcom/alivc/component/player/BGMPlayer/BGMPlayerFactory;->createAliPlayerWrapper(Landroid/content/Context;Z)Lcom/alivc/component/player/BGMPlayer/IBGMPlayer;

    move-result-object p2

    sput-object p2, Lcom/alivc/component/player/BGMPlayerJNI;->instance_:Lcom/alivc/component/player/BGMPlayer/IBGMPlayer;

    :cond_0
    sget-object p2, Lcom/alivc/component/player/BGMPlayerJNI;->instance_:Lcom/alivc/component/player/BGMPlayer/IBGMPlayer;

    if-eqz p2, :cond_1

    invoke-interface {p2, p0, p1}, Lcom/alivc/component/player/BGMPlayer/IBGMPlayer;->setListenerHandler(J)V

    :cond_1
    return-void
.end method

.method public static getDuration()J
    .locals 2
    .annotation runtime Lcom/alivc/component/player/NativeUsed;
    .end annotation

    sget-object v0, Lcom/alivc/component/player/BGMPlayerJNI;->instance_:Lcom/alivc/component/player/BGMPlayer/IBGMPlayer;

    if-nez v0, :cond_0

    const-wide/16 v0, 0x0

    return-wide v0

    :cond_0
    invoke-interface {v0}, Lcom/alivc/component/player/BGMPlayer/IBGMPlayer;->getDuration()J

    move-result-wide v0

    return-wide v0
.end method

.method public static pause()V
    .locals 1
    .annotation runtime Lcom/alivc/component/player/NativeUsed;
    .end annotation

    sget-object v0, Lcom/alivc/component/player/BGMPlayerJNI;->instance_:Lcom/alivc/component/player/BGMPlayer/IBGMPlayer;

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-interface {v0}, Lcom/alivc/component/player/BGMPlayer/IBGMPlayer;->pause()V

    return-void
.end method

.method public static prepare()V
    .locals 1
    .annotation runtime Lcom/alivc/component/player/NativeUsed;
    .end annotation

    sget-object v0, Lcom/alivc/component/player/BGMPlayerJNI;->instance_:Lcom/alivc/component/player/BGMPlayer/IBGMPlayer;

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-interface {v0}, Lcom/alivc/component/player/BGMPlayer/IBGMPlayer;->prepare()V

    return-void
.end method

.method public static releaseBGMPlayer()V
    .locals 3
    .annotation runtime Lcom/alivc/component/player/NativeUsed;
    .end annotation

    sget-object v0, Lcom/alivc/component/player/BGMPlayerJNI;->instance_:Lcom/alivc/component/player/BGMPlayer/IBGMPlayer;

    if-eqz v0, :cond_0

    const-wide/16 v1, 0x0

    invoke-interface {v0, v1, v2}, Lcom/alivc/component/player/BGMPlayer/IBGMPlayer;->setListenerHandler(J)V

    :cond_0
    return-void
.end method

.method public static setAutoPlay(Z)V
    .locals 1
    .annotation runtime Lcom/alivc/component/player/NativeUsed;
    .end annotation

    sget-object v0, Lcom/alivc/component/player/BGMPlayerJNI;->instance_:Lcom/alivc/component/player/BGMPlayer/IBGMPlayer;

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-interface {v0, p0}, Lcom/alivc/component/player/BGMPlayer/IBGMPlayer;->setAutoPlay(Z)V

    return-void
.end method

.method public static setContext(Landroid/content/Context;)V
    .locals 0

    sput-object p0, Lcom/alivc/component/player/BGMPlayerJNI;->context_:Landroid/content/Context;

    return-void
.end method

.method public static setLoop(Z)V
    .locals 1
    .annotation runtime Lcom/alivc/component/player/NativeUsed;
    .end annotation

    sget-object v0, Lcom/alivc/component/player/BGMPlayerJNI;->instance_:Lcom/alivc/component/player/BGMPlayer/IBGMPlayer;

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-interface {v0, p0}, Lcom/alivc/component/player/BGMPlayer/IBGMPlayer;->setLoop(Z)V

    return-void
.end method

.method public static setUrlSource(Ljava/lang/String;)V
    .locals 1
    .annotation runtime Lcom/alivc/component/player/NativeUsed;
    .end annotation

    sget-object v0, Lcom/alivc/component/player/BGMPlayerJNI;->instance_:Lcom/alivc/component/player/BGMPlayer/IBGMPlayer;

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-interface {v0, p0}, Lcom/alivc/component/player/BGMPlayer/IBGMPlayer;->setUrlSource(Ljava/lang/String;)V

    return-void
.end method

.method public static start()V
    .locals 1
    .annotation runtime Lcom/alivc/component/player/NativeUsed;
    .end annotation

    sget-object v0, Lcom/alivc/component/player/BGMPlayerJNI;->instance_:Lcom/alivc/component/player/BGMPlayer/IBGMPlayer;

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-interface {v0}, Lcom/alivc/component/player/BGMPlayer/IBGMPlayer;->start()V

    return-void
.end method

.method public static stop()V
    .locals 1
    .annotation runtime Lcom/alivc/component/player/NativeUsed;
    .end annotation

    sget-object v0, Lcom/alivc/component/player/BGMPlayerJNI;->instance_:Lcom/alivc/component/player/BGMPlayer/IBGMPlayer;

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-interface {v0}, Lcom/alivc/component/player/BGMPlayer/IBGMPlayer;->stop()V

    return-void
.end method
