.class public final enum Lcom/rscja/deviceapi/BDNavigation$BDStartModeEnum;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/rscja/deviceapi/BDNavigation$BDStartModeEnum;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum COLD:Lcom/rscja/deviceapi/BDNavigation$BDStartModeEnum;

.field private static final synthetic ENUM$VALUES:[Lcom/rscja/deviceapi/BDNavigation$BDStartModeEnum;

.field public static final enum HOT:Lcom/rscja/deviceapi/BDNavigation$BDStartModeEnum;

.field public static final enum WARM:Lcom/rscja/deviceapi/BDNavigation$BDStartModeEnum;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .line 1
    new-instance v0, Lcom/rscja/deviceapi/BDNavigation$BDStartModeEnum;

    const-string v1, "COLD"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/rscja/deviceapi/BDNavigation$BDStartModeEnum;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/rscja/deviceapi/BDNavigation$BDStartModeEnum;->COLD:Lcom/rscja/deviceapi/BDNavigation$BDStartModeEnum;

    new-instance v1, Lcom/rscja/deviceapi/BDNavigation$BDStartModeEnum;

    const-string v3, "WARM"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lcom/rscja/deviceapi/BDNavigation$BDStartModeEnum;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/rscja/deviceapi/BDNavigation$BDStartModeEnum;->WARM:Lcom/rscja/deviceapi/BDNavigation$BDStartModeEnum;

    new-instance v3, Lcom/rscja/deviceapi/BDNavigation$BDStartModeEnum;

    const-string v5, "HOT"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Lcom/rscja/deviceapi/BDNavigation$BDStartModeEnum;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lcom/rscja/deviceapi/BDNavigation$BDStartModeEnum;->HOT:Lcom/rscja/deviceapi/BDNavigation$BDStartModeEnum;

    const/4 v5, 0x3

    new-array v5, v5, [Lcom/rscja/deviceapi/BDNavigation$BDStartModeEnum;

    aput-object v0, v5, v2

    aput-object v1, v5, v4

    aput-object v3, v5, v6

    .line 2
    sput-object v5, Lcom/rscja/deviceapi/BDNavigation$BDStartModeEnum;->ENUM$VALUES:[Lcom/rscja/deviceapi/BDNavigation$BDStartModeEnum;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/rscja/deviceapi/BDNavigation$BDStartModeEnum;
    .locals 1

    .line 1
    const-class v0, Lcom/rscja/deviceapi/BDNavigation$BDStartModeEnum;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/rscja/deviceapi/BDNavigation$BDStartModeEnum;

    return-object p0
.end method

.method public static values()[Lcom/rscja/deviceapi/BDNavigation$BDStartModeEnum;
    .locals 4

    .line 1
    sget-object v0, Lcom/rscja/deviceapi/BDNavigation$BDStartModeEnum;->ENUM$VALUES:[Lcom/rscja/deviceapi/BDNavigation$BDStartModeEnum;

    array-length v1, v0

    new-array v2, v1, [Lcom/rscja/deviceapi/BDNavigation$BDStartModeEnum;

    const/4 v3, 0x0

    invoke-static {v0, v3, v2, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v2
.end method
