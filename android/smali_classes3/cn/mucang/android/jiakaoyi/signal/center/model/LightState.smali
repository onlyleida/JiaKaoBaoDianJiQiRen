.class public final enum Lcn/mucang/android/jiakaoyi/signal/center/model/LightState;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcn/mucang/android/jiakaoyi/signal/center/model/LightState;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcn/mucang/android/jiakaoyi/signal/center/model/LightState;

.field public static final enum Off:Lcn/mucang/android/jiakaoyi/signal/center/model/LightState;

.field public static final enum On:Lcn/mucang/android/jiakaoyi/signal/center/model/LightState;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .line 1
    new-instance v0, Lcn/mucang/android/jiakaoyi/signal/center/model/LightState;

    const-string v1, "On"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcn/mucang/android/jiakaoyi/signal/center/model/LightState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcn/mucang/android/jiakaoyi/signal/center/model/LightState;->On:Lcn/mucang/android/jiakaoyi/signal/center/model/LightState;

    new-instance v1, Lcn/mucang/android/jiakaoyi/signal/center/model/LightState;

    const-string v3, "Off"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lcn/mucang/android/jiakaoyi/signal/center/model/LightState;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcn/mucang/android/jiakaoyi/signal/center/model/LightState;->Off:Lcn/mucang/android/jiakaoyi/signal/center/model/LightState;

    const/4 v3, 0x2

    new-array v3, v3, [Lcn/mucang/android/jiakaoyi/signal/center/model/LightState;

    aput-object v0, v3, v2

    aput-object v1, v3, v4

    .line 2
    sput-object v3, Lcn/mucang/android/jiakaoyi/signal/center/model/LightState;->$VALUES:[Lcn/mucang/android/jiakaoyi/signal/center/model/LightState;

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

.method public static valueOf(Ljava/lang/String;)Lcn/mucang/android/jiakaoyi/signal/center/model/LightState;
    .locals 1

    .line 1
    const-class v0, Lcn/mucang/android/jiakaoyi/signal/center/model/LightState;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcn/mucang/android/jiakaoyi/signal/center/model/LightState;

    return-object p0
.end method

.method public static values()[Lcn/mucang/android/jiakaoyi/signal/center/model/LightState;
    .locals 1

    .line 1
    sget-object v0, Lcn/mucang/android/jiakaoyi/signal/center/model/LightState;->$VALUES:[Lcn/mucang/android/jiakaoyi/signal/center/model/LightState;

    invoke-virtual {v0}, [Lcn/mucang/android/jiakaoyi/signal/center/model/LightState;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcn/mucang/android/jiakaoyi/signal/center/model/LightState;

    return-object v0
.end method


# virtual methods
.method public isOff(Lcn/mucang/android/jiakaoyi/signal/center/model/LightState;)Z
    .locals 1

    .line 1
    sget-object v0, Lcn/mucang/android/jiakaoyi/signal/center/model/LightState;->Off:Lcn/mucang/android/jiakaoyi/signal/center/model/LightState;

    if-ne p1, v0, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public isOn(Lcn/mucang/android/jiakaoyi/signal/center/model/LightState;)Z
    .locals 1

    .line 1
    sget-object v0, Lcn/mucang/android/jiakaoyi/signal/center/model/LightState;->On:Lcn/mucang/android/jiakaoyi/signal/center/model/LightState;

    if-ne p1, v0, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method
