.class public final enum Lcom/rscja/deviceapi/BDNavigation$BDProviderEnum;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/rscja/deviceapi/BDNavigation$BDProviderEnum;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum BD:Lcom/rscja/deviceapi/BDNavigation$BDProviderEnum;

.field private static final synthetic ENUM$VALUES:[Lcom/rscja/deviceapi/BDNavigation$BDProviderEnum;

.field public static final enum GPS:Lcom/rscja/deviceapi/BDNavigation$BDProviderEnum;

.field public static final enum GPSandBD:Lcom/rscja/deviceapi/BDNavigation$BDProviderEnum;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .line 1
    new-instance v0, Lcom/rscja/deviceapi/BDNavigation$BDProviderEnum;

    const-string v1, "GPS"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/rscja/deviceapi/BDNavigation$BDProviderEnum;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/rscja/deviceapi/BDNavigation$BDProviderEnum;->GPS:Lcom/rscja/deviceapi/BDNavigation$BDProviderEnum;

    new-instance v1, Lcom/rscja/deviceapi/BDNavigation$BDProviderEnum;

    const-string v3, "BD"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lcom/rscja/deviceapi/BDNavigation$BDProviderEnum;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/rscja/deviceapi/BDNavigation$BDProviderEnum;->BD:Lcom/rscja/deviceapi/BDNavigation$BDProviderEnum;

    new-instance v3, Lcom/rscja/deviceapi/BDNavigation$BDProviderEnum;

    const-string v5, "GPSandBD"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Lcom/rscja/deviceapi/BDNavigation$BDProviderEnum;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lcom/rscja/deviceapi/BDNavigation$BDProviderEnum;->GPSandBD:Lcom/rscja/deviceapi/BDNavigation$BDProviderEnum;

    const/4 v5, 0x3

    new-array v5, v5, [Lcom/rscja/deviceapi/BDNavigation$BDProviderEnum;

    aput-object v0, v5, v2

    aput-object v1, v5, v4

    aput-object v3, v5, v6

    .line 2
    sput-object v5, Lcom/rscja/deviceapi/BDNavigation$BDProviderEnum;->ENUM$VALUES:[Lcom/rscja/deviceapi/BDNavigation$BDProviderEnum;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/rscja/deviceapi/BDNavigation$BDProviderEnum;
    .locals 1

    .line 1
    const-class v0, Lcom/rscja/deviceapi/BDNavigation$BDProviderEnum;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/rscja/deviceapi/BDNavigation$BDProviderEnum;

    return-object p0
.end method

.method public static values()[Lcom/rscja/deviceapi/BDNavigation$BDProviderEnum;
    .locals 4

    .line 1
    sget-object v0, Lcom/rscja/deviceapi/BDNavigation$BDProviderEnum;->ENUM$VALUES:[Lcom/rscja/deviceapi/BDNavigation$BDProviderEnum;

    array-length v1, v0

    new-array v2, v1, [Lcom/rscja/deviceapi/BDNavigation$BDProviderEnum;

    const/4 v3, 0x0

    invoke-static {v0, v3, v2, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v2
.end method
