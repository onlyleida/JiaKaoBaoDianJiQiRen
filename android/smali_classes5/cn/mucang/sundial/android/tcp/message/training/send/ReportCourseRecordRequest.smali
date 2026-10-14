.class public Lcn/mucang/sundial/android/tcp/message/training/send/ReportCourseRecordRequest;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcn/mucang/sundial/android/tcp/message/training/ExtendSendMessage;
.implements Lcn/mucang/sundial/android/tcp/PacketResultConcern;


# instance fields
.field private classroomId:J

.field private coachNo:Ljava/lang/String;

.field private courseCode:Ljava/lang/String;

.field private gnssData:[B

.field private maxSpeed:Ljava/math/BigDecimal;

.field private mileage:Ljava/math/BigDecimal;

.field private realtimeMessage:Z

.field private recordNo:Ljava/lang/String;

.field private recordStatus:I

.field private recordTime:Ljava/lang/String;

.field private reportType:I

.field private studentNo:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static from(Lcn/mucang/sundial/android/db/entity/CourseRecord;IZ)Lcn/mucang/sundial/android/tcp/message/training/send/ReportCourseRecordRequest;
    .locals 3

    .line 1
    new-instance v0, Lcn/mucang/sundial/android/tcp/message/training/send/ReportCourseRecordRequest;

    invoke-direct {v0}, Lcn/mucang/sundial/android/tcp/message/training/send/ReportCourseRecordRequest;-><init>()V

    .line 2
    iput-boolean p2, v0, Lcn/mucang/sundial/android/tcp/message/training/send/ReportCourseRecordRequest;->realtimeMessage:Z

    .line 3
    invoke-virtual {p0}, Lcn/mucang/sundial/android/db/entity/CourseRecord;->getRecordNo()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Lcn/mucang/sundial/android/tcp/message/training/send/ReportCourseRecordRequest;->setRecordNo(Ljava/lang/String;)V

    .line 4
    invoke-virtual {v0, p1}, Lcn/mucang/sundial/android/tcp/message/training/send/ReportCourseRecordRequest;->setReportType(I)V

    .line 5
    invoke-virtual {p0}, Lcn/mucang/sundial/android/db/entity/CourseRecord;->getStudentNo()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcn/mucang/sundial/android/tcp/message/training/send/ReportCourseRecordRequest;->setStudentNo(Ljava/lang/String;)V

    .line 6
    invoke-virtual {p0}, Lcn/mucang/sundial/android/db/entity/CourseRecord;->getCoachNo()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcn/mucang/sundial/android/tcp/message/training/send/ReportCourseRecordRequest;->setCoachNo(Ljava/lang/String;)V

    .line 7
    invoke-virtual {p0}, Lcn/mucang/sundial/android/db/entity/CourseRecord;->getCourseCode()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcn/mucang/sundial/android/tcp/message/training/send/ReportCourseRecordRequest;->setCourseCode(Ljava/lang/String;)V

    .line 8
    invoke-virtual {p0}, Lcn/mucang/sundial/android/db/entity/CourseRecord;->getClassroomId()J

    move-result-wide p1

    invoke-virtual {v0, p1, p2}, Lcn/mucang/sundial/android/tcp/message/training/send/ReportCourseRecordRequest;->setClassroomId(J)V

    .line 9
    invoke-virtual {p0}, Lcn/mucang/sundial/android/db/entity/CourseRecord;->getRecordStatus()I

    move-result p1

    invoke-virtual {v0, p1}, Lcn/mucang/sundial/android/tcp/message/training/send/ReportCourseRecordRequest;->setRecordStatus(I)V

    .line 10
    invoke-virtual {p0}, Lcn/mucang/sundial/android/db/entity/CourseRecord;->getMaxSpeed()Ljava/math/BigDecimal;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcn/mucang/sundial/android/tcp/message/training/send/ReportCourseRecordRequest;->setMaxSpeed(Ljava/math/BigDecimal;)V

    .line 11
    invoke-virtual {p0}, Lcn/mucang/sundial/android/db/entity/CourseRecord;->getMileage()Ljava/math/BigDecimal;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcn/mucang/sundial/android/tcp/message/training/send/ReportCourseRecordRequest;->setMileage(Ljava/math/BigDecimal;)V

    .line 12
    new-instance p1, Ljava/util/Date;

    invoke-virtual {p0}, Lcn/mucang/sundial/android/db/entity/CourseRecord;->getRecordTime()J

    move-result-wide v1

    invoke-direct {p1, v1, v2}, Ljava/util/Date;-><init>(J)V

    invoke-static {p1}, Lcn/mucang/sundial/android/tcp/utils/DeviceUtils;->toBCD3(Ljava/util/Date;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcn/mucang/sundial/android/tcp/message/training/send/ReportCourseRecordRequest;->setRecordTime(Ljava/lang/String;)V

    .line 13
    invoke-virtual {p0}, Lcn/mucang/sundial/android/db/entity/CourseRecord;->getGnssData()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcn/mucang/sundial/android/tcp/data/gnss/GNSSData;->toBytes(Ljava/lang/String;)[B

    move-result-object p0

    invoke-virtual {v0, p0}, Lcn/mucang/sundial/android/tcp/message/training/send/ReportCourseRecordRequest;->setGnssData([B)V

    return-object v0
.end method


# virtual methods
.method public encode()[B
    .locals 5

    .line 1
    new-instance v0, Lcn/mucang/sundial/android/tcp/encoder/BytesEncoder;

    invoke-direct {v0}, Lcn/mucang/sundial/android/tcp/encoder/BytesEncoder;-><init>()V

    .line 2
    iget-object v1, p0, Lcn/mucang/sundial/android/tcp/message/training/send/ReportCourseRecordRequest;->recordNo:Ljava/lang/String;

    const/16 v2, 0x1a

    invoke-virtual {v0, v1, v2}, Lcn/mucang/sundial/android/tcp/encoder/BytesEncoder;->appendString(Ljava/lang/String;I)V

    .line 3
    iget v1, p0, Lcn/mucang/sundial/android/tcp/message/training/send/ReportCourseRecordRequest;->reportType:I

    invoke-virtual {v0, v1}, Lcn/mucang/sundial/android/tcp/encoder/BytesEncoder;->appendBYTE(I)V

    .line 4
    iget-object v1, p0, Lcn/mucang/sundial/android/tcp/message/training/send/ReportCourseRecordRequest;->studentNo:Ljava/lang/String;

    const/16 v2, 0x10

    invoke-virtual {v0, v1, v2}, Lcn/mucang/sundial/android/tcp/encoder/BytesEncoder;->appendString(Ljava/lang/String;I)V

    .line 5
    iget-object v1, p0, Lcn/mucang/sundial/android/tcp/message/training/send/ReportCourseRecordRequest;->coachNo:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcn/mucang/sundial/android/tcp/encoder/BytesEncoder;->appendString(Ljava/lang/String;I)V

    .line 6
    iget-wide v1, p0, Lcn/mucang/sundial/android/tcp/message/training/send/ReportCourseRecordRequest;->classroomId:J

    invoke-virtual {v0, v1, v2}, Lcn/mucang/sundial/android/tcp/encoder/BytesEncoder;->appendDWORD(J)V

    .line 7
    iget-object v1, p0, Lcn/mucang/sundial/android/tcp/message/training/send/ReportCourseRecordRequest;->recordTime:Ljava/lang/String;

    const/4 v2, 0x3

    invoke-virtual {v0, v1, v2}, Lcn/mucang/sundial/android/tcp/encoder/BytesEncoder;->appendBCD(Ljava/lang/String;I)V

    .line 8
    iget-object v1, p0, Lcn/mucang/sundial/android/tcp/message/training/send/ReportCourseRecordRequest;->courseCode:Ljava/lang/String;

    const/4 v2, 0x5

    invoke-virtual {v0, v1, v2}, Lcn/mucang/sundial/android/tcp/encoder/BytesEncoder;->appendBCD(Ljava/lang/String;I)V

    .line 9
    iget v1, p0, Lcn/mucang/sundial/android/tcp/message/training/send/ReportCourseRecordRequest;->recordStatus:I

    invoke-virtual {v0, v1}, Lcn/mucang/sundial/android/tcp/encoder/BytesEncoder;->appendBYTE(I)V

    .line 10
    iget-object v1, p0, Lcn/mucang/sundial/android/tcp/message/training/send/ReportCourseRecordRequest;->maxSpeed:Ljava/math/BigDecimal;

    invoke-virtual {v1}, Ljava/math/BigDecimal;->doubleValue()D

    move-result-wide v1

    invoke-static {}, Lcn/mucang/sundial/android/SundialManager;->getInstance()Lcn/mucang/sundial/android/SundialManager;

    move-result-object v3

    invoke-virtual {v3}, Lcn/mucang/sundial/android/SundialManager;->getAccuracyMultiplier()I

    move-result v3

    int-to-double v3, v3

    mul-double v1, v1, v3

    double-to-int v1, v1

    invoke-virtual {v0, v1}, Lcn/mucang/sundial/android/tcp/encoder/BytesEncoder;->appendWORD(I)V

    .line 11
    iget-object v1, p0, Lcn/mucang/sundial/android/tcp/message/training/send/ReportCourseRecordRequest;->mileage:Ljava/math/BigDecimal;

    invoke-virtual {v1}, Ljava/math/BigDecimal;->doubleValue()D

    move-result-wide v1

    invoke-static {}, Lcn/mucang/sundial/android/SundialManager;->getInstance()Lcn/mucang/sundial/android/SundialManager;

    move-result-object v3

    invoke-virtual {v3}, Lcn/mucang/sundial/android/SundialManager;->getAccuracyMultiplier()I

    move-result v3

    int-to-double v3, v3

    mul-double v1, v1, v3

    double-to-int v1, v1

    invoke-virtual {v0, v1}, Lcn/mucang/sundial/android/tcp/encoder/BytesEncoder;->appendWORD(I)V

    .line 12
    iget-object v1, p0, Lcn/mucang/sundial/android/tcp/message/training/send/ReportCourseRecordRequest;->gnssData:[B

    invoke-virtual {v0, v1}, Lcn/mucang/sundial/android/tcp/encoder/BytesEncoder;->appendBytes([B)V

    .line 13
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\u5206\u949f\u5b66\u65f6\u6570\u636e: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lcn/mucang/sundial/android/tcp/encoder/BytesEncoder;->toByteArray()[B

    move-result-object v2

    invoke-static {v2}, Lcn/mucang/android/core/encode/a;->e([B)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcn/mucang/sundial/android/log/SundialLog;->com(Ljava/lang/Object;)V

    .line 14
    invoke-virtual {v0}, Lcn/mucang/sundial/android/tcp/encoder/BytesEncoder;->toByteArray()[B

    move-result-object v0

    return-object v0
.end method

.method public getClassroomId()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcn/mucang/sundial/android/tcp/message/training/send/ReportCourseRecordRequest;->classroomId:J

    return-wide v0
.end method

.method public getCoachNo()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcn/mucang/sundial/android/tcp/message/training/send/ReportCourseRecordRequest;->coachNo:Ljava/lang/String;

    return-object v0
.end method

.method public getCourseCode()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcn/mucang/sundial/android/tcp/message/training/send/ReportCourseRecordRequest;->courseCode:Ljava/lang/String;

    return-object v0
.end method

.method public getGnssData()[B
    .locals 1

    .line 1
    iget-object v0, p0, Lcn/mucang/sundial/android/tcp/message/training/send/ReportCourseRecordRequest;->gnssData:[B

    return-object v0
.end method

.method public getId()I
    .locals 1

    const/16 v0, 0x203

    return v0
.end method

.method public getMaxSpeed()Ljava/math/BigDecimal;
    .locals 1

    .line 1
    iget-object v0, p0, Lcn/mucang/sundial/android/tcp/message/training/send/ReportCourseRecordRequest;->maxSpeed:Ljava/math/BigDecimal;

    return-object v0
.end method

.method public getMileage()Ljava/math/BigDecimal;
    .locals 1

    .line 1
    iget-object v0, p0, Lcn/mucang/sundial/android/tcp/message/training/send/ReportCourseRecordRequest;->mileage:Ljava/math/BigDecimal;

    return-object v0
.end method

.method public getRecordNo()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcn/mucang/sundial/android/tcp/message/training/send/ReportCourseRecordRequest;->recordNo:Ljava/lang/String;

    return-object v0
.end method

.method public getRecordStatus()I
    .locals 1

    .line 1
    iget v0, p0, Lcn/mucang/sundial/android/tcp/message/training/send/ReportCourseRecordRequest;->recordStatus:I

    return v0
.end method

.method public getRecordTime()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcn/mucang/sundial/android/tcp/message/training/send/ReportCourseRecordRequest;->recordTime:Ljava/lang/String;

    return-object v0
.end method

.method public getReportType()I
    .locals 1

    .line 1
    iget v0, p0, Lcn/mucang/sundial/android/tcp/message/training/send/ReportCourseRecordRequest;->reportType:I

    return v0
.end method

.method public getStudentNo()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcn/mucang/sundial/android/tcp/message/training/send/ReportCourseRecordRequest;->studentNo:Ljava/lang/String;

    return-object v0
.end method

.method public synthetic isNeedReply()Z
    .locals 1

    invoke-static {p0}, Lcn/mucang/sundial/android/tcp/message/training/a;->$default$isNeedReply(Lcn/mucang/sundial/android/tcp/message/training/ExtendSendMessage;)Z

    move-result v0

    return v0
.end method

.method public isRealtimeMessage()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcn/mucang/sundial/android/tcp/message/training/send/ReportCourseRecordRequest;->realtimeMessage:Z

    return v0
.end method

.method public setClassroomId(J)V
    .locals 0

    .line 1
    iput-wide p1, p0, Lcn/mucang/sundial/android/tcp/message/training/send/ReportCourseRecordRequest;->classroomId:J

    return-void
.end method

.method public setCoachNo(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcn/mucang/sundial/android/tcp/message/training/send/ReportCourseRecordRequest;->coachNo:Ljava/lang/String;

    return-void
.end method

.method public setCourseCode(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcn/mucang/sundial/android/tcp/message/training/send/ReportCourseRecordRequest;->courseCode:Ljava/lang/String;

    return-void
.end method

.method public setGnssData([B)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcn/mucang/sundial/android/tcp/message/training/send/ReportCourseRecordRequest;->gnssData:[B

    return-void
.end method

.method public setMaxSpeed(Ljava/math/BigDecimal;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcn/mucang/sundial/android/tcp/message/training/send/ReportCourseRecordRequest;->maxSpeed:Ljava/math/BigDecimal;

    return-void
.end method

.method public setMileage(Ljava/math/BigDecimal;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcn/mucang/sundial/android/tcp/message/training/send/ReportCourseRecordRequest;->mileage:Ljava/math/BigDecimal;

    return-void
.end method

.method public setRealtimeMessage(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcn/mucang/sundial/android/tcp/message/training/send/ReportCourseRecordRequest;->realtimeMessage:Z

    return-void
.end method

.method public setRecordNo(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcn/mucang/sundial/android/tcp/message/training/send/ReportCourseRecordRequest;->recordNo:Ljava/lang/String;

    return-void
.end method

.method public setRecordStatus(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcn/mucang/sundial/android/tcp/message/training/send/ReportCourseRecordRequest;->recordStatus:I

    return-void
.end method

.method public setRecordTime(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcn/mucang/sundial/android/tcp/message/training/send/ReportCourseRecordRequest;->recordTime:Ljava/lang/String;

    return-void
.end method

.method public setReportType(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcn/mucang/sundial/android/tcp/message/training/send/ReportCourseRecordRequest;->reportType:I

    return-void
.end method

.method public setStudentNo(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcn/mucang/sundial/android/tcp/message/training/send/ReportCourseRecordRequest;->studentNo:Ljava/lang/String;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "{realtimeMessage="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcn/mucang/sundial/android/tcp/message/training/send/ReportCourseRecordRequest;->realtimeMessage:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", recordNo=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcn/mucang/sundial/android/tcp/message/training/send/ReportCourseRecordRequest;->recordNo:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", reportType="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcn/mucang/sundial/android/tcp/message/training/send/ReportCourseRecordRequest;->reportType:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", studentNo=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcn/mucang/sundial/android/tcp/message/training/send/ReportCourseRecordRequest;->studentNo:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", coachNo=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcn/mucang/sundial/android/tcp/message/training/send/ReportCourseRecordRequest;->coachNo:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", classroomId="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v2, p0, Lcn/mucang/sundial/android/tcp/message/training/send/ReportCourseRecordRequest;->classroomId:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, ", recordTime=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcn/mucang/sundial/android/tcp/message/training/send/ReportCourseRecordRequest;->recordTime:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", courseCode=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcn/mucang/sundial/android/tcp/message/training/send/ReportCourseRecordRequest;->courseCode:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v1, ", recordStatus="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcn/mucang/sundial/android/tcp/message/training/send/ReportCourseRecordRequest;->recordStatus:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", maxSpeed="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcn/mucang/sundial/android/tcp/message/training/send/ReportCourseRecordRequest;->maxSpeed:Ljava/math/BigDecimal;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", mileage="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcn/mucang/sundial/android/tcp/message/training/send/ReportCourseRecordRequest;->mileage:Ljava/math/BigDecimal;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", gnssData is null ="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcn/mucang/sundial/android/tcp/message/training/send/ReportCourseRecordRequest;->gnssData:[B

    if-nez v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
