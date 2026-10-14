.class public final enum Lcom/rscja/deviceapi/RFIDWithISO14443A$DESFireEncryptionTypekEnum;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/rscja/deviceapi/RFIDWithISO14443A$DESFireEncryptionTypekEnum;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum DES:Lcom/rscja/deviceapi/RFIDWithISO14443A$DESFireEncryptionTypekEnum;

.field private static final synthetic ENUM$VALUES:[Lcom/rscja/deviceapi/RFIDWithISO14443A$DESFireEncryptionTypekEnum;

.field public static final enum Transparent:Lcom/rscja/deviceapi/RFIDWithISO14443A$DESFireEncryptionTypekEnum;

.field public static final enum Unknown:Lcom/rscja/deviceapi/RFIDWithISO14443A$DESFireEncryptionTypekEnum;


# instance fields
.field private final value:B


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .line 1
    new-instance v0, Lcom/rscja/deviceapi/RFIDWithISO14443A$DESFireEncryptionTypekEnum;

    const-string v1, "Unknown"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, Lcom/rscja/deviceapi/RFIDWithISO14443A$DESFireEncryptionTypekEnum;-><init>(Ljava/lang/String;IB)V

    sput-object v0, Lcom/rscja/deviceapi/RFIDWithISO14443A$DESFireEncryptionTypekEnum;->Unknown:Lcom/rscja/deviceapi/RFIDWithISO14443A$DESFireEncryptionTypekEnum;

    new-instance v1, Lcom/rscja/deviceapi/RFIDWithISO14443A$DESFireEncryptionTypekEnum;

    const-string v3, "Transparent"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4, v4}, Lcom/rscja/deviceapi/RFIDWithISO14443A$DESFireEncryptionTypekEnum;-><init>(Ljava/lang/String;IB)V

    sput-object v1, Lcom/rscja/deviceapi/RFIDWithISO14443A$DESFireEncryptionTypekEnum;->Transparent:Lcom/rscja/deviceapi/RFIDWithISO14443A$DESFireEncryptionTypekEnum;

    new-instance v3, Lcom/rscja/deviceapi/RFIDWithISO14443A$DESFireEncryptionTypekEnum;

    const-string v5, "DES"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6, v6}, Lcom/rscja/deviceapi/RFIDWithISO14443A$DESFireEncryptionTypekEnum;-><init>(Ljava/lang/String;IB)V

    sput-object v3, Lcom/rscja/deviceapi/RFIDWithISO14443A$DESFireEncryptionTypekEnum;->DES:Lcom/rscja/deviceapi/RFIDWithISO14443A$DESFireEncryptionTypekEnum;

    const/4 v5, 0x3

    new-array v5, v5, [Lcom/rscja/deviceapi/RFIDWithISO14443A$DESFireEncryptionTypekEnum;

    aput-object v0, v5, v2

    aput-object v1, v5, v4

    aput-object v3, v5, v6

    .line 2
    sput-object v5, Lcom/rscja/deviceapi/RFIDWithISO14443A$DESFireEncryptionTypekEnum;->ENUM$VALUES:[Lcom/rscja/deviceapi/RFIDWithISO14443A$DESFireEncryptionTypekEnum;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;IB)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 2
    iput-byte p3, p0, Lcom/rscja/deviceapi/RFIDWithISO14443A$DESFireEncryptionTypekEnum;->value:B

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/rscja/deviceapi/RFIDWithISO14443A$DESFireEncryptionTypekEnum;
    .locals 1

    .line 1
    const-class v0, Lcom/rscja/deviceapi/RFIDWithISO14443A$DESFireEncryptionTypekEnum;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/rscja/deviceapi/RFIDWithISO14443A$DESFireEncryptionTypekEnum;

    return-object p0
.end method

.method public static values()[Lcom/rscja/deviceapi/RFIDWithISO14443A$DESFireEncryptionTypekEnum;
    .locals 4

    .line 1
    sget-object v0, Lcom/rscja/deviceapi/RFIDWithISO14443A$DESFireEncryptionTypekEnum;->ENUM$VALUES:[Lcom/rscja/deviceapi/RFIDWithISO14443A$DESFireEncryptionTypekEnum;

    array-length v1, v0

    new-array v2, v1, [Lcom/rscja/deviceapi/RFIDWithISO14443A$DESFireEncryptionTypekEnum;

    const/4 v3, 0x0

    invoke-static {v0, v3, v2, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v2
.end method


# virtual methods
.method public getValue()B
    .locals 1

    .line 1
    iget-byte v0, p0, Lcom/rscja/deviceapi/RFIDWithISO14443A$DESFireEncryptionTypekEnum;->value:B

    return v0
.end method
