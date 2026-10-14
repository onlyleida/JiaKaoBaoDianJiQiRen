.class public final Lcn/mucang/jiakaoyi/uilib/rtmc/i/a;
.super Lcn/mucang/jiakaoyi/uilib/rtmc/d;
.source "SourceFile"

# interfaces
.implements Lcom/sixents/sdk/base/IDiffDataCallBack;
.implements Lcom/sixents/sdk/base/IStatusCallBack;


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000J\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\t\n\u0000\n\u0002\u0010\u0008\n\u0000\n\u0002\u0010\u000b\n\u0002\u0008\u0007\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u0012\n\u0002\u0008\u0006\n\u0002\u0018\u0002\n\u0002\u0008\u0003\u0018\u00002\u00020\u00012\u00020\u00022\u00020\u0003B\u0017\u0012\u0008\u0010\u0004\u001a\u0004\u0018\u00010\u0005\u0012\u0006\u0010\u0006\u001a\u00020\u0007\u00a2\u0006\u0002\u0010\u0008J\u001a\u0010\u0015\u001a\u00020\u00162\u0008\u0010\u0017\u001a\u0004\u0018\u00010\u00182\u0006\u0010\u0019\u001a\u00020\u000cH\u0016J\u0010\u0010\u001a\u001a\u00020\u00162\u0006\u0010\u001b\u001a\u00020\u000cH\u0016J\u0008\u0010\u001c\u001a\u00020\u000eH\u0016J\u0008\u0010\r\u001a\u00020\u000eH\u0016J\u0010\u0010\u001d\u001a\u00020\u000c2\u0006\u0010\u001e\u001a\u00020\u001fH\u0016J\u0008\u0010 \u001a\u00020\u0016H\u0016J\u0008\u0010!\u001a\u00020\u0016H\u0016R\u000e\u0010\t\u001a\u00020\nX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u000b\u001a\u00020\u000cX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\r\u001a\u00020\u000eX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u001a\u0010\u000f\u001a\u00020\u000cX\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0010\u0010\u0011\"\u0004\u0008\u0012\u0010\u0013R\u000e\u0010\u0014\u001a\u00020\nX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0006\u001a\u00020\u0007X\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006\""
    }
    d2 = {
        "Lcn/mucang/jiakaoyi/uilib/rtmc/liufen/LiufenStation;",
        "Lcn/mucang/jiakaoyi/uilib/rtmc/AbsGpsStation;",
        "Lcom/sixents/sdk/base/IDiffDataCallBack;",
        "Lcom/sixents/sdk/base/IStatusCallBack;",
        "listener",
        "Lcn/mucang/jiakaoyi/uilib/rtmc/DiffDataListener;",
        "stationModel",
        "Lcn/mucang/jiakaoyi/uilib/socket/model/GpsStationModel;",
        "(Lcn/mucang/jiakaoyi/uilib/rtmc/DiffDataListener;Lcn/mucang/jiakaoyi/uilib/socket/model/GpsStationModel;)V",
        "ggaLogTime",
        "",
        "ggaSendCount",
        "",
        "isValid",
        "",
        "lastStatus",
        "getLastStatus",
        "()I",
        "setLastStatus",
        "(I)V",
        "lastTime",
        "diffdata",
        "",
        "data",
        "",
        "dataType",
        "getstatus",
        "status",
        "init",
        "sendGGa",
        "gga",
        "Lcn/mucang/android/jiakaoyi/signal/handle/gps/GGAModel;",
        "start",
        "stop",
        "uilib_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x5,
        0x1
    }
    xi = 0x30
.end annotation


# instance fields
.field private final b:Lcn/mucang/jiakaoyi/uilib/socket/model/GpsStationModel;

.field private c:J

.field private d:Z

.field private e:I

.field private f:J

.field private g:I


