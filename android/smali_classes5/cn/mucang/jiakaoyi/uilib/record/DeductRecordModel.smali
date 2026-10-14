.class public final Lcn/mucang/jiakaoyi/uilib/record/DeductRecordModel;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000$\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\t\n\u0002\u0008\u0005\n\u0002\u0010\u000e\n\u0002\u0008\u0005\n\u0002\u0010\u0008\n\u0002\u0008\u000b\u0018\u00002\u00020\u0001B\u0005\u00a2\u0006\u0002\u0010\u0002R\u001a\u0010\u0003\u001a\u00020\u0004X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0005\u0010\u0006\"\u0004\u0008\u0007\u0010\u0008R\u001c\u0010\t\u001a\u0004\u0018\u00010\nX\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u000b\u0010\u000c\"\u0004\u0008\r\u0010\u000eR\u001a\u0010\u000f\u001a\u00020\u0010X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0011\u0010\u0012\"\u0004\u0008\u0013\u0010\u0014R\u001a\u0010\u0015\u001a\u00020\u0010X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0016\u0010\u0012\"\u0004\u0008\u0017\u0010\u0014R\u001a\u0010\u0018\u001a\u00020\u0010X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0019\u0010\u0012\"\u0004\u0008\u001a\u0010\u0014\u00a8\u0006\u001b"
    }
    d2 = {
        "Lcn/mucang/jiakaoyi/uilib/record/DeductRecordModel;",
        "Ljava/io/Serializable;",
        "()V",
        "createTime",
        "",
        "getCreateTime",
        "()J",
        "setCreateTime",
        "(J)V",
        "deductDesc",
        "",
        "getDeductDesc",
        "()Ljava/lang/String;",
        "setDeductDesc",
        "(Ljava/lang/String;)V",
        "deductId",
        "",
        "getDeductId",
        "()I",
        "setDeductId",
        "(I)V",
        "deductScore",
        "getDeductScore",
        "setDeductScore",
        "stepId",
        "getStepId",
        "setStepId",
        "uilib_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x5,
        0x1
    }
    xi = 0x30
.end annotation


# instance fields
.field private createTime:J

.field private deductDesc:Ljava/lang/String;

.field private deductId:I

.field private deductScore:I

.field private stepId:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final getCreateTime()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcn/mucang/jiakaoyi/uilib/record/DeductRecordModel;->createTime:J

    return-wide v0
.end method

.method public final getDeductDesc()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcn/mucang/jiakaoyi/uilib/record/DeductRecordModel;->deductDesc:Ljava/lang/String;

    return-object v0
.end method

.method public final getDeductId()I
    .locals 1

    .line 1
    iget v0, p0, Lcn/mucang/jiakaoyi/uilib/record/DeductRecordModel;->deductId:I

    return v0
.end method

.method public final getDeductScore()I
    .locals 1

    .line 1
    iget v0, p0, Lcn/mucang/jiakaoyi/uilib/record/DeductRecordModel;->deductScore:I

    return v0
.end method

.method public final getStepId()I
    .locals 1

    .line 1
    iget v0, p0, Lcn/mucang/jiakaoyi/uilib/record/DeductRecordModel;->stepId:I

    return v0
.end method

.method public final setCreateTime(J)V
    .locals 0

    .line 1
    iput-wide p1, p0, Lcn/mucang/jiakaoyi/uilib/record/DeductRecordModel;->createTime:J

    return-void
.end method

.method public final setDeductDesc(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcn/mucang/jiakaoyi/uilib/record/DeductRecordModel;->deductDesc:Ljava/lang/String;

    return-void
.end method

.method public final setDeductId(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcn/mucang/jiakaoyi/uilib/record/DeductRecordModel;->deductId:I

    return-void
.end method

.method public final setDeductScore(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcn/mucang/jiakaoyi/uilib/record/DeductRecordModel;->deductScore:I

    return-void
.end method

.method public final setStepId(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcn/mucang/jiakaoyi/uilib/record/DeductRecordModel;->stepId:I

    return-void
.end method
