.class public final enum Lcom/rscja/deviceapi/RFIDWithISO14443A$TagType;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/rscja/deviceapi/RFIDWithISO14443A$TagType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic ENUM$VALUES:[Lcom/rscja/deviceapi/RFIDWithISO14443A$TagType;

.field public static final enum Mifare_DESFire:Lcom/rscja/deviceapi/RFIDWithISO14443A$TagType;

.field public static final enum Mifare_Mini:Lcom/rscja/deviceapi/RFIDWithISO14443A$TagType;

.field public static final enum Mifare_Pro:Lcom/rscja/deviceapi/RFIDWithISO14443A$TagType;

.field public static final enum Mifare_ProX:Lcom/rscja/deviceapi/RFIDWithISO14443A$TagType;

.field public static final enum Mifare_plus:Lcom/rscja/deviceapi/RFIDWithISO14443A$TagType;

.field public static final enum Mifare_plus_2k:Lcom/rscja/deviceapi/RFIDWithISO14443A$TagType;

.field public static final enum Mifare_plus_4k:Lcom/rscja/deviceapi/RFIDWithISO14443A$TagType;

.field public static final enum S50:Lcom/rscja/deviceapi/RFIDWithISO14443A$TagType;

.field public static final enum S70:Lcom/rscja/deviceapi/RFIDWithISO14443A$TagType;

.field public static final enum Ultra_light:Lcom/rscja/deviceapi/RFIDWithISO14443A$TagType;

.field public static final enum Unknow:Lcom/rscja/deviceapi/RFIDWithISO14443A$TagType;


# direct methods
.method static constructor <clinit>()V
    .locals 16

    .line 1
    new-instance v0, Lcom/rscja/deviceapi/RFIDWithISO14443A$TagType;

    const-string v1, "Ultra_light"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/rscja/deviceapi/RFIDWithISO14443A$TagType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/rscja/deviceapi/RFIDWithISO14443A$TagType;->Ultra_light:Lcom/rscja/deviceapi/RFIDWithISO14443A$TagType;

    new-instance v1, Lcom/rscja/deviceapi/RFIDWithISO14443A$TagType;

    const-string v3, "S50"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lcom/rscja/deviceapi/RFIDWithISO14443A$TagType;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/rscja/deviceapi/RFIDWithISO14443A$TagType;->S50:Lcom/rscja/deviceapi/RFIDWithISO14443A$TagType;

    new-instance v3, Lcom/rscja/deviceapi/RFIDWithISO14443A$TagType;

    const-string v5, "S70"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Lcom/rscja/deviceapi/RFIDWithISO14443A$TagType;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lcom/rscja/deviceapi/RFIDWithISO14443A$TagType;->S70:Lcom/rscja/deviceapi/RFIDWithISO14443A$TagType;

    new-instance v5, Lcom/rscja/deviceapi/RFIDWithISO14443A$TagType;

    const-string v7, "Mifare_DESFire"

    const/4 v8, 0x3

    invoke-direct {v5, v7, v8}, Lcom/rscja/deviceapi/RFIDWithISO14443A$TagType;-><init>(Ljava/lang/String;I)V

    sput-object v5, Lcom/rscja/deviceapi/RFIDWithISO14443A$TagType;->Mifare_DESFire:Lcom/rscja/deviceapi/RFIDWithISO14443A$TagType;

    new-instance v7, Lcom/rscja/deviceapi/RFIDWithISO14443A$TagType;

    const-string v9, "Mifare_Pro"

    const/4 v10, 0x4

    invoke-direct {v7, v9, v10}, Lcom/rscja/deviceapi/RFIDWithISO14443A$TagType;-><init>(Ljava/lang/String;I)V

    sput-object v7, Lcom/rscja/deviceapi/RFIDWithISO14443A$TagType;->Mifare_Pro:Lcom/rscja/deviceapi/RFIDWithISO14443A$TagType;

    new-instance v9, Lcom/rscja/deviceapi/RFIDWithISO14443A$TagType;

    const-string v11, "Mifare_ProX"

    const/4 v12, 0x5

    invoke-direct {v9, v11, v12}, Lcom/rscja/deviceapi/RFIDWithISO14443A$TagType;-><init>(Ljava/lang/String;I)V

    sput-object v9, Lcom/rscja/deviceapi/RFIDWithISO14443A$TagType;->Mifare_ProX:Lcom/rscja/deviceapi/RFIDWithISO14443A$TagType;

    new-instance v11, Lcom/rscja/deviceapi/RFIDWithISO14443A$TagType;

    const-string v13, "Mifare_plus"

    const/4 v14, 0x6

    invoke-direct {v11, v13, v14}, Lcom/rscja/deviceapi/RFIDWithISO14443A$TagType;-><init>(Ljava/lang/String;I)V

    sput-object v11, Lcom/rscja/deviceapi/RFIDWithISO14443A$TagType;->Mifare_plus:Lcom/rscja/deviceapi/RFIDWithISO14443A$TagType;

    new-instance v13, Lcom/rscja/deviceapi/RFIDWithISO14443A$TagType;

    const-string v15, "Mifare_plus_4k"

    const/4 v14, 0x7

    invoke-direct {v13, v15, v14}, Lcom/rscja/deviceapi/RFIDWithISO14443A$TagType;-><init>(Ljava/lang/String;I)V

    sput-object v13, Lcom/rscja/deviceapi/RFIDWithISO14443A$TagType;->Mifare_plus_4k:Lcom/rscja/deviceapi/RFIDWithISO14443A$TagType;

    new-instance v15, Lcom/rscja/deviceapi/RFIDWithISO14443A$TagType;

    const-string v14, "Mifare_plus_2k"

    const/16 v12, 0x8

    invoke-direct {v15, v14, v12}, Lcom/rscja/deviceapi/RFIDWithISO14443A$TagType;-><init>(Ljava/lang/String;I)V

    sput-object v15, Lcom/rscja/deviceapi/RFIDWithISO14443A$TagType;->Mifare_plus_2k:Lcom/rscja/deviceapi/RFIDWithISO14443A$TagType;

    new-instance v14, Lcom/rscja/deviceapi/RFIDWithISO14443A$TagType;

    const-string v12, "Mifare_Mini"

    const/16 v10, 0x9

    invoke-direct {v14, v12, v10}, Lcom/rscja/deviceapi/RFIDWithISO14443A$TagType;-><init>(Ljava/lang/String;I)V

    sput-object v14, Lcom/rscja/deviceapi/RFIDWithISO14443A$TagType;->Mifare_Mini:Lcom/rscja/deviceapi/RFIDWithISO14443A$TagType;

    new-instance v12, Lcom/rscja/deviceapi/RFIDWithISO14443A$TagType;

    const-string v10, "Unknow"

    const/16 v8, 0xa

    invoke-direct {v12, v10, v8}, Lcom/rscja/deviceapi/RFIDWithISO14443A$TagType;-><init>(Ljava/lang/String;I)V

    sput-object v12, Lcom/rscja/deviceapi/RFIDWithISO14443A$TagType;->Unknow:Lcom/rscja/deviceapi/RFIDWithISO14443A$TagType;

    const/16 v10, 0xb

    new-array v10, v10, [Lcom/rscja/deviceapi/RFIDWithISO14443A$TagType;

    aput-object v0, v10, v2

    aput-object v1, v10, v4

    aput-object v3, v10, v6

    const/4 v0, 0x3

    aput-object v5, v10, v0

    const/4 v0, 0x4

    aput-object v7, v10, v0

    const/4 v0, 0x5

    aput-object v9, v10, v0

    const/4 v0, 0x6

    aput-object v11, v10, v0

    const/4 v0, 0x7

    aput-object v13, v10, v0

    const/16 v0, 0x8

    aput-object v15, v10, v0

    const/16 v0, 0x9

    aput-object v14, v10, v0

    aput-object v12, v10, v8

    .line 2
    sput-object v10, Lcom/rscja/deviceapi/RFIDWithISO14443A$TagType;->ENUM$VALUES:[Lcom/rscja/deviceapi/RFIDWithISO14443A$TagType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/rscja/deviceapi/RFIDWithISO14443A$TagType;
    .locals 1

    .line 1
    const-class v0, Lcom/rscja/deviceapi/RFIDWithISO14443A$TagType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/rscja/deviceapi/RFIDWithISO14443A$TagType;

    return-object p0
.end method

.method public static values()[Lcom/rscja/deviceapi/RFIDWithISO14443A$TagType;
    .locals 4

    .line 1
    sget-object v0, Lcom/rscja/deviceapi/RFIDWithISO14443A$TagType;->ENUM$VALUES:[Lcom/rscja/deviceapi/RFIDWithISO14443A$TagType;

    array-length v1, v0

    new-array v2, v1, [Lcom/rscja/deviceapi/RFIDWithISO14443A$TagType;

    const/4 v3, 0x0

    invoke-static {v0, v3, v2, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v2
.end method
