.class public Lcn/mucang/sundial/android/tcp/message/training/send/StudentLoginRequest;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcn/mucang/sundial/android/tcp/message/training/ExtendSendMessage;
.implements Lcn/mucang/sundial/android/tcp/message/Request;


# instance fields
.field private classroomId:J

.field private coachNo:Ljava/lang/String;

.field private courseCode:Ljava/lang/String;

.field private gnssData:Lcn/mucang/sundial/android/tcp/data/gnss/GNSSData;

.field private studentNo:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public encode()[B
    .locals 3

    .line 1
    new-instance v0, Lcn/mucang/sundial/android/tcp/encoder/BytesEncoder;

    invoke-direct {v0}, Lcn/mucang/sundial/android/tcp/encoder/BytesEncoder;-><init>()V

    .line 2
    iget-object v1, p0, Lcn/mucang/sundial/android/tcp/message/training/send/StudentLoginRequest;->studentNo:Ljava/lang/String;

    const/16 v2, 0x10

    invoke-virtual {v0, v1, v2}, Lcn/mucang/sundial/android/tcp/encoder/BytesEncoder;->appendString(Ljava/lang/String;I)V

    .line 3
    iget-object v1, p0, Lcn/mucang/sundial/android/tcp/message/training/send/StudentLoginRequest;->coachNo:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcn/mucang/sundial/android/tcp/encoder/BytesEncoder;->appendString(Ljava/lang/String;I)V

    .line 4
    iget-object v1, p0, Lcn/mucang/sundial/android/tcp/message/training/send/StudentLoginRequest;->courseCode:Ljava/lang/String;

    const/4 v2, 0x5

    invoke-virtual {v0, v1, v2}, Lcn/mucang/sundial/android/tcp/encoder/BytesEncoder;->appendBCD(Ljava/lang/String;I)V

    .line 5
    iget-wide v1, p0, Lcn/mucang/sundial/android/tcp/message/training/send/StudentLoginRequest;->classroomId:J

    invoke-virtual {v0, v1, v2}, Lcn/mucang/sundial/android/tcp/encoder/BytesEncoder;->appendDWORD(J)V

    .line 6
    iget-object v1, p0, Lcn/mucang/sundial/android/tcp/message/training/send/StudentLoginRequest;->gnssData:Lcn/mucang/sundial/android/tcp/data/gnss/GNSSData;

    invoke-virtual {v1}, Lcn/mucang/sundial/android/tcp/data/gnss/GNSSData;->encode()[B

    move-result-object v1

    invoke-virtual {v0, v1}, Lcn/mucang/sundial/android/tcp/encoder/BytesEncoder;->appendBytes([B)V

    .line 7
    invoke-virtual {v0}, Lcn/mucang/sundial/android/tcp/encoder/BytesEncoder;->toByteArray()[B

    move-result-object v0

    return-object v0
.end method

.method public getClassroomId()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcn/mucang/sundial/android/tcp/message/training/send/StudentLoginRequest;->classroomId:J

    return-wide v0
.end method

.method public getCoachNo()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcn/mucang/sundial/android/tcp/message/training/send/StudentLoginRequest;->coachNo:Ljava/lang/String;

    return-object v0
.end method

.method public getCourseCode()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcn/mucang/sundial/android/tcp/message/training/send/StudentLoginRequest;->courseCode:Ljava/lang/String;

    return-object v0
.end method

.method public getGnssData()Lcn/mucang/sundial/android/tcp/data/gnss/GNSSData;
    .locals 1

    .line 1
    iget-object v0, p0, Lcn/mucang/sundial/android/tcp/message/training/send/StudentLoginRequest;->gnssData:Lcn/mucang/sundial/android/tcp/data/gnss/GNSSData;

    return-object v0
.end method

.method public getId()I
    .locals 1

    const/16 v0, 0x201

    return v0
.end method

.method public getStudentNo()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcn/mucang/sundial/android/tcp/message/training/send/StudentLoginRequest;->studentNo:Ljava/lang/String;

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
    iput-wide p1, p0, Lcn/mucang/sundial/android/tcp/message/training/send/StudentLoginRequest;->classroomId:J

    return-void
.end method

.method public setCoachNo(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcn/mucang/sundial/android/tcp/message/training/send/StudentLoginRequest;->coachNo:Ljava/lang/String;

    return-void
.end method

.method public setCourseCode(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcn/mucang/sundial/android/tcp/message/training/send/StudentLoginRequest;->courseCode:Ljava/lang/String;

    return-void
.end method

.method public setGnssData(Lcn/mucang/sundial/android/tcp/data/gnss/GNSSData;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcn/mucang/sundial/android/tcp/message/training/send/StudentLoginRequest;->gnssData:Lcn/mucang/sundial/android/tcp/data/gnss/GNSSData;

    return-void
.end method

.method public setStudentNo(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcn/mucang/sundial/android/tcp/message/training/send/StudentLoginRequest;->studentNo:Ljava/lang/String;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "StudentLoginRequest{studentNo=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcn/mucang/sundial/android/tcp/message/training/send/StudentLoginRequest;->studentNo:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", coachNo=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcn/mucang/sundial/android/tcp/message/training/send/StudentLoginRequest;->coachNo:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", courseCode=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcn/mucang/sundial/android/tcp/message/training/send/StudentLoginRequest;->courseCode:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v1, ", classroomId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcn/mucang/sundial/android/tcp/message/training/send/StudentLoginRequest;->classroomId:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", gnssData="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcn/mucang/sundial/android/tcp/message/training/send/StudentLoginRequest;->gnssData:Lcn/mucang/sundial/android/tcp/data/gnss/GNSSData;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
