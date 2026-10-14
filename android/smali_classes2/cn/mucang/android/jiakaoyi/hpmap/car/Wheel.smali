.class public final enum Lcn/mucang/android/jiakaoyi/hpmap/car/Wheel;
.super Ljava/lang/Enum;
.source "SourceFile"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcn/mucang/android/jiakaoyi/hpmap/car/Wheel;",
        ">;",
        "Ljava/io/Serializable;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcn/mucang/android/jiakaoyi/hpmap/car/Wheel;

.field public static final enum LeftBack:Lcn/mucang/android/jiakaoyi/hpmap/car/Wheel;

.field public static final enum LeftFront:Lcn/mucang/android/jiakaoyi/hpmap/car/Wheel;

.field public static final enum None:Lcn/mucang/android/jiakaoyi/hpmap/car/Wheel;

.field public static final enum RightBack:Lcn/mucang/android/jiakaoyi/hpmap/car/Wheel;

.field public static final enum RightFront:Lcn/mucang/android/jiakaoyi/hpmap/car/Wheel;


# instance fields
.field public final wheel:I

.field public final wheelName:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 12

    .line 1
    new-instance v0, Lcn/mucang/android/jiakaoyi/hpmap/car/Wheel;

    const-string v1, "LeftFront"

    const/4 v2, 0x0

    const-string v3, "\u5de6\u524d\u8f6e"

    const/4 v4, 0x1

    invoke-direct {v0, v1, v2, v3, v4}, Lcn/mucang/android/jiakaoyi/hpmap/car/Wheel;-><init>(Ljava/lang/String;ILjava/lang/String;I)V

    sput-object v0, Lcn/mucang/android/jiakaoyi/hpmap/car/Wheel;->LeftFront:Lcn/mucang/android/jiakaoyi/hpmap/car/Wheel;

    .line 2
    new-instance v1, Lcn/mucang/android/jiakaoyi/hpmap/car/Wheel;

    const-string v3, "LeftBack"

    const-string v5, "\u5de6\u540e\u8f6e"

    const/4 v6, 0x2

    invoke-direct {v1, v3, v4, v5, v6}, Lcn/mucang/android/jiakaoyi/hpmap/car/Wheel;-><init>(Ljava/lang/String;ILjava/lang/String;I)V

    sput-object v1, Lcn/mucang/android/jiakaoyi/hpmap/car/Wheel;->LeftBack:Lcn/mucang/android/jiakaoyi/hpmap/car/Wheel;

    .line 3
    new-instance v3, Lcn/mucang/android/jiakaoyi/hpmap/car/Wheel;

    const-string v5, "RightFront"

    const-string v7, "\u53f3\u524d\u8f6e"

    const/4 v8, 0x3

    invoke-direct {v3, v5, v6, v7, v8}, Lcn/mucang/android/jiakaoyi/hpmap/car/Wheel;-><init>(Ljava/lang/String;ILjava/lang/String;I)V

    sput-object v3, Lcn/mucang/android/jiakaoyi/hpmap/car/Wheel;->RightFront:Lcn/mucang/android/jiakaoyi/hpmap/car/Wheel;

    .line 4
    new-instance v5, Lcn/mucang/android/jiakaoyi/hpmap/car/Wheel;

    const-string v7, "RightBack"

    const-string v9, "\u53f3\u540e\u8f6e"

    const/4 v10, 0x4

    invoke-direct {v5, v7, v8, v9, v10}, Lcn/mucang/android/jiakaoyi/hpmap/car/Wheel;-><init>(Ljava/lang/String;ILjava/lang/String;I)V

    sput-object v5, Lcn/mucang/android/jiakaoyi/hpmap/car/Wheel;->RightBack:Lcn/mucang/android/jiakaoyi/hpmap/car/Wheel;

    .line 5
    new-instance v7, Lcn/mucang/android/jiakaoyi/hpmap/car/Wheel;

    const-string v9, "None"

    const-string v11, "\u6ca1\u6709\u8f6e\u5b50"

    invoke-direct {v7, v9, v10, v11, v2}, Lcn/mucang/android/jiakaoyi/hpmap/car/Wheel;-><init>(Ljava/lang/String;ILjava/lang/String;I)V

    sput-object v7, Lcn/mucang/android/jiakaoyi/hpmap/car/Wheel;->None:Lcn/mucang/android/jiakaoyi/hpmap/car/Wheel;

    const/4 v9, 0x5

    new-array v9, v9, [Lcn/mucang/android/jiakaoyi/hpmap/car/Wheel;

    aput-object v0, v9, v2

    aput-object v1, v9, v4

    aput-object v3, v9, v6

    aput-object v5, v9, v8

    aput-object v7, v9, v10

    .line 6
    sput-object v9, Lcn/mucang/android/jiakaoyi/hpmap/car/Wheel;->$VALUES:[Lcn/mucang/android/jiakaoyi/hpmap/car/Wheel;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 2
    iput-object p3, p0, Lcn/mucang/android/jiakaoyi/hpmap/car/Wheel;->wheelName:Ljava/lang/String;

    .line 3
    iput p4, p0, Lcn/mucang/android/jiakaoyi/hpmap/car/Wheel;->wheel:I

    return-void
.end method

.method public static parse(I)Lcn/mucang/android/jiakaoyi/hpmap/car/Wheel;
    .locals 2

    .line 1
    sget-object v0, Lcn/mucang/android/jiakaoyi/hpmap/car/Wheel;->LeftBack:Lcn/mucang/android/jiakaoyi/hpmap/car/Wheel;

    iget v1, v0, Lcn/mucang/android/jiakaoyi/hpmap/car/Wheel;->wheel:I

    if-ne p0, v1, :cond_0

    return-object v0

    .line 2
    :cond_0
    sget-object v0, Lcn/mucang/android/jiakaoyi/hpmap/car/Wheel;->LeftFront:Lcn/mucang/android/jiakaoyi/hpmap/car/Wheel;

    iget v1, v0, Lcn/mucang/android/jiakaoyi/hpmap/car/Wheel;->wheel:I

    if-ne p0, v1, :cond_1

    return-object v0

    .line 3
    :cond_1
    sget-object v0, Lcn/mucang/android/jiakaoyi/hpmap/car/Wheel;->RightFront:Lcn/mucang/android/jiakaoyi/hpmap/car/Wheel;

    iget v1, v0, Lcn/mucang/android/jiakaoyi/hpmap/car/Wheel;->wheel:I

    if-ne p0, v1, :cond_2

    return-object v0

    .line 4
    :cond_2
    sget-object v0, Lcn/mucang/android/jiakaoyi/hpmap/car/Wheel;->RightBack:Lcn/mucang/android/jiakaoyi/hpmap/car/Wheel;

    iget v1, v0, Lcn/mucang/android/jiakaoyi/hpmap/car/Wheel;->wheel:I

    if-ne p0, v1, :cond_3

    return-object v0

    .line 5
    :cond_3
    sget-object p0, Lcn/mucang/android/jiakaoyi/hpmap/car/Wheel;->None:Lcn/mucang/android/jiakaoyi/hpmap/car/Wheel;

    return-object p0
.end method

.method public static valueOf(Ljava/lang/String;)Lcn/mucang/android/jiakaoyi/hpmap/car/Wheel;
    .locals 1

    .line 1
    const-class v0, Lcn/mucang/android/jiakaoyi/hpmap/car/Wheel;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcn/mucang/android/jiakaoyi/hpmap/car/Wheel;

    return-object p0
.end method

.method public static values()[Lcn/mucang/android/jiakaoyi/hpmap/car/Wheel;
    .locals 1

    .line 1
    sget-object v0, Lcn/mucang/android/jiakaoyi/hpmap/car/Wheel;->$VALUES:[Lcn/mucang/android/jiakaoyi/hpmap/car/Wheel;

    invoke-virtual {v0}, [Lcn/mucang/android/jiakaoyi/hpmap/car/Wheel;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcn/mucang/android/jiakaoyi/hpmap/car/Wheel;

    return-object v0
.end method

.method public static wheelPos(Lcn/mucang/android/jiakaoyi/hpmap/car/Wheel;Lcn/mucang/android/jiakaoyi/signal/center/model/CarPos;)Lcn/mucang/android/jiakaoyi/signal/pos/Pos;
    .locals 1

    .line 1
    sget-object v0, Lcn/mucang/android/jiakaoyi/hpmap/car/Wheel;->LeftBack:Lcn/mucang/android/jiakaoyi/hpmap/car/Wheel;

    if-ne p0, v0, :cond_0

    .line 2
    iget-object p0, p1, Lcn/mucang/android/jiakaoyi/signal/center/model/CarPos;->wheelLeftBack:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    return-object p0

    .line 3
    :cond_0
    sget-object v0, Lcn/mucang/android/jiakaoyi/hpmap/car/Wheel;->LeftFront:Lcn/mucang/android/jiakaoyi/hpmap/car/Wheel;

    if-ne p0, v0, :cond_1

    .line 4
    iget-object p0, p1, Lcn/mucang/android/jiakaoyi/signal/center/model/CarPos;->wheelLeftFront:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    return-object p0

    .line 5
    :cond_1
    sget-object v0, Lcn/mucang/android/jiakaoyi/hpmap/car/Wheel;->RightFront:Lcn/mucang/android/jiakaoyi/hpmap/car/Wheel;

    if-ne p0, v0, :cond_2

    .line 6
    iget-object p0, p1, Lcn/mucang/android/jiakaoyi/signal/center/model/CarPos;->wheelRightFront:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    return-object p0

    .line 7
    :cond_2
    sget-object v0, Lcn/mucang/android/jiakaoyi/hpmap/car/Wheel;->RightBack:Lcn/mucang/android/jiakaoyi/hpmap/car/Wheel;

    if-ne p0, v0, :cond_3

    .line 8
    iget-object p0, p1, Lcn/mucang/android/jiakaoyi/signal/center/model/CarPos;->wheelLeftBack:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    return-object p0

    :cond_3
    const/4 p0, 0x0

    return-object p0
.end method
