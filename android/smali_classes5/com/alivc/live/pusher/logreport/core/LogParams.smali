.class public Lcom/alivc/live/pusher/logreport/core/LogParams;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/alivc/live/pusher/logreport/core/LogParams$OnParamGetCallback;
    }
.end annotation


# static fields
.field public static app_id:Ljava/lang/String;

.field public static app_n:Ljava/lang/String;

.field public static den:Ljava/lang/String;

.field public static livesdkv:Ljava/lang/String;

.field public static osn:Ljava/lang/String;

.field public static osv:Ljava/lang/String;

.field public static tt:Ljava/lang/String;


# instance fields
.field public acs:Ljava/lang/String;

.field public duuid:Ljava/lang/String;

.field public envir:Ljava/lang/String;

.field public extra:Ljava/lang/String;

.field public isAudioOnly:Z

.field public isExternStream:Z

.field public isPush:Z

.field public isVideoOnly:Z

.field public lv:Ljava/lang/String;

.field private mContext:Landroid/content/Context;

.field private mOnParamGetCallback:Lcom/alivc/live/pusher/logreport/core/LogParams$OnParamGetCallback;

.field public module:Ljava/lang/String;

.field public pushid:Ljava/lang/String;

.field public pushprotocol:Ljava/lang/String;

.field public pushurl:Ljava/lang/String;

.field public sesid:Ljava/lang/String;

.field public time:Ljava/lang/String;

.field public tm:Ljava/lang/String;

.field public topic:Ljava/lang/String;

.field public traceid:Ljava/lang/String;

.field public zone:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    invoke-static {}, Lcom/alivc/live/pusher/AlivcLivePusher;->getSDKVersion()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/alivc/live/pusher/logreport/core/LogParams;->livesdkv:Ljava/lang/String;

    const/4 v0, 0x0

    sput-object v0, Lcom/alivc/live/pusher/logreport/core/LogParams;->app_id:Ljava/lang/String;

    sput-object v0, Lcom/alivc/live/pusher/logreport/core/LogParams;->app_n:Ljava/lang/String;

    const-string v1, "Android"

    sput-object v1, Lcom/alivc/live/pusher/logreport/core/LogParams;->osn:Ljava/lang/String;

    sget-object v1, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    sput-object v1, Lcom/alivc/live/pusher/logreport/core/LogParams;->osv:Ljava/lang/String;

    sget-object v1, Landroid/os/Build;->MODEL:Ljava/lang/String;

    sput-object v1, Lcom/alivc/live/pusher/logreport/core/LogParams;->den:Ljava/lang/String;

    sput-object v0, Lcom/alivc/live/pusher/logreport/core/LogParams;->tt:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/alivc/live/pusher/logreport/core/LogParams$OnParamGetCallback;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "1.0.0"

    iput-object v0, p0, Lcom/alivc/live/pusher/logreport/core/LogParams;->lv:Ljava/lang/String;

    const-string v0, "RELEASE"

    iput-object v0, p0, Lcom/alivc/live/pusher/logreport/core/LogParams;->envir:Ljava/lang/String;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/alivc/live/pusher/logreport/core/LogParams;->mOnParamGetCallback:Lcom/alivc/live/pusher/logreport/core/LogParams$OnParamGetCallback;

    iput-object p1, p0, Lcom/alivc/live/pusher/logreport/core/LogParams;->mContext:Landroid/content/Context;

    iput-object p2, p0, Lcom/alivc/live/pusher/logreport/core/LogParams;->mOnParamGetCallback:Lcom/alivc/live/pusher/logreport/core/LogParams$OnParamGetCallback;

    return-void
.end method

