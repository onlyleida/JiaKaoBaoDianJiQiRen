.class public final Lcom/amap/api/mapcore/util/z8;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation build Landroid/annotation/SuppressLint;
    value = {
        "NewApi"
    }
.end annotation


# static fields
.field protected static N:Ljava/lang/String;

.field protected static O:Ljava/lang/String;


# instance fields
.field protected A:Ljava/lang/String;

.field protected B:Ljava/lang/String;

.field protected C:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/amap/api/mapcore/util/v9;",
            ">;"
        }
    .end annotation
.end field

.field protected D:Ljava/lang/String;

.field protected E:Ljava/lang/String;

.field protected F:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/net/wifi/ScanResult;",
            ">;"
        }
    .end annotation
.end field

.field protected G:Ljava/lang/String;

.field protected H:Ljava/lang/String;

.field protected I:[B

.field private J:[B

.field private K:I

.field protected L:Ljava/lang/String;

.field protected M:Ljava/lang/String;

.field public a:Ljava/lang/String;

.field protected b:S

.field protected c:Ljava/lang/String;

.field protected d:Ljava/lang/String;

.field protected e:Ljava/lang/String;

.field protected f:Ljava/lang/String;

.field protected g:Ljava/lang/String;

.field public h:Ljava/lang/String;

.field public i:Ljava/lang/String;

.field protected j:Ljava/lang/String;

.field protected k:Ljava/lang/String;

.field protected l:Ljava/lang/String;

.field protected m:Ljava/lang/String;

.field protected n:Ljava/lang/String;

.field protected o:Ljava/lang/String;

.field protected p:Ljava/lang/String;

.field protected q:Ljava/lang/String;

.field protected r:Ljava/lang/String;

.field protected s:Ljava/lang/String;

.field protected t:Ljava/lang/String;

.field protected u:Ljava/lang/String;

.field protected v:Ljava/lang/String;

.field protected w:Ljava/lang/String;

.field protected x:Ljava/lang/String;

.field protected y:Ljava/lang/String;

.field protected z:I


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "1"

    iput-object v0, p0, Lcom/amap/api/mapcore/util/z8;->a:Ljava/lang/String;

    const/4 v0, 0x0

    iput-short v0, p0, Lcom/amap/api/mapcore/util/z8;->b:S

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/amap/api/mapcore/util/z8;->c:Ljava/lang/String;

    iput-object v1, p0, Lcom/amap/api/mapcore/util/z8;->d:Ljava/lang/String;

    iput-object v1, p0, Lcom/amap/api/mapcore/util/z8;->e:Ljava/lang/String;

    iput-object v1, p0, Lcom/amap/api/mapcore/util/z8;->f:Ljava/lang/String;

    iput-object v1, p0, Lcom/amap/api/mapcore/util/z8;->g:Ljava/lang/String;

    iput-object v1, p0, Lcom/amap/api/mapcore/util/z8;->h:Ljava/lang/String;

    iput-object v1, p0, Lcom/amap/api/mapcore/util/z8;->i:Ljava/lang/String;

    iput-object v1, p0, Lcom/amap/api/mapcore/util/z8;->j:Ljava/lang/String;

    iput-object v1, p0, Lcom/amap/api/mapcore/util/z8;->k:Ljava/lang/String;

    iput-object v1, p0, Lcom/amap/api/mapcore/util/z8;->l:Ljava/lang/String;

    iput-object v1, p0, Lcom/amap/api/mapcore/util/z8;->m:Ljava/lang/String;

    iput-object v1, p0, Lcom/amap/api/mapcore/util/z8;->n:Ljava/lang/String;

    iput-object v1, p0, Lcom/amap/api/mapcore/util/z8;->o:Ljava/lang/String;

    iput-object v1, p0, Lcom/amap/api/mapcore/util/z8;->p:Ljava/lang/String;

    iput-object v1, p0, Lcom/amap/api/mapcore/util/z8;->q:Ljava/lang/String;

    iput-object v1, p0, Lcom/amap/api/mapcore/util/z8;->r:Ljava/lang/String;

    iput-object v1, p0, Lcom/amap/api/mapcore/util/z8;->s:Ljava/lang/String;

    iput-object v1, p0, Lcom/amap/api/mapcore/util/z8;->t:Ljava/lang/String;

    iput-object v1, p0, Lcom/amap/api/mapcore/util/z8;->u:Ljava/lang/String;

    iput-object v1, p0, Lcom/amap/api/mapcore/util/z8;->v:Ljava/lang/String;

    iput-object v1, p0, Lcom/amap/api/mapcore/util/z8;->w:Ljava/lang/String;

    iput-object v1, p0, Lcom/amap/api/mapcore/util/z8;->x:Ljava/lang/String;

    iput-object v1, p0, Lcom/amap/api/mapcore/util/z8;->y:Ljava/lang/String;

    iput v0, p0, Lcom/amap/api/mapcore/util/z8;->z:I

    iput-object v1, p0, Lcom/amap/api/mapcore/util/z8;->A:Ljava/lang/String;

    iput-object v1, p0, Lcom/amap/api/mapcore/util/z8;->B:Ljava/lang/String;

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lcom/amap/api/mapcore/util/z8;->C:Ljava/util/ArrayList;

    iput-object v1, p0, Lcom/amap/api/mapcore/util/z8;->D:Ljava/lang/String;

    iput-object v1, p0, Lcom/amap/api/mapcore/util/z8;->E:Ljava/lang/String;

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lcom/amap/api/mapcore/util/z8;->F:Ljava/util/ArrayList;

    iput-object v1, p0, Lcom/amap/api/mapcore/util/z8;->G:Ljava/lang/String;

    iput-object v1, p0, Lcom/amap/api/mapcore/util/z8;->H:Ljava/lang/String;

    iput-object v1, p0, Lcom/amap/api/mapcore/util/z8;->I:[B

    iput-object v1, p0, Lcom/amap/api/mapcore/util/z8;->J:[B

    iput v0, p0, Lcom/amap/api/mapcore/util/z8;->K:I

    iput-object v1, p0, Lcom/amap/api/mapcore/util/z8;->L:Ljava/lang/String;

    iput-object v1, p0, Lcom/amap/api/mapcore/util/z8;->M:Ljava/lang/String;

    return-void
.end method

.method private static a(Ljava/lang/String;[BI)I
    .locals 3

    const/4 v0, 0x0

    :try_start_0
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    aput-byte v0, p1, p2

    goto :goto_0

    :cond_0
    const-string v1, "GBK"

    invoke-virtual {p0, v1}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object p0

    array-length v1, p0

    const/16 v2, 0x7f

    if-le v1, v2, :cond_1

    const/16 v1, 0x7f

    :cond_1
    int-to-byte v2, v1

    aput-byte v2, p1, p2

    add-int/lit8 p2, p2, 0x1

    invoke-static {p0, v0, p1, p2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    add-int/2addr p2, v1

    goto :goto_1

    :catchall_0
    move-exception p0

    const-string v1, "Req"

    const-string v2, "copyContentWithByteLen"

    invoke-static {p0, v1, v2}, Lcom/amap/api/mapcore/util/b9;->b(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    aput-byte v0, p1, p2

    :goto_0
    add-int/lit8 p2, p2, 0x1

    :goto_1
    return p2
.end method

.method private b(Ljava/lang/String;I)Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lcom/amap/api/mapcore/util/z8;->B:Ljava/lang/String;

    const-string v1, "\\*"

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    aget-object p2, v0, p2

    const-string v0, ","

    invoke-virtual {p2, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p2

    const-string v0, "lac"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p1, 0x0

    aget-object p1, p2, p1

    return-object p1

    :cond_0
    const-string v0, "cellid"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 p1, 0x1

    aget-object p1, p2, p1

    return-object p1

    :cond_1
    const-string v0, "signal"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    const/4 p1, 0x2

    aget-object p1, p2, p1

    return-object p1

    :cond_2
    const/4 p1, 0x0

    return-object p1
.end method

.method private e(Ljava/lang/String;)[B
    .locals 6

    const-string v0, ":"

    invoke-virtual {p1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x6

    new-array v2, v1, [B

    const/4 v3, 0x0

    if-eqz v0, :cond_0

    :try_start_0
    array-length v4, v0

    if-eq v4, v1, :cond_1

    :cond_0
    new-array v0, v1, [Ljava/lang/String;

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v1, :cond_1

    const-string v5, "0"

    aput-object v5, v0, v4

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :goto_1
    array-length v4, v0

    if-ge v1, v4, :cond_3

    aget-object v4, v0, v1

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    const/4 v5, 0x2

    if-le v4, v5, :cond_2

    aget-object v4, v0, v1

    invoke-virtual {v4, v3, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v0, v1

    :cond_2
    aget-object v4, v0, v1

    const/16 v5, 0x10

    invoke-static {v4, v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v4

    int-to-byte v4, v4

    aput-byte v4, v2, v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :catchall_0
    move-exception v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "getMacBa "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v1, "Req"

    invoke-static {v0, v1, p1}, Lcom/amap/api/mapcore/util/b9;->b(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "00:00:00:00:00:00"

    invoke-direct {p0, p1}, Lcom/amap/api/mapcore/util/z8;->e(Ljava/lang/String;)[B

    move-result-object v2

    :cond_3
    return-object v2
.end method

.method private f(Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    iget-object v0, p0, Lcom/amap/api/mapcore/util/z8;->A:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ">"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string p1, "0"

    return-object p1

    :cond_0
    iget-object v0, p0, Lcom/amap/api/mapcore/util/z8;->A:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    iget-object v1, p0, Lcom/amap/api/mapcore/util/z8;->A:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "</"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    iget-object v2, p0, Lcom/amap/api/mapcore/util/z8;->A:Ljava/lang/String;

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p1

    add-int/2addr v0, p1

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {v2, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method private g()V
    .locals 5

    const/16 v0, 0x1c

    new-array v1, v0, [Ljava/lang/String;

    iget-object v2, p0, Lcom/amap/api/mapcore/util/z8;->a:Ljava/lang/String;

    const/4 v3, 0x0

    aput-object v2, v1, v3

    iget-object v2, p0, Lcom/amap/api/mapcore/util/z8;->c:Ljava/lang/String;

    const/4 v4, 0x1

    aput-object v2, v1, v4

    iget-object v2, p0, Lcom/amap/api/mapcore/util/z8;->d:Ljava/lang/String;

    const/4 v4, 0x2

    aput-object v2, v1, v4

    iget-object v2, p0, Lcom/amap/api/mapcore/util/z8;->e:Ljava/lang/String;

    const/4 v4, 0x3

    aput-object v2, v1, v4

    iget-object v2, p0, Lcom/amap/api/mapcore/util/z8;->f:Ljava/lang/String;

    const/4 v4, 0x4

    aput-object v2, v1, v4

    iget-object v2, p0, Lcom/amap/api/mapcore/util/z8;->g:Ljava/lang/String;

    const/4 v4, 0x5

    aput-object v2, v1, v4

    iget-object v2, p0, Lcom/amap/api/mapcore/util/z8;->h:Ljava/lang/String;

    const/4 v4, 0x6

    aput-object v2, v1, v4

    iget-object v2, p0, Lcom/amap/api/mapcore/util/z8;->i:Ljava/lang/String;

    const/4 v4, 0x7

    aput-object v2, v1, v4

    iget-object v2, p0, Lcom/amap/api/mapcore/util/z8;->l:Ljava/lang/String;

    const/16 v4, 0x8

    aput-object v2, v1, v4

    iget-object v2, p0, Lcom/amap/api/mapcore/util/z8;->m:Ljava/lang/String;

    const/16 v4, 0x9

    aput-object v2, v1, v4

    iget-object v2, p0, Lcom/amap/api/mapcore/util/z8;->n:Ljava/lang/String;

    const/16 v4, 0xa

    aput-object v2, v1, v4

    iget-object v2, p0, Lcom/amap/api/mapcore/util/z8;->o:Ljava/lang/String;

    const/16 v4, 0xb

    aput-object v2, v1, v4

    iget-object v2, p0, Lcom/amap/api/mapcore/util/z8;->p:Ljava/lang/String;

    const/16 v4, 0xc

    aput-object v2, v1, v4

    iget-object v2, p0, Lcom/amap/api/mapcore/util/z8;->q:Ljava/lang/String;

    const/16 v4, 0xd

    aput-object v2, v1, v4

    iget-object v2, p0, Lcom/amap/api/mapcore/util/z8;->r:Ljava/lang/String;

    const/16 v4, 0xe

    aput-object v2, v1, v4

    iget-object v2, p0, Lcom/amap/api/mapcore/util/z8;->s:Ljava/lang/String;

    const/16 v4, 0xf

    aput-object v2, v1, v4

    iget-object v2, p0, Lcom/amap/api/mapcore/util/z8;->t:Ljava/lang/String;

    const/16 v4, 0x10

    aput-object v2, v1, v4

    iget-object v2, p0, Lcom/amap/api/mapcore/util/z8;->u:Ljava/lang/String;

    const/16 v4, 0x11

    aput-object v2, v1, v4

    iget-object v2, p0, Lcom/amap/api/mapcore/util/z8;->v:Ljava/lang/String;

    const/16 v4, 0x12

    aput-object v2, v1, v4

    iget-object v2, p0, Lcom/amap/api/mapcore/util/z8;->w:Ljava/lang/String;

    const/16 v4, 0x13

    aput-object v2, v1, v4

    iget-object v2, p0, Lcom/amap/api/mapcore/util/z8;->x:Ljava/lang/String;

    const/16 v4, 0x14

    aput-object v2, v1, v4

    iget-object v2, p0, Lcom/amap/api/mapcore/util/z8;->A:Ljava/lang/String;

    const/16 v4, 0x15

    aput-object v2, v1, v4

    iget-object v2, p0, Lcom/amap/api/mapcore/util/z8;->B:Ljava/lang/String;

    const/16 v4, 0x16

    aput-object v2, v1, v4

    iget-object v2, p0, Lcom/amap/api/mapcore/util/z8;->E:Ljava/lang/String;

    const/16 v4, 0x17

    aput-object v2, v1, v4

    iget-object v2, p0, Lcom/amap/api/mapcore/util/z8;->G:Ljava/lang/String;

    const/16 v4, 0x18

    aput-object v2, v1, v4

    iget-object v2, p0, Lcom/amap/api/mapcore/util/z8;->H:Ljava/lang/String;

    const/16 v4, 0x19

    aput-object v2, v1, v4

    sget-object v2, Lcom/amap/api/mapcore/util/z8;->N:Ljava/lang/String;

    const/16 v4, 0x1a

    aput-object v2, v1, v4

    iget-object v2, p0, Lcom/amap/api/mapcore/util/z8;->M:Ljava/lang/String;

    const/16 v4, 0x1b

    aput-object v2, v1, v4

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_1

    aget-object v4, v1, v2

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_0

    const-string v4, ""

    aput-object v4, v1, v2

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/amap/api/mapcore/util/z8;->j:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const-string v1, "2"

    const-string v2, "0"

    if-eqz v0, :cond_2

    :goto_1
    iput-object v2, p0, Lcom/amap/api/mapcore/util/z8;->j:Ljava/lang/String;

    goto :goto_2

    :cond_2
    iget-object v0, p0, Lcom/amap/api/mapcore/util/z8;->j:Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/amap/api/mapcore/util/z8;->j:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    goto :goto_1

    :cond_3
    :goto_2
    iget-object v0, p0, Lcom/amap/api/mapcore/util/z8;->k:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const-string v4, "1"

    if-eqz v0, :cond_4

    :goto_3
    iput-object v2, p0, Lcom/amap/api/mapcore/util/z8;->k:Ljava/lang/String;

    goto :goto_4

    :cond_4
    iget-object v0, p0, Lcom/amap/api/mapcore/util/z8;->k:Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_5

    iget-object v0, p0, Lcom/amap/api/mapcore/util/z8;->k:Ljava/lang/String;

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_5

    goto :goto_3

    :cond_5
    :goto_4
    iget-object v0, p0, Lcom/amap/api/mapcore/util/z8;->y:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_6

    :goto_5
    iput-object v2, p0, Lcom/amap/api/mapcore/util/z8;->y:Ljava/lang/String;

    goto :goto_6

    :cond_6
    iget-object v0, p0, Lcom/amap/api/mapcore/util/z8;->y:Ljava/lang/String;

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_7

    iget-object v0, p0, Lcom/amap/api/mapcore/util/z8;->y:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_7

    goto :goto_5

    :cond_7
    :goto_6
    iget v0, p0, Lcom/amap/api/mapcore/util/z8;->z:I

    invoke-static {v0}, Lcom/amap/api/mapcore/util/w9;->p(I)Z

    move-result v0

    if-nez v0, :cond_8

    iput v3, p0, Lcom/amap/api/mapcore/util/z8;->z:I

    :cond_8
    iget-object v0, p0, Lcom/amap/api/mapcore/util/z8;->I:[B

    if-nez v0, :cond_9

    new-array v0, v3, [B

    iput-object v0, p0, Lcom/amap/api/mapcore/util/z8;->I:[B

    :cond_9
    return-void
.end method


# virtual methods
.method public final c(Landroid/content/Context;ZZLcom/amap/api/mapcore/util/w9;Lcom/amap/api/mapcore/util/v8;Landroid/net/ConnectivityManager;Ljava/lang/String;)V
    .locals 25

    move-object/from16 v1, p0

    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    invoke-static/range {p1 .. p1}, Lcom/amap/api/mapcore/util/c5;->j(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    invoke-static {}, Lcom/amap/api/mapcore/util/g9;->A()I

    move-result v4

    move-object/from16 v0, p7

    iput-object v0, v1, Lcom/amap/api/mapcore/util/z8;->L:Ljava/lang/String;

    if-nez p3, :cond_0

    const-string v0, "UC_nlp_20131029"

    const-string v5, "BKZCHMBBSSUK7U8GLUKHBB56CCFF78U"

    goto :goto_0

    :cond_0
    const-string v0, "api_serverSDK_130905"

    const-string v5, "S128DF1572465B890OE3F7A13167KLEI"

    :goto_0
    move-object v6, v5

    move-object v5, v0

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual/range {p4 .. p4}, Lcom/amap/api/mapcore/util/w9;->E()I

    move-result v8

    invoke-virtual/range {p4 .. p4}, Lcom/amap/api/mapcore/util/w9;->G()I

    move-result v9

    invoke-virtual/range {p4 .. p4}, Lcom/amap/api/mapcore/util/w9;->I()Landroid/telephony/TelephonyManager;

    move-result-object v10

    invoke-virtual/range {p4 .. p4}, Lcom/amap/api/mapcore/util/w9;->y()Ljava/util/ArrayList;

    move-result-object v11

    invoke-virtual/range {p4 .. p4}, Lcom/amap/api/mapcore/util/w9;->B()Ljava/util/ArrayList;

    move-result-object v12

    invoke-virtual/range {p5 .. p5}, Lcom/amap/api/mapcore/util/v8;->a()Ljava/util/ArrayList;

    move-result-object v13

    const-string v14, "1"

    const/4 v15, 0x2

    move-object/from16 p3, v14

    const-string v14, "0"

    if-ne v9, v15, :cond_1

    move-object/from16 v16, p3

    goto :goto_1

    :cond_1
    move-object/from16 v16, v14

    :goto_1
    const-string v15, "Aps"

    if-eqz v10, :cond_5

    sget-object v0, Lcom/amap/api/mapcore/util/b9;->d:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    :try_start_0
    invoke-static/range {p1 .. p1}, Lcom/amap/api/mapcore/util/g5;->a0(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/amap/api/mapcore/util/b9;->d:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_2

    :catchall_0
    move-exception v0

    move/from16 v17, v4

    const-string v4, "getApsReq part4"

    invoke-static {v0, v15, v4}, Lcom/amap/api/mapcore/util/b9;->b(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_3

    :cond_2
    :goto_2
    move/from16 v17, v4

    :goto_3
    sget-object v0, Lcom/amap/api/mapcore/util/b9;->d:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const-string v4, "888888888888888"

    move-object/from16 v18, v3

    const/16 v3, 0x1d

    if-eqz v0, :cond_3

    if-ge v2, v3, :cond_3

    sput-object v4, Lcom/amap/api/mapcore/util/b9;->d:Ljava/lang/String;

    :cond_3
    sget-object v0, Lcom/amap/api/mapcore/util/b9;->e:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_4

    :try_start_1
    invoke-static/range {p1 .. p1}, Lcom/amap/api/mapcore/util/g5;->c0(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/amap/api/mapcore/util/b9;->e:Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/SecurityException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_4

    :catchall_1
    move-exception v0

    const-string v3, "getApsReq part2"

    invoke-static {v0, v15, v3}, Lcom/amap/api/mapcore/util/b9;->b(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_4

    :catch_0
    nop

    :cond_4
    :goto_4
    sget-object v0, Lcom/amap/api/mapcore/util/b9;->e:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_6

    const/16 v3, 0x1d

    if-ge v2, v3, :cond_6

    sput-object v4, Lcom/amap/api/mapcore/util/b9;->e:Ljava/lang/String;

    goto :goto_5

    :cond_5
    move-object/from16 v18, v3

    move/from16 v17, v4

    :cond_6
    :goto_5
    :try_start_2
    invoke-virtual/range {p6 .. p6}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    goto :goto_6

    :catchall_2
    move-exception v0

    move-object v3, v0

    const-string v0, "getApsReq part"

    invoke-static {v3, v15, v0}, Lcom/amap/api/mapcore/util/b9;->b(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    :goto_6
    invoke-virtual/range {p5 .. p6}, Lcom/amap/api/mapcore/util/v8;->d(Landroid/net/ConnectivityManager;)Z

    move-result v3

    invoke-static {v0}, Lcom/amap/api/mapcore/util/g9;->e(Landroid/net/NetworkInfo;)I

    move-result v0

    const/4 v4, -0x1

    const-string v15, ""

    if-eq v0, v4, :cond_8

    invoke-static {v10}, Lcom/amap/api/mapcore/util/g9;->s(Landroid/telephony/TelephonyManager;)Ljava/lang/String;

    move-result-object v0

    if-eqz v3, :cond_7

    const-string v4, "2"

    goto :goto_7

    :cond_7
    move-object/from16 v4, p3

    goto :goto_7

    :cond_8
    move-object v0, v15

    move-object v4, v0

    :goto_7
    invoke-virtual {v11}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v10

    const-string v2, "*"

    move-object/from16 v19, v4

    const-string v4, ","

    move-object/from16 p6, v0

    if-nez v10, :cond_e

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "</signal>"

    move-object/from16 v20, v15

    const-string v15, "<signal>"

    move-object/from16 v21, v14

    const-string v14, "</mcc>"

    move-object/from16 v22, v6

    const-string v6, "<mcc>"

    move-object/from16 v23, v5

    const/4 v5, 0x1

    if-eq v9, v5, :cond_b

    const/4 v5, 0x2

    if-eq v9, v5, :cond_9

    move-object/from16 v24, v13

    move-object/from16 v0, v20

    goto/16 :goto_9

    :cond_9
    const/4 v5, 0x0

    invoke-virtual {v11, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/amap/api/mapcore/util/v9;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->length()I

    move-result v11

    invoke-virtual {v10, v5, v11}, Ljava/lang/StringBuilder;->delete(II)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v5, v9, Lcom/amap/api/mapcore/util/v9;->a:I

    invoke-virtual {v10, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "<sid>"

    invoke-virtual {v10, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v5, v9, Lcom/amap/api/mapcore/util/v9;->g:I

    invoke-virtual {v10, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, "</sid>"

    invoke-virtual {v10, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "<nid>"

    invoke-virtual {v10, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v5, v9, Lcom/amap/api/mapcore/util/v9;->h:I

    invoke-virtual {v10, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, "</nid>"

    invoke-virtual {v10, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "<bid>"

    invoke-virtual {v10, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v5, v9, Lcom/amap/api/mapcore/util/v9;->i:I

    invoke-virtual {v10, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, "</bid>"

    invoke-virtual {v10, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v5, v9, Lcom/amap/api/mapcore/util/v9;->f:I

    if-lez v5, :cond_a

    iget v5, v9, Lcom/amap/api/mapcore/util/v9;->e:I

    if-lez v5, :cond_a

    const-string v5, "<lon>"

    invoke-virtual {v10, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v5, v9, Lcom/amap/api/mapcore/util/v9;->f:I

    invoke-virtual {v10, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, "</lon>"

    invoke-virtual {v10, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "<lat>"

    invoke-virtual {v10, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v5, v9, Lcom/amap/api/mapcore/util/v9;->e:I

    invoke-virtual {v10, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, "</lat>"

    invoke-virtual {v10, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_a
    invoke-virtual {v10, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v5, v9, Lcom/amap/api/mapcore/util/v9;->j:I

    invoke-virtual {v10, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    move-object/from16 v24, v13

    goto/16 :goto_9

    :cond_b
    const/4 v5, 0x0

    invoke-virtual {v11, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/amap/api/mapcore/util/v9;

    move-object/from16 v24, v13

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->length()I

    move-result v13

    invoke-virtual {v10, v5, v13}, Ljava/lang/StringBuilder;->delete(II)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v5, v9, Lcom/amap/api/mapcore/util/v9;->a:I

    invoke-virtual {v10, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "<mnc>"

    invoke-virtual {v10, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v5, v9, Lcom/amap/api/mapcore/util/v9;->b:I

    invoke-virtual {v10, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, "</mnc>"

    invoke-virtual {v10, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "<lac>"

    invoke-virtual {v10, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v5, v9, Lcom/amap/api/mapcore/util/v9;->c:I

    invoke-virtual {v10, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, "</lac>"

    invoke-virtual {v10, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "<cellid>"

    invoke-virtual {v10, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v5, v9, Lcom/amap/api/mapcore/util/v9;->d:I

    invoke-virtual {v10, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, "</cellid>"

    invoke-virtual {v10, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v5, v9, Lcom/amap/api/mapcore/util/v9;->j:I

    invoke-virtual {v10, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v5, 0x1

    :goto_8
    invoke-virtual {v11}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-ge v5, v6, :cond_d

    invoke-virtual {v11, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/amap/api/mapcore/util/v9;

    iget v9, v6, Lcom/amap/api/mapcore/util/v9;->c:I

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v9, v6, Lcom/amap/api/mapcore/util/v9;->d:I

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v6, v6, Lcom/amap/api/mapcore/util/v9;->j:I

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/util/ArrayList;->size()I

    move-result v6

    const/4 v9, 0x1

    sub-int/2addr v6, v9

    if-ge v5, v6, :cond_c

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_c
    add-int/lit8 v5, v5, 0x1

    goto :goto_8

    :cond_d
    :goto_9
    invoke-virtual {v10}, Ljava/lang/StringBuilder;->length()I

    move-result v5

    const/4 v6, 0x0

    invoke-virtual {v10, v6, v5}, Ljava/lang/StringBuilder;->delete(II)Ljava/lang/StringBuilder;

    goto :goto_a

    :cond_e
    move-object/from16 v23, v5

    move-object/from16 v22, v6

    move-object/from16 v24, v13

    move-object/from16 v21, v14

    move-object/from16 v20, v15

    move-object/from16 v0, v20

    :goto_a
    and-int/lit8 v5, v8, 0x4

    const/4 v6, 0x4

    if-ne v5, v6, :cond_f

    invoke-virtual {v12}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_f

    iget-object v5, v1, Lcom/amap/api/mapcore/util/z8;->C:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->clear()V

    iget-object v5, v1, Lcom/amap/api/mapcore/util/z8;->C:Ljava/util/ArrayList;

    invoke-virtual {v5, v12}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    goto :goto_b

    :cond_f
    iget-object v5, v1, Lcom/amap/api/mapcore/util/z8;->C:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->clear()V

    :goto_b
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual/range {p5 .. p5}, Lcom/amap/api/mapcore/util/v8;->m()Z

    move-result v6

    if-eqz v6, :cond_14

    if-eqz v3, :cond_13

    invoke-virtual/range {p5 .. p5}, Lcom/amap/api/mapcore/util/v8;->n()Landroid/net/wifi/WifiInfo;

    move-result-object v3

    invoke-static {v3}, Lcom/amap/api/mapcore/util/v8;->e(Landroid/net/wifi/WifiInfo;)Z

    move-result v6

    if-eqz v6, :cond_13

    invoke-virtual {v3}, Landroid/net/wifi/WifiInfo;->getBSSID()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Landroid/net/wifi/WifiInfo;->getRssi()I

    move-result v6

    const/16 v9, -0x80

    if-ge v6, v9, :cond_10

    :goto_c
    const/4 v6, 0x0

    goto :goto_d

    :cond_10
    const/16 v9, 0x7f

    if-le v6, v9, :cond_11

    goto :goto_c

    :cond_11
    :goto_d
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Landroid/net/wifi/WifiInfo;->getSSID()Ljava/lang/String;

    move-result-object v4

    const/16 v6, 0x20

    :try_start_3
    invoke-virtual {v3}, Landroid/net/wifi/WifiInfo;->getSSID()Ljava/lang/String;

    move-result-object v3

    const-string v9, "UTF-8"

    invoke-virtual {v3, v9}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v3

    array-length v3, v3
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_e

    :catch_1
    const/16 v3, 0x20

    :goto_e
    if-lt v3, v6, :cond_12

    const-string v4, "unkwn"

    :cond_12
    const-string v3, "."

    invoke-virtual {v4, v2, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_13
    if-eqz v24, :cond_15

    iget-object v2, v1, Lcom/amap/api/mapcore/util/z8;->F:Ljava/util/ArrayList;

    if-eqz v2, :cond_15

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    iget-object v2, v1, Lcom/amap/api/mapcore/util/z8;->F:Ljava/util/ArrayList;

    move-object/from16 v3, v24

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    goto :goto_f

    :cond_14
    invoke-virtual/range {p5 .. p5}, Lcom/amap/api/mapcore/util/v8;->f()V

    iget-object v2, v1, Lcom/amap/api/mapcore/util/z8;->F:Ljava/util/ArrayList;

    if-eqz v2, :cond_15

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    :cond_15
    :goto_f
    const/4 v2, 0x0

    iput-short v2, v1, Lcom/amap/api/mapcore/util/z8;->b:S

    if-nez p2, :cond_16

    const/4 v3, 0x2

    or-int/2addr v3, v2

    int-to-short v2, v3

    iput-short v2, v1, Lcom/amap/api/mapcore/util/z8;->b:S

    :cond_16
    move-object/from16 v2, v23

    iput-object v2, v1, Lcom/amap/api/mapcore/util/z8;->c:Ljava/lang/String;

    move-object/from16 v2, v22

    iput-object v2, v1, Lcom/amap/api/mapcore/util/z8;->d:Ljava/lang/String;

    sget-object v2, Landroid/os/Build;->MODEL:Ljava/lang/String;

    iput-object v2, v1, Lcom/amap/api/mapcore/util/z8;->f:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "android"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v3, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/amap/api/mapcore/util/z8;->g:Ljava/lang/String;

    invoke-static/range {p1 .. p1}, Lcom/amap/api/mapcore/util/g9;->r(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/amap/api/mapcore/util/z8;->h:Ljava/lang/String;

    move-object/from16 v14, v16

    iput-object v14, v1, Lcom/amap/api/mapcore/util/z8;->i:Ljava/lang/String;

    move-object/from16 v2, v21

    iput-object v2, v1, Lcom/amap/api/mapcore/util/z8;->j:Ljava/lang/String;

    iput-object v2, v1, Lcom/amap/api/mapcore/util/z8;->k:Ljava/lang/String;

    iput-object v2, v1, Lcom/amap/api/mapcore/util/z8;->l:Ljava/lang/String;

    iput-object v2, v1, Lcom/amap/api/mapcore/util/z8;->m:Ljava/lang/String;

    iput-object v2, v1, Lcom/amap/api/mapcore/util/z8;->n:Ljava/lang/String;

    move-object/from16 v2, v18

    iput-object v2, v1, Lcom/amap/api/mapcore/util/z8;->o:Ljava/lang/String;

    sget-object v2, Lcom/amap/api/mapcore/util/b9;->d:Ljava/lang/String;

    iput-object v2, v1, Lcom/amap/api/mapcore/util/z8;->p:Ljava/lang/String;

    sget-object v2, Lcom/amap/api/mapcore/util/b9;->e:Ljava/lang/String;

    iput-object v2, v1, Lcom/amap/api/mapcore/util/z8;->q:Ljava/lang/String;

    invoke-static/range {v17 .. v17}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/amap/api/mapcore/util/z8;->s:Ljava/lang/String;

    invoke-static/range {p1 .. p1}, Lcom/amap/api/mapcore/util/g9;->C(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/amap/api/mapcore/util/z8;->t:Ljava/lang/String;

    const-string v2, "4.9.0"

    iput-object v2, v1, Lcom/amap/api/mapcore/util/z8;->v:Ljava/lang/String;

    const/4 v2, 0x0

    iput-object v2, v1, Lcom/amap/api/mapcore/util/z8;->w:Ljava/lang/String;

    move-object/from16 v2, v20

    iput-object v2, v1, Lcom/amap/api/mapcore/util/z8;->u:Ljava/lang/String;

    move-object/from16 v15, p6

    iput-object v15, v1, Lcom/amap/api/mapcore/util/z8;->x:Ljava/lang/String;

    move-object/from16 v15, v19

    iput-object v15, v1, Lcom/amap/api/mapcore/util/z8;->y:Ljava/lang/String;

    iput v8, v1, Lcom/amap/api/mapcore/util/z8;->z:I

    iput-object v0, v1, Lcom/amap/api/mapcore/util/z8;->A:Ljava/lang/String;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lcom/amap/api/mapcore/util/z8;->B:Ljava/lang/String;

    invoke-virtual/range {p4 .. p4}, Lcom/amap/api/mapcore/util/w9;->L()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lcom/amap/api/mapcore/util/z8;->D:Ljava/lang/String;

    invoke-static {}, Lcom/amap/api/mapcore/util/v8;->q()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lcom/amap/api/mapcore/util/z8;->G:Ljava/lang/String;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lcom/amap/api/mapcore/util/z8;->E:Ljava/lang/String;

    :try_start_4
    sget-object v0, Lcom/amap/api/mapcore/util/z8;->N:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_17

    invoke-static/range {p1 .. p1}, Lcom/amap/api/mapcore/util/g5;->M(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/amap/api/mapcore/util/z8;->N:Ljava/lang/String;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_3

    :catchall_3
    :cond_17
    :try_start_5
    sget-object v0, Lcom/amap/api/mapcore/util/z8;->O:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_18

    invoke-static/range {p1 .. p1}, Lcom/amap/api/mapcore/util/g5;->B(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/amap/api/mapcore/util/z8;->O:Ljava/lang/String;
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_4

    :catchall_4
    :cond_18
    :try_start_6
    iget-object v0, v1, Lcom/amap/api/mapcore/util/z8;->M:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_19

    invoke-static/range {p1 .. p1}, Lcom/amap/api/mapcore/util/g5;->N(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lcom/amap/api/mapcore/util/z8;->M:Ljava/lang/String;
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_5

    :catchall_5
    :cond_19
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    const/4 v2, 0x0

    invoke-virtual {v7, v2, v0}, Ljava/lang/StringBuilder;->delete(II)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    invoke-virtual {v5, v2, v0}, Ljava/lang/StringBuilder;->delete(II)Ljava/lang/StringBuilder;

    return-void
.end method

.method public final d()[B
    .locals 22

    move-object/from16 v1, p0

    const-string v2, "Req"

    invoke-direct/range {p0 .. p0}, Lcom/amap/api/mapcore/util/z8;->g()V

    const/4 v3, 0x2

    new-array v4, v3, [B

    const/4 v5, 0x4

    new-array v6, v5, [B

    iget-object v0, v1, Lcom/amap/api/mapcore/util/z8;->I:[B

    const/16 v7, 0x1000

    const/4 v8, 0x1

    if-eqz v0, :cond_0

    array-length v0, v0

    add-int/2addr v0, v8

    add-int/2addr v7, v0

    :cond_0
    iget-object v0, v1, Lcom/amap/api/mapcore/util/z8;->J:[B

    if-eqz v0, :cond_1

    iget v9, v1, Lcom/amap/api/mapcore/util/z8;->K:I

    if-le v7, v9, :cond_2

    :cond_1
    new-array v0, v7, [B

    iput-object v0, v1, Lcom/amap/api/mapcore/util/z8;->J:[B

    iput v7, v1, Lcom/amap/api/mapcore/util/z8;->K:I

    :cond_2
    move-object v7, v0

    iget-object v0, v1, Lcom/amap/api/mapcore/util/z8;->a:Ljava/lang/String;

    invoke-static {v0}, Lcom/amap/api/mapcore/util/g9;->D(Ljava/lang/String;)B

    move-result v0

    const/4 v9, 0x0

    aput-byte v0, v7, v9

    iget-short v0, v1, Lcom/amap/api/mapcore/util/z8;->b:S

    const/4 v10, 0x0

    invoke-static {v0, v10}, Lcom/amap/api/mapcore/util/g9;->k(I[B)[B

    move-result-object v0

    array-length v11, v0

    invoke-static {v0, v9, v7, v8, v11}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    array-length v0, v0

    add-int/2addr v0, v8

    iget-object v11, v1, Lcom/amap/api/mapcore/util/z8;->c:Ljava/lang/String;

    invoke-static {v11, v7, v0}, Lcom/amap/api/mapcore/util/z8;->a(Ljava/lang/String;[BI)I

    move-result v0

    iget-object v11, v1, Lcom/amap/api/mapcore/util/z8;->d:Ljava/lang/String;

    invoke-static {v11, v7, v0}, Lcom/amap/api/mapcore/util/z8;->a(Ljava/lang/String;[BI)I

    move-result v0

    iget-object v11, v1, Lcom/amap/api/mapcore/util/z8;->o:Ljava/lang/String;

    invoke-static {v11, v7, v0}, Lcom/amap/api/mapcore/util/z8;->a(Ljava/lang/String;[BI)I

    move-result v0

    iget-object v11, v1, Lcom/amap/api/mapcore/util/z8;->e:Ljava/lang/String;

    invoke-static {v11, v7, v0}, Lcom/amap/api/mapcore/util/z8;->a(Ljava/lang/String;[BI)I

    move-result v0

    iget-object v11, v1, Lcom/amap/api/mapcore/util/z8;->f:Ljava/lang/String;

    invoke-static {v11, v7, v0}, Lcom/amap/api/mapcore/util/z8;->a(Ljava/lang/String;[BI)I

    move-result v0

    iget-object v11, v1, Lcom/amap/api/mapcore/util/z8;->g:Ljava/lang/String;

    invoke-static {v11, v7, v0}, Lcom/amap/api/mapcore/util/z8;->a(Ljava/lang/String;[BI)I

    move-result v0

    iget-object v11, v1, Lcom/amap/api/mapcore/util/z8;->u:Ljava/lang/String;

    invoke-static {v11, v7, v0}, Lcom/amap/api/mapcore/util/z8;->a(Ljava/lang/String;[BI)I

    move-result v0

    iget-object v11, v1, Lcom/amap/api/mapcore/util/z8;->h:Ljava/lang/String;

    invoke-static {v11, v7, v0}, Lcom/amap/api/mapcore/util/z8;->a(Ljava/lang/String;[BI)I

    move-result v0

    iget-object v11, v1, Lcom/amap/api/mapcore/util/z8;->p:Ljava/lang/String;

    invoke-static {v11, v7, v0}, Lcom/amap/api/mapcore/util/z8;->a(Ljava/lang/String;[BI)I

    move-result v0

    iget-object v11, v1, Lcom/amap/api/mapcore/util/z8;->q:Ljava/lang/String;

    invoke-static {v11, v7, v0}, Lcom/amap/api/mapcore/util/z8;->a(Ljava/lang/String;[BI)I

    move-result v11

    :try_start_0
    iget-object v0, v1, Lcom/amap/api/mapcore/util/z8;->t:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_3

    aput-byte v9, v7, v11

    goto :goto_0

    :cond_3
    iget-object v0, v1, Lcom/amap/api/mapcore/util/z8;->t:Ljava/lang/String;

    invoke-direct {v1, v0}, Lcom/amap/api/mapcore/util/z8;->e(Ljava/lang/String;)[B

    move-result-object v0

    array-length v12, v0

    int-to-byte v12, v12

    aput-byte v12, v7, v11

    add-int/lit8 v11, v11, 0x1

    array-length v12, v0

    invoke-static {v0, v9, v7, v11, v12}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    array-length v0, v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    add-int/2addr v11, v0

    goto :goto_1

    :catchall_0
    move-exception v0

    const-string v12, "buildV4Dot219"

    invoke-static {v0, v2, v12}, Lcom/amap/api/mapcore/util/b9;->b(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    aput-byte v9, v7, v11

    :goto_0
    add-int/2addr v11, v8

    :goto_1
    iget-object v0, v1, Lcom/amap/api/mapcore/util/z8;->v:Ljava/lang/String;

    invoke-static {v0, v7, v11}, Lcom/amap/api/mapcore/util/z8;->a(Ljava/lang/String;[BI)I

    move-result v0

    iget-object v11, v1, Lcom/amap/api/mapcore/util/z8;->w:Ljava/lang/String;

    invoke-static {v11, v7, v0}, Lcom/amap/api/mapcore/util/z8;->a(Ljava/lang/String;[BI)I

    move-result v0

    sget-object v11, Lcom/amap/api/mapcore/util/z8;->N:Ljava/lang/String;

    invoke-static {v11, v7, v0}, Lcom/amap/api/mapcore/util/z8;->a(Ljava/lang/String;[BI)I

    move-result v0

    sget-object v11, Lcom/amap/api/mapcore/util/z8;->O:Ljava/lang/String;

    invoke-static {v11, v7, v0}, Lcom/amap/api/mapcore/util/z8;->a(Ljava/lang/String;[BI)I

    move-result v0

    iget-object v11, v1, Lcom/amap/api/mapcore/util/z8;->x:Ljava/lang/String;

    invoke-static {v11, v7, v0}, Lcom/amap/api/mapcore/util/z8;->a(Ljava/lang/String;[BI)I

    move-result v0

    iget-object v11, v1, Lcom/amap/api/mapcore/util/z8;->y:Ljava/lang/String;

    invoke-static {v11}, Ljava/lang/Byte;->parseByte(Ljava/lang/String;)B

    move-result v11

    aput-byte v11, v7, v0

    add-int/2addr v0, v8

    iget-object v11, v1, Lcom/amap/api/mapcore/util/z8;->j:Ljava/lang/String;

    invoke-static {v11}, Ljava/lang/Byte;->parseByte(Ljava/lang/String;)B

    move-result v11

    aput-byte v11, v7, v0

    add-int/2addr v0, v8

    iget v11, v1, Lcom/amap/api/mapcore/util/z8;->z:I

    and-int/lit8 v12, v11, 0x3

    int-to-byte v11, v11

    aput-byte v11, v7, v0

    add-int/2addr v0, v8

    const/16 v11, -0x80

    const/16 v13, 0x7f

    if-eq v12, v8, :cond_4

    if-ne v12, v3, :cond_d

    :cond_4
    const-string v14, "mcc"

    invoke-direct {v1, v14}, Lcom/amap/api/mapcore/util/z8;->f(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    invoke-static {v14}, Lcom/amap/api/mapcore/util/g9;->v(Ljava/lang/String;)[B

    move-result-object v14

    array-length v15, v14

    invoke-static {v14, v9, v7, v0, v15}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    array-length v14, v14

    add-int/2addr v0, v14

    const-string v14, "cellid"

    const-string v15, "lac"

    if-ne v12, v8, :cond_5

    const-string v10, "mnc"

    invoke-direct {v1, v10}, Lcom/amap/api/mapcore/util/z8;->f(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Lcom/amap/api/mapcore/util/g9;->v(Ljava/lang/String;)[B

    move-result-object v10

    array-length v5, v10

    invoke-static {v10, v9, v7, v0, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    array-length v5, v10

    add-int/2addr v0, v5

    invoke-direct {v1, v15}, Lcom/amap/api/mapcore/util/z8;->f(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/amap/api/mapcore/util/g9;->v(Ljava/lang/String;)[B

    move-result-object v5

    array-length v10, v5

    invoke-static {v5, v9, v7, v0, v10}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    array-length v5, v5

    add-int/2addr v0, v5

    invoke-direct {v1, v14}, Lcom/amap/api/mapcore/util/z8;->f(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/amap/api/mapcore/util/g9;->z(Ljava/lang/String;)[B

    move-result-object v5

    array-length v10, v5

    invoke-static {v5, v9, v7, v0, v10}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    array-length v5, v5

    :goto_2
    add-int/2addr v0, v5

    goto :goto_3

    :cond_5
    if-ne v12, v3, :cond_6

    const-string v5, "sid"

    invoke-direct {v1, v5}, Lcom/amap/api/mapcore/util/z8;->f(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/amap/api/mapcore/util/g9;->v(Ljava/lang/String;)[B

    move-result-object v5

    array-length v10, v5

    invoke-static {v5, v9, v7, v0, v10}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    array-length v5, v5

    add-int/2addr v0, v5

    const-string v5, "nid"

    invoke-direct {v1, v5}, Lcom/amap/api/mapcore/util/z8;->f(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/amap/api/mapcore/util/g9;->v(Ljava/lang/String;)[B

    move-result-object v5

    array-length v10, v5

    invoke-static {v5, v9, v7, v0, v10}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    array-length v5, v5

    add-int/2addr v0, v5

    const-string v5, "bid"

    invoke-direct {v1, v5}, Lcom/amap/api/mapcore/util/z8;->f(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/amap/api/mapcore/util/g9;->v(Ljava/lang/String;)[B

    move-result-object v5

    array-length v10, v5

    invoke-static {v5, v9, v7, v0, v10}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    array-length v5, v5

    add-int/2addr v0, v5

    const-string v5, "lon"

    invoke-direct {v1, v5}, Lcom/amap/api/mapcore/util/z8;->f(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/amap/api/mapcore/util/g9;->z(Ljava/lang/String;)[B

    move-result-object v5

    array-length v10, v5

    invoke-static {v5, v9, v7, v0, v10}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    array-length v5, v5

    add-int/2addr v0, v5

    const-string v5, "lat"

    invoke-direct {v1, v5}, Lcom/amap/api/mapcore/util/z8;->f(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/amap/api/mapcore/util/g9;->z(Ljava/lang/String;)[B

    move-result-object v5

    array-length v10, v5

    invoke-static {v5, v9, v7, v0, v10}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    array-length v5, v5

    goto :goto_2

    :cond_6
    :goto_3
    const-string v5, "signal"

    invoke-direct {v1, v5}, Lcom/amap/api/mapcore/util/z8;->f(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v10

    if-le v10, v13, :cond_7

    :goto_4
    const/4 v10, 0x0

    goto :goto_5

    :cond_7
    if-ge v10, v11, :cond_8

    goto :goto_4

    :cond_8
    :goto_5
    int-to-byte v10, v10

    aput-byte v10, v7, v0

    add-int/2addr v0, v8

    invoke-static {v9, v4}, Lcom/amap/api/mapcore/util/g9;->k(I[B)[B

    move-result-object v10

    array-length v11, v10

    invoke-static {v10, v9, v7, v0, v11}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    add-int/2addr v0, v3

    if-ne v12, v8, :cond_c

    iget-object v10, v1, Lcom/amap/api/mapcore/util/z8;->B:Ljava/lang/String;

    invoke-static {v10}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v10

    if-eqz v10, :cond_9

    aput-byte v9, v7, v0

    goto :goto_9

    :cond_9
    iget-object v10, v1, Lcom/amap/api/mapcore/util/z8;->B:Ljava/lang/String;

    const-string v11, "\\*"

    invoke-virtual {v10, v11}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v10

    array-length v10, v10

    int-to-byte v11, v10

    aput-byte v11, v7, v0

    add-int/lit8 v0, v0, 0x1

    const/4 v11, 0x0

    :goto_6
    if-ge v11, v10, :cond_d

    invoke-direct {v1, v15, v11}, Lcom/amap/api/mapcore/util/z8;->b(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v12

    invoke-static {v12}, Lcom/amap/api/mapcore/util/g9;->v(Ljava/lang/String;)[B

    move-result-object v12

    array-length v3, v12

    invoke-static {v12, v9, v7, v0, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    array-length v3, v12

    add-int/2addr v0, v3

    invoke-direct {v1, v14, v11}, Lcom/amap/api/mapcore/util/z8;->b(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/amap/api/mapcore/util/g9;->z(Ljava/lang/String;)[B

    move-result-object v3

    array-length v12, v3

    invoke-static {v3, v9, v7, v0, v12}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    array-length v3, v3

    add-int/2addr v0, v3

    invoke-direct {v1, v5, v11}, Lcom/amap/api/mapcore/util/z8;->b(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    if-le v3, v13, :cond_a

    :goto_7
    const/4 v3, 0x0

    goto :goto_8

    :cond_a
    const/16 v12, -0x80

    if-ge v3, v12, :cond_b

    goto :goto_7

    :cond_b
    :goto_8
    int-to-byte v3, v3

    aput-byte v3, v7, v0

    add-int/2addr v0, v8

    add-int/lit8 v11, v11, 0x1

    const/4 v3, 0x2

    goto :goto_6

    :cond_c
    if-ne v12, v3, :cond_d

    aput-byte v9, v7, v0

    :goto_9
    add-int/lit8 v0, v0, 0x1

    :cond_d
    iget-object v3, v1, Lcom/amap/api/mapcore/util/z8;->D:Ljava/lang/String;

    const-string v5, "GBK"

    const/16 v10, 0x8

    if-eqz v3, :cond_e

    iget v11, v1, Lcom/amap/api/mapcore/util/z8;->z:I

    and-int/2addr v11, v10

    if-ne v11, v10, :cond_e

    :try_start_1
    invoke-virtual {v3, v5}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v3

    array-length v11, v3

    const/16 v12, 0x3c

    invoke-static {v11, v12}, Ljava/lang/Math;->min(II)I

    move-result v11

    int-to-byte v12, v11

    aput-byte v12, v7, v0

    add-int/lit8 v0, v0, 0x1

    invoke-static {v3, v9, v7, v0, v11}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    add-int/2addr v0, v11

    goto :goto_a

    :catch_0
    :cond_e
    aput-byte v9, v7, v0

    add-int/2addr v0, v8

    :goto_a
    iget-object v3, v1, Lcom/amap/api/mapcore/util/z8;->C:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v11

    iget v12, v1, Lcom/amap/api/mapcore/util/z8;->z:I

    const/4 v14, 0x4

    and-int/2addr v12, v14

    const-wide/high16 v16, 0x4014000000000000L    # 5.0

    const-string v15, "5.1"

    if-ne v12, v14, :cond_1c

    if-lez v11, :cond_1c

    invoke-virtual {v3, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/amap/api/mapcore/util/v9;

    iget-boolean v12, v12, Lcom/amap/api/mapcore/util/v9;->p:Z

    if-nez v12, :cond_f

    add-int/lit8 v11, v11, -0x1

    :cond_f
    int-to-byte v12, v11

    aput-byte v12, v7, v0

    add-int/2addr v0, v8

    const/4 v12, 0x0

    :goto_b
    if-ge v12, v11, :cond_1d

    invoke-virtual {v3, v12}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lcom/amap/api/mapcore/util/v9;

    iget-boolean v10, v14, Lcom/amap/api/mapcore/util/v9;->p:Z

    if-eqz v10, :cond_1a

    iget v10, v14, Lcom/amap/api/mapcore/util/v9;->k:I

    const/4 v13, 0x3

    if-eq v10, v8, :cond_12

    if-eq v10, v13, :cond_12

    const/4 v13, 0x4

    if-ne v10, v13, :cond_10

    goto :goto_c

    :cond_10
    const/4 v13, 0x2

    if-ne v10, v13, :cond_14

    int-to-byte v10, v10

    iget-boolean v13, v14, Lcom/amap/api/mapcore/util/v9;->n:Z

    if-eqz v13, :cond_11

    or-int/lit8 v10, v10, 0x8

    int-to-byte v10, v10

    :cond_11
    aput-byte v10, v7, v0

    add-int/lit8 v0, v0, 0x1

    iget v10, v14, Lcom/amap/api/mapcore/util/v9;->a:I

    invoke-static {v10, v4}, Lcom/amap/api/mapcore/util/g9;->k(I[B)[B

    move-result-object v10

    array-length v13, v10

    invoke-static {v10, v9, v7, v0, v13}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    array-length v10, v10

    add-int/2addr v0, v10

    iget v10, v14, Lcom/amap/api/mapcore/util/v9;->g:I

    invoke-static {v10, v4}, Lcom/amap/api/mapcore/util/g9;->k(I[B)[B

    move-result-object v10

    array-length v13, v10

    invoke-static {v10, v9, v7, v0, v13}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    array-length v10, v10

    add-int/2addr v0, v10

    iget v10, v14, Lcom/amap/api/mapcore/util/v9;->h:I

    invoke-static {v10, v4}, Lcom/amap/api/mapcore/util/g9;->k(I[B)[B

    move-result-object v10

    array-length v13, v10

    invoke-static {v10, v9, v7, v0, v13}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    array-length v10, v10

    add-int/2addr v0, v10

    iget v10, v14, Lcom/amap/api/mapcore/util/v9;->i:I

    invoke-static {v10, v4}, Lcom/amap/api/mapcore/util/g9;->k(I[B)[B

    move-result-object v10

    array-length v13, v10

    invoke-static {v10, v9, v7, v0, v13}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    array-length v10, v10

    add-int/2addr v0, v10

    iget v10, v14, Lcom/amap/api/mapcore/util/v9;->f:I

    invoke-static {v10, v6}, Lcom/amap/api/mapcore/util/g9;->u(I[B)[B

    move-result-object v10

    array-length v13, v10

    invoke-static {v10, v9, v7, v0, v13}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    array-length v10, v10

    add-int/2addr v0, v10

    iget v10, v14, Lcom/amap/api/mapcore/util/v9;->e:I

    invoke-static {v10, v6}, Lcom/amap/api/mapcore/util/g9;->u(I[B)[B

    move-result-object v10

    array-length v13, v10

    invoke-static {v10, v9, v7, v0, v13}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    array-length v10, v10

    goto :goto_d

    :cond_12
    :goto_c
    int-to-byte v10, v10

    iget-boolean v13, v14, Lcom/amap/api/mapcore/util/v9;->n:Z

    if-eqz v13, :cond_13

    or-int/lit8 v10, v10, 0x8

    int-to-byte v10, v10

    :cond_13
    aput-byte v10, v7, v0

    add-int/lit8 v0, v0, 0x1

    iget v10, v14, Lcom/amap/api/mapcore/util/v9;->a:I

    invoke-static {v10, v4}, Lcom/amap/api/mapcore/util/g9;->k(I[B)[B

    move-result-object v10

    array-length v13, v10

    invoke-static {v10, v9, v7, v0, v13}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    array-length v10, v10

    add-int/2addr v0, v10

    iget v10, v14, Lcom/amap/api/mapcore/util/v9;->b:I

    invoke-static {v10, v4}, Lcom/amap/api/mapcore/util/g9;->k(I[B)[B

    move-result-object v10

    array-length v13, v10

    invoke-static {v10, v9, v7, v0, v13}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    array-length v10, v10

    add-int/2addr v0, v10

    iget v10, v14, Lcom/amap/api/mapcore/util/v9;->c:I

    invoke-static {v10, v4}, Lcom/amap/api/mapcore/util/g9;->k(I[B)[B

    move-result-object v10

    array-length v13, v10

    invoke-static {v10, v9, v7, v0, v13}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    array-length v10, v10

    add-int/2addr v0, v10

    iget v10, v14, Lcom/amap/api/mapcore/util/v9;->d:I

    invoke-static {v10, v6}, Lcom/amap/api/mapcore/util/g9;->u(I[B)[B

    move-result-object v10

    array-length v13, v10

    invoke-static {v10, v9, v7, v0, v13}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    array-length v10, v10

    :goto_d
    add-int/2addr v0, v10

    :cond_14
    iget v10, v14, Lcom/amap/api/mapcore/util/v9;->j:I

    const/16 v13, 0x7f

    if-le v10, v13, :cond_15

    :goto_e
    const/16 v10, 0x63

    goto :goto_f

    :cond_15
    const/16 v13, -0x80

    if-ge v10, v13, :cond_16

    goto :goto_e

    :cond_16
    :goto_f
    int-to-byte v10, v10

    aput-byte v10, v7, v0

    add-int/2addr v0, v8

    iget-short v10, v14, Lcom/amap/api/mapcore/util/v9;->l:S

    invoke-static {v10, v4}, Lcom/amap/api/mapcore/util/g9;->k(I[B)[B

    move-result-object v10

    array-length v13, v10

    invoke-static {v10, v9, v7, v0, v13}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    array-length v10, v10

    add-int/2addr v0, v10

    invoke-static {v15}, Ljava/lang/Double;->valueOf(Ljava/lang/String;)Ljava/lang/Double;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v18

    cmpl-double v10, v18, v16

    if-ltz v10, :cond_1a

    iget v10, v14, Lcom/amap/api/mapcore/util/v9;->k:I

    const/4 v13, 0x3

    if-eq v10, v13, :cond_17

    const/4 v13, 0x4

    if-ne v10, v13, :cond_1b

    goto :goto_10

    :cond_17
    const/4 v13, 0x4

    :goto_10
    iget v10, v14, Lcom/amap/api/mapcore/util/v9;->o:I

    const/16 v14, 0x7fff

    if-le v10, v14, :cond_18

    const/16 v10, 0x7fff

    :cond_18
    if-gez v10, :cond_19

    goto :goto_11

    :cond_19
    move v14, v10

    :goto_11
    invoke-static {v14, v4}, Lcom/amap/api/mapcore/util/g9;->k(I[B)[B

    move-result-object v10

    array-length v14, v10

    invoke-static {v10, v9, v7, v0, v14}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    array-length v10, v10

    add-int/2addr v0, v10

    goto :goto_12

    :cond_1a
    const/4 v13, 0x4

    :cond_1b
    :goto_12
    add-int/lit8 v12, v12, 0x1

    const/16 v10, 0x8

    const/16 v13, 0x7f

    goto/16 :goto_b

    :cond_1c
    aput-byte v9, v7, v0

    add-int/2addr v0, v8

    :cond_1d
    iget-object v3, v1, Lcom/amap/api/mapcore/util/z8;->E:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    if-nez v3, :cond_1e

    aput-byte v9, v7, v0

    add-int/2addr v0, v8

    goto/16 :goto_17

    :cond_1e
    aput-byte v8, v7, v0

    add-int/lit8 v3, v0, 0x1

    :try_start_2
    iget-object v0, v1, Lcom/amap/api/mapcore/util/z8;->E:Ljava/lang/String;

    const-string v6, ","

    invoke-virtual {v0, v6}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v6

    aget-object v0, v6, v9

    invoke-direct {v1, v0}, Lcom/amap/api/mapcore/util/z8;->e(Ljava/lang/String;)[B

    move-result-object v0

    array-length v10, v0

    invoke-static {v0, v9, v7, v3, v10}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    array-length v0, v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    add-int/2addr v3, v0

    const/4 v10, 0x2

    :try_start_3
    aget-object v0, v6, v10

    invoke-virtual {v0, v5}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v0

    array-length v10, v0

    const/16 v11, 0x7f

    if-le v10, v11, :cond_1f

    const/16 v10, 0x7f

    :cond_1f
    int-to-byte v11, v10

    aput-byte v11, v7, v3

    add-int/lit8 v3, v3, 0x1

    invoke-static {v0, v9, v7, v3, v10}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    add-int/2addr v3, v10

    goto :goto_13

    :catchall_1
    move-exception v0

    :try_start_4
    const-string v10, "buildV4Dot214"

    invoke-static {v0, v2, v10}, Lcom/amap/api/mapcore/util/b9;->b(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    aput-byte v9, v7, v3

    add-int/lit8 v3, v3, 0x1

    :goto_13
    aget-object v0, v6, v8

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    const/16 v6, 0x7f

    if-le v0, v6, :cond_20

    :goto_14
    const/4 v0, 0x0

    goto :goto_15

    :cond_20
    const/16 v6, -0x80

    if-ge v0, v6, :cond_21

    goto :goto_14

    :cond_21
    :goto_15
    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Byte;->parseByte(Ljava/lang/String;)B

    move-result v0

    aput-byte v0, v7, v3
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    goto :goto_16

    :catchall_2
    move-exception v0

    const-string v6, "buildV4Dot216"

    invoke-static {v0, v2, v6}, Lcom/amap/api/mapcore/util/b9;->b(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "00:00:00:00:00:00"

    invoke-direct {v1, v0}, Lcom/amap/api/mapcore/util/z8;->e(Ljava/lang/String;)[B

    move-result-object v0

    array-length v2, v0

    invoke-static {v0, v9, v7, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    array-length v0, v0

    add-int/2addr v3, v0

    aput-byte v9, v7, v3

    add-int/2addr v3, v8

    const-string v0, "0"

    invoke-static {v0}, Ljava/lang/Byte;->parseByte(Ljava/lang/String;)B

    move-result v0

    aput-byte v0, v7, v3

    :goto_16
    add-int/lit8 v0, v3, 0x1

    :goto_17
    iget-object v2, v1, Lcom/amap/api/mapcore/util/z8;->F:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v3

    const/16 v6, 0x19

    invoke-static {v3, v6}, Ljava/lang/Math;->min(II)I

    move-result v3

    if-nez v3, :cond_22

    aput-byte v9, v7, v0

    add-int/2addr v0, v8

    const/4 v10, 0x0

    goto/16 :goto_1d

    :cond_22
    int-to-byte v6, v3

    aput-byte v6, v7, v0

    add-int/2addr v0, v8

    invoke-static {}, Lcom/amap/api/mapcore/util/g9;->x()I

    move-result v6

    const/16 v10, 0x11

    if-lt v6, v10, :cond_23

    const/4 v6, 0x1

    goto :goto_18

    :cond_23
    const/4 v6, 0x0

    :goto_18
    const-wide/16 v10, 0x0

    if-eqz v6, :cond_24

    invoke-static {}, Lcom/amap/api/mapcore/util/g9;->p()J

    move-result-wide v10

    const-wide/16 v12, 0x3e8

    div-long/2addr v10, v12

    :cond_24
    const/4 v12, 0x0

    :goto_19
    if-ge v12, v3, :cond_2a

    invoke-virtual {v2, v12}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Landroid/net/wifi/ScanResult;

    iget-object v14, v13, Landroid/net/wifi/ScanResult;->BSSID:Ljava/lang/String;

    invoke-direct {v1, v14}, Lcom/amap/api/mapcore/util/z8;->e(Ljava/lang/String;)[B

    move-result-object v14

    array-length v8, v14

    invoke-static {v14, v9, v7, v0, v8}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    array-length v8, v14

    add-int/2addr v0, v8

    :try_start_5
    iget-object v8, v13, Landroid/net/wifi/ScanResult;->SSID:Ljava/lang/String;

    invoke-virtual {v8, v5}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v8

    array-length v14, v8

    int-to-byte v14, v14

    aput-byte v14, v7, v0

    add-int/lit8 v0, v0, 0x1

    array-length v14, v8

    invoke-static {v8, v9, v7, v0, v14}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    array-length v8, v8
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_1

    add-int/2addr v0, v8

    const/4 v8, 0x1

    goto :goto_1a

    :catch_1
    aput-byte v9, v7, v0

    const/4 v8, 0x1

    add-int/2addr v0, v8

    :goto_1a
    iget v14, v13, Landroid/net/wifi/ScanResult;->level:I

    const/16 v9, 0x7f

    if-le v14, v9, :cond_25

    const/16 v9, -0x80

    :goto_1b
    const/4 v14, 0x0

    goto :goto_1c

    :cond_25
    const/16 v9, -0x80

    if-ge v14, v9, :cond_26

    goto :goto_1b

    :cond_26
    :goto_1c
    invoke-static {v14}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v14

    invoke-static {v14}, Ljava/lang/Byte;->parseByte(Ljava/lang/String;)B

    move-result v14

    aput-byte v14, v7, v0

    add-int/2addr v0, v8

    move-wide/from16 v18, v10

    if-eqz v6, :cond_27

    iget-wide v9, v13, Landroid/net/wifi/ScanResult;->timestamp:J

    const-wide/32 v20, 0xf4240

    div-long v9, v9, v20

    const-wide/16 v20, 0x1

    add-long v9, v9, v20

    sub-long v10, v18, v9

    long-to-int v8, v10

    if-gez v8, :cond_28

    :cond_27
    const/4 v8, 0x0

    :cond_28
    const v9, 0xffff

    if-le v8, v9, :cond_29

    const v8, 0xffff

    :cond_29
    invoke-static {v8, v4}, Lcom/amap/api/mapcore/util/g9;->k(I[B)[B

    move-result-object v8

    array-length v9, v8

    const/4 v10, 0x0

    invoke-static {v8, v10, v7, v0, v9}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    array-length v8, v8

    add-int/2addr v0, v8

    iget v8, v13, Landroid/net/wifi/ScanResult;->frequency:I

    invoke-static {v8, v4}, Lcom/amap/api/mapcore/util/g9;->k(I[B)[B

    move-result-object v8

    array-length v9, v8

    invoke-static {v8, v10, v7, v0, v9}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    array-length v8, v8

    add-int/2addr v0, v8

    add-int/lit8 v12, v12, 0x1

    move-wide/from16 v10, v18

    const/4 v8, 0x1

    const/4 v9, 0x0

    goto/16 :goto_19

    :cond_2a
    const/4 v10, 0x0

    iget-object v2, v1, Lcom/amap/api/mapcore/util/z8;->G:Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    invoke-static {v2, v4}, Lcom/amap/api/mapcore/util/g9;->k(I[B)[B

    move-result-object v2

    array-length v3, v2

    invoke-static {v2, v10, v7, v0, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    array-length v2, v2

    add-int/2addr v0, v2

    :goto_1d
    aput-byte v10, v7, v0

    const/4 v2, 0x1

    add-int/2addr v0, v2

    :try_start_6
    iget-object v2, v1, Lcom/amap/api/mapcore/util/z8;->H:Ljava/lang/String;

    invoke-virtual {v2, v5}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v2

    array-length v3, v2

    const/16 v6, 0x7f

    if-le v3, v6, :cond_2b

    const/4 v2, 0x0

    :cond_2b
    if-nez v2, :cond_2c

    const/4 v3, 0x0

    aput-byte v3, v7, v0

    const/4 v2, 0x1

    goto :goto_1e

    :cond_2c
    array-length v3, v2

    int-to-byte v3, v3

    aput-byte v3, v7, v0

    add-int/lit8 v0, v0, 0x1

    array-length v3, v2

    const/4 v6, 0x0

    invoke-static {v2, v6, v7, v0, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    array-length v2, v2
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_3

    add-int/2addr v0, v2

    goto :goto_1f

    :catchall_3
    const/4 v2, 0x0

    aput-byte v2, v7, v0

    const/4 v2, 0x1

    :goto_1e
    add-int/2addr v0, v2

    :goto_1f
    const/4 v2, 0x2

    new-array v3, v2, [B

    fill-array-data v3, :array_0

    :try_start_7
    iget-object v2, v1, Lcom/amap/api/mapcore/util/z8;->L:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_2d

    iget-object v3, v1, Lcom/amap/api/mapcore/util/z8;->L:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    invoke-static {v3, v4}, Lcom/amap/api/mapcore/util/g9;->k(I[B)[B

    move-result-object v3

    :cond_2d
    const/4 v6, 0x2

    const/4 v8, 0x0

    invoke-static {v3, v8, v7, v0, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_5

    add-int/2addr v0, v6

    if-nez v2, :cond_2e

    :try_start_8
    iget-object v2, v1, Lcom/amap/api/mapcore/util/z8;->L:Ljava/lang/String;

    invoke-virtual {v2, v5}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v2

    array-length v3, v2

    invoke-static {v2, v8, v7, v0, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    array-length v2, v2
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_4

    add-int/2addr v0, v2

    :catchall_4
    :cond_2e
    const/4 v2, 0x2

    goto :goto_20

    :catchall_5
    const/4 v2, 0x2

    add-int/2addr v0, v2

    :goto_20
    const/4 v3, 0x0

    :try_start_9
    invoke-static {v3, v4}, Lcom/amap/api/mapcore/util/g9;->k(I[B)[B

    move-result-object v4

    invoke-static {v4, v3, v7, v0, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_6

    :catchall_6
    add-int/2addr v0, v2

    new-array v4, v2, [B

    fill-array-data v4, :array_1

    :try_start_a
    invoke-static {v4, v3, v7, v0, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_7

    :catchall_7
    add-int/2addr v0, v2

    iget-object v2, v1, Lcom/amap/api/mapcore/util/z8;->I:[B

    if-eqz v2, :cond_2f

    array-length v10, v2

    const/4 v2, 0x0

    goto :goto_21

    :cond_2f
    const/4 v2, 0x0

    const/4 v10, 0x0

    :goto_21
    invoke-static {v10, v2}, Lcom/amap/api/mapcore/util/g9;->k(I[B)[B

    move-result-object v2

    array-length v3, v2

    const/4 v4, 0x0

    invoke-static {v2, v4, v7, v0, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    array-length v2, v2

    add-int/2addr v0, v2

    if-lez v10, :cond_30

    iget-object v2, v1, Lcom/amap/api/mapcore/util/z8;->I:[B

    array-length v3, v2

    invoke-static {v2, v4, v7, v0, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v2, v1, Lcom/amap/api/mapcore/util/z8;->I:[B

    array-length v2, v2

    add-int/2addr v0, v2

    :cond_30
    invoke-static {v15}, Ljava/lang/Double;->valueOf(Ljava/lang/String;)Ljava/lang/Double;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v2

    cmpl-double v5, v2, v16

    if-ltz v5, :cond_31

    aput-byte v4, v7, v0

    add-int/lit8 v0, v0, 0x1

    iget-object v2, v1, Lcom/amap/api/mapcore/util/z8;->M:Ljava/lang/String;

    invoke-static {v2, v7, v0}, Lcom/amap/api/mapcore/util/z8;->a(Ljava/lang/String;[BI)I

    move-result v0

    :cond_31
    new-array v2, v0, [B

    invoke-static {v7, v4, v2, v4, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    new-instance v3, Ljava/util/zip/CRC32;

    invoke-direct {v3}, Ljava/util/zip/CRC32;-><init>()V

    invoke-virtual {v3, v2}, Ljava/util/zip/CRC32;->update([B)V

    invoke-virtual {v3}, Ljava/util/zip/CRC32;->getValue()J

    move-result-wide v5

    invoke-static {v5, v6}, Lcom/amap/api/mapcore/util/g9;->l(J)[B

    move-result-object v3

    add-int/lit8 v5, v0, 0x8

    new-array v5, v5, [B

    invoke-static {v2, v4, v5, v4, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    const/16 v2, 0x8

    invoke-static {v3, v4, v5, v0, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v5

    :array_0
    .array-data 1
        0x0t
        0x0t
    .end array-data

    nop

    :array_1
    .array-data 1
        0x0t
        0x0t
    .end array-data
.end method
