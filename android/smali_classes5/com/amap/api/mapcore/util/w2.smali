.class public Lcom/amap/api/mapcore/util/w2;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final a:Lcom/amap/api/mapcore/util/n3;

.field private b:[S

.field private c:[D

.field private d:I

.field private final e:Lcom/amap/api/mapcore/util/c3;

.field private final f:Lcom/amap/api/mapcore/util/n3;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Lcom/amap/api/mapcore/util/n3;

    invoke-direct {v0}, Lcom/amap/api/mapcore/util/n3;-><init>()V

    iput-object v0, p0, Lcom/amap/api/mapcore/util/w2;->a:Lcom/amap/api/mapcore/util/n3;

    .line 3
    new-instance v0, Lcom/amap/api/mapcore/util/c3;

    invoke-direct {v0}, Lcom/amap/api/mapcore/util/c3;-><init>()V

    iput-object v0, p0, Lcom/amap/api/mapcore/util/w2;->e:Lcom/amap/api/mapcore/util/c3;

    .line 4
    new-instance v0, Lcom/amap/api/mapcore/util/n3;

    invoke-direct {v0}, Lcom/amap/api/mapcore/util/n3;-><init>()V

    iput-object v0, p0, Lcom/amap/api/mapcore/util/w2;->f:Lcom/amap/api/mapcore/util/n3;

    return-void
.end method

.method private static a(DDDDDD)I
    .locals 2

    sub-double v0, p10, p6

    mul-double p0, p0, v0

    sub-double p10, p2, p10

    mul-double p4, p4, p10

    add-double/2addr p0, p4

    sub-double/2addr p6, p2

    mul-double p8, p8, p6

    add-double/2addr p0, p8

    .line 1
    invoke-static {p0, p1}, Ljava/lang/Math;->signum(D)D

    move-result-wide p0

    double-to-int p0, p0

    return p0
.end method

.method private b(I)I
    .locals 17

    move-object/from16 v0, p0

    .line 1
    iget-object v1, v0, Lcom/amap/api/mapcore/util/w2;->b:[S

    .line 2
    invoke-direct/range {p0 .. p1}, Lcom/amap/api/mapcore/util/w2;->i(I)I

    move-result v2

    aget-short v2, v1, v2

    mul-int/lit8 v2, v2, 0x2

    .line 3
    aget-short v3, v1, p1

    mul-int/lit8 v3, v3, 0x2

    .line 4
    invoke-direct/range {p0 .. p1}, Lcom/amap/api/mapcore/util/w2;->j(I)I

    move-result v4

    aget-short v1, v1, v4

    mul-int/lit8 v1, v1, 0x2

    .line 5
    iget-object v4, v0, Lcom/amap/api/mapcore/util/w2;->c:[D

    .line 6
    aget-wide v5, v4, v2

    add-int/lit8 v2, v2, 0x1

    aget-wide v7, v4, v2

    aget-wide v9, v4, v3

    add-int/lit8 v3, v3, 0x1

    aget-wide v11, v4, v3

    aget-wide v13, v4, v1

    add-int/lit8 v1, v1, 0x1

    aget-wide v15, v4, v1

    invoke-static/range {v5 .. v16}, Lcom/amap/api/mapcore/util/w2;->a(DDDDDD)I

    move-result v1

    return v1
.end method

.method private e()V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/amap/api/mapcore/util/w2;->e:Lcom/amap/api/mapcore/util/c3;

    iget-object v0, v0, Lcom/amap/api/mapcore/util/c3;->a:[I

    .line 2
    :goto_0
    iget v1, p0, Lcom/amap/api/mapcore/util/w2;->d:I

    const/4 v2, 0x0

    const/4 v3, 0x3

    if-le v1, v3, :cond_1

    .line 3
    invoke-direct {p0}, Lcom/amap/api/mapcore/util/w2;->f()I

    move-result v1

    .line 4
    invoke-direct {p0, v1}, Lcom/amap/api/mapcore/util/w2;->h(I)V

    .line 5
    invoke-direct {p0, v1}, Lcom/amap/api/mapcore/util/w2;->i(I)I

    move-result v3

    .line 6
    iget v4, p0, Lcom/amap/api/mapcore/util/w2;->d:I

    if-ne v1, v4, :cond_0

    goto :goto_1

    :cond_0
    move v2, v1

    .line 7
    :goto_1
    invoke-direct {p0, v3}, Lcom/amap/api/mapcore/util/w2;->b(I)I

    move-result v1

    aput v1, v0, v3

    .line 8
    invoke-direct {p0, v2}, Lcom/amap/api/mapcore/util/w2;->b(I)I

    move-result v1

    aput v1, v0, v2

    goto :goto_0

    :cond_1
    if-ne v1, v3, :cond_2

    .line 9
    iget-object v0, p0, Lcom/amap/api/mapcore/util/w2;->f:Lcom/amap/api/mapcore/util/n3;

    .line 10
    iget-object v1, p0, Lcom/amap/api/mapcore/util/w2;->b:[S

    .line 11
    aget-short v2, v1, v2

    invoke-virtual {v0, v2}, Lcom/amap/api/mapcore/util/n3;->c(S)V

    const/4 v2, 0x1

    .line 12
    aget-short v2, v1, v2

    invoke-virtual {v0, v2}, Lcom/amap/api/mapcore/util/n3;->c(S)V

    const/4 v2, 0x2

    .line 13
    aget-short v1, v1, v2

    invoke-virtual {v0, v1}, Lcom/amap/api/mapcore/util/n3;->c(S)V

    :cond_2
    return-void
.end method

.method private f()I
    .locals 6

    .line 1
    iget v0, p0, Lcom/amap/api/mapcore/util/w2;->d:I

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_1

    .line 2
    invoke-direct {p0, v2}, Lcom/amap/api/mapcore/util/w2;->g(I)Z

    move-result v3

    if-eqz v3, :cond_0

    return v2

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 3
    :cond_1
    iget-object v2, p0, Lcom/amap/api/mapcore/util/w2;->e:Lcom/amap/api/mapcore/util/c3;

    iget-object v2, v2, Lcom/amap/api/mapcore/util/c3;->a:[I

    const/4 v3, 0x0

    :goto_1
    if-ge v3, v0, :cond_3

    .line 4
    aget v4, v2, v3

    const/4 v5, -0x1

    if-eq v4, v5, :cond_2

    return v3

    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_3
    return v1
.end method

.method private g(I)Z
    .locals 44

    move-object/from16 v0, p0

    .line 1
    iget-object v1, v0, Lcom/amap/api/mapcore/util/w2;->e:Lcom/amap/api/mapcore/util/c3;

    iget-object v1, v1, Lcom/amap/api/mapcore/util/c3;->a:[I

    .line 2
    aget v2, v1, p1

    const/4 v3, 0x0

    const/4 v4, -0x1

    if-ne v2, v4, :cond_0

    return v3

    .line 3
    :cond_0
    invoke-direct/range {p0 .. p1}, Lcom/amap/api/mapcore/util/w2;->i(I)I

    move-result v2

    .line 4
    invoke-direct/range {p0 .. p1}, Lcom/amap/api/mapcore/util/w2;->j(I)I

    move-result v4

    .line 5
    iget-object v5, v0, Lcom/amap/api/mapcore/util/w2;->b:[S

    .line 6
    aget-short v6, v5, v2

    mul-int/lit8 v6, v6, 0x2

    .line 7
    aget-short v7, v5, p1

    mul-int/lit8 v7, v7, 0x2

    .line 8
    aget-short v8, v5, v4

    mul-int/lit8 v8, v8, 0x2

    .line 9
    iget-object v9, v0, Lcom/amap/api/mapcore/util/w2;->c:[D

    .line 10
    aget-wide v22, v9, v6

    const/4 v14, 0x1

    add-int/2addr v6, v14

    aget-wide v24, v9, v6

    .line 11
    aget-wide v38, v9, v7

    add-int/2addr v7, v14

    aget-wide v6, v9, v7

    .line 12
    aget-wide v40, v9, v8

    add-int/2addr v8, v14

    aget-wide v42, v9, v8

    .line 13
    invoke-direct {v0, v4}, Lcom/amap/api/mapcore/util/w2;->j(I)I

    move-result v4

    :goto_0
    if-eq v4, v2, :cond_3

    .line 14
    aget v8, v1, v4

    if-eq v8, v14, :cond_1

    .line 15
    aget-short v8, v5, v4

    mul-int/lit8 v8, v8, 0x2

    .line 16
    aget-wide v34, v9, v8

    add-int/2addr v8, v14

    .line 17
    aget-wide v36, v9, v8

    move-wide/from16 v10, v40

    move-wide/from16 v12, v42

    const/4 v8, 0x1

    move-wide/from16 v14, v22

    move-wide/from16 v16, v24

    move-wide/from16 v18, v34

    move-wide/from16 v20, v36

    .line 18
    invoke-static/range {v10 .. v21}, Lcom/amap/api/mapcore/util/w2;->a(DDDDDD)I

    move-result v10

    if-ltz v10, :cond_2

    move-wide/from16 v10, v22

    move-wide/from16 v12, v24

    move-wide/from16 v14, v38

    move-wide/from16 v16, v6

    move-wide/from16 v18, v34

    move-wide/from16 v20, v36

    .line 19
    invoke-static/range {v10 .. v21}, Lcom/amap/api/mapcore/util/w2;->a(DDDDDD)I

    move-result v10

    if-ltz v10, :cond_2

    move-wide/from16 v26, v38

    move-wide/from16 v28, v6

    move-wide/from16 v30, v40

    move-wide/from16 v32, v42

    .line 20
    invoke-static/range {v26 .. v37}, Lcom/amap/api/mapcore/util/w2;->a(DDDDDD)I

    move-result v10

    if-ltz v10, :cond_2

    return v3

    :cond_1
    const/4 v8, 0x1

    .line 21
    :cond_2
    invoke-direct {v0, v4}, Lcom/amap/api/mapcore/util/w2;->j(I)I

    move-result v4

    const/4 v14, 0x1

    goto :goto_0

    :cond_3
    const/4 v8, 0x1

    return v8
.end method

.method private h(I)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/amap/api/mapcore/util/w2;->b:[S

    .line 2
    iget-object v1, p0, Lcom/amap/api/mapcore/util/w2;->f:Lcom/amap/api/mapcore/util/n3;

    .line 3
    invoke-direct {p0, p1}, Lcom/amap/api/mapcore/util/w2;->i(I)I

    move-result v2

    aget-short v2, v0, v2

    invoke-virtual {v1, v2}, Lcom/amap/api/mapcore/util/n3;->c(S)V

    .line 4
    aget-short v2, v0, p1

    invoke-virtual {v1, v2}, Lcom/amap/api/mapcore/util/n3;->c(S)V

    .line 5
    invoke-direct {p0, p1}, Lcom/amap/api/mapcore/util/w2;->j(I)I

    move-result v2

    aget-short v0, v0, v2

    invoke-virtual {v1, v0}, Lcom/amap/api/mapcore/util/n3;->c(S)V

    .line 6
    iget-object v0, p0, Lcom/amap/api/mapcore/util/w2;->a:Lcom/amap/api/mapcore/util/n3;

    invoke-virtual {v0, p1}, Lcom/amap/api/mapcore/util/n3;->d(I)S

    .line 7
    iget-object v0, p0, Lcom/amap/api/mapcore/util/w2;->e:Lcom/amap/api/mapcore/util/c3;

    invoke-virtual {v0, p1}, Lcom/amap/api/mapcore/util/c3;->c(I)I

    .line 8
    iget p1, p0, Lcom/amap/api/mapcore/util/w2;->d:I

    add-int/lit8 p1, p1, -0x1

    iput p1, p0, Lcom/amap/api/mapcore/util/w2;->d:I

    return-void
.end method

.method private i(I)I
    .locals 0

    if-nez p1, :cond_0

    .line 1
    iget p1, p0, Lcom/amap/api/mapcore/util/w2;->d:I

    :cond_0
    add-int/lit8 p1, p1, -0x1

    return p1
.end method

.method private j(I)I
    .locals 1

    add-int/lit8 p1, p1, 0x1

    .line 1
    iget v0, p0, Lcom/amap/api/mapcore/util/w2;->d:I

    rem-int/2addr p1, v0

    return p1
.end method


# virtual methods
.method public c([D)Lcom/amap/api/mapcore/util/n3;
    .locals 2

    .line 1
    array-length v0, p1

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v1, v0}, Lcom/amap/api/mapcore/util/w2;->d([DII)Lcom/amap/api/mapcore/util/n3;

    move-result-object p1

    return-object p1
.end method

.method public d([DII)Lcom/amap/api/mapcore/util/n3;
    .locals 4

    .line 1
    iput-object p1, p0, Lcom/amap/api/mapcore/util/w2;->c:[D

    .line 2
    div-int/lit8 p3, p3, 0x2

    iput p3, p0, Lcom/amap/api/mapcore/util/w2;->d:I

    .line 3
    div-int/lit8 p2, p2, 0x2

    .line 4
    iget-object p1, p0, Lcom/amap/api/mapcore/util/w2;->a:Lcom/amap/api/mapcore/util/n3;

    .line 5
    invoke-virtual {p1}, Lcom/amap/api/mapcore/util/n3;->b()V

    .line 6
    invoke-virtual {p1, p3}, Lcom/amap/api/mapcore/util/n3;->e(I)[S

    .line 7
    iput p3, p1, Lcom/amap/api/mapcore/util/n3;->b:I

    .line 8
    iget-object p1, p1, Lcom/amap/api/mapcore/util/n3;->a:[S

    iput-object p1, p0, Lcom/amap/api/mapcore/util/w2;->b:[S

    add-int/lit8 v0, p3, -0x1

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, p3, :cond_0

    add-int v3, p2, v0

    sub-int/2addr v3, v2

    int-to-short v3, v3

    .line 9
    aput-short v3, p1, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 10
    :cond_0
    iget-object p1, p0, Lcom/amap/api/mapcore/util/w2;->e:Lcom/amap/api/mapcore/util/c3;

    .line 11
    invoke-virtual {p1}, Lcom/amap/api/mapcore/util/c3;->a()V

    .line 12
    invoke-virtual {p1, p3}, Lcom/amap/api/mapcore/util/c3;->d(I)[I

    const/4 p2, 0x0

    :goto_1
    if-ge p2, p3, :cond_1

    .line 13
    invoke-direct {p0, p2}, Lcom/amap/api/mapcore/util/w2;->b(I)I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/amap/api/mapcore/util/c3;->b(I)V

    add-int/lit8 p2, p2, 0x1

    goto :goto_1

    .line 14
    :cond_1
    iget-object p1, p0, Lcom/amap/api/mapcore/util/w2;->f:Lcom/amap/api/mapcore/util/n3;

    .line 15
    invoke-virtual {p1}, Lcom/amap/api/mapcore/util/n3;->b()V

    add-int/lit8 p3, p3, -0x2

    .line 16
    invoke-static {v1, p3}, Ljava/lang/Math;->max(II)I

    move-result p2

    mul-int/lit8 p2, p2, 0x3

    invoke-virtual {p1, p2}, Lcom/amap/api/mapcore/util/n3;->e(I)[S

    .line 17
    invoke-direct {p0}, Lcom/amap/api/mapcore/util/w2;->e()V

    return-object p1
.end method