.method private initStaticParam()V
    .locals 3

    sget-object v0, Lcom/alivc/live/pusher/logreport/core/LogParams;->app_id:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alivc/live/pusher/logreport/core/LogParams;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/alivc/live/utils/APKVersionCodeUtils;->getPackageName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/alivc/live/pusher/logreport/core/LogParams;->app_id:Ljava/lang/String;

    :cond_0
    sget-object v0, Lcom/alivc/live/pusher/logreport/core/LogParams;->app_n:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/alivc/live/pusher/logreport/core/LogParams;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/alivc/live/utils/APKVersionCodeUtils;->getAppName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/alivc/live/pusher/logreport/core/LogParams;->app_n:Ljava/lang/String;

    :cond_1
    sget-object v0, Lcom/alivc/live/pusher/logreport/core/LogParams;->tt:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_3

    const-string v0, "phone"

    sput-object v0, Lcom/alivc/live/pusher/logreport/core/LogParams;->tt:Ljava/lang/String;

    :try_start_0
    iget-object v1, p0, Lcom/alivc/live/pusher/logreport/core/LogParams;->mContext:Landroid/content/Context;

    if-eqz v1, :cond_2

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/alivc/live/pusher/logreport/core/LogParams;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/alivc/live/pusher/logreport/core/LogParams;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    iget v1, v1, Landroid/content/res/Configuration;->screenLayout:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    and-int/lit8 v1, v1, 0xf

    const/4 v2, 0x3

    if-lt v1, v2, :cond_2

    const-string v0, "pad"

    :cond_2
    :try_start_1
    sput-object v0, Lcom/alivc/live/pusher/logreport/core/LogParams;->tt:Ljava/lang/String;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catchall_0
    :cond_3
    return-void
.end method


