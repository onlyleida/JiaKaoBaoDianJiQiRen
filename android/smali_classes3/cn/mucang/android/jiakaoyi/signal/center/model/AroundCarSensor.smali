.class public final enum Lcn/mucang/android/jiakaoyi/signal/center/model/AroundCarSensor;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcn/mucang/android/jiakaoyi/signal/center/model/AroundCarSensor;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcn/mucang/android/jiakaoyi/signal/center/model/AroundCarSensor;

.field public static final enum LeftBack:Lcn/mucang/android/jiakaoyi/signal/center/model/AroundCarSensor;

.field public static final enum LeftFront:Lcn/mucang/android/jiakaoyi/signal/center/model/AroundCarSensor;

.field public static final enum RightBack:Lcn/mucang/android/jiakaoyi/signal/center/model/AroundCarSensor;

.field public static final enum RightFront:Lcn/mucang/android/jiakaoyi/signal/center/model/AroundCarSensor;


# instance fields
.field public final id:I


# direct methods
.method static constructor <clinit>()V
    .locals 10

    .line 1
    new-instance v0, Lcn/mucang/android/jiakaoyi/signal/center/model/AroundCarSensor;

    const-string v1, "LeftFront"

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-direct {v0, v1, v2, v3}, Lcn/mucang/android/jiakaoyi/signal/center/model/AroundCarSensor;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcn/mucang/android/jiakaoyi/signal/center/model/AroundCarSensor;->LeftFront:Lcn/mucang/android/jiakaoyi/signal/center/model/AroundCarSensor;

    .line 2
    new-instance v1, Lcn/mucang/android/jiakaoyi/signal/center/model/AroundCarSensor;

    const-string v4, "LeftBack"

    const/4 v5, 0x2

    invoke-direct {v1, v4, v3, v5}, Lcn/mucang/android/jiakaoyi/signal/center/model/AroundCarSensor;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcn/mucang/android/jiakaoyi/signal/center/model/AroundCarSensor;->LeftBack:Lcn/mucang/android/jiakaoyi/signal/center/model/AroundCarSensor;

    .line 3
    new-instance v4, Lcn/mucang/android/jiakaoyi/signal/center/model/AroundCarSensor;

    const-string v6, "RightBack"

    const/4 v7, 0x3

    invoke-direct {v4, v6, v5, v7}, Lcn/mucang/android/jiakaoyi/signal/center/model/AroundCarSensor;-><init>(Ljava/lang/String;II)V

    sput-object v4, Lcn/mucang/android/jiakaoyi/signal/center/model/AroundCarSensor;->RightBack:Lcn/mucang/android/jiakaoyi/signal/center/model/AroundCarSensor;

    .line 4
    new-instance v6, Lcn/mucang/android/jiakaoyi/signal/center/model/AroundCarSensor;

    const-string v8, "RightFront"

    const/4 v9, 0x4

    invoke-direct {v6, v8, v7, v9}, Lcn/mucang/android/jiakaoyi/signal/center/model/AroundCarSensor;-><init>(Ljava/lang/String;II)V

    sput-object v6, Lcn/mucang/android/jiakaoyi/signal/center/model/AroundCarSensor;->RightFront:Lcn/mucang/android/jiakaoyi/signal/center/model/AroundCarSensor;

    new-array v8, v9, [Lcn/mucang/android/jiakaoyi/signal/center/model/AroundCarSensor;

    aput-object v0, v8, v2

    aput-object v1, v8, v3

    aput-object v4, v8, v5

    aput-object v6, v8, v7

    .line 5
    sput-object v8, Lcn/mucang/android/jiakaoyi/signal/center/model/AroundCarSensor;->$VALUES:[Lcn/mucang/android/jiakaoyi/signal/center/model/AroundCarSensor;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 2
    iput p3, p0, Lcn/mucang/android/jiakaoyi/signal/center/model/AroundCarSensor;->id:I

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcn/mucang/android/jiakaoyi/signal/center/model/AroundCarSensor;
    .locals 1

    .line 1
    const-class v0, Lcn/mucang/android/jiakaoyi/signal/center/model/AroundCarSensor;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcn/mucang/android/jiakaoyi/signal/center/model/AroundCarSensor;

    return-object p0
.end method

.method public static values()[Lcn/mucang/android/jiakaoyi/signal/center/model/AroundCarSensor;
    .locals 1

    .line 1
    sget-object v0, Lcn/mucang/android/jiakaoyi/signal/center/model/AroundCarSensor;->$VALUES:[Lcn/mucang/android/jiakaoyi/signal/center/model/AroundCarSensor;

    invoke-virtual {v0}, [Lcn/mucang/android/jiakaoyi/signal/center/model/AroundCarSensor;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcn/mucang/android/jiakaoyi/signal/center/model/AroundCarSensor;

    return-object v0
.end method
