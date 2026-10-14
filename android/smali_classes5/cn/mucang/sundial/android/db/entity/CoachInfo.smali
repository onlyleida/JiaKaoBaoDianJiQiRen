.class public Lcn/mucang/sundial/android/db/entity/CoachInfo;
.super Lcn/mucang/android/core/db/IdEntity;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/mucang/sundial/android/db/entity/CoachInfo$STATUS;
    }
.end annotation


# instance fields
.field private avatar:Ljava/lang/String;

.field private coachName:Ljava/lang/String;

.field private coachNo:Ljava/lang/String;

.field private driveType:Ljava/lang/String;

.field private idCard:Ljava/lang/String;

.field private schoolName:Ljava/lang/String;

.field private status:I

.field private teachType:Ljava/lang/String;

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
    iget-object v0, p0, Lcn/mucang/sundial/android/db/entity/CoachInfo;->avatar:Ljava/lang/String;

    return-object v0
.end method

.method public getCoachName()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcn/mucang/sundial/android/db/entity/CoachInfo;->coachName:Ljava/lang/String;

    return-object v0
.end method

.method public getCoachNo()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcn/mucang/sundial/android/db/entity/CoachInfo;->coachNo:Ljava/lang/String;

    return-object v0
.end method

.method public getDriveType()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcn/mucang/sundial/android/db/entity/CoachInfo;->driveType:Ljava/lang/String;

    return-object v0
.end method

.method public getIdCard()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcn/mucang/sundial/android/db/entity/CoachInfo;->idCard:Ljava/lang/String;

    return-object v0
.end method

.method public getSchoolName()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcn/mucang/sundial/android/db/entity/CoachInfo;->schoolName:Ljava/lang/String;

    return-object v0
.end method

.method public getStatus()I
    .locals 1

    .line 1
    iget v0, p0, Lcn/mucang/sundial/android/db/entity/CoachInfo;->status:I

    return v0
.end method

.method public getTeachType()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcn/mucang/sundial/android/db/entity/CoachInfo;->teachType:Ljava/lang/String;

    return-object v0
.end method

.method public getUpdateTime()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcn/mucang/sundial/android/db/entity/CoachInfo;->updateTime:J

    return-wide v0
.end method

.method public infoValid()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcn/mucang/sundial/android/db/entity/CoachInfo;->coachNo:Ljava/lang/String;

    invoke-static {v0}, Lcn/mucang/android/core/utils/n0;->g(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcn/mucang/sundial/android/db/entity/CoachInfo;->idCard:Ljava/lang/String;

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

.method public setAvatar(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcn/mucang/sundial/android/db/entity/CoachInfo;->avatar:Ljava/lang/String;

    return-void
.end method

.method public setCoachName(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcn/mucang/sundial/android/db/entity/CoachInfo;->coachName:Ljava/lang/String;

    return-void
.end method

.method public setCoachNo(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcn/mucang/sundial/android/db/entity/CoachInfo;->coachNo:Ljava/lang/String;

    return-void
.end method

.method public setDriveType(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcn/mucang/sundial/android/db/entity/CoachInfo;->driveType:Ljava/lang/String;

    return-void
.end method

.method public setIdCard(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcn/mucang/sundial/android/db/entity/CoachInfo;->idCard:Ljava/lang/String;

    return-void
.end method

.method public setSchoolName(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcn/mucang/sundial/android/db/entity/CoachInfo;->schoolName:Ljava/lang/String;

    return-void
.end method

.method public setStatus(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcn/mucang/sundial/android/db/entity/CoachInfo;->status:I

    return-void
.end method

.method public setTeachType(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcn/mucang/sundial/android/db/entity/CoachInfo;->teachType:Ljava/lang/String;

    return-void
.end method

.method public setUpdateTime(J)V
    .locals 0

    .line 1
    iput-wide p1, p0, Lcn/mucang/sundial/android/db/entity/CoachInfo;->updateTime:J

    return-void
.end method
