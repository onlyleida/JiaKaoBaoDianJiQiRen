.class public Lcn/mucang/sundial/android/db/entity/CourseRecord;
.super Lcn/mucang/android/core/db/IdEntity;
.source "SourceFile"


# instance fields
.field private classroomId:J

.field private coachNo:Ljava/lang/String;

.field private courseCode:Ljava/lang/String;

.field private gnssData:Ljava/lang/String;

.field private maxSpeed:Ljava/lang/String;

.field private mileage:Ljava/lang/String;

.field private recordNo:Ljava/lang/String;

.field private recordStatus:I

.field private recordTime:J

.field private studentNo:Ljava/lang/String;

.field private uploadStatus:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcn/mucang/android/core/db/IdEntity;-><init>()V

    return-void
.end method

.method public static createRecordNo(JI)Ljava/lang/String;
    .locals 3

    .line 1
    invoke-static {}, Lcn/mucang/sundial/android/SundialManager;->getInstance()Lcn/mucang/sundial/android/SundialManager;

    move-result-object v0

    invoke-virtual {v0}, Lcn/mucang/sundial/android/SundialManager;->getRegisterInfo()Lcn/mucang/sundial/android/db/entity/RegisterInfo;

    move-result-object v0

    .line 2
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    if-eqz v0, :cond_0

    .line 3
    invoke-virtual {v0}, Lcn/mucang/sundial/android/db/entity/RegisterInfo;->getDeviceCode()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 4
    invoke-virtual {v0}, Lcn/mucang/sundial/android/db/entity/RegisterInfo;->getDeviceCode()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    :cond_0
    const-string v0, "0000000000000000"

    .line 5
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 6
    :goto_0
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v2, "yyMMdd"

    invoke-direct {v0, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 7
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v2

    .line 8
    invoke-virtual {v2, p0, p1}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 9
    invoke-virtual {v2}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 10
    new-instance p0, Ljava/text/DecimalFormat;

    const-string p1, "0000"

    invoke-direct {p0, p1}, Ljava/text/DecimalFormat;-><init>(Ljava/lang/String;)V

    int-to-long p1, p2

    .line 11
    invoke-virtual {p0, p1, p2}, Ljava/text/DecimalFormat;->format(J)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 12
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public getClassroomId()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcn/mucang/sundial/android/db/entity/CourseRecord;->classroomId:J

    return-wide v0
.end method

.method public getCoachNo()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcn/mucang/sundial/android/db/entity/CourseRecord;->coachNo:Ljava/lang/String;

    return-object v0
.end method

.method public getCourseCode()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcn/mucang/sundial/android/db/entity/CourseRecord;->courseCode:Ljava/lang/String;

    return-object v0
.end method

.method public getGnssData()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcn/mucang/sundial/android/db/entity/CourseRecord;->gnssData:Ljava/lang/String;

    return-object v0
.end method

.method public getMaxSpeed()Ljava/math/BigDecimal;
    .locals 2

    .line 1
    new-instance v0, Ljava/math/BigDecimal;

    iget-object v1, p0, Lcn/mucang/sundial/android/db/entity/CourseRecord;->maxSpeed:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/math/BigDecimal;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method public getMileage()Ljava/math/BigDecimal;
    .locals 2

    .line 1
    new-instance v0, Ljava/math/BigDecimal;

    iget-object v1, p0, Lcn/mucang/sundial/android/db/entity/CourseRecord;->mileage:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/math/BigDecimal;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method public getRecordNo()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcn/mucang/sundial/android/db/entity/CourseRecord;->recordNo:Ljava/lang/String;

    return-object v0
.end method

.method public getRecordStatus()I
    .locals 1

    .line 1
    iget v0, p0, Lcn/mucang/sundial/android/db/entity/CourseRecord;->recordStatus:I

    return v0
.end method

.method public getRecordTime()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcn/mucang/sundial/android/db/entity/CourseRecord;->recordTime:J

    return-wide v0
.end method

.method public getStudentNo()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcn/mucang/sundial/android/db/entity/CourseRecord;->studentNo:Ljava/lang/String;

    return-object v0
.end method

.method public getUploadStatus()I
    .locals 1

    .line 1
    iget v0, p0, Lcn/mucang/sundial/android/db/entity/CourseRecord;->uploadStatus:I

    return v0
.end method

.method public setClassroomId(J)V
    .locals 0

    .line 1
    iput-wide p1, p0, Lcn/mucang/sundial/android/db/entity/CourseRecord;->classroomId:J

    return-void
.end method

.method public setCoachNo(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcn/mucang/sundial/android/db/entity/CourseRecord;->coachNo:Ljava/lang/String;

    return-void
.end method

.method public setCourseCode(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcn/mucang/sundial/android/db/entity/CourseRecord;->courseCode:Ljava/lang/String;

    return-void
.end method

.method public setGnssData(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcn/mucang/sundial/android/db/entity/CourseRecord;->gnssData:Ljava/lang/String;

    return-void
.end method

.method public setMaxSpeed(Ljava/math/BigDecimal;)V
    .locals 0

    if-eqz p1, :cond_0

    .line 1
    invoke-virtual {p1}, Ljava/math/BigDecimal;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcn/mucang/sundial/android/db/entity/CourseRecord;->maxSpeed:Ljava/lang/String;

    goto :goto_0

    .line 2
    :cond_0
    sget-object p1, Ljava/math/BigDecimal;->ZERO:Ljava/math/BigDecimal;

    invoke-virtual {p1}, Ljava/math/BigDecimal;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcn/mucang/sundial/android/db/entity/CourseRecord;->maxSpeed:Ljava/lang/String;

    :goto_0
    return-void
.end method

.method public setMileage(Ljava/math/BigDecimal;)V
    .locals 0

    if-eqz p1, :cond_0

    .line 1
    invoke-virtual {p1}, Ljava/math/BigDecimal;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcn/mucang/sundial/android/db/entity/CourseRecord;->mileage:Ljava/lang/String;

    goto :goto_0

    .line 2
    :cond_0
    sget-object p1, Ljava/math/BigDecimal;->ZERO:Ljava/math/BigDecimal;

    invoke-virtual {p1}, Ljava/math/BigDecimal;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcn/mucang/sundial/android/db/entity/CourseRecord;->mileage:Ljava/lang/String;

    :goto_0
    return-void
.end method

.method public setRecordNo(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcn/mucang/sundial/android/db/entity/CourseRecord;->recordNo:Ljava/lang/String;

    return-void
.end method

.method public setRecordStatus(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcn/mucang/sundial/android/db/entity/CourseRecord;->recordStatus:I

    return-void
.end method

.method public setRecordTime(J)V
    .locals 0

    .line 1
    iput-wide p1, p0, Lcn/mucang/sundial/android/db/entity/CourseRecord;->recordTime:J

    return-void
.end method

.method public setStudentNo(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcn/mucang/sundial/android/db/entity/CourseRecord;->studentNo:Ljava/lang/String;

    return-void
.end method

.method public setUploadStatus(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcn/mucang/sundial/android/db/entity/CourseRecord;->uploadStatus:I

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .line 1
    invoke-static {p0}, Lcom/alibaba/fastjson/JSON;->toJSONString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
