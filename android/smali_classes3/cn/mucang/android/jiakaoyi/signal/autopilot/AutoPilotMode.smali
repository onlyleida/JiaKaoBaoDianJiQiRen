.class public final enum Lcn/mucang/android/jiakaoyi/signal/autopilot/AutoPilotMode;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcn/mucang/android/jiakaoyi/signal/autopilot/AutoPilotMode;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcn/mucang/android/jiakaoyi/signal/autopilot/AutoPilotMode;

.field public static final enum Manual:Lcn/mucang/android/jiakaoyi/signal/autopilot/AutoPilotMode;

.field public static final enum None:Lcn/mucang/android/jiakaoyi/signal/autopilot/AutoPilotMode;

.field public static final enum Pause:Lcn/mucang/android/jiakaoyi/signal/autopilot/AutoPilotMode;

.field public static final enum Pending:Lcn/mucang/android/jiakaoyi/signal/autopilot/AutoPilotMode;

.field public static final enum Preparing:Lcn/mucang/android/jiakaoyi/signal/autopilot/AutoPilotMode;

.field public static final enum Ready:Lcn/mucang/android/jiakaoyi/signal/autopilot/AutoPilotMode;

.field public static final enum Running:Lcn/mucang/android/jiakaoyi/signal/autopilot/AutoPilotMode;

.field public static final enum Waiting:Lcn/mucang/android/jiakaoyi/signal/autopilot/AutoPilotMode;


# instance fields
.field public final desc:Ljava/lang/String;

.field public final mode:I

.field public unknownCode:I


