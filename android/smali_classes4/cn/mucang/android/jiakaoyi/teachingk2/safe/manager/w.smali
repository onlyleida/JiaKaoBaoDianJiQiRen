.class public Lcn/mucang/android/jiakaoyi/teachingk2/safe/manager/w;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final a:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcn/mucang/jiakaoyi/uilib/socket/model/OtherCarPosListSocketModel$CarPosModel;",
            ">;"
        }
    .end annotation
.end field

.field private final b:Ljava/util/concurrent/atomic/AtomicInteger;

.field private final c:Ljava/lang/Object;

.field private d:J

.field private final e:Lcn/mucang/android/jiakaoyi/signal/c/f/a;

.field private final f:Landroidx/lifecycle/a0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/lifecycle/a0<",
            "Lcn/mucang/jiakaoyi/uilib/socket/model/OtherCarPosListSocketModel;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Lcn/mucang/android/jiakaoyi/teachingk2/safe/manager/w$a;

    invoke-direct {v0, p0}, Lcn/mucang/android/jiakaoyi/teachingk2/safe/manager/w$a;-><init>(Lcn/mucang/android/jiakaoyi/teachingk2/safe/manager/w;)V

    iput-object v0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/safe/manager/w;->e:Lcn/mucang/android/jiakaoyi/signal/c/f/a;

    .line 3
    new-instance v0, Lcn/mucang/android/jiakaoyi/teachingk2/safe/manager/o;

    invoke-direct {v0, p0}, Lcn/mucang/android/jiakaoyi/teachingk2/safe/manager/o;-><init>(Lcn/mucang/android/jiakaoyi/teachingk2/safe/manager/w;)V

    iput-object v0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/safe/manager/w;->f:Landroidx/lifecycle/a0;

    .line 4
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v1, 0x3

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    iput-object v0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/safe/manager/w;->b:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 5
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/safe/manager/w;->c:Ljava/lang/Object;

    .line 6
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/safe/manager/w;->a:Ljava/util/Map;

    return-void
.end method

.method static synthetic a(Lcn/mucang/android/jiakaoyi/teachingk2/safe/manager/w;J)J
    .locals 0

    .line 1
    iput-wide p1, p0, Lcn/mucang/android/jiakaoyi/teachingk2/safe/manager/w;->d:J

    return-wide p1
.end method

.method static synthetic b(Lcn/mucang/android/jiakaoyi/teachingk2/safe/manager/w;)Ljava/util/concurrent/atomic/AtomicInteger;
    .locals 0

    .line 1
    iget-object p0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/safe/manager/w;->b:Ljava/util/concurrent/atomic/AtomicInteger;

    return-object p0
.end method

