.class public final enum Lcn/mucang/android/jiakaoyi/signal/center/model/CarThrottleState;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcn/mucang/android/jiakaoyi/signal/center/model/CarThrottleState;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcn/mucang/android/jiakaoyi/signal/center/model/CarThrottleState;

.field public static final enum STATE_ACTION:Lcn/mucang/android/jiakaoyi/signal/center/model/CarThrottleState;

.field public static final enum STATE_DONE:Lcn/mucang/android/jiakaoyi/signal/center/model/CarThrottleState;

.field public static final enum STATE_NONE:Lcn/mucang/android/jiakaoyi/signal/center/model/CarThrottleState;


# instance fields
.field public final id:I

.field public final state:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .line 1
    new-instance v0, Lcn/mucang/android/jiakaoyi/signal/center/model/CarThrottleState;

    const-string v1, "STATE_NONE"

    const/4 v2, 0x0

    const-string v3, "\u6cb9\u95e8\u65e0\u52a8\u4f5c"

    invoke-direct {v0, v1, v2, v2, v3}, Lcn/mucang/android/jiakaoyi/signal/center/model/CarThrottleState;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lcn/mucang/android/jiakaoyi/signal/center/model/CarThrottleState;->STATE_NONE:Lcn/mucang/android/jiakaoyi/signal/center/model/CarThrottleState;

    .line 2
    new-instance v1, Lcn/mucang/android/jiakaoyi/signal/center/model/CarThrottleState;

    const-string v3, "STATE_ACTION"

    const/4 v4, 0x1

    const-string v5, "\u6cb9\u95e8\u52a8\u4f5c\u8fc7\u7a0b\u4e2d"

    invoke-direct {v1, v3, v4, v4, v5}, Lcn/mucang/android/jiakaoyi/signal/center/model/CarThrottleState;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v1, Lcn/mucang/android/jiakaoyi/signal/center/model/CarThrottleState;->STATE_ACTION:Lcn/mucang/android/jiakaoyi/signal/center/model/CarThrottleState;

    .line 3
    new-instance v3, Lcn/mucang/android/jiakaoyi/signal/center/model/CarThrottleState;

    const-string v5, "STATE_DONE"

    const/4 v6, 0x2

    const-string v7, "\u6cb9\u95e8\u8fbe\u5230\u4f4d\u7f6e"

    invoke-direct {v3, v5, v6, v6, v7}, Lcn/mucang/android/jiakaoyi/signal/center/model/CarThrottleState;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v3, Lcn/mucang/android/jiakaoyi/signal/center/model/CarThrottleState;->STATE_DONE:Lcn/mucang/android/jiakaoyi/signal/center/model/CarThrottleState;

    const/4 v5, 0x3

    new-array v5, v5, [Lcn/mucang/android/jiakaoyi/signal/center/model/CarThrottleState;

    aput-object v0, v5, v2

    aput-object v1, v5, v4

    aput-object v3, v5, v6

    .line 4
    sput-object v5, Lcn/mucang/android/jiakaoyi/signal/center/model/CarThrottleState;->$VALUES:[Lcn/mucang/android/jiakaoyi/signal/center/model/CarThrottleState;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;IILjava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 2
    iput p3, p0, Lcn/mucang/android/jiakaoyi/signal/center/model/CarThrottleState;->id:I

    .line 3
    iput-object p4, p0, Lcn/mucang/android/jiakaoyi/signal/center/model/CarThrottleState;->state:Ljava/lang/String;

    return-void
.end method

.method public static parse(I)Lcn/mucang/android/jiakaoyi/signal/center/model/CarThrottleState;
    .locals 4

    .line 1
    invoke-static {}, Lcn/mucang/android/jiakaoyi/signal/center/model/CarThrottleState;->values()[Lcn/mucang/android/jiakaoyi/signal/center/model/CarThrottleState;

    move-result-object v0

    const/4 v1, 0x0

    .line 2
    :goto_0
    array-length v2, v0

    if-ge v1, v2, :cond_1

    .line 3
    aget-object v2, v0, v1

    .line 4
    iget v3, v2, Lcn/mucang/android/jiakaoyi/signal/center/model/CarThrottleState;->id:I

    if-ne v3, p0, :cond_0

    return-object v2

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 5
    :cond_1
    sget-object p0, Lcn/mucang/android/jiakaoyi/signal/center/model/CarThrottleState;->STATE_NONE:Lcn/mucang/android/jiakaoyi/signal/center/model/CarThrottleState;

    return-object p0
.end method

.method public static valueOf(Ljava/lang/String;)Lcn/mucang/android/jiakaoyi/signal/center/model/CarThrottleState;
    .locals 1

    .line 1
    const-class v0, Lcn/mucang/android/jiakaoyi/signal/center/model/CarThrottleState;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcn/mucang/android/jiakaoyi/signal/center/model/CarThrottleState;

    return-object p0
.end method

.method public static values()[Lcn/mucang/android/jiakaoyi/signal/center/model/CarThrottleState;
    .locals 1

    .line 1
    sget-object v0, Lcn/mucang/android/jiakaoyi/signal/center/model/CarThrottleState;->$VALUES:[Lcn/mucang/android/jiakaoyi/signal/center/model/CarThrottleState;

    invoke-virtual {v0}, [Lcn/mucang/android/jiakaoyi/signal/center/model/CarThrottleState;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcn/mucang/android/jiakaoyi/signal/center/model/CarThrottleState;

    return-object v0
.end method
