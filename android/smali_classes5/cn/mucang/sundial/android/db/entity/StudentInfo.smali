.class public Lcn/mucang/sundial/android/db/entity/StudentInfo;
.super Lcn/mucang/android/core/db/IdEntity;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/mucang/sundial/android/db/entity/StudentInfo$STATUS;
    }
.end annotation


# instance fields
.field private avatar:Ljava/lang/String;

.field private classroomId:J

.field private coachNo:Ljava/lang/String;

.field private coachTakePhoto:I

.field private courseCode:Ljava/lang/String;

.field private driveLicence:Ljava/lang/String;

.field private finishedDuration:I

.field private finishedMileage:I

.field private idCard:Ljava/lang/String;

.field private status:I

.field private studentName:Ljava/lang/String;

.field private studentNo:Ljava/lang/String;

.field private totalDuration:I

.field private totalMileage:I

.field private updateTime:J


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcn/mucang/android/core/db/IdEntity;-><init>()V

    return-void
.end method


# virtual methods
.method public getAvatar()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcn/mucang/sundial/android/db/entity/StudentInfo;->avatar:Ljava/lang/String;

    return-object v0
.end method

.method public getClassroomId()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcn/mucang/sundial/android/db/entity/StudentInfo;->classroomId:J

    return-wide v0
.end method

.method public getCoachNo()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcn/mucang/sundial/android/db/entity/StudentInfo;->coachNo:Ljava/lang/String;

    return-object v0
.end method

.method public getCoachTakePhoto()I
    .locals 1

    .line 1
    iget v0, p0, Lcn/mucang/sundial/android/db/entity/StudentInfo;->coachTakePhoto:I

    return v0
.end method

.method public getCourseCode()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcn/mucang/sundial/android/db/entity/StudentInfo;->courseCode:Ljava/lang/String;

    return-object v0
.end method

.method public getDriveLicence()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcn/mucang/sundial/android/db/entity/StudentInfo;->driveLicence:Ljava/lang/String;

    return-object v0
.end method

.method public getFinishedDuration()I
    .locals 1

    .line 1
    iget v0, p0, Lcn/mucang/sundial/android/db/entity/StudentInfo;->finishedDuration:I

    return v0
.end method

.method public getFinishedMileage()I
    .locals 1

    .line 1
    iget v0, p0, Lcn/mucang/sundial/android/db/entity/StudentInfo;->finishedMileage:I

    return v0
.end method

.method public getIdCard()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcn/mucang/sundial/android/db/entity/StudentInfo;->idCard:Ljava/lang/String;

    return-object v0
.end method

.method public getStatus()I
    .locals 1

    .line 1
    iget v0, p0, Lcn/mucang/sundial/android/db/entity/StudentInfo;->status:I

    return v0
.end method

.method public getStudentName()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcn/mucang/sundial/android/db/entity/StudentInfo;->studentName:Ljava/lang/String;

    return-object v0
.end method

.method public getStudentNo()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcn/mucang/sundial/android/db/entity/StudentInfo;->studentNo:Ljava/lang/String;

    return-object v0
.end method

.method public getTotalDuration()I
    .locals 1

    .line 1
    iget v0, p0, Lcn/mucang/sundial/android/db/entity/StudentInfo;->totalDuration:I

    return v0
.end method

.method public getTotalMileage()I
    .locals 1

    .line 1
    iget v0, p0, Lcn/mucang/sundial/android/db/entity/StudentInfo;->totalMileage:I

    return v0
.end method

.method public getUpdateTime()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcn/mucang/sundial/android/db/entity/StudentInfo;->updateTime:J

    return-wide v0
.end method

.method public infoValid()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcn/mucang/sundial/android/db/entity/StudentInfo;->studentNo:Ljava/lang/String;

    invoke-static {v0}, Lcn/mucang/android/core/utils/n0;->g(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcn/mucang/sundial/android/db/entity/StudentInfo;->idCard:Ljava/lang/String;

    invoke-static {v0}, Lcn/mucang/android/core/utils/n0;->g(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isCoachTakePhoto()Z
    .locals 2

    .line 1
    iget v0, p0, Lcn/mucang/sundial/android/db/entity/StudentInfo;->coachTakePhoto:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public setAvatar(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcn/mucang/sundial/android/db/entity/StudentInfo;->avatar:Ljava/lang/String;

    return-void
.end method

.method public setClassroomId(J)V
    .locals 0

    .line 1
    iput-wide p1, p0, Lcn/mucang/sundial/android/db/entity/StudentInfo;->classroomId:J

    return-void
.end method

.method public setCoachNo(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcn/mucang/sundial/android/db/entity/StudentInfo;->coachNo:Ljava/lang/String;

    return-void
.end method

.method public setCoachTakePhoto(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcn/mucang/sundial/android/db/entity/StudentInfo;->coachTakePhoto:I

    return-void
.end method

.method public setCourseCode(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcn/mucang/sundial/android/db/entity/StudentInfo;->courseCode:Ljava/lang/String;

    return-void
.end method

.method public setDriveLicence(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcn/mucang/sundial/android/db/entity/StudentInfo;->driveLicence:Ljava/lang/String;

    return-void
.end method

.method public setFinishedDuration(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcn/mucang/sundial/android/db/entity/StudentInfo;->finishedDuration:I

    return-void
.end method

.method public setFinishedMileage(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcn/mucang/sundial/android/db/entity/StudentInfo;->finishedMileage:I

    return-void
.end method

.method public setIdCard(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcn/mucang/sundial/android/db/entity/StudentInfo;->idCard:Ljava/lang/String;

    return-void
.end method

.method public setStatus(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcn/mucang/sundial/android/db/entity/StudentInfo;->status:I

    return-void
.end method

.method public setStudentName(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcn/mucang/sundial/android/db/entity/StudentInfo;->studentName:Ljava/lang/String;

    return-void
.end method

.method public setStudentNo(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcn/mucang/sundial/android/db/entity/StudentInfo;->studentNo:Ljava/lang/String;

    return-void
.end method

.method public setTotalDuration(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcn/mucang/sundial/android/db/entity/StudentInfo;->totalDuration:I

    return-void
.end method

.method public setTotalMileage(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcn/mucang/sundial/android/db/entity/StudentInfo;->totalMileage:I

    return-void
.end method

.method public setUpdateTime(J)V
    .locals 0

    .line 1
    iput-wide p1, p0, Lcn/mucang/sundial/android/db/entity/StudentInfo;->updateTime:J

    return-void
.end method
