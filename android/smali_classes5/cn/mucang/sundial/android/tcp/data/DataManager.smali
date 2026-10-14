.class public Lcn/mucang/sundial/android/tcp/data/DataManager;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/mucang/sundial/android/tcp/data/DataManager$DataManagerHolder;
    }
.end annotation


# instance fields
.field private coachInfo:Lcn/mucang/sundial/android/db/entity/CoachInfo;

.field private deviceConfig:Lcn/mucang/sundial/android/tcp/message/training/DeviceConfig;

.field private deviceInfo:Lcn/mucang/sundial/android/db/entity/DeviceInfo;

.field private registerInfo:Lcn/mucang/sundial/android/db/entity/RegisterInfo;

.field private studentInfo:Lcn/mucang/sundial/android/db/entity/StudentInfo;


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcn/mucang/sundial/android/tcp/data/DataManager$1;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcn/mucang/sundial/android/tcp/data/DataManager;-><init>()V

    return-void
.end method

.method private getDb()Lcn/mucang/android/core/db/a;
    .locals 1

    .line 1
    invoke-static {}, Lcn/mucang/sundial/android/db/SundialDb;->getInstance()Lcn/mucang/sundial/android/db/SundialDb;

    move-result-object v0

    invoke-virtual {v0}, Lcn/mucang/sundial/android/db/SundialDb;->getDb()Lcn/mucang/android/core/db/a;

    move-result-object v0

    return-object v0
.end method

.method public static getInstance()Lcn/mucang/sundial/android/tcp/data/DataManager;
    .locals 1

    .line 1
    invoke-static {}, Lcn/mucang/sundial/android/tcp/data/DataManager$DataManagerHolder;->access$100()Lcn/mucang/sundial/android/tcp/data/DataManager;

    move-result-object v0

    return-object v0
.end method

.method private updateDeviceParameterByDeviceInfo(Lcn/mucang/sundial/android/db/entity/DeviceInfo;)V
    .locals 2

    .line 1
    invoke-virtual {p1}, Lcn/mucang/sundial/android/db/entity/DeviceInfo;->getCarNo()Ljava/lang/String;

    move-result-object p1

    const-wide/16 v0, 0x83

    invoke-static {v0, v1, p1}, Lcn/mucang/sundial/android/tcp/message/Parameter;->create(JLjava/lang/String;)Lcn/mucang/sundial/android/tcp/message/Parameter;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcn/mucang/sundial/android/tcp/data/DataManager;->saveDeviceParameter(Lcn/mucang/sundial/android/tcp/message/Parameter;)V

    return-void
.end method


# virtual methods
.method public clearPhotoRecord(Ljava/lang/String;)V
    .locals 4

    .line 1
    invoke-static {}, Lcn/mucang/sundial/android/db/SundialDb;->getInstance()Lcn/mucang/sundial/android/db/SundialDb;

    move-result-object v0

    invoke-virtual {v0}, Lcn/mucang/sundial/android/db/SundialDb;->getDb()Lcn/mucang/android/core/db/a;

    move-result-object v0

    const-class v1, Lcn/mucang/sundial/android/db/entity/PhotoRecord;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    const-string p1, " photo_id = ? "

    invoke-virtual {v0, v1, p1, v2}, Lcn/mucang/android/core/db/a;->j(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/String;)I

    return-void
.end method

.method public clearRegisterInfo()V
    .locals 4

    .line 1
    invoke-static {}, Lcn/mucang/sundial/android/db/SundialDb;->getInstance()Lcn/mucang/sundial/android/db/SundialDb;

    move-result-object v0

    invoke-virtual {v0}, Lcn/mucang/sundial/android/db/SundialDb;->getDb()Lcn/mucang/android/core/db/a;

    move-result-object v0

    const-class v1, Lcn/mucang/sundial/android/db/entity/RegisterInfo;

    const-string v2, ""

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Lcn/mucang/android/core/db/a;->j(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/String;)I

    .line 2
    iput-object v3, p0, Lcn/mucang/sundial/android/tcp/data/DataManager;->registerInfo:Lcn/mucang/sundial/android/db/entity/RegisterInfo;

    return-void
.end method

