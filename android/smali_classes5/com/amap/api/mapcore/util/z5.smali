.class public Lcom/amap/api/mapcore/util/z5;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final a:I

.field private b:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput v0, p0, Lcom/amap/api/mapcore/util/z5;->b:I

    const/16 v0, 0x25

    .line 3
    iput v0, p0, Lcom/amap/api/mapcore/util/z5;->a:I

    const/16 v0, 0x11

    .line 4
    iput v0, p0, Lcom/amap/api/mapcore/util/z5;->b:I

    return-void
.end method


# virtual methods
.method public a()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/amap/api/mapcore/util/z5;->b:I

    return v0
.end method

.method public b(B)Lcom/amap/api/mapcore/util/z5;
    .locals 2

    .line 1
    iget v0, p0, Lcom/amap/api/mapcore/util/z5;->b:I

    iget v1, p0, Lcom/amap/api/mapcore/util/z5;->a:I

    mul-int v0, v0, v1

    add-int/2addr v0, p1

    iput v0, p0, Lcom/amap/api/mapcore/util/z5;->b:I

    return-object p0
.end method

.method public c(C)Lcom/amap/api/mapcore/util/z5;
    .locals 2

    .line 1
    iget v0, p0, Lcom/amap/api/mapcore/util/z5;->b:I

    iget v1, p0, Lcom/amap/api/mapcore/util/z5;->a:I

    mul-int v0, v0, v1

    add-int/2addr v0, p1

    iput v0, p0, Lcom/amap/api/mapcore/util/z5;->b:I

    return-object p0
.end method

.method public d(D)Lcom/amap/api/mapcore/util/z5;
    .locals 0

    .line 1
    invoke-static {p1, p2}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide p1

    invoke-virtual {p0, p1, p2}, Lcom/amap/api/mapcore/util/z5;->g(J)Lcom/amap/api/mapcore/util/z5;

    return-object p0
.end method

.method public e(F)Lcom/amap/api/mapcore/util/z5;
    .locals 2

    .line 1
    iget v0, p0, Lcom/amap/api/mapcore/util/z5;->b:I

    iget v1, p0, Lcom/amap/api/mapcore/util/z5;->a:I

    mul-int v0, v0, v1

    invoke-static {p1}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result p1

    add-int/2addr v0, p1

    iput v0, p0, Lcom/amap/api/mapcore/util/z5;->b:I

    return-object p0
.end method

.method public f(I)Lcom/amap/api/mapcore/util/z5;
    .locals 2

    .line 1
    iget v0, p0, Lcom/amap/api/mapcore/util/z5;->b:I

    iget v1, p0, Lcom/amap/api/mapcore/util/z5;->a:I

    mul-int v0, v0, v1

    add-int/2addr v0, p1

    iput v0, p0, Lcom/amap/api/mapcore/util/z5;->b:I

    return-object p0
.end method

.method public g(J)Lcom/amap/api/mapcore/util/z5;
    .locals 3

    .line 1
    iget v0, p0, Lcom/amap/api/mapcore/util/z5;->b:I

    iget v1, p0, Lcom/amap/api/mapcore/util/z5;->a:I

    mul-int v0, v0, v1

    const/16 v1, 0x20

    shr-long v1, p1, v1

    xor-long/2addr p1, v1

    long-to-int p2, p1

    add-int/2addr v0, p2

    iput v0, p0, Lcom/amap/api/mapcore/util/z5;->b:I

    return-object p0
.end method

