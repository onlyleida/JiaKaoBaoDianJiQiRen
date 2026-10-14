.class public final Lcn/mucang/android/jiakaoyi/engine/trace/upload/TraceDetailInfo;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0003\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\u0008\r\u0018\u00002\u00020\u0001BK\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0003\u0012\u0006\u0010\u0005\u001a\u00020\u0003\u0012\u0008\u0010\u0006\u001a\u0004\u0018\u00010\u0007\u0012\u000c\u0010\u0008\u001a\u0008\u0012\u0004\u0012\u00020\n0\t\u0012\u000c\u0010\u000b\u001a\u0008\u0012\u0004\u0012\u00020\u000c0\t\u0012\u0006\u0010\r\u001a\u00020\u000e\u00a2\u0006\u0002\u0010\u000fR\u0017\u0010\u0008\u001a\u0008\u0012\u0004\u0012\u00020\n0\t\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0010\u0010\u0011R\u0011\u0010\u0004\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0012\u0010\u0013R\u0011\u0010\u0005\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0014\u0010\u0013R\u0017\u0010\u000b\u001a\u0008\u0012\u0004\u0012\u00020\u000c0\t\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0015\u0010\u0011R\u0013\u0010\u0006\u001a\u0004\u0018\u00010\u0007\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0016\u0010\u0017R\u0011\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0018\u0010\u0013R\u0011\u0010\r\u001a\u00020\u000e\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0019\u0010\u001a\u00a8\u0006\u001b"
    }
    d2 = {
        "Lcn/mucang/android/jiakaoyi/engine/trace/upload/TraceDetailInfo;",
        "Ljava/io/Serializable;",
        "type",
        "",
        "duration",
        "passScore",
        "subCode",
        "",
        "deductList",
        "",
        "Lcn/mucang/android/jiakaoyi/engine/trace/model/TraceDeductModel;",
        "stepList",
        "Lcn/mucang/android/jiakaoyi/engine/trace/model/TraceStepModel;",
        "valid",
        "",
        "(IIILjava/lang/String;Ljava/util/List;Ljava/util/List;Z)V",
        "getDeductList",
        "()Ljava/util/List;",
        "getDuration",
        "()I",
        "getPassScore",
        "getStepList",
        "getSubCode",
        "()Ljava/lang/String;",
        "getType",
        "getValid",
        "()Z",
        "engine_release"
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
.field private final deductList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcn/mucang/android/jiakaoyi/engine/trace/model/TraceDeductModel;",
            ">;"
        }
    .end annotation
.end field

.field private final duration:I

.field private final passScore:I

.field private final stepList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcn/mucang/android/jiakaoyi/engine/trace/model/TraceStepModel;",
            ">;"
        }
    .end annotation
.end field

.field private final subCode:Ljava/lang/String;

.field private final type:I

.field private final valid:Z


# direct methods
.method public constructor <init>(IIILjava/lang/String;Ljava/util/List;Ljava/util/List;Z)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(III",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "+",
            "Lcn/mucang/android/jiakaoyi/engine/trace/model/TraceDeductModel;",
            ">;",
            "Ljava/util/List<",
            "+",
            "Lcn/mucang/android/jiakaoyi/engine/trace/model/TraceStepModel;",
            ">;Z)V"
        }
    .end annotation

    const-string v0, "deductList"

    invoke-static {p5, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "stepList"

    invoke-static {p6, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput p1, p0, Lcn/mucang/android/jiakaoyi/engine/trace/upload/TraceDetailInfo;->type:I

    .line 3
    iput p2, p0, Lcn/mucang/android/jiakaoyi/engine/trace/upload/TraceDetailInfo;->duration:I

    .line 4
    iput p3, p0, Lcn/mucang/android/jiakaoyi/engine/trace/upload/TraceDetailInfo;->passScore:I

    .line 5
    iput-object p4, p0, Lcn/mucang/android/jiakaoyi/engine/trace/upload/TraceDetailInfo;->subCode:Ljava/lang/String;

    .line 6
    iput-object p5, p0, Lcn/mucang/android/jiakaoyi/engine/trace/upload/TraceDetailInfo;->deductList:Ljava/util/List;

    .line 7
    iput-object p6, p0, Lcn/mucang/android/jiakaoyi/engine/trace/upload/TraceDetailInfo;->stepList:Ljava/util/List;

    .line 8
    iput-boolean p7, p0, Lcn/mucang/android/jiakaoyi/engine/trace/upload/TraceDetailInfo;->valid:Z

    return-void
.end method


# virtual methods
.method public final getDeductList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcn/mucang/android/jiakaoyi/engine/trace/model/TraceDeductModel;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/engine/trace/upload/TraceDetailInfo;->deductList:Ljava/util/List;

    return-object v0
.end method

.method public final getDuration()I
    .locals 1

    .line 1
    iget v0, p0, Lcn/mucang/android/jiakaoyi/engine/trace/upload/TraceDetailInfo;->duration:I

    return v0
.end method

.method public final getPassScore()I
    .locals 1

    .line 1
    iget v0, p0, Lcn/mucang/android/jiakaoyi/engine/trace/upload/TraceDetailInfo;->passScore:I

    return v0
.end method

.method public final getStepList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcn/mucang/android/jiakaoyi/engine/trace/model/TraceStepModel;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/engine/trace/upload/TraceDetailInfo;->stepList:Ljava/util/List;

    return-object v0
.end method

.method public final getSubCode()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/engine/trace/upload/TraceDetailInfo;->subCode:Ljava/lang/String;

    return-object v0
.end method

.method public final getType()I
    .locals 1

    .line 1
    iget v0, p0, Lcn/mucang/android/jiakaoyi/engine/trace/upload/TraceDetailInfo;->type:I

    return v0
.end method

.method public final getValid()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcn/mucang/android/jiakaoyi/engine/trace/upload/TraceDetailInfo;->valid:Z

    return v0
.end method