.method public deleteAllUploadedCourseRecord()V
    .locals 4

    .line 1
    invoke-static {}, Lcn/mucang/sundial/android/db/SundialDb;->getInstance()Lcn/mucang/sundial/android/db/SundialDb;

    move-result-object v0

    invoke-virtual {v0}, Lcn/mucang/sundial/android/db/SundialDb;->getDb()Lcn/mucang/android/core/db/a;

    move-result-object v0

    const-string v1, "1"

    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v1

    const-string v2, "t_course_record"

    const-string v3, "upload_status=?"

    invoke-virtual {v0, v2, v3, v1}, Lcn/mucang/android/core/db/a;->k(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    return-void
.end method

.method public deletePhotoRecordBefore(J)I
    .locals 3

    .line 1
    invoke-static {}, Lcn/mucang/sundial/android/db/SundialDb;->getInstance()Lcn/mucang/sundial/android/db/SundialDb;

    move-result-object v0

    invoke-virtual {v0}, Lcn/mucang/sundial/android/db/SundialDb;->getDb()Lcn/mucang/android/core/db/a;

    move-result-object v0

    const-class v1, Lcn/mucang/sundial/android/db/entity/PhotoRecord;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    .line 2
    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object p1

    const/4 p2, 0x0

    aput-object p1, v2, p2

    const-string p1, "record_time < ?"

    .line 3
    invoke-virtual {v0, v1, p1, v2}, Lcn/mucang/android/core/db/a;->j(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/String;)I

    move-result p1

    return p1
.end method

.method public deleteStudent(Ljava/lang/Long;)V
    .locals 4

    .line 1
    invoke-static {}, Lcn/mucang/sundial/android/db/SundialDb;->getInstance()Lcn/mucang/sundial/android/db/SundialDb;

    move-result-object v0

    invoke-virtual {v0}, Lcn/mucang/sundial/android/db/SundialDb;->getDb()Lcn/mucang/android/core/db/a;

    move-result-object v0

    const-class v1, Lcn/mucang/sundial/android/db/entity/StudentInfo;

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-virtual {v0, v1, v2, v3}, Lcn/mucang/android/core/db/a;->h(Ljava/lang/Class;J)I

    return-void
.end method

.method public deleteUploadedCourseRecordBefore(J)I
    .locals 3

    .line 1
    invoke-static {}, Lcn/mucang/sundial/android/db/SundialDb;->getInstance()Lcn/mucang/sundial/android/db/SundialDb;

    move-result-object v0

    invoke-virtual {v0}, Lcn/mucang/sundial/android/db/SundialDb;->getDb()Lcn/mucang/android/core/db/a;

    move-result-object v0

    const-class v1, Lcn/mucang/sundial/android/db/entity/CourseRecord;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    .line 2
    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object p1

    const/4 p2, 0x0

    aput-object p1, v2, p2

    const-string p1, "record_time < ?"

    .line 3
    invoke-virtual {v0, v1, p1, v2}, Lcn/mucang/android/core/db/a;->j(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/String;)I

    move-result p1

    return p1
.end method

.method public deviceConfigSpeechExtraInfo()Z
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcn/mucang/sundial/android/tcp/data/DataManager;->getDeviceConfig()Lcn/mucang/sundial/android/tcp/message/training/DeviceConfig;

    move-result-object v0

    const/4 v1, 0x1

    if-eqz v0, :cond_1

    .line 2
    invoke-virtual {v0}, Lcn/mucang/sundial/android/tcp/message/training/DeviceConfig;->getSpeakExtraInfo()I

    move-result v0

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :cond_1
    :goto_0
    return v1
.end method

.method public deviceParameterCount()J
    .locals 2

    .line 1
    invoke-static {}, Lcn/mucang/sundial/android/db/SundialDb;->getInstance()Lcn/mucang/sundial/android/db/SundialDb;

    move-result-object v0

    invoke-virtual {v0}, Lcn/mucang/sundial/android/db/SundialDb;->getDb()Lcn/mucang/android/core/db/a;

    move-result-object v0

    const-class v1, Lcn/mucang/sundial/android/db/entity/DeviceParameter;

    invoke-virtual {v0, v1}, Lcn/mucang/android/core/db/a;->e(Ljava/lang/Class;)J

    move-result-wide v0

    return-wide v0
.end method

.method public getCoachInfo(Ljava/lang/String;)Lcn/mucang/sundial/android/db/entity/CoachInfo;
    .locals 4

    .line 1
    invoke-static {}, Lcn/mucang/sundial/android/db/SundialDb;->getInstance()Lcn/mucang/sundial/android/db/SundialDb;

    move-result-object v0

    invoke-virtual {v0}, Lcn/mucang/sundial/android/db/SundialDb;->getDb()Lcn/mucang/android/core/db/a;

    move-result-object v0

    const-class v1, Lcn/mucang/sundial/android/db/entity/CoachInfo;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    const-string p1, "select * from t_coach_info where coach_no = ?"

    .line 2
    invoke-static {p1, v2}, Lcn/mucang/android/core/db/e;->d(Ljava/lang/String;[Ljava/lang/String;)Lcn/mucang/android/core/db/e;

    move-result-object p1

    .line 3
    invoke-virtual {v0, v1, p1}, Lcn/mucang/android/core/db/a;->n(Ljava/lang/Class;Lcn/mucang/android/core/db/e;)Lcn/mucang/android/core/db/IdEntity;

    move-result-object p1

    check-cast p1, Lcn/mucang/sundial/android/db/entity/CoachInfo;

    return-object p1
.end method

.method public getCourseRecordByCount(IZ)Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IZ)",
            "Ljava/util/List<",
            "Lcn/mucang/sundial/android/db/entity/CourseRecord;",
            ">;"
        }
    .end annotation

    if-eqz p2, :cond_0

    const-string p2, " where upload_status != 1 "

    goto :goto_0

    :cond_0
    const-string p2, ""

    .line 1
    :goto_0
    invoke-static {}, Lcn/mucang/sundial/android/db/SundialDb;->getInstance()Lcn/mucang/sundial/android/db/SundialDb;

    move-result-object v0

    invoke-virtual {v0}, Lcn/mucang/sundial/android/db/SundialDb;->getDb()Lcn/mucang/android/core/db/a;

    move-result-object v0

    const-class v1, Lcn/mucang/sundial/android/db/entity/CourseRecord;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "select * from t_course_record"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, " order by record_time desc limit ?"

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    .line 2
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    aput-object p1, v2, v3

    .line 3
    invoke-static {p2, v2}, Lcn/mucang/android/core/db/e;->d(Ljava/lang/String;[Ljava/lang/String;)Lcn/mucang/android/core/db/e;

    move-result-object p1

    .line 4
    invoke-virtual {v0, v1, p1}, Lcn/mucang/android/core/db/a;->y(Ljava/lang/Class;Lcn/mucang/android/core/db/e;)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method public getCourseRecordByTime(JJ)Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(JJ)",
            "Ljava/util/List<",
            "Lcn/mucang/sundial/android/db/entity/CourseRecord;",
            ">;"
        }
    .end annotation

    .line 1
    invoke-static {}, Lcn/mucang/sundial/android/db/SundialDb;->getInstance()Lcn/mucang/sundial/android/db/SundialDb;

    move-result-object v0

    invoke-virtual {v0}, Lcn/mucang/sundial/android/db/SundialDb;->getDb()Lcn/mucang/android/core/db/a;

    move-result-object v0

    const-class v1, Lcn/mucang/sundial/android/db/entity/CourseRecord;

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/String;

    .line 2
    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object p1

    const/4 p2, 0x0

    aput-object p1, v2, p2

    invoke-static {p3, p4}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object p1

    const/4 p2, 0x1

    aput-object p1, v2, p2

    const-string p1, "select * from t_course_record where record_time >= ? and record_time < ?"

    .line 3
    invoke-static {p1, v2}, Lcn/mucang/android/core/db/e;->d(Ljava/lang/String;[Ljava/lang/String;)Lcn/mucang/android/core/db/e;

    move-result-object p1

    .line 4
    invoke-virtual {v0, v1, p1}, Lcn/mucang/android/core/db/a;->y(Ljava/lang/Class;Lcn/mucang/android/core/db/e;)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method public getDeviceConfig()Lcn/mucang/sundial/android/tcp/message/training/DeviceConfig;
    .locals 4

    .line 1
    iget-object v0, p0, Lcn/mucang/sundial/android/tcp/data/DataManager;->deviceConfig:Lcn/mucang/sundial/android/tcp/message/training/DeviceConfig;

    if-nez v0, :cond_0

    .line 2
    invoke-static {}, Lcn/mucang/sundial/android/db/SundialDb;->getInstance()Lcn/mucang/sundial/android/db/SundialDb;

    move-result-object v0

    invoke-virtual {v0}, Lcn/mucang/sundial/android/db/SundialDb;->getDb()Lcn/mucang/android/core/db/a;

    move-result-object v0

    const-class v1, Lcn/mucang/sundial/android/tcp/message/training/DeviceConfig;

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/String;

    const-string v3, "select * from t_device_config"

    .line 3
    invoke-static {v3, v2}, Lcn/mucang/android/core/db/e;->d(Ljava/lang/String;[Ljava/lang/String;)Lcn/mucang/android/core/db/e;

    move-result-object v2

    .line 4
    invoke-virtual {v0, v1, v2}, Lcn/mucang/android/core/db/a;->n(Ljava/lang/Class;Lcn/mucang/android/core/db/e;)Lcn/mucang/android/core/db/IdEntity;

    move-result-object v0

    check-cast v0, Lcn/mucang/sundial/android/tcp/message/training/DeviceConfig;

    iput-object v0, p0, Lcn/mucang/sundial/android/tcp/data/DataManager;->deviceConfig:Lcn/mucang/sundial/android/tcp/message/training/DeviceConfig;

    .line 5
    :cond_0
    iget-object v0, p0, Lcn/mucang/sundial/android/tcp/data/DataManager;->deviceConfig:Lcn/mucang/sundial/android/tcp/message/training/DeviceConfig;

    return-object v0
.end method

.method public getDeviceInfo()Lcn/mucang/sundial/android/db/entity/DeviceInfo;
    .locals 4

    .line 1
    iget-object v0, p0, Lcn/mucang/sundial/android/tcp/data/DataManager;->deviceInfo:Lcn/mucang/sundial/android/db/entity/DeviceInfo;

    if-nez v0, :cond_0

    .line 2
    invoke-static {}, Lcn/mucang/sundial/android/db/SundialDb;->getInstance()Lcn/mucang/sundial/android/db/SundialDb;

    move-result-object v0

    invoke-virtual {v0}, Lcn/mucang/sundial/android/db/SundialDb;->getDb()Lcn/mucang/android/core/db/a;

    move-result-object v0

    const-class v1, Lcn/mucang/sundial/android/db/entity/DeviceInfo;

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/String;

    const-string v3, "select * from t_device_info"

    invoke-static {v3, v2}, Lcn/mucang/android/core/db/e;->d(Ljava/lang/String;[Ljava/lang/String;)Lcn/mucang/android/core/db/e;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcn/mucang/android/core/db/a;->n(Ljava/lang/Class;Lcn/mucang/android/core/db/e;)Lcn/mucang/android/core/db/IdEntity;

    move-result-object v0

    check-cast v0, Lcn/mucang/sundial/android/db/entity/DeviceInfo;

    iput-object v0, p0, Lcn/mucang/sundial/android/tcp/data/DataManager;->deviceInfo:Lcn/mucang/sundial/android/db/entity/DeviceInfo;

    if-eqz v0, :cond_2

    .line 3
    invoke-virtual {v0}, Lcn/mucang/sundial/android/db/entity/DeviceInfo;->getImei()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcn/mucang/android/core/utils/n0;->e(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 4
    iget-object v0, p0, Lcn/mucang/sundial/android/tcp/data/DataManager;->deviceInfo:Lcn/mucang/sundial/android/db/entity/DeviceInfo;

    invoke-static {}, Lcn/mucang/sundial/android/tcp/utils/DeviceUtils;->getImei()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcn/mucang/sundial/android/db/entity/DeviceInfo;->setImei(Ljava/lang/String;)V

    goto :goto_0

    .line 5
    :cond_0
    invoke-virtual {v0}, Lcn/mucang/sundial/android/db/entity/DeviceInfo;->getImei()Ljava/lang/String;

    move-result-object v0

    .line 6
    invoke-static {}, Lcn/mucang/sundial/android/tcp/utils/DeviceUtils;->getImei()Ljava/lang/String;

    move-result-object v1

    .line 7
    invoke-static {v0}, Lcn/mucang/android/core/utils/n0;->e(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_1

    invoke-static {v1}, Lcn/mucang/android/core/utils/n0;->g(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 8
    :cond_1
    iget-object v0, p0, Lcn/mucang/sundial/android/tcp/data/DataManager;->deviceInfo:Lcn/mucang/sundial/android/db/entity/DeviceInfo;

    invoke-virtual {v0, v1}, Lcn/mucang/sundial/android/db/entity/DeviceInfo;->setImei(Ljava/lang/String;)V

    .line 9
    :cond_2
    :goto_0
    iget-object v0, p0, Lcn/mucang/sundial/android/tcp/data/DataManager;->deviceInfo:Lcn/mucang/sundial/android/db/entity/DeviceInfo;

    return-object v0
.end method

.method public getDeviceParameterValue(J)Ljava/lang/Object;
    .locals 3

    .line 1
    invoke-static {}, Lcn/mucang/sundial/android/db/SundialDb;->getInstance()Lcn/mucang/sundial/android/db/SundialDb;

    move-result-object v0

    invoke-virtual {v0}, Lcn/mucang/sundial/android/db/SundialDb;->getDb()Lcn/mucang/android/core/db/a;

    move-result-object v0

    const-class v1, Lcn/mucang/sundial/android/db/entity/DeviceParameter;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    .line 2
    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object p1

    const/4 p2, 0x0

    aput-object p1, v2, p2

    const-string p1, "select * from t_device_parameter where parameter_id = ?"

    invoke-static {p1, v2}, Lcn/mucang/android/core/db/e;->d(Ljava/lang/String;[Ljava/lang/String;)Lcn/mucang/android/core/db/e;

    move-result-object p1

    .line 3
    invoke-virtual {v0, v1, p1}, Lcn/mucang/android/core/db/a;->n(Ljava/lang/Class;Lcn/mucang/android/core/db/e;)Lcn/mucang/android/core/db/IdEntity;

    move-result-object p1

    check-cast p1, Lcn/mucang/sundial/android/db/entity/DeviceParameter;

    if-eqz p1, :cond_0

    .line 4
    invoke-static {p1}, Lcn/mucang/sundial/android/tcp/message/Parameter;->from(Lcn/mucang/sundial/android/db/entity/DeviceParameter;)Lcn/mucang/sundial/android/tcp/message/Parameter;

    move-result-object p1

    .line 5
    invoke-virtual {p1}, Lcn/mucang/sundial/android/tcp/message/Parameter;->getObjectValue()Ljava/lang/Object;

    move-result-object p1

    return-object p1

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public getLastCoach()Lcn/mucang/sundial/android/db/entity/CoachInfo;
    .locals 5

    .line 1
    iget-object v0, p0, Lcn/mucang/sundial/android/tcp/data/DataManager;->coachInfo:Lcn/mucang/sundial/android/db/entity/CoachInfo;

    if-nez v0, :cond_0

    .line 2
    invoke-static {}, Lcn/mucang/sundial/android/db/SundialDb;->getInstance()Lcn/mucang/sundial/android/db/SundialDb;

    move-result-object v0

    invoke-virtual {v0}, Lcn/mucang/sundial/android/db/SundialDb;->getDb()Lcn/mucang/android/core/db/a;

    move-result-object v0

    const-class v1, Lcn/mucang/sundial/android/db/entity/CoachInfo;

    const/4 v2, 0x0

    new-array v3, v2, [Ljava/lang/String;

    const-string v4, "select * from t_coach_info order by update_time desc"

    .line 3
    invoke-static {v4, v3}, Lcn/mucang/android/core/db/e;->d(Ljava/lang/String;[Ljava/lang/String;)Lcn/mucang/android/core/db/e;

    move-result-object v3

    .line 4
    invoke-virtual {v0, v1, v3}, Lcn/mucang/android/core/db/a;->y(Ljava/lang/Class;Lcn/mucang/android/core/db/e;)Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 5
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_0

    .line 6
    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcn/mucang/sundial/android/db/entity/CoachInfo;

    iput-object v0, p0, Lcn/mucang/sundial/android/tcp/data/DataManager;->coachInfo:Lcn/mucang/sundial/android/db/entity/CoachInfo;

    .line 7
    :cond_0
    iget-object v0, p0, Lcn/mucang/sundial/android/tcp/data/DataManager;->coachInfo:Lcn/mucang/sundial/android/db/entity/CoachInfo;

    return-object v0
.end method

.method public getLastStudent()Lcn/mucang/sundial/android/db/entity/StudentInfo;
    .locals 5

    .line 1
    iget-object v0, p0, Lcn/mucang/sundial/android/tcp/data/DataManager;->studentInfo:Lcn/mucang/sundial/android/db/entity/StudentInfo;

    if-nez v0, :cond_0

    .line 2
    invoke-static {}, Lcn/mucang/sundial/android/db/SundialDb;->getInstance()Lcn/mucang/sundial/android/db/SundialDb;

    move-result-object v0

    invoke-virtual {v0}, Lcn/mucang/sundial/android/db/SundialDb;->getDb()Lcn/mucang/android/core/db/a;

    move-result-object v0

    const-class v1, Lcn/mucang/sundial/android/db/entity/StudentInfo;

    const/4 v2, 0x0

    new-array v3, v2, [Ljava/lang/String;

    const-string v4, "select * from t_student_info order by update_time desc"

    .line 3
    invoke-static {v4, v3}, Lcn/mucang/android/core/db/e;->d(Ljava/lang/String;[Ljava/lang/String;)Lcn/mucang/android/core/db/e;

    move-result-object v3

    .line 4
    invoke-virtual {v0, v1, v3}, Lcn/mucang/android/core/db/a;->y(Ljava/lang/Class;Lcn/mucang/android/core/db/e;)Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 5
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_0

    .line 6
    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcn/mucang/sundial/android/db/entity/StudentInfo;

    iput-object v0, p0, Lcn/mucang/sundial/android/tcp/data/DataManager;->studentInfo:Lcn/mucang/sundial/android/db/entity/StudentInfo;

    .line 7
    :cond_0
    iget-object v0, p0, Lcn/mucang/sundial/android/tcp/data/DataManager;->studentInfo:Lcn/mucang/sundial/android/db/entity/StudentInfo;

    return-object v0
.end method

.method public getLastTenStudentInfo(J)Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J)",
            "Ljava/util/List<",
            "Lcn/mucang/sundial/android/db/entity/StudentInfo;",
            ">;"
        }
    .end annotation

    .line 1
    invoke-static {}, Lcn/mucang/sundial/android/db/SundialDb;->getInstance()Lcn/mucang/sundial/android/db/SundialDb;

    move-result-object v0

    invoke-virtual {v0}, Lcn/mucang/sundial/android/db/SundialDb;->getDb()Lcn/mucang/android/core/db/a;

    move-result-object v0

    const-class v1, Lcn/mucang/sundial/android/db/entity/StudentInfo;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "select * from t_student_info where update_time > "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p1, " order by update_time desc limit 30"

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 p2, 0x0

    new-array p2, p2, [Ljava/lang/String;

    .line 2
    invoke-static {p1, p2}, Lcn/mucang/android/core/db/e;->d(Ljava/lang/String;[Ljava/lang/String;)Lcn/mucang/android/core/db/e;

    move-result-object p1

    .line 3
    invoke-virtual {v0, v1, p1}, Lcn/mucang/android/core/db/a;->y(Ljava/lang/Class;Lcn/mucang/android/core/db/e;)Ljava/util/List;

    move-result-object p1

    if-eqz p1, :cond_0

    return-object p1

    .line 4
    :cond_0
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    return-object p1
.end method

.method public getPhotoRecord(Ljava/lang/String;)Lcn/mucang/sundial/android/db/entity/PhotoRecord;
    .locals 4

    .line 1
    invoke-static {}, Lcn/mucang/sundial/android/db/SundialDb;->getInstance()Lcn/mucang/sundial/android/db/SundialDb;

    move-result-object v0

    invoke-virtual {v0}, Lcn/mucang/sundial/android/db/SundialDb;->getDb()Lcn/mucang/android/core/db/a;

    move-result-object v0

    const-class v1, Lcn/mucang/sundial/android/db/entity/PhotoRecord;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    const-string p1, "select * from t_photo_record where photo_id = ?"

    .line 2
    invoke-static {p1, v2}, Lcn/mucang/android/core/db/e;->d(Ljava/lang/String;[Ljava/lang/String;)Lcn/mucang/android/core/db/e;

    move-result-object p1

    .line 3
    invoke-virtual {v0, v1, p1}, Lcn/mucang/android/core/db/a;->n(Ljava/lang/Class;Lcn/mucang/android/core/db/e;)Lcn/mucang/android/core/db/IdEntity;

    move-result-object p1

    check-cast p1, Lcn/mucang/sundial/android/db/entity/PhotoRecord;

    return-object p1
.end method

.method public getPhotoRecordByClassroom(J)Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J)",
            "Ljava/util/List<",
            "Lcn/mucang/sundial/android/db/entity/PhotoRecord;",
            ">;"
        }
    .end annotation

    .line 1
    invoke-static {}, Lcn/mucang/sundial/android/db/SundialDb;->getInstance()Lcn/mucang/sundial/android/db/SundialDb;

    move-result-object v0

    invoke-virtual {v0}, Lcn/mucang/sundial/android/db/SundialDb;->getDb()Lcn/mucang/android/core/db/a;

    move-result-object v0

    const-class v1, Lcn/mucang/sundial/android/db/entity/PhotoRecord;

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/String;

    .line 2
    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object p1

    const/4 p2, 0x0

    aput-object p1, v2, p2

    const/4 p1, 0x1

    const-string p2, "0"

    aput-object p2, v2, p1

    const-string p1, "select * from t_photo_record where classroom_id = ? and upload_status = ?"

    .line 3
    invoke-static {p1, v2}, Lcn/mucang/android/core/db/e;->d(Ljava/lang/String;[Ljava/lang/String;)Lcn/mucang/android/core/db/e;

    move-result-object p1

    .line 4
    invoke-virtual {v0, v1, p1}, Lcn/mucang/android/core/db/a;->y(Ljava/lang/Class;Lcn/mucang/android/core/db/e;)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method public getPhotoRecordByTime(JJ)Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(JJ)",
            "Ljava/util/List<",
            "Lcn/mucang/sundial/android/db/entity/PhotoRecord;",
            ">;"
        }
    .end annotation

    .line 1
    invoke-static {}, Lcn/mucang/sundial/android/db/SundialDb;->getInstance()Lcn/mucang/sundial/android/db/SundialDb;

    move-result-object v0

    invoke-virtual {v0}, Lcn/mucang/sundial/android/db/SundialDb;->getDb()Lcn/mucang/android/core/db/a;

    move-result-object v0

    const-class v1, Lcn/mucang/sundial/android/db/entity/PhotoRecord;

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/String;

    .line 2
    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object p1

    const/4 p2, 0x0

    aput-object p1, v2, p2

    invoke-static {p3, p4}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object p1

    const/4 p2, 0x1

    aput-object p1, v2, p2

    const-string p1, "select * from t_photo_record where record_time >= ? and record_time < ? and upload_mode != -1"

    .line 3
    invoke-static {p1, v2}, Lcn/mucang/android/core/db/e;->d(Ljava/lang/String;[Ljava/lang/String;)Lcn/mucang/android/core/db/e;

    move-result-object p1

    .line 4
    invoke-virtual {v0, v1, p1}, Lcn/mucang/android/core/db/a;->y(Ljava/lang/Class;Lcn/mucang/android/core/db/e;)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method public getRecentGnssData(I)Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List<",
            "Lcn/mucang/sundial/android/db/entity/Gnss;",
            ">;"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Lcn/mucang/sundial/android/tcp/data/DataManager;->getDb()Lcn/mucang/android/core/db/a;

    move-result-object v0

    const-class v1, Lcn/mucang/sundial/android/db/entity/Gnss;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    .line 2
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    const/4 v3, 0x0

    aput-object p1, v2, v3

    const-string p1, "select * from t_gnss where upload_status != 1 order by create_time desc limit ?"

    .line 3
    invoke-static {p1, v2}, Lcn/mucang/android/core/db/e;->d(Ljava/lang/String;[Ljava/lang/String;)Lcn/mucang/android/core/db/e;

    move-result-object p1

    .line 4
    invoke-virtual {v0, v1, p1}, Lcn/mucang/android/core/db/a;->y(Ljava/lang/Class;Lcn/mucang/android/core/db/e;)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method public getRegisterInfo()Lcn/mucang/sundial/android/db/entity/RegisterInfo;
    .locals 4

    .line 1
    iget-object v0, p0, Lcn/mucang/sundial/android/tcp/data/DataManager;->registerInfo:Lcn/mucang/sundial/android/db/entity/RegisterInfo;

    if-nez v0, :cond_0

    .line 2
    invoke-static {}, Lcn/mucang/sundial/android/db/SundialDb;->getInstance()Lcn/mucang/sundial/android/db/SundialDb;

    move-result-object v0

    invoke-virtual {v0}, Lcn/mucang/sundial/android/db/SundialDb;->getDb()Lcn/mucang/android/core/db/a;

    move-result-object v0

    const-class v1, Lcn/mucang/sundial/android/db/entity/RegisterInfo;

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/String;

    const-string v3, "select * from t_register_info"

    invoke-static {v3, v2}, Lcn/mucang/android/core/db/e;->d(Ljava/lang/String;[Ljava/lang/String;)Lcn/mucang/android/core/db/e;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcn/mucang/android/core/db/a;->n(Ljava/lang/Class;Lcn/mucang/android/core/db/e;)Lcn/mucang/android/core/db/IdEntity;

    move-result-object v0

    check-cast v0, Lcn/mucang/sundial/android/db/entity/RegisterInfo;

    iput-object v0, p0, Lcn/mucang/sundial/android/tcp/data/DataManager;->registerInfo:Lcn/mucang/sundial/android/db/entity/RegisterInfo;

    .line 3
    :cond_0
    iget-object v0, p0, Lcn/mucang/sundial/android/tcp/data/DataManager;->registerInfo:Lcn/mucang/sundial/android/db/entity/RegisterInfo;

    return-object v0
.end method

.method public getStudentInfo(Ljava/lang/String;)Lcn/mucang/sundial/android/db/entity/StudentInfo;
    .locals 4

    .line 1
    invoke-static {}, Lcn/mucang/sundial/android/db/SundialDb;->getInstance()Lcn/mucang/sundial/android/db/SundialDb;

    move-result-object v0

    invoke-virtual {v0}, Lcn/mucang/sundial/android/db/SundialDb;->getDb()Lcn/mucang/android/core/db/a;

    move-result-object v0

    const-class v1, Lcn/mucang/sundial/android/db/entity/StudentInfo;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    const-string p1, "select * from t_student_info where student_no = ?"

    .line 2
    invoke-static {p1, v2}, Lcn/mucang/android/core/db/e;->d(Ljava/lang/String;[Ljava/lang/String;)Lcn/mucang/android/core/db/e;

    move-result-object p1

    .line 3
    invoke-virtual {v0, v1, p1}, Lcn/mucang/android/core/db/a;->n(Ljava/lang/Class;Lcn/mucang/android/core/db/e;)Lcn/mucang/android/core/db/IdEntity;

    move-result-object p1

    check-cast p1, Lcn/mucang/sundial/android/db/entity/StudentInfo;

    return-object p1
.end method

.method public insertCourseRecord(Lcn/mucang/sundial/android/db/entity/CourseRecord;)V
    .locals 5

    .line 1
    invoke-virtual {p1}, Lcn/mucang/sundial/android/db/entity/CourseRecord;->getRecordTime()J

    move-result-wide v0

    sget-object v2, Ljava/util/concurrent/TimeUnit;->DAYS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v3, 0x3

    invoke-virtual {v2, v3, v4}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v2

    sub-long/2addr v0, v2

    invoke-virtual {p0, v0, v1}, Lcn/mucang/sundial/android/tcp/data/DataManager;->deleteUploadedCourseRecordBefore(J)I

    .line 2
    invoke-static {}, Lcn/mucang/sundial/android/db/SundialDb;->getInstance()Lcn/mucang/sundial/android/db/SundialDb;

    move-result-object v0

    invoke-virtual {v0}, Lcn/mucang/sundial/android/db/SundialDb;->getDb()Lcn/mucang/android/core/db/a;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcn/mucang/android/core/db/a;->u(Lcn/mucang/android/core/db/IdEntity;)V

    return-void
.end method

.method public isTrainingDisable()Z
    .locals 2

    const-string v0, "disable_training_status"

    const/4 v1, 0x0

    .line 1
    invoke-static {v0, v1}, Lcn/mucang/sundial/android/tcp/utils/PreferenceUtils;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public removeOldGnssData()V
    .locals 7

    .line 1
    invoke-direct {p0}, Lcn/mucang/sundial/android/tcp/data/DataManager;->getDb()Lcn/mucang/android/core/db/a;

    move-result-object v0

    const-class v1, Lcn/mucang/sundial/android/db/entity/Gnss;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    .line 2
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    const-wide/32 v5, 0xa4cb800

    sub-long/2addr v3, v5

    invoke-static {v3, v4}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    aput-object v3, v2, v4

    const-string v3, "create_time < ?"

    .line 3
    invoke-virtual {v0, v1, v3, v2}, Lcn/mucang/android/core/db/a;->j(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/String;)I

    return-void
.end method

.method public saveCoach(Lcn/mucang/sundial/android/db/entity/CoachInfo;)V
    .locals 5

    if-eqz p1, :cond_2

    .line 1
    invoke-virtual {p1}, Lcn/mucang/sundial/android/db/entity/CoachInfo;->infoValid()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_1

    .line 2
    :cond_0
    invoke-static {}, Lcn/mucang/sundial/android/db/SundialDb;->getInstance()Lcn/mucang/sundial/android/db/SundialDb;

    move-result-object v0

    invoke-virtual {v0}, Lcn/mucang/sundial/android/db/SundialDb;->getDb()Lcn/mucang/android/core/db/a;

    move-result-object v0

    const-class v1, Lcn/mucang/sundial/android/db/entity/CoachInfo;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    .line 3
    invoke-virtual {p1}, Lcn/mucang/sundial/android/db/entity/CoachInfo;->getCoachNo()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    const-string v3, "select * from t_coach_info where coach_no = ?"

    invoke-static {v3, v2}, Lcn/mucang/android/core/db/e;->d(Ljava/lang/String;[Ljava/lang/String;)Lcn/mucang/android/core/db/e;

    move-result-object v2

    .line 4
    invoke-virtual {v0, v1, v2}, Lcn/mucang/android/core/db/a;->n(Ljava/lang/Class;Lcn/mucang/android/core/db/e;)Lcn/mucang/android/core/db/IdEntity;

    move-result-object v0

    check-cast v0, Lcn/mucang/sundial/android/db/entity/CoachInfo;

    if-nez v0, :cond_1

    .line 5
    invoke-static {}, Lcn/mucang/sundial/android/db/SundialDb;->getInstance()Lcn/mucang/sundial/android/db/SundialDb;

    move-result-object v0

    invoke-virtual {v0}, Lcn/mucang/sundial/android/db/SundialDb;->getDb()Lcn/mucang/android/core/db/a;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcn/mucang/android/core/db/a;->u(Lcn/mucang/android/core/db/IdEntity;)V

    goto :goto_0

    .line 6
    :cond_1
    invoke-virtual {v0}, Lcn/mucang/android/core/db/IdEntity;->getId()Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcn/mucang/android/core/db/IdEntity;->setId(Ljava/lang/Long;)V

    .line 7
    invoke-static {}, Lcn/mucang/sundial/android/db/SundialDb;->getInstance()Lcn/mucang/sundial/android/db/SundialDb;

    move-result-object v0

    invoke-virtual {v0}, Lcn/mucang/sundial/android/db/SundialDb;->getDb()Lcn/mucang/android/core/db/a;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcn/mucang/android/core/db/a;->E(Lcn/mucang/android/core/db/IdEntity;)V

    .line 8
    :goto_0
    iput-object p1, p0, Lcn/mucang/sundial/android/tcp/data/DataManager;->coachInfo:Lcn/mucang/sundial/android/db/entity/CoachInfo;

    :cond_2
    :goto_1
    return-void
.end method

.method public saveDeviceConfig(Lcn/mucang/sundial/android/tcp/message/training/DeviceConfig;)V
    .locals 4

    const/4 v0, 0x0

    .line 1
    iput-object v0, p0, Lcn/mucang/sundial/android/tcp/data/DataManager;->deviceConfig:Lcn/mucang/sundial/android/tcp/message/training/DeviceConfig;

    .line 2
    invoke-static {}, Lcn/mucang/sundial/android/db/SundialDb;->getInstance()Lcn/mucang/sundial/android/db/SundialDb;

    move-result-object v0

    invoke-virtual {v0}, Lcn/mucang/sundial/android/db/SundialDb;->getDb()Lcn/mucang/android/core/db/a;

    move-result-object v0

    const-class v1, Lcn/mucang/sundial/android/tcp/message/training/DeviceConfig;

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/String;

    const-string v3, "select * from t_device_config"

    .line 3
    invoke-static {v3, v2}, Lcn/mucang/android/core/db/e;->d(Ljava/lang/String;[Ljava/lang/String;)Lcn/mucang/android/core/db/e;

    move-result-object v2

    .line 4
    invoke-virtual {v0, v1, v2}, Lcn/mucang/android/core/db/a;->n(Ljava/lang/Class;Lcn/mucang/android/core/db/e;)Lcn/mucang/android/core/db/IdEntity;

    move-result-object v0

    check-cast v0, Lcn/mucang/sundial/android/tcp/message/training/DeviceConfig;

    if-nez v0, :cond_0

    .line 5
    invoke-static {}, Lcn/mucang/sundial/android/db/SundialDb;->getInstance()Lcn/mucang/sundial/android/db/SundialDb;

    move-result-object v0

    invoke-virtual {v0}, Lcn/mucang/sundial/android/db/SundialDb;->getDb()Lcn/mucang/android/core/db/a;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcn/mucang/android/core/db/a;->u(Lcn/mucang/android/core/db/IdEntity;)V

    goto :goto_0

    .line 6
    :cond_0
    invoke-virtual {v0}, Lcn/mucang/android/core/db/IdEntity;->getId()Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcn/mucang/android/core/db/IdEntity;->setId(Ljava/lang/Long;)V

    .line 7
    invoke-static {}, Lcn/mucang/sundial/android/db/SundialDb;->getInstance()Lcn/mucang/sundial/android/db/SundialDb;

    move-result-object v0

    invoke-virtual {v0}, Lcn/mucang/sundial/android/db/SundialDb;->getDb()Lcn/mucang/android/core/db/a;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcn/mucang/android/core/db/a;->E(Lcn/mucang/android/core/db/IdEntity;)V

    :goto_0
    return-void
.end method

.method public saveDeviceParameter(Lcn/mucang/sundial/android/tcp/message/Parameter;)V
    .locals 7

    if-nez p1, :cond_0

    return-void

    .line 12
    :cond_0
    invoke-static {p1}, Lcn/mucang/sundial/android/db/entity/DeviceParameter;->from(Lcn/mucang/sundial/android/tcp/message/Parameter;)Lcn/mucang/sundial/android/db/entity/DeviceParameter;

    move-result-object v0

    .line 13
    invoke-static {}, Lcn/mucang/sundial/android/db/SundialDb;->getInstance()Lcn/mucang/sundial/android/db/SundialDb;

    move-result-object v1

    invoke-virtual {v1}, Lcn/mucang/sundial/android/db/SundialDb;->getDb()Lcn/mucang/android/core/db/a;

    move-result-object v1

    const-class v2, Lcn/mucang/sundial/android/db/entity/DeviceParameter;

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    .line 14
    invoke-virtual {p1}, Lcn/mucang/sundial/android/tcp/message/Parameter;->getParameterId()J

    move-result-wide v5

    invoke-static {v5, v6}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object p1

    aput-object p1, v3, v4

    const-string p1, "select * from t_device_parameter where parameter_id = ?"

    invoke-static {p1, v3}, Lcn/mucang/android/core/db/e;->d(Ljava/lang/String;[Ljava/lang/String;)Lcn/mucang/android/core/db/e;

    move-result-object p1

    .line 15
    invoke-virtual {v1, v2, p1}, Lcn/mucang/android/core/db/a;->n(Ljava/lang/Class;Lcn/mucang/android/core/db/e;)Lcn/mucang/android/core/db/IdEntity;

    move-result-object p1

    check-cast p1, Lcn/mucang/sundial/android/db/entity/DeviceParameter;

    if-nez p1, :cond_1

    .line 16
    invoke-static {}, Lcn/mucang/sundial/android/db/SundialDb;->getInstance()Lcn/mucang/sundial/android/db/SundialDb;

    move-result-object p1

    invoke-virtual {p1}, Lcn/mucang/sundial/android/db/SundialDb;->getDb()Lcn/mucang/android/core/db/a;

    move-result-object p1

    invoke-virtual {p1, v0}, Lcn/mucang/android/core/db/a;->u(Lcn/mucang/android/core/db/IdEntity;)V

    goto :goto_0

    .line 17
    :cond_1
    invoke-virtual {p1}, Lcn/mucang/android/core/db/IdEntity;->getId()Ljava/lang/Long;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcn/mucang/android/core/db/IdEntity;->setId(Ljava/lang/Long;)V

    .line 18
    invoke-static {}, Lcn/mucang/sundial/android/db/SundialDb;->getInstance()Lcn/mucang/sundial/android/db/SundialDb;

    move-result-object p1

    invoke-virtual {p1}, Lcn/mucang/sundial/android/db/SundialDb;->getDb()Lcn/mucang/android/core/db/a;

    move-result-object p1

    invoke-virtual {p1, v0}, Lcn/mucang/android/core/db/a;->E(Lcn/mucang/android/core/db/IdEntity;)V

    :goto_0
    return-void
.end method

.method public saveDeviceParameter(Ljava/util/Map;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    if-nez p1, :cond_0

    return-void

    .line 1
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 2
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 3
    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 4
    :try_start_0
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-static {v3}, Lcn/mucang/android/core/utils/n0;->e(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    goto :goto_0

    .line 5
    :cond_1
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-static {v3}, Ljava/lang/Integer;->decode(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    .line 6
    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    int-to-long v3, v3

    .line 7
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-static {v3, v4, v2}, Lcn/mucang/sundial/android/tcp/message/Parameter;->create(JLjava/lang/String;)Lcn/mucang/sundial/android/tcp/message/Parameter;

    move-result-object v2

    invoke-static {v2}, Lcn/mucang/sundial/android/db/entity/DeviceParameter;->from(Lcn/mucang/sundial/android/tcp/message/Parameter;)Lcn/mucang/sundial/android/db/entity/DeviceParameter;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    nop

    goto :goto_0

    .line 8
    :cond_2
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_3

    .line 9
    invoke-static {}, Lcn/mucang/sundial/android/db/SundialDb;->getInstance()Lcn/mucang/sundial/android/db/SundialDb;

    move-result-object p1

    invoke-virtual {p1}, Lcn/mucang/sundial/android/db/SundialDb;->getDb()Lcn/mucang/android/core/db/a;

    move-result-object p1

    const-class v2, Lcn/mucang/sundial/android/db/entity/DeviceParameter;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "parameter_id in ("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ","

    .line 10
    invoke-static {v4, v1}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v3, 0x0

    invoke-virtual {p1, v2, v1, v3}, Lcn/mucang/android/core/db/a;->j(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/String;)I

    .line 11
    invoke-static {}, Lcn/mucang/sundial/android/db/SundialDb;->getInstance()Lcn/mucang/sundial/android/db/SundialDb;

    move-result-object p1

    invoke-virtual {p1}, Lcn/mucang/sundial/android/db/SundialDb;->getDb()Lcn/mucang/android/core/db/a;

    move-result-object p1

    invoke-virtual {p1, v0}, Lcn/mucang/android/core/db/a;->v(Ljava/util/List;)V

    :cond_3
    return-void
.end method

.method public saveGnss(Lcn/mucang/sundial/android/db/entity/Gnss;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcn/mucang/sundial/android/tcp/data/DataManager;->getDb()Lcn/mucang/android/core/db/a;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcn/mucang/android/core/db/a;->w(Lcn/mucang/android/core/db/IdEntity;)V

    return-void
.end method

.method public savePhotoRecord(Lcn/mucang/sundial/android/db/entity/PhotoRecord;)V
    .locals 1

    if-nez p1, :cond_0

    return-void

    .line 1
    :cond_0
    invoke-virtual {p1}, Lcn/mucang/sundial/android/db/entity/PhotoRecord;->getPhotoId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcn/mucang/sundial/android/tcp/data/DataManager;->getPhotoRecord(Ljava/lang/String;)Lcn/mucang/sundial/android/db/entity/PhotoRecord;

    move-result-object v0

    if-nez v0, :cond_1

    .line 2
    invoke-static {}, Lcn/mucang/sundial/android/db/SundialDb;->getInstance()Lcn/mucang/sundial/android/db/SundialDb;

    move-result-object v0

    invoke-virtual {v0}, Lcn/mucang/sundial/android/db/SundialDb;->getDb()Lcn/mucang/android/core/db/a;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcn/mucang/android/core/db/a;->u(Lcn/mucang/android/core/db/IdEntity;)V

    goto :goto_0

    .line 3
    :cond_1
    invoke-virtual {v0}, Lcn/mucang/android/core/db/IdEntity;->getId()Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcn/mucang/android/core/db/IdEntity;->setId(Ljava/lang/Long;)V

    .line 4
    invoke-static {}, Lcn/mucang/sundial/android/db/SundialDb;->getInstance()Lcn/mucang/sundial/android/db/SundialDb;

    move-result-object v0

    invoke-virtual {v0}, Lcn/mucang/sundial/android/db/SundialDb;->getDb()Lcn/mucang/android/core/db/a;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcn/mucang/android/core/db/a;->E(Lcn/mucang/android/core/db/IdEntity;)V

    :goto_0
    return-void
.end method

.method public saveRegisterInfo(Lcn/mucang/sundial/android/db/entity/RegisterInfo;)V
    .locals 1

    .line 1
    invoke-static {}, Lcn/mucang/sundial/android/db/SundialDb;->getInstance()Lcn/mucang/sundial/android/db/SundialDb;

    move-result-object v0

    invoke-virtual {v0}, Lcn/mucang/sundial/android/db/SundialDb;->getDb()Lcn/mucang/android/core/db/a;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcn/mucang/android/core/db/a;->w(Lcn/mucang/android/core/db/IdEntity;)V

    const/4 p1, 0x0

    .line 2
    iput-object p1, p0, Lcn/mucang/sundial/android/tcp/data/DataManager;->registerInfo:Lcn/mucang/sundial/android/db/entity/RegisterInfo;

    return-void
.end method

.method public saveStudent(Lcn/mucang/sundial/android/db/entity/StudentInfo;)V
    .locals 5

    if-eqz p1, :cond_2

    .line 1
    invoke-virtual {p1}, Lcn/mucang/sundial/android/db/entity/StudentInfo;->infoValid()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_1

    .line 2
    :cond_0
    invoke-static {}, Lcn/mucang/sundial/android/db/SundialDb;->getInstance()Lcn/mucang/sundial/android/db/SundialDb;

    move-result-object v0

    invoke-virtual {v0}, Lcn/mucang/sundial/android/db/SundialDb;->getDb()Lcn/mucang/android/core/db/a;

    move-result-object v0

    const-class v1, Lcn/mucang/sundial/android/db/entity/StudentInfo;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    .line 3
    invoke-virtual {p1}, Lcn/mucang/sundial/android/db/entity/StudentInfo;->getStudentNo()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    const-string v3, "select * from t_student_info where student_no = ?"

    invoke-static {v3, v2}, Lcn/mucang/android/core/db/e;->d(Ljava/lang/String;[Ljava/lang/String;)Lcn/mucang/android/core/db/e;

    move-result-object v2

    .line 4
    invoke-virtual {v0, v1, v2}, Lcn/mucang/android/core/db/a;->n(Ljava/lang/Class;Lcn/mucang/android/core/db/e;)Lcn/mucang/android/core/db/IdEntity;

    move-result-object v0

    check-cast v0, Lcn/mucang/sundial/android/db/entity/StudentInfo;

    if-nez v0, :cond_1

    .line 5
    invoke-static {}, Lcn/mucang/sundial/android/db/SundialDb;->getInstance()Lcn/mucang/sundial/android/db/SundialDb;

    move-result-object v0

    invoke-virtual {v0}, Lcn/mucang/sundial/android/db/SundialDb;->getDb()Lcn/mucang/android/core/db/a;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcn/mucang/android/core/db/a;->u(Lcn/mucang/android/core/db/IdEntity;)V

    goto :goto_0

    .line 6
    :cond_1
    invoke-virtual {v0}, Lcn/mucang/android/core/db/IdEntity;->getId()Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcn/mucang/android/core/db/IdEntity;->setId(Ljava/lang/Long;)V

    .line 7
    invoke-static {}, Lcn/mucang/sundial/android/db/SundialDb;->getInstance()Lcn/mucang/sundial/android/db/SundialDb;

    move-result-object v0

    invoke-virtual {v0}, Lcn/mucang/sundial/android/db/SundialDb;->getDb()Lcn/mucang/android/core/db/a;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcn/mucang/android/core/db/a;->E(Lcn/mucang/android/core/db/IdEntity;)V

    .line 8
    :goto_0
    iput-object p1, p0, Lcn/mucang/sundial/android/tcp/data/DataManager;->studentInfo:Lcn/mucang/sundial/android/db/entity/StudentInfo;

    :cond_2
    :goto_1
    return-void
.end method

.method public setPhotoRecordUploaded(Ljava/lang/String;)V
    .locals 1

    .line 1
    invoke-virtual {p0, p1}, Lcn/mucang/sundial/android/tcp/data/DataManager;->getPhotoRecord(Ljava/lang/String;)Lcn/mucang/sundial/android/db/entity/PhotoRecord;

    move-result-object p1

    if-eqz p1, :cond_0

    const/4 v0, 0x1

    .line 2
    invoke-virtual {p1, v0}, Lcn/mucang/sundial/android/db/entity/PhotoRecord;->setUploadStatus(I)V

    .line 3
    invoke-direct {p0}, Lcn/mucang/sundial/android/tcp/data/DataManager;->getDb()Lcn/mucang/android/core/db/a;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcn/mucang/android/core/db/a;->E(Lcn/mucang/android/core/db/IdEntity;)V

    :cond_0
    return-void
.end method

.method public setTrainingDisable(Z)V
    .locals 1

    const-string v0, "disable_training_status"

    .line 1
    invoke-static {v0, p1}, Lcn/mucang/sundial/android/tcp/utils/PreferenceUtils;->putBoolean(Ljava/lang/String;Z)V

    return-void
.end method

.method public updateCoachStatus(Ljava/lang/String;Lcn/mucang/sundial/android/db/entity/CoachInfo$STATUS;)V
    .locals 3

    .line 1
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 2
    invoke-virtual {p2}, Lcn/mucang/sundial/android/db/entity/CoachInfo$STATUS;->getValue()I

    move-result p2

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    const-string v1, "status"

    invoke-virtual {v0, v1, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 3
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p2

    const-string v1, "update_time"

    invoke-virtual {v0, v1, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 4
    invoke-static {}, Lcn/mucang/sundial/android/db/SundialDb;->getInstance()Lcn/mucang/sundial/android/db/SundialDb;

    move-result-object p2

    invoke-virtual {p2}, Lcn/mucang/sundial/android/db/SundialDb;->getDb()Lcn/mucang/android/core/db/a;

    move-result-object p2

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    const-string p1, "t_coach_info"

    const-string v2, "coach_no = ?"

    invoke-virtual {p2, p1, v0, v2, v1}, Lcn/mucang/android/core/db/a;->D(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    const/4 p1, 0x0

    .line 5
    iput-object p1, p0, Lcn/mucang/sundial/android/tcp/data/DataManager;->coachInfo:Lcn/mucang/sundial/android/db/entity/CoachInfo;

    return-void
.end method

.method public updateDeviceInfo(Lcn/mucang/sundial/android/db/entity/DeviceInfo;)V
    .locals 1

    if-eqz p1, :cond_0

    .line 1
    invoke-static {}, Lcn/mucang/sundial/android/db/SundialDb;->getInstance()Lcn/mucang/sundial/android/db/SundialDb;

    move-result-object v0

    invoke-virtual {v0}, Lcn/mucang/sundial/android/db/SundialDb;->getDb()Lcn/mucang/android/core/db/a;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcn/mucang/android/core/db/a;->E(Lcn/mucang/android/core/db/IdEntity;)V

    .line 2
    invoke-direct {p0, p1}, Lcn/mucang/sundial/android/tcp/data/DataManager;->updateDeviceParameterByDeviceInfo(Lcn/mucang/sundial/android/db/entity/DeviceInfo;)V

    const/4 p1, 0x0

    .line 3
    iput-object p1, p0, Lcn/mucang/sundial/android/tcp/data/DataManager;->deviceInfo:Lcn/mucang/sundial/android/db/entity/DeviceInfo;

    :cond_0
    return-void
.end method

.method public updateStudentStatus(Ljava/lang/String;Lcn/mucang/sundial/android/db/entity/StudentInfo$STATUS;)V
    .locals 3

    .line 1
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 2
    invoke-virtual {p2}, Lcn/mucang/sundial/android/db/entity/StudentInfo$STATUS;->getValue()I

    move-result p2

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    const-string v1, "status"

    invoke-virtual {v0, v1, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 3
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p2

    const-string v1, "update_time"

    invoke-virtual {v0, v1, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 4
    invoke-static {}, Lcn/mucang/sundial/android/db/SundialDb;->getInstance()Lcn/mucang/sundial/android/db/SundialDb;

    move-result-object p2

    invoke-virtual {p2}, Lcn/mucang/sundial/android/db/SundialDb;->getDb()Lcn/mucang/android/core/db/a;

    move-result-object p2

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    const-string p1, "t_student_info"

    const-string v2, "student_no = ?"

    invoke-virtual {p2, p1, v0, v2, v1}, Lcn/mucang/android/core/db/a;->D(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    const/4 p1, 0x0

    .line 5
    iput-object p1, p0, Lcn/mucang/sundial/android/tcp/data/DataManager;->studentInfo:Lcn/mucang/sundial/android/db/entity/StudentInfo;

    return-void
.end method
