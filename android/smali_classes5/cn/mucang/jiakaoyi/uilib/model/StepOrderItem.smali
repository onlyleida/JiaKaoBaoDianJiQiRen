.class public Lcn/mucang/jiakaoyi/uilib/model/StepOrderItem;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field public content:Ljava/lang/String;

.field public id:J

.field public name:Ljava/lang/String;

.field public stepAliasName:Ljava/lang/String;

.field public stepId:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Lcn/mucang/android/jiakaoyi/engine/model/Step;)V
    .locals 1

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    iget v0, p1, Lcn/mucang/android/jiakaoyi/engine/model/Step;->type:I

    iput v0, p0, Lcn/mucang/jiakaoyi/uilib/model/StepOrderItem;->stepId:I

    .line 4
    iget-object p1, p1, Lcn/mucang/android/jiakaoyi/engine/model/Step;->stepName:Ljava/lang/String;

    iput-object p1, p0, Lcn/mucang/jiakaoyi/uilib/model/StepOrderItem;->name:Ljava/lang/String;

    .line 5
    iput-object p1, p0, Lcn/mucang/jiakaoyi/uilib/model/StepOrderItem;->stepAliasName:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public copy(Lcn/mucang/jiakaoyi/uilib/model/StepOrderItem;)V
    .locals 1

    .line 1
    iget v0, p1, Lcn/mucang/jiakaoyi/uilib/model/StepOrderItem;->stepId:I

    iput v0, p0, Lcn/mucang/jiakaoyi/uilib/model/StepOrderItem;->stepId:I

    .line 2
    iget-object v0, p1, Lcn/mucang/jiakaoyi/uilib/model/StepOrderItem;->name:Ljava/lang/String;

    iput-object v0, p0, Lcn/mucang/jiakaoyi/uilib/model/StepOrderItem;->name:Ljava/lang/String;

    .line 3
    iget-object v0, p1, Lcn/mucang/jiakaoyi/uilib/model/StepOrderItem;->stepAliasName:Ljava/lang/String;

    iput-object v0, p0, Lcn/mucang/jiakaoyi/uilib/model/StepOrderItem;->stepAliasName:Ljava/lang/String;

    .line 4
    iget-object p1, p1, Lcn/mucang/jiakaoyi/uilib/model/StepOrderItem;->content:Ljava/lang/String;

    iput-object p1, p0, Lcn/mucang/jiakaoyi/uilib/model/StepOrderItem;->content:Ljava/lang/String;

    return-void
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 7

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x0

    if-eqz p1, :cond_3

    .line 1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_1

    goto :goto_1

    .line 2
    :cond_1
    check-cast p1, Lcn/mucang/jiakaoyi/uilib/model/StepOrderItem;

    .line 3
    iget-wide v2, p0, Lcn/mucang/jiakaoyi/uilib/model/StepOrderItem;->id:J

    iget-wide v4, p1, Lcn/mucang/jiakaoyi/uilib/model/StepOrderItem;->id:J

    cmp-long v6, v2, v4

    if-nez v6, :cond_2

    iget v2, p0, Lcn/mucang/jiakaoyi/uilib/model/StepOrderItem;->stepId:I

    iget v3, p1, Lcn/mucang/jiakaoyi/uilib/model/StepOrderItem;->stepId:I

    if-ne v2, v3, :cond_2

    iget-object v2, p0, Lcn/mucang/jiakaoyi/uilib/model/StepOrderItem;->name:Ljava/lang/String;

    iget-object v3, p1, Lcn/mucang/jiakaoyi/uilib/model/StepOrderItem;->name:Ljava/lang/String;

    invoke-static {v2, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcn/mucang/jiakaoyi/uilib/model/StepOrderItem;->stepAliasName:Ljava/lang/String;

    iget-object v3, p1, Lcn/mucang/jiakaoyi/uilib/model/StepOrderItem;->stepAliasName:Ljava/lang/String;

    invoke-static {v2, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcn/mucang/jiakaoyi/uilib/model/StepOrderItem;->content:Ljava/lang/String;

    iget-object p1, p1, Lcn/mucang/jiakaoyi/uilib/model/StepOrderItem;->content:Ljava/lang/String;

    invoke-static {v2, p1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_3
    :goto_1
    return v1
.end method

.method public hashCode()I
    .locals 3

    const/4 v0, 0x5

    new-array v0, v0, [Ljava/lang/Object;

    .line 1
    iget-wide v1, p0, Lcn/mucang/jiakaoyi/uilib/model/StepOrderItem;->id:J

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget v1, p0, Lcn/mucang/jiakaoyi/uilib/model/StepOrderItem;->stepId:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    iget-object v1, p0, Lcn/mucang/jiakaoyi/uilib/model/StepOrderItem;->name:Ljava/lang/String;

    const/4 v2, 0x2

    aput-object v1, v0, v2

    iget-object v1, p0, Lcn/mucang/jiakaoyi/uilib/model/StepOrderItem;->stepAliasName:Ljava/lang/String;

    const/4 v2, 0x3

    aput-object v1, v0, v2

    iget-object v1, p0, Lcn/mucang/jiakaoyi/uilib/model/StepOrderItem;->content:Ljava/lang/String;

    const/4 v2, 0x4

    aput-object v1, v0, v2

    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method
