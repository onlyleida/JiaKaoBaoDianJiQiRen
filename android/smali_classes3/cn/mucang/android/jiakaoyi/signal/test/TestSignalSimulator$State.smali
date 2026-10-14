.class public final enum Lcn/mucang/android/jiakaoyi/signal/test/TestSignalSimulator$State;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcn/mucang/android/jiakaoyi/signal/test/TestSignalSimulator$State;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u000c\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0002\u0008\u0005\u0008\u0086\u0001\u0018\u00002\u0008\u0012\u0004\u0012\u00020\u00000\u0001B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002j\u0002\u0008\u0003j\u0002\u0008\u0004j\u0002\u0008\u0005\u00a8\u0006\u0006"
    }
    d2 = {
        "Lcn/mucang/android/jiakaoyi/signal/test/TestSignalSimulator$State;",
        "",
        "(Ljava/lang/String;I)V",
        "NoInit",
        "None",
        "Ing",
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
.field private static final synthetic $VALUES:[Lcn/mucang/android/jiakaoyi/signal/test/TestSignalSimulator$State;

.field public static final enum Ing:Lcn/mucang/android/jiakaoyi/signal/test/TestSignalSimulator$State;

.field public static final enum NoInit:Lcn/mucang/android/jiakaoyi/signal/test/TestSignalSimulator$State;

.field public static final enum None:Lcn/mucang/android/jiakaoyi/signal/test/TestSignalSimulator$State;


# direct methods
.method private static final synthetic $values()[Lcn/mucang/android/jiakaoyi/signal/test/TestSignalSimulator$State;
    .locals 3

    const/4 v0, 0x3

    new-array v0, v0, [Lcn/mucang/android/jiakaoyi/signal/test/TestSignalSimulator$State;

    sget-object v1, Lcn/mucang/android/jiakaoyi/signal/test/TestSignalSimulator$State;->NoInit:Lcn/mucang/android/jiakaoyi/signal/test/TestSignalSimulator$State;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    sget-object v1, Lcn/mucang/android/jiakaoyi/signal/test/TestSignalSimulator$State;->None:Lcn/mucang/android/jiakaoyi/signal/test/TestSignalSimulator$State;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    sget-object v1, Lcn/mucang/android/jiakaoyi/signal/test/TestSignalSimulator$State;->Ing:Lcn/mucang/android/jiakaoyi/signal/test/TestSignalSimulator$State;

    const/4 v2, 0x2

    aput-object v1, v0, v2

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 3

    .line 1
    new-instance v0, Lcn/mucang/android/jiakaoyi/signal/test/TestSignalSimulator$State;

    const-string v1, "NoInit"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcn/mucang/android/jiakaoyi/signal/test/TestSignalSimulator$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcn/mucang/android/jiakaoyi/signal/test/TestSignalSimulator$State;->NoInit:Lcn/mucang/android/jiakaoyi/signal/test/TestSignalSimulator$State;

    .line 2
    new-instance v0, Lcn/mucang/android/jiakaoyi/signal/test/TestSignalSimulator$State;

    const-string v1, "None"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lcn/mucang/android/jiakaoyi/signal/test/TestSignalSimulator$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcn/mucang/android/jiakaoyi/signal/test/TestSignalSimulator$State;->None:Lcn/mucang/android/jiakaoyi/signal/test/TestSignalSimulator$State;

    .line 3
    new-instance v0, Lcn/mucang/android/jiakaoyi/signal/test/TestSignalSimulator$State;

    const-string v1, "Ing"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Lcn/mucang/android/jiakaoyi/signal/test/TestSignalSimulator$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcn/mucang/android/jiakaoyi/signal/test/TestSignalSimulator$State;->Ing:Lcn/mucang/android/jiakaoyi/signal/test/TestSignalSimulator$State;

    invoke-static {}, Lcn/mucang/android/jiakaoyi/signal/test/TestSignalSimulator$State;->$values()[Lcn/mucang/android/jiakaoyi/signal/test/TestSignalSimulator$State;

    move-result-object v0

    sput-object v0, Lcn/mucang/android/jiakaoyi/signal/test/TestSignalSimulator$State;->$VALUES:[Lcn/mucang/android/jiakaoyi/signal/test/TestSignalSimulator$State;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcn/mucang/android/jiakaoyi/signal/test/TestSignalSimulator$State;
    .locals 1

    const-class v0, Lcn/mucang/android/jiakaoyi/signal/test/TestSignalSimulator$State;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcn/mucang/android/jiakaoyi/signal/test/TestSignalSimulator$State;

    return-object p0
.end method

.method public static values()[Lcn/mucang/android/jiakaoyi/signal/test/TestSignalSimulator$State;
    .locals 1

    sget-object v0, Lcn/mucang/android/jiakaoyi/signal/test/TestSignalSimulator$State;->$VALUES:[Lcn/mucang/android/jiakaoyi/signal/test/TestSignalSimulator$State;

    invoke-virtual {v0}, [Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcn/mucang/android/jiakaoyi/signal/test/TestSignalSimulator$State;

    return-object v0
.end method
