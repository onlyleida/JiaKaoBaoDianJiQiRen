.class public final Lcom/loc/fg;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation build Landroid/annotation/SuppressLint;
    value = {
        "NewApi"
    }
.end annotation


# static fields
.field protected static I:Ljava/lang/String;

.field protected static K:Ljava/lang/String;


# instance fields
.field protected A:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/loc/er;",
            ">;"
        }
    .end annotation
.end field

.field protected B:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/loc/er;",
            ">;"
        }
    .end annotation
.end field

.field protected C:Ljava/lang/String;

.field protected D:Ljava/lang/String;

.field protected E:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/loc/dx;",
            ">;"
        }
    .end annotation
.end field

.field protected F:Ljava/lang/String;

.field protected G:Ljava/lang/String;

.field protected H:[B

.field protected J:Ljava/lang/String;

.field protected L:Ljava/lang/String;

.field protected M:Ljava/lang/String;

.field protected N:Ljava/lang/String;

.field protected O:I

.field final P:I

.field private Q:[B

.field private R:I

.field private S:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/loc/et;",
            ">;"
        }
    .end annotation
.end field

.field private T:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/loc/er;",
            ">;"
        }
    .end annotation
.end field

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

    iput-object v0, p0, Lcom/loc/fg;->a:Ljava/lang/String;

    const/4 v0, 0x0

    iput-short v0, p0, Lcom/loc/fg;->b:S

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/loc/fg;->c:Ljava/lang/String;

    iput-object v1, p0, Lcom/loc/fg;->d:Ljava/lang/String;

    iput-object v1, p0, Lcom/loc/fg;->e:Ljava/lang/String;

    iput-object v1, p0, Lcom/loc/fg;->f:Ljava/lang/String;

    iput-object v1, p0, Lcom/loc/fg;->g:Ljava/lang/String;

    iput-object v1, p0, Lcom/loc/fg;->h:Ljava/lang/String;

    iput-object v1, p0, Lcom/loc/fg;->i:Ljava/lang/String;

    iput-object v1, p0, Lcom/loc/fg;->j:Ljava/lang/String;

    iput-object v1, p0, Lcom/loc/fg;->k:Ljava/lang/String;

    iput-object v1, p0, Lcom/loc/fg;->l:Ljava/lang/String;

    iput-object v1, p0, Lcom/loc/fg;->m:Ljava/lang/String;

    iput-object v1, p0, Lcom/loc/fg;->n:Ljava/lang/String;

    iput-object v1, p0, Lcom/loc/fg;->o:Ljava/lang/String;

    iput-object v1, p0, Lcom/loc/fg;->p:Ljava/lang/String;

    iput-object v1, p0, Lcom/loc/fg;->q:Ljava/lang/String;

    iput-object v1, p0, Lcom/loc/fg;->r:Ljava/lang/String;

    iput-object v1, p0, Lcom/loc/fg;->s:Ljava/lang/String;

    iput-object v1, p0, Lcom/loc/fg;->t:Ljava/lang/String;

    iput-object v1, p0, Lcom/loc/fg;->u:Ljava/lang/String;

    iput-object v1, p0, Lcom/loc/fg;->v:Ljava/lang/String;

    iput-object v1, p0, Lcom/loc/fg;->w:Ljava/lang/String;

    iput-object v1, p0, Lcom/loc/fg;->x:Ljava/lang/String;

    iput-object v1, p0, Lcom/loc/fg;->y:Ljava/lang/String;

    iput v0, p0, Lcom/loc/fg;->z:I

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lcom/loc/fg;->A:Ljava/util/ArrayList;

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lcom/loc/fg;->B:Ljava/util/ArrayList;

    iput-object v1, p0, Lcom/loc/fg;->C:Ljava/lang/String;

    iput-object v1, p0, Lcom/loc/fg;->D:Ljava/lang/String;

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lcom/loc/fg;->E:Ljava/util/ArrayList;

    iput-object v1, p0, Lcom/loc/fg;->F:Ljava/lang/String;

    iput-object v1, p0, Lcom/loc/fg;->G:Ljava/lang/String;

    iput-object v1, p0, Lcom/loc/fg;->H:[B

    iput-object v1, p0, Lcom/loc/fg;->Q:[B

    iput v0, p0, Lcom/loc/fg;->R:I

    iput-object v1, p0, Lcom/loc/fg;->J:Ljava/lang/String;

    iput-object v1, p0, Lcom/loc/fg;->L:Ljava/lang/String;

    iput-object v1, p0, Lcom/loc/fg;->M:Ljava/lang/String;

    iput-object v1, p0, Lcom/loc/fg;->N:Ljava/lang/String;

    iput v0, p0, Lcom/loc/fg;->O:I

    iput-object v1, p0, Lcom/loc/fg;->S:Ljava/util/List;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-static {v0}, Ljava/util/Collections;->synchronizedList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/loc/fg;->T:Ljava/util/List;

    const/4 v0, 0x3

    iput v0, p0, Lcom/loc/fg;->P:I

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

    invoke-static {p0, v1, v2}, Lcom/loc/fi;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    aput-byte v0, p1, p2

    :goto_0
    add-int/lit8 p2, p2, 0x1

    :goto_1
    return p2
.end method

.method private static a(Lcom/loc/er;Ljava/util/List;)V
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/loc/er;",
            "Ljava/util/List<",
            "Lcom/loc/er;",
            ">;)V"
        }
    .end annotation

    if-eqz p0, :cond_7

    if-nez p1, :cond_0

    goto :goto_2

    :cond_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_1

    invoke-interface {p1, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void

    :cond_1
    const-wide v1, 0x7fffffffffffffffL

    const/4 v3, 0x0

    const/4 v4, -0x1

    const/4 v5, -0x1

    :goto_0
    if-ge v3, v0, :cond_4

    invoke-interface {p1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/loc/er;

    invoke-virtual {p0}, Lcom/loc/er;->c()Ljava/lang/String;

    move-result-object v7

    if-eqz v7, :cond_2

    invoke-virtual {p0}, Lcom/loc/er;->c()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6}, Lcom/loc/er;->c()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_2

    iget v3, p0, Lcom/loc/er;->s:I

    iget v5, v6, Lcom/loc/er;->s:I

    if-eq v3, v5, :cond_5

    iget-wide v7, p0, Lcom/loc/er;->t:J

    iput-wide v7, v6, Lcom/loc/er;->t:J

    iput v3, v6, Lcom/loc/er;->s:I

    goto :goto_1

    :cond_2
    iget-wide v7, v6, Lcom/loc/er;->t:J

    invoke-static {v1, v2, v7, v8}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v1

    iget-wide v6, v6, Lcom/loc/er;->t:J

    cmp-long v8, v1, v6

    if-nez v8, :cond_3

    move v5, v3

    :cond_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_4
    move v4, v5

    :cond_5
    :goto_1
    if-ltz v4, :cond_7

    const/4 v3, 0x3

    if-ge v0, v3, :cond_6

    invoke-interface {p1, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void

    :cond_6
    iget-wide v5, p0, Lcom/loc/er;->t:J

    cmp-long v3, v5, v1

    if-lez v3, :cond_7

    if-ge v4, v0, :cond_7

    invoke-interface {p1, v4}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    invoke-interface {p1, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_7
    :goto_2
    return-void
.end method

.method private a(Ljava/util/ArrayList;Ljava/util/ArrayList;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/loc/er;",
            ">;",
            "Ljava/util/ArrayList<",
            "Lcom/loc/er;",
            ">;)V"
        }
    .end annotation

    if-eqz p2, :cond_1

    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_1

    invoke-virtual {p2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :cond_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/loc/er;

    iget-boolean v1, v0, Lcom/loc/er;->r:Z

    if-eqz v1, :cond_0

    iget-boolean v1, v0, Lcom/loc/er;->n:Z

    if-eqz v1, :cond_0

    iget-object p1, p0, Lcom/loc/fg;->T:Ljava/util/List;

    invoke-static {v0, p1}, Lcom/loc/fg;->a(Lcom/loc/er;Ljava/util/List;)V

    return-void

    :cond_1
    if-eqz p1, :cond_2

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p2

    if-lez p2, :cond_2

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/loc/er;

    iget-object p2, p0, Lcom/loc/fg;->T:Ljava/util/List;

    invoke-static {p1, p2}, Lcom/loc/fg;->a(Lcom/loc/er;Ljava/util/List;)V

    :cond_2
    return-void
.end method

.method private a(Ljava/lang/String;)[B
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

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const-string v1, "getMacBa "

    invoke-virtual {v1, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string v1, "Req"

    invoke-static {v0, v1, p1}, Lcom/loc/fi;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "00:00:00:00:00:00"

    invoke-direct {p0, p1}, Lcom/loc/fg;->a(Ljava/lang/String;)[B

    move-result-object v2

    :cond_3
    return-object v2
.end method

.method private b()V
    .locals 5

    const/16 v0, 0x1b

    new-array v1, v0, [Ljava/lang/String;

    iget-object v2, p0, Lcom/loc/fg;->a:Ljava/lang/String;

    const/4 v3, 0x0

    aput-object v2, v1, v3

    iget-object v2, p0, Lcom/loc/fg;->c:Ljava/lang/String;

    const/4 v4, 0x1

    aput-object v2, v1, v4

    iget-object v2, p0, Lcom/loc/fg;->d:Ljava/lang/String;

    const/4 v4, 0x2

    aput-object v2, v1, v4

    iget-object v2, p0, Lcom/loc/fg;->e:Ljava/lang/String;

    const/4 v4, 0x3

    aput-object v2, v1, v4

    iget-object v2, p0, Lcom/loc/fg;->f:Ljava/lang/String;

    const/4 v4, 0x4

    aput-object v2, v1, v4

    iget-object v2, p0, Lcom/loc/fg;->g:Ljava/lang/String;

    const/4 v4, 0x5

    aput-object v2, v1, v4

    iget-object v2, p0, Lcom/loc/fg;->h:Ljava/lang/String;

    const/4 v4, 0x6

    aput-object v2, v1, v4

    iget-object v2, p0, Lcom/loc/fg;->i:Ljava/lang/String;

    const/4 v4, 0x7

    aput-object v2, v1, v4

    iget-object v2, p0, Lcom/loc/fg;->l:Ljava/lang/String;

    const/16 v4, 0x8

    aput-object v2, v1, v4

    iget-object v2, p0, Lcom/loc/fg;->m:Ljava/lang/String;

    const/16 v4, 0x9

    aput-object v2, v1, v4

    iget-object v2, p0, Lcom/loc/fg;->n:Ljava/lang/String;

    const/16 v4, 0xa

    aput-object v2, v1, v4

    iget-object v2, p0, Lcom/loc/fg;->o:Ljava/lang/String;

    const/16 v4, 0xb

    aput-object v2, v1, v4

    iget-object v2, p0, Lcom/loc/fg;->p:Ljava/lang/String;

    const/16 v4, 0xc

    aput-object v2, v1, v4

    iget-object v2, p0, Lcom/loc/fg;->q:Ljava/lang/String;

    const/16 v4, 0xd

    aput-object v2, v1, v4

    iget-object v2, p0, Lcom/loc/fg;->r:Ljava/lang/String;

    const/16 v4, 0xe

    aput-object v2, v1, v4

    iget-object v2, p0, Lcom/loc/fg;->s:Ljava/lang/String;

    const/16 v4, 0xf

    aput-object v2, v1, v4

    iget-object v2, p0, Lcom/loc/fg;->t:Ljava/lang/String;

    const/16 v4, 0x10

    aput-object v2, v1, v4

    iget-object v2, p0, Lcom/loc/fg;->u:Ljava/lang/String;

    const/16 v4, 0x11

    aput-object v2, v1, v4

    iget-object v2, p0, Lcom/loc/fg;->v:Ljava/lang/String;

    const/16 v4, 0x12

    aput-object v2, v1, v4

    iget-object v2, p0, Lcom/loc/fg;->w:Ljava/lang/String;

    const/16 v4, 0x13

    aput-object v2, v1, v4

    iget-object v2, p0, Lcom/loc/fg;->x:Ljava/lang/String;

    const/16 v4, 0x14

    aput-object v2, v1, v4

    iget-object v2, p0, Lcom/loc/fg;->D:Ljava/lang/String;

    const/16 v4, 0x15

    aput-object v2, v1, v4

    iget-object v2, p0, Lcom/loc/fg;->F:Ljava/lang/String;

    const/16 v4, 0x16

    aput-object v2, v1, v4

    iget-object v2, p0, Lcom/loc/fg;->G:Ljava/lang/String;

    const/16 v4, 0x17

    aput-object v2, v1, v4

    sget-object v2, Lcom/loc/fg;->I:Ljava/lang/String;

    const/16 v4, 0x18

    aput-object v2, v1, v4

    iget-object v2, p0, Lcom/loc/fg;->M:Ljava/lang/String;

    const/16 v4, 0x19

    aput-object v2, v1, v4

    iget-object v2, p0, Lcom/loc/fg;->N:Ljava/lang/String;

    const/16 v4, 0x1a

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
    iget-object v0, p0, Lcom/loc/fg;->j:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const-string v1, "2"

    const-string v2, "0"

    if-eqz v0, :cond_2

    :goto_1
    iput-object v2, p0, Lcom/loc/fg;->j:Ljava/lang/String;

    goto :goto_2

    :cond_2
    iget-object v0, p0, Lcom/loc/fg;->j:Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/loc/fg;->j:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    goto :goto_1

    :cond_3
    :goto_2
    iget-object v0, p0, Lcom/loc/fg;->k:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const-string v4, "1"

    if-eqz v0, :cond_4

    :goto_3
    iput-object v2, p0, Lcom/loc/fg;->k:Ljava/lang/String;

    goto :goto_4

    :cond_4
    iget-object v0, p0, Lcom/loc/fg;->k:Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_5

    iget-object v0, p0, Lcom/loc/fg;->k:Ljava/lang/String;

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_5

    goto :goto_3

    :cond_5
    :goto_4
    iget-object v0, p0, Lcom/loc/fg;->y:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_6

    :goto_5
    iput-object v2, p0, Lcom/loc/fg;->y:Ljava/lang/String;

    goto :goto_6

    :cond_6
    iget-object v0, p0, Lcom/loc/fg;->y:Ljava/lang/String;

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_7

    iget-object v0, p0, Lcom/loc/fg;->y:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_7

    goto :goto_5

    :cond_7
    :goto_6
    iget v0, p0, Lcom/loc/fg;->z:I

    invoke-static {v0}, Lcom/loc/es;->a(I)Z

    move-result v0

    if-nez v0, :cond_8

    iput v3, p0, Lcom/loc/fg;->z:I

    :cond_8
    iget-object v0, p0, Lcom/loc/fg;->H:[B

    if-nez v0, :cond_9

    new-array v0, v3, [B

    iput-object v0, p0, Lcom/loc/fg;->H:[B

    :cond_9
    return-void
.end method


# virtual methods
.method public final a(Landroid/content/Context;ZZLcom/loc/es;Lcom/loc/ew;Landroid/net/ConnectivityManager;Ljava/lang/String;Lcom/loc/eu;)V
    .locals 19

    move-object/from16 v1, p0

    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    invoke-static/range {p1 .. p1}, Lcom/loc/k;->f(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    invoke-static {}, Lcom/loc/fp;->d()I

    move-result v4

    move-object/from16 v0, p7

    iput-object v0, v1, Lcom/loc/fg;->J:Ljava/lang/String;

    const/4 v5, 0x0

    iput-object v5, v1, Lcom/loc/fg;->S:Ljava/util/List;

    if-nez p3, :cond_0

    const-string v0, "UC_nlp_20131029"

    const-string v6, "BKZCHMBBSSUK7U8GLUKHBB56CCFF78U"

    goto :goto_0

    :cond_0
    const-string v0, "api_serverSDK_130905"

    const-string v6, "S128DF1572465B890OE3F7A13167KLEI"

    :goto_0
    move-object v7, v6

    move-object v6, v0

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual/range {p4 .. p4}, Lcom/loc/es;->f()I

    move-result v9

    invoke-virtual/range {p4 .. p4}, Lcom/loc/es;->g()I

    move-result v0

    invoke-virtual/range {p4 .. p4}, Lcom/loc/es;->h()Landroid/telephony/TelephonyManager;

    move-result-object v10

    invoke-virtual/range {p4 .. p4}, Lcom/loc/es;->b()Ljava/util/ArrayList;

    move-result-object v11

    invoke-virtual/range {p4 .. p4}, Lcom/loc/es;->c()Ljava/util/ArrayList;

    move-result-object v12

    invoke-virtual/range {p5 .. p5}, Lcom/loc/ew;->e()Ljava/util/ArrayList;

    move-result-object v13

    const-string v14, "1"

    const/4 v15, 0x2

    const-string v5, "0"

    if-ne v0, v15, :cond_1

    move-object/from16 v16, v14

    goto :goto_1

    :cond_1
    move-object/from16 v16, v5

    :goto_1
    const-string v15, "Aps"

    if-eqz v10, :cond_5

    sget-object v0, Lcom/loc/fi;->g:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    :try_start_0
    invoke-static/range {p1 .. p1}, Lcom/loc/n;->v(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/loc/fi;->g:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_2

    :catchall_0
    move-exception v0

    move-object/from16 v17, v14

    const-string v14, "getApsReq part4"

    invoke-static {v0, v15, v14}, Lcom/loc/fi;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_3

    :cond_2
    :goto_2
    move-object/from16 v17, v14

    :goto_3
    sget-object v0, Lcom/loc/fi;->g:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const-string v14, "888888888888888"

    move-object/from16 v18, v8

    const/16 v8, 0x1d

    if-eqz v0, :cond_3

    if-ge v2, v8, :cond_3

    sput-object v14, Lcom/loc/fi;->g:Ljava/lang/String;

    :cond_3
    sget-object v0, Lcom/loc/fi;->h:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_4

    :try_start_1
    invoke-static/range {p1 .. p1}, Lcom/loc/n;->y(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/loc/fi;->h:Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/SecurityException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_4

    :catchall_1
    move-exception v0

    const-string v8, "getApsReq part2"

    invoke-static {v0, v15, v8}, Lcom/loc/fi;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_4

    :catch_0
    nop

    :cond_4
    :goto_4
    sget-object v0, Lcom/loc/fi;->h:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_6

    const/16 v8, 0x1d

    if-ge v2, v8, :cond_6

    sput-object v14, Lcom/loc/fi;->h:Ljava/lang/String;

    goto :goto_5

    :cond_5
    move-object/from16 v18, v8

    move-object/from16 v17, v14

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

    move-object v2, v0

    const-string v0, "getApsReq part"

    invoke-static {v2, v15, v0}, Lcom/loc/fi;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    :goto_6
    invoke-virtual/range {p5 .. p6}, Lcom/loc/ew;->a(Landroid/net/ConnectivityManager;)Z

    move-result v2

    invoke-static {v0}, Lcom/loc/fp;->a(Landroid/net/NetworkInfo;)I

    move-result v0

    const/4 v8, -0x1

    const-string v14, ""

    if-eq v0, v8, :cond_8

    invoke-static {v10}, Lcom/loc/fp;->b(Landroid/telephony/TelephonyManager;)Ljava/lang/String;

    move-result-object v0

    if-eqz v2, :cond_7

    const-string v8, "2"

    goto :goto_7

    :cond_7
    move-object/from16 v8, v17

    goto :goto_7

    :cond_8
    move-object v0, v14

    move-object v8, v0

    :goto_7
    and-int/lit8 v10, v9, 0x4

    const/4 v15, 0x4

    if-ne v10, v15, :cond_9

    invoke-virtual {v12}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v10

    if-nez v10, :cond_9

    iget-object v10, v1, Lcom/loc/fg;->B:Ljava/util/ArrayList;

    invoke-virtual {v10}, Ljava/util/ArrayList;->clear()V

    iget-object v10, v1, Lcom/loc/fg;->B:Ljava/util/ArrayList;

    invoke-virtual {v10, v12}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    goto :goto_8

    :cond_9
    iget-object v10, v1, Lcom/loc/fg;->B:Ljava/util/ArrayList;

    invoke-virtual {v10}, Ljava/util/ArrayList;->clear()V

    :goto_8
    iget-object v10, v1, Lcom/loc/fg;->A:Ljava/util/ArrayList;

    invoke-virtual {v10}, Ljava/util/ArrayList;->clear()V

    iget-object v10, v1, Lcom/loc/fg;->A:Ljava/util/ArrayList;

    invoke-virtual {v10, v11}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual/range {p5 .. p5}, Lcom/loc/ew;->k()Z

    move-result v11

    if-eqz v11, :cond_e

    if-eqz v2, :cond_d

    invoke-virtual/range {p5 .. p5}, Lcom/loc/ew;->l()Landroid/net/wifi/WifiInfo;

    move-result-object v2

    invoke-static {v2}, Lcom/loc/ew;->a(Landroid/net/wifi/WifiInfo;)Z

    move-result v11

    if-eqz v11, :cond_d

    invoke-virtual {v2}, Landroid/net/wifi/WifiInfo;->getBSSID()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v11, ","

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Landroid/net/wifi/WifiInfo;->getRssi()I

    move-result v15

    const/16 v12, -0x80

    if-ge v15, v12, :cond_a

    :goto_9
    const/4 v15, 0x0

    goto :goto_a

    :cond_a
    const/16 v12, 0x7f

    if-le v15, v12, :cond_b

    goto :goto_9

    :cond_b
    :goto_a
    invoke-virtual {v10, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Landroid/net/wifi/WifiInfo;->getSSID()Ljava/lang/String;

    move-result-object v11

    const/16 v12, 0x20

    :try_start_3
    invoke-virtual {v2}, Landroid/net/wifi/WifiInfo;->getSSID()Ljava/lang/String;

    move-result-object v2

    const-string v15, "UTF-8"

    invoke-virtual {v2, v15}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v2

    array-length v2, v2
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_b

    :catch_1
    const/16 v2, 0x20

    :goto_b
    if-lt v2, v12, :cond_c

    const-string v11, "unkwn"

    :cond_c
    const-string v2, "*"

    const-string v12, "."

    invoke-virtual {v11, v2, v12}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v10, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_d
    if-eqz v13, :cond_f

    iget-object v2, v1, Lcom/loc/fg;->E:Ljava/util/ArrayList;

    if-eqz v2, :cond_f

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    iget-object v2, v1, Lcom/loc/fg;->E:Ljava/util/ArrayList;

    invoke-virtual {v2, v13}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    goto :goto_c

    :cond_e
    invoke-virtual/range {p5 .. p5}, Lcom/loc/ew;->g()V

    iget-object v2, v1, Lcom/loc/fg;->E:Ljava/util/ArrayList;

    if-eqz v2, :cond_f

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    :cond_f
    :goto_c
    const/4 v2, 0x0

    iput-short v2, v1, Lcom/loc/fg;->b:S

    if-nez p2, :cond_10

    const/4 v11, 0x2

    or-int/2addr v11, v2

    int-to-short v2, v11

    iput-short v2, v1, Lcom/loc/fg;->b:S

    :cond_10
    iput-object v6, v1, Lcom/loc/fg;->c:Ljava/lang/String;

    iput-object v7, v1, Lcom/loc/fg;->d:Ljava/lang/String;

    sget-object v2, Landroid/os/Build;->MODEL:Ljava/lang/String;

    iput-object v2, v1, Lcom/loc/fg;->f:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v6, "android"

    invoke-direct {v2, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v6, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/loc/fg;->g:Ljava/lang/String;

    invoke-static/range {p1 .. p1}, Lcom/loc/fp;->b(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/loc/fg;->h:Ljava/lang/String;

    move-object/from16 v2, v16

    iput-object v2, v1, Lcom/loc/fg;->i:Ljava/lang/String;

    iput-object v5, v1, Lcom/loc/fg;->j:Ljava/lang/String;

    iput-object v5, v1, Lcom/loc/fg;->k:Ljava/lang/String;

    iput-object v5, v1, Lcom/loc/fg;->l:Ljava/lang/String;

    iput-object v5, v1, Lcom/loc/fg;->m:Ljava/lang/String;

    iput-object v5, v1, Lcom/loc/fg;->n:Ljava/lang/String;

    iput-object v3, v1, Lcom/loc/fg;->o:Ljava/lang/String;

    sget-object v2, Lcom/loc/fi;->g:Ljava/lang/String;

    iput-object v2, v1, Lcom/loc/fg;->p:Ljava/lang/String;

    sget-object v2, Lcom/loc/fi;->h:Ljava/lang/String;

    iput-object v2, v1, Lcom/loc/fg;->q:Ljava/lang/String;

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/loc/fg;->s:Ljava/lang/String;

    invoke-static/range {p1 .. p1}, Lcom/loc/fp;->j(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/loc/fg;->t:Ljava/lang/String;

    const-string v2, "5.6.2"

    iput-object v2, v1, Lcom/loc/fg;->v:Ljava/lang/String;

    const/4 v2, 0x0

    iput-object v2, v1, Lcom/loc/fg;->w:Ljava/lang/String;

    iput-object v14, v1, Lcom/loc/fg;->u:Ljava/lang/String;

    iput-object v0, v1, Lcom/loc/fg;->x:Ljava/lang/String;

    iput-object v8, v1, Lcom/loc/fg;->y:Ljava/lang/String;

    iput v9, v1, Lcom/loc/fg;->z:I

    invoke-virtual/range {p4 .. p4}, Lcom/loc/es;->k()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lcom/loc/fg;->C:Ljava/lang/String;

    invoke-static {}, Lcom/loc/ew;->o()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lcom/loc/fg;->F:Ljava/lang/String;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lcom/loc/fg;->D:Ljava/lang/String;

    invoke-static {}, Lcom/loc/fp;->b()J

    move-result-wide v2

    invoke-virtual/range {p5 .. p5}, Lcom/loc/ew;->p()J

    move-result-wide v4

    sub-long/2addr v2, v4

    const-wide/16 v4, 0x3e8

    div-long/2addr v2, v4

    long-to-int v0, v2

    iput v0, v1, Lcom/loc/fg;->O:I

    :try_start_4
    sget-object v0, Lcom/loc/fg;->I:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_11

    invoke-static/range {p1 .. p1}, Lcom/loc/n;->h(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/loc/fg;->I:Ljava/lang/String;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_3

    :catchall_3
    :cond_11
    :try_start_5
    sget-object v0, Lcom/loc/fg;->K:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_12

    invoke-static/range {p1 .. p1}, Lcom/loc/n;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/loc/fg;->K:Ljava/lang/String;
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_4

    :catchall_4
    :cond_12
    :try_start_6
    iget-object v0, v1, Lcom/loc/fg;->M:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_13

    invoke-static/range {p1 .. p1}, Lcom/loc/n;->i(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lcom/loc/fg;->M:Ljava/lang/String;
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_5

    :catchall_5
    :cond_13
    :try_start_7
    iget-object v0, v1, Lcom/loc/fg;->N:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_14

    invoke-static/range {p1 .. p1}, Lcom/loc/n;->g(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lcom/loc/fg;->N:Ljava/lang/String;
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_6

    :catchall_6
    :cond_14
    :try_start_8
    iget-object v0, v1, Lcom/loc/fg;->B:Ljava/util/ArrayList;

    iget-object v2, v1, Lcom/loc/fg;->E:Ljava/util/ArrayList;

    move-object/from16 v3, p8

    invoke-virtual {v3, v0, v2}, Lcom/loc/eu;->a(Ljava/util/ArrayList;Ljava/util/ArrayList;)Ljava/util/List;

    move-result-object v0

    iput-object v0, v1, Lcom/loc/fg;->S:Ljava/util/List;

    iget-object v0, v1, Lcom/loc/fg;->A:Ljava/util/ArrayList;

    iget-object v2, v1, Lcom/loc/fg;->B:Ljava/util/ArrayList;

    invoke-direct {v1, v0, v2}, Lcom/loc/fg;->a(Ljava/util/ArrayList;Ljava/util/ArrayList;)V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_7

    goto :goto_d

    :catchall_7
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_d
    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    move-object/from16 v2, v18

    const/4 v3, 0x0

    invoke-virtual {v2, v3, v0}, Ljava/lang/StringBuilder;->delete(II)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    invoke-virtual {v10, v3, v0}, Ljava/lang/StringBuilder;->delete(II)Ljava/lang/StringBuilder;

    return-void
.end method

.method public final a()[B
    .locals 29

    move-object/from16 v1, p0

    const-string v2, "Req"

    invoke-direct/range {p0 .. p0}, Lcom/loc/fg;->b()V

    const/4 v3, 0x2

    new-array v4, v3, [B

    const/4 v5, 0x4

    new-array v6, v5, [B

    iget-object v0, v1, Lcom/loc/fg;->H:[B

    const/16 v7, 0x1000

    const/4 v8, 0x1

    if-eqz v0, :cond_0

    array-length v0, v0

    add-int/2addr v0, v8

    add-int/2addr v7, v0

    :cond_0
    iget-object v0, v1, Lcom/loc/fg;->Q:[B

    if-eqz v0, :cond_1

    iget v9, v1, Lcom/loc/fg;->R:I

    if-le v7, v9, :cond_2

    :cond_1
    new-array v0, v7, [B

    iput-object v0, v1, Lcom/loc/fg;->Q:[B

    iput v7, v1, Lcom/loc/fg;->R:I

    :cond_2
    move-object v7, v0

    iget-object v0, v1, Lcom/loc/fg;->a:Ljava/lang/String;

    invoke-static {v0}, Lcom/loc/fp;->g(Ljava/lang/String;)B

    move-result v0

    const/4 v9, 0x0

    aput-byte v0, v7, v9

    iget-short v0, v1, Lcom/loc/fg;->b:S

    const/4 v10, 0x0

    invoke-static {v0, v10}, Lcom/loc/fp;->a(I[B)[B

    move-result-object v0

    array-length v11, v0

    invoke-static {v0, v9, v7, v8, v11}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    array-length v0, v0

    add-int/2addr v0, v8

    iget-object v11, v1, Lcom/loc/fg;->c:Ljava/lang/String;

    invoke-static {v11, v7, v0}, Lcom/loc/fg;->a(Ljava/lang/String;[BI)I

    move-result v0

    iget-object v11, v1, Lcom/loc/fg;->d:Ljava/lang/String;

    invoke-static {v11, v7, v0}, Lcom/loc/fg;->a(Ljava/lang/String;[BI)I

    move-result v0

    iget-object v11, v1, Lcom/loc/fg;->o:Ljava/lang/String;

    invoke-static {v11, v7, v0}, Lcom/loc/fg;->a(Ljava/lang/String;[BI)I

    move-result v0

    iget-object v11, v1, Lcom/loc/fg;->e:Ljava/lang/String;

    invoke-static {v11, v7, v0}, Lcom/loc/fg;->a(Ljava/lang/String;[BI)I

    move-result v0

    iget-object v11, v1, Lcom/loc/fg;->f:Ljava/lang/String;

    invoke-static {v11, v7, v0}, Lcom/loc/fg;->a(Ljava/lang/String;[BI)I

    move-result v0

    iget-object v11, v1, Lcom/loc/fg;->g:Ljava/lang/String;

    invoke-static {v11, v7, v0}, Lcom/loc/fg;->a(Ljava/lang/String;[BI)I

    move-result v0

    iget-object v11, v1, Lcom/loc/fg;->u:Ljava/lang/String;

    invoke-static {v11, v7, v0}, Lcom/loc/fg;->a(Ljava/lang/String;[BI)I

    move-result v0

    iget-object v11, v1, Lcom/loc/fg;->h:Ljava/lang/String;

    invoke-static {v11, v7, v0}, Lcom/loc/fg;->a(Ljava/lang/String;[BI)I

    move-result v0

    iget-object v11, v1, Lcom/loc/fg;->p:Ljava/lang/String;

    invoke-static {v11, v7, v0}, Lcom/loc/fg;->a(Ljava/lang/String;[BI)I

    move-result v0

    iget-object v11, v1, Lcom/loc/fg;->q:Ljava/lang/String;

    invoke-static {v11, v7, v0}, Lcom/loc/fg;->a(Ljava/lang/String;[BI)I

    move-result v11

    :try_start_0
    iget-object v0, v1, Lcom/loc/fg;->t:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_3

    aput-byte v9, v7, v11

    goto :goto_0

    :cond_3
    iget-object v0, v1, Lcom/loc/fg;->t:Ljava/lang/String;

    invoke-direct {v1, v0}, Lcom/loc/fg;->a(Ljava/lang/String;)[B

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

    invoke-static {v0, v2, v12}, Lcom/loc/fi;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    aput-byte v9, v7, v11

    :goto_0
    add-int/2addr v11, v8

    :goto_1
    iget-object v0, v1, Lcom/loc/fg;->v:Ljava/lang/String;

    invoke-static {v0, v7, v11}, Lcom/loc/fg;->a(Ljava/lang/String;[BI)I

    move-result v0

    iget-object v11, v1, Lcom/loc/fg;->w:Ljava/lang/String;

    invoke-static {v11, v7, v0}, Lcom/loc/fg;->a(Ljava/lang/String;[BI)I

    move-result v0

    sget-object v11, Lcom/loc/fg;->I:Ljava/lang/String;

    invoke-static {v11, v7, v0}, Lcom/loc/fg;->a(Ljava/lang/String;[BI)I

    move-result v0

    sget-object v11, Lcom/loc/fg;->K:Ljava/lang/String;

    invoke-static {v11, v7, v0}, Lcom/loc/fg;->a(Ljava/lang/String;[BI)I

    move-result v0

    iget-object v11, v1, Lcom/loc/fg;->x:Ljava/lang/String;

    invoke-static {v11, v7, v0}, Lcom/loc/fg;->a(Ljava/lang/String;[BI)I

    move-result v0

    iget-object v11, v1, Lcom/loc/fg;->y:Ljava/lang/String;

    invoke-static {v11}, Ljava/lang/Byte;->parseByte(Ljava/lang/String;)B

    move-result v11

    aput-byte v11, v7, v0

    add-int/2addr v0, v8

    iget-object v11, v1, Lcom/loc/fg;->j:Ljava/lang/String;

    invoke-static {v11}, Ljava/lang/Byte;->parseByte(Ljava/lang/String;)B

    move-result v11

    aput-byte v11, v7, v0

    add-int/2addr v0, v8

    iget v11, v1, Lcom/loc/fg;->z:I

    and-int/lit8 v12, v11, 0x3

    int-to-byte v11, v11

    aput-byte v11, v7, v0

    add-int/2addr v0, v8

    const/16 v11, -0x80

    const-wide/16 v15, 0x3e8

    const-wide/16 v17, 0x0

    const/16 v5, 0x7f

    if-eq v12, v8, :cond_5

    if-ne v12, v3, :cond_4

    goto :goto_2

    :cond_4
    move-object/from16 v21, v6

    goto/16 :goto_1b

    :cond_5
    :goto_2
    iget-object v13, v1, Lcom/loc/fg;->A:Ljava/util/ArrayList;

    invoke-virtual {v13}, Ljava/util/ArrayList;->size()I

    move-result v13

    if-lez v13, :cond_6

    iget-object v13, v1, Lcom/loc/fg;->A:Ljava/util/ArrayList;

    invoke-virtual {v13, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/loc/er;

    iget v13, v13, Lcom/loc/er;->a:I

    goto :goto_3

    :cond_6
    const/4 v13, 0x0

    :goto_3
    invoke-static {v13, v10}, Lcom/loc/fp;->a(I[B)[B

    move-result-object v13

    array-length v14, v13

    invoke-static {v13, v9, v7, v0, v14}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    array-length v13, v13

    add-int/2addr v0, v13

    if-ne v12, v8, :cond_a

    iget-object v13, v1, Lcom/loc/fg;->A:Ljava/util/ArrayList;

    invoke-virtual {v13}, Ljava/util/ArrayList;->size()I

    move-result v13

    if-lez v13, :cond_7

    iget-object v13, v1, Lcom/loc/fg;->A:Ljava/util/ArrayList;

    invoke-virtual {v13, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/loc/er;

    iget v13, v13, Lcom/loc/er;->b:I

    goto :goto_4

    :cond_7
    const/4 v13, 0x0

    :goto_4
    invoke-static {v13, v10}, Lcom/loc/fp;->a(I[B)[B

    move-result-object v13

    array-length v14, v13

    invoke-static {v13, v9, v7, v0, v14}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    array-length v13, v13

    add-int/2addr v0, v13

    iget-object v13, v1, Lcom/loc/fg;->A:Ljava/util/ArrayList;

    invoke-virtual {v13}, Ljava/util/ArrayList;->size()I

    move-result v13

    if-lez v13, :cond_8

    iget-object v13, v1, Lcom/loc/fg;->A:Ljava/util/ArrayList;

    invoke-virtual {v13, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/loc/er;

    iget v13, v13, Lcom/loc/er;->c:I

    goto :goto_5

    :cond_8
    const/4 v13, 0x0

    :goto_5
    invoke-static {v13, v10}, Lcom/loc/fp;->a(I[B)[B

    move-result-object v13

    array-length v14, v13

    invoke-static {v13, v9, v7, v0, v14}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    array-length v13, v13

    add-int/2addr v0, v13

    iget-object v13, v1, Lcom/loc/fg;->A:Ljava/util/ArrayList;

    invoke-virtual {v13}, Ljava/util/ArrayList;->size()I

    move-result v13

    if-lez v13, :cond_9

    iget-object v13, v1, Lcom/loc/fg;->A:Ljava/util/ArrayList;

    invoke-virtual {v13, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/loc/er;

    iget v13, v13, Lcom/loc/er;->d:I

    goto :goto_6

    :cond_9
    const/4 v13, 0x0

    :goto_6
    invoke-static {v13, v10}, Lcom/loc/fp;->b(I[B)[B

    move-result-object v13

    array-length v14, v13

    invoke-static {v13, v9, v7, v0, v14}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    array-length v13, v13

    :goto_7
    add-int/2addr v0, v13

    goto/16 :goto_d

    :cond_a
    if-ne v12, v3, :cond_10

    iget-object v13, v1, Lcom/loc/fg;->A:Ljava/util/ArrayList;

    invoke-virtual {v13}, Ljava/util/ArrayList;->size()I

    move-result v13

    if-lez v13, :cond_b

    iget-object v13, v1, Lcom/loc/fg;->A:Ljava/util/ArrayList;

    invoke-virtual {v13, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/loc/er;

    iget v13, v13, Lcom/loc/er;->h:I

    goto :goto_8

    :cond_b
    const/4 v13, 0x0

    :goto_8
    invoke-static {v13, v10}, Lcom/loc/fp;->a(I[B)[B

    move-result-object v13

    array-length v14, v13

    invoke-static {v13, v9, v7, v0, v14}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    array-length v13, v13

    add-int/2addr v0, v13

    iget-object v13, v1, Lcom/loc/fg;->A:Ljava/util/ArrayList;

    invoke-virtual {v13}, Ljava/util/ArrayList;->size()I

    move-result v13

    if-lez v13, :cond_c

    iget-object v13, v1, Lcom/loc/fg;->A:Ljava/util/ArrayList;

    invoke-virtual {v13, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/loc/er;

    iget v13, v13, Lcom/loc/er;->i:I

    goto :goto_9

    :cond_c
    const/4 v13, 0x0

    :goto_9
    invoke-static {v13, v10}, Lcom/loc/fp;->a(I[B)[B

    move-result-object v13

    array-length v14, v13

    invoke-static {v13, v9, v7, v0, v14}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    array-length v13, v13

    add-int/2addr v0, v13

    iget-object v13, v1, Lcom/loc/fg;->A:Ljava/util/ArrayList;

    invoke-virtual {v13}, Ljava/util/ArrayList;->size()I

    move-result v13

    if-lez v13, :cond_d

    iget-object v13, v1, Lcom/loc/fg;->A:Ljava/util/ArrayList;

    invoke-virtual {v13, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/loc/er;

    iget v13, v13, Lcom/loc/er;->j:I

    goto :goto_a

    :cond_d
    const/4 v13, 0x0

    :goto_a
    invoke-static {v13, v10}, Lcom/loc/fp;->a(I[B)[B

    move-result-object v13

    array-length v14, v13

    invoke-static {v13, v9, v7, v0, v14}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    array-length v13, v13

    add-int/2addr v0, v13

    iget-object v13, v1, Lcom/loc/fg;->A:Ljava/util/ArrayList;

    invoke-virtual {v13}, Ljava/util/ArrayList;->size()I

    move-result v13

    if-lez v13, :cond_e

    iget-object v13, v1, Lcom/loc/fg;->A:Ljava/util/ArrayList;

    invoke-virtual {v13, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/loc/er;

    iget v13, v13, Lcom/loc/er;->g:I

    goto :goto_b

    :cond_e
    const/4 v13, 0x0

    :goto_b
    invoke-static {v13, v10}, Lcom/loc/fp;->b(I[B)[B

    move-result-object v13

    array-length v14, v13

    invoke-static {v13, v9, v7, v0, v14}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    array-length v13, v13

    add-int/2addr v0, v13

    iget-object v13, v1, Lcom/loc/fg;->A:Ljava/util/ArrayList;

    invoke-virtual {v13}, Ljava/util/ArrayList;->size()I

    move-result v13

    if-lez v13, :cond_f

    iget-object v13, v1, Lcom/loc/fg;->A:Ljava/util/ArrayList;

    invoke-virtual {v13, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/loc/er;

    iget v13, v13, Lcom/loc/er;->f:I

    goto :goto_c

    :cond_f
    const/4 v13, 0x0

    :goto_c
    invoke-static {v13, v10}, Lcom/loc/fp;->b(I[B)[B

    move-result-object v13

    array-length v14, v13

    invoke-static {v13, v9, v7, v0, v14}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    array-length v13, v13

    goto/16 :goto_7

    :cond_10
    :goto_d
    iget-object v13, v1, Lcom/loc/fg;->A:Ljava/util/ArrayList;

    invoke-virtual {v13}, Ljava/util/ArrayList;->size()I

    move-result v13

    if-lez v13, :cond_11

    iget-object v13, v1, Lcom/loc/fg;->A:Ljava/util/ArrayList;

    invoke-virtual {v13, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/loc/er;

    iget v13, v13, Lcom/loc/er;->k:I

    goto :goto_e

    :cond_11
    const/4 v13, 0x0

    :goto_e
    if-le v13, v5, :cond_12

    :goto_f
    const/4 v13, 0x0

    goto :goto_10

    :cond_12
    if-ge v13, v11, :cond_13

    goto :goto_f

    :cond_13
    :goto_10
    int-to-byte v13, v13

    aput-byte v13, v7, v0

    add-int/2addr v0, v8

    iget-object v13, v1, Lcom/loc/fg;->A:Ljava/util/ArrayList;

    invoke-virtual {v13}, Ljava/util/ArrayList;->size()I

    move-result v13

    if-lez v13, :cond_14

    invoke-static {}, Lcom/loc/fp;->b()J

    move-result-wide v13

    iget-object v11, v1, Lcom/loc/fg;->A:Ljava/util/ArrayList;

    invoke-virtual {v11, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/loc/er;

    move-object/from16 v21, v6

    iget-wide v5, v11, Lcom/loc/er;->t:J

    sub-long/2addr v13, v5

    div-long/2addr v13, v15

    goto :goto_11

    :cond_14
    move-object/from16 v21, v6

    move-wide/from16 v13, v17

    :goto_11
    const-wide/32 v5, 0xffff

    cmp-long v11, v13, v5

    if-lez v11, :cond_15

    move-wide v13, v5

    :cond_15
    cmp-long v11, v13, v17

    if-gez v11, :cond_16

    move-wide/from16 v13, v17

    :cond_16
    long-to-int v11, v13

    invoke-static {v11, v4}, Lcom/loc/fp;->a(I[B)[B

    move-result-object v11

    array-length v13, v11

    invoke-static {v11, v9, v7, v0, v13}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    add-int/2addr v0, v3

    if-ne v12, v8, :cond_21

    iget-object v11, v1, Lcom/loc/fg;->A:Ljava/util/ArrayList;

    invoke-virtual {v11}, Ljava/util/ArrayList;->size()I

    move-result v11

    if-nez v11, :cond_17

    aput-byte v9, v7, v0

    goto/16 :goto_1a

    :cond_17
    iget-object v11, v1, Lcom/loc/fg;->A:Ljava/util/ArrayList;

    invoke-virtual {v11}, Ljava/util/ArrayList;->size()I

    move-result v11

    int-to-byte v12, v11

    aput-byte v12, v7, v0

    add-int/lit8 v0, v0, 0x1

    const/4 v12, 0x0

    :goto_12
    if-ge v12, v11, :cond_22

    iget-object v13, v1, Lcom/loc/fg;->A:Ljava/util/ArrayList;

    invoke-virtual {v13}, Ljava/util/ArrayList;->size()I

    move-result v13

    if-lez v13, :cond_18

    iget-object v13, v1, Lcom/loc/fg;->A:Ljava/util/ArrayList;

    invoke-virtual {v13, v12}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/loc/er;

    iget v13, v13, Lcom/loc/er;->c:I

    goto :goto_13

    :cond_18
    const/4 v13, 0x0

    :goto_13
    invoke-static {v13, v10}, Lcom/loc/fp;->a(I[B)[B

    move-result-object v13

    array-length v14, v13

    invoke-static {v13, v9, v7, v0, v14}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    array-length v13, v13

    add-int/2addr v0, v13

    iget-object v13, v1, Lcom/loc/fg;->A:Ljava/util/ArrayList;

    invoke-virtual {v13}, Ljava/util/ArrayList;->size()I

    move-result v13

    if-lez v13, :cond_19

    iget-object v13, v1, Lcom/loc/fg;->A:Ljava/util/ArrayList;

    invoke-virtual {v13, v12}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/loc/er;

    iget v13, v13, Lcom/loc/er;->d:I

    goto :goto_14

    :cond_19
    const/4 v13, 0x0

    :goto_14
    invoke-static {v13, v10}, Lcom/loc/fp;->b(I[B)[B

    move-result-object v13

    array-length v14, v13

    invoke-static {v13, v9, v7, v0, v14}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    array-length v13, v13

    add-int/2addr v0, v13

    iget-object v13, v1, Lcom/loc/fg;->A:Ljava/util/ArrayList;

    invoke-virtual {v13}, Ljava/util/ArrayList;->size()I

    move-result v13

    if-lez v13, :cond_1a

    iget-object v13, v1, Lcom/loc/fg;->A:Ljava/util/ArrayList;

    invoke-virtual {v13, v12}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/loc/er;

    iget v13, v13, Lcom/loc/er;->k:I

    goto :goto_15

    :cond_1a
    const/4 v13, 0x0

    :goto_15
    const/16 v14, 0x7f

    if-le v13, v14, :cond_1b

    :goto_16
    const/4 v13, 0x0

    goto :goto_17

    :cond_1b
    const/16 v14, -0x80

    if-ge v13, v14, :cond_1c

    goto :goto_16

    :cond_1c
    :goto_17
    int-to-byte v13, v13

    aput-byte v13, v7, v0

    add-int/2addr v0, v8

    sget-object v13, Lcom/loc/fi;->a:Ljava/lang/String;

    invoke-static {v13}, Ljava/lang/Double;->valueOf(Ljava/lang/String;)Ljava/lang/Double;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v13

    const-wide v19, 0x4014cccccccccccdL    # 5.2

    cmpl-double v22, v13, v19

    if-ltz v22, :cond_20

    iget-object v13, v1, Lcom/loc/fg;->A:Ljava/util/ArrayList;

    invoke-virtual {v13}, Ljava/util/ArrayList;->size()I

    move-result v13

    if-lez v13, :cond_1d

    invoke-static {}, Lcom/loc/fp;->b()J

    move-result-wide v13

    iget-object v10, v1, Lcom/loc/fg;->A:Ljava/util/ArrayList;

    invoke-virtual {v10, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/loc/er;

    iget-wide v8, v10, Lcom/loc/er;->t:J

    sub-long/2addr v13, v8

    div-long/2addr v13, v15

    goto :goto_18

    :cond_1d
    move-wide/from16 v13, v17

    :goto_18
    cmp-long v8, v13, v5

    if-lez v8, :cond_1e

    move-wide v13, v5

    :cond_1e
    cmp-long v8, v13, v17

    if-gez v8, :cond_1f

    move-wide/from16 v13, v17

    :cond_1f
    long-to-int v8, v13

    invoke-static {v8, v4}, Lcom/loc/fp;->a(I[B)[B

    move-result-object v8

    array-length v9, v8

    const/4 v10, 0x0

    invoke-static {v8, v10, v7, v0, v9}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    array-length v8, v8

    add-int/2addr v0, v8

    goto :goto_19

    :cond_20
    const/4 v10, 0x0

    :goto_19
    add-int/lit8 v12, v12, 0x1

    const/4 v8, 0x1

    const/4 v9, 0x0

    const/4 v10, 0x0

    goto/16 :goto_12

    :cond_21
    const/4 v10, 0x0

    if-ne v12, v3, :cond_22

    aput-byte v10, v7, v0

    :goto_1a
    add-int/lit8 v0, v0, 0x1

    :cond_22
    :goto_1b
    iget-object v5, v1, Lcom/loc/fg;->C:Ljava/lang/String;

    const-string v6, "GBK"

    const/16 v8, 0x8

    if-eqz v5, :cond_23

    iget v9, v1, Lcom/loc/fg;->z:I

    and-int/2addr v9, v8

    if-ne v9, v8, :cond_23

    :try_start_1
    invoke-virtual {v5, v6}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v5

    array-length v9, v5

    const/16 v10, 0x3c

    invoke-static {v9, v10}, Ljava/lang/Math;->min(II)I

    move-result v9

    int-to-byte v10, v9

    aput-byte v10, v7, v0

    add-int/lit8 v0, v0, 0x1

    const/4 v10, 0x0

    invoke-static {v5, v10, v7, v0, v9}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    add-int/2addr v0, v9

    goto :goto_1c

    :catch_0
    :cond_23
    const/4 v5, 0x0

    aput-byte v5, v7, v0

    const/4 v5, 0x1

    add-int/2addr v0, v5

    :goto_1c
    iget-object v5, v1, Lcom/loc/fg;->B:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v9

    iget v10, v1, Lcom/loc/fg;->z:I

    const/4 v11, 0x4

    and-int/2addr v10, v11

    const-wide v23, 0x4015333333333333L    # 5.3

    const/4 v14, 0x5

    const/4 v12, 0x3

    if-ne v10, v11, :cond_35

    if-lez v9, :cond_35

    const/4 v10, 0x0

    invoke-virtual {v5, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    int-to-byte v10, v9

    aput-byte v10, v7, v0

    const/4 v10, 0x1

    add-int/2addr v0, v10

    const/4 v11, 0x0

    :goto_1d
    if-ge v11, v9, :cond_34

    invoke-virtual {v5, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/loc/er;

    iget v15, v13, Lcom/loc/er;->l:I

    if-eq v15, v10, :cond_29

    if-eq v15, v12, :cond_29

    const/4 v10, 0x4

    if-ne v15, v10, :cond_24

    goto/16 :goto_1e

    :cond_24
    if-ne v15, v3, :cond_26

    int-to-byte v10, v15

    iget-boolean v15, v13, Lcom/loc/er;->n:Z

    if-eqz v15, :cond_25

    or-int/lit8 v10, v10, 0x8

    int-to-byte v10, v10

    :cond_25
    aput-byte v10, v7, v0

    add-int/lit8 v0, v0, 0x1

    iget v10, v13, Lcom/loc/er;->a:I

    invoke-static {v10, v4}, Lcom/loc/fp;->a(I[B)[B

    move-result-object v10

    array-length v15, v10

    const/4 v3, 0x0

    invoke-static {v10, v3, v7, v0, v15}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    array-length v10, v10

    add-int/2addr v0, v10

    iget v10, v13, Lcom/loc/er;->h:I

    invoke-static {v10, v4}, Lcom/loc/fp;->a(I[B)[B

    move-result-object v10

    array-length v15, v10

    invoke-static {v10, v3, v7, v0, v15}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    array-length v10, v10

    add-int/2addr v0, v10

    iget v10, v13, Lcom/loc/er;->i:I

    invoke-static {v10, v4}, Lcom/loc/fp;->a(I[B)[B

    move-result-object v10

    array-length v15, v10

    invoke-static {v10, v3, v7, v0, v15}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    array-length v10, v10

    add-int/2addr v0, v10

    iget v10, v13, Lcom/loc/er;->j:I

    invoke-static {v10, v4}, Lcom/loc/fp;->a(I[B)[B

    move-result-object v10

    array-length v15, v10

    invoke-static {v10, v3, v7, v0, v15}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    array-length v10, v10

    add-int/2addr v0, v10

    iget v10, v13, Lcom/loc/er;->g:I

    move-object/from16 v15, v21

    invoke-static {v10, v15}, Lcom/loc/fp;->b(I[B)[B

    move-result-object v10

    array-length v12, v10

    invoke-static {v10, v3, v7, v0, v12}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    array-length v10, v10

    add-int/2addr v0, v10

    iget v10, v13, Lcom/loc/er;->f:I

    invoke-static {v10, v15}, Lcom/loc/fp;->b(I[B)[B

    move-result-object v10

    array-length v12, v10

    invoke-static {v10, v3, v7, v0, v12}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    array-length v3, v10

    add-int/2addr v0, v3

    move v12, v9

    move-object v3, v15

    goto/16 :goto_1f

    :cond_26
    move-object/from16 v3, v21

    if-ne v15, v14, :cond_28

    int-to-byte v10, v15

    iget-boolean v12, v13, Lcom/loc/er;->n:Z

    if-eqz v12, :cond_27

    or-int/lit8 v10, v10, 0x8

    int-to-byte v10, v10

    :cond_27
    aput-byte v10, v7, v0

    add-int/lit8 v0, v0, 0x1

    iget v10, v13, Lcom/loc/er;->a:I

    invoke-static {v10, v4}, Lcom/loc/fp;->a(I[B)[B

    move-result-object v10

    array-length v12, v10

    const/4 v15, 0x0

    invoke-static {v10, v15, v7, v0, v12}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    array-length v10, v10

    add-int/2addr v0, v10

    iget v10, v13, Lcom/loc/er;->b:I

    invoke-static {v10, v4}, Lcom/loc/fp;->a(I[B)[B

    move-result-object v10

    array-length v12, v10

    invoke-static {v10, v15, v7, v0, v12}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    array-length v10, v10

    add-int/2addr v0, v10

    iget v10, v13, Lcom/loc/er;->c:I

    invoke-static {v10, v4}, Lcom/loc/fp;->a(I[B)[B

    move-result-object v10

    array-length v12, v10

    invoke-static {v10, v15, v7, v0, v12}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    array-length v10, v10

    add-int/2addr v0, v10

    move v12, v9

    iget-wide v9, v13, Lcom/loc/er;->e:J

    invoke-static {v9, v10}, Lcom/loc/fp;->a(J)[B

    move-result-object v9

    invoke-static {v9, v15, v7, v0, v8}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    add-int/2addr v0, v8

    goto :goto_1f

    :cond_28
    move v12, v9

    goto :goto_1f

    :cond_29
    :goto_1e
    move v12, v9

    move-object/from16 v3, v21

    int-to-byte v9, v15

    iget-boolean v10, v13, Lcom/loc/er;->n:Z

    if-eqz v10, :cond_2a

    or-int/lit8 v9, v9, 0x8

    int-to-byte v9, v9

    :cond_2a
    aput-byte v9, v7, v0

    add-int/lit8 v0, v0, 0x1

    iget v9, v13, Lcom/loc/er;->a:I

    invoke-static {v9, v4}, Lcom/loc/fp;->a(I[B)[B

    move-result-object v9

    array-length v10, v9

    const/4 v15, 0x0

    invoke-static {v9, v15, v7, v0, v10}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    array-length v9, v9

    add-int/2addr v0, v9

    iget v9, v13, Lcom/loc/er;->b:I

    invoke-static {v9, v4}, Lcom/loc/fp;->a(I[B)[B

    move-result-object v9

    array-length v10, v9

    invoke-static {v9, v15, v7, v0, v10}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    array-length v9, v9

    add-int/2addr v0, v9

    iget v9, v13, Lcom/loc/er;->c:I

    invoke-static {v9, v4}, Lcom/loc/fp;->a(I[B)[B

    move-result-object v9

    array-length v10, v9

    invoke-static {v9, v15, v7, v0, v10}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    array-length v9, v9

    add-int/2addr v0, v9

    iget v9, v13, Lcom/loc/er;->d:I

    invoke-static {v9, v3}, Lcom/loc/fp;->b(I[B)[B

    move-result-object v9

    array-length v10, v9

    invoke-static {v9, v15, v7, v0, v10}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    array-length v9, v9

    add-int/2addr v0, v9

    :goto_1f
    iget v9, v13, Lcom/loc/er;->k:I

    const/16 v10, 0x63

    const/16 v15, 0x7f

    if-le v9, v15, :cond_2b

    :goto_20
    const/16 v9, 0x63

    goto :goto_21

    :cond_2b
    const/16 v15, -0x80

    if-ge v9, v15, :cond_2c

    goto :goto_20

    :cond_2c
    :goto_21
    int-to-byte v9, v9

    aput-byte v9, v7, v0

    const/4 v9, 0x1

    add-int/2addr v0, v9

    invoke-static {}, Lcom/loc/fp;->b()J

    move-result-wide v9

    iget-wide v14, v13, Lcom/loc/er;->t:J

    sub-long/2addr v9, v14

    const-wide/16 v14, 0x3e8

    div-long/2addr v9, v14

    long-to-int v10, v9

    int-to-short v9, v10

    invoke-static {v9, v4}, Lcom/loc/fp;->a(I[B)[B

    move-result-object v9

    array-length v10, v9

    const/4 v14, 0x0

    invoke-static {v9, v14, v7, v0, v10}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    array-length v9, v9

    add-int/2addr v0, v9

    iget v9, v13, Lcom/loc/er;->l:I

    const/16 v10, 0x7fff

    const/4 v14, 0x3

    if-eq v9, v14, :cond_30

    const/4 v14, 0x4

    if-eq v9, v14, :cond_30

    const/4 v14, 0x5

    if-ne v9, v14, :cond_2d

    goto :goto_24

    :cond_2d
    const/4 v14, 0x1

    if-ne v9, v14, :cond_33

    sget-object v9, Lcom/loc/fi;->a:Ljava/lang/String;

    invoke-static {v9}, Ljava/lang/Double;->valueOf(Ljava/lang/String;)Ljava/lang/Double;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v14

    cmpl-double v9, v14, v23

    if-ltz v9, :cond_33

    iget v9, v13, Lcom/loc/er;->o:I

    if-le v9, v10, :cond_2e

    const/16 v9, 0x7fff

    :cond_2e
    if-gez v9, :cond_2f

    goto :goto_22

    :cond_2f
    move v10, v9

    :goto_22
    invoke-static {v10, v4}, Lcom/loc/fp;->a(I[B)[B

    move-result-object v9

    array-length v10, v9

    const/4 v14, 0x0

    invoke-static {v9, v14, v7, v0, v10}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    array-length v9, v9

    add-int/2addr v0, v9

    iget v9, v13, Lcom/loc/er;->p:I

    invoke-static {v9, v3}, Lcom/loc/fp;->b(I[B)[B

    move-result-object v9

    array-length v10, v9

    invoke-static {v9, v14, v7, v0, v10}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    array-length v9, v9

    add-int/2addr v0, v9

    iget v9, v13, Lcom/loc/er;->q:I

    invoke-static {v9, v3}, Lcom/loc/fp;->b(I[B)[B

    move-result-object v9

    array-length v10, v9

    invoke-static {v9, v14, v7, v0, v10}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    array-length v9, v9

    :goto_23
    add-int/2addr v0, v9

    goto :goto_26

    :cond_30
    :goto_24
    sget-object v9, Lcom/loc/fi;->a:Ljava/lang/String;

    invoke-static {v9}, Ljava/lang/Double;->valueOf(Ljava/lang/String;)Ljava/lang/Double;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v14

    const-wide/high16 v25, 0x4014000000000000L    # 5.0

    cmpl-double v9, v14, v25

    if-ltz v9, :cond_33

    iget v9, v13, Lcom/loc/er;->o:I

    if-le v9, v10, :cond_31

    const/16 v9, 0x7fff

    :cond_31
    if-gez v9, :cond_32

    goto :goto_25

    :cond_32
    move v10, v9

    :goto_25
    invoke-static {v10, v4}, Lcom/loc/fp;->a(I[B)[B

    move-result-object v9

    array-length v10, v9

    const/4 v14, 0x0

    invoke-static {v9, v14, v7, v0, v10}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    array-length v9, v9

    add-int/2addr v0, v9

    sget-object v9, Lcom/loc/fi;->a:Ljava/lang/String;

    invoke-static {v9}, Ljava/lang/Double;->valueOf(Ljava/lang/String;)Ljava/lang/Double;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v9

    cmpl-double v15, v9, v23

    if-ltz v15, :cond_33

    iget v9, v13, Lcom/loc/er;->p:I

    invoke-static {v9, v3}, Lcom/loc/fp;->b(I[B)[B

    move-result-object v9

    array-length v10, v9

    invoke-static {v9, v14, v7, v0, v10}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    array-length v9, v9

    add-int/2addr v0, v9

    iget v9, v13, Lcom/loc/er;->q:I

    invoke-static {v9, v3}, Lcom/loc/fp;->b(I[B)[B

    move-result-object v9

    array-length v10, v9

    invoke-static {v9, v14, v7, v0, v10}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    array-length v9, v9

    goto :goto_23

    :cond_33
    :goto_26
    add-int/lit8 v11, v11, 0x1

    move-object/from16 v21, v3

    move v9, v12

    const/4 v3, 0x2

    const/4 v10, 0x1

    const/4 v12, 0x3

    const/4 v14, 0x5

    const-wide/16 v15, 0x3e8

    goto/16 :goto_1d

    :cond_34
    move-object/from16 v3, v21

    const/4 v5, 0x1

    goto :goto_27

    :cond_35
    move-object/from16 v3, v21

    const/4 v5, 0x0

    aput-byte v5, v7, v0

    const/4 v5, 0x1

    add-int/2addr v0, v5

    :goto_27
    iget-object v9, v1, Lcom/loc/fg;->D:Ljava/lang/String;

    invoke-static {v9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-nez v9, :cond_3b

    iget-object v9, v1, Lcom/loc/fg;->D:Ljava/lang/String;

    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v9

    if-nez v9, :cond_36

    goto/16 :goto_2b

    :cond_36
    aput-byte v5, v7, v0

    add-int/lit8 v9, v0, 0x1

    :try_start_2
    iget-object v0, v1, Lcom/loc/fg;->D:Ljava/lang/String;

    const-string v5, ","

    invoke-virtual {v0, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    const/4 v10, 0x0

    aget-object v0, v5, v10

    invoke-direct {v1, v0}, Lcom/loc/fg;->a(Ljava/lang/String;)[B

    move-result-object v0

    array-length v11, v0

    invoke-static {v0, v10, v7, v9, v11}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    array-length v0, v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    add-int/2addr v9, v0

    const/4 v10, 0x2

    :try_start_3
    aget-object v0, v5, v10

    invoke-virtual {v0, v6}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v0

    array-length v10, v0

    const/16 v11, 0x7f

    if-le v10, v11, :cond_37

    const/16 v10, 0x7f

    :cond_37
    int-to-byte v11, v10

    aput-byte v11, v7, v9

    add-int/lit8 v9, v9, 0x1

    const/4 v11, 0x0

    invoke-static {v0, v11, v7, v9, v10}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    add-int/2addr v9, v10

    goto :goto_28

    :catchall_1
    move-exception v0

    :try_start_4
    const-string v10, "buildV4Dot214"

    invoke-static {v0, v2, v10}, Lcom/loc/fi;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    const/4 v10, 0x0

    aput-byte v10, v7, v9

    add-int/lit8 v9, v9, 0x1

    :goto_28
    const/4 v10, 0x1

    aget-object v0, v5, v10

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    const/16 v5, 0x7f

    if-le v0, v5, :cond_38

    :goto_29
    const/4 v0, 0x0

    goto :goto_2a

    :cond_38
    const/16 v5, -0x80

    if-ge v0, v5, :cond_39

    goto :goto_29

    :cond_39
    :goto_2a
    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Byte;->parseByte(Ljava/lang/String;)B

    move-result v0

    aput-byte v0, v7, v9

    add-int/lit8 v9, v9, 0x1

    sget-object v0, Lcom/loc/fi;->a:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Double;->valueOf(Ljava/lang/String;)Ljava/lang/Double;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v10

    const-wide v12, 0x4014cccccccccccdL    # 5.2

    cmpl-double v0, v10, v12

    if-ltz v0, :cond_3a

    iget v0, v1, Lcom/loc/fg;->O:I

    invoke-static {v0, v4}, Lcom/loc/fp;->a(I[B)[B

    move-result-object v0

    array-length v5, v0

    const/4 v10, 0x0

    invoke-static {v0, v10, v7, v9, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    array-length v0, v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    add-int/2addr v9, v0

    :cond_3a
    const/4 v2, 0x1

    const/4 v5, 0x0

    goto :goto_2c

    :catchall_2
    move-exception v0

    const-string v5, "buildV4Dot216"

    invoke-static {v0, v2, v5}, Lcom/loc/fi;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "00:00:00:00:00:00"

    invoke-direct {v1, v0}, Lcom/loc/fg;->a(Ljava/lang/String;)[B

    move-result-object v0

    array-length v2, v0

    const/4 v5, 0x0

    invoke-static {v0, v5, v7, v9, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    array-length v0, v0

    add-int/2addr v9, v0

    aput-byte v5, v7, v9

    const/4 v2, 0x1

    add-int/2addr v9, v2

    const-string v0, "0"

    invoke-static {v0}, Ljava/lang/Byte;->parseByte(Ljava/lang/String;)B

    move-result v0

    aput-byte v0, v7, v9

    add-int/2addr v9, v2

    goto :goto_2c

    :cond_3b
    :goto_2b
    const/4 v2, 0x1

    const/4 v5, 0x0

    aput-byte v5, v7, v0

    add-int/lit8 v9, v0, 0x1

    :goto_2c
    iget-object v0, v1, Lcom/loc/fg;->E:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v10

    const/16 v11, 0x19

    invoke-static {v10, v11}, Ljava/lang/Math;->min(II)I

    move-result v10

    const v11, 0xffff

    if-nez v10, :cond_3c

    aput-byte v5, v7, v9

    add-int/2addr v9, v2

    const/4 v15, 0x0

    goto/16 :goto_31

    :cond_3c
    int-to-byte v5, v10

    aput-byte v5, v7, v9

    add-int/2addr v9, v2

    invoke-static {}, Lcom/loc/fp;->c()I

    move-result v2

    const/16 v5, 0x11

    if-lt v2, v5, :cond_3d

    const/4 v2, 0x1

    goto :goto_2d

    :cond_3d
    const/4 v2, 0x0

    :goto_2d
    if-eqz v2, :cond_3e

    invoke-static {}, Lcom/loc/fp;->b()J

    move-result-wide v12

    const-wide/16 v14, 0x3e8

    div-long v17, v12, v14

    :cond_3e
    const/4 v5, 0x0

    :goto_2e
    if-ge v5, v10, :cond_44

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/loc/dx;

    iget-wide v13, v12, Lcom/loc/dx;->a:J

    invoke-static {v13, v14}, Lcom/loc/dx;->a(J)Ljava/lang/String;

    move-result-object v13

    invoke-direct {v1, v13}, Lcom/loc/fg;->a(Ljava/lang/String;)[B

    move-result-object v13

    array-length v14, v13

    const/4 v15, 0x0

    invoke-static {v13, v15, v7, v9, v14}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    array-length v13, v13

    add-int/2addr v9, v13

    :try_start_5
    iget-object v13, v12, Lcom/loc/dx;->b:Ljava/lang/String;

    invoke-virtual {v13, v6}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v13

    array-length v14, v13

    int-to-byte v14, v14

    aput-byte v14, v7, v9

    add-int/lit8 v9, v9, 0x1

    array-length v14, v13

    const/4 v15, 0x0

    invoke-static {v13, v15, v7, v9, v14}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    array-length v13, v13
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_1

    add-int/2addr v9, v13

    const/4 v13, 0x1

    goto :goto_2f

    :catch_1
    const/4 v13, 0x0

    aput-byte v13, v7, v9

    const/4 v13, 0x1

    add-int/2addr v9, v13

    :goto_2f
    iget v14, v12, Lcom/loc/dx;->c:I

    const/16 v15, 0x7f

    if-le v14, v15, :cond_3f

    const/4 v14, 0x0

    const/16 v15, -0x80

    goto :goto_30

    :cond_3f
    const/16 v15, -0x80

    if-ge v14, v15, :cond_40

    const/4 v14, 0x0

    :cond_40
    :goto_30
    invoke-static {v14}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v14

    invoke-static {v14}, Ljava/lang/Byte;->parseByte(Ljava/lang/String;)B

    move-result v14

    aput-byte v14, v7, v9

    add-int/2addr v9, v13

    if-eqz v2, :cond_41

    iget-wide v13, v12, Lcom/loc/dx;->f:J

    const-wide/16 v27, 0x3e8

    div-long v13, v13, v27

    sub-long v13, v17, v13

    long-to-int v14, v13

    if-gez v14, :cond_42

    :cond_41
    const/4 v14, 0x0

    :cond_42
    if-le v14, v11, :cond_43

    const v14, 0xffff

    :cond_43
    invoke-static {v14, v4}, Lcom/loc/fp;->a(I[B)[B

    move-result-object v13

    array-length v14, v13

    const/4 v15, 0x0

    invoke-static {v13, v15, v7, v9, v14}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    array-length v13, v13

    add-int/2addr v9, v13

    iget v12, v12, Lcom/loc/dx;->d:I

    invoke-static {v12, v4}, Lcom/loc/fp;->a(I[B)[B

    move-result-object v12

    array-length v13, v12

    invoke-static {v12, v15, v7, v9, v13}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    array-length v12, v12

    add-int/2addr v9, v12

    add-int/lit8 v5, v5, 0x1

    goto :goto_2e

    :cond_44
    const/4 v15, 0x0

    iget-object v0, v1, Lcom/loc/fg;->F:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    invoke-static {v0, v4}, Lcom/loc/fp;->a(I[B)[B

    move-result-object v0

    array-length v2, v0

    invoke-static {v0, v15, v7, v9, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    array-length v0, v0

    add-int/2addr v9, v0

    :goto_31
    aput-byte v15, v7, v9

    const/4 v2, 0x1

    add-int/2addr v9, v2

    :try_start_6
    iget-object v0, v1, Lcom/loc/fg;->G:Ljava/lang/String;

    invoke-virtual {v0, v6}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v0

    array-length v2, v0

    const/16 v5, 0x7f

    if-le v2, v5, :cond_45

    const/4 v0, 0x0

    :cond_45
    if-nez v0, :cond_46

    const/4 v2, 0x0

    aput-byte v2, v7, v9

    const/4 v2, 0x1

    goto :goto_32

    :cond_46
    array-length v2, v0

    int-to-byte v2, v2

    aput-byte v2, v7, v9

    add-int/lit8 v9, v9, 0x1

    array-length v2, v0

    const/4 v5, 0x0

    invoke-static {v0, v5, v7, v9, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    array-length v0, v0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_3

    add-int/2addr v9, v0

    goto :goto_33

    :catchall_3
    const/4 v2, 0x0

    aput-byte v2, v7, v9

    const/4 v2, 0x1

    :goto_32
    add-int/2addr v9, v2

    :goto_33
    const/4 v2, 0x2

    new-array v0, v2, [B

    fill-array-data v0, :array_0

    :try_start_7
    iget-object v2, v1, Lcom/loc/fg;->J:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_47

    iget-object v0, v1, Lcom/loc/fg;->J:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    invoke-static {v0, v4}, Lcom/loc/fp;->a(I[B)[B

    move-result-object v0

    :cond_47
    const/4 v5, 0x2

    const/4 v10, 0x0

    invoke-static {v0, v10, v7, v9, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_5

    add-int/2addr v9, v5

    if-nez v2, :cond_48

    :try_start_8
    iget-object v0, v1, Lcom/loc/fg;->J:Ljava/lang/String;

    invoke-virtual {v0, v6}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v0

    array-length v2, v0

    invoke-static {v0, v10, v7, v9, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    array-length v0, v0
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_4

    add-int/2addr v9, v0

    :catchall_4
    :cond_48
    const/4 v2, 0x2

    goto :goto_34

    :catchall_5
    const/4 v2, 0x2

    add-int/2addr v9, v2

    :goto_34
    const/4 v5, 0x0

    :try_start_9
    invoke-static {v5, v4}, Lcom/loc/fp;->a(I[B)[B

    move-result-object v0

    invoke-static {v0, v5, v7, v9, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_6

    :catchall_6
    add-int/2addr v9, v2

    new-array v0, v2, [B

    fill-array-data v0, :array_1

    :try_start_a
    invoke-static {v0, v5, v7, v9, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_7

    :catchall_7
    add-int/2addr v9, v2

    iget-object v0, v1, Lcom/loc/fg;->H:[B

    if-eqz v0, :cond_49

    array-length v0, v0

    goto :goto_35

    :cond_49
    const/4 v0, 0x0

    :goto_35
    const/4 v2, 0x0

    invoke-static {v0, v2}, Lcom/loc/fp;->a(I[B)[B

    move-result-object v2

    array-length v5, v2

    const/4 v6, 0x0

    invoke-static {v2, v6, v7, v9, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    array-length v2, v2

    add-int/2addr v9, v2

    if-lez v0, :cond_4a

    iget-object v0, v1, Lcom/loc/fg;->H:[B

    array-length v2, v0

    invoke-static {v0, v6, v7, v9, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v0, v1, Lcom/loc/fg;->H:[B

    array-length v0, v0

    add-int/2addr v9, v0

    :cond_4a
    sget-object v0, Lcom/loc/fi;->a:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Double;->valueOf(Ljava/lang/String;)Ljava/lang/Double;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v5

    const-wide/high16 v12, 0x4014000000000000L    # 5.0

    cmpl-double v0, v5, v12

    if-ltz v0, :cond_55

    iget-object v0, v1, Lcom/loc/fg;->T:Ljava/util/List;

    if-eqz v0, :cond_4b

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    goto :goto_36

    :cond_4b
    const/4 v0, 0x0

    :goto_36
    int-to-byte v2, v0

    aput-byte v2, v7, v9

    add-int/lit8 v9, v9, 0x1

    new-array v2, v9, [B

    const/4 v5, 0x0

    invoke-static {v7, v5, v2, v5, v9}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    if-lez v0, :cond_54

    :try_start_b
    iget-object v0, v1, Lcom/loc/fg;->T:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    move v5, v9

    :goto_37
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_53

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/loc/er;

    iget v10, v6, Lcom/loc/er;->l:I

    const/4 v12, 0x1

    if-eq v10, v12, :cond_50

    const/4 v13, 0x3

    if-eq v10, v13, :cond_50

    const/4 v14, 0x4

    if-ne v10, v14, :cond_4c

    goto :goto_38

    :cond_4c
    const/4 v14, 0x2

    if-ne v10, v14, :cond_4e

    int-to-byte v10, v10

    iget-boolean v14, v6, Lcom/loc/er;->n:Z

    if-eqz v14, :cond_4d

    or-int/lit8 v10, v10, 0x8

    int-to-byte v10, v10

    :cond_4d
    aput-byte v10, v7, v5

    add-int/lit8 v5, v5, 0x1

    iget v10, v6, Lcom/loc/er;->h:I

    invoke-static {v10, v4}, Lcom/loc/fp;->a(I[B)[B

    move-result-object v10

    array-length v14, v10

    const/4 v15, 0x0

    invoke-static {v10, v15, v7, v5, v14}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    array-length v10, v10

    add-int/2addr v5, v10

    iget v10, v6, Lcom/loc/er;->i:I

    invoke-static {v10, v4}, Lcom/loc/fp;->a(I[B)[B

    move-result-object v10

    array-length v14, v10

    invoke-static {v10, v15, v7, v5, v14}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    array-length v10, v10

    add-int/2addr v5, v10

    iget v10, v6, Lcom/loc/er;->j:I

    invoke-static {v10, v4}, Lcom/loc/fp;->a(I[B)[B

    move-result-object v10

    array-length v14, v10

    invoke-static {v10, v15, v7, v5, v14}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    array-length v10, v10

    goto :goto_39

    :cond_4e
    const/4 v14, 0x5

    if-ne v10, v14, :cond_52

    int-to-byte v10, v10

    iget-boolean v15, v6, Lcom/loc/er;->n:Z

    if-eqz v15, :cond_4f

    or-int/lit8 v10, v10, 0x8

    int-to-byte v10, v10

    :cond_4f
    aput-byte v10, v7, v5

    add-int/lit8 v5, v5, 0x1

    iget v10, v6, Lcom/loc/er;->c:I

    invoke-static {v10, v4}, Lcom/loc/fp;->a(I[B)[B

    move-result-object v10

    array-length v15, v10

    const/4 v12, 0x0

    invoke-static {v10, v12, v7, v5, v15}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    array-length v10, v10

    add-int/2addr v5, v10

    iget-wide v13, v6, Lcom/loc/er;->e:J

    invoke-static {v13, v14}, Lcom/loc/fp;->a(J)[B

    move-result-object v10

    invoke-static {v10, v12, v7, v5, v8}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    add-int/lit8 v5, v5, 0x8

    goto :goto_3a

    :cond_50
    :goto_38
    int-to-byte v10, v10

    iget-boolean v12, v6, Lcom/loc/er;->n:Z

    if-eqz v12, :cond_51

    or-int/lit8 v10, v10, 0x8

    int-to-byte v10, v10

    :cond_51
    aput-byte v10, v7, v5

    add-int/lit8 v5, v5, 0x1

    iget v10, v6, Lcom/loc/er;->c:I

    invoke-static {v10, v4}, Lcom/loc/fp;->a(I[B)[B

    move-result-object v10

    array-length v12, v10

    const/4 v13, 0x0

    invoke-static {v10, v13, v7, v5, v12}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    array-length v10, v10

    add-int/2addr v5, v10

    iget v10, v6, Lcom/loc/er;->d:I

    invoke-static {v10, v3}, Lcom/loc/fp;->b(I[B)[B

    move-result-object v10

    array-length v12, v10

    invoke-static {v10, v13, v7, v5, v12}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    array-length v10, v10

    :goto_39
    add-int/2addr v5, v10

    :cond_52
    :goto_3a
    invoke-static {}, Lcom/loc/fp;->b()J

    move-result-wide v12

    iget-wide v14, v6, Lcom/loc/er;->t:J

    sub-long/2addr v12, v14

    const-wide/16 v14, 0x3e8

    div-long/2addr v12, v14

    long-to-int v6, v12

    int-to-short v6, v6

    invoke-static {v6, v4}, Lcom/loc/fp;->a(I[B)[B

    move-result-object v6

    array-length v10, v6

    const/4 v12, 0x0

    invoke-static {v6, v12, v7, v5, v10}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    array-length v6, v6
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_8

    add-int/2addr v5, v6

    goto/16 :goto_37

    :cond_53
    move v9, v5

    goto :goto_3b

    :catchall_8
    const/4 v5, 0x0

    invoke-static {v2, v5, v7, v5, v9}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    add-int/lit8 v0, v9, -0x1

    aput-byte v5, v7, v0

    :cond_54
    :goto_3b
    iget-object v0, v1, Lcom/loc/fg;->M:Ljava/lang/String;

    invoke-static {v0, v7, v9}, Lcom/loc/fg;->a(Ljava/lang/String;[BI)I

    move-result v9

    :cond_55
    sget-object v0, Lcom/loc/fi;->a:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Double;->valueOf(Ljava/lang/String;)Ljava/lang/Double;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v5

    const-wide v12, 0x4014cccccccccccdL    # 5.2

    cmpl-double v0, v5, v12

    if-ltz v0, :cond_59

    iget-object v0, v1, Lcom/loc/fg;->S:Ljava/util/List;

    if-nez v0, :cond_56

    const/4 v0, 0x0

    goto :goto_3c

    :cond_56
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    :goto_3c
    int-to-byte v2, v0

    aput-byte v2, v7, v9

    add-int/lit8 v9, v9, 0x1

    if-lez v0, :cond_59

    iget-object v0, v1, Lcom/loc/fg;->S:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_3d
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_59

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/loc/et;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    iget-wide v12, v2, Lcom/loc/et;->d:J

    sub-long/2addr v5, v12

    long-to-int v6, v5

    div-int/lit16 v6, v6, 0x3e8

    if-le v6, v11, :cond_57

    const v6, 0xffff

    :cond_57
    invoke-static {v6, v4}, Lcom/loc/fp;->a(I[B)[B

    move-result-object v5

    const/4 v6, 0x2

    const/4 v10, 0x0

    invoke-static {v5, v10, v7, v9, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    add-int/lit8 v9, v9, 0x2

    iget-wide v5, v2, Lcom/loc/et;->c:D

    const-wide v12, 0x416312d000000000L    # 1.0E7

    mul-double v5, v5, v12

    invoke-static {v5, v6}, Ljava/lang/Math;->round(D)J

    move-result-wide v5

    long-to-int v6, v5

    invoke-static {v6, v3}, Lcom/loc/fp;->b(I[B)[B

    move-result-object v5

    const/4 v6, 0x4

    invoke-static {v5, v10, v7, v9, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    add-int/2addr v9, v6

    iget-wide v12, v2, Lcom/loc/et;->b:D

    const-wide v14, 0x416312d000000000L    # 1.0E7

    mul-double v12, v12, v14

    invoke-static {v12, v13}, Ljava/lang/Math;->round(D)J

    move-result-wide v12

    long-to-int v5, v12

    invoke-static {v5, v3}, Lcom/loc/fp;->b(I[B)[B

    move-result-object v5

    invoke-static {v5, v10, v7, v9, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    add-int/2addr v9, v6

    iget v5, v2, Lcom/loc/et;->e:I

    int-to-float v5, v5

    const v10, 0x477fff00    # 65535.0f

    cmpl-float v10, v5, v10

    if-lez v10, :cond_58

    const v5, 0x477fff00    # 65535.0f

    :cond_58
    float-to-int v5, v5

    invoke-static {v5, v4}, Lcom/loc/fp;->a(I[B)[B

    move-result-object v5

    const/4 v10, 0x2

    const/4 v12, 0x0

    invoke-static {v5, v12, v7, v9, v10}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    add-int/2addr v9, v10

    iget v5, v2, Lcom/loc/et;->a:I

    shl-int/lit8 v5, v5, 0xd

    iget v10, v2, Lcom/loc/et;->g:I

    shl-int/lit8 v10, v10, 0x6

    or-int/2addr v5, v10

    iget v2, v2, Lcom/loc/et;->h:I

    or-int/2addr v2, v5

    and-int/2addr v2, v11

    int-to-short v2, v2

    invoke-static {v2, v4}, Lcom/loc/fp;->a(I[B)[B

    move-result-object v2

    const/4 v5, 0x2

    const/4 v10, 0x0

    invoke-static {v2, v10, v7, v9, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    add-int/2addr v9, v5

    goto/16 :goto_3d

    :cond_59
    sget-object v0, Lcom/loc/fi;->a:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Double;->valueOf(Ljava/lang/String;)Ljava/lang/Double;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v2

    cmpl-double v0, v2, v23

    if-ltz v0, :cond_5a

    iget-object v0, v1, Lcom/loc/fg;->N:Ljava/lang/String;

    invoke-static {v0, v7, v9}, Lcom/loc/fg;->a(Ljava/lang/String;[BI)I

    move-result v9

    :cond_5a
    new-array v0, v9, [B

    const/4 v2, 0x0

    invoke-static {v7, v2, v0, v2, v9}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    new-instance v3, Ljava/util/zip/CRC32;

    invoke-direct {v3}, Ljava/util/zip/CRC32;-><init>()V

    invoke-virtual {v3, v0}, Ljava/util/zip/CRC32;->update([B)V

    invoke-virtual {v3}, Ljava/util/zip/CRC32;->getValue()J

    move-result-wide v3

    invoke-static {v3, v4}, Lcom/loc/fp;->a(J)[B

    move-result-object v3

    add-int/lit8 v4, v9, 0x8

    new-array v4, v4, [B

    invoke-static {v0, v2, v4, v2, v9}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    invoke-static {v3, v2, v4, v9, v8}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v4

    nop

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
