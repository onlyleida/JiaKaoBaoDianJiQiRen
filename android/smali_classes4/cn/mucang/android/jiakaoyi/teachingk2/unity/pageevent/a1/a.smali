.class public Lcn/mucang/android/jiakaoyi/teachingk2/unity/pageevent/a1/a;
.super Lcn/mucang/android/jiakaoyi/teachingk2/unity/pageevent/v0$a;
.source "SourceFile"


# instance fields
.field private b:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcn/mucang/android/jiakaoyi/teachingk2/unity/pageevent/v0$a;-><init>()V

    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/unity/pageevent/a1/a;->b:Z

    return-void
.end method

.method private c(Lcn/mucang/android/jiakaoyi/teachingk2/unity/models/OperateResultModel;Lcn/mucang/android/jiakaoyi/hpmap/a/a/g/a;Lcn/mucang/android/jiakaoyi/signal/center/model/CarPos;)V
    .locals 22

    move-object/from16 v0, p1

    move-object/from16 v1, p2

    move-object/from16 v2, p3

    .line 1
    iget-object v3, v1, Lcn/mucang/android/jiakaoyi/hpmap/a/a/g/a;->i:Ljava/util/List;

    invoke-static {v3}, Lcn/mucang/android/core/utils/g;->b(Ljava/util/Collection;)Z

    move-result v3

    if-nez v3, :cond_9

    iget-object v3, v1, Lcn/mucang/android/jiakaoyi/hpmap/a/a/g/a;->i:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    const/4 v4, 0x2

    if-ge v3, v4, :cond_0

    goto/16 :goto_3

    .line 2
    :cond_0
    iget-object v1, v1, Lcn/mucang/android/jiakaoyi/hpmap/a/a/g/a;->i:Ljava/util/List;

    new-array v3, v4, [D

    const-wide v4, 0x4202a05f20000000L    # 1.0E10

    const/4 v6, -0x1

    .line 3
    new-instance v7, Lcn/mucang/android/jiakaoyi/signal/pos/a;

    invoke-direct {v7}, Lcn/mucang/android/jiakaoyi/signal/pos/a;-><init>()V

    .line 4
    iget-object v8, v2, Lcn/mucang/android/jiakaoyi/signal/center/model/CarPos;->bound:Lcn/mucang/android/jiakaoyi/signal/pos/a;

    const/high16 v9, 0x43480000    # 200.0f

    invoke-virtual {v8, v9, v9, v9, v9}, Lcn/mucang/android/jiakaoyi/signal/pos/a;->m(FFFF)Lcn/mucang/android/jiakaoyi/signal/pos/a;

    move-result-object v8

    const/4 v10, 0x0

    .line 5
    :goto_0
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v11

    const/4 v12, 0x1

    sub-int/2addr v11, v12

    if-ge v10, v11, :cond_3

    .line 6
    invoke-interface {v1, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    add-int/lit8 v13, v10, 0x1

    .line 7
    invoke-interface {v1, v13}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    .line 8
    invoke-virtual {v7}, Lcn/mucang/android/jiakaoyi/signal/pos/a;->a()V

    move v15, v13

    .line 9
    iget-wide v12, v11, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;->x:D

    move/from16 v17, v10

    iget-wide v9, v11, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;->y:D

    invoke-virtual {v7, v12, v13, v9, v10}, Lcn/mucang/android/jiakaoyi/signal/pos/a;->j(DD)V

    .line 10
    iget-wide v9, v14, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;->x:D

    iget-wide v12, v14, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;->y:D

    invoke-virtual {v7, v9, v10, v12, v13}, Lcn/mucang/android/jiakaoyi/signal/pos/a;->j(DD)V

    .line 11
    invoke-virtual {v8, v7}, Lcn/mucang/android/jiakaoyi/signal/pos/a;->h(Lcn/mucang/android/jiakaoyi/signal/pos/a;)Z

    move-result v9

    if-nez v9, :cond_1

    .line 12
    iget-object v9, v2, Lcn/mucang/android/jiakaoyi/signal/center/model/CarPos;->center:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    invoke-static {v9, v11, v14, v3}, Lcn/mucang/android/jiakaoyi/hpmap/d/a;->m(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;Lcn/mucang/android/jiakaoyi/signal/pos/Pos;Lcn/mucang/android/jiakaoyi/signal/pos/Pos;[D)D

    move-result-wide v9

    .line 13
    iget-wide v12, v11, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;->x:D

    const/16 v16, 0x0

    aget-wide v18, v3, v16

    sub-double v12, v12, v18

    aget-wide v18, v3, v16

    move-object/from16 v20, v7

    move-object/from16 v21, v8

    iget-wide v7, v14, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;->x:D

    sub-double v18, v18, v7

    mul-double v12, v12, v18

    const-wide/16 v7, 0x0

    cmpl-double v18, v12, v7

    if-ltz v18, :cond_2

    iget-wide v11, v11, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;->y:D

    const/4 v13, 0x1

    aget-wide v18, v3, v13

    sub-double v11, v11, v18

    aget-wide v18, v3, v13

    iget-wide v13, v14, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;->y:D

    sub-double v18, v18, v13

    mul-double v11, v11, v18

    cmpl-double v13, v11, v7

    if-ltz v13, :cond_2

    cmpg-double v7, v9, v4

    if-gez v7, :cond_2

    move-wide v4, v9

    move/from16 v6, v17

    goto :goto_1

    :cond_1
    move-object/from16 v20, v7

    move-object/from16 v21, v8

    :cond_2
    :goto_1
    move v10, v15

    move-object/from16 v7, v20

    move-object/from16 v8, v21

    goto :goto_0

    :cond_3
    if-ltz v6, :cond_8

    add-int/lit8 v4, v6, -0x5

    const/4 v5, 0x0

    .line 14
    invoke-static {v5, v4}, Ljava/lang/Math;->max(II)I

    move-result v4

    add-int/lit8 v6, v6, 0x5

    .line 15
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v5

    const/4 v7, 0x1

    sub-int/2addr v5, v7

    invoke-static {v5, v6}, Ljava/lang/Math;->min(II)I

    move-result v5

    const-wide v6, 0x41cdcd6500000000L    # 1.0E9

    move-wide v8, v6

    const/4 v10, 0x0

    :cond_4
    :goto_2
    if-ge v4, v5, :cond_7

    .line 16
    invoke-interface {v1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    add-int/lit8 v4, v4, 0x1

    .line 17
    invoke-interface {v1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    if-nez v10, :cond_5

    .line 18
    iget-object v10, v2, Lcn/mucang/android/jiakaoyi/signal/center/model/CarPos;->carRect:Lcn/mucang/android/jiakaoyi/signal/pos/c;

    invoke-static {v10, v11, v12}, Lcn/mucang/android/jiakaoyi/hpmap/a/b/c;->f(Lcn/mucang/android/jiakaoyi/signal/pos/c;Lcn/mucang/android/jiakaoyi/signal/pos/Pos;Lcn/mucang/android/jiakaoyi/signal/pos/Pos;)Z

    move-result v10

    .line 19
    :cond_5
    iget-object v13, v2, Lcn/mucang/android/jiakaoyi/signal/center/model/CarPos;->wheelRightFront:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    invoke-static {v13, v11, v12, v3}, Lcn/mucang/android/jiakaoyi/hpmap/d/a;->m(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;Lcn/mucang/android/jiakaoyi/signal/pos/Pos;Lcn/mucang/android/jiakaoyi/signal/pos/Pos;[D)D

    move-result-wide v13

    .line 20
    iget-object v15, v2, Lcn/mucang/android/jiakaoyi/signal/center/model/CarPos;->wheelRightBack:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    invoke-static {v15, v11, v12, v3}, Lcn/mucang/android/jiakaoyi/hpmap/d/a;->m(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;Lcn/mucang/android/jiakaoyi/signal/pos/Pos;Lcn/mucang/android/jiakaoyi/signal/pos/Pos;[D)D

    move-result-wide v11

    cmpg-double v15, v13, v6

    if-gez v15, :cond_6

    move-wide v6, v13

    :cond_6
    cmpg-double v13, v11, v8

    if-gez v13, :cond_4

    move-wide v8, v11

    goto :goto_2

    .line 21
    :cond_7
    iput v10, v0, Lcn/mucang/android/jiakaoyi/teachingk2/unity/models/OperateResultModel;->pressState:I

    .line 22
    invoke-static {v6, v7, v8, v9}, Ljava/lang/Math;->min(DD)D

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v1

    double-to-float v1, v1

    iput v1, v0, Lcn/mucang/android/jiakaoyi/teachingk2/unity/models/OperateResultModel;->distance:F

    goto :goto_3

    :cond_8
    const/4 v1, 0x0

    .line 23
    iput v1, v0, Lcn/mucang/android/jiakaoyi/teachingk2/unity/models/OperateResultModel;->inside:I

    :cond_9
    :goto_3
    return-void
.end method


# virtual methods
.method public a(Z)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Lcn/mucang/android/jiakaoyi/teachingk2/unity/pageevent/v0$a;->a(Z)V

    if-nez p1, :cond_0

    const/4 p1, 0x1

    .line 2
    iput-boolean p1, p0, Lcn/mucang/android/jiakaoyi/teachingk2/unity/pageevent/a1/a;->b:Z

    :cond_0
    return-void
.end method

.method public b(Lcn/mucang/android/jiakaoyi/signal/c/e;Ljava/lang/String;)Lcn/mucang/android/jiakaoyi/teachingk2/unity/models/OperateResultModel;
    .locals 8

    .line 1
    invoke-interface {p1}, Lcn/mucang/android/jiakaoyi/signal/c/e;->c()Lcn/mucang/android/jiakaoyi/signal/center/model/CarPos;

    move-result-object p1

    .line 2
    iget-boolean v0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/unity/pageevent/v0$a;->a:Z

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    .line 3
    :cond_0
    invoke-static {}, Lcn/mucang/android/jiakaoyi/teachingk2/res/n;->b()Lcn/mucang/android/jiakaoyi/teachingk2/res/n;

    move-result-object v0

    iget-object v0, v0, Lcn/mucang/android/jiakaoyi/teachingk2/res/n;->c:Lcn/mucang/android/jiakaoyi/mapcollect/c/j;

    if-nez v0, :cond_1

    return-object v1

    .line 4
    :cond_1
    iget-object v0, v0, Lcn/mucang/android/jiakaoyi/mapcollect/c/j;->p:Ljava/util/List;

    .line 5
    invoke-static {v0}, Lcn/mucang/android/core/utils/g;->b(Ljava/util/Collection;)Z

    move-result v2

    if-eqz v2, :cond_2

    return-object v1

    :cond_2
    if-eqz p1, :cond_8

    .line 6
    iget-object v2, p1, Lcn/mucang/android/jiakaoyi/signal/center/model/CarPos;->carRect:Lcn/mucang/android/jiakaoyi/signal/pos/c;

    if-eqz v2, :cond_8

    iget-object v2, v2, Lcn/mucang/android/jiakaoyi/signal/pos/c;->e:Lcn/mucang/android/jiakaoyi/signal/pos/a;

    if-nez v2, :cond_3

    goto :goto_1

    .line 7
    :cond_3
    new-instance v2, Lcn/mucang/android/jiakaoyi/teachingk2/unity/models/OperateResultModel;

    invoke-direct {v2}, Lcn/mucang/android/jiakaoyi/teachingk2/unity/models/OperateResultModel;-><init>()V

    .line 8
    iput-object p2, v2, Lcn/mucang/android/jiakaoyi/teachingk2/unity/models/OperateResultModel;->projectId:Ljava/lang/String;

    .line 9
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :cond_4
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-eqz v0, :cond_6

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcn/mucang/android/jiakaoyi/hpmap/a/a/g/a;

    .line 10
    iget-object v5, p1, Lcn/mucang/android/jiakaoyi/signal/center/model/CarPos;->carRect:Lcn/mucang/android/jiakaoyi/signal/pos/c;

    iget-object v6, v0, Lcn/mucang/android/jiakaoyi/hpmap/a/a/g/a;->j:Lcn/mucang/android/jiakaoyi/hpmap/model/Line;

    iget-object v7, v6, Lcn/mucang/android/jiakaoyi/hpmap/model/Line;->start:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    iget-object v6, v6, Lcn/mucang/android/jiakaoyi/hpmap/model/Line;->end:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    invoke-static {v5, v7, v6}, Lcn/mucang/android/jiakaoyi/hpmap/a/b/c;->f(Lcn/mucang/android/jiakaoyi/signal/pos/c;Lcn/mucang/android/jiakaoyi/signal/pos/Pos;Lcn/mucang/android/jiakaoyi/signal/pos/Pos;)Z

    move-result v5

    if-nez v5, :cond_5

    iget-object v5, v0, Lcn/mucang/android/jiakaoyi/hpmap/a/a/g/a;->p:Lcn/mucang/android/jiakaoyi/signal/pos/c;

    iget-object v6, p1, Lcn/mucang/android/jiakaoyi/signal/center/model/CarPos;->carRect:Lcn/mucang/android/jiakaoyi/signal/pos/c;

    .line 11
    invoke-static {v5, v6}, Lcn/mucang/android/jiakaoyi/hpmap/a/b/c;->g(Lcn/mucang/android/jiakaoyi/signal/pos/c;Lcn/mucang/android/jiakaoyi/signal/pos/c;)Z

    move-result v5

    if-eqz v5, :cond_4

    :cond_5
    const/4 p2, 0x1

    goto :goto_0

    :cond_6
    move-object v0, v1

    const/4 p2, 0x0

    :goto_0
    if-eqz p2, :cond_7

    .line 12
    iput v3, v2, Lcn/mucang/android/jiakaoyi/teachingk2/unity/models/OperateResultModel;->inside:I

    .line 13
    invoke-direct {p0, v2, v0, p1}, Lcn/mucang/android/jiakaoyi/teachingk2/unity/pageevent/a1/a;->c(Lcn/mucang/android/jiakaoyi/teachingk2/unity/models/OperateResultModel;Lcn/mucang/android/jiakaoyi/hpmap/a/a/g/a;Lcn/mucang/android/jiakaoyi/signal/center/model/CarPos;)V

    .line 14
    iput-boolean v3, p0, Lcn/mucang/android/jiakaoyi/teachingk2/unity/pageevent/a1/a;->b:Z

    return-object v2

    .line 15
    :cond_7
    iput v4, v2, Lcn/mucang/android/jiakaoyi/teachingk2/unity/models/OperateResultModel;->inside:I

    .line 16
    iput v4, v2, Lcn/mucang/android/jiakaoyi/teachingk2/unity/models/OperateResultModel;->pressState:I

    .line 17
    iget-boolean p1, p0, Lcn/mucang/android/jiakaoyi/teachingk2/unity/pageevent/a1/a;->b:Z

    if-eqz p1, :cond_8

    .line 18
    iput-boolean v4, p0, Lcn/mucang/android/jiakaoyi/teachingk2/unity/pageevent/a1/a;->b:Z

    return-object v2

    :cond_8
    :goto_1
    return-object v1
.end method
