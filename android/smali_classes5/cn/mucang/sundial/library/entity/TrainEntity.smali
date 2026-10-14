.class public final Lcn/mucang/sundial/library/entity/TrainEntity;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000 \n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0002\u0008\u0002\n\u0002\u0010\u0006\n\u0002\u0008\u0006\n\u0002\u0010\u0008\n\u0002\u0008;\u0018\u00002\u00020\u0001B\u0007\u00a2\u0006\u0004\u0008E\u0010FJ\u000f\u0010\u0003\u001a\u00020\u0002H\u0016\u00a2\u0006\u0004\u0008\u0003\u0010\u0004R\"\u0010\u0006\u001a\u00020\u00058\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008\u0006\u0010\u0007\u001a\u0004\u0008\u0008\u0010\t\"\u0004\u0008\n\u0010\u000bR\"\u0010\r\u001a\u00020\u000c8\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008\r\u0010\u000e\u001a\u0004\u0008\u000f\u0010\u0010\"\u0004\u0008\u0011\u0010\u0012R\"\u0010\u0013\u001a\u00020\u000c8\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008\u0013\u0010\u000e\u001a\u0004\u0008\u0014\u0010\u0010\"\u0004\u0008\u0015\u0010\u0012R$\u0010\u0016\u001a\u0004\u0018\u00010\u00028\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008\u0016\u0010\u0017\u001a\u0004\u0008\u0018\u0010\u0004\"\u0004\u0008\u0019\u0010\u001aR\"\u0010\u001b\u001a\u00020\u000c8\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008\u001b\u0010\u000e\u001a\u0004\u0008\u001c\u0010\u0010\"\u0004\u0008\u001d\u0010\u0012R\"\u0010\u001e\u001a\u00020\u000c8\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008\u001e\u0010\u000e\u001a\u0004\u0008\u001f\u0010\u0010\"\u0004\u0008 \u0010\u0012R$\u0010!\u001a\u0004\u0018\u00010\u00028\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008!\u0010\u0017\u001a\u0004\u0008\"\u0010\u0004\"\u0004\u0008#\u0010\u001aR\"\u0010$\u001a\u00020\u000c8\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008$\u0010\u000e\u001a\u0004\u0008%\u0010\u0010\"\u0004\u0008&\u0010\u0012R$\u0010\'\u001a\u0004\u0018\u00010\u00028\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008\'\u0010\u0017\u001a\u0004\u0008(\u0010\u0004\"\u0004\u0008)\u0010\u001aR\"\u0010*\u001a\u00020\u00058\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008*\u0010\u0007\u001a\u0004\u0008+\u0010\t\"\u0004\u0008,\u0010\u000bR$\u0010-\u001a\u0004\u0018\u00010\u00028\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008-\u0010\u0017\u001a\u0004\u0008.\u0010\u0004\"\u0004\u0008/\u0010\u001aR\"\u00100\u001a\u00020\u00058\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u00080\u0010\u0007\u001a\u0004\u00081\u0010\t\"\u0004\u00082\u0010\u000bR\"\u00103\u001a\u00020\u000c8\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u00083\u0010\u000e\u001a\u0004\u00084\u0010\u0010\"\u0004\u00085\u0010\u0012R\"\u00106\u001a\u00020\u000c8\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u00086\u0010\u000e\u001a\u0004\u00087\u0010\u0010\"\u0004\u00088\u0010\u0012R\"\u00109\u001a\u00020\u00058\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u00089\u0010\u0007\u001a\u0004\u0008:\u0010\t\"\u0004\u0008;\u0010\u000bR$\u0010<\u001a\u0004\u0018\u00010\u00028\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008<\u0010\u0017\u001a\u0004\u0008=\u0010\u0004\"\u0004\u0008>\u0010\u001aR$\u0010?\u001a\u0004\u0018\u00010\u00028\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008?\u0010\u0017\u001a\u0004\u0008@\u0010\u0004\"\u0004\u0008A\u0010\u001aR$\u0010B\u001a\u0004\u0018\u00010\u00028\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008B\u0010\u0017\u001a\u0004\u0008C\u0010\u0004\"\u0004\u0008D\u0010\u001a\u00a8\u0006G"
    }
    d2 = {
        "Lcn/mucang/sundial/library/entity/TrainEntity;",
        "Ljava/io/Serializable;",
        "",
        "toString",
        "()Ljava/lang/String;",
        "",
        "todayMileage",
        "D",
        "getTodayMileage",
        "()D",
        "setTodayMileage",
        "(D)V",
        "",
        "studentId",
        "I",
        "getStudentId",
        "()I",
        "setStudentId",
        "(I)V",
        "validTime",
        "getValidTime",
        "setValidTime",
        "trainType",
        "Ljava/lang/String;",
        "getTrainType",
        "setTrainType",
        "(Ljava/lang/String;)V",
        "id",
        "getId",
        "setId",
        "todayTime",
        "getTodayTime",
        "setTodayTime",
        "subjectName",
        "getSubjectName",
        "setSubjectName",
        "requireTotalTime",
        "getRequireTotalTime",
        "setRequireTotalTime",
        "subject",
        "getSubject",
        "setSubject",
        "mileage",
        "getMileage",
        "setMileage",
        "certificateCode",
        "getCertificateCode",
        "setCertificateCode",
        "validMileage",
        "getValidMileage",
        "setValidMileage",
        "requireMileage",
        "getRequireMileage",
        "setRequireMileage",
        "waitApproveTime",
        "getWaitApproveTime",
        "setWaitApproveTime",
        "waitApproveMileage",
        "getWaitApproveMileage",
        "setWaitApproveMileage",
        "orgCode",
        "getOrgCode",
        "setOrgCode",
        "studentName",
        "getStudentName",
        "setStudentName",
        "orgName",
        "getOrgName",
        "setOrgName",
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
.field private certificateCode:Ljava/lang/String;

.field private id:I

.field private mileage:D

.field private orgCode:Ljava/lang/String;

.field private orgName:Ljava/lang/String;

.field private requireMileage:I

.field private requireTotalTime:I

.field private studentId:I

.field private studentName:Ljava/lang/String;

.field private subject:Ljava/lang/String;

.field private subjectName:Ljava/lang/String;

.field private todayMileage:D

.field private todayTime:I

.field private trainType:Ljava/lang/String;

.field private validMileage:D

.field private validTime:I

.field private waitApproveMileage:D

.field private waitApproveTime:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final getCertificateCode()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcn/mucang/sundial/library/entity/TrainEntity;->certificateCode:Ljava/lang/String;

    return-object v0
.end method

.method public final getId()I
    .locals 1

    .line 1
    iget v0, p0, Lcn/mucang/sundial/library/entity/TrainEntity;->id:I

    return v0
.end method

.method public final getMileage()D
    .locals 2

    .line 1
    iget-wide v0, p0, Lcn/mucang/sundial/library/entity/TrainEntity;->mileage:D

    return-wide v0
.end method

.method public final getOrgCode()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcn/mucang/sundial/library/entity/TrainEntity;->orgCode:Ljava/lang/String;

    return-object v0
.end method

.method public final getOrgName()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcn/mucang/sundial/library/entity/TrainEntity;->orgName:Ljava/lang/String;

    return-object v0
.end method

.method public final getRequireMileage()I
    .locals 1

    .line 1
    iget v0, p0, Lcn/mucang/sundial/library/entity/TrainEntity;->requireMileage:I

    return v0
.end method

.method public final getRequireTotalTime()I
    .locals 1

    .line 1
    iget v0, p0, Lcn/mucang/sundial/library/entity/TrainEntity;->requireTotalTime:I

    return v0
.end method

.method public final getStudentId()I
    .locals 1

    .line 1
    iget v0, p0, Lcn/mucang/sundial/library/entity/TrainEntity;->studentId:I

    return v0
.end method

.method public final getStudentName()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcn/mucang/sundial/library/entity/TrainEntity;->studentName:Ljava/lang/String;

    return-object v0
.end method

.method public final getSubject()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcn/mucang/sundial/library/entity/TrainEntity;->subject:Ljava/lang/String;

    return-object v0
.end method

.method public final getSubjectName()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcn/mucang/sundial/library/entity/TrainEntity;->subjectName:Ljava/lang/String;

    return-object v0
.end method

.method public final getTodayMileage()D
    .locals 2

    .line 1
    iget-wide v0, p0, Lcn/mucang/sundial/library/entity/TrainEntity;->todayMileage:D

    return-wide v0
.end method

.method public final getTodayTime()I
    .locals 1

    .line 1
    iget v0, p0, Lcn/mucang/sundial/library/entity/TrainEntity;->todayTime:I

    return v0
.end method

.method public final getTrainType()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcn/mucang/sundial/library/entity/TrainEntity;->trainType:Ljava/lang/String;

    return-object v0
.end method

.method public final getValidMileage()D
    .locals 2

    .line 1
    iget-wide v0, p0, Lcn/mucang/sundial/library/entity/TrainEntity;->validMileage:D

    return-wide v0
.end method

.method public final getValidTime()I
    .locals 1

    .line 1
    iget v0, p0, Lcn/mucang/sundial/library/entity/TrainEntity;->validTime:I

    return v0
.end method

.method public final getWaitApproveMileage()D
    .locals 2

    .line 1
    iget-wide v0, p0, Lcn/mucang/sundial/library/entity/TrainEntity;->waitApproveMileage:D

    return-wide v0
.end method

.method public final getWaitApproveTime()I
    .locals 1

    .line 1
    iget v0, p0, Lcn/mucang/sundial/library/entity/TrainEntity;->waitApproveTime:I

    return v0
.end method

.method public final setCertificateCode(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcn/mucang/sundial/library/entity/TrainEntity;->certificateCode:Ljava/lang/String;

    return-void
.end method

.method public final setId(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcn/mucang/sundial/library/entity/TrainEntity;->id:I

    return-void
.end method

.method public final setMileage(D)V
    .locals 0

    .line 1
    iput-wide p1, p0, Lcn/mucang/sundial/library/entity/TrainEntity;->mileage:D

    return-void
.end method

.method public final setOrgCode(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcn/mucang/sundial/library/entity/TrainEntity;->orgCode:Ljava/lang/String;

    return-void
.end method

.method public final setOrgName(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcn/mucang/sundial/library/entity/TrainEntity;->orgName:Ljava/lang/String;

    return-void
.end method

.method public final setRequireMileage(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcn/mucang/sundial/library/entity/TrainEntity;->requireMileage:I

    return-void
.end method

.method public final setRequireTotalTime(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcn/mucang/sundial/library/entity/TrainEntity;->requireTotalTime:I

    return-void
.end method

.method public final setStudentId(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcn/mucang/sundial/library/entity/TrainEntity;->studentId:I

    return-void
.end method

.method public final setStudentName(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcn/mucang/sundial/library/entity/TrainEntity;->studentName:Ljava/lang/String;

    return-void
.end method

.method public final setSubject(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcn/mucang/sundial/library/entity/TrainEntity;->subject:Ljava/lang/String;

    return-void
.end method

.method public final setSubjectName(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcn/mucang/sundial/library/entity/TrainEntity;->subjectName:Ljava/lang/String;

    return-void
.end method

.method public final setTodayMileage(D)V
    .locals 0

    .line 1
    iput-wide p1, p0, Lcn/mucang/sundial/library/entity/TrainEntity;->todayMileage:D

    return-void
.end method

.method public final setTodayTime(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcn/mucang/sundial/library/entity/TrainEntity;->todayTime:I

    return-void
.end method

.method public final setTrainType(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcn/mucang/sundial/library/entity/TrainEntity;->trainType:Ljava/lang/String;

    return-void
.end method

.method public final setValidMileage(D)V
    .locals 0

    .line 1
    iput-wide p1, p0, Lcn/mucang/sundial/library/entity/TrainEntity;->validMileage:D

    return-void
.end method

.method public final setValidTime(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcn/mucang/sundial/library/entity/TrainEntity;->validTime:I

    return-void
.end method

.method public final setWaitApproveMileage(D)V
    .locals 0

    .line 1
    iput-wide p1, p0, Lcn/mucang/sundial/library/entity/TrainEntity;->waitApproveMileage:D

    return-void
.end method

.method public final setWaitApproveTime(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcn/mucang/sundial/library/entity/TrainEntity;->waitApproveTime:I

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 1
    invoke-static {p0}, Lcom/alibaba/fastjson/JSON;->toJSONString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "JSON.toJSONString(this)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/r;->d(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v0
.end method
