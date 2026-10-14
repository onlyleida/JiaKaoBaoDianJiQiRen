.class public final enum Lcn/mucang/android/jiakaoyi/engine/model/JudgeType;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcn/mucang/android/jiakaoyi/engine/model/JudgeType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcn/mucang/android/jiakaoyi/engine/model/JudgeType;

.field public static final enum auto:Lcn/mucang/android/jiakaoyi/engine/model/JudgeType;

.field public static final enum both:Lcn/mucang/android/jiakaoyi/engine/model/JudgeType;

.field public static final enum manual:Lcn/mucang/android/jiakaoyi/engine/model/JudgeType;

.field public static final enum none:Lcn/mucang/android/jiakaoyi/engine/model/JudgeType;


# instance fields
.field public final judgeType:I


# direct methods
.method static constructor <clinit>()V
    .locals 9

    .line 1
    new-instance v0, Lcn/mucang/android/jiakaoyi/engine/model/JudgeType;

    const-string v1, "auto"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, Lcn/mucang/android/jiakaoyi/engine/model/JudgeType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcn/mucang/android/jiakaoyi/engine/model/JudgeType;->auto:Lcn/mucang/android/jiakaoyi/engine/model/JudgeType;

    .line 2
    new-instance v1, Lcn/mucang/android/jiakaoyi/engine/model/JudgeType;

    const-string v3, "manual"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4, v4}, Lcn/mucang/android/jiakaoyi/engine/model/JudgeType;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcn/mucang/android/jiakaoyi/engine/model/JudgeType;->manual:Lcn/mucang/android/jiakaoyi/engine/model/JudgeType;

    .line 3
    new-instance v3, Lcn/mucang/android/jiakaoyi/engine/model/JudgeType;

    const-string v5, "both"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6, v6}, Lcn/mucang/android/jiakaoyi/engine/model/JudgeType;-><init>(Ljava/lang/String;II)V

    sput-object v3, Lcn/mucang/android/jiakaoyi/engine/model/JudgeType;->both:Lcn/mucang/android/jiakaoyi/engine/model/JudgeType;

    .line 4
    new-instance v5, Lcn/mucang/android/jiakaoyi/engine/model/JudgeType;

    const-string v7, "none"

    const/4 v8, 0x3

    invoke-direct {v5, v7, v8, v8}, Lcn/mucang/android/jiakaoyi/engine/model/JudgeType;-><init>(Ljava/lang/String;II)V

    sput-object v5, Lcn/mucang/android/jiakaoyi/engine/model/JudgeType;->none:Lcn/mucang/android/jiakaoyi/engine/model/JudgeType;

    const/4 v7, 0x4

    new-array v7, v7, [Lcn/mucang/android/jiakaoyi/engine/model/JudgeType;

    aput-object v0, v7, v2

    aput-object v1, v7, v4

    aput-object v3, v7, v6

    aput-object v5, v7, v8

    .line 5
    sput-object v7, Lcn/mucang/android/jiakaoyi/engine/model/JudgeType;->$VALUES:[Lcn/mucang/android/jiakaoyi/engine/model/JudgeType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 2
    iput p3, p0, Lcn/mucang/android/jiakaoyi/engine/model/JudgeType;->judgeType:I

    return-void
.end method

.method public static parse(I)Lcn/mucang/android/jiakaoyi/engine/model/JudgeType;
    .locals 5

    .line 1
    invoke-static {}, Lcn/mucang/android/jiakaoyi/engine/model/JudgeType;->values()[Lcn/mucang/android/jiakaoyi/engine/model/JudgeType;

    move-result-object v0

    .line 2
    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, v0, v2

    .line 3
    iget v4, v3, Lcn/mucang/android/jiakaoyi/engine/model/JudgeType;->judgeType:I

    if-ne p0, v4, :cond_0

    return-object v3

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 4
    :cond_1
    sget-object p0, Lcn/mucang/android/jiakaoyi/engine/model/JudgeType;->none:Lcn/mucang/android/jiakaoyi/engine/model/JudgeType;

    return-object p0
.end method

.method public static valueOf(Ljava/lang/String;)Lcn/mucang/android/jiakaoyi/engine/model/JudgeType;
    .locals 1

    .line 1
    const-class v0, Lcn/mucang/android/jiakaoyi/engine/model/JudgeType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcn/mucang/android/jiakaoyi/engine/model/JudgeType;

    return-object p0
.end method

.method public static values()[Lcn/mucang/android/jiakaoyi/engine/model/JudgeType;
    .locals 1

    .line 1
    sget-object v0, Lcn/mucang/android/jiakaoyi/engine/model/JudgeType;->$VALUES:[Lcn/mucang/android/jiakaoyi/engine/model/JudgeType;

    invoke-virtual {v0}, [Lcn/mucang/android/jiakaoyi/engine/model/JudgeType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcn/mucang/android/jiakaoyi/engine/model/JudgeType;

    return-object v0
.end method


# virtual methods
.method public needAuto()Z
    .locals 1

    .line 1
    sget-object v0, Lcn/mucang/android/jiakaoyi/engine/model/JudgeType;->auto:Lcn/mucang/android/jiakaoyi/engine/model/JudgeType;

    if-eq p0, v0, :cond_1

    sget-object v0, Lcn/mucang/android/jiakaoyi/engine/model/JudgeType;->both:Lcn/mucang/android/jiakaoyi/engine/model/JudgeType;

    if-ne p0, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method public needManual()Z
    .locals 1

    .line 1
    sget-object v0, Lcn/mucang/android/jiakaoyi/engine/model/JudgeType;->manual:Lcn/mucang/android/jiakaoyi/engine/model/JudgeType;

    if-eq p0, v0, :cond_1

    sget-object v0, Lcn/mucang/android/jiakaoyi/engine/model/JudgeType;->both:Lcn/mucang/android/jiakaoyi/engine/model/JudgeType;

    if-ne p0, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method public notAuto()Z
    .locals 1

    .line 1
    sget-object v0, Lcn/mucang/android/jiakaoyi/engine/model/JudgeType;->manual:Lcn/mucang/android/jiakaoyi/engine/model/JudgeType;

    if-eq p0, v0, :cond_1

    sget-object v0, Lcn/mucang/android/jiakaoyi/engine/model/JudgeType;->none:Lcn/mucang/android/jiakaoyi/engine/model/JudgeType;

    if-ne p0, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method
