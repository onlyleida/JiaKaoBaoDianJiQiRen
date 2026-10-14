.class public final enum Lcn/mucang/android/jiakaoyi/signal/autopilot/AutoPilotOrder;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcn/mucang/android/jiakaoyi/signal/autopilot/AutoPilotOrder;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcn/mucang/android/jiakaoyi/signal/autopilot/AutoPilotOrder;

.field public static final enum Collect:Lcn/mucang/android/jiakaoyi/signal/autopilot/AutoPilotOrder;

.field public static final enum Gear:Lcn/mucang/android/jiakaoyi/signal/autopilot/AutoPilotOrder;

.field public static final enum Motor:Lcn/mucang/android/jiakaoyi/signal/autopilot/AutoPilotOrder;

.field public static final enum Path:Lcn/mucang/android/jiakaoyi/signal/autopilot/AutoPilotOrder;

.field public static final enum Speed:Lcn/mucang/android/jiakaoyi/signal/autopilot/AutoPilotOrder;

.field public static final enum State:Lcn/mucang/android/jiakaoyi/signal/autopilot/AutoPilotOrder;

.field public static final enum Wheel:Lcn/mucang/android/jiakaoyi/signal/autopilot/AutoPilotOrder;


# instance fields
.field public final desc:Ljava/lang/String;

.field public final order:B


