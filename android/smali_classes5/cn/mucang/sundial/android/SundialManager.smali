.class public Lcn/mucang/sundial/android/SundialManager;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/mucang/sundial/android/SundialManager$SundialManagerHolder;
    }
.end annotation


# instance fields
.field private mSocketManager:Lcn/mucang/sundial/android/tcp/SocketManager;


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcn/mucang/sundial/android/SundialManager$1;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcn/mucang/sundial/android/SundialManager;-><init>()V

    return-void
.end method

.method private synthetic a(Lcn/mucang/sundial/android/tcp/message/SendMessage;Lcn/mucang/sundial/android/tcp/PacketResponseObserver$RequestResultListener;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcn/mucang/sundial/android/SundialManager;->mSocketManager:Lcn/mucang/sundial/android/tcp/SocketManager;

    invoke-virtual {v0, p1, p2}, Lcn/mucang/sundial/android/tcp/SocketManager;->sendMessage(Lcn/mucang/sundial/android/tcp/message/SendMessage;Lcn/mucang/sundial/android/tcp/PacketResponseObserver$RequestResultListener;)Z

    return-void
.end method

.method private fixDeviceInfo(Lcn/mucang/sundial/android/db/entity/DeviceInfo;)V
    .locals 3
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "MissingPermission"
        }
    .end annotation

    if-nez p1, :cond_0

    return-void

    .line 1
    :cond_0
    invoke-static {}, Lcn/mucang/sundial/android/tcp/utils/DeviceUtils;->getImei()Ljava/lang/String;

    move-result-object v0

    .line 2
    invoke-virtual {p1}, Lcn/mucang/sundial/android/db/entity/DeviceInfo;->getImei()Ljava/lang/String;

    move-result-object v1

    const-string v2, "13301289901"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-static {v0}, Lcn/mucang/android/core/utils/n0;->g(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 3
    invoke-virtual {p1, v0}, Lcn/mucang/sundial/android/db/entity/DeviceInfo;->setImei(Ljava/lang/String;)V

    .line 4
    :cond_1
    invoke-virtual {p1}, Lcn/mucang/sundial/android/db/entity/DeviceInfo;->getSerialNo()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcn/mucang/android/core/utils/n0;->e(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    const-string v0, "P777"

    .line 5
    invoke-virtual {p1, v0}, Lcn/mucang/sundial/android/db/entity/DeviceInfo;->setSerialNo(Ljava/lang/String;)V

    :cond_2
    return-void
.end method

.method public static getInstance()Lcn/mucang/sundial/android/SundialManager;
    .locals 1

    .line 1
    invoke-static {}, Lcn/mucang/sundial/android/SundialManager$SundialManagerHolder;->access$100()Lcn/mucang/sundial/android/SundialManager;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public asyncSendMessage(Lcn/mucang/sundial/android/tcp/message/SendMessage;Lcn/mucang/sundial/android/tcp/PacketResponseObserver$RequestResultListener;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcn/mucang/sundial/android/SundialManager;->mSocketManager:Lcn/mucang/sundial/android/tcp/SocketManager;

    if-eqz v0, :cond_0

    .line 2
    new-instance v0, Lcn/mucang/sundial/android/a;

    invoke-direct {v0, p0, p1, p2}, Lcn/mucang/sundial/android/a;-><init>(Lcn/mucang/sundial/android/SundialManager;Lcn/mucang/sundial/android/tcp/message/SendMessage;Lcn/mucang/sundial/android/tcp/PacketResponseObserver$RequestResultListener;)V

    invoke-static {v0}, Lcn/mucang/android/ui/framework/fetcher/ThreadPool;->a(Ljava/lang/Runnable;)V

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 3
    invoke-interface {p2, p1}, Lcn/mucang/sundial/android/tcp/PacketResponseObserver$RequestResultListener;->onResult(Z)V

    :goto_0
    return-void
.end method

.method public synthetic b(Lcn/mucang/sundial/android/tcp/message/SendMessage;Lcn/mucang/sundial/android/tcp/PacketResponseObserver$RequestResultListener;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcn/mucang/sundial/android/SundialManager;->a(Lcn/mucang/sundial/android/tcp/message/SendMessage;Lcn/mucang/sundial/android/tcp/PacketResponseObserver$RequestResultListener;)V

    return-void
.end method

.method public coachLogin(Lcn/mucang/sundial/android/db/entity/CoachInfo;)Z
    .locals 3

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    .line 1
    :cond_0
    invoke-virtual {p1, v0}, Lcn/mucang/sundial/android/db/entity/CoachInfo;->setStatus(I)V

    .line 2
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-virtual {p1, v1, v2}, Lcn/mucang/sundial/android/db/entity/CoachInfo;->setUpdateTime(J)V

    .line 3
    invoke-static {}, Lcn/mucang/sundial/android/tcp/data/DataManager;->getInstance()Lcn/mucang/sundial/android/tcp/data/DataManager;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcn/mucang/sundial/android/tcp/data/DataManager;->saveCoach(Lcn/mucang/sundial/android/db/entity/CoachInfo;)V

    .line 4
    iget-object v1, p0, Lcn/mucang/sundial/android/SundialManager;->mSocketManager:Lcn/mucang/sundial/android/tcp/SocketManager;

    if-eqz v1, :cond_1

    .line 5
    new-instance v0, Lcn/mucang/sundial/android/tcp/message/training/send/CoachLoginRequest;

    invoke-direct {v0}, Lcn/mucang/sundial/android/tcp/message/training/send/CoachLoginRequest;-><init>()V

    .line 6
    invoke-virtual {p1}, Lcn/mucang/sundial/android/db/entity/CoachInfo;->getCoachNo()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcn/mucang/sundial/android/tcp/message/training/send/CoachLoginRequest;->setCoachNo(Ljava/lang/String;)V

    .line 7
    invoke-virtual {p1}, Lcn/mucang/sundial/android/db/entity/CoachInfo;->getIdCard()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcn/mucang/sundial/android/tcp/message/training/send/CoachLoginRequest;->setIdCard(Ljava/lang/String;)V

    .line 8
    invoke-virtual {p1}, Lcn/mucang/sundial/android/db/entity/CoachInfo;->getTeachType()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcn/mucang/sundial/android/tcp/message/training/send/CoachLoginRequest;->setTeachType(Ljava/lang/String;)V

    .line 9
    invoke-static {}, Lcn/mucang/sundial/android/tcp/data/gnss/GNSSData;->getGNSSData()Lcn/mucang/sundial/android/tcp/data/gnss/GNSSData;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcn/mucang/sundial/android/tcp/message/training/send/CoachLoginRequest;->setGnssData(Lcn/mucang/sundial/android/tcp/data/gnss/GNSSData;)V

    .line 10
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Socket\u53d1\u9001\uff1a"

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcn/mucang/sundial/android/log/SundialLog;->com(Ljava/lang/Object;)V

    .line 11
    iget-object p1, p0, Lcn/mucang/sundial/android/SundialManager;->mSocketManager:Lcn/mucang/sundial/android/tcp/SocketManager;

    invoke-virtual {p1, v0}, Lcn/mucang/sundial/android/tcp/SocketManager;->sendMessage(Lcn/mucang/sundial/android/tcp/message/SendMessage;)Z

    move-result p1

    return p1

    :cond_1
    return v0
.end method

.method public coachLoginSuccess()Z
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcn/mucang/sundial/android/SundialManager;->getLastCoach()Lcn/mucang/sundial/android/db/entity/CoachInfo;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Lcn/mucang/sundial/android/db/entity/CoachInfo;->getStatus()I

    move-result v0

    sget-object v1, Lcn/mucang/sundial/android/db/entity/CoachInfo$STATUS;->LOGIN:Lcn/mucang/sundial/android/db/entity/CoachInfo$STATUS;

    invoke-virtual {v1}, Lcn/mucang/sundial/android/db/entity/CoachInfo$STATUS;->getValue()I

    move-result v1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public coachLogout(Ljava/lang/String;)Z
    .locals 2

    .line 1
    iget-object v0, p0, Lcn/mucang/sundial/android/SundialManager;->mSocketManager:Lcn/mucang/sundial/android/tcp/SocketManager;

    if-eqz v0, :cond_0

    .line 2
    new-instance v0, Lcn/mucang/sundial/android/tcp/message/training/send/CoachLogoutRequest;

    invoke-direct {v0}, Lcn/mucang/sundial/android/tcp/message/training/send/CoachLogoutRequest;-><init>()V

    .line 3
    invoke-virtual {v0, p1}, Lcn/mucang/sundial/android/tcp/message/training/send/CoachLogoutRequest;->setCoachNo(Ljava/lang/String;)V

    .line 4
    invoke-static {}, Lcn/mucang/sundial/android/tcp/data/gnss/GNSSData;->getGNSSData()Lcn/mucang/sundial/android/tcp/data/gnss/GNSSData;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcn/mucang/sundial/android/tcp/message/training/send/CoachLogoutRequest;->setGnssData(Lcn/mucang/sundial/android/tcp/data/gnss/GNSSData;)V

    .line 5
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Socket\u53d1\u9001\uff1a"

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcn/mucang/sundial/android/log/SundialLog;->com(Ljava/lang/Object;)V

    .line 6
    iget-object p1, p0, Lcn/mucang/sundial/android/SundialManager;->mSocketManager:Lcn/mucang/sundial/android/tcp/SocketManager;

    invoke-virtual {p1, v0}, Lcn/mucang/sundial/android/tcp/SocketManager;->sendMessage(Lcn/mucang/sundial/android/tcp/message/SendMessage;)Z

    move-result p1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public createCourseCode(Ljava/lang/String;I)Ljava/lang/String;
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 2
    invoke-static {p1}, Lcn/mucang/sundial/android/tcp/utils/DeviceUtils;->getCarTypeCode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/4 p1, 0x2

    if-ne p2, p1, :cond_0

    const/16 p1, 0xd

    goto :goto_0

    :cond_0
    const/16 p1, 0x24

    :goto_0
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, "0000"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public createRawMessage(Lcn/mucang/sundial/android/tcp/message/SendMessage;)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcn/mucang/sundial/android/tcp/message/SendMessage;",
            ")",
            "Ljava/util/List<",
            "Lcn/mucang/sundial/android/tcp/message/RawMessage;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcn/mucang/sundial/android/SundialManager;->mSocketManager:Lcn/mucang/sundial/android/tcp/SocketManager;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0, p1}, Lcn/mucang/sundial/android/tcp/SocketManager;->createRawMessage(Lcn/mucang/sundial/android/tcp/message/SendMessage;)Ljava/util/List;

    move-result-object p1

    return-object p1

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public destroy()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcn/mucang/sundial/android/SundialManager;->mSocketManager:Lcn/mucang/sundial/android/tcp/SocketManager;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Lcn/mucang/sundial/android/tcp/SocketManager;->destroy()V

    const/4 v0, 0x0

    .line 3
    iput-object v0, p0, Lcn/mucang/sundial/android/SundialManager;->mSocketManager:Lcn/mucang/sundial/android/tcp/SocketManager;

    .line 4
    :cond_0
    invoke-static {}, Lcn/mucang/sundial/android/timer/alive/HeartBeatManager;->getInstance()Lcn/mucang/sundial/android/timer/alive/HeartBeatManager;

    move-result-object v0

    invoke-virtual {v0}, Lcn/mucang/sundial/android/timer/alive/HeartBeatManager;->stop()V

    .line 5
    invoke-static {}, Lcn/mucang/sundial/android/timer/location/LocationReportManager;->getInstance()Lcn/mucang/sundial/android/timer/location/LocationReportManager;

    move-result-object v0

    invoke-virtual {v0}, Lcn/mucang/sundial/android/timer/location/LocationReportManager;->stop()V

    return-void
.end method

.method public getAccuracyMultiplier()I
    .locals 2

    const-string v0, "mileage_accuracy"

    const/16 v1, 0x64

    .line 1
    invoke-static {v0, v1}, Lcn/mucang/sundial/android/tcp/utils/PreferenceUtils;->getInt(Ljava/lang/String;I)I

    move-result v0

    if-gtz v0, :cond_0

    goto :goto_0

    :cond_0
    move v1, v0

    :goto_0
    const/16 v0, 0x3e8

    .line 2
    div-int/2addr v0, v1

    return v0
.end method

.method public getClearRecordTime()J
    .locals 3

    const-string v0, "clear_record_timestamp"

    const-wide/16 v1, 0x0

    .line 1
    invoke-static {v0, v1, v2}, Lcn/mucang/sundial/android/tcp/utils/PreferenceUtils;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    return-wide v0
.end method

.method public getCoachInfo(Ljava/lang/String;)Lcn/mucang/sundial/android/db/entity/CoachInfo;
    .locals 1

    .line 1
    invoke-static {}, Lcn/mucang/sundial/android/tcp/data/DataManager;->getInstance()Lcn/mucang/sundial/android/tcp/data/DataManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcn/mucang/sundial/android/tcp/data/DataManager;->getCoachInfo(Ljava/lang/String;)Lcn/mucang/sundial/android/db/entity/CoachInfo;

    move-result-object p1

    return-object p1
.end method

.method public getCourseTypeByCourseCode(Ljava/lang/String;)I
    .locals 2

    if-eqz p1, :cond_1

    .line 1
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    const/16 v1, 0xa

    if-eq v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x3

    const/4 v1, 0x4

    .line 2
    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1

    return p1

    :cond_1
    :goto_0
    const/4 p1, 0x0

    return p1
.end method

.method public getDeviceInfo()Lcn/mucang/sundial/android/db/entity/DeviceInfo;
    .locals 1

    .line 1
    invoke-static {}, Lcn/mucang/sundial/android/tcp/data/DataManager;->getInstance()Lcn/mucang/sundial/android/tcp/data/DataManager;

    move-result-object v0

    invoke-virtual {v0}, Lcn/mucang/sundial/android/tcp/data/DataManager;->getDeviceInfo()Lcn/mucang/sundial/android/db/entity/DeviceInfo;

    move-result-object v0

    return-object v0
.end method

.method public getK2LearnDataFactor()F
    .locals 2

    const-string v0, "k2_learn_data_factor"

    const v1, 0x3f99999a    # 1.2f

    .line 1
    invoke-static {v0, v1}, Lcn/mucang/sundial/android/tcp/utils/PreferenceUtils;->getFloat(Ljava/lang/String;F)F

    move-result v0

    return v0
.end method

.method public getK3LearnDataFactor()F
    .locals 2

    const-string v0, "k3_learn_data_factor"

    const v1, 0x3f99999a    # 1.2f

    .line 1
    invoke-static {v0, v1}, Lcn/mucang/sundial/android/tcp/utils/PreferenceUtils;->getFloat(Ljava/lang/String;F)F

    move-result v0

    return v0
.end method

.method public getLastCoach()Lcn/mucang/sundial/android/db/entity/CoachInfo;
    .locals 1

    .line 1
    invoke-static {}, Lcn/mucang/sundial/android/tcp/data/DataManager;->getInstance()Lcn/mucang/sundial/android/tcp/data/DataManager;

    move-result-object v0

    invoke-virtual {v0}, Lcn/mucang/sundial/android/tcp/data/DataManager;->getLastCoach()Lcn/mucang/sundial/android/db/entity/CoachInfo;

    move-result-object v0

    return-object v0
.end method

.method public getLastStudent()Lcn/mucang/sundial/android/db/entity/StudentInfo;
    .locals 1

    .line 1
    invoke-static {}, Lcn/mucang/sundial/android/tcp/data/DataManager;->getInstance()Lcn/mucang/sundial/android/tcp/data/DataManager;

    move-result-object v0

    invoke-virtual {v0}, Lcn/mucang/sundial/android/tcp/data/DataManager;->getLastStudent()Lcn/mucang/sundial/android/db/entity/StudentInfo;

    move-result-object v0

    return-object v0
.end method

.method public getLastStudents()Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcn/mucang/sundial/android/db/entity/StudentInfo;",
            ">;"
        }
    .end annotation

    .line 1
    invoke-static {}, Lcn/mucang/sundial/android/tcp/data/DataManager;->getInstance()Lcn/mucang/sundial/android/tcp/data/DataManager;

    move-result-object v0

    invoke-virtual {p0}, Lcn/mucang/sundial/android/SundialManager;->getClearRecordTime()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcn/mucang/sundial/android/tcp/data/DataManager;->getLastTenStudentInfo(J)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getLastTimeStamps()J
    .locals 3

    const-string v0, "app.last_timestamp"

    const-wide v1, 0x184ad7294c3L

    .line 1
    invoke-static {v0, v1, v2}, Lcn/mucang/sundial/android/tcp/utils/PreferenceUtils;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    return-wide v0
.end method

.method public getLearnDataFactor()F
    .locals 2

    const-string v0, "learn_data_factor"

    const/high16 v1, 0x3f800000    # 1.0f

    .line 1
    invoke-static {v0, v1}, Lcn/mucang/sundial/android/tcp/utils/PreferenceUtils;->getFloat(Ljava/lang/String;F)F

    move-result v0

    return v0
.end method

.method public getLiveImageSecond()I
    .locals 4

    const-string v0, "live_image_second"

    const/4 v1, 0x5

    .line 1
    invoke-static {v0, v1}, Lcn/mucang/sundial/android/tcp/utils/PreferenceUtils;->getInt(Ljava/lang/String;I)I

    move-result v0

    if-lt v0, v1, :cond_1

    const/16 v2, 0x5a

    if-le v0, v2, :cond_0

    goto :goto_0

    :cond_0
    move v1, v0

    goto :goto_1

    .line 2
    :cond_1
    :goto_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "\u62cd\u7167\u5012\u8ba1\u65f6\u4fdd\u62a4\u6570: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " to 5"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcn/mucang/sundial/android/log/SundialLog;->normal(Ljava/lang/Object;)V

    :goto_1
    return v1
.end method

.method public getLogInOutSecond()I
    .locals 4

    const-string v0, "login_out_second"

    const/4 v1, 0x5

    .line 1
    invoke-static {v0, v1}, Lcn/mucang/sundial/android/tcp/utils/PreferenceUtils;->getInt(Ljava/lang/String;I)I

    move-result v0

    const/4 v2, 0x3

    if-lt v0, v2, :cond_1

    const/16 v2, 0x5a

    if-le v0, v2, :cond_0

    goto :goto_0

    :cond_0
    move v1, v0

    goto :goto_1

    .line 2
    :cond_1
    :goto_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "\u62cd\u7167\u5012\u8ba1\u65f6\u4fdd\u62a4\u6570: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " to 5"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcn/mucang/sundial/android/log/SundialLog;->normal(Ljava/lang/Object;)V

    :goto_1
    return v1
.end method

.method public getMaxSpeedLimit()F
    .locals 2

    const-string v0, "max_speed_limit"

    const/high16 v1, 0x42700000    # 60.0f

    .line 1
    invoke-static {v0, v1}, Lcn/mucang/sundial/android/tcp/utils/PreferenceUtils;->getFloat(Ljava/lang/String;F)F

    move-result v0

    return v0
.end method

.method public getMileageAccuracy()I
    .locals 2

    const-string v0, "mileage_accuracy"

    const/16 v1, 0x64

    .line 1
    invoke-static {v0, v1}, Lcn/mucang/sundial/android/tcp/utils/PreferenceUtils;->getInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public getNextMessageSequenceGenerator()Lcn/mucang/sundial/android/tcp/message/NextMessageSequenceGenerator;
    .locals 1

    .line 1
    iget-object v0, p0, Lcn/mucang/sundial/android/SundialManager;->mSocketManager:Lcn/mucang/sundial/android/tcp/SocketManager;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Lcn/mucang/sundial/android/tcp/SocketManager;->getNextMessageSequenceGenerator()Lcn/mucang/sundial/android/tcp/message/NextMessageSequenceGenerator;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public getRegisterInfo()Lcn/mucang/sundial/android/db/entity/RegisterInfo;
    .locals 1

    .line 1
    invoke-static {}, Lcn/mucang/sundial/android/tcp/data/DataManager;->getInstance()Lcn/mucang/sundial/android/tcp/data/DataManager;

    move-result-object v0

    invoke-virtual {v0}, Lcn/mucang/sundial/android/tcp/data/DataManager;->getRegisterInfo()Lcn/mucang/sundial/android/db/entity/RegisterInfo;

    move-result-object v0

    return-object v0
.end method

.method public getStudentInfo(Ljava/lang/String;)Lcn/mucang/sundial/android/db/entity/StudentInfo;
    .locals 1

    .line 1
    invoke-static {}, Lcn/mucang/sundial/android/tcp/data/DataManager;->getInstance()Lcn/mucang/sundial/android/tcp/data/DataManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcn/mucang/sundial/android/tcp/data/DataManager;->getStudentInfo(Ljava/lang/String;)Lcn/mucang/sundial/android/db/entity/StudentInfo;

    move-result-object p1

    return-object p1
.end method

.method public getTakePhotoDelay()I
    .locals 3

    const-string v0, "take_photo_delay"

    const/4 v1, 0x3

    .line 1
    invoke-static {v0, v1}, Lcn/mucang/sundial/android/tcp/utils/PreferenceUtils;->getInt(Ljava/lang/String;I)I

    move-result v0

    if-lt v0, v1, :cond_0

    const/16 v1, 0x5a

    if-le v0, v1, :cond_1

    .line 2
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\u62cd\u7167\u5012\u8ba1\u65f6\u4fdd\u62a4\u6570: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " to 5"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcn/mucang/sundial/android/log/SundialLog;->normal(Ljava/lang/Object;)V

    const/4 v0, 0x5

    :cond_1
    return v0
.end method

.method public hasConnection()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcn/mucang/sundial/android/SundialManager;->mSocketManager:Lcn/mucang/sundial/android/tcp/SocketManager;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcn/mucang/sundial/android/tcp/SocketManager;->hasConnection()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public init()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcn/mucang/sundial/android/SundialManager;->mSocketManager:Lcn/mucang/sundial/android/tcp/SocketManager;

    if-nez v0, :cond_0

    .line 2
    invoke-static {}, Lcn/mucang/sundial/android/tcp/SocketManager;->getInstance()Lcn/mucang/sundial/android/tcp/SocketManager;

    move-result-object v0

    iput-object v0, p0, Lcn/mucang/sundial/android/SundialManager;->mSocketManager:Lcn/mucang/sundial/android/tcp/SocketManager;

    .line 3
    invoke-virtual {v0}, Lcn/mucang/sundial/android/tcp/SocketManager;->start()V

    :cond_0
    return-void
.end method

.method public isLocationDataStrategy()Z
    .locals 2

    const-string v0, "location_data_strategy"

    const/4 v1, 0x1

    .line 1
    invoke-static {v0, v1}, Lcn/mucang/sundial/android/tcp/utils/PreferenceUtils;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public isOBDLocationStrategy()Z
    .locals 2

    const-string v0, "obd_location_strategy"

    const/4 v1, 0x0

    .line 1
    invoke-static {v0, v1}, Lcn/mucang/sundial/android/tcp/utils/PreferenceUtils;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public isOnlyGZMiniQRCode()Z
    .locals 3

    const-string v0, "login_mode"

    const/4 v1, 0x0

    .line 1
    invoke-static {v0, v1}, Lcn/mucang/sundial/android/tcp/utils/PreferenceUtils;->getInt(Ljava/lang/String;I)I

    move-result v0

    const/4 v2, 0x2

    if-ne v0, v2, :cond_0

    const/4 v1, 0x1

    :cond_0
    return v1
.end method

.method public isOnlyIcCarMode()Z
    .locals 3

    const-string v0, "login_mode"

    const/4 v1, 0x0

    .line 1
    invoke-static {v0, v1}, Lcn/mucang/sundial/android/tcp/utils/PreferenceUtils;->getInt(Ljava/lang/String;I)I

    move-result v0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_0

    const/4 v1, 0x1

    :cond_0
    return v1
.end method

.method public isRegister()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcn/mucang/sundial/android/SundialManager;->mSocketManager:Lcn/mucang/sundial/android/tcp/SocketManager;

    if-eqz v0, :cond_0

    invoke-static {}, Lcn/mucang/sundial/android/tcp/data/DataManager;->getInstance()Lcn/mucang/sundial/android/tcp/data/DataManager;

    move-result-object v0

    invoke-virtual {v0}, Lcn/mucang/sundial/android/tcp/data/DataManager;->getRegisterInfo()Lcn/mucang/sundial/android/db/entity/RegisterInfo;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isTrainingDisable()Z
    .locals 1

    .line 1
    invoke-static {}, Lcn/mucang/sundial/android/tcp/data/DataManager;->getInstance()Lcn/mucang/sundial/android/tcp/data/DataManager;

    move-result-object v0

    invoke-virtual {v0}, Lcn/mucang/sundial/android/tcp/data/DataManager;->isTrainingDisable()Z

    move-result v0

    return v0
.end method

.method public playTakePhotoVoice()Z
    .locals 2

    const-string v0, "take_photo_voice"

    const/4 v1, 0x1

    .line 1
    invoke-static {v0, v1}, Lcn/mucang/sundial/android/tcp/utils/PreferenceUtils;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public queryGlobalCode(ILjava/lang/String;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcn/mucang/sundial/android/SundialManager;->mSocketManager:Lcn/mucang/sundial/android/tcp/SocketManager;

    if-eqz v0, :cond_0

    .line 2
    new-instance v0, Lcn/mucang/sundial/android/tcp/message/training/send/QueryCodeRequest;

    invoke-direct {v0}, Lcn/mucang/sundial/android/tcp/message/training/send/QueryCodeRequest;-><init>()V

    .line 3
    invoke-virtual {v0, p1}, Lcn/mucang/sundial/android/tcp/message/training/send/QueryCodeRequest;->setCodeType(I)V

    .line 4
    invoke-virtual {v0, p2}, Lcn/mucang/sundial/android/tcp/message/training/send/QueryCodeRequest;->setQueryField(Ljava/lang/String;)V

    .line 5
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "Socket\u53d1\u9001\uff1a"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcn/mucang/sundial/android/log/SundialLog;->com(Ljava/lang/Object;)V

    .line 6
    iget-object p1, p0, Lcn/mucang/sundial/android/SundialManager;->mSocketManager:Lcn/mucang/sundial/android/tcp/SocketManager;

    invoke-virtual {p1, v0}, Lcn/mucang/sundial/android/tcp/SocketManager;->sendMessage(Lcn/mucang/sundial/android/tcp/message/SendMessage;)Z

    :cond_0
    return-void
.end method

.method public register(Lcn/mucang/sundial/android/db/entity/DeviceInfo;)Z
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcn/mucang/sundial/android/SundialManager;->isRegister()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    .line 2
    :cond_0
    iget-object v0, p0, Lcn/mucang/sundial/android/SundialManager;->mSocketManager:Lcn/mucang/sundial/android/tcp/SocketManager;

    if-eqz v0, :cond_2

    .line 3
    new-instance v0, Lcn/mucang/sundial/android/tcp/message/send/RegisterRequest;

    invoke-direct {v0}, Lcn/mucang/sundial/android/tcp/message/send/RegisterRequest;-><init>()V

    if-nez p1, :cond_1

    .line 4
    invoke-static {}, Lcn/mucang/sundial/android/tcp/data/DataManager;->getInstance()Lcn/mucang/sundial/android/tcp/data/DataManager;

    move-result-object p1

    invoke-virtual {p1}, Lcn/mucang/sundial/android/tcp/data/DataManager;->getDeviceInfo()Lcn/mucang/sundial/android/db/entity/DeviceInfo;

    move-result-object p1

    .line 5
    invoke-direct {p0, p1}, Lcn/mucang/sundial/android/SundialManager;->fixDeviceInfo(Lcn/mucang/sundial/android/db/entity/DeviceInfo;)V

    goto :goto_0

    .line 6
    :cond_1
    invoke-direct {p0, p1}, Lcn/mucang/sundial/android/SundialManager;->fixDeviceInfo(Lcn/mucang/sundial/android/db/entity/DeviceInfo;)V

    .line 7
    invoke-static {}, Lcn/mucang/sundial/android/tcp/data/DataManager;->getInstance()Lcn/mucang/sundial/android/tcp/data/DataManager;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcn/mucang/sundial/android/tcp/data/DataManager;->updateDeviceInfo(Lcn/mucang/sundial/android/db/entity/DeviceInfo;)V

    .line 8
    :goto_0
    invoke-virtual {p1}, Lcn/mucang/sundial/android/db/entity/DeviceInfo;->getProvinceId()I

    move-result v1

    invoke-virtual {v0, v1}, Lcn/mucang/sundial/android/tcp/message/send/RegisterRequest;->setProvinceId(I)V

    .line 9
    invoke-virtual {p1}, Lcn/mucang/sundial/android/db/entity/DeviceInfo;->getCityId()I

    move-result v1

    invoke-virtual {v0, v1}, Lcn/mucang/sundial/android/tcp/message/send/RegisterRequest;->setCityId(I)V

    .line 10
    invoke-virtual {p1}, Lcn/mucang/sundial/android/db/entity/DeviceInfo;->getManufacturer()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcn/mucang/sundial/android/tcp/message/send/RegisterRequest;->setManufacturer(Ljava/lang/String;)V

    .line 11
    invoke-virtual {p1}, Lcn/mucang/sundial/android/db/entity/DeviceInfo;->getSerialNo()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcn/mucang/sundial/android/tcp/message/send/RegisterRequest;->setSerialNo(Ljava/lang/String;)V

    .line 12
    invoke-virtual {p1}, Lcn/mucang/sundial/android/db/entity/DeviceInfo;->getDeviceModel()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcn/mucang/sundial/android/tcp/message/send/RegisterRequest;->setDeviceModel(Ljava/lang/String;)V

    .line 13
    invoke-virtual {p1}, Lcn/mucang/sundial/android/db/entity/DeviceInfo;->getColor()I

    move-result v1

    invoke-virtual {v0, v1}, Lcn/mucang/sundial/android/tcp/message/send/RegisterRequest;->setColor(I)V

    .line 14
    invoke-virtual {p1}, Lcn/mucang/sundial/android/db/entity/DeviceInfo;->getImei()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcn/mucang/sundial/android/tcp/message/send/RegisterRequest;->setImei(Ljava/lang/String;)V

    .line 15
    invoke-virtual {p1}, Lcn/mucang/sundial/android/db/entity/DeviceInfo;->getCarNo()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcn/mucang/sundial/android/tcp/message/send/RegisterRequest;->setCarno(Ljava/lang/String;)V

    .line 16
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Socket\u53d1\u9001\uff1a"

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcn/mucang/sundial/android/log/SundialLog;->com(Ljava/lang/Object;)V

    .line 17
    iget-object p1, p0, Lcn/mucang/sundial/android/SundialManager;->mSocketManager:Lcn/mucang/sundial/android/tcp/SocketManager;

    invoke-virtual {p1, v0}, Lcn/mucang/sundial/android/tcp/SocketManager;->sendMessage(Lcn/mucang/sundial/android/tcp/message/SendMessage;)Z

    move-result p1

    return p1

    :cond_2
    return v1
.end method

.method public reportCourseRecord(Lcn/mucang/sundial/android/tcp/message/training/send/ReportCourseRecordRequest;Lcn/mucang/sundial/android/tcp/PacketResponseObserver$RequestResultListener;)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2}, Lcn/mucang/sundial/android/SundialManager;->asyncSendMessage(Lcn/mucang/sundial/android/tcp/message/SendMessage;Lcn/mucang/sundial/android/tcp/PacketResponseObserver$RequestResultListener;)V

    return-void
.end method

.method public resendPacket(I[I)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcn/mucang/sundial/android/SundialManager;->mSocketManager:Lcn/mucang/sundial/android/tcp/SocketManager;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0, p1, p2}, Lcn/mucang/sundial/android/tcp/SocketManager;->resendPacket(I[I)V

    :cond_0
    return-void
.end method

.method public saveCoach(Lcn/mucang/sundial/android/db/entity/CoachInfo;)V
    .locals 1

    .line 1
    invoke-static {}, Lcn/mucang/sundial/android/tcp/data/DataManager;->getInstance()Lcn/mucang/sundial/android/tcp/data/DataManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcn/mucang/sundial/android/tcp/data/DataManager;->saveCoach(Lcn/mucang/sundial/android/db/entity/CoachInfo;)V

    return-void
.end method

.method public saveStudent(Lcn/mucang/sundial/android/db/entity/StudentInfo;)V
    .locals 1

    .line 1
    invoke-static {}, Lcn/mucang/sundial/android/tcp/data/DataManager;->getInstance()Lcn/mucang/sundial/android/tcp/data/DataManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcn/mucang/sundial/android/tcp/data/DataManager;->saveStudent(Lcn/mucang/sundial/android/db/entity/StudentInfo;)V

    return-void
.end method

.method public sendMessage(Lcn/mucang/sundial/android/tcp/message/SendMessage;)V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-virtual {p0, p1, v0}, Lcn/mucang/sundial/android/SundialManager;->sendMessage(Lcn/mucang/sundial/android/tcp/message/SendMessage;Lcn/mucang/sundial/android/tcp/PacketResponseObserver$RequestResultListener;)Z

    return-void
.end method

.method public sendMessage(Lcn/mucang/sundial/android/tcp/message/SendMessage;Lcn/mucang/sundial/android/tcp/PacketResponseObserver$RequestResultListener;)Z
    .locals 1

    .line 2
    iget-object v0, p0, Lcn/mucang/sundial/android/SundialManager;->mSocketManager:Lcn/mucang/sundial/android/tcp/SocketManager;

    if-eqz v0, :cond_0

    .line 3
    invoke-virtual {v0, p1, p2}, Lcn/mucang/sundial/android/tcp/SocketManager;->sendMessage(Lcn/mucang/sundial/android/tcp/message/SendMessage;Lcn/mucang/sundial/android/tcp/PacketResponseObserver$RequestResultListener;)Z

    move-result p1

    return p1

    :cond_0
    const/4 p1, 0x0

    .line 4
    invoke-interface {p2, p1}, Lcn/mucang/sundial/android/tcp/PacketResponseObserver$RequestResultListener;->onResult(Z)V

    return p1
.end method

.method public sendRawMessage(Lcn/mucang/sundial/android/tcp/message/RawMessage;)Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcn/mucang/sundial/android/SundialManager;->mSocketManager:Lcn/mucang/sundial/android/tcp/SocketManager;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0, p1}, Lcn/mucang/sundial/android/tcp/SocketManager;->sendRawMessage(Lcn/mucang/sundial/android/tcp/message/RawMessage;)Z

    move-result p1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public setClearRecordTime(J)V
    .locals 1

    const-string v0, "clear_record_timestamp"

    .line 1
    invoke-static {v0, p1, p2}, Lcn/mucang/sundial/android/tcp/utils/PreferenceUtils;->putLong(Ljava/lang/String;J)V

    return-void
.end method

.method public setK2LearnDataFactor(F)V
    .locals 1

    const-string v0, "k2_learn_data_factor"

    .line 1
    invoke-static {v0, p1}, Lcn/mucang/sundial/android/tcp/utils/PreferenceUtils;->putFloat(Ljava/lang/String;F)V

    return-void
.end method

.method public setK3LearnDataFactor(F)V
    .locals 1

    const-string v0, "k3_learn_data_factor"

    .line 1
    invoke-static {v0, p1}, Lcn/mucang/sundial/android/tcp/utils/PreferenceUtils;->putFloat(Ljava/lang/String;F)V

    return-void
.end method

.method public setLastTimeStamps(J)V
    .locals 1

    const-string v0, "app.last_timestamp"

    .line 1
    invoke-static {v0, p1, p2}, Lcn/mucang/sundial/android/tcp/utils/PreferenceUtils;->putLong(Ljava/lang/String;J)V

    return-void
.end method

.method public setLearnDataFactor(F)V
    .locals 1

    const-string v0, "learn_data_factor"

    .line 1
    invoke-static {v0, p1}, Lcn/mucang/sundial/android/tcp/utils/PreferenceUtils;->putFloat(Ljava/lang/String;F)V

    return-void
.end method

.method public setLiveImageSecond(I)V
    .locals 1

    const-string v0, "live_image_second"

    .line 1
    invoke-static {v0, p1}, Lcn/mucang/sundial/android/tcp/utils/PreferenceUtils;->putInt(Ljava/lang/String;I)V

    return-void
.end method

.method public setLocationDataStrategy(Z)V
    .locals 1

    const-string v0, "location_data_strategy"

    .line 1
    invoke-static {v0, p1}, Lcn/mucang/sundial/android/tcp/utils/PreferenceUtils;->putBoolean(Ljava/lang/String;Z)V

    return-void
.end method

.method public setLogInOutSecond(I)V
    .locals 1

    const-string v0, "login_out_second"

    .line 1
    invoke-static {v0, p1}, Lcn/mucang/sundial/android/tcp/utils/PreferenceUtils;->putInt(Ljava/lang/String;I)V

    return-void
.end method

.method public setLoginMode(I)V
    .locals 1

    const-string v0, "login_mode"

    .line 1
    invoke-static {v0, p1}, Lcn/mucang/sundial/android/tcp/utils/PreferenceUtils;->putInt(Ljava/lang/String;I)V

    return-void
.end method

.method public setMaxSpeedLimit(F)V
    .locals 2

    const/high16 v0, 0x42700000    # 60.0f

    cmpg-float v1, p1, v0

    if-gez v1, :cond_0

    const/high16 p1, 0x42700000    # 60.0f

    :cond_0
    const/high16 v0, 0x42b40000    # 90.0f

    cmpl-float v1, p1, v0

    if-lez v1, :cond_1

    const/high16 p1, 0x42b40000    # 90.0f

    :cond_1
    const-string v0, "max_speed_limit"

    .line 1
    invoke-static {v0, p1}, Lcn/mucang/sundial/android/tcp/utils/PreferenceUtils;->putFloat(Ljava/lang/String;F)V

    return-void
.end method

.method public setMileageAccuracy(I)V
    .locals 1

    const-string v0, "mileage_accuracy"

    .line 1
    invoke-static {v0, p1}, Lcn/mucang/sundial/android/tcp/utils/PreferenceUtils;->putInt(Ljava/lang/String;I)V

    return-void
.end method

.method public setOBDLocationStrategy(Z)V
    .locals 1

    const-string v0, "obd_location_strategy"

    .line 1
    invoke-static {v0, p1}, Lcn/mucang/sundial/android/tcp/utils/PreferenceUtils;->putBoolean(Ljava/lang/String;Z)V

    return-void
.end method

.method public setTakePhotoDelay(I)V
    .locals 1

    const-string v0, "take_photo_delay"

    .line 1
    invoke-static {v0, p1}, Lcn/mucang/sundial/android/tcp/utils/PreferenceUtils;->putInt(Ljava/lang/String;I)V

    return-void
.end method

.method public setTakePhotoVoice(Z)V
    .locals 1

    const-string v0, "take_photo_voice"

    .line 1
    invoke-static {v0, p1}, Lcn/mucang/sundial/android/tcp/utils/PreferenceUtils;->putBoolean(Ljava/lang/String;Z)V

    return-void
.end method

.method public studentForceLogout(Ljava/lang/String;J)Z
    .locals 4

    .line 1
    iget-object v0, p0, Lcn/mucang/sundial/android/SundialManager;->mSocketManager:Lcn/mucang/sundial/android/tcp/SocketManager;

    if-eqz v0, :cond_1

    .line 2
    invoke-static {}, Lcn/mucang/sundial/android/tcp/data/DataManager;->getInstance()Lcn/mucang/sundial/android/tcp/data/DataManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcn/mucang/sundial/android/tcp/data/DataManager;->getStudentInfo(Ljava/lang/String;)Lcn/mucang/sundial/android/db/entity/StudentInfo;

    move-result-object v0

    if-eqz v0, :cond_1

    const-wide/16 v1, 0x0

    cmp-long v3, p2, v1

    if-nez v3, :cond_0

    .line 3
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p2

    .line 4
    :cond_0
    new-instance v1, Lcn/mucang/sundial/android/tcp/message/training/send/StudentForceLogoutRequest;

    invoke-direct {v1}, Lcn/mucang/sundial/android/tcp/message/training/send/StudentForceLogoutRequest;-><init>()V

    .line 5
    invoke-virtual {v1, p1}, Lcn/mucang/sundial/android/tcp/message/training/send/StudentForceLogoutRequest;->setStudentNo(Ljava/lang/String;)V

    .line 6
    invoke-virtual {v0}, Lcn/mucang/sundial/android/db/entity/StudentInfo;->getClassroomId()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Lcn/mucang/sundial/android/tcp/message/training/send/StudentForceLogoutRequest;->setClassroomId(J)V

    .line 7
    invoke-static {p2, p3}, Lcn/mucang/sundial/android/tcp/data/gnss/GNSSData;->getGNSSData(J)Lcn/mucang/sundial/android/tcp/data/gnss/GNSSData;

    move-result-object p1

    invoke-virtual {v1, p1}, Lcn/mucang/sundial/android/tcp/message/training/send/StudentForceLogoutRequest;->setGnssData(Lcn/mucang/sundial/android/tcp/data/gnss/GNSSData;)V

    .line 8
    new-instance p1, Ljava/sql/Timestamp;

    invoke-direct {p1, p2, p3}, Ljava/sql/Timestamp;-><init>(J)V

    invoke-virtual {v1, p1}, Lcn/mucang/sundial/android/tcp/message/training/send/StudentForceLogoutRequest;->setTimestamp(Ljava/sql/Timestamp;)V

    .line 9
    invoke-virtual {v0}, Lcn/mucang/sundial/android/db/entity/StudentInfo;->getUpdateTime()J

    move-result-wide v2

    sub-long/2addr p2, v2

    const-wide/32 v2, 0xea60

    div-long/2addr p2, v2

    long-to-int p1, p2

    invoke-virtual {v1, p1}, Lcn/mucang/sundial/android/tcp/message/training/send/StudentForceLogoutRequest;->setCurrentDuration(I)V

    .line 10
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "Socket\u53d1\u9001\uff1a"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcn/mucang/sundial/android/log/SundialLog;->com(Ljava/lang/Object;)V

    .line 11
    iget-object p1, p0, Lcn/mucang/sundial/android/SundialManager;->mSocketManager:Lcn/mucang/sundial/android/tcp/SocketManager;

    invoke-virtual {p1, v1}, Lcn/mucang/sundial/android/tcp/SocketManager;->sendMessage(Lcn/mucang/sundial/android/tcp/message/SendMessage;)Z

    move-result p1

    return p1

    :cond_1
    const/4 p1, 0x0

    return p1
.end method

.method public studentLogin(Lcn/mucang/sundial/android/db/entity/StudentInfo;J)Z
    .locals 6

    const/4 v0, 0x0

    if-eqz p1, :cond_2

    .line 1
    invoke-virtual {p1}, Lcn/mucang/sundial/android/db/entity/StudentInfo;->infoValid()Z

    move-result v1

    if-nez v1, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    invoke-virtual {p1, v0}, Lcn/mucang/sundial/android/db/entity/StudentInfo;->setStatus(I)V

    .line 3
    invoke-virtual {p1, p2, p3}, Lcn/mucang/sundial/android/db/entity/StudentInfo;->setUpdateTime(J)V

    .line 4
    invoke-virtual {p1}, Lcn/mucang/sundial/android/db/entity/StudentInfo;->getClassroomId()J

    move-result-wide v1

    const-wide/16 v3, 0x0

    cmp-long v5, v1, v3

    if-gtz v5, :cond_1

    const-wide/16 v1, 0x3e8

    .line 5
    div-long v1, p2, v1

    invoke-virtual {p1, v1, v2}, Lcn/mucang/sundial/android/db/entity/StudentInfo;->setClassroomId(J)V

    .line 6
    :cond_1
    invoke-static {}, Lcn/mucang/sundial/android/tcp/data/DataManager;->getInstance()Lcn/mucang/sundial/android/tcp/data/DataManager;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcn/mucang/sundial/android/tcp/data/DataManager;->saveStudent(Lcn/mucang/sundial/android/db/entity/StudentInfo;)V

    .line 7
    iget-object v1, p0, Lcn/mucang/sundial/android/SundialManager;->mSocketManager:Lcn/mucang/sundial/android/tcp/SocketManager;

    if-eqz v1, :cond_2

    .line 8
    new-instance v0, Lcn/mucang/sundial/android/tcp/message/training/send/StudentLoginRequest;

    invoke-direct {v0}, Lcn/mucang/sundial/android/tcp/message/training/send/StudentLoginRequest;-><init>()V

    .line 9
    invoke-virtual {p1}, Lcn/mucang/sundial/android/db/entity/StudentInfo;->getStudentNo()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcn/mucang/sundial/android/tcp/message/training/send/StudentLoginRequest;->setStudentNo(Ljava/lang/String;)V

    .line 10
    invoke-virtual {p1}, Lcn/mucang/sundial/android/db/entity/StudentInfo;->getCoachNo()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcn/mucang/sundial/android/tcp/message/training/send/StudentLoginRequest;->setCoachNo(Ljava/lang/String;)V

    .line 11
    invoke-virtual {p1}, Lcn/mucang/sundial/android/db/entity/StudentInfo;->getCourseCode()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcn/mucang/sundial/android/tcp/message/training/send/StudentLoginRequest;->setCourseCode(Ljava/lang/String;)V

    .line 12
    invoke-virtual {p1}, Lcn/mucang/sundial/android/db/entity/StudentInfo;->getClassroomId()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcn/mucang/sundial/android/tcp/message/training/send/StudentLoginRequest;->setClassroomId(J)V

    .line 13
    invoke-static {p2, p3}, Lcn/mucang/sundial/android/tcp/data/gnss/GNSSData;->getGNSSData(J)Lcn/mucang/sundial/android/tcp/data/gnss/GNSSData;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcn/mucang/sundial/android/tcp/message/training/send/StudentLoginRequest;->setGnssData(Lcn/mucang/sundial/android/tcp/data/gnss/GNSSData;)V

    .line 14
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "Socket\u53d1\u9001\uff1a"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcn/mucang/sundial/android/log/SundialLog;->com(Ljava/lang/Object;)V

    .line 15
    iget-object p1, p0, Lcn/mucang/sundial/android/SundialManager;->mSocketManager:Lcn/mucang/sundial/android/tcp/SocketManager;

    invoke-virtual {p1, v0}, Lcn/mucang/sundial/android/tcp/SocketManager;->sendMessage(Lcn/mucang/sundial/android/tcp/message/SendMessage;)Z

    move-result p1

    return p1

    :cond_2
    :goto_0
    return v0
.end method

.method public studentLoginSuccess()Z
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcn/mucang/sundial/android/SundialManager;->getLastStudent()Lcn/mucang/sundial/android/db/entity/StudentInfo;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Lcn/mucang/sundial/android/db/entity/StudentInfo;->getStatus()I

    move-result v0

    sget-object v1, Lcn/mucang/sundial/android/db/entity/CoachInfo$STATUS;->LOGIN:Lcn/mucang/sundial/android/db/entity/CoachInfo$STATUS;

    invoke-virtual {v1}, Lcn/mucang/sundial/android/db/entity/CoachInfo$STATUS;->getValue()I

    move-result v1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public studentLogout(Ljava/lang/String;J)Z
    .locals 5

    .line 1
    iget-object v0, p0, Lcn/mucang/sundial/android/SundialManager;->mSocketManager:Lcn/mucang/sundial/android/tcp/SocketManager;

    if-eqz v0, :cond_3

    .line 2
    invoke-static {}, Lcn/mucang/sundial/android/tcp/data/DataManager;->getInstance()Lcn/mucang/sundial/android/tcp/data/DataManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcn/mucang/sundial/android/tcp/data/DataManager;->getStudentInfo(Ljava/lang/String;)Lcn/mucang/sundial/android/db/entity/StudentInfo;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 3
    invoke-static {}, Lcn/mucang/sundial/android/timer/train/TrainManager;->getInstance()Lcn/mucang/sundial/android/timer/train/TrainManager;

    move-result-object v1

    invoke-virtual {v1}, Lcn/mucang/sundial/android/timer/train/TrainManager;->getCurrentMileage()Ljava/math/BigDecimal;

    move-result-object v1

    invoke-virtual {v1}, Ljava/math/BigDecimal;->doubleValue()D

    move-result-wide v1

    invoke-static {}, Lcn/mucang/sundial/android/SundialManager;->getInstance()Lcn/mucang/sundial/android/SundialManager;

    move-result-object v3

    invoke-virtual {v3}, Lcn/mucang/sundial/android/SundialManager;->getAccuracyMultiplier()I

    move-result v3

    int-to-double v3, v3

    mul-double v1, v1, v3

    double-to-int v1, v1

    if-ltz v1, :cond_2

    const v2, 0xffff

    if-le v1, v2, :cond_0

    goto :goto_0

    :cond_0
    const-wide/16 v1, 0x0

    cmp-long v3, p2, v1

    if-nez v3, :cond_1

    .line 4
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p2

    .line 5
    :cond_1
    new-instance v1, Lcn/mucang/sundial/android/tcp/message/training/send/StudentLogoutRequest;

    invoke-direct {v1}, Lcn/mucang/sundial/android/tcp/message/training/send/StudentLogoutRequest;-><init>()V

    .line 6
    invoke-virtual {v1, p1}, Lcn/mucang/sundial/android/tcp/message/training/send/StudentLogoutRequest;->setStudentNo(Ljava/lang/String;)V

    .line 7
    invoke-virtual {v0}, Lcn/mucang/sundial/android/db/entity/StudentInfo;->getClassroomId()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Lcn/mucang/sundial/android/tcp/message/training/send/StudentLogoutRequest;->setClassroomId(J)V

    .line 8
    invoke-static {p2, p3}, Lcn/mucang/sundial/android/tcp/data/gnss/GNSSData;->getGNSSData(J)Lcn/mucang/sundial/android/tcp/data/gnss/GNSSData;

    move-result-object p1

    invoke-virtual {v1, p1}, Lcn/mucang/sundial/android/tcp/message/training/send/StudentLogoutRequest;->setGnssData(Lcn/mucang/sundial/android/tcp/data/gnss/GNSSData;)V

    .line 9
    new-instance p1, Ljava/sql/Timestamp;

    invoke-direct {p1, p2, p3}, Ljava/sql/Timestamp;-><init>(J)V

    invoke-virtual {v1, p1}, Lcn/mucang/sundial/android/tcp/message/training/send/StudentLogoutRequest;->setTimestamp(Ljava/sql/Timestamp;)V

    .line 10
    invoke-virtual {v0}, Lcn/mucang/sundial/android/db/entity/StudentInfo;->getUpdateTime()J

    move-result-wide v2

    sub-long/2addr p2, v2

    const-wide/32 v2, 0xea60

    div-long/2addr p2, v2

    long-to-int p1, p2

    invoke-virtual {v1, p1}, Lcn/mucang/sundial/android/tcp/message/training/send/StudentLogoutRequest;->setCurrentDuration(I)V

    .line 11
    invoke-static {}, Lcn/mucang/sundial/android/timer/train/TrainManager;->getInstance()Lcn/mucang/sundial/android/timer/train/TrainManager;

    move-result-object p1

    invoke-virtual {p1}, Lcn/mucang/sundial/android/timer/train/TrainManager;->getCurrentMileage()Ljava/math/BigDecimal;

    move-result-object p1

    invoke-virtual {v1, p1}, Lcn/mucang/sundial/android/tcp/message/training/send/StudentLogoutRequest;->setCurrentMileage(Ljava/math/BigDecimal;)V

    .line 12
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "Socket\u53d1\u9001\uff1a"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcn/mucang/sundial/android/log/SundialLog;->com(Ljava/lang/Object;)V

    .line 13
    iget-object p1, p0, Lcn/mucang/sundial/android/SundialManager;->mSocketManager:Lcn/mucang/sundial/android/tcp/SocketManager;

    invoke-virtual {p1, v1}, Lcn/mucang/sundial/android/tcp/SocketManager;->sendMessage(Lcn/mucang/sundial/android/tcp/message/SendMessage;)Z

    move-result p1

    return p1

    .line 14
    :cond_2
    :goto_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "\u672c\u6b21\u57f9\u8bad\u603b\u91cc\u7a0b\u8d85\u9650\u5236: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcn/mucang/sundial/android/timer/train/TrainManager;->getInstance()Lcn/mucang/sundial/android/timer/train/TrainManager;

    move-result-object v1

    invoke-virtual {v1}, Lcn/mucang/sundial/android/timer/train/TrainManager;->getCurrentMileage()Ljava/math/BigDecimal;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcn/mucang/sundial/android/log/SundialLog;->normal(Ljava/lang/Object;)V

    .line 15
    invoke-virtual {p0, p1, p2, p3}, Lcn/mucang/sundial/android/SundialManager;->studentForceLogout(Ljava/lang/String;J)Z

    move-result p1

    return p1

    :cond_3
    const/4 p1, 0x0

    return p1
.end method

.method public unregister()Z
    .locals 2

    .line 1
    iget-object v0, p0, Lcn/mucang/sundial/android/SundialManager;->mSocketManager:Lcn/mucang/sundial/android/tcp/SocketManager;

    if-eqz v0, :cond_0

    const-string v0, "Socket\u53d1\u9001\uff1a\u7ec8\u7aef\u6ce8\u9500"

    .line 2
    invoke-static {v0}, Lcn/mucang/sundial/android/log/SundialLog;->com(Ljava/lang/Object;)V

    .line 3
    iget-object v0, p0, Lcn/mucang/sundial/android/SundialManager;->mSocketManager:Lcn/mucang/sundial/android/tcp/SocketManager;

    new-instance v1, Lcn/mucang/sundial/android/tcp/message/send/UnregisterRequest;

    invoke-direct {v1}, Lcn/mucang/sundial/android/tcp/message/send/UnregisterRequest;-><init>()V

    invoke-virtual {v0, v1}, Lcn/mucang/sundial/android/tcp/SocketManager;->sendMessage(Lcn/mucang/sundial/android/tcp/message/SendMessage;)Z

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method
