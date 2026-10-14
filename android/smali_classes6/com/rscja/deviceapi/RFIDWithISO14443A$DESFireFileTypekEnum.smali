.class public final enum Lcom/rscja/deviceapi/RFIDWithISO14443A$DESFireFileTypekEnum;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/rscja/deviceapi/RFIDWithISO14443A$DESFireFileTypekEnum;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum BackupDataFile:Lcom/rscja/deviceapi/RFIDWithISO14443A$DESFireFileTypekEnum;

.field public static final enum CyclicRecordFile:Lcom/rscja/deviceapi/RFIDWithISO14443A$DESFireFileTypekEnum;

.field private static final synthetic ENUM$VALUES:[Lcom/rscja/deviceapi/RFIDWithISO14443A$DESFireFileTypekEnum;

.field public static final enum LinearRecordFile:Lcom/rscja/deviceapi/RFIDWithISO14443A$DESFireFileTypekEnum;

.field public static final enum StandardDataFile:Lcom/rscja/deviceapi/RFIDWithISO14443A$DESFireFileTypekEnum;

.field public static final enum Unknown:Lcom/rscja/deviceapi/RFIDWithISO14443A$DESFireFileTypekEnum;

.field public static final enum ValueFile:Lcom/rscja/deviceapi/RFIDWithISO14443A$DESFireFileTypekEnum;


# instance fields
.field private final value:B


# direct methods
.method static constructor <clinit>()V
    .locals 13

    .line 1
    new-instance v0, Lcom/rscja/deviceapi/RFIDWithISO14443A$DESFireFileTypekEnum;

    const-string v1, "Unknown"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, Lcom/rscja/deviceapi/RFIDWithISO14443A$DESFireFileTypekEnum;-><init>(Ljava/lang/String;IB)V

    sput-object v0, Lcom/rscja/deviceapi/RFIDWithISO14443A$DESFireFileTypekEnum;->Unknown:Lcom/rscja/deviceapi/RFIDWithISO14443A$DESFireFileTypekEnum;

    new-instance v1, Lcom/rscja/deviceapi/RFIDWithISO14443A$DESFireFileTypekEnum;

    const-string v3, "StandardDataFile"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4, v4}, Lcom/rscja/deviceapi/RFIDWithISO14443A$DESFireFileTypekEnum;-><init>(Ljava/lang/String;IB)V

    sput-object v1, Lcom/rscja/deviceapi/RFIDWithISO14443A$DESFireFileTypekEnum;->StandardDataFile:Lcom/rscja/deviceapi/RFIDWithISO14443A$DESFireFileTypekEnum;

    new-instance v3, Lcom/rscja/deviceapi/RFIDWithISO14443A$DESFireFileTypekEnum;

    const-string v5, "BackupDataFile"

    const/4 v6, 0x2

    .line 2
    invoke-direct {v3, v5, v6, v6}, Lcom/rscja/deviceapi/RFIDWithISO14443A$DESFireFileTypekEnum;-><init>(Ljava/lang/String;IB)V

    sput-object v3, Lcom/rscja/deviceapi/RFIDWithISO14443A$DESFireFileTypekEnum;->BackupDataFile:Lcom/rscja/deviceapi/RFIDWithISO14443A$DESFireFileTypekEnum;

    new-instance v5, Lcom/rscja/deviceapi/RFIDWithISO14443A$DESFireFileTypekEnum;

    const-string v7, "ValueFile"

    const/4 v8, 0x3

    invoke-direct {v5, v7, v8, v8}, Lcom/rscja/deviceapi/RFIDWithISO14443A$DESFireFileTypekEnum;-><init>(Ljava/lang/String;IB)V

    sput-object v5, Lcom/rscja/deviceapi/RFIDWithISO14443A$DESFireFileTypekEnum;->ValueFile:Lcom/rscja/deviceapi/RFIDWithISO14443A$DESFireFileTypekEnum;

    new-instance v7, Lcom/rscja/deviceapi/RFIDWithISO14443A$DESFireFileTypekEnum;

    const-string v9, "LinearRecordFile"

    const/4 v10, 0x4

    .line 3
    invoke-direct {v7, v9, v10, v10}, Lcom/rscja/deviceapi/RFIDWithISO14443A$DESFireFileTypekEnum;-><init>(Ljava/lang/String;IB)V

    sput-object v7, Lcom/rscja/deviceapi/RFIDWithISO14443A$DESFireFileTypekEnum;->LinearRecordFile:Lcom/rscja/deviceapi/RFIDWithISO14443A$DESFireFileTypekEnum;

    new-instance v9, Lcom/rscja/deviceapi/RFIDWithISO14443A$DESFireFileTypekEnum;

    const-string v11, "CyclicRecordFile"

    const/4 v12, 0x5

    invoke-direct {v9, v11, v12, v12}, Lcom/rscja/deviceapi/RFIDWithISO14443A$DESFireFileTypekEnum;-><init>(Ljava/lang/String;IB)V

    sput-object v9, Lcom/rscja/deviceapi/RFIDWithISO14443A$DESFireFileTypekEnum;->CyclicRecordFile:Lcom/rscja/deviceapi/RFIDWithISO14443A$DESFireFileTypekEnum;

    const/4 v11, 0x6

    new-array v11, v11, [Lcom/rscja/deviceapi/RFIDWithISO14443A$DESFireFileTypekEnum;

    aput-object v0, v11, v2

    aput-object v1, v11, v4

    aput-object v3, v11, v6

    aput-object v5, v11, v8

    aput-object v7, v11, v10

    aput-object v9, v11, v12

    .line 4
    sput-object v11, Lcom/rscja/deviceapi/RFIDWithISO14443A$DESFireFileTypekEnum;->ENUM$VALUES:[Lcom/rscja/deviceapi/RFIDWithISO14443A$DESFireFileTypekEnum;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;IB)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 2
    iput-byte p3, p0, Lcom/rscja/deviceapi/RFIDWithISO14443A$DESFireFileTypekEnum;->value:B

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/rscja/deviceapi/RFIDWithISO14443A$DESFireFileTypekEnum;
    .locals 1

    .line 1
    const-class v0, Lcom/rscja/deviceapi/RFIDWithISO14443A$DESFireFileTypekEnum;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/rscja/deviceapi/RFIDWithISO14443A$DESFireFileTypekEnum;

    return-object p0
.end method

.method public static values()[Lcom/rscja/deviceapi/RFIDWithISO14443A$DESFireFileTypekEnum;
    .locals 4

    .line 1
    sget-object v0, Lcom/rscja/deviceapi/RFIDWithISO14443A$DESFireFileTypekEnum;->ENUM$VALUES:[Lcom/rscja/deviceapi/RFIDWithISO14443A$DESFireFileTypekEnum;

    array-length v1, v0

    new-array v2, v1, [Lcom/rscja/deviceapi/RFIDWithISO14443A$DESFireFileTypekEnum;

    const/4 v3, 0x0

    invoke-static {v0, v3, v2, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v2
.end method


# virtual methods
.method public getValue()B
    .locals 1

    .line 1
    iget-byte v0, p0, Lcom/rscja/deviceapi/RFIDWithISO14443A$DESFireFileTypekEnum;->value:B

    return v0
.end method
