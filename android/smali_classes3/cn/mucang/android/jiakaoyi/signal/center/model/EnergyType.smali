.class public final enum Lcn/mucang/android/jiakaoyi/signal/center/model/EnergyType;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcn/mucang/android/jiakaoyi/signal/center/model/EnergyType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcn/mucang/android/jiakaoyi/signal/center/model/EnergyType;

.field public static final enum electric:Lcn/mucang/android/jiakaoyi/signal/center/model/EnergyType;

.field public static final enum oil:Lcn/mucang/android/jiakaoyi/signal/center/model/EnergyType;


# instance fields
.field public final type:I

.field public final typeName:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .line 1
    new-instance v0, Lcn/mucang/android/jiakaoyi/signal/center/model/EnergyType;

    const-string v1, "oil"

    const/4 v2, 0x0

    const-string v3, "\u6cb9\u8f66"

    const/4 v4, 0x1

    invoke-direct {v0, v1, v2, v3, v4}, Lcn/mucang/android/jiakaoyi/signal/center/model/EnergyType;-><init>(Ljava/lang/String;ILjava/lang/String;I)V

    sput-object v0, Lcn/mucang/android/jiakaoyi/signal/center/model/EnergyType;->oil:Lcn/mucang/android/jiakaoyi/signal/center/model/EnergyType;

    .line 2
    new-instance v1, Lcn/mucang/android/jiakaoyi/signal/center/model/EnergyType;

    const-string v3, "electric"

    const-string v5, "\u7535\u8f66"

    const/4 v6, 0x2

    invoke-direct {v1, v3, v4, v5, v6}, Lcn/mucang/android/jiakaoyi/signal/center/model/EnergyType;-><init>(Ljava/lang/String;ILjava/lang/String;I)V

    sput-object v1, Lcn/mucang/android/jiakaoyi/signal/center/model/EnergyType;->electric:Lcn/mucang/android/jiakaoyi/signal/center/model/EnergyType;

    new-array v3, v6, [Lcn/mucang/android/jiakaoyi/signal/center/model/EnergyType;

    aput-object v0, v3, v2

    aput-object v1, v3, v4

    .line 3
    sput-object v3, Lcn/mucang/android/jiakaoyi/signal/center/model/EnergyType;->$VALUES:[Lcn/mucang/android/jiakaoyi/signal/center/model/EnergyType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 2
    iput-object p3, p0, Lcn/mucang/android/jiakaoyi/signal/center/model/EnergyType;->typeName:Ljava/lang/String;

    .line 3
    iput p4, p0, Lcn/mucang/android/jiakaoyi/signal/center/model/EnergyType;->type:I

    return-void
.end method

.method public static parse(I)Lcn/mucang/android/jiakaoyi/signal/center/model/EnergyType;
    .locals 2

    .line 1
    sget-object v0, Lcn/mucang/android/jiakaoyi/signal/center/model/EnergyType;->oil:Lcn/mucang/android/jiakaoyi/signal/center/model/EnergyType;

    iget v1, v0, Lcn/mucang/android/jiakaoyi/signal/center/model/EnergyType;->type:I

    if-ne p0, v1, :cond_0

    return-object v0

    .line 2
    :cond_0
    sget-object p0, Lcn/mucang/android/jiakaoyi/signal/center/model/EnergyType;->electric:Lcn/mucang/android/jiakaoyi/signal/center/model/EnergyType;

    return-object p0
.end method

.method public static valueOf(Ljava/lang/String;)Lcn/mucang/android/jiakaoyi/signal/center/model/EnergyType;
    .locals 1

    .line 1
    const-class v0, Lcn/mucang/android/jiakaoyi/signal/center/model/EnergyType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcn/mucang/android/jiakaoyi/signal/center/model/EnergyType;

    return-object p0
.end method

.method public static values()[Lcn/mucang/android/jiakaoyi/signal/center/model/EnergyType;
    .locals 1

    .line 1
    sget-object v0, Lcn/mucang/android/jiakaoyi/signal/center/model/EnergyType;->$VALUES:[Lcn/mucang/android/jiakaoyi/signal/center/model/EnergyType;

    invoke-virtual {v0}, [Lcn/mucang/android/jiakaoyi/signal/center/model/EnergyType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcn/mucang/android/jiakaoyi/signal/center/model/EnergyType;

    return-object v0
.end method


# virtual methods
.method public isElectric()Z
    .locals 2

    .line 1
    invoke-static {}, Lcn/mucang/android/jiakaoyi/signal/car/d;->c()Lcn/mucang/android/jiakaoyi/signal/center/model/EnergyType;

    move-result-object v0

    iget v0, v0, Lcn/mucang/android/jiakaoyi/signal/center/model/EnergyType;->type:I

    sget-object v1, Lcn/mucang/android/jiakaoyi/signal/center/model/EnergyType;->electric:Lcn/mucang/android/jiakaoyi/signal/center/model/EnergyType;

    iget v1, v1, Lcn/mucang/android/jiakaoyi/signal/center/model/EnergyType;->type:I

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isOil()Z
    .locals 2

    .line 1
    invoke-static {}, Lcn/mucang/android/jiakaoyi/signal/car/d;->c()Lcn/mucang/android/jiakaoyi/signal/center/model/EnergyType;

    move-result-object v0

    iget v0, v0, Lcn/mucang/android/jiakaoyi/signal/center/model/EnergyType;->type:I

    sget-object v1, Lcn/mucang/android/jiakaoyi/signal/center/model/EnergyType;->oil:Lcn/mucang/android/jiakaoyi/signal/center/model/EnergyType;

    iget v1, v1, Lcn/mucang/android/jiakaoyi/signal/center/model/EnergyType;->type:I

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method
