.class public final enum Lcn/mucang/android/jiakaoyi/signal/center/model/CarBrakeState;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcn/mucang/android/jiakaoyi/signal/center/model/CarBrakeState;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcn/mucang/android/jiakaoyi/signal/center/model/CarBrakeState;

.field public static final enum STATE_BRAKE:Lcn/mucang/android/jiakaoyi/signal/center/model/CarBrakeState;

.field public static final enum STATE_NONE:Lcn/mucang/android/jiakaoyi/signal/center/model/CarBrakeState;


# instance fields
.field public final id:I

.field public final state:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .line 1
    new-instance v0, Lcn/mucang/android/jiakaoyi/signal/center/model/CarBrakeState;

    const-string v1, "STATE_NONE"

    const/4 v2, 0x0

    const-string v3, "\u5239\u8f66\u65e0\u52a8\u4f5c"

    invoke-direct {v0, v1, v2, v2, v3}, Lcn/mucang/android/jiakaoyi/signal/center/model/CarBrakeState;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lcn/mucang/android/jiakaoyi/signal/center/model/CarBrakeState;->STATE_NONE:Lcn/mucang/android/jiakaoyi/signal/center/model/CarBrakeState;

    .line 2
    new-instance v1, Lcn/mucang/android/jiakaoyi/signal/center/model/CarBrakeState;

    const-string v3, "STATE_BRAKE"

    const/4 v4, 0x1

    const-string v5, "\u5df2\u5239\u8f66"

    invoke-direct {v1, v3, v4, v4, v5}, Lcn/mucang/android/jiakaoyi/signal/center/model/CarBrakeState;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v1, Lcn/mucang/android/jiakaoyi/signal/center/model/CarBrakeState;->STATE_BRAKE:Lcn/mucang/android/jiakaoyi/signal/center/model/CarBrakeState;

    const/4 v3, 0x2

    new-array v3, v3, [Lcn/mucang/android/jiakaoyi/signal/center/model/CarBrakeState;

    aput-object v0, v3, v2

    aput-object v1, v3, v4

    .line 3
    sput-object v3, Lcn/mucang/android/jiakaoyi/signal/center/model/CarBrakeState;->$VALUES:[Lcn/mucang/android/jiakaoyi/signal/center/model/CarBrakeState;

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
    iput p3, p0, Lcn/mucang/android/jiakaoyi/signal/center/model/CarBrakeState;->id:I

    .line 3
    iput-object p4, p0, Lcn/mucang/android/jiakaoyi/signal/center/model/CarBrakeState;->state:Ljava/lang/String;

    return-void
.end method

.method public static parse(I)Lcn/mucang/android/jiakaoyi/signal/center/model/CarBrakeState;
    .locals 4

    .line 1
    invoke-static {}, Lcn/mucang/android/jiakaoyi/signal/center/model/CarBrakeState;->values()[Lcn/mucang/android/jiakaoyi/signal/center/model/CarBrakeState;

    move-result-object v0

    const/4 v1, 0x0

    .line 2
    :goto_0
    array-length v2, v0

    if-ge v1, v2, :cond_1

    .line 3
    aget-object v2, v0, v1

    .line 4
    iget v3, v2, Lcn/mucang/android/jiakaoyi/signal/center/model/CarBrakeState;->id:I

    if-ne v3, p0, :cond_0

    return-object v2

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 5
    :cond_1
    sget-object p0, Lcn/mucang/android/jiakaoyi/signal/center/model/CarBrakeState;->STATE_NONE:Lcn/mucang/android/jiakaoyi/signal/center/model/CarBrakeState;

    return-object p0
.end method

.method public static valueOf(Ljava/lang/String;)Lcn/mucang/android/jiakaoyi/signal/center/model/CarBrakeState;
    .locals 1

    .line 1
    const-class v0, Lcn/mucang/android/jiakaoyi/signal/center/model/CarBrakeState;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcn/mucang/android/jiakaoyi/signal/center/model/CarBrakeState;

    return-object p0
.end method

.method public static values()[Lcn/mucang/android/jiakaoyi/signal/center/model/CarBrakeState;
    .locals 1

    .line 1
    sget-object v0, Lcn/mucang/android/jiakaoyi/signal/center/model/CarBrakeState;->$VALUES:[Lcn/mucang/android/jiakaoyi/signal/center/model/CarBrakeState;

    invoke-virtual {v0}, [Lcn/mucang/android/jiakaoyi/signal/center/model/CarBrakeState;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcn/mucang/android/jiakaoyi/signal/center/model/CarBrakeState;

    return-object v0
.end method
