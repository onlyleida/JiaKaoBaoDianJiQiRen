.class public final enum Lcn/mucang/android/jiakaoyi/signal/handle/gps/GnssStatusObserver$GnssStatus;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/mucang/android/jiakaoyi/signal/handle/gps/GnssStatusObserver;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "GnssStatus"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcn/mucang/android/jiakaoyi/signal/handle/gps/GnssStatusObserver$GnssStatus;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcn/mucang/android/jiakaoyi/signal/handle/gps/GnssStatusObserver$GnssStatus;

.field public static final enum HIGHEST:Lcn/mucang/android/jiakaoyi/signal/handle/gps/GnssStatusObserver$GnssStatus;

.field public static final enum LOWEST:Lcn/mucang/android/jiakaoyi/signal/handle/gps/GnssStatusObserver$GnssStatus;

.field public static final enum MIDDLE:Lcn/mucang/android/jiakaoyi/signal/handle/gps/GnssStatusObserver$GnssStatus;

.field public static final enum NONE:Lcn/mucang/android/jiakaoyi/signal/handle/gps/GnssStatusObserver$GnssStatus;


# direct methods
.method static constructor <clinit>()V
    .locals 9

    .line 1
    new-instance v0, Lcn/mucang/android/jiakaoyi/signal/handle/gps/GnssStatusObserver$GnssStatus;

    const-string v1, "HIGHEST"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcn/mucang/android/jiakaoyi/signal/handle/gps/GnssStatusObserver$GnssStatus;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcn/mucang/android/jiakaoyi/signal/handle/gps/GnssStatusObserver$GnssStatus;->HIGHEST:Lcn/mucang/android/jiakaoyi/signal/handle/gps/GnssStatusObserver$GnssStatus;

    .line 2
    new-instance v1, Lcn/mucang/android/jiakaoyi/signal/handle/gps/GnssStatusObserver$GnssStatus;

    const-string v3, "MIDDLE"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lcn/mucang/android/jiakaoyi/signal/handle/gps/GnssStatusObserver$GnssStatus;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcn/mucang/android/jiakaoyi/signal/handle/gps/GnssStatusObserver$GnssStatus;->MIDDLE:Lcn/mucang/android/jiakaoyi/signal/handle/gps/GnssStatusObserver$GnssStatus;

    .line 3
    new-instance v3, Lcn/mucang/android/jiakaoyi/signal/handle/gps/GnssStatusObserver$GnssStatus;

    const-string v5, "LOWEST"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Lcn/mucang/android/jiakaoyi/signal/handle/gps/GnssStatusObserver$GnssStatus;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lcn/mucang/android/jiakaoyi/signal/handle/gps/GnssStatusObserver$GnssStatus;->LOWEST:Lcn/mucang/android/jiakaoyi/signal/handle/gps/GnssStatusObserver$GnssStatus;

    .line 4
    new-instance v5, Lcn/mucang/android/jiakaoyi/signal/handle/gps/GnssStatusObserver$GnssStatus;

    const-string v7, "NONE"

    const/4 v8, 0x3

    invoke-direct {v5, v7, v8}, Lcn/mucang/android/jiakaoyi/signal/handle/gps/GnssStatusObserver$GnssStatus;-><init>(Ljava/lang/String;I)V

    sput-object v5, Lcn/mucang/android/jiakaoyi/signal/handle/gps/GnssStatusObserver$GnssStatus;->NONE:Lcn/mucang/android/jiakaoyi/signal/handle/gps/GnssStatusObserver$GnssStatus;

    const/4 v7, 0x4

    new-array v7, v7, [Lcn/mucang/android/jiakaoyi/signal/handle/gps/GnssStatusObserver$GnssStatus;

    aput-object v0, v7, v2

    aput-object v1, v7, v4

    aput-object v3, v7, v6

    aput-object v5, v7, v8

    .line 5
    sput-object v7, Lcn/mucang/android/jiakaoyi/signal/handle/gps/GnssStatusObserver$GnssStatus;->$VALUES:[Lcn/mucang/android/jiakaoyi/signal/handle/gps/GnssStatusObserver$GnssStatus;

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

.method public static valueOf(Ljava/lang/String;)Lcn/mucang/android/jiakaoyi/signal/handle/gps/GnssStatusObserver$GnssStatus;
    .locals 1

    .line 1
    const-class v0, Lcn/mucang/android/jiakaoyi/signal/handle/gps/GnssStatusObserver$GnssStatus;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcn/mucang/android/jiakaoyi/signal/handle/gps/GnssStatusObserver$GnssStatus;

    return-object p0
.end method

.method public static values()[Lcn/mucang/android/jiakaoyi/signal/handle/gps/GnssStatusObserver$GnssStatus;
    .locals 1

    .line 1
    sget-object v0, Lcn/mucang/android/jiakaoyi/signal/handle/gps/GnssStatusObserver$GnssStatus;->$VALUES:[Lcn/mucang/android/jiakaoyi/signal/handle/gps/GnssStatusObserver$GnssStatus;

    invoke-virtual {v0}, [Lcn/mucang/android/jiakaoyi/signal/handle/gps/GnssStatusObserver$GnssStatus;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcn/mucang/android/jiakaoyi/signal/handle/gps/GnssStatusObserver$GnssStatus;

    return-object v0
.end method
