.class Lio/agora/rtc/audio/HuaweiHardwareEarback;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/agora/rtc/audio/IHardwareEarback;


# static fields
.field private static final TAG:Ljava/lang/String; = "HuaweiHardwareEarback"


# instance fields
.field private latency:I

.field private mContext:Landroid/content/Context;

.field private mEarbackEnabled:Z

.field private mHwAudioKaraokeFeatureKit:Lcom/huawei/multimedia/audiokit/interfaces/HwAudioKaraokeFeatureKit;

.field private mHwAudioKit:Lcom/huawei/multimedia/audiokit/interfaces/HwAudioKit;

.field private mInited:Z

.field private volume:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput-object v0, p0, Lio/agora/rtc/audio/HuaweiHardwareEarback;->mContext:Landroid/content/Context;

    .line 3
    iput-object v0, p0, Lio/agora/rtc/audio/HuaweiHardwareEarback;->mHwAudioKit:Lcom/huawei/multimedia/audiokit/interfaces/HwAudioKit;

    .line 4
    iput-object v0, p0, Lio/agora/rtc/audio/HuaweiHardwareEarback;->mHwAudioKaraokeFeatureKit:Lcom/huawei/multimedia/audiokit/interfaces/HwAudioKaraokeFeatureKit;

    const/4 v0, 0x0

    .line 5
    iput-boolean v0, p0, Lio/agora/rtc/audio/HuaweiHardwareEarback;->mInited:Z

    .line 6
    iput-boolean v0, p0, Lio/agora/rtc/audio/HuaweiHardwareEarback;->mEarbackEnabled:Z

    .line 7
    iput v0, p0, Lio/agora/rtc/audio/HuaweiHardwareEarback;->latency:I

    .line 8
    iput v0, p0, Lio/agora/rtc/audio/HuaweiHardwareEarback;->volume:I

    const-string v0, "HuaweiHardwareEarback"

    const-string v1, ">>ctor"

    .line 9
    invoke-static {v0, v1}, Lio/agora/rtc/internal/Logging;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 10
    iput-object p1, p0, Lio/agora/rtc/audio/HuaweiHardwareEarback;->mContext:Landroid/content/Context;

    .line 11
    invoke-virtual {p0}, Lio/agora/rtc/audio/HuaweiHardwareEarback;->initialize()V

    return-void
.end method

.method static synthetic access$002(Lio/agora/rtc/audio/HuaweiHardwareEarback;Z)Z
    .locals 0

    .line 1
    iput-boolean p1, p0, Lio/agora/rtc/audio/HuaweiHardwareEarback;->mInited:Z

    return p1
.end method


# virtual methods
.method public destroy()V
    .locals 2

    const-string v0, "HuaweiHardwareEarback"

    const-string v1, ">>destroy"

    .line 1
    invoke-static {v0, v1}, Lio/agora/rtc/internal/Logging;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    iget-object v0, p0, Lio/agora/rtc/audio/HuaweiHardwareEarback;->mHwAudioKaraokeFeatureKit:Lcom/huawei/multimedia/audiokit/interfaces/HwAudioKaraokeFeatureKit;

    invoke-virtual {v0}, Lcom/huawei/multimedia/audiokit/interfaces/HwAudioKaraokeFeatureKit;->l()V

    .line 3
    iget-object v0, p0, Lio/agora/rtc/audio/HuaweiHardwareEarback;->mHwAudioKit:Lcom/huawei/multimedia/audiokit/interfaces/HwAudioKit;

    invoke-virtual {v0}, Lcom/huawei/multimedia/audiokit/interfaces/HwAudioKit;->m()V

    return-void
.end method