# direct methods
.method static constructor <clinit>()V
    .locals 16

    .line 1
    new-instance v0, Lcn/mucang/android/jiakaoyi/signal/autopilot/AutoPilotMode;

    const-string v1, "None"

    const/4 v2, 0x0

    const/4 v3, -0x1

    const-string v4, "\u672a\u77e5\u72b6\u6001"

    invoke-direct {v0, v1, v2, v3, v4}, Lcn/mucang/android/jiakaoyi/signal/autopilot/AutoPilotMode;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lcn/mucang/android/jiakaoyi/signal/autopilot/AutoPilotMode;->None:Lcn/mucang/android/jiakaoyi/signal/autopilot/AutoPilotMode;

    .line 2
    new-instance v1, Lcn/mucang/android/jiakaoyi/signal/autopilot/AutoPilotMode;

    const-string v3, "Manual"

    const/4 v4, 0x1

    const-string v5, "\u4eba\u5de5\u9a7e\u9a76\u6a21\u5f0f"

    invoke-direct {v1, v3, v4, v2, v5}, Lcn/mucang/android/jiakaoyi/signal/autopilot/AutoPilotMode;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v1, Lcn/mucang/android/jiakaoyi/signal/autopilot/AutoPilotMode;->Manual:Lcn/mucang/android/jiakaoyi/signal/autopilot/AutoPilotMode;

    .line 3
    new-instance v3, Lcn/mucang/android/jiakaoyi/signal/autopilot/AutoPilotMode;

    const-string v5, "Preparing"

    const/4 v6, 0x2

    const-string v7, "\u65e0\u4eba\u9a7e\u9a76\u51c6\u5907\u72b6\u6001"

    invoke-direct {v3, v5, v6, v4, v7}, Lcn/mucang/android/jiakaoyi/signal/autopilot/AutoPilotMode;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v3, Lcn/mucang/android/jiakaoyi/signal/autopilot/AutoPilotMode;->Preparing:Lcn/mucang/android/jiakaoyi/signal/autopilot/AutoPilotMode;

    .line 4
    new-instance v5, Lcn/mucang/android/jiakaoyi/signal/autopilot/AutoPilotMode;

    const-string v7, "Ready"

    const/4 v8, 0x3

    const-string v9, "\u65e0\u4eba\u9a7e\u9a76\u5c31\u7eea\u72b6\u6001"

    invoke-direct {v5, v7, v8, v6, v9}, Lcn/mucang/android/jiakaoyi/signal/autopilot/AutoPilotMode;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v5, Lcn/mucang/android/jiakaoyi/signal/autopilot/AutoPilotMode;->Ready:Lcn/mucang/android/jiakaoyi/signal/autopilot/AutoPilotMode;

    .line 5
    new-instance v7, Lcn/mucang/android/jiakaoyi/signal/autopilot/AutoPilotMode;

    const-string v9, "Running"

    const/4 v10, 0x4

    const-string v11, "\u65e0\u4eba\u9a7e\u9a76\u72b6\u6001"

    invoke-direct {v7, v9, v10, v8, v11}, Lcn/mucang/android/jiakaoyi/signal/autopilot/AutoPilotMode;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v7, Lcn/mucang/android/jiakaoyi/signal/autopilot/AutoPilotMode;->Running:Lcn/mucang/android/jiakaoyi/signal/autopilot/AutoPilotMode;

    .line 6
    new-instance v9, Lcn/mucang/android/jiakaoyi/signal/autopilot/AutoPilotMode;

    const-string v11, "Pause"

    const/4 v12, 0x5

    const-string v13, "\u65e0\u4eba\u9a7e\u9a76\u6682\u505c\u72b6\u6001"

    invoke-direct {v9, v11, v12, v10, v13}, Lcn/mucang/android/jiakaoyi/signal/autopilot/AutoPilotMode;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v9, Lcn/mucang/android/jiakaoyi/signal/autopilot/AutoPilotMode;->Pause:Lcn/mucang/android/jiakaoyi/signal/autopilot/AutoPilotMode;

    .line 7
    new-instance v11, Lcn/mucang/android/jiakaoyi/signal/autopilot/AutoPilotMode;

    const-string v13, "Pending"

    const/4 v14, 0x6

    const-string v15, "\u81ea\u52a8\u9a7e\u9a76\u5f85\u7ed3\u675f\u72b6\u6001"

    invoke-direct {v11, v13, v14, v12, v15}, Lcn/mucang/android/jiakaoyi/signal/autopilot/AutoPilotMode;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v11, Lcn/mucang/android/jiakaoyi/signal/autopilot/AutoPilotMode;->Pending:Lcn/mucang/android/jiakaoyi/signal/autopilot/AutoPilotMode;

    .line 8
    new-instance v13, Lcn/mucang/android/jiakaoyi/signal/autopilot/AutoPilotMode;

    const-string v15, "Waiting"

    const/4 v12, 0x7

    const-string v10, "\u7b49\u5f85\u65b0\u8f68\u8ff9\u6a21\u5f0f"

    invoke-direct {v13, v15, v12, v14, v10}, Lcn/mucang/android/jiakaoyi/signal/autopilot/AutoPilotMode;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v13, Lcn/mucang/android/jiakaoyi/signal/autopilot/AutoPilotMode;->Waiting:Lcn/mucang/android/jiakaoyi/signal/autopilot/AutoPilotMode;

    const/16 v10, 0x8

    new-array v10, v10, [Lcn/mucang/android/jiakaoyi/signal/autopilot/AutoPilotMode;

    aput-object v0, v10, v2

    aput-object v1, v10, v4

    aput-object v3, v10, v6

    aput-object v5, v10, v8

    const/4 v0, 0x4

    aput-object v7, v10, v0

    const/4 v0, 0x5

    aput-object v9, v10, v0

    aput-object v11, v10, v14

    aput-object v13, v10, v12

    .line 9
    sput-object v10, Lcn/mucang/android/jiakaoyi/signal/autopilot/AutoPilotMode;->$VALUES:[Lcn/mucang/android/jiakaoyi/signal/autopilot/AutoPilotMode;

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
    iput p3, p0, Lcn/mucang/android/jiakaoyi/signal/autopilot/AutoPilotMode;->mode:I

    .line 3
    iput-object p4, p0, Lcn/mucang/android/jiakaoyi/signal/autopilot/AutoPilotMode;->desc:Ljava/lang/String;

    return-void
.end method

.method public static parse(I)Lcn/mucang/android/jiakaoyi/signal/autopilot/AutoPilotMode;
    .locals 5

    .line 1
    invoke-static {}, Lcn/mucang/android/jiakaoyi/signal/autopilot/AutoPilotMode;->values()[Lcn/mucang/android/jiakaoyi/signal/autopilot/AutoPilotMode;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, v0, v2

    .line 2
    iget v4, v3, Lcn/mucang/android/jiakaoyi/signal/autopilot/AutoPilotMode;->mode:I

    if-ne v4, p0, :cond_0

    return-object v3

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 3
    :cond_1
    sget-object v0, Lcn/mucang/android/jiakaoyi/signal/autopilot/AutoPilotMode;->None:Lcn/mucang/android/jiakaoyi/signal/autopilot/AutoPilotMode;

    iput p0, v0, Lcn/mucang/android/jiakaoyi/signal/autopilot/AutoPilotMode;->unknownCode:I

    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Lcn/mucang/android/jiakaoyi/signal/autopilot/AutoPilotMode;
    .locals 1

    .line 1
    const-class v0, Lcn/mucang/android/jiakaoyi/signal/autopilot/AutoPilotMode;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcn/mucang/android/jiakaoyi/signal/autopilot/AutoPilotMode;

    return-object p0
.end method

.method public static values()[Lcn/mucang/android/jiakaoyi/signal/autopilot/AutoPilotMode;
    .locals 1

    .line 1
    sget-object v0, Lcn/mucang/android/jiakaoyi/signal/autopilot/AutoPilotMode;->$VALUES:[Lcn/mucang/android/jiakaoyi/signal/autopilot/AutoPilotMode;

    invoke-virtual {v0}, [Lcn/mucang/android/jiakaoyi/signal/autopilot/AutoPilotMode;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcn/mucang/android/jiakaoyi/signal/autopilot/AutoPilotMode;

    return-object v0
.end method
