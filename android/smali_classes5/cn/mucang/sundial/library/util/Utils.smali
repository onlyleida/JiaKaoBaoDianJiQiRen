.class public final Lcn/mucang/sundial/library/util/Utils;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\u000b\n\u0002\u0008\u0007\u0008\u00c6\u0002\u0018\u00002\u00020\u0001B\t\u0008\u0002\u00a2\u0006\u0004\u0008\u0007\u0010\u0008J\u000f\u0010\u0003\u001a\u00020\u0002H\u0007\u00a2\u0006\u0004\u0008\u0003\u0010\u0004J\r\u0010\u0005\u001a\u00020\u0002\u00a2\u0006\u0004\u0008\u0005\u0010\u0004J\r\u0010\u0006\u001a\u00020\u0002\u00a2\u0006\u0004\u0008\u0006\u0010\u0004\u00a8\u0006\t"
    }
    d2 = {
        "Lcn/mucang/sundial/library/util/Utils;",
        "",
        "",
        "initConnection",
        "()Z",
        "initHost",
        "initDefaultParams",
        "<init>",
        "()V",
        "library_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x1,
        0xf
    }
.end annotation


# static fields
.field public static final INSTANCE:Lcn/mucang/sundial/library/util/Utils;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lcn/mucang/sundial/library/util/Utils;

    invoke-direct {v0}, Lcn/mucang/sundial/library/util/Utils;-><init>()V

    sput-object v0, Lcn/mucang/sundial/library/util/Utils;->INSTANCE:Lcn/mucang/sundial/library/util/Utils;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final initConnection()Z
    .locals 4

    .line 1
    invoke-static {}, Lcn/mucang/sundial/android/SundialManager;->getInstance()Lcn/mucang/sundial/android/SundialManager;

    move-result-object v0

    invoke-virtual {v0}, Lcn/mucang/sundial/android/SundialManager;->hasConnection()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    return v1

    :cond_0
    const-string v0, "\u521d\u59cb\u5316\u53c2\u6570"

    .line 2
    invoke-static {v0}, Lcn/mucang/sundial/android/log/SundialLog;->normal(Ljava/lang/Object;)V

    .line 3
    sget-object v0, Lcn/mucang/sundial/library/util/Utils;->INSTANCE:Lcn/mucang/sundial/library/util/Utils;

    invoke-virtual {v0}, Lcn/mucang/sundial/library/util/Utils;->initHost()Z

    move-result v2

    const/4 v3, 0x0

    if-eqz v2, :cond_1

    invoke-virtual {v0}, Lcn/mucang/sundial/library/util/Utils;->initDefaultParams()Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    if-nez v0, :cond_2

    return v3

    :cond_2
    const-string v0, "socket\u670d\u52a1\u8fde\u63a5\u521d\u59cb\u5316"

    .line 4
    invoke-static {v0}, Lcn/mucang/sundial/android/log/SundialLog;->normal(Ljava/lang/Object;)V

    .line 5
    invoke-static {}, Lcn/mucang/sundial/android/SundialManager;->getInstance()Lcn/mucang/sundial/android/SundialManager;

    move-result-object v0

    invoke-virtual {v0}, Lcn/mucang/sundial/android/SundialManager;->init()V

    return v1
.end method


