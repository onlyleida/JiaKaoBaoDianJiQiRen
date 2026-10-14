.class public final enum Lcn/mucang/android/jiakaoyi/signal/center/model/CarFlameoutSource;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcn/mucang/android/jiakaoyi/signal/center/model/CarFlameoutSource;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcn/mucang/android/jiakaoyi/signal/center/model/CarFlameoutSource;

.field public static final enum FLAMEOUT_BY_CONTROL_CENTER:Lcn/mucang/android/jiakaoyi/signal/center/model/CarFlameoutSource;

.field public static final enum FLAMEOUT_BY_LOWER_COMPUTER:Lcn/mucang/android/jiakaoyi/signal/center/model/CarFlameoutSource;

.field public static final enum FLAMEOUT_BY_REMOTER_COMPUTER:Lcn/mucang/android/jiakaoyi/signal/center/model/CarFlameoutSource;

.field public static final enum FLAMEOUT_BY_UPPER_COMPUTER:Lcn/mucang/android/jiakaoyi/signal/center/model/CarFlameoutSource;

.field public static final enum FLAMEOUT_SOURCE_NONE:Lcn/mucang/android/jiakaoyi/signal/center/model/CarFlameoutSource;


# instance fields
.field public final id:I

.field public final src:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 12

    .line 1
    new-instance v0, Lcn/mucang/android/jiakaoyi/signal/center/model/CarFlameoutSource;

    const-string v1, "FLAMEOUT_SOURCE_NONE"

    const/4 v2, 0x0

    const/16 v3, 0xff

    const-string v4, "\u65e0\u6548\u503c"

    invoke-direct {v0, v1, v2, v3, v4}, Lcn/mucang/android/jiakaoyi/signal/center/model/CarFlameoutSource;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lcn/mucang/android/jiakaoyi/signal/center/model/CarFlameoutSource;->FLAMEOUT_SOURCE_NONE:Lcn/mucang/android/jiakaoyi/signal/center/model/CarFlameoutSource;

    .line 2
    new-instance v1, Lcn/mucang/android/jiakaoyi/signal/center/model/CarFlameoutSource;

    const-string v3, "FLAMEOUT_BY_LOWER_COMPUTER"

    const/4 v4, 0x1

    const-string v5, "\u4e0b\u4f4d\u673a\u7184\u706b"

    invoke-direct {v1, v3, v4, v4, v5}, Lcn/mucang/android/jiakaoyi/signal/center/model/CarFlameoutSource;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v1, Lcn/mucang/android/jiakaoyi/signal/center/model/CarFlameoutSource;->FLAMEOUT_BY_LOWER_COMPUTER:Lcn/mucang/android/jiakaoyi/signal/center/model/CarFlameoutSource;

    .line 3
    new-instance v3, Lcn/mucang/android/jiakaoyi/signal/center/model/CarFlameoutSource;

    const-string v5, "FLAMEOUT_BY_UPPER_COMPUTER"

    const/4 v6, 0x2

    const-string v7, "\u4e0a\u4f4d\u673a\u7184\u706b"

    invoke-direct {v3, v5, v6, v6, v7}, Lcn/mucang/android/jiakaoyi/signal/center/model/CarFlameoutSource;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v3, Lcn/mucang/android/jiakaoyi/signal/center/model/CarFlameoutSource;->FLAMEOUT_BY_UPPER_COMPUTER:Lcn/mucang/android/jiakaoyi/signal/center/model/CarFlameoutSource;

    .line 4
    new-instance v5, Lcn/mucang/android/jiakaoyi/signal/center/model/CarFlameoutSource;

    const-string v7, "FLAMEOUT_BY_REMOTER_COMPUTER"

    const/4 v8, 0x3

    const-string v9, "\u8fdc\u7a0b\u7184\u706b"

    invoke-direct {v5, v7, v8, v8, v9}, Lcn/mucang/android/jiakaoyi/signal/center/model/CarFlameoutSource;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v5, Lcn/mucang/android/jiakaoyi/signal/center/model/CarFlameoutSource;->FLAMEOUT_BY_REMOTER_COMPUTER:Lcn/mucang/android/jiakaoyi/signal/center/model/CarFlameoutSource;

    .line 5
    new-instance v7, Lcn/mucang/android/jiakaoyi/signal/center/model/CarFlameoutSource;

    const-string v9, "FLAMEOUT_BY_CONTROL_CENTER"

    const/4 v10, 0x4

    const-string v11, "\u63a7\u5236\u4e2d\u5fc3\u7184\u706b"

    invoke-direct {v7, v9, v10, v10, v11}, Lcn/mucang/android/jiakaoyi/signal/center/model/CarFlameoutSource;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v7, Lcn/mucang/android/jiakaoyi/signal/center/model/CarFlameoutSource;->FLAMEOUT_BY_CONTROL_CENTER:Lcn/mucang/android/jiakaoyi/signal/center/model/CarFlameoutSource;

    const/4 v9, 0x5

    new-array v9, v9, [Lcn/mucang/android/jiakaoyi/signal/center/model/CarFlameoutSource;

    aput-object v0, v9, v2

    aput-object v1, v9, v4

    aput-object v3, v9, v6

    aput-object v5, v9, v8

    aput-object v7, v9, v10

    .line 6
    sput-object v9, Lcn/mucang/android/jiakaoyi/signal/center/model/CarFlameoutSource;->$VALUES:[Lcn/mucang/android/jiakaoyi/signal/center/model/CarFlameoutSource;

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
    iput p3, p0, Lcn/mucang/android/jiakaoyi/signal/center/model/CarFlameoutSource;->id:I

    .line 3
    iput-object p4, p0, Lcn/mucang/android/jiakaoyi/signal/center/model/CarFlameoutSource;->src:Ljava/lang/String;

    return-void
.end method

.method public static parse(I)Lcn/mucang/android/jiakaoyi/signal/center/model/CarFlameoutSource;
    .locals 5

    .line 1
    invoke-static {}, Lcn/mucang/android/jiakaoyi/signal/center/model/CarFlameoutSource;->values()[Lcn/mucang/android/jiakaoyi/signal/center/model/CarFlameoutSource;

    move-result-object v0

    .line 2
    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, v0, v2

    .line 3
    iget v4, v3, Lcn/mucang/android/jiakaoyi/signal/center/model/CarFlameoutSource;->id:I

    if-ne v4, p0, :cond_0

    return-object v3

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 4
    :cond_1
    sget-object p0, Lcn/mucang/android/jiakaoyi/signal/center/model/CarFlameoutSource;->FLAMEOUT_SOURCE_NONE:Lcn/mucang/android/jiakaoyi/signal/center/model/CarFlameoutSource;

    return-object p0
.end method

.method public static valueOf(Ljava/lang/String;)Lcn/mucang/android/jiakaoyi/signal/center/model/CarFlameoutSource;
    .locals 1

    .line 1
    const-class v0, Lcn/mucang/android/jiakaoyi/signal/center/model/CarFlameoutSource;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcn/mucang/android/jiakaoyi/signal/center/model/CarFlameoutSource;

    return-object p0
.end method

.method public static values()[Lcn/mucang/android/jiakaoyi/signal/center/model/CarFlameoutSource;
    .locals 1

    .line 1
    sget-object v0, Lcn/mucang/android/jiakaoyi/signal/center/model/CarFlameoutSource;->$VALUES:[Lcn/mucang/android/jiakaoyi/signal/center/model/CarFlameoutSource;

    invoke-virtual {v0}, [Lcn/mucang/android/jiakaoyi/signal/center/model/CarFlameoutSource;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcn/mucang/android/jiakaoyi/signal/center/model/CarFlameoutSource;

    return-object v0
.end method
