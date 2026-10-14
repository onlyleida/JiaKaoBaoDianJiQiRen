.class public Lcn/mucang/android/jiakaoyi/engine/config/route/RuleConfig;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Ljava/io/Serializable;"
    }
.end annotation


# static fields
.field public static final TypeBoolean:I = 0x3

.field public static final TypeFloat:I = 0x6

.field public static final TypeInteger:I = 0x1

.field public static final TypeOptions:I = 0x4

.field public static final TypeRange:I = 0x5

.field public static final TypeString:I = 0x2

.field public static final VALID_MAX:I = 0x2710

.field public static final VALID_MIN:I


# instance fields
.field public deductIds:Ljava/lang/String;

.field public level:I

.field public name:Ljava/lang/String;

.field public ruleId:I

.field public step:Lcn/mucang/android/jiakaoyi/engine/model/Step;

.field public value:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 6

    .line 1
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/engine/config/route/RuleConfig;->value:Ljava/lang/Object;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    const/4 v2, 0x1

    if-ne p0, p1, :cond_1

    return v2

    .line 2
    :cond_1
    instance-of v3, p1, Lcn/mucang/android/jiakaoyi/engine/config/route/RuleConfig;

    if-nez v3, :cond_2

    return v1

    .line 3
    :cond_2
    check-cast p1, Lcn/mucang/android/jiakaoyi/engine/config/route/RuleConfig;

    .line 4
    iget-object v3, p1, Lcn/mucang/android/jiakaoyi/engine/config/route/RuleConfig;->value:Ljava/lang/Object;

    if-nez v3, :cond_3

    return v1

    .line 5
    :cond_3
    iget v4, p0, Lcn/mucang/android/jiakaoyi/engine/config/route/RuleConfig;->ruleId:I

    iget v5, p1, Lcn/mucang/android/jiakaoyi/engine/config/route/RuleConfig;->ruleId:I

    if-ne v4, v5, :cond_4

    iget-object v4, p0, Lcn/mucang/android/jiakaoyi/engine/config/route/RuleConfig;->step:Lcn/mucang/android/jiakaoyi/engine/model/Step;

    iget-object p1, p1, Lcn/mucang/android/jiakaoyi/engine/config/route/RuleConfig;->step:Lcn/mucang/android/jiakaoyi/engine/model/Step;

    if-ne v4, p1, :cond_4

    .line 6
    invoke-virtual {v0, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_4

    const/4 v1, 0x1

    :cond_4
    return v1
.end method

.method public hashCode()I
    .locals 3

    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/Object;

    .line 1
    iget v1, p0, Lcn/mucang/android/jiakaoyi/engine/config/route/RuleConfig;->ruleId:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget-object v1, p0, Lcn/mucang/android/jiakaoyi/engine/config/route/RuleConfig;->step:Lcn/mucang/android/jiakaoyi/engine/model/Step;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    iget-object v1, p0, Lcn/mucang/android/jiakaoyi/engine/config/route/RuleConfig;->value:Ljava/lang/Object;

    const/4 v2, 0x2

    aput-object v1, v0, v2

    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method