.method static synthetic c(Lcn/mucang/android/jiakaoyi/teachingk2/safe/manager/w;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcn/mucang/android/jiakaoyi/teachingk2/safe/manager/w;->f()V

    return-void
.end method

.method static synthetic d(Lcn/mucang/android/jiakaoyi/teachingk2/safe/manager/w;Lcn/mucang/android/jiakaoyi/signal/center/model/CarPos;Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lcn/mucang/android/jiakaoyi/teachingk2/safe/manager/w;->h(Lcn/mucang/android/jiakaoyi/signal/center/model/CarPos;Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;)V

    return-void
.end method

.method private static e(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;DDDDIDDDLjava/util/List;)Lcn/mucang/android/jiakaoyi/signal/pos/c;
    .locals 20
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcn/mucang/android/jiakaoyi/signal/pos/Pos;",
            "DDDDIDDD",
            "Ljava/util/List<",
            "Lcn/mucang/android/jiakaoyi/signal/pos/Pos;",
            ">;)",
            "Lcn/mucang/android/jiakaoyi/signal/pos/c;"
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p16

    .line 1
    invoke-static/range {p7 .. p8}, Ljava/lang/Math;->abs(D)D

    .line 2
    sget-wide v2, Lcn/mucang/android/jiakaoyi/framework/utils/o;->b:D

    mul-double v2, v2, p7

    sget-wide v4, Lcn/mucang/android/jiakaoyi/framework/utils/o;->a:D

    div-double/2addr v2, v4

    .line 3
    invoke-static {v2, v3}, Ljava/lang/Math;->abs(D)D

    move-result-wide v4

    const-wide/16 v6, 0x0

    const-wide v8, 0x3ee4f8b588e368f1L    # 1.0E-5

    cmpg-double v12, v4, v8

    if-gez v12, :cond_1

    cmpl-double v4, v2, v6

    if-ltz v4, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, -0x1

    :goto_0
    int-to-double v2, v2

    mul-double v2, v2, v8

    .line 4
    :cond_1
    invoke-static {v2, v3}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v4

    .line 5
    invoke-static {v4, v5}, Ljava/lang/Math;->tan(D)D

    move-result-wide v4

    div-double v4, p5, v4

    invoke-static {v4, v5}, Ljava/lang/Math;->abs(D)D

    move-result-wide v4

    cmpl-double v8, v2, v6

    if-lez v8, :cond_2

    const/4 v2, 0x1

    goto :goto_1

    :cond_2
    const/4 v2, -0x1

    :goto_1
    mul-int/lit8 v3, v2, 0x5a

    int-to-double v6, v3

    add-double v6, p10, v6

    .line 6
    invoke-static {v6, v7}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v6

    const-wide v8, 0x4066800000000000L    # 180.0

    add-double v8, p10, v8

    .line 7
    invoke-static {v8, v9}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v8

    .line 8
    invoke-static {v8, v9}, Ljava/lang/Math;->sin(D)D

    move-result-wide v12

    .line 9
    invoke-static {v8, v9}, Ljava/lang/Math;->cos(D)D

    move-result-wide v8

    .line 10
    new-instance v3, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    invoke-direct {v3, v0}, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;-><init>(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;)V

    mul-double v14, p14, v8

    mul-double v10, p14, v12

    invoke-virtual {v3, v14, v15, v10, v11}, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;->translate(DD)Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    move-result-object v3

    .line 11
    new-instance v10, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    iget-wide v14, v3, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;->x:D

    invoke-static {v6, v7}, Ljava/lang/Math;->cos(D)D

    move-result-wide v16

    mul-double v16, v16, v4

    add-double v14, v14, v16

    move-wide/from16 p5, v12

    iget-wide v11, v3, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;->y:D

    invoke-static {v6, v7}, Ljava/lang/Math;->sin(D)D

    move-result-wide v6

    mul-double v6, v6, v4

    add-double/2addr v11, v6

    invoke-direct {v10, v14, v15, v11, v12}, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;-><init>(DD)V

    .line 12
    sget-object v3, Lcn/mucang/android/jiakaoyi/signal/center/model/Gear;->GearBack:Lcn/mucang/android/jiakaoyi/signal/center/model/Gear;

    iget v3, v3, Lcn/mucang/android/jiakaoyi/signal/center/model/Gear;->gear:I

    move/from16 v6, p9

    if-ne v6, v3, :cond_3

    const/4 v3, -0x1

    goto :goto_2

    :cond_3
    const/4 v3, 0x1

    :goto_2
    int-to-double v6, v2

    mul-double v6, v6, p12

    int-to-double v2, v3

    mul-double v6, v6, v2

    div-double/2addr v6, v4

    .line 13
    invoke-static {v6, v7}, Ljava/lang/Math;->sin(D)D

    move-result-wide v2

    .line 14
    invoke-static {v6, v7}, Ljava/lang/Math;->cos(D)D

    move-result-wide v4

    .line 15
    invoke-static/range {p10 .. p11}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v11

    .line 16
    invoke-static {v11, v12}, Ljava/lang/Math;->cos(D)D

    move-result-wide v13

    .line 17
    invoke-static {v11, v12}, Ljava/lang/Math;->sin(D)D

    move-result-wide v11

    .line 18
    new-instance v15, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    invoke-direct {v15, v0}, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;-><init>(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;)V

    const-wide/high16 v16, 0x3fe0000000000000L    # 0.5

    mul-double v18, p1, v16

    mul-double v8, v8, v18

    move-wide/from16 p14, v6

    mul-double v6, v18, p5

    invoke-virtual {v15, v8, v9, v6, v7}, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;->translate(DD)Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    move-result-object v6

    .line 19
    new-instance v7, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    invoke-direct {v7, v0}, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;-><init>(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;)V

    mul-double v13, v13, v18

    mul-double v8, v18, v11

    invoke-virtual {v7, v13, v14, v8, v9}, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;->translate(DD)Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    move-result-object v7

    mul-double v8, p3, v16

    .line 20
    invoke-static {v6, v7, v8, v9}, Lcn/mucang/android/jiakaoyi/hpmap/d/a;->q(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;Lcn/mucang/android/jiakaoyi/signal/pos/Pos;D)Lcn/mucang/android/jiakaoyi/hpmap/model/Line;

    move-result-object v11

    .line 21
    invoke-static {v6, v7, v8, v9}, Lcn/mucang/android/jiakaoyi/hpmap/d/a;->p(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;Lcn/mucang/android/jiakaoyi/signal/pos/Pos;D)Lcn/mucang/android/jiakaoyi/hpmap/model/Line;

    move-result-object v6

    .line 22
    iget-object v7, v11, Lcn/mucang/android/jiakaoyi/hpmap/model/Line;->start:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    move-object/from16 p1, v7

    move-object/from16 p2, v10

    move-wide/from16 p3, v4

    move-wide/from16 p5, v2

    invoke-virtual/range {p1 .. p6}, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;->rotate(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;DD)Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    .line 23
    iget-object v7, v11, Lcn/mucang/android/jiakaoyi/hpmap/model/Line;->end:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    move-object/from16 p1, v7

    invoke-virtual/range {p1 .. p6}, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;->rotate(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;DD)Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    .line 24
    iget-object v7, v6, Lcn/mucang/android/jiakaoyi/hpmap/model/Line;->start:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    move-object/from16 p1, v7

    invoke-virtual/range {p1 .. p6}, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;->rotate(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;DD)Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    .line 25
    iget-object v7, v6, Lcn/mucang/android/jiakaoyi/hpmap/model/Line;->end:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    move-object/from16 p1, v7

    invoke-virtual/range {p1 .. p6}, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;->rotate(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;DD)Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    if-eqz v1, :cond_4

    const-wide/high16 v2, 0x4069000000000000L    # 200.0

    cmpl-double v4, p12, v2

    if-lez v4, :cond_4

    const-wide/high16 v2, 0x4059000000000000L    # 100.0

    div-double v2, p12, v2

    double-to-int v2, v2

    int-to-double v3, v2

    div-double v3, p14, v3

    const/4 v5, 0x1

    :goto_3
    if-ge v5, v2, :cond_4

    int-to-double v7, v5

    mul-double v7, v7, v3

    .line 26
    invoke-static {v7, v8}, Ljava/lang/Math;->sin(D)D

    move-result-wide v12

    .line 27
    invoke-static {v7, v8}, Ljava/lang/Math;->cos(D)D

    move-result-wide v7

    .line 28
    new-instance v9, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    invoke-direct {v9, v0}, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;-><init>(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;)V

    move-object/from16 p1, v9

    move-object/from16 p2, v10

    move-wide/from16 p3, v7

    move-wide/from16 p5, v12

    invoke-virtual/range {p1 .. p6}, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;->rotate(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;DD)Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    move-result-object v7

    .line 29
    invoke-interface {v1, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v5, v5, 0x1

    goto :goto_3

    .line 30
    :cond_4
    new-instance v0, Lcn/mucang/android/jiakaoyi/signal/pos/c;

    iget-object v1, v11, Lcn/mucang/android/jiakaoyi/hpmap/model/Line;->start:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    iget-object v2, v11, Lcn/mucang/android/jiakaoyi/hpmap/model/Line;->end:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    iget-object v3, v6, Lcn/mucang/android/jiakaoyi/hpmap/model/Line;->end:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    iget-object v4, v6, Lcn/mucang/android/jiakaoyi/hpmap/model/Line;->start:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    invoke-direct {v0, v1, v2, v3, v4}, Lcn/mucang/android/jiakaoyi/signal/pos/c;-><init>(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;Lcn/mucang/android/jiakaoyi/signal/pos/Pos;Lcn/mucang/android/jiakaoyi/signal/pos/Pos;Lcn/mucang/android/jiakaoyi/signal/pos/Pos;)V

    return-object v0
.end method

.method private f()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/safe/manager/w;->c:Ljava/lang/Object;

    monitor-enter v0

    .line 2
    :try_start_0
    iget-object v1, p0, Lcn/mucang/android/jiakaoyi/teachingk2/safe/manager/w;->a:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->clear()V

    .line 3
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private static g(Ljava/util/List;Lcn/mucang/android/jiakaoyi/signal/pos/c;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcn/mucang/android/jiakaoyi/signal/pos/Pos;",
            ">;",
            "Lcn/mucang/android/jiakaoyi/signal/pos/c;",
            ")Z"
        }
    .end annotation

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return v0

    .line 1
    :cond_0
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_1
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    .line 2
    invoke-static {p1, v1}, Lcn/mucang/android/jiakaoyi/hpmap/a/b/c;->a(Lcn/mucang/android/jiakaoyi/signal/pos/c;Lcn/mucang/android/jiakaoyi/signal/pos/Pos;)Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 p0, 0x1

    return p0

    :cond_2
    return v0
.end method

.method private h(Lcn/mucang/android/jiakaoyi/signal/center/model/CarPos;Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;)V
    .locals 36

    move-object/from16 v1, p0

    move-object/from16 v0, p1

    move-object/from16 v2, p2

    .line 1
    iget-object v3, v1, Lcn/mucang/android/jiakaoyi/teachingk2/safe/manager/w;->a:Ljava/util/Map;

    invoke-interface {v3}, Ljava/util/Map;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_0

    return-void

    .line 2
    :cond_0
    invoke-virtual/range {p0 .. p0}, Lcn/mucang/android/jiakaoyi/teachingk2/safe/manager/w;->j()Z

    move-result v3

    if-nez v3, :cond_1

    return-void

    .line 3
    :cond_1
    iget-object v3, v1, Lcn/mucang/android/jiakaoyi/teachingk2/safe/manager/w;->b:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v3}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v3

    const/4 v4, 0x1

    if-ne v3, v4, :cond_2

    return-void

    .line 4
    :cond_2
    invoke-direct/range {p0 .. p0}, Lcn/mucang/android/jiakaoyi/teachingk2/safe/manager/w;->r()V

    .line 5
    iget-object v3, v0, Lcn/mucang/android/jiakaoyi/signal/center/model/CarPos;->carRect:Lcn/mucang/android/jiakaoyi/signal/pos/c;

    iget-object v5, v3, Lcn/mucang/android/jiakaoyi/signal/pos/c;->a:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    iget-object v3, v3, Lcn/mucang/android/jiakaoyi/signal/pos/c;->b:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    invoke-virtual {v5, v3}, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;->distanceTo(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;)D

    move-result-wide v23

    move-wide/from16 v7, v23

    .line 6
    iget-object v3, v0, Lcn/mucang/android/jiakaoyi/signal/center/model/CarPos;->carRect:Lcn/mucang/android/jiakaoyi/signal/pos/c;

    iget-object v5, v3, Lcn/mucang/android/jiakaoyi/signal/pos/c;->a:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    iget-object v3, v3, Lcn/mucang/android/jiakaoyi/signal/pos/c;->d:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    invoke-virtual {v5, v3}, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;->distanceTo(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;)D

    move-result-wide v25

    move-wide/from16 v9, v25

    .line 7
    iget-wide v13, v0, Lcn/mucang/android/jiakaoyi/signal/center/model/CarPos;->L:D

    move-wide v11, v13

    .line 8
    iget-object v3, v0, Lcn/mucang/android/jiakaoyi/signal/center/model/CarPos;->rearAxlePoint:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    iget-object v5, v0, Lcn/mucang/android/jiakaoyi/signal/center/model/CarPos;->carRect:Lcn/mucang/android/jiakaoyi/signal/pos/c;

    iget-object v6, v5, Lcn/mucang/android/jiakaoyi/signal/pos/c;->a:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    iget-object v5, v5, Lcn/mucang/android/jiakaoyi/signal/pos/c;->d:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    invoke-static {v3, v6, v5}, Lcn/mucang/android/jiakaoyi/hpmap/d/a;->k(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;Lcn/mucang/android/jiakaoyi/signal/pos/Pos;Lcn/mucang/android/jiakaoyi/signal/pos/Pos;)D

    move-result-wide v27

    move-wide/from16 v20, v27

    .line 9
    iget v3, v2, Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;->b:F

    iget v5, v2, Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;->c:F

    invoke-static {v3, v5}, Ljava/lang/Math;->max(FF)F

    move-result v3

    float-to-double v5, v3

    move-wide v15, v13

    const-wide v13, 0x4072c00000000000L    # 300.0

    invoke-direct {v1, v5, v6, v13, v14}, Lcn/mucang/android/jiakaoyi/teachingk2/safe/manager/w;->n(DD)D

    move-result-wide v13

    move-wide/from16 v18, v13

    .line 10
    new-instance v3, Ljava/util/ArrayList;

    move-object/from16 v22, v3

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 11
    iget-object v6, v0, Lcn/mucang/android/jiakaoyi/signal/center/model/CarPos;->center:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    iget v5, v2, Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;->r:I

    int-to-double v4, v5

    move-wide/from16 v31, v13

    move-wide/from16 v29, v15

    move-wide v13, v4

    iget-object v4, v2, Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;->m:Lcn/mucang/android/jiakaoyi/signal/center/model/Gear;

    iget v15, v4, Lcn/mucang/android/jiakaoyi/signal/center/model/Gear;->gear:I

    iget-wide v4, v0, Lcn/mucang/android/jiakaoyi/signal/center/model/CarPos;->degree:D

    move-wide/from16 v16, v4

    invoke-static/range {v6 .. v22}, Lcn/mucang/android/jiakaoyi/teachingk2/safe/manager/w;->e(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;DDDDIDDDLjava/util/List;)Lcn/mucang/android/jiakaoyi/signal/pos/c;

    move-result-object v4

    if-nez v4, :cond_3

    return-void

    .line 12
    :cond_3
    iget-object v5, v1, Lcn/mucang/android/jiakaoyi/teachingk2/safe/manager/w;->c:Ljava/lang/Object;

    monitor-enter v5

    .line 13
    :try_start_0
    new-instance v6, Ljava/util/ArrayList;

    iget-object v7, v1, Lcn/mucang/android/jiakaoyi/teachingk2/safe/manager/w;->a:Ljava/util/Map;

    invoke-interface {v7}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 14
    monitor-exit v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 15
    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_9

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    move-object v11, v6

    check-cast v11, Lcn/mucang/jiakaoyi/uilib/socket/model/OtherCarPosListSocketModel$CarPosModel;

    .line 16
    iget v6, v11, Lcn/mucang/jiakaoyi/uilib/socket/model/OtherCarPosListSocketModel$CarPosModel;->a:I

    int-to-double v6, v6

    const-wide v8, 0x3f847ae147ae147bL    # 0.01

    mul-double v16, v6, v8

    .line 17
    iget-wide v6, v0, Lcn/mucang/android/jiakaoyi/signal/center/model/CarPos;->degree:D

    sub-double v6, v16, v6

    double-to-float v6, v6

    invoke-static {v6}, Lcn/mucang/android/jiakaoyi/signal/utils/d;->c(F)F

    move-result v6

    float-to-double v6, v6

    .line 18
    invoke-static {v6, v7}, Ljava/lang/Math;->abs(D)D

    move-result-wide v6

    const-wide v8, 0x4062c00000000000L    # 150.0

    cmpl-double v10, v6, v8

    if-lez v10, :cond_4

    goto :goto_0

    .line 19
    :cond_4
    new-instance v6, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    iget v7, v11, Lcn/mucang/jiakaoyi/uilib/socket/model/OtherCarPosListSocketModel$CarPosModel;->x:I

    int-to-double v7, v7

    iget v9, v11, Lcn/mucang/jiakaoyi/uilib/socket/model/OtherCarPosListSocketModel$CarPosModel;->y:I

    int-to-double v9, v9

    invoke-direct {v6, v7, v8, v9, v10}, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;-><init>(DD)V

    .line 20
    iget-object v7, v0, Lcn/mucang/android/jiakaoyi/signal/center/model/CarPos;->center:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    invoke-virtual {v6, v7}, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;->distanceSquare(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;)D

    move-result-wide v7

    const-wide v9, 0x41612a8800000000L    # 9000000.0

    cmpl-double v12, v7, v9

    if-lez v12, :cond_5

    goto :goto_0

    .line 21
    :cond_5
    iget-byte v7, v11, Lcn/mucang/jiakaoyi/uilib/socket/model/OtherCarPosListSocketModel$CarPosModel;->speed:B

    int-to-double v7, v7

    const-wide/16 v9, 0x0

    invoke-direct {v1, v7, v8, v9, v10}, Lcn/mucang/android/jiakaoyi/teachingk2/safe/manager/w;->n(DD)D

    move-result-wide v9

    move-wide/from16 v18, v9

    .line 22
    iget v7, v11, Lcn/mucang/jiakaoyi/uilib/socket/model/OtherCarPosListSocketModel$CarPosModel;->w:I

    int-to-double v13, v7

    iget v15, v11, Lcn/mucang/jiakaoyi/uilib/socket/model/OtherCarPosListSocketModel$CarPosModel;->gear:I

    const/16 v22, 0x0

    move-wide/from16 v7, v23

    move-wide/from16 v33, v9

    move-wide/from16 v9, v25

    move-object/from16 v35, v11

    move-wide/from16 v11, v29

    move-wide/from16 v20, v27

    invoke-static/range {v6 .. v22}, Lcn/mucang/android/jiakaoyi/teachingk2/safe/manager/w;->e(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;DDDDIDDDLjava/util/List;)Lcn/mucang/android/jiakaoyi/signal/pos/c;

    move-result-object v6

    if-nez v6, :cond_6

    goto :goto_0

    .line 23
    :cond_6
    invoke-virtual/range {p0 .. p0}, Lcn/mucang/android/jiakaoyi/teachingk2/safe/manager/w;->j()Z

    move-result v7

    if-eqz v7, :cond_8

    invoke-static {v4, v6}, Lcn/mucang/android/jiakaoyi/hpmap/a/b/c;->g(Lcn/mucang/android/jiakaoyi/signal/pos/c;Lcn/mucang/android/jiakaoyi/signal/pos/c;)Z

    move-result v7

    if-nez v7, :cond_7

    invoke-static {v3, v6}, Lcn/mucang/android/jiakaoyi/teachingk2/safe/manager/w;->g(Ljava/util/List;Lcn/mucang/android/jiakaoyi/signal/pos/c;)Z

    move-result v7

    if-eqz v7, :cond_8

    .line 24
    :cond_7
    sget-object v3, Lcn/mucang/android/jiakaoyi/teachingk2/safe/BrakeReason;->Traffic:Lcn/mucang/android/jiakaoyi/teachingk2/safe/BrakeReason;

    const/4 v5, 0x0

    const/4 v7, 0x1

    invoke-static {v3, v5, v7}, Lcn/mucang/android/jiakaoyi/teachingk2/safe/unbrake/BrakeModel;->createBrakeModel(Lcn/mucang/android/jiakaoyi/teachingk2/safe/BrakeReason;Ljava/util/List;Z)Lcn/mucang/android/jiakaoyi/teachingk2/safe/unbrake/BrakeModel;

    move-result-object v3

    invoke-static {v3, v7}, Lcn/mucang/android/jiakaoyi/teachingk2/safe/a0;->b(Lcn/mucang/android/jiakaoyi/teachingk2/safe/unbrake/BrakeModel;B)V

    .line 25
    iget-object v3, v1, Lcn/mucang/android/jiakaoyi/teachingk2/safe/manager/w;->b:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v3, v7}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    .line 26
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "\u62e5\u5835\u5239\u8f66\uff1a\u6211\u5f53\u524d\u4f4d\u7f6e:"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, v0, Lcn/mucang/android/jiakaoyi/signal/center/model/CarPos;->carRect:Lcn/mucang/android/jiakaoyi/signal/pos/c;

    iget-object v5, v5, Lcn/mucang/android/jiakaoyi/signal/pos/c;->a:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    invoke-static {v5}, Lcn/mucang/android/jiakaoyi/teachingk2/safe/manager/w;->o(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "|"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, v0, Lcn/mucang/android/jiakaoyi/signal/center/model/CarPos;->carRect:Lcn/mucang/android/jiakaoyi/signal/pos/c;

    iget-object v5, v5, Lcn/mucang/android/jiakaoyi/signal/pos/c;->b:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    invoke-static {v5}, Lcn/mucang/android/jiakaoyi/teachingk2/safe/manager/w;->o(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "|"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, v0, Lcn/mucang/android/jiakaoyi/signal/center/model/CarPos;->carRect:Lcn/mucang/android/jiakaoyi/signal/pos/c;

    iget-object v5, v5, Lcn/mucang/android/jiakaoyi/signal/pos/c;->c:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    invoke-static {v5}, Lcn/mucang/android/jiakaoyi/teachingk2/safe/manager/w;->o(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "|"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, v0, Lcn/mucang/android/jiakaoyi/signal/center/model/CarPos;->carRect:Lcn/mucang/android/jiakaoyi/signal/pos/c;

    iget-object v0, v0, Lcn/mucang/android/jiakaoyi/signal/pos/c;->d:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    invoke-static {v0}, Lcn/mucang/android/jiakaoyi/teachingk2/safe/manager/w;->o(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcn/mucang/android/jiakaoyi/framework/log/f;->d(Ljava/lang/Object;)V

    .line 27
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "\u62e5\u5835\u5239\u8f66\uff1a\u6211\u672a\u6765\u4f4d\u7f6e:"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v4, Lcn/mucang/android/jiakaoyi/signal/pos/c;->a:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    invoke-static {v3}, Lcn/mucang/android/jiakaoyi/teachingk2/safe/manager/w;->o(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "|"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v4, Lcn/mucang/android/jiakaoyi/signal/pos/c;->b:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    invoke-static {v3}, Lcn/mucang/android/jiakaoyi/teachingk2/safe/manager/w;->o(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "|"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v4, Lcn/mucang/android/jiakaoyi/signal/pos/c;->c:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    invoke-static {v3}, Lcn/mucang/android/jiakaoyi/teachingk2/safe/manager/w;->o(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "|"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v4, Lcn/mucang/android/jiakaoyi/signal/pos/c;->d:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    invoke-static {v3}, Lcn/mucang/android/jiakaoyi/teachingk2/safe/manager/w;->o(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcn/mucang/android/jiakaoyi/framework/log/f;->d(Ljava/lang/Object;)V

    .line 28
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "\u62e5\u5835\u5239\u8f66\uff1a\u5b83\u672a\u6765\u4f4d\u7f6e:"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v6, Lcn/mucang/android/jiakaoyi/signal/pos/c;->a:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    invoke-static {v3}, Lcn/mucang/android/jiakaoyi/teachingk2/safe/manager/w;->o(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "|"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v6, Lcn/mucang/android/jiakaoyi/signal/pos/c;->b:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    invoke-static {v3}, Lcn/mucang/android/jiakaoyi/teachingk2/safe/manager/w;->o(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "|"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v6, Lcn/mucang/android/jiakaoyi/signal/pos/c;->c:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    invoke-static {v3}, Lcn/mucang/android/jiakaoyi/teachingk2/safe/manager/w;->o(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "|"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v6, Lcn/mucang/android/jiakaoyi/signal/pos/c;->d:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    invoke-static {v3}, Lcn/mucang/android/jiakaoyi/teachingk2/safe/manager/w;->o(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcn/mucang/android/jiakaoyi/framework/log/f;->d(Ljava/lang/Object;)V

    const-string v0, "\u62e5\u5835\u5239\u8f66:\u8bbe\u7f6e\u5239\u8f66\u72b6\u6001"

    .line 29
    invoke-static {v0}, Lcn/mucang/android/jiakaoyi/framework/log/f;->o(Ljava/lang/Object;)V

    .line 30
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "\u62e5\u5835\u5239\u8f66:\u5239\u8f66\uff0c\u548c\u8f66\u8f86\u8ddd\u79bb\u8fc7\u8fd1\uff0c\u8ddd\u79bb:"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v4, Lcn/mucang/android/jiakaoyi/signal/pos/c;->h:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    iget-object v4, v6, Lcn/mucang/android/jiakaoyi/signal/pos/c;->h:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    invoke-virtual {v3, v4}, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;->distanceTo(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;)D

    move-result-wide v3

    double-to-int v3, v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, "\u5398\u7c73,\u524d\u65b9\u8f66\u8f86\u4fe1\u606f:"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {v35 .. v35}, Lcn/mucang/jiakaoyi/uilib/socket/model/OtherCarPosListSocketModel$CarPosModel;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ",\u6211\u7684\u9884\u6d4b\u8ddd\u79bb:"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-wide/from16 v8, v31

    invoke-virtual {v0, v8, v9}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string v3, ",\u524d\u65b9\u8f66\u8f86\u9884\u6d4b\u8ddd\u79bb:"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-wide/from16 v3, v33

    invoke-virtual {v0, v3, v4}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string v3, ",\u6211\u7684\u65b9\u5411\u76d8\u89d2\u5ea6:"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, v2, Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;->r:I

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ",\u6211\u7684\u901f\u5ea6:"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, v2, Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;->b:F

    iget v2, v2, Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;->c:F

    .line 31
    invoke-static {v3, v2}, Ljava/lang/Math;->max(FF)F

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 32
    invoke-static {v0}, Lcn/mucang/android/jiakaoyi/framework/log/f;->d(Ljava/lang/Object;)V

    goto :goto_1

    :cond_8
    move-wide/from16 v8, v31

    const/4 v7, 0x1

    move-wide/from16 v31, v8

    goto/16 :goto_0

    :cond_9
    :goto_1
    return-void

    :catchall_0
    move-exception v0

    .line 33
    :try_start_1
    monitor-exit v5
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method private i(Lcn/mucang/jiakaoyi/uilib/socket/model/OtherCarPosListSocketModel;)V
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcn/mucang/android/jiakaoyi/teachingk2/safe/manager/w;->j()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    new-instance v0, Lcn/mucang/android/jiakaoyi/teachingk2/safe/manager/p;

    invoke-direct {v0, p0, p1}, Lcn/mucang/android/jiakaoyi/teachingk2/safe/manager/p;-><init>(Lcn/mucang/android/jiakaoyi/teachingk2/safe/manager/w;Lcn/mucang/jiakaoyi/uilib/socket/model/OtherCarPosListSocketModel;)V

    invoke-static {v0}, Lcn/mucang/android/jiakaoyi/framework/utils/n0;->a(Ljava/lang/Runnable;)V

    return-void
.end method

.method public static synthetic k(Lcn/mucang/android/jiakaoyi/teachingk2/safe/manager/w;Lcn/mucang/jiakaoyi/uilib/socket/model/OtherCarPosListSocketModel;)V
    .locals 0

    invoke-direct {p0, p1}, Lcn/mucang/android/jiakaoyi/teachingk2/safe/manager/w;->i(Lcn/mucang/jiakaoyi/uilib/socket/model/OtherCarPosListSocketModel;)V

    return-void
.end method

.method private synthetic l(Lcn/mucang/jiakaoyi/uilib/socket/model/OtherCarPosListSocketModel;)V
    .locals 7

    if-eqz p1, :cond_5

    .line 1
    iget-object v0, p1, Lcn/mucang/jiakaoyi/uilib/socket/model/OtherCarPosListSocketModel;->itemList:Ljava/util/List;

    invoke-static {v0}, Lcn/mucang/android/core/utils/g;->d(Ljava/util/Collection;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 2
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/safe/manager/w;->c:Ljava/lang/Object;

    monitor-enter v0

    .line 3
    :try_start_0
    iget-object p1, p1, Lcn/mucang/jiakaoyi/uilib/socket/model/OtherCarPosListSocketModel;->itemList:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcn/mucang/jiakaoyi/uilib/socket/model/OtherCarPosListSocketModel$CarPosModel;

    .line 4
    iget-object v2, p0, Lcn/mucang/android/jiakaoyi/teachingk2/safe/manager/w;->a:Ljava/util/Map;

    iget-object v3, v1, Lcn/mucang/jiakaoyi/uilib/socket/model/OtherCarPosListSocketModel$CarPosModel;->n:Ljava/lang/String;

    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcn/mucang/jiakaoyi/uilib/socket/model/OtherCarPosListSocketModel$CarPosModel;

    .line 5
    iget v3, v1, Lcn/mucang/jiakaoyi/uilib/socket/model/OtherCarPosListSocketModel$CarPosModel;->g:I

    const/4 v4, 0x4

    if-ne v3, v4, :cond_1

    .line 6
    iget-wide v2, p0, Lcn/mucang/android/jiakaoyi/teachingk2/safe/manager/w;->d:J

    iput-wide v2, v1, Lcn/mucang/jiakaoyi/uilib/socket/model/OtherCarPosListSocketModel$CarPosModel;->time:J

    .line 7
    iget-object v2, p0, Lcn/mucang/android/jiakaoyi/teachingk2/safe/manager/w;->a:Ljava/util/Map;

    iget-object v3, v1, Lcn/mucang/jiakaoyi/uilib/socket/model/OtherCarPosListSocketModel$CarPosModel;->n:Ljava/lang/String;

    invoke-interface {v2, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_1
    if-eqz v2, :cond_0

    .line 8
    iget-byte v3, v1, Lcn/mucang/jiakaoyi/uilib/socket/model/OtherCarPosListSocketModel$CarPosModel;->speed:B

    if-nez v3, :cond_2

    iget-byte v3, v2, Lcn/mucang/jiakaoyi/uilib/socket/model/OtherCarPosListSocketModel$CarPosModel;->speed:B

    if-eqz v3, :cond_3

    :cond_2
    invoke-virtual {v2, v1}, Lcn/mucang/jiakaoyi/uilib/socket/model/OtherCarPosListSocketModel$CarPosModel;->distanceSquare(Lcn/mucang/jiakaoyi/uilib/socket/model/OtherCarPosListSocketModel$CarPosModel;)D

    move-result-wide v3

    const-wide v5, 0x40c3880000000000L    # 10000.0

    cmpg-double v1, v3, v5

    if-gez v1, :cond_0

    .line 9
    :cond_3
    iget-wide v3, p0, Lcn/mucang/android/jiakaoyi/teachingk2/safe/manager/w;->d:J

    iput-wide v3, v2, Lcn/mucang/jiakaoyi/uilib/socket/model/OtherCarPosListSocketModel$CarPosModel;->time:J

    goto :goto_0

    .line 10
    :cond_4
    monitor-exit v0

    goto :goto_1

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1

    :cond_5
    :goto_1
    return-void
.end method

.method private n(DD)D
    .locals 6

    const-wide v0, 0x400ccccccccccccdL    # 3.6

    div-double/2addr p1, v0

    mul-double v0, p1, p1

    const-wide/high16 v2, 0x4059000000000000L    # 100.0

    mul-double v0, v0, v2

    const-wide v4, 0x4017851eb851eb85L    # 5.88

    div-double/2addr v0, v4

    mul-double p1, p1, v2

    const-wide/high16 v2, 0x3ff8000000000000L    # 1.5

    mul-double p1, p1, v2

    add-double/2addr p1, p3

    .line 1
    invoke-static {v0, v1, p1, p2}, Ljava/lang/Math;->max(DD)D

    move-result-wide p1

    return-wide p1
.end method

.method private static o(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;)Ljava/lang/String;
    .locals 3

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-wide v1, p0, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;->x:D

    double-to-int v1, v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;->y:D

    double-to-int p0, v1

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private r()V
    .locals 7

    .line 1
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/safe/manager/w;->c:Ljava/lang/Object;

    monitor-enter v0

    .line 2
    :try_start_0
    iget-object v1, p0, Lcn/mucang/android/jiakaoyi/teachingk2/safe/manager/w;->a:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 3
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 4
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 5
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcn/mucang/jiakaoyi/uilib/socket/model/OtherCarPosListSocketModel$CarPosModel;

    .line 6
    iget-wide v3, p0, Lcn/mucang/android/jiakaoyi/teachingk2/safe/manager/w;->d:J

    iget-wide v5, v2, Lcn/mucang/jiakaoyi/uilib/socket/model/OtherCarPosListSocketModel$CarPosModel;->time:J

    sub-long/2addr v3, v5

    const-wide/16 v5, 0x3e8

    cmp-long v2, v3, v5

    if-lez v2, :cond_0

    .line 7
    invoke-interface {v1}, Ljava/util/Iterator;->remove()V

    goto :goto_0

    .line 8
    :cond_1
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method


# virtual methods
.method public j()Z
    .locals 2

    .line 1
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/safe/manager/w;->b:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    const/4 v1, 0x3

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public synthetic m(Lcn/mucang/jiakaoyi/uilib/socket/model/OtherCarPosListSocketModel;)V
    .locals 0

    invoke-direct {p0, p1}, Lcn/mucang/android/jiakaoyi/teachingk2/safe/manager/w;->l(Lcn/mucang/jiakaoyi/uilib/socket/model/OtherCarPosListSocketModel;)V

    return-void
.end method

.method public p()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/safe/manager/w;->b:Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    .line 2
    sget-object v0, Lcn/mucang/android/jiakaoyi/signal/c/d;->m:Lcn/mucang/android/jiakaoyi/signal/c/d;

    iget-object v1, p0, Lcn/mucang/android/jiakaoyi/teachingk2/safe/manager/w;->e:Lcn/mucang/android/jiakaoyi/signal/c/f/a;

    invoke-virtual {v0, v1}, Lcn/mucang/android/jiakaoyi/signal/c/d;->b(Lcn/mucang/android/jiakaoyi/signal/c/f/a;)V

    .line 3
    const-class v0, Lcn/mucang/jiakaoyi/uilib/socket/model/OtherCarPosListSocketModel;

    invoke-static {v0}, Lcn/mucang/android/jiakaoyi/framework/bus/LiveBus;->d(Ljava/lang/Class;)Landroidx/lifecycle/c;

    move-result-object v0

    iget-object v1, p0, Lcn/mucang/android/jiakaoyi/teachingk2/safe/manager/w;->f:Landroidx/lifecycle/a0;

    invoke-virtual {v0, v1}, Landroidx/lifecycle/c;->i(Landroidx/lifecycle/a0;)V

    const-string v0, "\u62e5\u5835\u5239\u8f66:\u5f00\u59cb"

    .line 4
    invoke-static {v0}, Lcn/mucang/android/jiakaoyi/framework/log/f;->o(Ljava/lang/Object;)V

    return-void
.end method

.method public q()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/safe/manager/w;->b:Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    .line 2
    sget-object v0, Lcn/mucang/android/jiakaoyi/signal/c/d;->m:Lcn/mucang/android/jiakaoyi/signal/c/d;

    iget-object v1, p0, Lcn/mucang/android/jiakaoyi/teachingk2/safe/manager/w;->e:Lcn/mucang/android/jiakaoyi/signal/c/f/a;

    invoke-virtual {v0, v1}, Lcn/mucang/android/jiakaoyi/signal/c/d;->n(Lcn/mucang/android/jiakaoyi/signal/c/f/a;)V

    .line 3
    const-class v0, Lcn/mucang/jiakaoyi/uilib/socket/model/OtherCarPosListSocketModel;

    invoke-static {v0}, Lcn/mucang/android/jiakaoyi/framework/bus/LiveBus;->d(Ljava/lang/Class;)Landroidx/lifecycle/c;

    move-result-object v0

    iget-object v1, p0, Lcn/mucang/android/jiakaoyi/teachingk2/safe/manager/w;->f:Landroidx/lifecycle/a0;

    invoke-virtual {v0, v1}, Landroidx/lifecycle/c;->m(Landroidx/lifecycle/a0;)V

    .line 4
    invoke-direct {p0}, Lcn/mucang/android/jiakaoyi/teachingk2/safe/manager/w;->f()V

    const-string v0, "\u62e5\u5835\u5239\u8f66:\u7ed3\u675f"

    .line 5
    invoke-static {v0}, Lcn/mucang/android/jiakaoyi/framework/log/f;->o(Ljava/lang/Object;)V

    return-void
.end method