.method public h(Ljava/lang/Object;)Lcom/amap/api/mapcore/util/z5;
    .locals 2

    if-nez p1, :cond_0

    .line 1
    iget p1, p0, Lcom/amap/api/mapcore/util/z5;->b:I

    iget v0, p0, Lcom/amap/api/mapcore/util/z5;->a:I

    mul-int p1, p1, v0

    iput p1, p0, Lcom/amap/api/mapcore/util/z5;->b:I

    goto/16 :goto_0

    .line 2
    :cond_0
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->isArray()Z

    move-result v0

    if-eqz v0, :cond_9

    .line 3
    instance-of v0, p1, [J

    if-eqz v0, :cond_1

    .line 4
    check-cast p1, [J

    invoke-virtual {p0, p1}, Lcom/amap/api/mapcore/util/z5;->p([J)Lcom/amap/api/mapcore/util/z5;

    goto :goto_0

    .line 5
    :cond_1
    instance-of v0, p1, [I

    if-eqz v0, :cond_2

    .line 6
    check-cast p1, [I

    invoke-virtual {p0, p1}, Lcom/amap/api/mapcore/util/z5;->o([I)Lcom/amap/api/mapcore/util/z5;

    goto :goto_0

    .line 7
    :cond_2
    instance-of v0, p1, [S

    if-eqz v0, :cond_3

    .line 8
    check-cast p1, [S

    invoke-virtual {p0, p1}, Lcom/amap/api/mapcore/util/z5;->r([S)Lcom/amap/api/mapcore/util/z5;

    goto :goto_0

    .line 9
    :cond_3
    instance-of v0, p1, [C

    if-eqz v0, :cond_4

    .line 10
    check-cast p1, [C

    invoke-virtual {p0, p1}, Lcom/amap/api/mapcore/util/z5;->l([C)Lcom/amap/api/mapcore/util/z5;

    goto :goto_0

    .line 11
    :cond_4
    instance-of v0, p1, [B

    if-eqz v0, :cond_5

    .line 12
    check-cast p1, [B

    invoke-virtual {p0, p1}, Lcom/amap/api/mapcore/util/z5;->k([B)Lcom/amap/api/mapcore/util/z5;

    goto :goto_0

    .line 13
    :cond_5
    instance-of v0, p1, [D

    if-eqz v0, :cond_6

    .line 14
    check-cast p1, [D

    invoke-virtual {p0, p1}, Lcom/amap/api/mapcore/util/z5;->m([D)Lcom/amap/api/mapcore/util/z5;

    goto :goto_0

    .line 15
    :cond_6
    instance-of v0, p1, [F

    if-eqz v0, :cond_7

    .line 16
    check-cast p1, [F

    invoke-virtual {p0, p1}, Lcom/amap/api/mapcore/util/z5;->n([F)Lcom/amap/api/mapcore/util/z5;

    goto :goto_0

    .line 17
    :cond_7
    instance-of v0, p1, [Z

    if-eqz v0, :cond_8

    .line 18
    check-cast p1, [Z

    invoke-virtual {p0, p1}, Lcom/amap/api/mapcore/util/z5;->s([Z)Lcom/amap/api/mapcore/util/z5;

    goto :goto_0

    .line 19
    :cond_8
    check-cast p1, [Ljava/lang/Object;

    invoke-virtual {p0, p1}, Lcom/amap/api/mapcore/util/z5;->q([Ljava/lang/Object;)Lcom/amap/api/mapcore/util/z5;

    goto :goto_0

    .line 20
    :cond_9
    iget v0, p0, Lcom/amap/api/mapcore/util/z5;->b:I

    iget v1, p0, Lcom/amap/api/mapcore/util/z5;->a:I

    mul-int v0, v0, v1

    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result p1

    add-int/2addr v0, p1

    iput v0, p0, Lcom/amap/api/mapcore/util/z5;->b:I

    :goto_0
    return-object p0
.end method

.method public hashCode()I
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/amap/api/mapcore/util/z5;->a()I

    move-result v0

    return v0
.end method

.method public i(S)Lcom/amap/api/mapcore/util/z5;
    .locals 2

    .line 1
    iget v0, p0, Lcom/amap/api/mapcore/util/z5;->b:I

    iget v1, p0, Lcom/amap/api/mapcore/util/z5;->a:I

    mul-int v0, v0, v1

    add-int/2addr v0, p1

    iput v0, p0, Lcom/amap/api/mapcore/util/z5;->b:I

    return-object p0
.end method

.method public j(Z)Lcom/amap/api/mapcore/util/z5;
    .locals 2

    .line 1
    iget v0, p0, Lcom/amap/api/mapcore/util/z5;->b:I

    iget v1, p0, Lcom/amap/api/mapcore/util/z5;->a:I

    mul-int v0, v0, v1

    xor-int/lit8 p1, p1, 0x1

    add-int/2addr v0, p1

    iput v0, p0, Lcom/amap/api/mapcore/util/z5;->b:I

    return-object p0
.end method

.method public k([B)Lcom/amap/api/mapcore/util/z5;
    .locals 2

    if-nez p1, :cond_0

    .line 1
    iget p1, p0, Lcom/amap/api/mapcore/util/z5;->b:I

    iget v0, p0, Lcom/amap/api/mapcore/util/z5;->a:I

    mul-int p1, p1, v0

    iput p1, p0, Lcom/amap/api/mapcore/util/z5;->b:I

    goto :goto_1

    :cond_0
    const/4 v0, 0x0

    .line 2
    :goto_0
    array-length v1, p1

    if-ge v0, v1, :cond_1

    .line 3
    aget-byte v1, p1, v0

    invoke-virtual {p0, v1}, Lcom/amap/api/mapcore/util/z5;->b(B)Lcom/amap/api/mapcore/util/z5;

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    :goto_1
    return-object p0
.end method

.method public l([C)Lcom/amap/api/mapcore/util/z5;
    .locals 2

    if-nez p1, :cond_0

    .line 1
    iget p1, p0, Lcom/amap/api/mapcore/util/z5;->b:I

    iget v0, p0, Lcom/amap/api/mapcore/util/z5;->a:I

    mul-int p1, p1, v0

    iput p1, p0, Lcom/amap/api/mapcore/util/z5;->b:I

    goto :goto_1

    :cond_0
    const/4 v0, 0x0

    .line 2
    :goto_0
    array-length v1, p1

    if-ge v0, v1, :cond_1

    .line 3
    aget-char v1, p1, v0

    invoke-virtual {p0, v1}, Lcom/amap/api/mapcore/util/z5;->c(C)Lcom/amap/api/mapcore/util/z5;

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    :goto_1
    return-object p0
.end method

.method public m([D)Lcom/amap/api/mapcore/util/z5;
    .locals 3

    if-nez p1, :cond_0

    .line 1
    iget p1, p0, Lcom/amap/api/mapcore/util/z5;->b:I

    iget v0, p0, Lcom/amap/api/mapcore/util/z5;->a:I

    mul-int p1, p1, v0

    iput p1, p0, Lcom/amap/api/mapcore/util/z5;->b:I

    goto :goto_1

    :cond_0
    const/4 v0, 0x0

    .line 2
    :goto_0
    array-length v1, p1

    if-ge v0, v1, :cond_1

    .line 3
    aget-wide v1, p1, v0

    invoke-virtual {p0, v1, v2}, Lcom/amap/api/mapcore/util/z5;->d(D)Lcom/amap/api/mapcore/util/z5;

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    :goto_1
    return-object p0
.end method

.method public n([F)Lcom/amap/api/mapcore/util/z5;
    .locals 2

    if-nez p1, :cond_0

    .line 1
    iget p1, p0, Lcom/amap/api/mapcore/util/z5;->b:I

    iget v0, p0, Lcom/amap/api/mapcore/util/z5;->a:I

    mul-int p1, p1, v0

    iput p1, p0, Lcom/amap/api/mapcore/util/z5;->b:I

    goto :goto_1

    :cond_0
    const/4 v0, 0x0

    .line 2
    :goto_0
    array-length v1, p1

    if-ge v0, v1, :cond_1

    .line 3
    aget v1, p1, v0

    invoke-virtual {p0, v1}, Lcom/amap/api/mapcore/util/z5;->e(F)Lcom/amap/api/mapcore/util/z5;

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    :goto_1
    return-object p0
.end method

.method public o([I)Lcom/amap/api/mapcore/util/z5;
    .locals 2

    if-nez p1, :cond_0

    .line 1
    iget p1, p0, Lcom/amap/api/mapcore/util/z5;->b:I

    iget v0, p0, Lcom/amap/api/mapcore/util/z5;->a:I

    mul-int p1, p1, v0

    iput p1, p0, Lcom/amap/api/mapcore/util/z5;->b:I

    goto :goto_1

    :cond_0
    const/4 v0, 0x0

    .line 2
    :goto_0
    array-length v1, p1

    if-ge v0, v1, :cond_1

    .line 3
    aget v1, p1, v0

    invoke-virtual {p0, v1}, Lcom/amap/api/mapcore/util/z5;->f(I)Lcom/amap/api/mapcore/util/z5;

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    :goto_1
    return-object p0
.end method

.method public p([J)Lcom/amap/api/mapcore/util/z5;
    .locals 3

    if-nez p1, :cond_0

    .line 1
    iget p1, p0, Lcom/amap/api/mapcore/util/z5;->b:I

    iget v0, p0, Lcom/amap/api/mapcore/util/z5;->a:I

    mul-int p1, p1, v0

    iput p1, p0, Lcom/amap/api/mapcore/util/z5;->b:I

    goto :goto_1

    :cond_0
    const/4 v0, 0x0

    .line 2
    :goto_0
    array-length v1, p1

    if-ge v0, v1, :cond_1

    .line 3
    aget-wide v1, p1, v0

    invoke-virtual {p0, v1, v2}, Lcom/amap/api/mapcore/util/z5;->g(J)Lcom/amap/api/mapcore/util/z5;

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    :goto_1
    return-object p0
.end method

.method public q([Ljava/lang/Object;)Lcom/amap/api/mapcore/util/z5;
    .locals 2

    if-nez p1, :cond_0

    .line 1
    iget p1, p0, Lcom/amap/api/mapcore/util/z5;->b:I

    iget v0, p0, Lcom/amap/api/mapcore/util/z5;->a:I

    mul-int p1, p1, v0

    iput p1, p0, Lcom/amap/api/mapcore/util/z5;->b:I

    goto :goto_1

    :cond_0
    const/4 v0, 0x0

    .line 2
    :goto_0
    array-length v1, p1

    if-ge v0, v1, :cond_1

    .line 3
    aget-object v1, p1, v0

    invoke-virtual {p0, v1}, Lcom/amap/api/mapcore/util/z5;->h(Ljava/lang/Object;)Lcom/amap/api/mapcore/util/z5;

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    :goto_1
    return-object p0
.end method

.method public r([S)Lcom/amap/api/mapcore/util/z5;
    .locals 2

    if-nez p1, :cond_0

    .line 1
    iget p1, p0, Lcom/amap/api/mapcore/util/z5;->b:I

    iget v0, p0, Lcom/amap/api/mapcore/util/z5;->a:I

    mul-int p1, p1, v0

    iput p1, p0, Lcom/amap/api/mapcore/util/z5;->b:I

    goto :goto_1

    :cond_0
    const/4 v0, 0x0

    .line 2
    :goto_0
    array-length v1, p1

    if-ge v0, v1, :cond_1

    .line 3
    aget-short v1, p1, v0

    invoke-virtual {p0, v1}, Lcom/amap/api/mapcore/util/z5;->i(S)Lcom/amap/api/mapcore/util/z5;

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    :goto_1
    return-object p0
.end method

.method public s([Z)Lcom/amap/api/mapcore/util/z5;
    .locals 2

    if-nez p1, :cond_0

    .line 1
    iget p1, p0, Lcom/amap/api/mapcore/util/z5;->b:I

    iget v0, p0, Lcom/amap/api/mapcore/util/z5;->a:I

    mul-int p1, p1, v0

    iput p1, p0, Lcom/amap/api/mapcore/util/z5;->b:I

    goto :goto_1

    :cond_0
    const/4 v0, 0x0

    .line 2
    :goto_0
    array-length v1, p1

    if-ge v0, v1, :cond_1

    .line 3
    aget-boolean v1, p1, v0

    invoke-virtual {p0, v1}, Lcom/amap/api/mapcore/util/z5;->j(Z)Lcom/amap/api/mapcore/util/z5;

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    :goto_1
    return-object p0
.end method
