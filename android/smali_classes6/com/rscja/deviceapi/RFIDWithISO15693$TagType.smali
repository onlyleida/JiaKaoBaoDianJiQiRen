.class public final enum Lcom/rscja/deviceapi/RFIDWithISO15693$TagType;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/rscja/deviceapi/RFIDWithISO15693$TagType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic ENUM$VALUES:[Lcom/rscja/deviceapi/RFIDWithISO15693$TagType;

.field public static final enum ICODE2:Lcom/rscja/deviceapi/RFIDWithISO15693$TagType;

.field public static final enum NUll_:Lcom/rscja/deviceapi/RFIDWithISO15693$TagType;

.field public static final enum STLRIS64K:Lcom/rscja/deviceapi/RFIDWithISO15693$TagType;

.field public static final enum TI2048:Lcom/rscja/deviceapi/RFIDWithISO15693$TagType;


# instance fields
.field private final value:I


# direct methods
.method static constructor <clinit>()V
    .locals 11

    .line 1
    new-instance v0, Lcom/rscja/deviceapi/RFIDWithISO15693$TagType;

    const-string v1, "ICODE2"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, Lcom/rscja/deviceapi/RFIDWithISO15693$TagType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/rscja/deviceapi/RFIDWithISO15693$TagType;->ICODE2:Lcom/rscja/deviceapi/RFIDWithISO15693$TagType;

    new-instance v1, Lcom/rscja/deviceapi/RFIDWithISO15693$TagType;

    const-string v3, "TI2048"

    const/4 v4, 0x1

    const/4 v5, 0x4

    invoke-direct {v1, v3, v4, v5}, Lcom/rscja/deviceapi/RFIDWithISO15693$TagType;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/rscja/deviceapi/RFIDWithISO15693$TagType;->TI2048:Lcom/rscja/deviceapi/RFIDWithISO15693$TagType;

    new-instance v3, Lcom/rscja/deviceapi/RFIDWithISO15693$TagType;

    const-string v6, "STLRIS64K"

    const/4 v7, 0x2

    const/16 v8, 0x8

    invoke-direct {v3, v6, v7, v8}, Lcom/rscja/deviceapi/RFIDWithISO15693$TagType;-><init>(Ljava/lang/String;II)V

    sput-object v3, Lcom/rscja/deviceapi/RFIDWithISO15693$TagType;->STLRIS64K:Lcom/rscja/deviceapi/RFIDWithISO15693$TagType;

    new-instance v6, Lcom/rscja/deviceapi/RFIDWithISO15693$TagType;

    const-string v8, "NUll_"

    const/4 v9, 0x3

    const/16 v10, 0x64

    invoke-direct {v6, v8, v9, v10}, Lcom/rscja/deviceapi/RFIDWithISO15693$TagType;-><init>(Ljava/lang/String;II)V

    sput-object v6, Lcom/rscja/deviceapi/RFIDWithISO15693$TagType;->NUll_:Lcom/rscja/deviceapi/RFIDWithISO15693$TagType;

    new-array v5, v5, [Lcom/rscja/deviceapi/RFIDWithISO15693$TagType;

    aput-object v0, v5, v2

    aput-object v1, v5, v4

    aput-object v3, v5, v7

    aput-object v6, v5, v9

    .line 2
    sput-object v5, Lcom/rscja/deviceapi/RFIDWithISO15693$TagType;->ENUM$VALUES:[Lcom/rscja/deviceapi/RFIDWithISO15693$TagType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 2
    iput p3, p0, Lcom/rscja/deviceapi/RFIDWithISO15693$TagType;->value:I

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/rscja/deviceapi/RFIDWithISO15693$TagType;
    .locals 1

    .line 1
    const-class v0, Lcom/rscja/deviceapi/RFIDWithISO15693$TagType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/rscja/deviceapi/RFIDWithISO15693$TagType;

    return-object p0
.end method

.method public static values()[Lcom/rscja/deviceapi/RFIDWithISO15693$TagType;
    .locals 4

    .line 1
    sget-object v0, Lcom/rscja/deviceapi/RFIDWithISO15693$TagType;->ENUM$VALUES:[Lcom/rscja/deviceapi/RFIDWithISO15693$TagType;

    array-length v1, v0

    new-array v2, v1, [Lcom/rscja/deviceapi/RFIDWithISO15693$TagType;

    const/4 v3, 0x0

    invoke-static {v0, v3, v2, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v2
.end method


# virtual methods
.method public getValue()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/rscja/deviceapi/RFIDWithISO15693$TagType;->value:I

    return v0
.end method
