.class public Lcn/mucang/sundial/android/tcp/message/training/send/UploadPhotoStartRequest;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcn/mucang/sundial/android/tcp/message/training/ExtendSendMessage;
.implements Lcn/mucang/sundial/android/tcp/message/Request;


# instance fields
.field private cameraChannel:I

.field private classroomId:J

.field private eventType:I

.field private faceDetection:I

.field private gnssData:[B

.field private imageSize:I

.field private photoDataSize:J

.field private photoId:Ljava/lang/String;

.field private totalCount:I

.field private uploadMode:I

.field private userCode:Ljava/lang/String;


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
    iget-object v1, p0, Lcn/mucang/sundial/android/tcp/message/training/send/UploadPhotoStartRequest;->photoId:Ljava/lang/String;

    const/16 v2, 0xa

    invoke-virtual {v0, v1, v2}, Lcn/mucang/sundial/android/tcp/encoder/BytesEncoder;->appendString(Ljava/lang/String;I)V

    .line 3
    iget-object v1, p0, Lcn/mucang/sundial/android/tcp/message/training/send/UploadPhotoStartRequest;->userCode:Ljava/lang/String;

    const/16 v2, 0x10

    invoke-virtual {v0, v1, v2}, Lcn/mucang/sundial/android/tcp/encoder/BytesEncoder;->appendString(Ljava/lang/String;I)V

    .line 4
    iget v1, p0, Lcn/mucang/sundial/android/tcp/message/training/send/UploadPhotoStartRequest;->uploadMode:I

    invoke-virtual {v0, v1}, Lcn/mucang/sundial/android/tcp/encoder/BytesEncoder;->appendBYTE(I)V

    .line 5
    iget v1, p0, Lcn/mucang/sundial/android/tcp/message/training/send/UploadPhotoStartRequest;->cameraChannel:I

    invoke-virtual {v0, v1}, Lcn/mucang/sundial/android/tcp/encoder/BytesEncoder;->appendBYTE(I)V

    .line 6
    iget v1, p0, Lcn/mucang/sundial/android/tcp/message/training/send/UploadPhotoStartRequest;->imageSize:I

    invoke-virtual {v0, v1}, Lcn/mucang/sundial/android/tcp/encoder/BytesEncoder;->appendBYTE(I)V

    .line 7
    iget v1, p0, Lcn/mucang/sundial/android/tcp/message/training/send/UploadPhotoStartRequest;->eventType:I

    invoke-virtual {v0, v1}, Lcn/mucang/sundial/android/tcp/encoder/BytesEncoder;->appendBYTE(I)V

    .line 8
    iget v1, p0, Lcn/mucang/sundial/android/tcp/message/training/send/UploadPhotoStartRequest;->totalCount:I

    invoke-virtual {v0, v1}, Lcn/mucang/sundial/android/tcp/encoder/BytesEncoder;->appendWORD(I)V

    .line 9
    iget-wide v1, p0, Lcn/mucang/sundial/android/tcp/message/training/send/UploadPhotoStartRequest;->photoDataSize:J

    invoke-virtual {v0, v1, v2}, Lcn/mucang/sundial/android/tcp/encoder/BytesEncoder;->appendDWORD(J)V

    .line 10
    iget-wide v1, p0, Lcn/mucang/sundial/android/tcp/message/training/send/UploadPhotoStartRequest;->classroomId:J

    invoke-virtual {v0, v1, v2}, Lcn/mucang/sundial/android/tcp/encoder/BytesEncoder;->appendDWORD(J)V

    .line 11
    iget-object v1, p0, Lcn/mucang/sundial/android/tcp/message/training/send/UploadPhotoStartRequest;->gnssData:[B

    invoke-virtual {v0, v1}, Lcn/mucang/sundial/android/tcp/encoder/BytesEncoder;->appendBytes([B)V

    .line 12
    iget v1, p0, Lcn/mucang/sundial/android/tcp/message/training/send/UploadPhotoStartRequest;->faceDetection:I

    invoke-virtual {v0, v1}, Lcn/mucang/sundial/android/tcp/encoder/BytesEncoder;->appendBYTE(I)V

    .line 13
    invoke-virtual {v0}, Lcn/mucang/sundial/android/tcp/encoder/BytesEncoder;->toByteArray()[B

    move-result-object v0

    return-object v0
.end method

.method public getCameraChannel()I
    .locals 1

    .line 1
    iget v0, p0, Lcn/mucang/sundial/android/tcp/message/training/send/UploadPhotoStartRequest;->cameraChannel:I

    return v0
.end method

.method public getClassroomId()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcn/mucang/sundial/android/tcp/message/training/send/UploadPhotoStartRequest;->classroomId:J

    return-wide v0
.end method

.method public getEventType()I
    .locals 1

    .line 1
    iget v0, p0, Lcn/mucang/sundial/android/tcp/message/training/send/UploadPhotoStartRequest;->eventType:I

    return v0
.end method

.method public getFaceDetection()I
    .locals 1

    .line 1
    iget v0, p0, Lcn/mucang/sundial/android/tcp/message/training/send/UploadPhotoStartRequest;->faceDetection:I

    return v0
.end method

.method public getGnssData()[B
    .locals 1

    .line 1
    iget-object v0, p0, Lcn/mucang/sundial/android/tcp/message/training/send/UploadPhotoStartRequest;->gnssData:[B

    return-object v0
.end method

.method public getId()I
    .locals 1

    const/16 v0, 0x305

    return v0
.end method

.method public getImageSize()I
    .locals 1

    .line 1
    iget v0, p0, Lcn/mucang/sundial/android/tcp/message/training/send/UploadPhotoStartRequest;->imageSize:I

    return v0
.end method

.method public getPhotoDataSize()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcn/mucang/sundial/android/tcp/message/training/send/UploadPhotoStartRequest;->photoDataSize:J

    return-wide v0
.end method

.method public getPhotoId()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcn/mucang/sundial/android/tcp/message/training/send/UploadPhotoStartRequest;->photoId:Ljava/lang/String;

    return-object v0
.end method

.method public getTotalCount()I
    .locals 1

    .line 1
    iget v0, p0, Lcn/mucang/sundial/android/tcp/message/training/send/UploadPhotoStartRequest;->totalCount:I

    return v0
.end method

.method public getUploadMode()I
    .locals 1

    .line 1
    iget v0, p0, Lcn/mucang/sundial/android/tcp/message/training/send/UploadPhotoStartRequest;->uploadMode:I

    return v0
.end method

.method public getUserCode()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcn/mucang/sundial/android/tcp/message/training/send/UploadPhotoStartRequest;->userCode:Ljava/lang/String;

    return-object v0
.end method

.method public synthetic isNeedReply()Z
    .locals 1

    invoke-static {p0}, Lcn/mucang/sundial/android/tcp/message/training/a;->$default$isNeedReply(Lcn/mucang/sundial/android/tcp/message/training/ExtendSendMessage;)Z

    move-result v0

    return v0
.end method

.method public synthetic isRealtimeMessage()Z
    .locals 1

    invoke-static {p0}, Lcn/mucang/sundial/android/tcp/message/training/a;->$default$isRealtimeMessage(Lcn/mucang/sundial/android/tcp/message/training/ExtendSendMessage;)Z

    move-result v0

    return v0
.end method

.method public setCameraChannel(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcn/mucang/sundial/android/tcp/message/training/send/UploadPhotoStartRequest;->cameraChannel:I

    return-void
.end method

.method public setClassroomId(J)V
    .locals 0

    .line 1
    iput-wide p1, p0, Lcn/mucang/sundial/android/tcp/message/training/send/UploadPhotoStartRequest;->classroomId:J

    return-void
.end method

.method public setEventType(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcn/mucang/sundial/android/tcp/message/training/send/UploadPhotoStartRequest;->eventType:I

    return-void
.end method

.method public setFaceDetection(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcn/mucang/sundial/android/tcp/message/training/send/UploadPhotoStartRequest;->faceDetection:I

    return-void
.end method

.method public setGnssData([B)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcn/mucang/sundial/android/tcp/message/training/send/UploadPhotoStartRequest;->gnssData:[B

    return-void
.end method

.method public setImageSize(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcn/mucang/sundial/android/tcp/message/training/send/UploadPhotoStartRequest;->imageSize:I

    return-void
.end method

.method public setPhotoDataSize(J)V
    .locals 0

    .line 1
    iput-wide p1, p0, Lcn/mucang/sundial/android/tcp/message/training/send/UploadPhotoStartRequest;->photoDataSize:J

    return-void
.end method

.method public setPhotoId(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcn/mucang/sundial/android/tcp/message/training/send/UploadPhotoStartRequest;->photoId:Ljava/lang/String;

    return-void
.end method

.method public setTotalCount(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcn/mucang/sundial/android/tcp/message/training/send/UploadPhotoStartRequest;->totalCount:I

    return-void
.end method

.method public setUploadMode(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcn/mucang/sundial/android/tcp/message/training/send/UploadPhotoStartRequest;->uploadMode:I

    return-void
.end method

.method public setUserCode(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcn/mucang/sundial/android/tcp/message/training/send/UploadPhotoStartRequest;->userCode:Ljava/lang/String;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "UploadPhotoStartRequest{photoId=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcn/mucang/sundial/android/tcp/message/training/send/UploadPhotoStartRequest;->photoId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", userCode=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcn/mucang/sundial/android/tcp/message/training/send/UploadPhotoStartRequest;->userCode:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v1, ", uploadMode="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcn/mucang/sundial/android/tcp/message/training/send/UploadPhotoStartRequest;->uploadMode:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", cameraChannel="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcn/mucang/sundial/android/tcp/message/training/send/UploadPhotoStartRequest;->cameraChannel:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", imageSize="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcn/mucang/sundial/android/tcp/message/training/send/UploadPhotoStartRequest;->imageSize:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", eventType="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcn/mucang/sundial/android/tcp/message/training/send/UploadPhotoStartRequest;->eventType:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", totalCount="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcn/mucang/sundial/android/tcp/message/training/send/UploadPhotoStartRequest;->totalCount:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", photoDataSize="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcn/mucang/sundial/android/tcp/message/training/send/UploadPhotoStartRequest;->photoDataSize:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", classroomId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcn/mucang/sundial/android/tcp/message/training/send/UploadPhotoStartRequest;->classroomId:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", gnssData is null="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcn/mucang/sundial/android/tcp/message/training/send/UploadPhotoStartRequest;->gnssData:[B

    if-nez v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", faceDetection="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcn/mucang/sundial/android/tcp/message/training/send/UploadPhotoStartRequest;->faceDetection:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