# direct methods
.method public constructor <init>(Lcn/mucang/jiakaoyi/uilib/rtmc/f;Lcn/mucang/jiakaoyi/uilib/socket/model/GpsStationModel;)V
    .locals 1

    const-string v0, "stationModel"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0, p1}, Lcn/mucang/jiakaoyi/uilib/rtmc/d;-><init>(Lcn/mucang/jiakaoyi/uilib/rtmc/f;)V

    .line 2
    iput-object p2, p0, Lcn/mucang/jiakaoyi/uilib/rtmc/i/a;->b:Lcn/mucang/jiakaoyi/uilib/socket/model/GpsStationModel;

    const p1, 0x98967f

    .line 3
    iput p1, p0, Lcn/mucang/jiakaoyi/uilib/rtmc/i/a;->g:I

    return-void
.end method


# virtual methods
.method public b()Z
    .locals 3

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "init\u516d\u5206\u57fa\u7ad9\uff1aak:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcn/mucang/jiakaoyi/uilib/rtmc/i/a;->b:Lcn/mucang/jiakaoyi/uilib/socket/model/GpsStationModel;

    iget-object v1, v1, Lcn/mucang/jiakaoyi/uilib/socket/model/GpsStationModel;->key:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " sn:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcn/mucang/jiakaoyi/uilib/rtmc/i/a;->b:Lcn/mucang/jiakaoyi/uilib/socket/model/GpsStationModel;

    iget-object v1, v1, Lcn/mucang/jiakaoyi/uilib/socket/model/GpsStationModel;->sn:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcn/mucang/android/jiakaoyi/framework/log/f;->f(Ljava/lang/Object;)V

    const/4 v0, 0x0

    .line 2
    :try_start_0
    new-instance v1, Lcom/sixents/sdk/conf/SdkConf$SdkConfBuilder;

    invoke-direct {v1}, Lcom/sixents/sdk/conf/SdkConf$SdkConfBuilder;-><init>()V

    .line 3
    sget v2, Lcom/sixents/sdk/types/APIType;->API_TYPE_AK:I

    invoke-virtual {v1, v2}, Lcom/sixents/sdk/conf/SdkConf$SdkConfBuilder;->keyType(I)Lcom/sixents/sdk/conf/SdkConf$SdkConfBuilder;

    move-result-object v1

    .line 4
    iget-object v2, p0, Lcn/mucang/jiakaoyi/uilib/rtmc/i/a;->b:Lcn/mucang/jiakaoyi/uilib/socket/model/GpsStationModel;

    iget-object v2, v2, Lcn/mucang/jiakaoyi/uilib/socket/model/GpsStationModel;->key:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/sixents/sdk/conf/SdkConf$SdkConfBuilder;->key(Ljava/lang/String;)Lcom/sixents/sdk/conf/SdkConf$SdkConfBuilder;

    move-result-object v1

    .line 5
    iget-object v2, p0, Lcn/mucang/jiakaoyi/uilib/rtmc/i/a;->b:Lcn/mucang/jiakaoyi/uilib/socket/model/GpsStationModel;

    iget-object v2, v2, Lcn/mucang/jiakaoyi/uilib/socket/model/GpsStationModel;->secret:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/sixents/sdk/conf/SdkConf$SdkConfBuilder;->secret(Ljava/lang/String;)Lcom/sixents/sdk/conf/SdkConf$SdkConfBuilder;

    move-result-object v1

    .line 6
    iget-object v2, p0, Lcn/mucang/jiakaoyi/uilib/rtmc/i/a;->b:Lcn/mucang/jiakaoyi/uilib/socket/model/GpsStationModel;

    iget-object v2, v2, Lcn/mucang/jiakaoyi/uilib/socket/model/GpsStationModel;->sn:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/sixents/sdk/conf/SdkConf$SdkConfBuilder;->devID(Ljava/lang/String;)Lcom/sixents/sdk/conf/SdkConf$SdkConfBuilder;

    move-result-object v1

    const-string v2, "Tablet"

    .line 7
    invoke-virtual {v1, v2}, Lcom/sixents/sdk/conf/SdkConf$SdkConfBuilder;->devType(Ljava/lang/String;)Lcom/sixents/sdk/conf/SdkConf$SdkConfBuilder;

    move-result-object v1

    .line 8
    invoke-virtual {v1, p0}, Lcom/sixents/sdk/conf/SdkConf$SdkConfBuilder;->diffDataCallBack(Lcom/sixents/sdk/base/IDiffDataCallBack;)Lcom/sixents/sdk/conf/SdkConf$SdkConfBuilder;

    move-result-object v1

    .line 9
    invoke-virtual {v1, p0}, Lcom/sixents/sdk/conf/SdkConf$SdkConfBuilder;->statusCallBack(Lcom/sixents/sdk/base/IStatusCallBack;)Lcom/sixents/sdk/conf/SdkConf$SdkConfBuilder;

    move-result-object v1

    .line 10
    invoke-virtual {v1}, Lcom/sixents/sdk/conf/SdkConf$SdkConfBuilder;->build()Lcom/sixents/sdk/conf/SdkConf;

    move-result-object v1

    .line 11
    invoke-static {}, Lcom/sixents/sdk/base/SixentsSDKManagerImp;->getInstance()Lcom/sixents/sdk/base/SixentsSDKManagerImp;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/sixents/sdk/base/SixentsSDKManagerImp;->sdkInit(Lcom/sixents/sdk/conf/SdkConf;)I

    move-result v1

    if-nez v1, :cond_0

    .line 12
    invoke-static {}, Lcom/sixents/sdk/base/SixentsSDKManagerImp;->getInstance()Lcom/sixents/sdk/base/SixentsSDKManagerImp;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sixents/sdk/base/SixentsSDKManagerImp;->sdkStart()I

    move-result v1

    :cond_0
    if-nez v1, :cond_1

    const/4 v2, 0x1

    goto :goto_0

    :cond_1
    const/4 v2, 0x0

    .line 13
    :goto_0
    iput-boolean v2, p0, Lcn/mucang/jiakaoyi/uilib/rtmc/i/a;->d:Z

    if-nez v2, :cond_2

    .line 14
    invoke-static {}, Lcom/sixents/sdk/base/SixentsSDKManagerImp;->getInstance()Lcom/sixents/sdk/base/SixentsSDKManagerImp;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sixents/sdk/base/SixentsSDKManagerImp;->sdkFinal()I

    const-string v2, "\u516d\u5206\u521d\u59cb\u5316\u5931\u8d25:"

    .line 15
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v2, v1}, Lkotlin/jvm/internal/r;->m(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcn/mucang/android/jiakaoyi/framework/log/f;->f(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v1

    .line 16
    iput-boolean v0, p0, Lcn/mucang/jiakaoyi/uilib/rtmc/i/a;->d:Z

    .line 17
    invoke-static {}, Lcom/sixents/sdk/base/SixentsSDKManagerImp;->getInstance()Lcom/sixents/sdk/base/SixentsSDKManagerImp;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sixents/sdk/base/SixentsSDKManagerImp;->sdkFinal()I

    .line 18
    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    const-string v1, "\u516d\u5206\u521d\u59cb\u5316\u5f02\u5e38:"

    invoke-static {v1, v0}, Lkotlin/jvm/internal/r;->m(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcn/mucang/android/jiakaoyi/framework/log/f;->f(Ljava/lang/Object;)V

    .line 19
    :cond_2
    :goto_1
    iget-boolean v0, p0, Lcn/mucang/jiakaoyi/uilib/rtmc/i/a;->d:Z

    return v0
.end method

.method public c()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcn/mucang/jiakaoyi/uilib/rtmc/i/a;->d:Z

    return v0
.end method

.method public d(Lcn/mucang/android/jiakaoyi/signal/handle/gps/d;)I
    .locals 5

    const-string v0, "gga"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget v0, p0, Lcn/mucang/jiakaoyi/uilib/rtmc/i/a;->e:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcn/mucang/jiakaoyi/uilib/rtmc/i/a;->e:I

    .line 2
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcn/mucang/jiakaoyi/uilib/rtmc/i/a;->f:J

    sub-long/2addr v0, v2

    const-wide/32 v2, 0x1d4c0

    cmp-long v4, v0, v2

    if-ltz v4, :cond_0

    .line 3
    iget v0, p0, Lcn/mucang/jiakaoyi/uilib/rtmc/i/a;->e:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string v1, "\u516d\u5206\u53d1\u9001gga\u6570\u636e:"

    invoke-static {v1, v0}, Lkotlin/jvm/internal/r;->m(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcn/mucang/android/jiakaoyi/framework/log/f;->q(Ljava/lang/Object;)V

    .line 4
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcn/mucang/jiakaoyi/uilib/rtmc/i/a;->f:J

    .line 5
    :cond_0
    invoke-static {}, Lcom/sixents/sdk/base/SixentsSDKManagerImp;->getInstance()Lcom/sixents/sdk/base/SixentsSDKManagerImp;

    move-result-object v0

    iget-object p1, p1, Lcn/mucang/android/jiakaoyi/signal/handle/gps/d;->a:Ljava/lang/String;

    invoke-virtual {v0, p1}, Lcom/sixents/sdk/base/SixentsSDKManagerImp;->sdkSendGGAStr(Ljava/lang/String;)I

    move-result p1

    return p1
.end method

.method public diffdata([BI)V
    .locals 8

    .line 1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 2
    iget-wide v2, p0, Lcn/mucang/jiakaoyi/uilib/rtmc/i/a;->c:J

    const-wide/16 v4, 0x0

    cmp-long v6, v2, v4

    if-nez v6, :cond_0

    const/16 v2, 0x3e8

    int-to-long v2, v2

    sub-long v2, v0, v2

    .line 3
    iput-wide v2, p0, Lcn/mucang/jiakaoyi/uilib/rtmc/i/a;->c:J

    .line 4
    :cond_0
    iget-wide v2, p0, Lcn/mucang/jiakaoyi/uilib/rtmc/i/a;->c:J

    sub-long v2, v0, v2

    .line 5
    sget-object v4, Lcn/mucang/android/jiakaoyi/signal/c/d;->m:Lcn/mucang/android/jiakaoyi/signal/c/d;

    invoke-virtual {v4}, Lcn/mucang/android/jiakaoyi/signal/c/d;->h()I

    move-result v4

    const-wide/16 v5, 0x1388

    cmp-long v7, v2, v5

    if-gtz v7, :cond_1

    .line 6
    invoke-static {}, Lcn/mucang/android/core/config/MucangConfig;->v()Z

    move-result v5

    if-nez v5, :cond_1

    const/4 v5, 0x4

    if-eq v4, v5, :cond_3

    .line 7
    :cond_1
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "liuFen : len="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-nez p1, :cond_2

    const/4 v6, 0x0

    goto :goto_0

    :cond_2
    array-length v6, p1

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    :goto_0
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v6, " , dt="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v6, " , gpsType="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ",dataType="

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Lcn/mucang/android/jiakaoyi/framework/log/f;->q(Ljava/lang/Object;)V

    .line 8
    :cond_3
    invoke-static {}, Lcn/mucang/android/jiakaoyi/signal/gps/GpsAnalysis;->f()Lcn/mucang/android/jiakaoyi/signal/gps/GpsAnalysis;

    move-result-object p2

    long-to-int v3, v2

    invoke-virtual {p2, v3}, Lcn/mucang/android/jiakaoyi/signal/gps/GpsAnalysis;->i(I)V

    .line 9
    iput-wide v0, p0, Lcn/mucang/jiakaoyi/uilib/rtmc/i/a;->c:J

    .line 10
    invoke-virtual {p0}, Lcn/mucang/jiakaoyi/uilib/rtmc/d;->a()Lcn/mucang/jiakaoyi/uilib/rtmc/f;

    move-result-object p2

    if-nez p2, :cond_4

    goto :goto_1

    :cond_4
    invoke-interface {p2, p1}, Lcn/mucang/jiakaoyi/uilib/rtmc/f;->b([B)V

    :goto_1
    return-void
.end method

.method public e()V
    .locals 1

    const-string v0, "start\u516d\u5206\u57fa\u7ad9"

    .line 1
    invoke-static {v0}, Lcn/mucang/android/jiakaoyi/framework/log/f;->f(Ljava/lang/Object;)V

    return-void
.end method

.method public f()V
    .locals 1

    const/4 v0, 0x0

    .line 1
    iput-boolean v0, p0, Lcn/mucang/jiakaoyi/uilib/rtmc/i/a;->d:Z

    const-string v0, "stop\u516d\u5206\u57fa\u7ad9"

    .line 2
    invoke-static {v0}, Lcn/mucang/android/jiakaoyi/framework/log/f;->f(Ljava/lang/Object;)V

    .line 3
    invoke-static {}, Lcom/sixents/sdk/base/SixentsSDKManagerImp;->getInstance()Lcom/sixents/sdk/base/SixentsSDKManagerImp;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sixents/sdk/base/SixentsSDKManagerImp;->sdkStop()I

    .line 4
    invoke-static {}, Lcom/sixents/sdk/base/SixentsSDKManagerImp;->getInstance()Lcom/sixents/sdk/base/SixentsSDKManagerImp;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sixents/sdk/base/SixentsSDKManagerImp;->sdkFinal()I

    .line 5
    iget-object v0, p0, Lcn/mucang/jiakaoyi/uilib/rtmc/i/a;->b:Lcn/mucang/jiakaoyi/uilib/socket/model/GpsStationModel;

    iget-object v0, v0, Lcn/mucang/jiakaoyi/uilib/socket/model/GpsStationModel;->sn:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 6
    iget-object v0, p0, Lcn/mucang/jiakaoyi/uilib/rtmc/i/a;->b:Lcn/mucang/jiakaoyi/uilib/socket/model/GpsStationModel;

    iget-object v0, v0, Lcn/mucang/jiakaoyi/uilib/socket/model/GpsStationModel;->sn:Ljava/lang/String;

    invoke-static {v0}, Lcn/mucang/jiakaoyi/uilib/socket/u;->s(Ljava/lang/String;)Z

    :cond_0
    return-void
.end method

.method public getstatus(I)V
    .locals 2

    if-ltz p1, :cond_0

    const/16 v0, 0x579

    if-eq p1, v0, :cond_1

    const/16 v0, 0x515

    if-eq p1, v0, :cond_1

    const/16 v0, 0x51b

    if-eq p1, v0, :cond_1

    const/16 v0, 0x4b1

    if-eq p1, v0, :cond_1

    const/16 v0, 0x5dd

    if-eq p1, v0, :cond_1

    .line 1
    :cond_0
    iget v0, p0, Lcn/mucang/jiakaoyi/uilib/rtmc/i/a;->g:I

    if-eq p1, v0, :cond_1

    .line 2
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string v1, "\u516d\u5206\u57fa\u7ad9\u72b6\u6001\u56de\u8c03:"

    invoke-static {v1, v0}, Lkotlin/jvm/internal/r;->m(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcn/mucang/android/jiakaoyi/framework/log/f;->f(Ljava/lang/Object;)V

    .line 3
    :cond_1
    iput p1, p0, Lcn/mucang/jiakaoyi/uilib/rtmc/i/a;->g:I

    return-void
.end method