# direct methods
.method static constructor <clinit>()V
    .locals 16

    .line 1
    new-instance v0, Lcn/mucang/android/jiakaoyi/signal/autopilot/AutoPilotOrder;

    const-string v1, "Wheel"

    const/4 v2, 0x0

    const/4 v3, 0x4

    const-string v4, "\u63a7\u5236\u65b9\u5411\u76d8"

    invoke-direct {v0, v1, v2, v3, v4}, Lcn/mucang/android/jiakaoyi/signal/autopilot/AutoPilotOrder;-><init>(Ljava/lang/String;IBLjava/lang/String;)V

    sput-object v0, Lcn/mucang/android/jiakaoyi/signal/autopilot/AutoPilotOrder;->Wheel:Lcn/mucang/android/jiakaoyi/signal/autopilot/AutoPilotOrder;

    .line 2
    new-instance v1, Lcn/mucang/android/jiakaoyi/signal/autopilot/AutoPilotOrder;

    const-string v4, "Gear"

    const/4 v5, 0x1

    const/4 v6, 0x5

    const-string v7, "\u63a7\u5236\u6863\u4f4d"

    invoke-direct {v1, v4, v5, v6, v7}, Lcn/mucang/android/jiakaoyi/signal/autopilot/AutoPilotOrder;-><init>(Ljava/lang/String;IBLjava/lang/String;)V

    sput-object v1, Lcn/mucang/android/jiakaoyi/signal/autopilot/AutoPilotOrder;->Gear:Lcn/mucang/android/jiakaoyi/signal/autopilot/AutoPilotOrder;

    .line 3
    new-instance v4, Lcn/mucang/android/jiakaoyi/signal/autopilot/AutoPilotOrder;

    const-string v7, "Speed"

    const/4 v8, 0x2

    const/4 v9, 0x6

    const-string v10, "\u63a7\u5236\u901f\u5ea6"

    invoke-direct {v4, v7, v8, v9, v10}, Lcn/mucang/android/jiakaoyi/signal/autopilot/AutoPilotOrder;-><init>(Ljava/lang/String;IBLjava/lang/String;)V

    sput-object v4, Lcn/mucang/android/jiakaoyi/signal/autopilot/AutoPilotOrder;->Speed:Lcn/mucang/android/jiakaoyi/signal/autopilot/AutoPilotOrder;

    .line 4
    new-instance v7, Lcn/mucang/android/jiakaoyi/signal/autopilot/AutoPilotOrder;

    const-string v10, "Collect"

    const/4 v11, 0x3

    const/4 v12, 0x7

    const-string v13, "\u91c7\u96c6\u8f68\u8ff9"

    invoke-direct {v7, v10, v11, v12, v13}, Lcn/mucang/android/jiakaoyi/signal/autopilot/AutoPilotOrder;-><init>(Ljava/lang/String;IBLjava/lang/String;)V

    sput-object v7, Lcn/mucang/android/jiakaoyi/signal/autopilot/AutoPilotOrder;->Collect:Lcn/mucang/android/jiakaoyi/signal/autopilot/AutoPilotOrder;

    .line 5
    new-instance v10, Lcn/mucang/android/jiakaoyi/signal/autopilot/AutoPilotOrder;

    const-string v13, "State"

    const/16 v14, 0x8

    const-string v15, "\u8bbe\u7f6e\u72b6\u6001"

    invoke-direct {v10, v13, v3, v14, v15}, Lcn/mucang/android/jiakaoyi/signal/autopilot/AutoPilotOrder;-><init>(Ljava/lang/String;IBLjava/lang/String;)V

    sput-object v10, Lcn/mucang/android/jiakaoyi/signal/autopilot/AutoPilotOrder;->State:Lcn/mucang/android/jiakaoyi/signal/autopilot/AutoPilotOrder;

    .line 6
    new-instance v13, Lcn/mucang/android/jiakaoyi/signal/autopilot/AutoPilotOrder;

    const-string v14, "Path"

    const/16 v15, 0x9

    const-string v3, "\u4e0b\u53d1\u8def\u7ebf"

    invoke-direct {v13, v14, v6, v15, v3}, Lcn/mucang/android/jiakaoyi/signal/autopilot/AutoPilotOrder;-><init>(Ljava/lang/String;IBLjava/lang/String;)V

    sput-object v13, Lcn/mucang/android/jiakaoyi/signal/autopilot/AutoPilotOrder;->Path:Lcn/mucang/android/jiakaoyi/signal/autopilot/AutoPilotOrder;

    .line 7
    new-instance v3, Lcn/mucang/android/jiakaoyi/signal/autopilot/AutoPilotOrder;

    const-string v14, "Motor"

    const/16 v15, 0xa

    const-string v6, "\u6321\u4f4d\u7535\u673a\u6807\u5b9a"

    invoke-direct {v3, v14, v9, v15, v6}, Lcn/mucang/android/jiakaoyi/signal/autopilot/AutoPilotOrder;-><init>(Ljava/lang/String;IBLjava/lang/String;)V

    sput-object v3, Lcn/mucang/android/jiakaoyi/signal/autopilot/AutoPilotOrder;->Motor:Lcn/mucang/android/jiakaoyi/signal/autopilot/AutoPilotOrder;

    new-array v6, v12, [Lcn/mucang/android/jiakaoyi/signal/autopilot/AutoPilotOrder;

    aput-object v0, v6, v2

    aput-object v1, v6, v5

    aput-object v4, v6, v8

    aput-object v7, v6, v11

    const/4 v0, 0x4

    aput-object v10, v6, v0

    const/4 v0, 0x5

    aput-object v13, v6, v0

    aput-object v3, v6, v9

    .line 8
    sput-object v6, Lcn/mucang/android/jiakaoyi/signal/autopilot/AutoPilotOrder;->$VALUES:[Lcn/mucang/android/jiakaoyi/signal/autopilot/AutoPilotOrder;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;IBLjava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(B",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 2
    iput-byte p3, p0, Lcn/mucang/android/jiakaoyi/signal/autopilot/AutoPilotOrder;->order:B

    .line 3
    iput-object p4, p0, Lcn/mucang/android/jiakaoyi/signal/autopilot/AutoPilotOrder;->desc:Ljava/lang/String;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcn/mucang/android/jiakaoyi/signal/autopilot/AutoPilotOrder;
    .locals 1

    .line 1
    const-class v0, Lcn/mucang/android/jiakaoyi/signal/autopilot/AutoPilotOrder;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcn/mucang/android/jiakaoyi/signal/autopilot/AutoPilotOrder;

    return-object p0
.end method

.method public static values()[Lcn/mucang/android/jiakaoyi/signal/autopilot/AutoPilotOrder;
    .locals 1

    .line 1
    sget-object v0, Lcn/mucang/android/jiakaoyi/signal/autopilot/AutoPilotOrder;->$VALUES:[Lcn/mucang/android/jiakaoyi/signal/autopilot/AutoPilotOrder;

    invoke-virtual {v0}, [Lcn/mucang/android/jiakaoyi/signal/autopilot/AutoPilotOrder;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcn/mucang/android/jiakaoyi/signal/autopilot/AutoPilotOrder;

    return-object v0
.end method
