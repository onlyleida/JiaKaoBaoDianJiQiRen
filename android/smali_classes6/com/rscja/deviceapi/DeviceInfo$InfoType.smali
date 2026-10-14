.class public final enum Lcom/rscja/deviceapi/DeviceInfo$InfoType;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/rscja/deviceapi/DeviceInfo$InfoType;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum CPUTEMPERATURE:Lcom/rscja/deviceapi/DeviceInfo$InfoType;

.field private static final synthetic ENUM$VALUES:[Lcom/rscja/deviceapi/DeviceInfo$InfoType;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 1
    new-instance v0, Lcom/rscja/deviceapi/DeviceInfo$InfoType;

    const-string v1, "CPUTEMPERATURE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/rscja/deviceapi/DeviceInfo$InfoType;-><init>(Ljava/lang/String;I)V

    .line 2
    sput-object v0, Lcom/rscja/deviceapi/DeviceInfo$InfoType;->CPUTEMPERATURE:Lcom/rscja/deviceapi/DeviceInfo$InfoType;

    const/4 v1, 0x1

    new-array v1, v1, [Lcom/rscja/deviceapi/DeviceInfo$InfoType;

    aput-object v0, v1, v2

    .line 3
    sput-object v1, Lcom/rscja/deviceapi/DeviceInfo$InfoType;->ENUM$VALUES:[Lcom/rscja/deviceapi/DeviceInfo$InfoType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/rscja/deviceapi/DeviceInfo$InfoType;
    .locals 1

    .line 1
    const-class v0, Lcom/rscja/deviceapi/DeviceInfo$InfoType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/rscja/deviceapi/DeviceInfo$InfoType;

    return-object p0
.end method

.method public static values()[Lcom/rscja/deviceapi/DeviceInfo$InfoType;
    .locals 4

    .line 1
    sget-object v0, Lcom/rscja/deviceapi/DeviceInfo$InfoType;->ENUM$VALUES:[Lcom/rscja/deviceapi/DeviceInfo$InfoType;

    array-length v1, v0

    new-array v2, v1, [Lcom/rscja/deviceapi/DeviceInfo$InfoType;

    const/4 v3, 0x0

    invoke-static {v0, v3, v2, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v2
.end method
