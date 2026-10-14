.class public final enum Lcom/rscja/deviceapi/RFIDWithISO14443A$KeyType;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/rscja/deviceapi/RFIDWithISO14443A$KeyType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic ENUM$VALUES:[Lcom/rscja/deviceapi/RFIDWithISO14443A$KeyType;

.field public static final enum TypeA:Lcom/rscja/deviceapi/RFIDWithISO14443A$KeyType;

.field public static final enum TypeB:Lcom/rscja/deviceapi/RFIDWithISO14443A$KeyType;

.field public static final enum TypeDes:Lcom/rscja/deviceapi/RFIDWithISO14443A$KeyType;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .line 1
    new-instance v0, Lcom/rscja/deviceapi/RFIDWithISO14443A$KeyType;

    const-string v1, "TypeA"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/rscja/deviceapi/RFIDWithISO14443A$KeyType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/rscja/deviceapi/RFIDWithISO14443A$KeyType;->TypeA:Lcom/rscja/deviceapi/RFIDWithISO14443A$KeyType;

    new-instance v1, Lcom/rscja/deviceapi/RFIDWithISO14443A$KeyType;

    const-string v3, "TypeB"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lcom/rscja/deviceapi/RFIDWithISO14443A$KeyType;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/rscja/deviceapi/RFIDWithISO14443A$KeyType;->TypeB:Lcom/rscja/deviceapi/RFIDWithISO14443A$KeyType;

    new-instance v3, Lcom/rscja/deviceapi/RFIDWithISO14443A$KeyType;

    const-string v5, "TypeDes"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Lcom/rscja/deviceapi/RFIDWithISO14443A$KeyType;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lcom/rscja/deviceapi/RFIDWithISO14443A$KeyType;->TypeDes:Lcom/rscja/deviceapi/RFIDWithISO14443A$KeyType;

    const/4 v5, 0x3

    new-array v5, v5, [Lcom/rscja/deviceapi/RFIDWithISO14443A$KeyType;

    aput-object v0, v5, v2

    aput-object v1, v5, v4

    aput-object v3, v5, v6

    .line 2
    sput-object v5, Lcom/rscja/deviceapi/RFIDWithISO14443A$KeyType;->ENUM$VALUES:[Lcom/rscja/deviceapi/RFIDWithISO14443A$KeyType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/rscja/deviceapi/RFIDWithISO14443A$KeyType;
    .locals 1

    .line 1
    const-class v0, Lcom/rscja/deviceapi/RFIDWithISO14443A$KeyType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/rscja/deviceapi/RFIDWithISO14443A$KeyType;

    return-object p0
.end method

.method public static values()[Lcom/rscja/deviceapi/RFIDWithISO14443A$KeyType;
    .locals 4

    .line 1
    sget-object v0, Lcom/rscja/deviceapi/RFIDWithISO14443A$KeyType;->ENUM$VALUES:[Lcom/rscja/deviceapi/RFIDWithISO14443A$KeyType;

    array-length v1, v0

    new-array v2, v1, [Lcom/rscja/deviceapi/RFIDWithISO14443A$KeyType;

    const/4 v3, 0x0

    invoke-static {v0, v3, v2, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v2
.end method
