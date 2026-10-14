.class public final Lcn/mucang/jiakaoyi/uilib/model/TeachPlan;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000(\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0010\u000e\n\u0002\u0008\u0005\n\u0002\u0010\u0008\n\u0002\u0008\u0006\u0018\u00002\u00020\u0001B\u0005\u00a2\u0006\u0002\u0010\u0002J\u0006\u0010\u0016\u001a\u00020\u0000R\"\u0010\u0003\u001a\n\u0012\u0004\u0012\u00020\u0005\u0018\u00010\u0004X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0006\u0010\u0007\"\u0004\u0008\u0008\u0010\tR\u001c\u0010\n\u001a\u0004\u0018\u00010\u000bX\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u000c\u0010\r\"\u0004\u0008\u000e\u0010\u000fR\u001a\u0010\u0010\u001a\u00020\u0011X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0012\u0010\u0013\"\u0004\u0008\u0014\u0010\u0015\u00a8\u0006\u0017"
    }
    d2 = {
        "Lcn/mucang/jiakaoyi/uilib/model/TeachPlan;",
        "Ljava/io/Serializable;",
        "()V",
        "gpsList",
        "",
        "Lcn/mucang/jiakaoyi/uilib/model/TeachStepNode;",
        "getGpsList",
        "()Ljava/util/List;",
        "setGpsList",
        "(Ljava/util/List;)V",
        "stepName",
        "",
        "getStepName",
        "()Ljava/lang/String;",
        "setStepName",
        "(Ljava/lang/String;)V",
        "teachNum",
        "",
        "getTeachNum",
        "()I",
        "setTeachNum",
        "(I)V",
        "copy",
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
.field private gpsList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcn/mucang/jiakaoyi/uilib/model/TeachStepNode;",
            ">;"
        }
    .end annotation
.end field

.field private stepName:Ljava/lang/String;

.field private teachNum:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final copy()Lcn/mucang/jiakaoyi/uilib/model/TeachPlan;
    .locals 4

    .line 1
    new-instance v0, Lcn/mucang/jiakaoyi/uilib/model/TeachPlan;

    invoke-direct {v0}, Lcn/mucang/jiakaoyi/uilib/model/TeachPlan;-><init>()V

    .line 2
    iget-object v1, p0, Lcn/mucang/jiakaoyi/uilib/model/TeachPlan;->gpsList:Ljava/util/List;

    if-eqz v1, :cond_1

    .line 3
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 4
    iget-object v2, p0, Lcn/mucang/jiakaoyi/uilib/model/TeachPlan;->gpsList:Ljava/util/List;

    invoke-static {v2}, Lkotlin/jvm/internal/r;->c(Ljava/lang/Object;)V

    .line 5
    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcn/mucang/jiakaoyi/uilib/model/TeachStepNode;

    .line 6
    invoke-virtual {v3}, Lcn/mucang/jiakaoyi/uilib/model/TeachStepNode;->copy()Lcn/mucang/jiakaoyi/uilib/model/TeachStepNode;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 7
    :cond_0
    iput-object v1, v0, Lcn/mucang/jiakaoyi/uilib/model/TeachPlan;->gpsList:Ljava/util/List;

    .line 8
    :cond_1
    iget v1, p0, Lcn/mucang/jiakaoyi/uilib/model/TeachPlan;->teachNum:I

    iput v1, v0, Lcn/mucang/jiakaoyi/uilib/model/TeachPlan;->teachNum:I

    .line 9
    iget-object v1, p0, Lcn/mucang/jiakaoyi/uilib/model/TeachPlan;->stepName:Ljava/lang/String;

    iput-object v1, v0, Lcn/mucang/jiakaoyi/uilib/model/TeachPlan;->stepName:Ljava/lang/String;

    return-object v0
.end method

.method public final getGpsList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcn/mucang/jiakaoyi/uilib/model/TeachStepNode;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcn/mucang/jiakaoyi/uilib/model/TeachPlan;->gpsList:Ljava/util/List;

    return-object v0
.end method

.method public final getStepName()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcn/mucang/jiakaoyi/uilib/model/TeachPlan;->stepName:Ljava/lang/String;

    return-object v0
.end method

.method public final getTeachNum()I
    .locals 1

    .line 1
    iget v0, p0, Lcn/mucang/jiakaoyi/uilib/model/TeachPlan;->teachNum:I

    return v0
.end method

.method public final setGpsList(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcn/mucang/jiakaoyi/uilib/model/TeachStepNode;",
            ">;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcn/mucang/jiakaoyi/uilib/model/TeachPlan;->gpsList:Ljava/util/List;

    return-void
.end method

.method public final setStepName(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcn/mucang/jiakaoyi/uilib/model/TeachPlan;->stepName:Ljava/lang/String;

    return-void
.end method

.method public final setTeachNum(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcn/mucang/jiakaoyi/uilib/model/TeachPlan;->teachNum:I

    return-void
.end method
