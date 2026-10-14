.class public final enum Lcn/mucang/android/jiakaoyi/signal/calibration/WheelAction;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcn/mucang/android/jiakaoyi/signal/calibration/WheelAction;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0012\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0000\n\u0002\u0010\u0005\n\u0002\u0008\u0008\u0008\u0086\u0001\u0018\u00002\u0008\u0012\u0004\u0012\u00020\u00000\u0001B\u000f\u0008\u0002\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0002\u0010\u0004R\u0011\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0005\u0010\u0006j\u0002\u0008\u0007j\u0002\u0008\u0008j\u0002\u0008\tj\u0002\u0008\n\u00a8\u0006\u000b"
    }
    d2 = {
        "Lcn/mucang/android/jiakaoyi/signal/calibration/WheelAction;",
        "",
        "action",
        "",
        "(Ljava/lang/String;IB)V",
        "getAction",
        "()B",
        "LEFT_TO_DEAD",
        "CENTER",
        "RIGHT_TO_DEAD",
        "RECOVERY",
        "signal_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x5,
        0x1
    }
    xi = 0x30
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcn/mucang/android/jiakaoyi/signal/calibration/WheelAction;

.field public static final enum CENTER:Lcn/mucang/android/jiakaoyi/signal/calibration/WheelAction;

.field public static final enum LEFT_TO_DEAD:Lcn/mucang/android/jiakaoyi/signal/calibration/WheelAction;

.field public static final enum RECOVERY:Lcn/mucang/android/jiakaoyi/signal/calibration/WheelAction;

.field public static final enum RIGHT_TO_DEAD:Lcn/mucang/android/jiakaoyi/signal/calibration/WheelAction;


# instance fields
.field private final action:B


# direct methods
.method private static final synthetic $values()[Lcn/mucang/android/jiakaoyi/signal/calibration/WheelAction;
    .locals 3

    const/4 v0, 0x4

    new-array v0, v0, [Lcn/mucang/android/jiakaoyi/signal/calibration/WheelAction;

    sget-object v1, Lcn/mucang/android/jiakaoyi/signal/calibration/WheelAction;->LEFT_TO_DEAD:Lcn/mucang/android/jiakaoyi/signal/calibration/WheelAction;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    sget-object v1, Lcn/mucang/android/jiakaoyi/signal/calibration/WheelAction;->CENTER:Lcn/mucang/android/jiakaoyi/signal/calibration/WheelAction;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    sget-object v1, Lcn/mucang/android/jiakaoyi/signal/calibration/WheelAction;->RIGHT_TO_DEAD:Lcn/mucang/android/jiakaoyi/signal/calibration/WheelAction;

    const/4 v2, 0x2

    aput-object v1, v0, v2

    sget-object v1, Lcn/mucang/android/jiakaoyi/signal/calibration/WheelAction;->RECOVERY:Lcn/mucang/android/jiakaoyi/signal/calibration/WheelAction;

    const/4 v2, 0x3

    aput-object v1, v0, v2

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 3

    .line 1
    new-instance v0, Lcn/mucang/android/jiakaoyi/signal/calibration/WheelAction;

    const-string v1, "LEFT_TO_DEAD"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, Lcn/mucang/android/jiakaoyi/signal/calibration/WheelAction;-><init>(Ljava/lang/String;IB)V

    sput-object v0, Lcn/mucang/android/jiakaoyi/signal/calibration/WheelAction;->LEFT_TO_DEAD:Lcn/mucang/android/jiakaoyi/signal/calibration/WheelAction;

    .line 2
    new-instance v0, Lcn/mucang/android/jiakaoyi/signal/calibration/WheelAction;

    const-string v1, "CENTER"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2, v2}, Lcn/mucang/android/jiakaoyi/signal/calibration/WheelAction;-><init>(Ljava/lang/String;IB)V

    sput-object v0, Lcn/mucang/android/jiakaoyi/signal/calibration/WheelAction;->CENTER:Lcn/mucang/android/jiakaoyi/signal/calibration/WheelAction;

    .line 3
    new-instance v0, Lcn/mucang/android/jiakaoyi/signal/calibration/WheelAction;

    const-string v1, "RIGHT_TO_DEAD"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2, v2}, Lcn/mucang/android/jiakaoyi/signal/calibration/WheelAction;-><init>(Ljava/lang/String;IB)V

    sput-object v0, Lcn/mucang/android/jiakaoyi/signal/calibration/WheelAction;->RIGHT_TO_DEAD:Lcn/mucang/android/jiakaoyi/signal/calibration/WheelAction;

    .line 4
    new-instance v0, Lcn/mucang/android/jiakaoyi/signal/calibration/WheelAction;

    const-string v1, "RECOVERY"

    const/4 v2, 0x3

    invoke-direct {v0, v1, v2, v2}, Lcn/mucang/android/jiakaoyi/signal/calibration/WheelAction;-><init>(Ljava/lang/String;IB)V

    sput-object v0, Lcn/mucang/android/jiakaoyi/signal/calibration/WheelAction;->RECOVERY:Lcn/mucang/android/jiakaoyi/signal/calibration/WheelAction;

    invoke-static {}, Lcn/mucang/android/jiakaoyi/signal/calibration/WheelAction;->$values()[Lcn/mucang/android/jiakaoyi/signal/calibration/WheelAction;

    move-result-object v0

    sput-object v0, Lcn/mucang/android/jiakaoyi/signal/calibration/WheelAction;->$VALUES:[Lcn/mucang/android/jiakaoyi/signal/calibration/WheelAction;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;IB)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(B)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput-byte p3, p0, Lcn/mucang/android/jiakaoyi/signal/calibration/WheelAction;->action:B

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcn/mucang/android/jiakaoyi/signal/calibration/WheelAction;
    .locals 1

    const-class v0, Lcn/mucang/android/jiakaoyi/signal/calibration/WheelAction;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcn/mucang/android/jiakaoyi/signal/calibration/WheelAction;

    return-object p0
.end method

.method public static values()[Lcn/mucang/android/jiakaoyi/signal/calibration/WheelAction;
    .locals 1

    sget-object v0, Lcn/mucang/android/jiakaoyi/signal/calibration/WheelAction;->$VALUES:[Lcn/mucang/android/jiakaoyi/signal/calibration/WheelAction;

    invoke-virtual {v0}, [Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcn/mucang/android/jiakaoyi/signal/calibration/WheelAction;

    return-object v0
.end method


# virtual methods
.method public final getAction()B
    .locals 1

    .line 1
    iget-byte v0, p0, Lcn/mucang/android/jiakaoyi/signal/calibration/WheelAction;->action:B

    return v0
.end method
