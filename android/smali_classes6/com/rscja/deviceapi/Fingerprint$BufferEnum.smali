.class public final enum Lcom/rscja/deviceapi/Fingerprint$BufferEnum;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/rscja/deviceapi/Fingerprint$BufferEnum;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum B1:Lcom/rscja/deviceapi/Fingerprint$BufferEnum;

.field public static final enum B11:Lcom/rscja/deviceapi/Fingerprint$BufferEnum;

.field public static final enum B12:Lcom/rscja/deviceapi/Fingerprint$BufferEnum;

.field public static final enum B2:Lcom/rscja/deviceapi/Fingerprint$BufferEnum;

.field private static final synthetic ENUM$VALUES:[Lcom/rscja/deviceapi/Fingerprint$BufferEnum;


# instance fields
.field private final value:I


# direct methods
.method static constructor <clinit>()V
    .locals 10

    .line 1
    new-instance v0, Lcom/rscja/deviceapi/Fingerprint$BufferEnum;

    const-string v1, "B1"

    const/4 v2, 0x0

    const/4 v3, 0x1

    .line 2
    invoke-direct {v0, v1, v2, v3}, Lcom/rscja/deviceapi/Fingerprint$BufferEnum;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/rscja/deviceapi/Fingerprint$BufferEnum;->B1:Lcom/rscja/deviceapi/Fingerprint$BufferEnum;

    .line 3
    new-instance v1, Lcom/rscja/deviceapi/Fingerprint$BufferEnum;

    const-string v4, "B2"

    const/4 v5, 0x2

    .line 4
    invoke-direct {v1, v4, v3, v5}, Lcom/rscja/deviceapi/Fingerprint$BufferEnum;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/rscja/deviceapi/Fingerprint$BufferEnum;->B2:Lcom/rscja/deviceapi/Fingerprint$BufferEnum;

    .line 5
    new-instance v4, Lcom/rscja/deviceapi/Fingerprint$BufferEnum;

    const-string v6, "B11"

    const/16 v7, 0x11

    .line 6
    invoke-direct {v4, v6, v5, v7}, Lcom/rscja/deviceapi/Fingerprint$BufferEnum;-><init>(Ljava/lang/String;II)V

    sput-object v4, Lcom/rscja/deviceapi/Fingerprint$BufferEnum;->B11:Lcom/rscja/deviceapi/Fingerprint$BufferEnum;

    .line 7
    new-instance v6, Lcom/rscja/deviceapi/Fingerprint$BufferEnum;

    const-string v7, "B12"

    const/4 v8, 0x3

    const/16 v9, 0x12

    .line 8
    invoke-direct {v6, v7, v8, v9}, Lcom/rscja/deviceapi/Fingerprint$BufferEnum;-><init>(Ljava/lang/String;II)V

    sput-object v6, Lcom/rscja/deviceapi/Fingerprint$BufferEnum;->B12:Lcom/rscja/deviceapi/Fingerprint$BufferEnum;

    const/4 v7, 0x4

    new-array v7, v7, [Lcom/rscja/deviceapi/Fingerprint$BufferEnum;

    aput-object v0, v7, v2

    aput-object v1, v7, v3

    aput-object v4, v7, v5

    aput-object v6, v7, v8

    .line 9
    sput-object v7, Lcom/rscja/deviceapi/Fingerprint$BufferEnum;->ENUM$VALUES:[Lcom/rscja/deviceapi/Fingerprint$BufferEnum;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 2
    iput p3, p0, Lcom/rscja/deviceapi/Fingerprint$BufferEnum;->value:I

    return-void
.end method

.method static synthetic access$2(Lcom/rscja/deviceapi/Fingerprint$BufferEnum;)I
    .locals 0

    .line 1
    iget p0, p0, Lcom/rscja/deviceapi/Fingerprint$BufferEnum;->value:I

    return p0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/rscja/deviceapi/Fingerprint$BufferEnum;
    .locals 1

    .line 1
    const-class v0, Lcom/rscja/deviceapi/Fingerprint$BufferEnum;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/rscja/deviceapi/Fingerprint$BufferEnum;

    return-object p0
.end method

.method public static values()[Lcom/rscja/deviceapi/Fingerprint$BufferEnum;
    .locals 4

    .line 1
    sget-object v0, Lcom/rscja/deviceapi/Fingerprint$BufferEnum;->ENUM$VALUES:[Lcom/rscja/deviceapi/Fingerprint$BufferEnum;

    array-length v1, v0

    new-array v2, v1, [Lcom/rscja/deviceapi/Fingerprint$BufferEnum;

    const/4 v3, 0x0

    invoke-static {v0, v3, v2, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v2
.end method


# virtual methods
.method public getValue()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/rscja/deviceapi/Fingerprint$BufferEnum;->value:I

    return v0
.end method
