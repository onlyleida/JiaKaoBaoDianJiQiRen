.class public final Lcn/mucang/sundial/library/entity/TrainingInfo;
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
        "\u00000\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\u0006\n\u0002\u0008\u0006\n\u0002\u0010\t\n\u0002\u0008\u0006\n\u0002\u0018\u0002\n\u0002\u0008\t\n\u0002\u0010\u0008\n\u0002\u0008\u0006\n\u0002\u0018\u0002\n\u0002\u0008\t\u0018\u00002\u00020\u0001B\u0007\u00a2\u0006\u0004\u0008(\u0010)R\"\u0010\u0003\u001a\u00020\u00028\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008\u0003\u0010\u0004\u001a\u0004\u0008\u0005\u0010\u0006\"\u0004\u0008\u0007\u0010\u0008R\"\u0010\n\u001a\u00020\t8\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008\n\u0010\u000b\u001a\u0004\u0008\u000c\u0010\r\"\u0004\u0008\u000e\u0010\u000fR$\u0010\u0011\u001a\u0004\u0018\u00010\u00108\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008\u0011\u0010\u0012\u001a\u0004\u0008\u0013\u0010\u0014\"\u0004\u0008\u0015\u0010\u0016R\"\u0010\u0017\u001a\u00020\t8\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008\u0017\u0010\u000b\u001a\u0004\u0008\u0018\u0010\r\"\u0004\u0008\u0019\u0010\u000fR\"\u0010\u001b\u001a\u00020\u001a8\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008\u001b\u0010\u001c\u001a\u0004\u0008\u001d\u0010\u001e\"\u0004\u0008\u001f\u0010 R$\u0010\"\u001a\u0004\u0018\u00010!8\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008\"\u0010#\u001a\u0004\u0008$\u0010%\"\u0004\u0008&\u0010\'\u00a8\u0006*"
    }
    d2 = {
        "Lcn/mucang/sundial/library/entity/TrainingInfo;",
        "",
        "",
        "currentTotalDistance",
        "D",
        "getCurrentTotalDistance",
        "()D",
        "setCurrentTotalDistance",
        "(D)V",
        "",
        "courseTime",
        "J",
        "getCourseTime",
        "()J",
        "setCourseTime",
        "(J)V",
        "Lcn/mucang/sundial/android/db/entity/CoachInfo;",
        "coachInfo",
        "Lcn/mucang/sundial/android/db/entity/CoachInfo;",
        "getCoachInfo",
        "()Lcn/mucang/sundial/android/db/entity/CoachInfo;",
        "setCoachInfo",
        "(Lcn/mucang/sundial/android/db/entity/CoachInfo;)V",
        "loginTime",
        "getLoginTime",
        "setLoginTime",
        "",
        "status",
        "I",
        "getStatus",
        "()I",
        "setStatus",
        "(I)V",
        "Lcn/mucang/sundial/android/db/entity/StudentInfo;",
        "studentInfo",
        "Lcn/mucang/sundial/android/db/entity/StudentInfo;",
        "getStudentInfo",
        "()Lcn/mucang/sundial/android/db/entity/StudentInfo;",
        "setStudentInfo",
        "(Lcn/mucang/sundial/android/db/entity/StudentInfo;)V",
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


# instance fields
.field private coachInfo:Lcn/mucang/sundial/android/db/entity/CoachInfo;

.field private courseTime:J

.field private currentTotalDistance:D

.field private loginTime:J

.field private status:I

.field private studentInfo:Lcn/mucang/sundial/android/db/entity/StudentInfo;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    .line 2
    iput v0, p0, Lcn/mucang/sundial/library/entity/TrainingInfo;->status:I

    return-void
.end method


# virtual methods
.method public final getCoachInfo()Lcn/mucang/sundial/android/db/entity/CoachInfo;
    .locals 1

    .line 1
    iget-object v0, p0, Lcn/mucang/sundial/library/entity/TrainingInfo;->coachInfo:Lcn/mucang/sundial/android/db/entity/CoachInfo;

    return-object v0
.end method

.method public final getCourseTime()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcn/mucang/sundial/library/entity/TrainingInfo;->courseTime:J

    return-wide v0
.end method

.method public final getCurrentTotalDistance()D
    .locals 2

    .line 1
    iget-wide v0, p0, Lcn/mucang/sundial/library/entity/TrainingInfo;->currentTotalDistance:D

    return-wide v0
.end method

.method public final getLoginTime()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcn/mucang/sundial/library/entity/TrainingInfo;->loginTime:J

    return-wide v0
.end method

.method public final getStatus()I
    .locals 1

    .line 1
    iget v0, p0, Lcn/mucang/sundial/library/entity/TrainingInfo;->status:I

    return v0
.end method

.method public final getStudentInfo()Lcn/mucang/sundial/android/db/entity/StudentInfo;
    .locals 1

    .line 1
    iget-object v0, p0, Lcn/mucang/sundial/library/entity/TrainingInfo;->studentInfo:Lcn/mucang/sundial/android/db/entity/StudentInfo;

    return-object v0
.end method

.method public final setCoachInfo(Lcn/mucang/sundial/android/db/entity/CoachInfo;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcn/mucang/sundial/library/entity/TrainingInfo;->coachInfo:Lcn/mucang/sundial/android/db/entity/CoachInfo;

    return-void
.end method

.method public final setCourseTime(J)V
    .locals 0

    .line 1
    iput-wide p1, p0, Lcn/mucang/sundial/library/entity/TrainingInfo;->courseTime:J

    return-void
.end method

.method public final setCurrentTotalDistance(D)V
    .locals 0

    .line 1
    iput-wide p1, p0, Lcn/mucang/sundial/library/entity/TrainingInfo;->currentTotalDistance:D

    return-void
.end method

.method public final setLoginTime(J)V
    .locals 0

    .line 1
    iput-wide p1, p0, Lcn/mucang/sundial/library/entity/TrainingInfo;->loginTime:J

    return-void
.end method

.method public final setStatus(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcn/mucang/sundial/library/entity/TrainingInfo;->status:I

    return-void
.end method

.method public final setStudentInfo(Lcn/mucang/sundial/android/db/entity/StudentInfo;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcn/mucang/sundial/library/entity/TrainingInfo;->studentInfo:Lcn/mucang/sundial/android/db/entity/StudentInfo;

    return-void
.end method
