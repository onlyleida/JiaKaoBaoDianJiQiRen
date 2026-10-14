.class public final Lcn/mucang/jiakaoyi/uilib/record/UploadRecordModel;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000(\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010!\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0010\u000e\n\u0002\u0008\u0005\n\u0002\u0010\u0008\n\u0002\u0008\u0005\u0018\u00002\u00020\u0001B\u0005\u00a2\u0006\u0002\u0010\u0002R\"\u0010\u0003\u001a\n\u0012\u0004\u0012\u00020\u0005\u0018\u00010\u0004X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0006\u0010\u0007\"\u0004\u0008\u0008\u0010\tR\u001c\u0010\n\u001a\u0004\u0018\u00010\u000bX\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u000c\u0010\r\"\u0004\u0008\u000e\u0010\u000fR\u001a\u0010\u0010\u001a\u00020\u0011X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0012\u0010\u0013\"\u0004\u0008\u0014\u0010\u0015\u00a8\u0006\u0016"
    }
    d2 = {
        "Lcn/mucang/jiakaoyi/uilib/record/UploadRecordModel;",
        "Ljava/io/Serializable;",
        "()V",
        "deductDetails",
        "",
        "Lcn/mucang/jiakaoyi/uilib/record/DeductRecordModel;",
        "getDeductDetails",
        "()Ljava/util/List;",
        "setDeductDetails",
        "(Ljava/util/List;)V",
        "orderNo",
        "",
        "getOrderNo",
        "()Ljava/lang/String;",
        "setOrderNo",
        "(Ljava/lang/String;)V",
        "score",
        "",
        "getScore",
        "()I",
        "setScore",
        "(I)V",
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
.field private deductDetails:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcn/mucang/jiakaoyi/uilib/record/DeductRecordModel;",
            ">;"
        }
    .end annotation
.end field

.field private orderNo:Ljava/lang/String;

.field private score:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final getDeductDetails()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcn/mucang/jiakaoyi/uilib/record/DeductRecordModel;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcn/mucang/jiakaoyi/uilib/record/UploadRecordModel;->deductDetails:Ljava/util/List;

    return-object v0
.end method

.method public final getOrderNo()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcn/mucang/jiakaoyi/uilib/record/UploadRecordModel;->orderNo:Ljava/lang/String;

    return-object v0
.end method

.method public final getScore()I
    .locals 1

    .line 1
    iget v0, p0, Lcn/mucang/jiakaoyi/uilib/record/UploadRecordModel;->score:I

    return v0
.end method

.method public final setDeductDetails(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcn/mucang/jiakaoyi/uilib/record/DeductRecordModel;",
            ">;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcn/mucang/jiakaoyi/uilib/record/UploadRecordModel;->deductDetails:Ljava/util/List;

    return-void
.end method

.method public final setOrderNo(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcn/mucang/jiakaoyi/uilib/record/UploadRecordModel;->orderNo:Ljava/lang/String;

    return-void
.end method

.method public final setScore(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcn/mucang/jiakaoyi/uilib/record/UploadRecordModel;->score:I

    return-void
.end method
