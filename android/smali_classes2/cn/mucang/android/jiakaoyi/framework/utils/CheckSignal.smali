.class public final enum Lcn/mucang/android/jiakaoyi/framework/utils/CheckSignal;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcn/mucang/android/jiakaoyi/framework/utils/CheckSignal;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\"\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0003\n\u0002\u0010\u000b\n\u0002\u0008\u0008\n\u0002\u0010\u0008\n\u0002\u0008\r\u0008\u0086\u0001\u0018\u00002\u0008\u0012\u0004\u0012\u00020\u00000\u0001B\u0017\u0008\u0002\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0003\u00a2\u0006\u0002\u0010\u0005R\u001a\u0010\u0006\u001a\u00020\u0007X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0008\u0010\t\"\u0004\u0008\n\u0010\u000bR\u0011\u0010\u000c\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\r\u0010\u000eR\u001a\u0010\u000f\u001a\u00020\u0010X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0011\u0010\u0012\"\u0004\u0008\u0013\u0010\u0014R\u0011\u0010\u0004\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0015\u0010\u000ej\u0002\u0008\u0016j\u0002\u0008\u0017j\u0002\u0008\u0018j\u0002\u0008\u0019j\u0002\u0008\u001aj\u0002\u0008\u001bj\u0002\u0008\u001c\u00a8\u0006\u001d"
    }
    d2 = {
        "Lcn/mucang/android/jiakaoyi/framework/utils/CheckSignal;",
        "",
        "str",
        "",
        "tip",
        "(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V",
        "hasPlayErrTip",
        "",
        "getHasPlayErrTip",
        "()Z",
        "setHasPlayErrTip",
        "(Z)V",
        "signalName",
        "getSignalName",
        "()Ljava/lang/String;",
        "state",
        "",
        "getState",
        "()I",
        "setState",
        "(I)V",
        "getTip",
        "GPS",
        "KEY",
        "GEAR",
        "SPEED",
        "RPM",
        "THROTTLE",
        "GYRO",
        "framework_release"
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
.field private static final synthetic $VALUES:[Lcn/mucang/android/jiakaoyi/framework/utils/CheckSignal;

.field public static final enum GEAR:Lcn/mucang/android/jiakaoyi/framework/utils/CheckSignal;

.field public static final enum GPS:Lcn/mucang/android/jiakaoyi/framework/utils/CheckSignal;

.field public static final enum GYRO:Lcn/mucang/android/jiakaoyi/framework/utils/CheckSignal;

.field public static final enum KEY:Lcn/mucang/android/jiakaoyi/framework/utils/CheckSignal;

.field public static final enum RPM:Lcn/mucang/android/jiakaoyi/framework/utils/CheckSignal;

.field public static final enum SPEED:Lcn/mucang/android/jiakaoyi/framework/utils/CheckSignal;

.field public static final enum THROTTLE:Lcn/mucang/android/jiakaoyi/framework/utils/CheckSignal;


# instance fields
.field private hasPlayErrTip:Z

.field private final signalName:Ljava/lang/String;

.field private state:I

.field private final tip:Ljava/lang/String;


# direct methods
.method private static final synthetic $values()[Lcn/mucang/android/jiakaoyi/framework/utils/CheckSignal;
    .locals 3

    const/4 v0, 0x7

    new-array v0, v0, [Lcn/mucang/android/jiakaoyi/framework/utils/CheckSignal;

    sget-object v1, Lcn/mucang/android/jiakaoyi/framework/utils/CheckSignal;->GPS:Lcn/mucang/android/jiakaoyi/framework/utils/CheckSignal;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    sget-object v1, Lcn/mucang/android/jiakaoyi/framework/utils/CheckSignal;->KEY:Lcn/mucang/android/jiakaoyi/framework/utils/CheckSignal;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    sget-object v1, Lcn/mucang/android/jiakaoyi/framework/utils/CheckSignal;->GEAR:Lcn/mucang/android/jiakaoyi/framework/utils/CheckSignal;

    const/4 v2, 0x2

    aput-object v1, v0, v2

    sget-object v1, Lcn/mucang/android/jiakaoyi/framework/utils/CheckSignal;->SPEED:Lcn/mucang/android/jiakaoyi/framework/utils/CheckSignal;

    const/4 v2, 0x3

    aput-object v1, v0, v2

    sget-object v1, Lcn/mucang/android/jiakaoyi/framework/utils/CheckSignal;->RPM:Lcn/mucang/android/jiakaoyi/framework/utils/CheckSignal;

    const/4 v2, 0x4

    aput-object v1, v0, v2

    sget-object v1, Lcn/mucang/android/jiakaoyi/framework/utils/CheckSignal;->THROTTLE:Lcn/mucang/android/jiakaoyi/framework/utils/CheckSignal;

    const/4 v2, 0x5

    aput-object v1, v0, v2

    sget-object v1, Lcn/mucang/android/jiakaoyi/framework/utils/CheckSignal;->GYRO:Lcn/mucang/android/jiakaoyi/framework/utils/CheckSignal;

    const/4 v2, 0x6

    aput-object v1, v0, v2

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 5

    .line 1
    new-instance v0, Lcn/mucang/android/jiakaoyi/framework/utils/CheckSignal;

    const-string v1, "GPS"

    const/4 v2, 0x0

    const-string v3, "\u8bf7\u68c0\u67e5OBD\u76d2\u5b50\u7eff\u706f\u72b6\u6001\uff0c\u5982\u95ea\u4eae\uff0c\u5219GPS\u4fe1\u53f7\u4e0d\u597d\uff0c\u8bf7\u5c06\u8f66\u8f86\u5f00\u81f3\u7a7a\u65f7\u5730\u6bb5\uff0c\u5982\u672a\u4eae\uff0c\u8bf7\u68c0\u67e5GPS\u5929\u7ebf\u662f\u5426\u677e\u52a8"

    invoke-direct {v0, v1, v2, v1, v3}, Lcn/mucang/android/jiakaoyi/framework/utils/CheckSignal;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcn/mucang/android/jiakaoyi/framework/utils/CheckSignal;->GPS:Lcn/mucang/android/jiakaoyi/framework/utils/CheckSignal;

    .line 2
    new-instance v0, Lcn/mucang/android/jiakaoyi/framework/utils/CheckSignal;

    const-string v1, "KEY"

    const/4 v2, 0x1

    const-string v3, "\u94a5\u5319"

    const-string v4, "\u8bf7\u786e\u8ba4\u8f66\u578b\u662f\u5426\u9009\u62e9\u6b63\u786e\uff0c\u5982\u9700\u6539\u8f66\u578b\uff0c\u8bf7\u70b9\u51fb\"\u8def\u8003\u4eea\u8bbe\u7f6e-\u8f66\u8f86\u4fe1\u53f7\u68c0\u6d4b\""

    invoke-direct {v0, v1, v2, v3, v4}, Lcn/mucang/android/jiakaoyi/framework/utils/CheckSignal;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcn/mucang/android/jiakaoyi/framework/utils/CheckSignal;->KEY:Lcn/mucang/android/jiakaoyi/framework/utils/CheckSignal;

    .line 3
    new-instance v0, Lcn/mucang/android/jiakaoyi/framework/utils/CheckSignal;

    const-string v1, "GEAR"

    const/4 v2, 0x2

    const-string v3, "\u53d8\u901f\u7bb1"

    invoke-direct {v0, v1, v2, v3, v4}, Lcn/mucang/android/jiakaoyi/framework/utils/CheckSignal;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcn/mucang/android/jiakaoyi/framework/utils/CheckSignal;->GEAR:Lcn/mucang/android/jiakaoyi/framework/utils/CheckSignal;

    .line 4
    new-instance v0, Lcn/mucang/android/jiakaoyi/framework/utils/CheckSignal;

    const-string v1, "SPEED"

    const/4 v2, 0x3

    const-string v3, "OBD\u8f66\u901f"

    invoke-direct {v0, v1, v2, v3, v4}, Lcn/mucang/android/jiakaoyi/framework/utils/CheckSignal;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcn/mucang/android/jiakaoyi/framework/utils/CheckSignal;->SPEED:Lcn/mucang/android/jiakaoyi/framework/utils/CheckSignal;

    .line 5
    new-instance v0, Lcn/mucang/android/jiakaoyi/framework/utils/CheckSignal;

    const-string v1, "RPM"

    const/4 v2, 0x4

    const-string v3, "OBD\u8f6c\u901f"

    invoke-direct {v0, v1, v2, v3, v4}, Lcn/mucang/android/jiakaoyi/framework/utils/CheckSignal;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcn/mucang/android/jiakaoyi/framework/utils/CheckSignal;->RPM:Lcn/mucang/android/jiakaoyi/framework/utils/CheckSignal;

    .line 6
    new-instance v0, Lcn/mucang/android/jiakaoyi/framework/utils/CheckSignal;

    const-string v1, "THROTTLE"

    const/4 v2, 0x5

    const-string v3, "\u6cb9\u95e8"

    invoke-direct {v0, v1, v2, v3, v4}, Lcn/mucang/android/jiakaoyi/framework/utils/CheckSignal;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcn/mucang/android/jiakaoyi/framework/utils/CheckSignal;->THROTTLE:Lcn/mucang/android/jiakaoyi/framework/utils/CheckSignal;

    .line 7
    new-instance v0, Lcn/mucang/android/jiakaoyi/framework/utils/CheckSignal;

    const-string v1, "GYRO"

    const/4 v2, 0x6

    const-string v3, "\u9640\u87ba\u4eea"

    const-string v4, "\u8bf7\u68c0\u67e5\u9640\u87ba\u4eea\u7ebf\u662f\u5426\u677e\u52a8"

    invoke-direct {v0, v1, v2, v3, v4}, Lcn/mucang/android/jiakaoyi/framework/utils/CheckSignal;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcn/mucang/android/jiakaoyi/framework/utils/CheckSignal;->GYRO:Lcn/mucang/android/jiakaoyi/framework/utils/CheckSignal;

    invoke-static {}, Lcn/mucang/android/jiakaoyi/framework/utils/CheckSignal;->$values()[Lcn/mucang/android/jiakaoyi/framework/utils/CheckSignal;

    move-result-object v0

    sput-object v0, Lcn/mucang/android/jiakaoyi/framework/utils/CheckSignal;->$VALUES:[Lcn/mucang/android/jiakaoyi/framework/utils/CheckSignal;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput-object p4, p0, Lcn/mucang/android/jiakaoyi/framework/utils/CheckSignal;->tip:Ljava/lang/String;

    .line 2
    iput-object p3, p0, Lcn/mucang/android/jiakaoyi/framework/utils/CheckSignal;->signalName:Ljava/lang/String;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcn/mucang/android/jiakaoyi/framework/utils/CheckSignal;
    .locals 1

    const-class v0, Lcn/mucang/android/jiakaoyi/framework/utils/CheckSignal;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcn/mucang/android/jiakaoyi/framework/utils/CheckSignal;

    return-object p0
.end method

.method public static values()[Lcn/mucang/android/jiakaoyi/framework/utils/CheckSignal;
    .locals 1

    sget-object v0, Lcn/mucang/android/jiakaoyi/framework/utils/CheckSignal;->$VALUES:[Lcn/mucang/android/jiakaoyi/framework/utils/CheckSignal;

    invoke-virtual {v0}, [Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcn/mucang/android/jiakaoyi/framework/utils/CheckSignal;

    return-object v0
.end method


# virtual methods
.method public final getHasPlayErrTip()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcn/mucang/android/jiakaoyi/framework/utils/CheckSignal;->hasPlayErrTip:Z

    return v0
.end method

.method public final getSignalName()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/framework/utils/CheckSignal;->signalName:Ljava/lang/String;

    return-object v0
.end method

.method public final getState()I
    .locals 1

    .line 1
    iget v0, p0, Lcn/mucang/android/jiakaoyi/framework/utils/CheckSignal;->state:I

    return v0
.end method

.method public final getTip()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/framework/utils/CheckSignal;->tip:Ljava/lang/String;

    return-object v0
.end method

.method public final setHasPlayErrTip(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcn/mucang/android/jiakaoyi/framework/utils/CheckSignal;->hasPlayErrTip:Z

    return-void
.end method

.method public final setState(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcn/mucang/android/jiakaoyi/framework/utils/CheckSignal;->state:I

    return-void
.end method
