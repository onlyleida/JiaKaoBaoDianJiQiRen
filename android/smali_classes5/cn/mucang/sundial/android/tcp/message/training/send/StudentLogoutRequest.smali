.class public Lcn/mucang/sundial/android/tcp/message/training/send/StudentLogoutRequest;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcn/mucang/sundial/android/tcp/message/training/ExtendSendMessage;
.implements Lcn/mucang/sundial/android/tcp/message/Request;


# instance fields
.field private classroomId:J

.field private currentDuration:I

.field private currentMileage:Ljava/math/BigDecimal;

.field private gnssData:Lcn/mucang/sundial/android/tcp/data/gnss/GNSSData;

.field private studentNo:Ljava/lang/String;

.field private timestamp:Ljava/sql/Timestamp;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public encode()[B
    .locals 5

    .line 1
    new-instance v0, Lcn/mucang/sundial/android/tcp/encoder/BytesEncoder;

    invoke-direct {v0}, Lcn/mucang/sundial/android/tcp/encoder/BytesEncoder;-><init>()V

    .line 2
    iget-object v1, p0, Lcn/mucang/sundial/android/tcp/message/training/send/StudentLogoutRequest;->studentNo:Ljava/lang/String;

    const/16 v2, 0x10

    invoke-virtual {v0, v1, v2}, Lcn/mucang/sundial/android/tcp/encoder/BytesEncoder;->appendString(Ljava/lang/String;I)V

    .line 3
    iget-object v1, p0, Lcn/mucang/sundial/android/tcp/message/training/send/StudentLogoutRequest;->timestamp:Ljava/sql/Timestamp;

    invoke-static {v1}, Lcn/mucang/sundial/android/tcp/utils/DeviceUtils;->toBCD(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x6

    invoke-virtual {v0, v1, v2}, Lcn/mucang/sundial/android/tcp/encoder/BytesEncoder;->appendBCD(Ljava/lang/String;I)V

    .line 4
    iget v1, p0, Lcn/mucang/sundial/android/tcp/message/training/send/StudentLogoutRequest;->currentDuration:I

    invoke-virtual {v0, v1}, Lcn/mucang/sundial/android/tcp/encoder/BytesEncoder;->appendWORD(I)V

    .line 5
    iget-object v1, p0, Lcn/mucang/sundial/android/tcp/message/training/send/StudentLogoutRequest;->currentMileage:Ljava/math/BigDecimal;

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

    .line 6
    iget-wide v1, p0, Lcn/mucang/sundial/android/tcp/message/training/send/StudentLogoutRequest;->classroomId:J

    invoke-virtual {v0, v1, v2}, Lcn/mucang/sundial/android/tcp/encoder/BytesEncoder;->appendDWORD(J)V

    .line 7
    iget-object v1, p0, Lcn/mucang/sundial/android/tcp/message/training/send/StudentLogoutRequest;->gnssData:Lcn/mucang/sundial/android/tcp/data/gnss/GNSSData;

    invoke-virtual {v1}, Lcn/mucang/sundial/android/tcp/data/gnss/GNSSData;->encode()[B

    move-result-object v1

    invoke-virtual {v0, v1}, Lcn/mucang/sundial/android/tcp/encoder/BytesEncoder;->appendBytes([B)V

    .line 8
    invoke-virtual {v0}, Lcn/mucang/sundial/android/tcp/encoder/BytesEncoder;->toByteArray()[B

    move-result-object v0

    return-object v0
.end method

.method public getClassroomId()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcn/mucang/sundial/android/tcp/message/training/send/StudentLogoutRequest;->classroomId:J

    return-wide v0
.end method

.method public getCurrentDuration()I
    .locals 1

    .line 1
    iget v0, p0, Lcn/mucang/sundial/android/tcp/message/training/send/StudentLogoutRequest;->currentDuration:I

    return v0
.end method

.method public getCurrentMileage()Ljava/math/BigDecimal;
    .locals 1

    .line 1
    iget-object v0, p0, Lcn/mucang/sundial/android/tcp/message/training/send/StudentLogoutRequest;->currentMileage:Ljava/math/BigDecimal;

    return-object v0
.end method

.method public getGnssData()Lcn/mucang/sundial/android/tcp/data/gnss/GNSSData;
    .locals 1

    .line 1
    iget-object v0, p0, Lcn/mucang/sundial/android/tcp/message/training/send/StudentLogoutRequest;->gnssData:Lcn/mucang/sundial/android/tcp/data/gnss/GNSSData;

    return-object v0
.end method

.method public getId()I
    .locals 1

    const/16 v0, 0x202

    return v0
.end method

.method public getStudentNo()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcn/mucang/sundial/android/tcp/message/training/send/StudentLogoutRequest;->studentNo:Ljava/lang/String;

    return-object v0
.end method

.method public getTimestamp()Ljava/sql/Timestamp;
    .locals 1

    .line 1
    iget-object v0, p0, Lcn/mucang/sundial/android/tcp/message/training/send/StudentLogoutRequest;->timestamp:Ljava/sql/Timestamp;

    return-object v0
.end method

.method public isNeedReply()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public synthetic isRealtimeMessage()Z
    .locals 1

    invoke-static {p0}, Lcn/mucang/sundial/android/tcp/message/training/a;->$default$isRealtimeMessage(Lcn/mucang/sundial/android/tcp/message/training/ExtendSendMessage;)Z

    move-result v0

    return v0
.end method

.method public setClassroomId(J)V
    .locals 0

    .line 1
    iput-wide p1, p0, Lcn/mucang/sundial/android/tcp/message/training/send/StudentLogoutRequest;->classroomId:J

    return-void
.end method

.method public setCurrentDuration(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcn/mucang/sundial/android/tcp/message/training/send/StudentLogoutRequest;->currentDuration:I

    return-void
.end method

.method public setCurrentMileage(Ljava/math/BigDecimal;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcn/mucang/sundial/android/tcp/message/training/send/StudentLogoutRequest;->currentMileage:Ljava/math/BigDecimal;

    return-void
.end method

.method public setGnssData(Lcn/mucang/sundial/android/tcp/data/gnss/GNSSData;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcn/mucang/sundial/android/tcp/message/training/send/StudentLogoutRequest;->gnssData:Lcn/mucang/sundial/android/tcp/data/gnss/GNSSData;

    return-void
.end method

.method public setStudentNo(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcn/mucang/sundial/android/tcp/message/training/send/StudentLogoutRequest;->studentNo:Ljava/lang/String;

    return-void
.end method

.method public setTimestamp(Ljava/sql/Timestamp;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcn/mucang/sundial/android/tcp/message/training/send/StudentLogoutRequest;->timestamp:Ljava/sql/Timestamp;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "StudentLogoutRequest{studentNo=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcn/mucang/sundial/android/tcp/message/training/send/StudentLogoutRequest;->studentNo:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v1, ", timestamp="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcn/mucang/sundial/android/tcp/message/training/send/StudentLogoutRequest;->timestamp:Ljava/sql/Timestamp;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", currentDuration="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcn/mucang/sundial/android/tcp/message/training/send/StudentLogoutRequest;->currentDuration:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", currentMileage="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcn/mucang/sundial/android/tcp/message/training/send/StudentLogoutRequest;->currentMileage:Ljava/math/BigDecimal;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", classroomId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcn/mucang/sundial/android/tcp/message/training/send/StudentLogoutRequest;->classroomId:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", gnssData="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcn/mucang/sundial/android/tcp/message/training/send/StudentLogoutRequest;->gnssData:Lcn/mucang/sundial/android/tcp/data/gnss/GNSSData;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
