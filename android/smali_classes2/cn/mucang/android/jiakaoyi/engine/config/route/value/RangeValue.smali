.class public Lcn/mucang/android/jiakaoyi/engine/config/route/value/RangeValue;
.super Lcn/mucang/android/jiakaoyi/engine/config/route/RuleConfig;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcn/mucang/android/jiakaoyi/engine/config/route/RuleConfig<",
        "Ljava/lang/Integer;",
        ">;"
    }
.end annotation


# instance fields
.field public maxValue:I

.field public maxValue2:I

.field public minValue:I

.field public minValue2:I

.field public value2:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcn/mucang/android/jiakaoyi/engine/config/route/RuleConfig;-><init>()V

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 3

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    .line 1
    :cond_0
    instance-of v1, p1, Lcn/mucang/android/jiakaoyi/engine/config/route/value/RangeValue;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    .line 2
    :cond_1
    invoke-super {p0, p1}, Lcn/mucang/android/jiakaoyi/engine/config/route/RuleConfig;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    return v2

    .line 3
    :cond_2
    check-cast p1, Lcn/mucang/android/jiakaoyi/engine/config/route/value/RangeValue;

    .line 4
    iget v1, p0, Lcn/mucang/android/jiakaoyi/engine/config/route/value/RangeValue;->value2:I

    iget p1, p1, Lcn/mucang/android/jiakaoyi/engine/config/route/value/RangeValue;->value2:I

    if-ne v1, p1, :cond_3

    goto :goto_0

    :cond_3
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public hashCode()I
    .locals 3

    const/4 v0, 0x5

    new-array v0, v0, [Ljava/lang/Object;

    .line 1
    invoke-super {p0}, Lcn/mucang/android/jiakaoyi/engine/config/route/RuleConfig;->hashCode()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget v1, p0, Lcn/mucang/android/jiakaoyi/engine/config/route/RuleConfig;->ruleId:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    iget-object v1, p0, Lcn/mucang/android/jiakaoyi/engine/config/route/RuleConfig;->step:Lcn/mucang/android/jiakaoyi/engine/model/Step;

    const/4 v2, 0x2

    aput-object v1, v0, v2

    iget-object v1, p0, Lcn/mucang/android/jiakaoyi/engine/config/route/RuleConfig;->value:Ljava/lang/Object;

    const/4 v2, 0x3

    aput-object v1, v0, v2

    iget v1, p0, Lcn/mucang/android/jiakaoyi/engine/config/route/value/RangeValue;->value2:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x4

    aput-object v1, v0, v2

    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method
