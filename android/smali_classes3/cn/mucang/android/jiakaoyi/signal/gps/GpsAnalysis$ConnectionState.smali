.class public final enum Lcn/mucang/android/jiakaoyi/signal/gps/GpsAnalysis$ConnectionState;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/mucang/android/jiakaoyi/signal/gps/GpsAnalysis;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "ConnectionState"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcn/mucang/android/jiakaoyi/signal/gps/GpsAnalysis$ConnectionState;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcn/mucang/android/jiakaoyi/signal/gps/GpsAnalysis$ConnectionState;

.field public static final enum Failure:Lcn/mucang/android/jiakaoyi/signal/gps/GpsAnalysis$ConnectionState;

.field public static final enum None:Lcn/mucang/android/jiakaoyi/signal/gps/GpsAnalysis$ConnectionState;

.field public static final enum Success:Lcn/mucang/android/jiakaoyi/signal/gps/GpsAnalysis$ConnectionState;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .line 1
    new-instance v0, Lcn/mucang/android/jiakaoyi/signal/gps/GpsAnalysis$ConnectionState;

    const-string v1, "None"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcn/mucang/android/jiakaoyi/signal/gps/GpsAnalysis$ConnectionState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcn/mucang/android/jiakaoyi/signal/gps/GpsAnalysis$ConnectionState;->None:Lcn/mucang/android/jiakaoyi/signal/gps/GpsAnalysis$ConnectionState;

    new-instance v1, Lcn/mucang/android/jiakaoyi/signal/gps/GpsAnalysis$ConnectionState;

    const-string v3, "Success"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lcn/mucang/android/jiakaoyi/signal/gps/GpsAnalysis$ConnectionState;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcn/mucang/android/jiakaoyi/signal/gps/GpsAnalysis$ConnectionState;->Success:Lcn/mucang/android/jiakaoyi/signal/gps/GpsAnalysis$ConnectionState;

    new-instance v3, Lcn/mucang/android/jiakaoyi/signal/gps/GpsAnalysis$ConnectionState;

    const-string v5, "Failure"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Lcn/mucang/android/jiakaoyi/signal/gps/GpsAnalysis$ConnectionState;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lcn/mucang/android/jiakaoyi/signal/gps/GpsAnalysis$ConnectionState;->Failure:Lcn/mucang/android/jiakaoyi/signal/gps/GpsAnalysis$ConnectionState;

    const/4 v5, 0x3

    new-array v5, v5, [Lcn/mucang/android/jiakaoyi/signal/gps/GpsAnalysis$ConnectionState;

    aput-object v0, v5, v2

    aput-object v1, v5, v4

    aput-object v3, v5, v6

    .line 2
    sput-object v5, Lcn/mucang/android/jiakaoyi/signal/gps/GpsAnalysis$ConnectionState;->$VALUES:[Lcn/mucang/android/jiakaoyi/signal/gps/GpsAnalysis$ConnectionState;

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

.method public static valueOf(Ljava/lang/String;)Lcn/mucang/android/jiakaoyi/signal/gps/GpsAnalysis$ConnectionState;
    .locals 1

    .line 1
    const-class v0, Lcn/mucang/android/jiakaoyi/signal/gps/GpsAnalysis$ConnectionState;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcn/mucang/android/jiakaoyi/signal/gps/GpsAnalysis$ConnectionState;

    return-object p0
.end method

.method public static values()[Lcn/mucang/android/jiakaoyi/signal/gps/GpsAnalysis$ConnectionState;
    .locals 1

    .line 1
    sget-object v0, Lcn/mucang/android/jiakaoyi/signal/gps/GpsAnalysis$ConnectionState;->$VALUES:[Lcn/mucang/android/jiakaoyi/signal/gps/GpsAnalysis$ConnectionState;

    invoke-virtual {v0}, [Lcn/mucang/android/jiakaoyi/signal/gps/GpsAnalysis$ConnectionState;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcn/mucang/android/jiakaoyi/signal/gps/GpsAnalysis$ConnectionState;

    return-object v0
.end method


# virtual methods
.method isSuccess()Z
    .locals 1

    .line 1
    sget-object v0, Lcn/mucang/android/jiakaoyi/signal/gps/GpsAnalysis$ConnectionState;->Success:Lcn/mucang/android/jiakaoyi/signal/gps/GpsAnalysis$ConnectionState;

    if-ne p0, v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method
