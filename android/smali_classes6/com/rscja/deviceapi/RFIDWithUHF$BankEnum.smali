.class public final enum Lcom/rscja/deviceapi/RFIDWithUHF$BankEnum;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/rscja/deviceapi/RFIDWithUHF$BankEnum;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum DIGITAL_SIGNATURE:Lcom/rscja/deviceapi/RFIDWithUHF$BankEnum;

.field private static final synthetic ENUM$VALUES:[Lcom/rscja/deviceapi/RFIDWithUHF$BankEnum;

.field public static final enum RESERVED:Lcom/rscja/deviceapi/RFIDWithUHF$BankEnum;

.field public static final enum TID:Lcom/rscja/deviceapi/RFIDWithUHF$BankEnum;

.field public static final enum UII:Lcom/rscja/deviceapi/RFIDWithUHF$BankEnum;

.field public static final enum USER:Lcom/rscja/deviceapi/RFIDWithUHF$BankEnum;


# instance fields
.field private final value:B


# direct methods
.method static constructor <clinit>()V
    .locals 11

    .line 1
    new-instance v0, Lcom/rscja/deviceapi/RFIDWithUHF$BankEnum;

    const-string v1, "RESERVED"

    const/4 v2, 0x0

    .line 2
    invoke-direct {v0, v1, v2, v2}, Lcom/rscja/deviceapi/RFIDWithUHF$BankEnum;-><init>(Ljava/lang/String;IB)V

    sput-object v0, Lcom/rscja/deviceapi/RFIDWithUHF$BankEnum;->RESERVED:Lcom/rscja/deviceapi/RFIDWithUHF$BankEnum;

    .line 3
    new-instance v1, Lcom/rscja/deviceapi/RFIDWithUHF$BankEnum;

    const-string v3, "UII"

    const/4 v4, 0x1

    .line 4
    invoke-direct {v1, v3, v4, v4}, Lcom/rscja/deviceapi/RFIDWithUHF$BankEnum;-><init>(Ljava/lang/String;IB)V

    sput-object v1, Lcom/rscja/deviceapi/RFIDWithUHF$BankEnum;->UII:Lcom/rscja/deviceapi/RFIDWithUHF$BankEnum;

    .line 5
    new-instance v3, Lcom/rscja/deviceapi/RFIDWithUHF$BankEnum;

    const-string v5, "TID"

    const/4 v6, 0x2

    .line 6
    invoke-direct {v3, v5, v6, v6}, Lcom/rscja/deviceapi/RFIDWithUHF$BankEnum;-><init>(Ljava/lang/String;IB)V

    sput-object v3, Lcom/rscja/deviceapi/RFIDWithUHF$BankEnum;->TID:Lcom/rscja/deviceapi/RFIDWithUHF$BankEnum;

    .line 7
    new-instance v5, Lcom/rscja/deviceapi/RFIDWithUHF$BankEnum;

    const-string v7, "USER"

    const/4 v8, 0x3

    .line 8
    invoke-direct {v5, v7, v8, v8}, Lcom/rscja/deviceapi/RFIDWithUHF$BankEnum;-><init>(Ljava/lang/String;IB)V

    sput-object v5, Lcom/rscja/deviceapi/RFIDWithUHF$BankEnum;->USER:Lcom/rscja/deviceapi/RFIDWithUHF$BankEnum;

    .line 9
    new-instance v7, Lcom/rscja/deviceapi/RFIDWithUHF$BankEnum;

    const-string v9, "DIGITAL_SIGNATURE"

    const/4 v10, 0x4

    .line 10
    invoke-direct {v7, v9, v10, v10}, Lcom/rscja/deviceapi/RFIDWithUHF$BankEnum;-><init>(Ljava/lang/String;IB)V

    sput-object v7, Lcom/rscja/deviceapi/RFIDWithUHF$BankEnum;->DIGITAL_SIGNATURE:Lcom/rscja/deviceapi/RFIDWithUHF$BankEnum;

    const/4 v9, 0x5

    new-array v9, v9, [Lcom/rscja/deviceapi/RFIDWithUHF$BankEnum;

    aput-object v0, v9, v2

    aput-object v1, v9, v4

    aput-object v3, v9, v6

    aput-object v5, v9, v8

    aput-object v7, v9, v10

    .line 11
    sput-object v9, Lcom/rscja/deviceapi/RFIDWithUHF$BankEnum;->ENUM$VALUES:[Lcom/rscja/deviceapi/RFIDWithUHF$BankEnum;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;IB)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 2
    iput-byte p3, p0, Lcom/rscja/deviceapi/RFIDWithUHF$BankEnum;->value:B

    return-void
.end method

.method static synthetic access$2(Lcom/rscja/deviceapi/RFIDWithUHF$BankEnum;)B
    .locals 0

    .line 1
    iget-byte p0, p0, Lcom/rscja/deviceapi/RFIDWithUHF$BankEnum;->value:B

    return p0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/rscja/deviceapi/RFIDWithUHF$BankEnum;
    .locals 1

    .line 1
    const-class v0, Lcom/rscja/deviceapi/RFIDWithUHF$BankEnum;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/rscja/deviceapi/RFIDWithUHF$BankEnum;

    return-object p0
.end method

.method public static values()[Lcom/rscja/deviceapi/RFIDWithUHF$BankEnum;
    .locals 4

    .line 1
    sget-object v0, Lcom/rscja/deviceapi/RFIDWithUHF$BankEnum;->ENUM$VALUES:[Lcom/rscja/deviceapi/RFIDWithUHF$BankEnum;

    array-length v1, v0

    new-array v2, v1, [Lcom/rscja/deviceapi/RFIDWithUHF$BankEnum;

    const/4 v3, 0x0

    invoke-static {v0, v3, v2, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v2
.end method


# virtual methods
.method public getValue()B
    .locals 1

    .line 1
    iget-byte v0, p0, Lcom/rscja/deviceapi/RFIDWithUHF$BankEnum;->value:B

    return v0
.end method