# virtual methods
.method public getLogPublicParams()Ljava/util/Map;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    invoke-direct {p0}, Lcom/alivc/live/pusher/logreport/core/LogParams;->initStaticParam()V

    iget-object v0, p0, Lcom/alivc/live/pusher/logreport/core/LogParams;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/alivc/live/utils/DeviceUtil;->getNetWorkStatus(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alivc/live/pusher/logreport/core/LogParams;->acs:Ljava/lang/String;

    invoke-static {}, Lcom/alivc/live/pusher/logreport/core/AliLiveInfoUtils;->getDeviceUUID()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alivc/live/pusher/logreport/core/LogParams;->duuid:Ljava/lang/String;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/alivc/live/pusher/logreport/core/LogParams;->tm:Ljava/lang/String;

    new-instance v2, Ljava/text/SimpleDateFormat;

    const-string v3, "yyyy-MM-dd HH:mm:ss.SSS"

    invoke-direct {v2, v3}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    new-instance v3, Ljava/util/Date;

    invoke-direct {v3, v0, v1}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v2, v3}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alivc/live/pusher/logreport/core/LogParams;->time:Ljava/lang/String;

    invoke-static {}, Ljava/util/TimeZone;->getDefault()Ljava/util/TimeZone;

    move-result-object v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Ljava/util/TimeZone;->getDisplayName(ZI)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alivc/live/pusher/logreport/core/LogParams;->zone:Ljava/lang/String;

    iget-object v0, p0, Lcom/alivc/live/pusher/logreport/core/LogParams;->mOnParamGetCallback:Lcom/alivc/live/pusher/logreport/core/LogParams$OnParamGetCallback;

    invoke-interface {v0}, Lcom/alivc/live/pusher/logreport/core/LogParams$OnParamGetCallback;->getSessionId()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alivc/live/pusher/logreport/core/LogParams;->sesid:Ljava/lang/String;

    iget-object v0, p0, Lcom/alivc/live/pusher/logreport/core/LogParams;->mOnParamGetCallback:Lcom/alivc/live/pusher/logreport/core/LogParams$OnParamGetCallback;

    invoke-interface {v0}, Lcom/alivc/live/pusher/logreport/core/LogParams$OnParamGetCallback;->getPushProtocol()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alivc/live/pusher/logreport/core/LogParams;->pushprotocol:Ljava/lang/String;

    iget-object v0, p0, Lcom/alivc/live/pusher/logreport/core/LogParams;->mOnParamGetCallback:Lcom/alivc/live/pusher/logreport/core/LogParams$OnParamGetCallback;

    invoke-interface {v0}, Lcom/alivc/live/pusher/logreport/core/LogParams$OnParamGetCallback;->isVideoOnly()Z

    move-result v0

    iput-boolean v0, p0, Lcom/alivc/live/pusher/logreport/core/LogParams;->isVideoOnly:Z

    iget-object v0, p0, Lcom/alivc/live/pusher/logreport/core/LogParams;->mOnParamGetCallback:Lcom/alivc/live/pusher/logreport/core/LogParams$OnParamGetCallback;

    invoke-interface {v0}, Lcom/alivc/live/pusher/logreport/core/LogParams$OnParamGetCallback;->isAudioOnly()Z

    move-result v0

    iput-boolean v0, p0, Lcom/alivc/live/pusher/logreport/core/LogParams;->isAudioOnly:Z

    iget-object v0, p0, Lcom/alivc/live/pusher/logreport/core/LogParams;->mOnParamGetCallback:Lcom/alivc/live/pusher/logreport/core/LogParams$OnParamGetCallback;

    invoke-interface {v0}, Lcom/alivc/live/pusher/logreport/core/LogParams$OnParamGetCallback;->isExternStream()Z

    move-result v0

    iput-boolean v0, p0, Lcom/alivc/live/pusher/logreport/core/LogParams;->isExternStream:Z

    iget-object v0, p0, Lcom/alivc/live/pusher/logreport/core/LogParams;->mOnParamGetCallback:Lcom/alivc/live/pusher/logreport/core/LogParams$OnParamGetCallback;

    invoke-interface {v0}, Lcom/alivc/live/pusher/logreport/core/LogParams$OnParamGetCallback;->getPushUrl()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alivc/live/pusher/logreport/core/LogParams;->pushurl:Ljava/lang/String;

    iget-object v0, p0, Lcom/alivc/live/pusher/logreport/core/LogParams;->mOnParamGetCallback:Lcom/alivc/live/pusher/logreport/core/LogParams$OnParamGetCallback;

    invoke-interface {v0}, Lcom/alivc/live/pusher/logreport/core/LogParams$OnParamGetCallback;->getPushId()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alivc/live/pusher/logreport/core/LogParams;->pushid:Ljava/lang/String;

    iget-object v0, p0, Lcom/alivc/live/pusher/logreport/core/LogParams;->mOnParamGetCallback:Lcom/alivc/live/pusher/logreport/core/LogParams$OnParamGetCallback;

    invoke-interface {v0}, Lcom/alivc/live/pusher/logreport/core/LogParams$OnParamGetCallback;->isPush()Z

    move-result v0

    iput-boolean v0, p0, Lcom/alivc/live/pusher/logreport/core/LogParams;->isPush:Z

    iget-object v0, p0, Lcom/alivc/live/pusher/logreport/core/LogParams;->mOnParamGetCallback:Lcom/alivc/live/pusher/logreport/core/LogParams$OnParamGetCallback;

    invoke-interface {v0}, Lcom/alivc/live/pusher/logreport/core/LogParams$OnParamGetCallback;->getModule()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alivc/live/pusher/logreport/core/LogParams;->module:Ljava/lang/String;

    iget-object v0, p0, Lcom/alivc/live/pusher/logreport/core/LogParams;->mOnParamGetCallback:Lcom/alivc/live/pusher/logreport/core/LogParams$OnParamGetCallback;

    invoke-interface {v0}, Lcom/alivc/live/pusher/logreport/core/LogParams$OnParamGetCallback;->getTopic()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alivc/live/pusher/logreport/core/LogParams;->topic:Ljava/lang/String;

    iget-object v0, p0, Lcom/alivc/live/pusher/logreport/core/LogParams;->mOnParamGetCallback:Lcom/alivc/live/pusher/logreport/core/LogParams$OnParamGetCallback;

    invoke-interface {v0}, Lcom/alivc/live/pusher/logreport/core/LogParams$OnParamGetCallback;->getExtra()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alivc/live/pusher/logreport/core/LogParams;->extra:Ljava/lang/String;

    iget-object v0, p0, Lcom/alivc/live/pusher/logreport/core/LogParams;->mOnParamGetCallback:Lcom/alivc/live/pusher/logreport/core/LogParams$OnParamGetCallback;

    invoke-interface {v0}, Lcom/alivc/live/pusher/logreport/core/LogParams$OnParamGetCallback;->getTraceId()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alivc/live/pusher/logreport/core/LogParams;->traceid:Ljava/lang/String;

    iget-object v0, p0, Lcom/alivc/live/pusher/logreport/core/LogParams;->mOnParamGetCallback:Lcom/alivc/live/pusher/logreport/core/LogParams$OnParamGetCallback;

    invoke-interface {v0}, Lcom/alivc/live/pusher/logreport/core/LogParams$OnParamGetCallback;->getTopicParam()Ljava/util/Map;

    move-result-object v0

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    if-eqz v0, :cond_0

    invoke-interface {v1, v0}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    :cond_0
    iget-object v0, p0, Lcom/alivc/live/pusher/logreport/core/LogParams;->lv:Ljava/lang/String;

    const-string v2, "lv"

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/alivc/live/pusher/logreport/core/LogParams;->livesdkv:Ljava/lang/String;

    const-string v2, "livesdkv"

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/alivc/live/pusher/logreport/core/LogParams;->app_id:Ljava/lang/String;

    const-string v2, "app_id"

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/alivc/live/pusher/logreport/core/LogParams;->app_n:Ljava/lang/String;

    const-string v2, "app_n"

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/alivc/live/pusher/logreport/core/LogParams;->duuid:Ljava/lang/String;

    const-string v2, "duuid"

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/alivc/live/pusher/logreport/core/LogParams;->tm:Ljava/lang/String;

    const-string v2, "tm"

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/alivc/live/pusher/logreport/core/LogParams;->time:Ljava/lang/String;

    const-string v2, "time"

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/alivc/live/pusher/logreport/core/LogParams;->zone:Ljava/lang/String;

    const-string v2, "zone"

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/alivc/live/pusher/logreport/core/LogParams;->osn:Ljava/lang/String;

    const-string v2, "osn"

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/alivc/live/pusher/logreport/core/LogParams;->osv:Ljava/lang/String;

    const-string v2, "osv"

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/alivc/live/pusher/logreport/core/LogParams;->den:Ljava/lang/String;

    const-string v2, "den"

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/alivc/live/pusher/logreport/core/LogParams;->tt:Ljava/lang/String;

    const-string v2, "tt"

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/alivc/live/pusher/logreport/core/LogParams;->acs:Ljava/lang/String;

    const-string v2, "acs"

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/alivc/live/pusher/logreport/core/LogParams;->sesid:Ljava/lang/String;

    const-string v2, "sesid"

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/alivc/live/pusher/logreport/core/LogParams;->pushprotocol:Ljava/lang/String;

    const-string v2, "pushprotocol"

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-boolean v0, p0, Lcom/alivc/live/pusher/logreport/core/LogParams;->isVideoOnly:Z

    invoke-static {v0}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v0

    const-string v2, "videoonly"

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-boolean v0, p0, Lcom/alivc/live/pusher/logreport/core/LogParams;->isAudioOnly:Z

    invoke-static {v0}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v0

    const-string v2, "audioonly"

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-boolean v0, p0, Lcom/alivc/live/pusher/logreport/core/LogParams;->isExternStream:Z

    invoke-static {v0}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v0

    const-string v2, "extern"

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/alivc/live/pusher/logreport/core/LogParams;->pushurl:Ljava/lang/String;

    const-string v2, "pushurl"

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/alivc/live/pusher/logreport/core/LogParams;->pushid:Ljava/lang/String;

    const-string v2, "pushid"

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-boolean v0, p0, Lcom/alivc/live/pusher/logreport/core/LogParams;->isPush:Z

    invoke-static {v0}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v0

    const-string v2, "isPush"

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/alivc/live/pusher/logreport/core/LogParams;->envir:Ljava/lang/String;

    const-string v2, "envir"

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/alivc/live/pusher/logreport/core/LogParams;->module:Ljava/lang/String;

    const-string v2, "module"

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/alivc/live/pusher/logreport/core/LogParams;->topic:Ljava/lang/String;

    const-string v2, "topic"

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/alivc/live/pusher/logreport/core/LogParams;->extra:Ljava/lang/String;

    const-string v2, "extra"

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/alivc/live/pusher/logreport/core/LogParams;->traceid:Ljava/lang/String;

    const-string v2, "traceid"

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object v1
.end method
