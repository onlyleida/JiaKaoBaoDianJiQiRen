.class public Lcn/mucang/android/jiakaoyi/mapcollect/collect/c1/c;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final a:I

.field private static final b:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    invoke-static {}, Lcn/mucang/android/jiakaoyi/framework/utils/m;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x4b0

    .line 2
    sput v0, Lcn/mucang/android/jiakaoyi/mapcollect/collect/c1/c;->a:I

    const/16 v0, 0x320

    .line 3
    sput v0, Lcn/mucang/android/jiakaoyi/mapcollect/collect/c1/c;->b:I

    goto :goto_0

    :cond_0
    const/16 v0, 0x2ee

    .line 4
    sput v0, Lcn/mucang/android/jiakaoyi/mapcollect/collect/c1/c;->a:I

    const/16 v0, 0x190

    .line 5
    sput v0, Lcn/mucang/android/jiakaoyi/mapcollect/collect/c1/c;->b:I

    :goto_0
    return-void
.end method

.method public static a(Ljava/util/List;Ljava/util/List;Lcn/mucang/android/jiakaoyi/signal/pos/Pos;Lcn/mucang/android/jiakaoyi/signal/pos/Pos;DILjava/util/concurrent/atomic/AtomicBoolean;)Z
    .locals 18
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcn/mucang/android/jiakaoyi/signal/pos/Pos;",
            ">;",
            "Ljava/util/List<",
            "Lcn/mucang/android/jiakaoyi/signal/pos/Pos;",
            ">;",
            "Lcn/mucang/android/jiakaoyi/signal/pos/Pos;",
            "Lcn/mucang/android/jiakaoyi/signal/pos/Pos;",
            "DI",
            "Ljava/util/concurrent/atomic/AtomicBoolean;",
            ")Z"
        }
    .end annotation

    .line 1
    new-instance v8, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    invoke-direct {v8}, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;-><init>()V

    .line 2
    new-instance v9, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    invoke-direct {v9}, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;-><init>()V

    const/4 v6, 0x1

    move-object/from16 v0, p0

    move-object v1, v8

    move-object v2, v9

    move-wide/from16 v3, p4

    move/from16 v5, p6

    move-object/from16 v7, p7

    .line 3
    invoke-static/range {v0 .. v7}, Lcn/mucang/android/jiakaoyi/mapcollect/collect/c1/c;->d(Ljava/util/List;Lcn/mucang/android/jiakaoyi/signal/pos/Pos;Lcn/mucang/android/jiakaoyi/signal/pos/Pos;DIZLjava/util/concurrent/atomic/AtomicBoolean;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 4
    :cond_0
    new-instance v0, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    invoke-direct {v0}, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;-><init>()V

    .line 5
    new-instance v2, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    invoke-direct {v2}, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;-><init>()V

    const/16 v16, 0x0

    move-object/from16 v10, p1

    move-object v11, v0

    move-object v12, v2

    move-wide/from16 v13, p4

    move/from16 v15, p6

    move-object/from16 v17, p7

    .line 6
    invoke-static/range {v10 .. v17}, Lcn/mucang/android/jiakaoyi/mapcollect/collect/c1/c;->d(Ljava/util/List;Lcn/mucang/android/jiakaoyi/signal/pos/Pos;Lcn/mucang/android/jiakaoyi/signal/pos/Pos;DIZLjava/util/concurrent/atomic/AtomicBoolean;)Z

    move-result v3

    if-nez v3, :cond_1

    return v1

    .line 7
    :cond_1
    invoke-static {v8, v2}, Lcn/mucang/android/jiakaoyi/mapcollect/collect/c1/c;->e(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;Lcn/mucang/android/jiakaoyi/signal/pos/Pos;)Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    move-result-object v1

    move-object/from16 v2, p2

    invoke-virtual {v2, v1}, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;->setPos(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;)Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    .line 8
    invoke-static {v9, v0}, Lcn/mucang/android/jiakaoyi/mapcollect/collect/c1/c;->e(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;Lcn/mucang/android/jiakaoyi/signal/pos/Pos;)Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    move-result-object v0

    move-object/from16 v1, p3

    invoke-virtual {v1, v0}, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;->setPos(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;)Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    const/4 v0, 0x1

    return v0
.end method

.method public static b(Ljava/util/List;IILcn/mucang/android/jiakaoyi/signal/pos/Pos;)D
    .locals 31
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcn/mucang/android/jiakaoyi/signal/pos/Pos;",
            ">;II",
            "Lcn/mucang/android/jiakaoyi/signal/pos/Pos;",
            ")D"
        }
    .end annotation

    move-object/from16 v0, p0

    move/from16 v1, p1

    move/from16 v2, p2

    sub-int v3, v2, v1

    add-int/lit8 v3, v3, 0x1

    const/4 v6, 0x2

    if-lt v3, v6, :cond_3

    .line 1
    invoke-interface/range {p0 .. p0}, Ljava/util/List;->size()I

    move-result v6

    add-int/lit8 v6, v6, -0x1

    if-lt v1, v6, :cond_0

    goto/16 :goto_1

    :cond_0
    const-wide/16 v6, 0x0

    const-wide/16 v8, 0x0

    const-wide/16 v10, 0x0

    const-wide/16 v12, 0x0

    const-wide/16 v14, 0x0

    const-wide/16 v16, 0x0

    const-wide/16 v18, 0x0

    const-wide/16 v20, 0x0

    const-wide/16 v22, 0x0

    :goto_0
    if-gt v1, v2, :cond_1

    .line 2
    invoke-interface/range {p0 .. p0}, Ljava/util/List;->size()I

    move-result v4

    if-ge v1, v4, :cond_1

    .line 3
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    iget-wide v4, v4, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;->x:D

    .line 4
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v24

    move-object/from16 v0, v24

    check-cast v0, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    move/from16 v24, v3

    iget-wide v2, v0, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;->y:D

    mul-double v25, v4, v4

    mul-double v27, v2, v2

    add-double/2addr v10, v4

    add-double/2addr v14, v2

    add-double v16, v16, v25

    add-double v18, v18, v27

    mul-double v29, v25, v4

    add-double v20, v20, v29

    mul-double v29, v27, v2

    add-double v22, v22, v29

    mul-double v29, v4, v2

    add-double v6, v6, v29

    mul-double v4, v4, v27

    add-double/2addr v8, v4

    mul-double v25, v25, v2

    add-double v12, v12, v25

    add-int/lit8 v1, v1, 0x1

    move-object/from16 v0, p0

    move/from16 v2, p2

    move/from16 v3, v24

    goto :goto_0

    :cond_1
    int-to-double v0, v3

    mul-double v2, v0, v16

    mul-double v4, v10, v10

    sub-double/2addr v2, v4

    mul-double v6, v6, v0

    mul-double v4, v10, v14

    sub-double/2addr v6, v4

    mul-double v20, v20, v0

    mul-double v8, v8, v0

    add-double v20, v20, v8

    add-double v4, v16, v18

    mul-double v8, v4, v10

    sub-double v20, v20, v8

    mul-double v8, v0, v18

    mul-double v24, v14, v14

    sub-double v8, v8, v24

    mul-double v12, v12, v0

    mul-double v22, v22, v0

    add-double v12, v12, v22

    mul-double v4, v4, v14

    sub-double/2addr v12, v4

    mul-double v4, v12, v6

    mul-double v22, v20, v8

    sub-double v4, v4, v22

    mul-double v8, v8, v2

    mul-double v22, v6, v6

    sub-double v24, v8, v22

    div-double v4, v4, v24

    mul-double v12, v12, v2

    mul-double v20, v20, v6

    sub-double v12, v12, v20

    sub-double v22, v22, v8

    div-double v12, v12, v22

    mul-double v10, v10, v4

    mul-double v14, v14, v12

    add-double/2addr v10, v14

    add-double v10, v10, v16

    add-double v10, v10, v18

    neg-double v2, v10

    div-double/2addr v2, v0

    const-wide/high16 v0, -0x4000000000000000L    # -2.0

    div-double v15, v4, v0

    div-double v17, v12, v0

    const-wide/16 v19, 0x0

    move-object/from16 v14, p3

    .line 5
    invoke-virtual/range {v14 .. v20}, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;->setPos(DDD)Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    mul-double v4, v4, v4

    mul-double v12, v12, v12

    add-double/2addr v4, v12

    const-wide/high16 v0, 0x4010000000000000L    # 4.0

    mul-double v2, v2, v0

    sub-double/2addr v4, v2

    const-wide/16 v0, 0x0

    cmpg-double v2, v4, v0

    if-gtz v2, :cond_2

    return-wide v0

    .line 6
    :cond_2
    invoke-static {v4, v5}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v0

    const-wide/high16 v2, 0x4000000000000000L    # 2.0

    div-double/2addr v0, v2

    return-wide v0

    :cond_3
    :goto_1
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method private static c(Ljava/util/List;[DILcn/mucang/android/jiakaoyi/signal/pos/Pos;DDI)Z
    .locals 20
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcn/mucang/android/jiakaoyi/signal/pos/Pos;",
            ">;[DI",
            "Lcn/mucang/android/jiakaoyi/signal/pos/Pos;",
            "DDI)Z"
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p3

    move-wide/from16 v2, p4

    .line 1
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 2
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    const/4 v7, 0x0

    .line 3
    :goto_0
    invoke-interface/range {p0 .. p0}, Ljava/util/List;->size()I

    move-result v8

    const/4 v9, 0x1

    sub-int/2addr v8, v9

    if-ge v7, v8, :cond_6

    move v8, v7

    const-wide/16 v12, 0x0

    .line 4
    :goto_1
    invoke-interface/range {p0 .. p0}, Ljava/util/List;->size()I

    move-result v14

    sub-int/2addr v14, v9

    if-ge v8, v14, :cond_1

    .line 5
    aget-wide v14, p1, v8

    add-double/2addr v12, v14

    move/from16 v14, p2

    int-to-double v10, v14

    cmpl-double v17, v12, v10

    if-ltz v17, :cond_0

    goto :goto_2

    :cond_0
    add-int/lit8 v8, v8, 0x1

    goto :goto_1

    :cond_1
    move/from16 v14, p2

    move v8, v7

    :goto_2
    if-gt v8, v7, :cond_2

    move/from16 v9, p8

    goto :goto_4

    .line 6
    :cond_2
    new-instance v10, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    invoke-direct {v10}, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;-><init>()V

    .line 7
    invoke-static {v0, v7, v8, v10}, Lcn/mucang/android/jiakaoyi/mapcollect/collect/c1/c;->b(Ljava/util/List;IILcn/mucang/android/jiakaoyi/signal/pos/Pos;)D

    move-result-wide v11

    move v13, v7

    const-wide/16 v15, 0x0

    :goto_3
    if-gt v13, v8, :cond_3

    .line 8
    invoke-interface {v0, v13}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v17

    move-object/from16 v6, v17

    check-cast v6, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    invoke-virtual {v10, v6}, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;->distanceTo(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;)D

    move-result-wide v18

    sub-double v18, v18, v11

    mul-double v18, v18, v18

    .line 9
    invoke-static/range {v18 .. v19}, Ljava/lang/Math;->abs(D)D

    move-result-wide v18

    add-double v15, v15, v18

    add-int/lit8 v13, v13, 0x1

    goto :goto_3

    :cond_3
    sub-int/2addr v8, v7

    add-int/2addr v8, v9

    move-object v13, v10

    int-to-double v9, v8

    div-double/2addr v15, v9

    .line 10
    invoke-static/range {v15 .. v16}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v8

    sub-double v15, v11, v2

    .line 11
    invoke-static/range {v15 .. v16}, Ljava/lang/Math;->abs(D)D

    move-result-wide v15

    cmpg-double v10, v15, p6

    if-gtz v10, :cond_4

    const-wide/high16 v15, 0x4024000000000000L    # 10.0

    cmpg-double v10, v8, v15

    if-gez v10, :cond_4

    .line 12
    new-instance v8, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    move-object v9, v13

    invoke-direct {v8, v9}, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;-><init>(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;)V

    invoke-interface {v4, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 13
    invoke-static {v11, v12}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v8

    invoke-interface {v5, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 14
    :cond_4
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v8

    move/from16 v9, p8

    if-lt v8, v9, :cond_5

    .line 15
    invoke-static {v4, v5, v2, v3, v1}, Lcn/mucang/android/jiakaoyi/mapcollect/collect/c1/c;->h(Ljava/util/List;Ljava/util/List;DLcn/mucang/android/jiakaoyi/signal/pos/Pos;)V

    const/4 v6, 0x1

    return v6

    :cond_5
    :goto_4
    add-int/lit8 v7, v7, 0x1

    goto/16 :goto_0

    :cond_6
    const/4 v6, 0x1

    .line 16
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v0

    if-lt v0, v6, :cond_7

    .line 17
    invoke-static {v4, v5, v2, v3, v1}, Lcn/mucang/android/jiakaoyi/mapcollect/collect/c1/c;->h(Ljava/util/List;Ljava/util/List;DLcn/mucang/android/jiakaoyi/signal/pos/Pos;)V

    return v6

    :cond_7
    const/4 v0, 0x0

    return v0
.end method

.method private static d(Ljava/util/List;Lcn/mucang/android/jiakaoyi/signal/pos/Pos;Lcn/mucang/android/jiakaoyi/signal/pos/Pos;DIZLjava/util/concurrent/atomic/AtomicBoolean;)Z
    .locals 24
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcn/mucang/android/jiakaoyi/signal/pos/Pos;",
            ">;",
            "Lcn/mucang/android/jiakaoyi/signal/pos/Pos;",
            "Lcn/mucang/android/jiakaoyi/signal/pos/Pos;",
            "DIZ",
            "Ljava/util/concurrent/atomic/AtomicBoolean;",
            ")Z"
        }
    .end annotation

    move-object/from16 v9, p0

    move/from16 v0, p6

    move-object/from16 v1, p7

    .line 1
    invoke-interface/range {p0 .. p0}, Ljava/util/List;->size()I

    move-result v2

    new-array v10, v2, [D

    const/4 v11, 0x0

    const/4 v3, 0x0

    .line 2
    :goto_0
    invoke-interface/range {p0 .. p0}, Ljava/util/List;->size()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    if-ge v3, v4, :cond_0

    .line 3
    invoke-interface {v9, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    add-int/lit8 v5, v3, 0x1

    invoke-interface {v9, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    invoke-virtual {v4, v6}, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;->distanceTo(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;)D

    move-result-wide v6

    aput-wide v6, v10, v3

    move v3, v5

    goto :goto_0

    :cond_0
    add-int/lit8 v3, v2, -0x1

    add-int/lit8 v4, v2, -0x2

    .line 4
    aget-wide v4, v10, v4

    aput-wide v4, v10, v3

    const-wide/16 v3, 0x0

    .line 5
    sget v5, Lcn/mucang/android/jiakaoyi/mapcollect/collect/c1/c;->a:I

    sget v6, Lcn/mucang/android/jiakaoyi/mapcollect/collect/c1/c;->b:I

    add-int/2addr v5, v6

    int-to-double v5, v5

    const-wide/high16 v7, 0x3fe0000000000000L    # 0.5

    mul-double v5, v5, v7

    mul-double v5, v5, v7

    const-wide v12, 0x400921fb54442d18L    # Math.PI

    mul-double v5, v5, v12

    const/4 v12, 0x0

    :goto_1
    if-ge v12, v2, :cond_2

    .line 6
    aget-wide v13, v10, v12

    add-double/2addr v3, v13

    cmpl-double v13, v3, v5

    if-lez v13, :cond_1

    goto :goto_2

    :cond_1
    add-int/lit8 v12, v12, 0x1

    goto :goto_1

    :cond_2
    const/4 v12, 0x0

    .line 7
    :goto_2
    new-instance v2, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    invoke-direct {v2}, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;-><init>()V

    invoke-static {v9, v11, v12, v2}, Lcn/mucang/android/jiakaoyi/mapcollect/collect/c1/c;->b(Ljava/util/List;IILcn/mucang/android/jiakaoyi/signal/pos/Pos;)D

    move-result-wide v2

    .line 8
    sget v4, Lcn/mucang/android/jiakaoyi/mapcollect/collect/c1/c;->a:I

    sget v12, Lcn/mucang/android/jiakaoyi/mapcollect/collect/c1/c;->b:I

    add-int v5, v4, v12

    int-to-double v5, v5

    mul-double v5, v5, v7

    const-wide v13, 0x3ff91eb851eb851fL    # 1.57

    cmpl-double v7, v2, v5

    if-lez v7, :cond_4

    xor-int/lit8 v0, v0, 0x1

    .line 9
    invoke-virtual {v1, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    int-to-double v0, v4

    mul-double v0, v0, v13

    double-to-int v2, v0

    int-to-double v4, v4

    move-object/from16 v0, p0

    move-object v1, v10

    move-object/from16 v3, p2

    move-wide/from16 v6, p3

    move/from16 v8, p5

    .line 10
    invoke-static/range {v0 .. v8}, Lcn/mucang/android/jiakaoyi/mapcollect/collect/c1/c;->c(Ljava/util/List;[DILcn/mucang/android/jiakaoyi/signal/pos/Pos;DDI)Z

    move-result v0

    if-nez v0, :cond_3

    return v11

    .line 11
    :cond_3
    invoke-static/range {p0 .. p0}, Lcn/mucang/android/jiakaoyi/mapcollect/collect/c1/c;->f(Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    invoke-static {v10}, Lcn/mucang/android/jiakaoyi/mapcollect/collect/c1/c;->g([D)[D

    move-result-object v2

    int-to-double v3, v12

    mul-double v3, v3, v13

    double-to-int v3, v3

    int-to-double v5, v12

    move-object/from16 v4, p1

    move-wide/from16 v7, p3

    move/from16 v9, p5

    invoke-static/range {v1 .. v9}, Lcn/mucang/android/jiakaoyi/mapcollect/collect/c1/c;->c(Ljava/util/List;[DILcn/mucang/android/jiakaoyi/signal/pos/Pos;DDI)Z

    move-result v0

    return v0

    .line 12
    :cond_4
    invoke-virtual {v1, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 13
    invoke-static/range {p0 .. p0}, Lcn/mucang/android/jiakaoyi/mapcollect/collect/c1/c;->f(Ljava/util/List;)Ljava/util/List;

    move-result-object v15

    invoke-static {v10}, Lcn/mucang/android/jiakaoyi/mapcollect/collect/c1/c;->g([D)[D

    move-result-object v16

    int-to-double v0, v4

    mul-double v0, v0, v13

    double-to-int v0, v0

    int-to-double v1, v4

    move/from16 v17, v0

    move-object/from16 v18, p2

    move-wide/from16 v19, v1

    move-wide/from16 v21, p3

    move/from16 v23, p5

    invoke-static/range {v15 .. v23}, Lcn/mucang/android/jiakaoyi/mapcollect/collect/c1/c;->c(Ljava/util/List;[DILcn/mucang/android/jiakaoyi/signal/pos/Pos;DDI)Z

    move-result v0

    if-nez v0, :cond_5

    return v11

    :cond_5
    int-to-double v0, v12

    mul-double v0, v0, v13

    double-to-int v2, v0

    int-to-double v4, v12

    move-object/from16 v0, p0

    move-object v1, v10

    move-object/from16 v3, p1

    move-wide/from16 v6, p3

    move/from16 v8, p5

    .line 14
    invoke-static/range {v0 .. v8}, Lcn/mucang/android/jiakaoyi/mapcollect/collect/c1/c;->c(Ljava/util/List;[DILcn/mucang/android/jiakaoyi/signal/pos/Pos;DDI)Z

    move-result v0

    return v0
.end method

.method private static e(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;Lcn/mucang/android/jiakaoyi/signal/pos/Pos;)Lcn/mucang/android/jiakaoyi/signal/pos/Pos;
    .locals 9

    .line 1
    iget-wide v0, p0, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;->z:D

    sget v2, Lcn/mucang/android/jiakaoyi/mapcollect/collect/c1/c;->a:I

    int-to-double v3, v2

    sub-double/2addr v0, v3

    invoke-static {v0, v1}, Ljava/lang/Math;->abs(D)D

    move-result-wide v0

    iget-wide v3, p0, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;->z:D

    sget v5, Lcn/mucang/android/jiakaoyi/mapcollect/collect/c1/c;->b:I

    int-to-double v6, v5

    sub-double/2addr v3, v6

    invoke-static {v3, v4}, Ljava/lang/Math;->abs(D)D

    move-result-wide v3

    invoke-static {v0, v1, v3, v4}, Ljava/lang/Math;->min(DD)D

    move-result-wide v0

    .line 2
    iget-wide v3, p1, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;->z:D

    int-to-double v6, v2

    sub-double/2addr v3, v6

    invoke-static {v3, v4}, Ljava/lang/Math;->abs(D)D

    move-result-wide v2

    iget-wide v6, p1, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;->z:D

    int-to-double v4, v5

    sub-double/2addr v6, v4

    invoke-static {v6, v7}, Ljava/lang/Math;->abs(D)D

    move-result-wide v4

    invoke-static {v2, v3, v4, v5}, Ljava/lang/Math;->min(DD)D

    move-result-wide v2

    add-double/2addr v0, v2

    div-double/2addr v2, v0

    const-wide/high16 v0, 0x3ff0000000000000L    # 1.0

    sub-double/2addr v0, v2

    .line 3
    new-instance v4, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    invoke-direct {v4}, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;-><init>()V

    .line 4
    iget-wide v5, p0, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;->x:D

    mul-double v5, v5, v2

    iget-wide v7, p1, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;->x:D

    mul-double v7, v7, v0

    add-double/2addr v5, v7

    iput-wide v5, v4, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;->x:D

    .line 5
    iget-wide v5, p0, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;->y:D

    mul-double v5, v5, v2

    iget-wide p0, p1, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;->y:D

    mul-double p0, p0, v0

    add-double/2addr v5, p0

    iput-wide v5, v4, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;->y:D

    return-object v4
.end method

.method private static f(Ljava/util/List;)Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcn/mucang/android/jiakaoyi/signal/pos/Pos;",
            ">;)",
            "Ljava/util/List<",
            "Lcn/mucang/android/jiakaoyi/signal/pos/Pos;",
            ">;"
        }
    .end annotation

    .line 1
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    .line 2
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1, v0}, Ljava/util/ArrayList;-><init>(I)V

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_0

    add-int/lit8 v3, v0, -0x1

    sub-int/2addr v3, v2

    .line 3
    invoke-interface {p0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-object v1
.end method

.method private static g([D)[D
    .locals 4

    .line 1
    array-length v0, p0

    new-array v0, v0, [D

    const/4 v1, 0x0

    .line 2
    :goto_0
    array-length v2, p0

    if-ge v1, v2, :cond_0

    .line 3
    array-length v2, p0

    add-int/lit8 v2, v2, -0x1

    sub-int/2addr v2, v1

    aget-wide v2, p0, v2

    aput-wide v2, v0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method private static h(Ljava/util/List;Ljava/util/List;DLcn/mucang/android/jiakaoyi/signal/pos/Pos;)V
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcn/mucang/android/jiakaoyi/signal/pos/Pos;",
            ">;",
            "Ljava/util/List<",
            "Ljava/lang/Double;",
            ">;D",
            "Lcn/mucang/android/jiakaoyi/signal/pos/Pos;",
            ")V"
        }
    .end annotation

    .line 1
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_0

    .line 2
    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    invoke-virtual {p4, p0}, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;->setPos(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;)Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    return-void

    .line 3
    :cond_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    new-array v2, v0, [D

    const-wide v3, -0x10000000000001L

    const/4 v5, 0x0

    :goto_0
    if-ge v5, v0, :cond_2

    .line 4
    invoke-interface {p1, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Double;

    invoke-virtual {v6}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v6

    sub-double v6, p2, v6

    invoke-static {v6, v7}, Ljava/lang/Math;->abs(D)D

    move-result-wide v6

    aput-wide v6, v2, v5

    .line 5
    aget-wide v6, v2, v5

    cmpl-double v8, v6, v3

    if-lez v8, :cond_1

    .line 6
    aget-wide v3, v2, v5

    :cond_1
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :cond_2
    const-wide p1, 0x3fb999999999999aL    # 0.1

    add-double/2addr v3, p1

    const-wide/16 p1, 0x0

    move-wide v5, p1

    const/4 p3, 0x0

    :goto_1
    if-ge p3, v0, :cond_3

    .line 7
    aget-wide v7, v2, p3

    sub-double v7, v3, v7

    mul-double v7, v7, v7

    .line 8
    aput-wide v7, v2, p3

    .line 9
    aget-wide v7, v2, p3

    add-double/2addr v5, v7

    add-int/lit8 p3, p3, 0x1

    goto :goto_1

    :cond_3
    const/4 p3, 0x0

    :goto_2
    if-ge p3, v0, :cond_4

    .line 10
    aget-wide v3, v2, p3

    div-double/2addr v3, v5

    aput-wide v3, v2, p3

    add-int/lit8 p3, p3, 0x1

    goto :goto_2

    .line 11
    :cond_4
    iput-wide p1, p4, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;->x:D

    .line 12
    iput-wide p1, p4, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;->y:D

    :goto_3
    if-ge v1, v0, :cond_5

    .line 13
    iget-wide p1, p4, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;->x:D

    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    iget-wide v3, p3, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;->x:D

    aget-wide v5, v2, v1

    mul-double v3, v3, v5

    add-double/2addr p1, v3

    iput-wide p1, p4, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;->x:D

    .line 14
    iget-wide p1, p4, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;->y:D

    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    iget-wide v3, p3, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;->y:D

    aget-wide v5, v2, v1

    mul-double v3, v3, v5

    add-double/2addr p1, v3

    iput-wide p1, p4, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;->y:D

    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    :cond_5
    return-void
.end method