.method public declared-synchronized enableEarbackFeature(Z)I
    .locals 4

    monitor-enter p0

    .line 1
    :try_start_0
    iget-boolean v0, p0, Lio/agora/rtc/audio/HuaweiHardwareEarback;->mInited:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    const/4 p1, -0x7

    .line 2
    monitor-exit p0

    return p1

    :cond_0
    :try_start_1
    const-string v0, "HuaweiHardwareEarback"

    .line 3
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ">>enableEarbackFeature "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lio/agora/rtc/internal/Logging;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 4
    iget-object v0, p0, Lio/agora/rtc/audio/HuaweiHardwareEarback;->mHwAudioKaraokeFeatureKit:Lcom/huawei/multimedia/audiokit/interfaces/HwAudioKaraokeFeatureKit;

    invoke-virtual {v0}, Lcom/huawei/multimedia/audiokit/interfaces/HwAudioKaraokeFeatureKit;->p()Z

    move-result v0

    const/4 v1, -0x1

    if-nez v0, :cond_1

    const-string p1, "HuaweiHardwareEarback"

    const-string v0, "karaoke not supported"

    .line 5
    invoke-static {p1, v0}, Lio/agora/rtc/internal/Logging;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 6
    monitor-exit p0

    return v1

    .line 7
    :cond_1
    :try_start_2
    iget-object v0, p0, Lio/agora/rtc/audio/HuaweiHardwareEarback;->mHwAudioKaraokeFeatureKit:Lcom/huawei/multimedia/audiokit/interfaces/HwAudioKaraokeFeatureKit;

    invoke-virtual {v0, p1}, Lcom/huawei/multimedia/audiokit/interfaces/HwAudioKaraokeFeatureKit;->m(Z)I

    move-result v0

    if-eqz v0, :cond_2

    const-string p1, "HuaweiHardwareEarback"

    .line 8
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "enableKaraokeFeature failed ret "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lio/agora/rtc/internal/Logging;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 9
    monitor-exit p0

    return v1

    .line 10
    :cond_2
    :try_start_3
    iput-boolean p1, p0, Lio/agora/rtc/audio/HuaweiHardwareEarback;->mEarbackEnabled:Z

    if-eqz p1, :cond_3

    .line 11
    iget-object p1, p0, Lio/agora/rtc/audio/HuaweiHardwareEarback;->mHwAudioKaraokeFeatureKit:Lcom/huawei/multimedia/audiokit/interfaces/HwAudioKaraokeFeatureKit;

    invoke-virtual {p1}, Lcom/huawei/multimedia/audiokit/interfaces/HwAudioKaraokeFeatureKit;->n()I

    move-result p1

    iput p1, p0, Lio/agora/rtc/audio/HuaweiHardwareEarback;->latency:I

    const-string p1, "HuaweiHardwareEarback"

    .line 12
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "latency "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lio/agora/rtc/audio/HuaweiHardwareEarback;->latency:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lio/agora/rtc/internal/Logging;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :cond_3
    const/4 p1, 0x0

    .line 13
    monitor-exit p0

    return p1

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method protected finalize()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    const-string v0, "HuaweiHardwareEarback"

    const-string v1, ">>finalize"

    .line 1
    invoke-static {v0, v1}, Lio/agora/rtc/internal/Logging;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    invoke-virtual {p0}, Lio/agora/rtc/audio/HuaweiHardwareEarback;->destroy()V

    .line 3
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    return-void
.end method

.method public initialize()V
    .locals 3

    .line 1
    iget-object v0, p0, Lio/agora/rtc/audio/HuaweiHardwareEarback;->mContext:Landroid/content/Context;

    const-string v1, "HuaweiHardwareEarback"

    if-nez v0, :cond_0

    const-string v0, "mContext is null!"

    .line 2
    invoke-static {v1, v0}, Lio/agora/rtc/internal/Logging;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_0
    const-string v0, ">>initialize"

    .line 3
    invoke-static {v1, v0}, Lio/agora/rtc/internal/Logging;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 4
    new-instance v0, Lcom/huawei/multimedia/audiokit/interfaces/HwAudioKit;

    iget-object v1, p0, Lio/agora/rtc/audio/HuaweiHardwareEarback;->mContext:Landroid/content/Context;

    new-instance v2, Lio/agora/rtc/audio/HuaweiHardwareEarback$1;

    invoke-direct {v2, p0}, Lio/agora/rtc/audio/HuaweiHardwareEarback$1;-><init>(Lio/agora/rtc/audio/HuaweiHardwareEarback;)V

    invoke-direct {v0, v1, v2}, Lcom/huawei/multimedia/audiokit/interfaces/HwAudioKit;-><init>(Landroid/content/Context;Lcom/huawei/multimedia/audiokit/interfaces/c;)V

    iput-object v0, p0, Lio/agora/rtc/audio/HuaweiHardwareEarback;->mHwAudioKit:Lcom/huawei/multimedia/audiokit/interfaces/HwAudioKit;

    .line 5
    invoke-virtual {v0}, Lcom/huawei/multimedia/audiokit/interfaces/HwAudioKit;->n()V

    .line 6
    iget-object v0, p0, Lio/agora/rtc/audio/HuaweiHardwareEarback;->mHwAudioKit:Lcom/huawei/multimedia/audiokit/interfaces/HwAudioKit;

    sget-object v1, Lcom/huawei/multimedia/audiokit/interfaces/HwAudioKit$FeatureType;->HWAUDIO_FEATURE_KARAOKE:Lcom/huawei/multimedia/audiokit/interfaces/HwAudioKit$FeatureType;

    invoke-virtual {v0, v1}, Lcom/huawei/multimedia/audiokit/interfaces/HwAudioKit;->l(Lcom/huawei/multimedia/audiokit/interfaces/HwAudioKit$FeatureType;)Lcom/huawei/multimedia/audiokit/interfaces/a;

    move-result-object v0

    check-cast v0, Lcom/huawei/multimedia/audiokit/interfaces/HwAudioKaraokeFeatureKit;

    iput-object v0, p0, Lio/agora/rtc/audio/HuaweiHardwareEarback;->mHwAudioKaraokeFeatureKit:Lcom/huawei/multimedia/audiokit/interfaces/HwAudioKaraokeFeatureKit;

    return-void
