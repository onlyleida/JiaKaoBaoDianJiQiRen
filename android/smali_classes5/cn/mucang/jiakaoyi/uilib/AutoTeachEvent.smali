.class public final enum Lcn/mucang/jiakaoyi/uilib/AutoTeachEvent;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcn/mucang/jiakaoyi/uilib/AutoTeachEvent;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0012\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u000f\u0008\u0086\u0001\u0018\u00002\u0008\u0012\u0004\u0012\u00020\u00000\u0001B\u000f\u0008\u0002\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0002\u0010\u0004R\u0011\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0005\u0010\u0006R\u001c\u0010\u0007\u001a\u0004\u0018\u00010\u0003X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0008\u0010\u0006\"\u0004\u0008\t\u0010\nj\u0002\u0008\u000bj\u0002\u0008\u000cj\u0002\u0008\rj\u0002\u0008\u000ej\u0002\u0008\u000fj\u0002\u0008\u0010j\u0002\u0008\u0011\u00a8\u0006\u0012"
    }
    d2 = {
        "Lcn/mucang/jiakaoyi/uilib/AutoTeachEvent;",
        "",
        "desc",
        "",
        "(Ljava/lang/String;ILjava/lang/String;)V",
        "getDesc",
        "()Ljava/lang/String;",
        "extraTitle",
        "getExtraTitle",
        "setExtraTitle",
        "(Ljava/lang/String;)V",
        "CarBrake",
        "P0Error",
        "NetError",
        "GpsError",
        "ServerError",
        "TraceTeach",
        "OpenAutoTeach",
        "uilib_release"
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
.field private static final synthetic $VALUES:[Lcn/mucang/jiakaoyi/uilib/AutoTeachEvent;

.field public static final enum CarBrake:Lcn/mucang/jiakaoyi/uilib/AutoTeachEvent;

.field public static final enum GpsError:Lcn/mucang/jiakaoyi/uilib/AutoTeachEvent;

.field public static final enum NetError:Lcn/mucang/jiakaoyi/uilib/AutoTeachEvent;

.field public static final enum OpenAutoTeach:Lcn/mucang/jiakaoyi/uilib/AutoTeachEvent;

.field public static final enum P0Error:Lcn/mucang/jiakaoyi/uilib/AutoTeachEvent;

.field public static final enum ServerError:Lcn/mucang/jiakaoyi/uilib/AutoTeachEvent;

.field public static final enum TraceTeach:Lcn/mucang/jiakaoyi/uilib/AutoTeachEvent;


# instance fields
.field private final desc:Ljava/lang/String;

.field private extraTitle:Ljava/lang/String;


# direct methods
.method private static final synthetic $values()[Lcn/mucang/jiakaoyi/uilib/AutoTeachEvent;
    .locals 3

    const/4 v0, 0x7

    new-array v0, v0, [Lcn/mucang/jiakaoyi/uilib/AutoTeachEvent;

    sget-object v1, Lcn/mucang/jiakaoyi/uilib/AutoTeachEvent;->CarBrake:Lcn/mucang/jiakaoyi/uilib/AutoTeachEvent;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    sget-object v1, Lcn/mucang/jiakaoyi/uilib/AutoTeachEvent;->P0Error:Lcn/mucang/jiakaoyi/uilib/AutoTeachEvent;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    sget-object v1, Lcn/mucang/jiakaoyi/uilib/AutoTeachEvent;->NetError:Lcn/mucang/jiakaoyi/uilib/AutoTeachEvent;

    const/4 v2, 0x2

    aput-object v1, v0, v2

    sget-object v1, Lcn/mucang/jiakaoyi/uilib/AutoTeachEvent;->GpsError:Lcn/mucang/jiakaoyi/uilib/AutoTeachEvent;

    const/4 v2, 0x3

    aput-object v1, v0, v2

    sget-object v1, Lcn/mucang/jiakaoyi/uilib/AutoTeachEvent;->ServerError:Lcn/mucang/jiakaoyi/uilib/AutoTeachEvent;

    const/4 v2, 0x4

    aput-object v1, v0, v2

    sget-object v1, Lcn/mucang/jiakaoyi/uilib/AutoTeachEvent;->TraceTeach:Lcn/mucang/jiakaoyi/uilib/AutoTeachEvent;

    const/4 v2, 0x5

    aput-object v1, v0, v2

    sget-object v1, Lcn/mucang/jiakaoyi/uilib/AutoTeachEvent;->OpenAutoTeach:Lcn/mucang/jiakaoyi/uilib/AutoTeachEvent;

    const/4 v2, 0x6

    aput-object v1, v0, v2

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 4

    .line 1
    new-instance v0, Lcn/mucang/jiakaoyi/uilib/AutoTeachEvent;

    const-string v1, "CarBrake"

    const/4 v2, 0x0

    const-string v3, "\u5239\u8f66"

    invoke-direct {v0, v1, v2, v3}, Lcn/mucang/jiakaoyi/uilib/AutoTeachEvent;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcn/mucang/jiakaoyi/uilib/AutoTeachEvent;->CarBrake:Lcn/mucang/jiakaoyi/uilib/AutoTeachEvent;

    .line 2
    new-instance v0, Lcn/mucang/jiakaoyi/uilib/AutoTeachEvent;

    const-string v1, "P0Error"

    const/4 v2, 0x1

    const-string v3, "P0\u6545\u969c"

    invoke-direct {v0, v1, v2, v3}, Lcn/mucang/jiakaoyi/uilib/AutoTeachEvent;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcn/mucang/jiakaoyi/uilib/AutoTeachEvent;->P0Error:Lcn/mucang/jiakaoyi/uilib/AutoTeachEvent;

    .line 3
    new-instance v0, Lcn/mucang/jiakaoyi/uilib/AutoTeachEvent;

    const-string v1, "NetError"

    const/4 v2, 0x2

    const-string v3, "\u7f51\u7edc\u5f02\u5e38"

    invoke-direct {v0, v1, v2, v3}, Lcn/mucang/jiakaoyi/uilib/AutoTeachEvent;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcn/mucang/jiakaoyi/uilib/AutoTeachEvent;->NetError:Lcn/mucang/jiakaoyi/uilib/AutoTeachEvent;

    .line 4
    new-instance v0, Lcn/mucang/jiakaoyi/uilib/AutoTeachEvent;

    const-string v1, "GpsError"

    const/4 v2, 0x3

    const-string v3, "GPS\u65e0\u4fe1\u53f7"

    invoke-direct {v0, v1, v2, v3}, Lcn/mucang/jiakaoyi/uilib/AutoTeachEvent;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcn/mucang/jiakaoyi/uilib/AutoTeachEvent;->GpsError:Lcn/mucang/jiakaoyi/uilib/AutoTeachEvent;

    .line 5
    new-instance v0, Lcn/mucang/jiakaoyi/uilib/AutoTeachEvent;

    const-string v1, "ServerError"

    const/4 v2, 0x4

    const-string v3, "\u670d\u52a1\u5668\u8fde\u63a5\u5f02\u5e38"

    invoke-direct {v0, v1, v2, v3}, Lcn/mucang/jiakaoyi/uilib/AutoTeachEvent;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcn/mucang/jiakaoyi/uilib/AutoTeachEvent;->ServerError:Lcn/mucang/jiakaoyi/uilib/AutoTeachEvent;

    .line 6
    new-instance v0, Lcn/mucang/jiakaoyi/uilib/AutoTeachEvent;

    const-string v1, "TraceTeach"

    const/4 v2, 0x5

    const-string v3, "\u8f68\u8ff9\u6559\u5b66"

    invoke-direct {v0, v1, v2, v3}, Lcn/mucang/jiakaoyi/uilib/AutoTeachEvent;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcn/mucang/jiakaoyi/uilib/AutoTeachEvent;->TraceTeach:Lcn/mucang/jiakaoyi/uilib/AutoTeachEvent;

    .line 7
    new-instance v0, Lcn/mucang/jiakaoyi/uilib/AutoTeachEvent;

    const-string v1, "OpenAutoTeach"

    const/4 v2, 0x6

    const-string v3, "\u5f00\u542f\u81ea\u52a8\u793a\u6559"

    invoke-direct {v0, v1, v2, v3}, Lcn/mucang/jiakaoyi/uilib/AutoTeachEvent;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcn/mucang/jiakaoyi/uilib/AutoTeachEvent;->OpenAutoTeach:Lcn/mucang/jiakaoyi/uilib/AutoTeachEvent;

    invoke-static {}, Lcn/mucang/jiakaoyi/uilib/AutoTeachEvent;->$values()[Lcn/mucang/jiakaoyi/uilib/AutoTeachEvent;

    move-result-object v0

    sput-object v0, Lcn/mucang/jiakaoyi/uilib/AutoTeachEvent;->$VALUES:[Lcn/mucang/jiakaoyi/uilib/AutoTeachEvent;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput-object p3, p0, Lcn/mucang/jiakaoyi/uilib/AutoTeachEvent;->desc:Ljava/lang/String;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcn/mucang/jiakaoyi/uilib/AutoTeachEvent;
    .locals 1

    const-class v0, Lcn/mucang/jiakaoyi/uilib/AutoTeachEvent;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcn/mucang/jiakaoyi/uilib/AutoTeachEvent;

    return-object p0
.end method

.method public static values()[Lcn/mucang/jiakaoyi/uilib/AutoTeachEvent;
    .locals 1

    sget-object v0, Lcn/mucang/jiakaoyi/uilib/AutoTeachEvent;->$VALUES:[Lcn/mucang/jiakaoyi/uilib/AutoTeachEvent;

    invoke-virtual {v0}, [Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcn/mucang/jiakaoyi/uilib/AutoTeachEvent;

    return-object v0
.end method


# virtual methods
.method public final getDesc()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcn/mucang/jiakaoyi/uilib/AutoTeachEvent;->desc:Ljava/lang/String;

    return-object v0
.end method

.method public final getExtraTitle()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcn/mucang/jiakaoyi/uilib/AutoTeachEvent;->extraTitle:Ljava/lang/String;

    return-object v0
.end method

.method public final setExtraTitle(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcn/mucang/jiakaoyi/uilib/AutoTeachEvent;->extraTitle:Ljava/lang/String;

    return-void
.end method