# virtual methods
.method public final initDefaultParams()Z
    .locals 9

    const-string v0, "init_default_param"

    const/4 v1, 0x0

    .line 1
    invoke-static {v0, v1}, Lcn/mucang/sundial/android/tcp/utils/PreferenceUtils;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    const/4 v3, 0x1

    if-eqz v2, :cond_0

    const-string v0, "\u5df2\u7ecf\u521d\u59cb\u5316\u9ed8\u8ba4\u53c2\u6570"

    .line 2
    invoke-static {v0}, Lcn/mucang/sundial/android/log/SundialLog;->normal(Ljava/lang/Object;)V

    return v3

    .line 3
    :cond_0
    new-instance v2, Lcn/mucang/sundial/library/http/ParamsApi;

    invoke-direct {v2}, Lcn/mucang/sundial/library/http/ParamsApi;-><init>()V

    invoke-virtual {v2}, Lcn/mucang/sundial/library/http/ParamsApi;->getDefaultConfig()Lcn/mucang/sundial/library/entity/DefaultConfig;

    move-result-object v2

    if-eqz v2, :cond_10

    .line 4
    invoke-virtual {v2}, Lcn/mucang/sundial/library/entity/DefaultConfig;->getAppParam()Ljava/util/Map;

    move-result-object v4

    if-eqz v4, :cond_10

    .line 5
    invoke-virtual {v2}, Lcn/mucang/sundial/library/entity/DefaultConfig;->getDeviceConfig()Lcn/mucang/sundial/android/tcp/message/training/DeviceConfig;

    move-result-object v5

    if-eqz v5, :cond_10

    .line 6
    invoke-virtual {v2}, Lcn/mucang/sundial/library/entity/DefaultConfig;->getInfo()Lcn/mucang/sundial/library/entity/DefaultConfig$Info;

    move-result-object v6

    .line 7
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "\u83b7\u53d6\u5230\u7684\u9ed8\u8ba4\u53c2\u6570\uff1a"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcn/mucang/sundial/android/log/SundialLog;->normal(Ljava/lang/Object;)V

    .line 8
    invoke-static {}, Lcn/mucang/sundial/android/tcp/data/DataManager;->getInstance()Lcn/mucang/sundial/android/tcp/data/DataManager;

    move-result-object v2

    invoke-virtual {v2, v4}, Lcn/mucang/sundial/android/tcp/data/DataManager;->saveDeviceParameter(Ljava/util/Map;)V

    .line 9
    invoke-static {}, Lcn/mucang/sundial/android/tcp/data/DataManager;->getInstance()Lcn/mucang/sundial/android/tcp/data/DataManager;

    move-result-object v2

    invoke-virtual {v2, v5}, Lcn/mucang/sundial/android/tcp/data/DataManager;->saveDeviceConfig(Lcn/mucang/sundial/android/tcp/message/training/DeviceConfig;)V

    if-eqz v6, :cond_e

    .line 10
    invoke-static {}, Lcn/mucang/sundial/android/tcp/data/DataManager;->getInstance()Lcn/mucang/sundial/android/tcp/data/DataManager;

    move-result-object v2

    const-string v5, "DataManager.getInstance()"

    invoke-static {v2, v5}, Lkotlin/jvm/internal/r;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v2}, Lcn/mucang/sundial/android/tcp/data/DataManager;->getDeviceInfo()Lcn/mucang/sundial/android/db/entity/DeviceInfo;

    move-result-object v2

    if-eqz v2, :cond_1

    goto :goto_0

    :cond_1
    new-instance v2, Lcn/mucang/sundial/android/db/entity/DeviceInfo;

    invoke-direct {v2}, Lcn/mucang/sundial/android/db/entity/DeviceInfo;-><init>()V

    .line 11
    :goto_0
    invoke-virtual {v2}, Lcn/mucang/sundial/android/db/entity/DeviceInfo;->getDevicePhone()Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_3

    invoke-static {v5}, Lkotlin/text/l;->r(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_2

    goto :goto_1

    :cond_2
    const/4 v5, 0x0

    goto :goto_2

    :cond_3
    :goto_1
    const/4 v5, 0x1

    :goto_2
    if-eqz v5, :cond_4

    .line 12
    invoke-virtual {v6}, Lcn/mucang/sundial/library/entity/DefaultConfig$Info;->getPhone()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Lcn/mucang/sundial/android/db/entity/DeviceInfo;->setDevicePhone(Ljava/lang/String;)V

    .line 13
    :cond_4
    invoke-virtual {v2}, Lcn/mucang/sundial/android/db/entity/DeviceInfo;->getCarNo()Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_6

    invoke-static {v5}, Lkotlin/text/l;->r(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_5

    goto :goto_3

    :cond_5
    const/4 v5, 0x0

    goto :goto_4

    :cond_6
    :goto_3
    const/4 v5, 0x1

    :goto_4
    if-eqz v5, :cond_7

    .line 14
    invoke-virtual {v6}, Lcn/mucang/sundial/library/entity/DefaultConfig$Info;->getCarNo()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Lcn/mucang/sundial/android/db/entity/DeviceInfo;->setCarNo(Ljava/lang/String;)V

    .line 15
    :cond_7
    invoke-virtual {v2}, Lcn/mucang/sundial/android/db/entity/DeviceInfo;->getSerialNo()Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_9

    invoke-static {v5}, Lkotlin/text/l;->r(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_8

    goto :goto_5

    :cond_8
    const/4 v5, 0x0

    goto :goto_6

    :cond_9
    :goto_5
    const/4 v5, 0x1

    :goto_6
    if-nez v5, :cond_a

    invoke-virtual {v2}, Lcn/mucang/sundial/android/db/entity/DeviceInfo;->getSerialNo()Ljava/lang/String;

    move-result-object v5

    const-string v7, "P777"

    invoke-static {v5, v7}, Lkotlin/jvm/internal/r;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_d

    .line 16
    :cond_a
    invoke-virtual {v6}, Lcn/mucang/sundial/library/entity/DefaultConfig$Info;->getSerialNo()Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_b

    invoke-static {v5}, Lkotlin/text/l;->r(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_c

    :cond_b
    const/4 v1, 0x1

    :cond_c
    if-nez v1, :cond_d

    .line 17
    invoke-virtual {v6}, Lcn/mucang/sundial/library/entity/DefaultConfig$Info;->getSerialNo()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Lcn/mucang/sundial/android/db/entity/DeviceInfo;->setSerialNo(Ljava/lang/String;)V

    .line 18
    :cond_d
    invoke-static {}, Lcn/mucang/sundial/android/tcp/data/DataManager;->getInstance()Lcn/mucang/sundial/android/tcp/data/DataManager;

    move-result-object v1

    invoke-virtual {v1, v2}, Lcn/mucang/sundial/android/tcp/data/DataManager;->updateDeviceInfo(Lcn/mucang/sundial/android/db/entity/DeviceInfo;)V

    .line 19
    :cond_e
    invoke-static {}, Lcn/mucang/sundial/android/tcp/data/DataManager;->getInstance()Lcn/mucang/sundial/android/tcp/data/DataManager;

    move-result-object v1

    invoke-virtual {v1}, Lcn/mucang/sundial/android/tcp/data/DataManager;->deviceParameterCount()J

    move-result-wide v1

    invoke-interface {v4}, Ljava/util/Map;->size()I

    move-result v4

    add-int/lit8 v4, v4, -0x5

    int-to-long v4, v4

    cmp-long v6, v1, v4

    if-lez v6, :cond_f

    .line 20
    invoke-static {v0, v3}, Lcn/mucang/sundial/android/tcp/utils/PreferenceUtils;->putBoolean(Ljava/lang/String;Z)V

    const-string v0, "\u8bbe\u7f6e\u9ed8\u8ba4\u53c2\u6570\u5f00\u5173\uff1aTURE"

    .line 21
    invoke-static {v0}, Lcn/mucang/sundial/android/log/SundialLog;->normal(Ljava/lang/Object;)V

    :cond_f
    return v3

    :cond_10
    return v1
.end method

.method public final initHost()Z
    .locals 8

    .line 1
    new-instance v0, Lcn/mucang/sundial/library/http/ConfigApi;

    invoke-direct {v0}, Lcn/mucang/sundial/library/http/ConfigApi;-><init>()V

    invoke-virtual {v0}, Lcn/mucang/sundial/library/http/ConfigApi;->getPlatform()Lcn/mucang/sundial/library/entity/Platform;

    move-result-object v0

    .line 2
    invoke-static {}, Lcn/mucang/sundial/android/SundialManager;->getInstance()Lcn/mucang/sundial/android/SundialManager;

    move-result-object v1

    const-string v2, "SundialManager.getInstance()"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/r;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v1}, Lcn/mucang/sundial/android/SundialManager;->getDeviceInfo()Lcn/mucang/sundial/android/db/entity/DeviceInfo;

    move-result-object v1

    const-string v3, "deviceInfo"

    const/4 v4, 0x1

    if-eqz v0, :cond_3

    .line 3
    invoke-virtual {v0}, Lcn/mucang/sundial/library/entity/Platform;->isValid()Z

    move-result v5

    if-eqz v5, :cond_3

    .line 4
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "\u83b7\u53d6\u7684\u5e73\u53f0\u53c2\u6570\uff1a"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcn/mucang/sundial/android/log/SundialLog;->normal(Ljava/lang/Object;)V

    .line 5
    invoke-static {}, Lcn/mucang/sundial/android/SundialManager;->getInstance()Lcn/mucang/sundial/android/SundialManager;

    move-result-object v5

    invoke-static {v5, v2}, Lkotlin/jvm/internal/r;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    invoke-virtual {v5, v6, v7}, Lcn/mucang/sundial/android/SundialManager;->setLastTimeStamps(J)V

    .line 6
    invoke-virtual {v0}, Lcn/mucang/sundial/library/entity/Platform;->getIp()Ljava/lang/String;

    move-result-object v5

    invoke-static {v1, v3}, Lkotlin/jvm/internal/r;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v1}, Lcn/mucang/sundial/android/db/entity/DeviceInfo;->getPlatformIp()Ljava/lang/String;

    move-result-object v3

    invoke-static {v5, v3}, Lkotlin/jvm/internal/r;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    xor-int/2addr v3, v4

    if-nez v3, :cond_0

    invoke-virtual {v0}, Lcn/mucang/sundial/library/entity/Platform;->getPort()I

    move-result v3

    invoke-virtual {v1}, Lcn/mucang/sundial/android/db/entity/DeviceInfo;->getPlatformPort()I

    move-result v5

    if-ne v3, v5, :cond_0

    invoke-virtual {v0}, Lcn/mucang/sundial/library/entity/Platform;->getHostUrl()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1}, Lcn/mucang/sundial/android/db/entity/DeviceInfo;->getPlatformHost()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Lkotlin/jvm/internal/r;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    xor-int/2addr v3, v4

    if-eqz v3, :cond_1

    .line 7
    :cond_0
    invoke-virtual {v0}, Lcn/mucang/sundial/library/entity/Platform;->getPort()I

    move-result v3

    invoke-virtual {v1, v3}, Lcn/mucang/sundial/android/db/entity/DeviceInfo;->setPlatformPort(I)V

    .line 8
    invoke-virtual {v0}, Lcn/mucang/sundial/library/entity/Platform;->getIp()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcn/mucang/sundial/android/db/entity/DeviceInfo;->setPlatformIp(Ljava/lang/String;)V

    .line 9
    invoke-virtual {v0}, Lcn/mucang/sundial/library/entity/Platform;->getHostUrl()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcn/mucang/sundial/android/db/entity/DeviceInfo;->setPlatformHost(Ljava/lang/String;)V

    .line 10
    invoke-static {}, Lcn/mucang/sundial/android/tcp/data/DataManager;->getInstance()Lcn/mucang/sundial/android/tcp/data/DataManager;

    move-result-object v3

    invoke-virtual {v3, v1}, Lcn/mucang/sundial/android/tcp/data/DataManager;->updateDeviceInfo(Lcn/mucang/sundial/android/db/entity/DeviceInfo;)V

    .line 11
    :cond_1
    invoke-virtual {v0}, Lcn/mucang/sundial/library/entity/Platform;->getMileageAccuracy()I

    move-result v1

    if-lez v1, :cond_2

    .line 12
    invoke-static {}, Lcn/mucang/sundial/android/SundialManager;->getInstance()Lcn/mucang/sundial/android/SundialManager;

    move-result-object v1

    invoke-static {v1, v2}, Lkotlin/jvm/internal/r;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0}, Lcn/mucang/sundial/library/entity/Platform;->getMileageAccuracy()I

    move-result v3

    invoke-virtual {v1, v3}, Lcn/mucang/sundial/android/SundialManager;->setMileageAccuracy(I)V

    .line 13
    :cond_2
    invoke-static {}, Lcn/mucang/sundial/android/SundialManager;->getInstance()Lcn/mucang/sundial/android/SundialManager;

    move-result-object v1

    invoke-virtual {v0}, Lcn/mucang/sundial/library/entity/Platform;->getLoginMode()I

    move-result v3

    invoke-virtual {v1, v3}, Lcn/mucang/sundial/android/SundialManager;->setLoginMode(I)V

    .line 14
    invoke-static {}, Lcn/mucang/sundial/android/SundialManager;->getInstance()Lcn/mucang/sundial/android/SundialManager;

    move-result-object v1

    invoke-virtual {v0}, Lcn/mucang/sundial/library/entity/Platform;->getTakePhotoVoice()Z

    move-result v3

    invoke-virtual {v1, v3}, Lcn/mucang/sundial/android/SundialManager;->setTakePhotoVoice(Z)V

    .line 15
    invoke-static {}, Lcn/mucang/sundial/android/SundialManager;->getInstance()Lcn/mucang/sundial/android/SundialManager;

    move-result-object v1

    invoke-static {v1, v2}, Lkotlin/jvm/internal/r;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0}, Lcn/mucang/sundial/library/entity/Platform;->getWaitTakePhoto()I

    move-result v3

    invoke-virtual {v1, v3}, Lcn/mucang/sundial/android/SundialManager;->setTakePhotoDelay(I)V

    .line 16
    invoke-static {}, Lcn/mucang/sundial/android/SundialManager;->getInstance()Lcn/mucang/sundial/android/SundialManager;

    move-result-object v1

    invoke-static {v1, v2}, Lkotlin/jvm/internal/r;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0}, Lcn/mucang/sundial/library/entity/Platform;->getLearnDataFactor()F

    move-result v3

    invoke-virtual {v1, v3}, Lcn/mucang/sundial/android/SundialManager;->setLearnDataFactor(F)V

    .line 17
    invoke-static {}, Lcn/mucang/sundial/android/SundialManager;->getInstance()Lcn/mucang/sundial/android/SundialManager;

    move-result-object v1

    invoke-static {v1, v2}, Lkotlin/jvm/internal/r;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0}, Lcn/mucang/sundial/library/entity/Platform;->getSubject2LearnDataFactor()F

    move-result v3

    invoke-virtual {v1, v3}, Lcn/mucang/sundial/android/SundialManager;->setK2LearnDataFactor(F)V

    .line 18
    invoke-static {}, Lcn/mucang/sundial/android/SundialManager;->getInstance()Lcn/mucang/sundial/android/SundialManager;

    move-result-object v1

    invoke-static {v1, v2}, Lkotlin/jvm/internal/r;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0}, Lcn/mucang/sundial/library/entity/Platform;->getSubject3LearnDataFactor()F

    move-result v3

    invoke-virtual {v1, v3}, Lcn/mucang/sundial/android/SundialManager;->setK3LearnDataFactor(F)V

    .line 19
    invoke-static {}, Lcn/mucang/sundial/android/SundialManager;->getInstance()Lcn/mucang/sundial/android/SundialManager;

    move-result-object v1

    invoke-static {v1, v2}, Lkotlin/jvm/internal/r;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0}, Lcn/mucang/sundial/library/entity/Platform;->getMaxSpeed()F

    move-result v3

    invoke-virtual {v1, v3}, Lcn/mucang/sundial/android/SundialManager;->setMaxSpeedLimit(F)V

    .line 20
    invoke-static {}, Lcn/mucang/sundial/android/SundialManager;->getInstance()Lcn/mucang/sundial/android/SundialManager;

    move-result-object v1

    invoke-static {v1, v2}, Lkotlin/jvm/internal/r;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0}, Lcn/mucang/sundial/library/entity/Platform;->getLogInOutSecond()I

    move-result v3

    invoke-virtual {v1, v3}, Lcn/mucang/sundial/android/SundialManager;->setLogInOutSecond(I)V

    .line 21
    invoke-static {}, Lcn/mucang/sundial/android/SundialManager;->getInstance()Lcn/mucang/sundial/android/SundialManager;

    move-result-object v1

    invoke-static {v1, v2}, Lkotlin/jvm/internal/r;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0}, Lcn/mucang/sundial/library/entity/Platform;->getLiveImageSecond()I

    move-result v0

    invoke-virtual {v1, v0}, Lcn/mucang/sundial/android/SundialManager;->setLiveImageSecond(I)V

    goto :goto_0

    :cond_3
    const-string v0, "\u83b7\u53d6\u4e0d\u5230\u5e73\u53f0\u53c2\u6570\u6216\u65e0\u6548\u5e73\u53f0"

    .line 22
    invoke-static {v0}, Lcn/mucang/sundial/android/log/SundialLog;->normal(Ljava/lang/Object;)V

    .line 23
    new-instance v0, Lcn/mucang/sundial/library/entity/Platform;

    invoke-direct {v0}, Lcn/mucang/sundial/library/entity/Platform;-><init>()V

    .line 24
    invoke-static {v1, v3}, Lkotlin/jvm/internal/r;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v1}, Lcn/mucang/sundial/android/db/entity/DeviceInfo;->getPlatformIp()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcn/mucang/sundial/library/entity/Platform;->setIp(Ljava/lang/String;)V

    .line 25
    invoke-virtual {v1}, Lcn/mucang/sundial/android/db/entity/DeviceInfo;->getPlatformPort()I

    move-result v2

    invoke-virtual {v0, v2}, Lcn/mucang/sundial/library/entity/Platform;->setPort(I)V

    .line 26
    invoke-virtual {v1}, Lcn/mucang/sundial/android/db/entity/DeviceInfo;->getPlatformHost()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcn/mucang/sundial/library/entity/Platform;->setHostUrl(Ljava/lang/String;)V

    .line 27
    invoke-virtual {v0}, Lcn/mucang/sundial/library/entity/Platform;->isValid()Z

    move-result v0

    if-nez v0, :cond_4

    const/4 v0, 0x0

    return v0

    :cond_4
    :goto_0
    return v4
.end method
