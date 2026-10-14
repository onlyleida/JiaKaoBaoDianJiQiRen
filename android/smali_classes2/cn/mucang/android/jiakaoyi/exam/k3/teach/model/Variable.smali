.class public abstract Lcn/mucang/android/jiakaoyi/exam/k3/teach/model/Variable;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field public level:I

.field public ruleCode:Ljava/lang/Integer;

.field public type:I

.field public value:Ljava/lang/Double;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public addRuleCode(I)Lcn/mucang/android/jiakaoyi/exam/k3/teach/model/Variable;
    .locals 0

    .line 1
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    iput-object p1, p0, Lcn/mucang/android/jiakaoyi/exam/k3/teach/model/Variable;->ruleCode:Ljava/lang/Integer;

    return-object p0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

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
    check-cast p1, Lcn/mucang/android/jiakaoyi/exam/k3/teach/model/Variable;

    .line 3
    iget v2, p0, Lcn/mucang/android/jiakaoyi/exam/k3/teach/model/Variable;->type:I

    iget v3, p1, Lcn/mucang/android/jiakaoyi/exam/k3/teach/model/Variable;->type:I

    if-ne v2, v3, :cond_2

    iget-object v2, p0, Lcn/mucang/android/jiakaoyi/exam/k3/teach/model/Variable;->ruleCode:Ljava/lang/Integer;

    iget-object v3, p1, Lcn/mucang/android/jiakaoyi/exam/k3/teach/model/Variable;->ruleCode:Ljava/lang/Integer;

    if-ne v2, v3, :cond_2

    iget v2, p0, Lcn/mucang/android/jiakaoyi/exam/k3/teach/model/Variable;->level:I

    iget v3, p1, Lcn/mucang/android/jiakaoyi/exam/k3/teach/model/Variable;->level:I

    if-ne v2, v3, :cond_2

    iget-object v2, p0, Lcn/mucang/android/jiakaoyi/exam/k3/teach/model/Variable;->value:Ljava/lang/Double;

    iget-object p1, p1, Lcn/mucang/android/jiakaoyi/exam/k3/teach/model/Variable;->value:Ljava/lang/Double;

    invoke-virtual {v2, p1}, Ljava/lang/Double;->equals(Ljava/lang/Object;)Z

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

    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/Object;

    .line 1
    iget v1, p0, Lcn/mucang/android/jiakaoyi/exam/k3/teach/model/Variable;->type:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget-object v1, p0, Lcn/mucang/android/jiakaoyi/exam/k3/teach/model/Variable;->ruleCode:Ljava/lang/Integer;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    iget v1, p0, Lcn/mucang/android/jiakaoyi/exam/k3/teach/model/Variable;->level:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x2

    aput-object v1, v0, v2

    iget-object v1, p0, Lcn/mucang/android/jiakaoyi/exam/k3/teach/model/Variable;->value:Ljava/lang/Double;

    const/4 v2, 0x3

    aput-object v1, v0, v2

    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method
