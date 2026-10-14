.class public Lcn/mucang/android/jiakaoyi/teachingk2/a1/i/a;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

.field public b:D

.field public final c:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

.field public final d:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

.field private final e:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

.field private final f:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

.field private final g:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

.field private final h:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

.field private i:Z


# direct methods
.method public constructor <init>(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;DLcn/mucang/android/jiakaoyi/signal/pos/Pos;Lcn/mucang/android/jiakaoyi/signal/pos/Pos;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcn/mucang/android/jiakaoyi/teachingk2/a1/i/a;->a:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    .line 3
    iput-wide p2, p0, Lcn/mucang/android/jiakaoyi/teachingk2/a1/i/a;->b:D

    .line 4
    iput-object p4, p0, Lcn/mucang/android/jiakaoyi/teachingk2/a1/i/a;->c:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    .line 5
    iput-object p5, p0, Lcn/mucang/android/jiakaoyi/teachingk2/a1/i/a;->d:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    .line 6
    invoke-virtual {p1, p4}, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;->vectorTo(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;)Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    move-result-object p2

    iput-object p2, p0, Lcn/mucang/android/jiakaoyi/teachingk2/a1/i/a;->e:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    .line 7
    invoke-virtual {p1, p5}, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;->vectorTo(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;)Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    move-result-object p1

    iput-object p1, p0, Lcn/mucang/android/jiakaoyi/teachingk2/a1/i/a;->f:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    .line 8
    new-instance p1, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    invoke-direct {p1}, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;-><init>()V

    iput-object p1, p0, Lcn/mucang/android/jiakaoyi/teachingk2/a1/i/a;->g:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    .line 9
    new-instance p1, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    invoke-direct {p1}, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;-><init>()V

    iput-object p1, p0, Lcn/mucang/android/jiakaoyi/teachingk2/a1/i/a;->h:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    return-void
.end method


# virtual methods
.method public a(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;Lcn/mucang/android/jiakaoyi/signal/pos/Pos;)Z
    .locals 22

    move-object/from16 v0, p0

    move-object/from16 v7, p1

    move-object/from16 v8, p2

    .line 1
    iget-object v1, v0, Lcn/mucang/android/jiakaoyi/teachingk2/a1/i/a;->a:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    invoke-static {v1, v7, v8}, Lcn/mucang/android/jiakaoyi/hpmap/d/a;->k(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;Lcn/mucang/android/jiakaoyi/signal/pos/Pos;Lcn/mucang/android/jiakaoyi/signal/pos/Pos;)D

    move-result-wide v1

    iget-wide v3, v0, Lcn/mucang/android/jiakaoyi/teachingk2/a1/i/a;->b:D

    const/4 v9, 0x0

    cmpl-double v5, v1, v3

    if-lez v5, :cond_0

    return v9

    .line 2
    :cond_0
    iget-wide v1, v7, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;->y:D

    iget-wide v5, v8, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;->y:D

    sub-double v5, v1, v5

    const-wide/16 v15, 0x0

    cmpl-double v17, v5, v15

    if-nez v17, :cond_4

    const-wide/high16 v5, -0x4000000000000000L    # -2.0

    .line 3
    iget-object v12, v0, Lcn/mucang/android/jiakaoyi/teachingk2/a1/i/a;->a:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    iget-wide v13, v12, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;->x:D

    mul-double v5, v5, v13

    mul-double v13, v13, v13

    .line 4
    iget-wide v9, v12, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;->y:D

    sub-double v11, v1, v9

    sub-double/2addr v1, v9

    mul-double v11, v11, v1

    add-double/2addr v13, v11

    mul-double v3, v3, v3

    sub-double/2addr v13, v3

    mul-double v1, v5, v5

    const-wide/high16 v3, 0x4010000000000000L    # 4.0

    mul-double v10, v3, v13

    sub-double/2addr v1, v10

    cmpg-double v3, v1, v15

    if-gez v3, :cond_1

    const/4 v3, 0x0

    return v3

    .line 5
    :cond_1
    invoke-static {v1, v2}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v1

    sub-double v3, v1, v5

    const-wide/high16 v9, 0x4000000000000000L    # 2.0

    div-double/2addr v3, v9

    .line 6
    iget-wide v9, v7, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;->y:D

    .line 7
    iget-object v11, v0, Lcn/mucang/android/jiakaoyi/teachingk2/a1/i/a;->g:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    invoke-virtual {v11, v3, v4, v9, v10}, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;->setPos(DD)Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    .line 8
    iget-object v11, v0, Lcn/mucang/android/jiakaoyi/teachingk2/a1/i/a;->a:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    iget-object v12, v0, Lcn/mucang/android/jiakaoyi/teachingk2/a1/i/a;->g:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    iget-object v13, v0, Lcn/mucang/android/jiakaoyi/teachingk2/a1/i/a;->h:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    invoke-virtual {v11, v12, v13}, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;->vectorTo(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;Lcn/mucang/android/jiakaoyi/signal/pos/Pos;)Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    .line 9
    iget-object v11, v0, Lcn/mucang/android/jiakaoyi/teachingk2/a1/i/a;->e:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    iget-object v12, v0, Lcn/mucang/android/jiakaoyi/teachingk2/a1/i/a;->h:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    invoke-virtual {v11, v12}, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;->cross(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;)D

    move-result-wide v11

    cmpl-double v13, v11, v15

    if-ltz v13, :cond_2

    iget-object v11, v0, Lcn/mucang/android/jiakaoyi/teachingk2/a1/i/a;->f:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    iget-object v12, v0, Lcn/mucang/android/jiakaoyi/teachingk2/a1/i/a;->h:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    invoke-virtual {v11, v12}, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;->cross(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;)D

    move-result-wide v11

    cmpg-double v13, v11, v15

    if-gtz v13, :cond_2

    move-wide v1, v3

    move-wide v3, v9

    move-object/from16 v5, p1

    move-object/from16 v6, p2

    .line 10
    invoke-static/range {v1 .. v6}, Lcn/mucang/android/jiakaoyi/hpmap/d/a;->x(DDLcn/mucang/android/jiakaoyi/signal/pos/Pos;Lcn/mucang/android/jiakaoyi/signal/pos/Pos;)Z

    move-result v1

    return v1

    :cond_2
    neg-double v1, v1

    sub-double/2addr v1, v5

    const-wide/high16 v3, 0x4000000000000000L    # 2.0

    div-double/2addr v1, v3

    .line 11
    iget-wide v3, v7, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;->y:D

    .line 12
    iget-object v5, v0, Lcn/mucang/android/jiakaoyi/teachingk2/a1/i/a;->g:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    invoke-virtual {v5, v1, v2, v3, v4}, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;->setPos(DD)Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    .line 13
    iget-object v5, v0, Lcn/mucang/android/jiakaoyi/teachingk2/a1/i/a;->a:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    iget-object v6, v0, Lcn/mucang/android/jiakaoyi/teachingk2/a1/i/a;->g:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    iget-object v9, v0, Lcn/mucang/android/jiakaoyi/teachingk2/a1/i/a;->h:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    invoke-virtual {v5, v6, v9}, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;->vectorTo(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;Lcn/mucang/android/jiakaoyi/signal/pos/Pos;)Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    .line 14
    iget-object v5, v0, Lcn/mucang/android/jiakaoyi/teachingk2/a1/i/a;->e:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    iget-object v6, v0, Lcn/mucang/android/jiakaoyi/teachingk2/a1/i/a;->h:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    invoke-virtual {v5, v6}, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;->cross(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;)D

    move-result-wide v5

    cmpl-double v9, v5, v15

    if-ltz v9, :cond_3

    iget-object v5, v0, Lcn/mucang/android/jiakaoyi/teachingk2/a1/i/a;->f:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    iget-object v6, v0, Lcn/mucang/android/jiakaoyi/teachingk2/a1/i/a;->h:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    invoke-virtual {v5, v6}, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;->cross(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;)D

    move-result-wide v5

    cmpg-double v9, v5, v15

    if-gtz v9, :cond_3

    move-object/from16 v5, p1

    move-object/from16 v6, p2

    invoke-static/range {v1 .. v6}, Lcn/mucang/android/jiakaoyi/hpmap/d/a;->x(DDLcn/mucang/android/jiakaoyi/signal/pos/Pos;Lcn/mucang/android/jiakaoyi/signal/pos/Pos;)Z

    move-result v1

    if-eqz v1, :cond_3

    const/4 v9, 0x1

    goto :goto_0

    :cond_3
    const/4 v9, 0x0

    :goto_0
    return v9

    .line 15
    :cond_4
    iget-wide v9, v7, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;->x:D

    iget-wide v11, v8, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;->x:D

    sub-double v11, v9, v11

    div-double/2addr v11, v5

    .line 16
    iget-object v5, v0, Lcn/mucang/android/jiakaoyi/teachingk2/a1/i/a;->a:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    iget-wide v13, v5, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;->x:D

    sub-double/2addr v9, v13

    mul-double v1, v1, v11

    sub-double/2addr v9, v1

    mul-double v1, v11, v11

    const-wide/high16 v13, 0x3ff0000000000000L    # 1.0

    add-double/2addr v1, v13

    mul-double v13, v11, v9

    .line 17
    iget-wide v5, v5, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;->y:D

    sub-double/2addr v13, v5

    const-wide/high16 v18, 0x4000000000000000L    # 2.0

    mul-double v13, v13, v18

    mul-double v9, v9, v9

    mul-double v5, v5, v5

    add-double/2addr v9, v5

    mul-double v3, v3, v3

    sub-double/2addr v9, v3

    mul-double v3, v13, v13

    const-wide/high16 v5, 0x4010000000000000L    # 4.0

    mul-double v5, v5, v1

    mul-double v5, v5, v9

    sub-double/2addr v3, v5

    cmpg-double v5, v3, v15

    if-gez v5, :cond_5

    const/4 v5, 0x0

    return v5

    .line 18
    :cond_5
    invoke-static {v3, v4}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v9

    sub-double v3, v9, v13

    const-wide/high16 v5, 0x4000000000000000L    # 2.0

    mul-double v18, v1, v5

    div-double v5, v3, v18

    .line 19
    iget-wide v1, v7, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;->y:D

    sub-double v1, v5, v1

    mul-double v1, v1, v11

    iget-wide v3, v7, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;->x:D

    add-double/2addr v3, v1

    move-wide v1, v3

    move-wide/from16 v20, v11

    move-wide v11, v3

    move-wide v3, v5

    move-wide v7, v5

    move-object/from16 v5, p1

    move-object/from16 v6, p2

    .line 20
    invoke-static/range {v1 .. v6}, Lcn/mucang/android/jiakaoyi/hpmap/d/a;->x(DDLcn/mucang/android/jiakaoyi/signal/pos/Pos;Lcn/mucang/android/jiakaoyi/signal/pos/Pos;)Z

    move-result v1

    if-eqz v1, :cond_8

    .line 21
    iget-object v1, v0, Lcn/mucang/android/jiakaoyi/teachingk2/a1/i/a;->g:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    invoke-virtual {v1, v11, v12, v7, v8}, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;->setPos(DD)Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    .line 22
    iget-object v1, v0, Lcn/mucang/android/jiakaoyi/teachingk2/a1/i/a;->a:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    iget-object v2, v0, Lcn/mucang/android/jiakaoyi/teachingk2/a1/i/a;->g:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    iget-object v3, v0, Lcn/mucang/android/jiakaoyi/teachingk2/a1/i/a;->h:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    invoke-virtual {v1, v2, v3}, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;->vectorTo(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;Lcn/mucang/android/jiakaoyi/signal/pos/Pos;)Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    .line 23
    iget-object v1, v0, Lcn/mucang/android/jiakaoyi/teachingk2/a1/i/a;->e:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    iget-object v2, v0, Lcn/mucang/android/jiakaoyi/teachingk2/a1/i/a;->h:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    invoke-virtual {v1, v2}, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;->cross(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;)D

    move-result-wide v1

    .line 24
    iget-object v3, v0, Lcn/mucang/android/jiakaoyi/teachingk2/a1/i/a;->f:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    iget-object v4, v0, Lcn/mucang/android/jiakaoyi/teachingk2/a1/i/a;->h:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    invoke-virtual {v3, v4}, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;->cross(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;)D

    move-result-wide v3

    .line 25
    iget-boolean v5, v0, Lcn/mucang/android/jiakaoyi/teachingk2/a1/i/a;->i:Z

    if-eqz v5, :cond_7

    cmpl-double v6, v1, v15

    if-ltz v6, :cond_7

    cmpg-double v6, v3, v15

    if-lez v6, :cond_6

    goto :goto_2

    :cond_6
    :goto_1
    const/4 v7, 0x1

    goto :goto_3

    :cond_7
    :goto_2
    if-nez v5, :cond_8

    cmpg-double v5, v1, v15

    if-gtz v5, :cond_8

    cmpl-double v1, v3, v15

    if-ltz v1, :cond_8

    goto :goto_1

    :goto_3
    return v7

    :cond_8
    const/4 v7, 0x1

    neg-double v1, v9

    sub-double/2addr v1, v13

    div-double v8, v1, v18

    move-object/from16 v5, p1

    .line 26
    iget-wide v1, v5, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;->y:D

    sub-double v1, v8, v1

    mul-double v11, v20, v1

    iget-wide v1, v5, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;->x:D

    add-double/2addr v11, v1

    move-wide v1, v11

    move-wide v3, v8

    move-object/from16 v6, p2

    .line 27
    invoke-static/range {v1 .. v6}, Lcn/mucang/android/jiakaoyi/hpmap/d/a;->x(DDLcn/mucang/android/jiakaoyi/signal/pos/Pos;Lcn/mucang/android/jiakaoyi/signal/pos/Pos;)Z

    move-result v1

    if-eqz v1, :cond_c

    .line 28
    iget-object v1, v0, Lcn/mucang/android/jiakaoyi/teachingk2/a1/i/a;->g:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    invoke-virtual {v1, v11, v12, v8, v9}, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;->setPos(DD)Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    .line 29
    iget-object v1, v0, Lcn/mucang/android/jiakaoyi/teachingk2/a1/i/a;->a:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    iget-object v2, v0, Lcn/mucang/android/jiakaoyi/teachingk2/a1/i/a;->g:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    iget-object v3, v0, Lcn/mucang/android/jiakaoyi/teachingk2/a1/i/a;->h:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    invoke-virtual {v1, v2, v3}, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;->vectorTo(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;Lcn/mucang/android/jiakaoyi/signal/pos/Pos;)Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    .line 30
    iget-object v1, v0, Lcn/mucang/android/jiakaoyi/teachingk2/a1/i/a;->e:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    iget-object v2, v0, Lcn/mucang/android/jiakaoyi/teachingk2/a1/i/a;->h:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    invoke-virtual {v1, v2}, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;->cross(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;)D

    move-result-wide v1

    .line 31
    iget-object v3, v0, Lcn/mucang/android/jiakaoyi/teachingk2/a1/i/a;->f:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    iget-object v4, v0, Lcn/mucang/android/jiakaoyi/teachingk2/a1/i/a;->h:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    invoke-virtual {v3, v4}, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;->cross(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;)D

    move-result-wide v3

    .line 32
    iget-boolean v5, v0, Lcn/mucang/android/jiakaoyi/teachingk2/a1/i/a;->i:Z

    if-eqz v5, :cond_9

    cmpl-double v6, v1, v15

    if-ltz v6, :cond_9

    cmpg-double v6, v3, v15

    if-lez v6, :cond_a

    :cond_9
    if-nez v5, :cond_b

    cmpg-double v5, v1, v15

    if-gtz v5, :cond_b

    cmpl-double v1, v3, v15

    if-ltz v1, :cond_b

    :cond_a
    const/4 v9, 0x1

    goto :goto_4

    :cond_b
    const/4 v9, 0x0

    :goto_4
    return v9

    :cond_c
    const/4 v1, 0x0

    return v1
.end method

.method public b(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcn/mucang/android/jiakaoyi/teachingk2/a1/i/a;->i:Z

    return-void
.end method

.method public c()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/a1/i/a;->a:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    iget-object v1, p0, Lcn/mucang/android/jiakaoyi/teachingk2/a1/i/a;->c:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    iget-object v2, p0, Lcn/mucang/android/jiakaoyi/teachingk2/a1/i/a;->e:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    invoke-virtual {v0, v1, v2}, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;->vectorTo(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;Lcn/mucang/android/jiakaoyi/signal/pos/Pos;)Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    .line 2
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/a1/i/a;->a:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    iget-object v1, p0, Lcn/mucang/android/jiakaoyi/teachingk2/a1/i/a;->d:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    iget-object v2, p0, Lcn/mucang/android/jiakaoyi/teachingk2/a1/i/a;->f:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    invoke-virtual {v0, v1, v2}, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;->vectorTo(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;Lcn/mucang/android/jiakaoyi/signal/pos/Pos;)Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    .line 3
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/a1/i/a;->c:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    iget-object v1, p0, Lcn/mucang/android/jiakaoyi/teachingk2/a1/i/a;->a:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    invoke-virtual {v0, v1}, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;->distanceTo(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;)D

    move-result-wide v0

    iput-wide v0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/a1/i/a;->b:D

    return-void
.end method
