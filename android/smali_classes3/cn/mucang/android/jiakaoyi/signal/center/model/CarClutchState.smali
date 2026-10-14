.class public final enum Lcn/mucang/android/jiakaoyi/signal/center/model/CarClutchState;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcn/mucang/android/jiakaoyi/signal/center/model/CarClutchState;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcn/mucang/android/jiakaoyi/signal/center/model/CarClutchState;

.field public static final enum CLUTCH_DONE:Lcn/mucang/android/jiakaoyi/signal/center/model/CarClutchState;

.field public static final enum CLUTCH_NONE:Lcn/mucang/android/jiakaoyi/signal/center/model/CarClutchState;


# instance fields
.field public id:I

.field public state:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .line 1
    new-instance v0, Lcn/mucang/android/jiakaoyi/signal/center/model/CarClutchState;

    const-string v1, "CLUTCH_NONE"

    const/4 v2, 0x0

    const-string v3, "\u79bb\u5408\u65e0\u52a8\u4f5c"

    invoke-direct {v0, v1, v2, v2, v3}, Lcn/mucang/android/jiakaoyi/signal/center/model/CarClutchState;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lcn/mucang/android/jiakaoyi/signal/center/model/CarClutchState;->CLUTCH_NONE:Lcn/mucang/android/jiakaoyi/signal/center/model/CarClutchState;

    .line 2
    new-instance v1, Lcn/mucang/android/jiakaoyi/signal/center/model/CarClutchState;

    const-string v3, "CLUTCH_DONE"

    const/4 v4, 0x1

    const-string v5, "\u79bb\u5408\u8fbe\u5230\u4f4d\u7f6e"

    invoke-direct {v1, v3, v4, v4, v5}, Lcn/mucang/android/jiakaoyi/signal/center/model/CarClutchState;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v1, Lcn/mucang/android/jiakaoyi/signal/center/model/CarClutchState;->CLUTCH_DONE:Lcn/mucang/android/jiakaoyi/signal/center/model/CarClutchState;

    const/4 v3, 0x2

    new-array v3, v3, [Lcn/mucang/android/jiakaoyi/signal/center/model/CarClutchState;

    aput-object v0, v3, v2

    aput-object v1, v3, v4

    .line 3
    sput-object v3, Lcn/mucang/android/jiakaoyi/signal/center/model/CarClutchState;->$VALUES:[Lcn/mucang/android/jiakaoyi/signal/center/model/CarClutchState;

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
    iput p3, p0, Lcn/mucang/android/jiakaoyi/signal/center/model/CarClutchState;->id:I

    .line 3
    iput-object p4, p0, Lcn/mucang/android/jiakaoyi/signal/center/model/CarClutchState;->state:Ljava/lang/String;

    return-void
.end method

.method public static parse(I)Lcn/mucang/android/jiakaoyi/signal/center/model/CarClutchState;
    .locals 4

    .line 1
    invoke-static {}, Lcn/mucang/android/jiakaoyi/signal/center/model/CarClutchState;->values()[Lcn/mucang/android/jiakaoyi/signal/center/model/CarClutchState;

    move-result-object v0

    const/4 v1, 0x0

    .line 2
    :goto_0
    array-length v2, v0

    if-ge v1, v2, :cond_1

    .line 3
    aget-object v2, v0, v1

    .line 4
    iget v3, v2, Lcn/mucang/android/jiakaoyi/signal/center/model/CarClutchState;->id:I

    if-ne v3, p0, :cond_0

    return-object v2

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 5
    :cond_1
    sget-object p0, Lcn/mucang/android/jiakaoyi/signal/center/model/CarClutchState;->CLUTCH_NONE:Lcn/mucang/android/jiakaoyi/signal/center/model/CarClutchState;

    return-object p0
.end method

.method public static valueOf(Ljava/lang/String;)Lcn/mucang/android/jiakaoyi/signal/center/model/CarClutchState;
    .locals 1

    .line 1
    const-class v0, Lcn/mucang/android/jiakaoyi/signal/center/model/CarClutchState;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcn/mucang/android/jiakaoyi/signal/center/model/CarClutchState;

    return-object p0
.end method

.method public static values()[Lcn/mucang/android/jiakaoyi/signal/center/model/CarClutchState;
    .locals 1

    .line 1
    sget-object v0, Lcn/mucang/android/jiakaoyi/signal/center/model/CarClutchState;->$VALUES:[Lcn/mucang/android/jiakaoyi/signal/center/model/CarClutchState;

    invoke-virtual {v0}, [Lcn/mucang/android/jiakaoyi/signal/center/model/CarClutchState;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcn/mucang/android/jiakaoyi/signal/center/model/CarClutchState;

    return-object v0
.end method
