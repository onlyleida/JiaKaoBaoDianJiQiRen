.class final enum Lcom/rscja/deviceapi/RFIDWithUHF$SingelModeEnum;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/rscja/deviceapi/RFIDWithUHF$SingelModeEnum;",
        ">;"
    }
.end annotation

.annotation runtime Ljava/lang/Deprecated;
.end annotation


# static fields
.field private static final synthetic ENUM$VALUES:[Lcom/rscja/deviceapi/RFIDWithUHF$SingelModeEnum;

.field public static final enum MORE:Lcom/rscja/deviceapi/RFIDWithUHF$SingelModeEnum;

.field public static final enum SINGEL:Lcom/rscja/deviceapi/RFIDWithUHF$SingelModeEnum;


# instance fields
.field private final value:B


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .line 1
    new-instance v0, Lcom/rscja/deviceapi/RFIDWithUHF$SingelModeEnum;

    const-string v1, "SINGEL"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, Lcom/rscja/deviceapi/RFIDWithUHF$SingelModeEnum;-><init>(Ljava/lang/String;IB)V

    sput-object v0, Lcom/rscja/deviceapi/RFIDWithUHF$SingelModeEnum;->SINGEL:Lcom/rscja/deviceapi/RFIDWithUHF$SingelModeEnum;

    new-instance v1, Lcom/rscja/deviceapi/RFIDWithUHF$SingelModeEnum;

    const-string v3, "MORE"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4, v4}, Lcom/rscja/deviceapi/RFIDWithUHF$SingelModeEnum;-><init>(Ljava/lang/String;IB)V

    sput-object v1, Lcom/rscja/deviceapi/RFIDWithUHF$SingelModeEnum;->MORE:Lcom/rscja/deviceapi/RFIDWithUHF$SingelModeEnum;

    const/4 v3, 0x2

    new-array v3, v3, [Lcom/rscja/deviceapi/RFIDWithUHF$SingelModeEnum;

    aput-object v0, v3, v2

    aput-object v1, v3, v4

    .line 2
    sput-object v3, Lcom/rscja/deviceapi/RFIDWithUHF$SingelModeEnum;->ENUM$VALUES:[Lcom/rscja/deviceapi/RFIDWithUHF$SingelModeEnum;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;IB)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 2
    iput-byte p3, p0, Lcom/rscja/deviceapi/RFIDWithUHF$SingelModeEnum;->value:B

    return-void
.end method

.method static synthetic access$2(Lcom/rscja/deviceapi/RFIDWithUHF$SingelModeEnum;)B
    .locals 0

    .line 1
    iget-byte p0, p0, Lcom/rscja/deviceapi/RFIDWithUHF$SingelModeEnum;->value:B

    return p0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/rscja/deviceapi/RFIDWithUHF$SingelModeEnum;
    .locals 1

    .line 1
    const-class v0, Lcom/rscja/deviceapi/RFIDWithUHF$SingelModeEnum;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/rscja/deviceapi/RFIDWithUHF$SingelModeEnum;

    return-object p0
.end method

.method public static values()[Lcom/rscja/deviceapi/RFIDWithUHF$SingelModeEnum;
    .locals 4

    .line 1
    sget-object v0, Lcom/rscja/deviceapi/RFIDWithUHF$SingelModeEnum;->ENUM$VALUES:[Lcom/rscja/deviceapi/RFIDWithUHF$SingelModeEnum;

    array-length v1, v0

    new-array v2, v1, [Lcom/rscja/deviceapi/RFIDWithUHF$SingelModeEnum;

    const/4 v3, 0x0

    invoke-static {v0, v3, v2, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v2
.end method


# virtual methods
.method public getValue()B
    .locals 1

    .line 1
    iget-byte v0, p0, Lcom/rscja/deviceapi/RFIDWithUHF$SingelModeEnum;->value:B

    return v0
.end method