.end method

.method public isHardwareEarbackSupported()Z
    .locals 4

    .line 1
    iget-boolean v0, p0, Lio/agora/rtc/audio/HuaweiHardwareEarback;->mInited:Z

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    const-string v0, "HuaweiHardwareEarback"

    const-string v1, ">>isHardwareEarbackSupported"

    .line 2
    invoke-static {v0, v1}, Lio/agora/rtc/internal/Logging;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 3
    iget-object v1, p0, Lio/agora/rtc/audio/HuaweiHardwareEarback;->mHwAudioKaraokeFeatureKit:Lcom/huawei/multimedia/audiokit/interfaces/HwAudioKaraokeFeatureKit;

    invoke-virtual {v1}, Lcom/huawei/multimedia/audiokit/interfaces/HwAudioKaraokeFeatureKit;->p()Z

    move-result v1

    .line 4
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "isSupported "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lio/agora/rtc/internal/Logging;->d(Ljava/lang/String;Ljava/lang/String;)V

    return v1
.end method

.method public declared-synchronized setHardwareEarbackVolume(I)I
    .locals 3

    monitor-enter p0

    .line 1
    :try_start_0
    iget-boolean v0, p0, Lio/agora/rtc/audio/HuaweiHardwareEarback;->mInited:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    const/4 p1, -0x7

    .line 2
    monitor-exit p0

    return p1

    :cond_0
    :try_start_1
    const-string v0, "HuaweiHardwareEarback"

    .line 3
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ">>setHardwareEarbackVolume "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lio/agora/rtc/internal/Logging;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    const/16 v1, 0x64

    if-gez p1, :cond_1

    const/4 p1, 0x0

    goto :goto_0

    :cond_1
    if-le p1, v1, :cond_2

    const/16 p1, 0x64

    .line 4
    :cond_2
    :goto_0
    iget-object v1, p0, Lio/agora/rtc/audio/HuaweiHardwareEarback;->mHwAudioKaraokeFeatureKit:Lcom/huawei/multimedia/audiokit/interfaces/HwAudioKaraokeFeatureKit;

    sget-object v2, Lcom/huawei/multimedia/audiokit/interfaces/HwAudioKaraokeFeatureKit$ParameName;->CMD_SET_VOCAL_VOLUME_BASE:Lcom/huawei/multimedia/audiokit/interfaces/HwAudioKaraokeFeatureKit$ParameName;

    invoke-virtual {v1, v2, p1}, Lcom/huawei/multimedia/audiokit/interfaces/HwAudioKaraokeFeatureKit;->s(Lcom/huawei/multimedia/audiokit/interfaces/HwAudioKaraokeFeatureKit$ParameName;I)I

    move-result v1

    if-eqz v1, :cond_3

    const-string p1, "HuaweiHardwareEarback"

    .line 5
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setParameter error number "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lio/agora/rtc/internal/Logging;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    const/4 p1, -0x1

    .line 6
    monitor-exit p0

    return p1

    .line 7
    :cond_3
    :try_start_2
    iput p1, p0, Lio/agora/rtc/audio/HuaweiHardwareEarback;->volume:I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 8
    monitor-exit p0

    return v0

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method
