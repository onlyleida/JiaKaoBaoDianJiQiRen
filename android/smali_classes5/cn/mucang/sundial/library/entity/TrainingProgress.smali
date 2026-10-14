.class public final Lcn/mucang/sundial/library/entity/TrainingProgress;
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
        "\u0000 \n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0006\n\u0002\u0018\u0002\n\u0002\u0008\u0006\n\u0002\u0018\u0002\n\u0002\u0008\u000c\u0018\u00002\u00020\u0001B\u0007\u00a2\u0006\u0004\u0008\u001a\u0010\u001bR\"\u0010\u0003\u001a\u00020\u00028\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008\u0003\u0010\u0004\u001a\u0004\u0008\u0005\u0010\u0006\"\u0004\u0008\u0007\u0010\u0008R$\u0010\n\u001a\u0004\u0018\u00010\t8\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008\n\u0010\u000b\u001a\u0004\u0008\u000c\u0010\r\"\u0004\u0008\u000e\u0010\u000fR$\u0010\u0011\u001a\u0004\u0018\u00010\u00108\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008\u0011\u0010\u0012\u001a\u0004\u0008\u0013\u0010\u0014\"\u0004\u0008\u0015\u0010\u0016R\"\u0010\u0017\u001a\u00020\u00028\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008\u0017\u0010\u0004\u001a\u0004\u0008\u0018\u0010\u0006\"\u0004\u0008\u0019\u0010\u0008\u00a8\u0006\u001c"
    }
    d2 = {
        "Lcn/mucang/sundial/library/entity/TrainingProgress;",
        "",
        "",
        "driveType",
        "Ljava/lang/String;",
        "getDriveType",
        "()Ljava/lang/String;",
        "setDriveType",
        "(Ljava/lang/String;)V",
        "Lcn/mucang/sundial/android/db/entity/StudentInfo;",
        "studentInfo",
        "Lcn/mucang/sundial/android/db/entity/StudentInfo;",
        "getStudentInfo",
        "()Lcn/mucang/sundial/android/db/entity/StudentInfo;",
        "setStudentInfo",
        "(Lcn/mucang/sundial/android/db/entity/StudentInfo;)V",
        "Lcn/mucang/sundial/library/entity/TrainEntity;",
        "trainInfo",
        "Lcn/mucang/sundial/library/entity/TrainEntity;",
        "getTrainInfo",
        "()Lcn/mucang/sundial/library/entity/TrainEntity;",
        "setTrainInfo",
        "(Lcn/mucang/sundial/library/entity/TrainEntity;)V",
        "subject",
        "getSubject",
        "setSubject",
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
.field private driveType:Ljava/lang/String;

.field private studentInfo:Lcn/mucang/sundial/android/db/entity/StudentInfo;

.field private subject:Ljava/lang/String;

.field private trainInfo:Lcn/mucang/sundial/library/entity/TrainEntity;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, ""

    .line 2
    iput-object v0, p0, Lcn/mucang/sundial/library/entity/TrainingProgress;->subject:Ljava/lang/String;

    .line 3
    iput-object v0, p0, Lcn/mucang/sundial/library/entity/TrainingProgress;->driveType:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final getDriveType()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcn/mucang/sundial/library/entity/TrainingProgress;->driveType:Ljava/lang/String;

    return-object v0
.end method

.method public final getStudentInfo()Lcn/mucang/sundial/android/db/entity/StudentInfo;
    .locals 1

    .line 1
    iget-object v0, p0, Lcn/mucang/sundial/library/entity/TrainingProgress;->studentInfo:Lcn/mucang/sundial/android/db/entity/StudentInfo;

    return-object v0
.end method

.method public final getSubject()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcn/mucang/sundial/library/entity/TrainingProgress;->subject:Ljava/lang/String;

    return-object v0
.end method

.method public final getTrainInfo()Lcn/mucang/sundial/library/entity/TrainEntity;
    .locals 1

    .line 1
    iget-object v0, p0, Lcn/mucang/sundial/library/entity/TrainingProgress;->trainInfo:Lcn/mucang/sundial/library/entity/TrainEntity;

    return-object v0
.end method

.method public final setDriveType(Ljava/lang/String;)V
    .locals 1

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iput-object p1, p0, Lcn/mucang/sundial/library/entity/TrainingProgress;->driveType:Ljava/lang/String;

    return-void
.end method

.method public final setStudentInfo(Lcn/mucang/sundial/android/db/entity/StudentInfo;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcn/mucang/sundial/library/entity/TrainingProgress;->studentInfo:Lcn/mucang/sundial/android/db/entity/StudentInfo;

    return-void
.end method

.method public final setSubject(Ljava/lang/String;)V
    .locals 1

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iput-object p1, p0, Lcn/mucang/sundial/library/entity/TrainingProgress;->subject:Ljava/lang/String;

    return-void
.end method

.method public final setTrainInfo(Lcn/mucang/sundial/library/entity/TrainEntity;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcn/mucang/sundial/library/entity/TrainingProgress;->trainInfo:Lcn/mucang/sundial/library/entity/TrainEntity;

    return-void
.end method
