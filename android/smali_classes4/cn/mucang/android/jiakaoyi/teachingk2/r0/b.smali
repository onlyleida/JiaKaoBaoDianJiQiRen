.class public Lcn/mucang/android/jiakaoyi/teachingk2/r0/b;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final a:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lcn/mucang/android/jiakaoyi/hpmap/a/a/b;",
            "Ljava/util/List<",
            "Lcn/mucang/android/jiakaoyi/teachingk2/elements/model/TraceItemModel;",
            ">;>;"
        }
    .end annotation
.end field

.field private static final b:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lcn/mucang/android/jiakaoyi/hpmap/a/a/b;",
            "Ljava/util/List<",
            "Lcn/mucang/android/jiakaoyi/signal/pos/Pos;",
            ">;>;"
        }
    .end annotation
.end field

.field private static final c:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lcn/mucang/android/jiakaoyi/hpmap/a/a/b;",
            "Lcn/mucang/android/jiakaoyi/teachingk2/autopilot/h/a;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcn/mucang/android/jiakaoyi/teachingk2/r0/b;->a:Ljava/util/Map;

    .line 2
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcn/mucang/android/jiakaoyi/teachingk2/r0/b;->b:Ljava/util/Map;

    .line 3
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcn/mucang/android/jiakaoyi/teachingk2/r0/b;->c:Ljava/util/Map;

    return-void
.end method

.method public static a(Ljava/util/List;Lcn/mucang/android/jiakaoyi/signal/i/a;Ljava/util/List;)Ljava/util/List;
    .locals 38
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcn/mucang/android/jiakaoyi/teachingk2/elements/model/TraceItemModel;",
            ">;",
            "Lcn/mucang/android/jiakaoyi/signal/i/a;",
            "Ljava/util/List<",
            "Lcn/mucang/android/jiakaoyi/signal/pos/Pos;",
            ">;)",
            "Ljava/util/List<",
            "Lcn/mucang/android/jiakaoyi/teachingk2/elements/model/TraceItemModel;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    .line 1
    const-class v3, Lcn/mucang/android/jiakaoyi/teachingk2/a1/a;

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 2
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    const/4 v6, 0x0

    .line 3
    invoke-interface {v0, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcn/mucang/android/jiakaoyi/teachingk2/elements/model/TraceItemModel;

    .line 4
    invoke-static {}, Lcn/mucang/android/jiakaoyi/signal/c/d;->t()Lcn/mucang/android/jiakaoyi/signal/c/e;

    move-result-object v8

    .line 5
    new-instance v9, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    invoke-interface {v8}, Lcn/mucang/android/jiakaoyi/signal/c/e;->c()Lcn/mucang/android/jiakaoyi/signal/center/model/CarPos;

    move-result-object v10

    iget-object v10, v10, Lcn/mucang/android/jiakaoyi/signal/center/model/CarPos;->wheelLeftBack:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    invoke-direct {v9, v10}, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;-><init>(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;)V

    invoke-interface {v8}, Lcn/mucang/android/jiakaoyi/signal/c/e;->c()Lcn/mucang/android/jiakaoyi/signal/center/model/CarPos;

    move-result-object v10

    iget-object v10, v10, Lcn/mucang/android/jiakaoyi/signal/center/model/CarPos;->wheelRightBack:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    invoke-virtual {v9, v10}, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;->meanWith(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;)Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    move-result-object v9

    .line 6
    invoke-virtual {v9, v7}, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;->distanceTo(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;)D

    move-result-wide v10

    const/4 v12, 0x1

    const-wide/high16 v13, 0x4059000000000000L    # 100.0

    cmpg-double v15, v10, v13

    if-gez v15, :cond_0

    .line 7
    invoke-static {v3}, Lcn/mucang/android/jiakaoyi/framework/bus/LiveBus;->d(Ljava/lang/Class;)Landroidx/lifecycle/c;

    move-result-object v1

    new-instance v3, Lcn/mucang/android/jiakaoyi/teachingk2/a1/a;

    invoke-direct {v3, v2, v12}, Lcn/mucang/android/jiakaoyi/teachingk2/a1/a;-><init>(Ljava/util/List;Z)V

    invoke-virtual {v1, v3}, Landroidx/lifecycle/z;->l(Ljava/lang/Object;)V

    return-object v0

    .line 8
    :cond_0
    invoke-interface {v1, v9}, Lcn/mucang/android/jiakaoyi/signal/i/a;->b(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;)Lcn/mucang/android/jiakaoyi/signal/pos/Gps;

    move-result-object v9

    .line 9
    iget-wide v10, v9, Lcn/mucang/android/jiakaoyi/signal/pos/Gps;->longitude:D

    iget-wide v13, v9, Lcn/mucang/android/jiakaoyi/signal/pos/Gps;->latitude:D

    invoke-static {v10, v11, v13, v14}, Lcn/mucang/android/jiakaoyi/teachingk2/autopilot/h/b;->i(DD)[D

    move-result-object v10

    .line 10
    invoke-interface/range {p0 .. p0}, Ljava/util/List;->size()I

    move-result v11

    const/4 v13, 0x2

    if-le v11, v13, :cond_1

    new-instance v11, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    aget-wide v14, v10, v6

    move-object/from16 v16, v4

    move-object/from16 v17, v5

    aget-wide v4, v10, v12

    invoke-direct {v11, v14, v15, v4, v5}, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;-><init>(DD)V

    invoke-interface {v0, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    invoke-virtual {v11, v4}, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;->vectorTo(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;)Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    move-result-object v4

    invoke-interface {v0, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcn/mucang/android/jiakaoyi/teachingk2/elements/model/TraceItemModel;

    invoke-interface {v0, v13}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    invoke-virtual {v5, v11}, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;->vectorTo(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;)Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;->dot(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;)D

    move-result-wide v4

    const-wide/16 v14, 0x0

    cmpg-double v11, v4, v14

    if-gez v11, :cond_2

    .line 11
    invoke-static {v3}, Lcn/mucang/android/jiakaoyi/framework/bus/LiveBus;->d(Ljava/lang/Class;)Landroidx/lifecycle/c;

    move-result-object v1

    new-instance v3, Lcn/mucang/android/jiakaoyi/teachingk2/a1/a;

    invoke-direct {v3, v2, v12}, Lcn/mucang/android/jiakaoyi/teachingk2/a1/a;-><init>(Ljava/util/List;Z)V

    invoke-virtual {v1, v3}, Landroidx/lifecycle/z;->l(Ljava/lang/Object;)V

    return-object v0

    :cond_1
    move-object/from16 v16, v4

    move-object/from16 v17, v5

    .line 12
    :cond_2
    iget-wide v4, v7, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;->x:D

    aget-wide v14, v10, v6

    sub-double/2addr v4, v14

    .line 13
    iget-wide v14, v7, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;->y:D

    aget-wide v18, v10, v12

    sub-double v14, v14, v18

    mul-double v18, v4, v4

    mul-double v20, v14, v14

    add-double v18, v18, v20

    const-wide v20, 0x2b2bff2ee48e0530L    # 1.0E-100

    add-double v18, v18, v20

    .line 14
    invoke-static/range {v18 .. v19}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v18

    .line 15
    invoke-interface {v8}, Lcn/mucang/android/jiakaoyi/signal/c/e;->d()Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;

    move-result-object v8

    iget v8, v8, Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;->r:I

    mul-int/lit8 v8, v8, 0xa

    int-to-short v8, v8

    .line 16
    iget-short v11, v7, Lcn/mucang/android/jiakaoyi/teachingk2/elements/model/TraceItemModel;->wheel:S

    const-wide/high16 v20, 0x3fe0000000000000L    # 0.5

    div-double v12, v18, v20

    double-to-int v12, v12

    const-wide/high16 v22, 0x3ff0000000000000L    # 1.0

    sub-int/2addr v11, v8

    move-object/from16 v24, v7

    int-to-double v6, v11

    mul-double v6, v6, v22

    add-int/lit8 v11, v12, 0x1

    move-wide/from16 v22, v14

    int-to-double v13, v11

    div-double/2addr v6, v13

    const/4 v11, 0x0

    :goto_0
    int-to-double v13, v11

    mul-double v25, v20, v13

    mul-double v27, v25, v4

    div-double v27, v27, v18

    const/4 v15, 0x0

    .line 17
    aget-wide v29, v10, v15

    move-wide/from16 v31, v13

    add-double v13, v27, v29

    mul-double v25, v25, v22

    div-double v25, v25, v18

    const/4 v15, 0x1

    .line 18
    aget-wide v27, v10, v15

    move-wide/from16 v29, v4

    add-double v4, v25, v27

    move-object v15, v3

    int-to-double v2, v8

    mul-double v25, v6, v31

    add-double v2, v2, v25

    double-to-int v2, v2

    int-to-short v2, v2

    .line 19
    invoke-virtual/range {v24 .. v24}, Lcn/mucang/android/jiakaoyi/teachingk2/elements/model/TraceItemModel;->copy()Lcn/mucang/android/jiakaoyi/teachingk2/elements/model/TraceItemModel;

    move-result-object v3

    .line 20
    iput-short v2, v3, Lcn/mucang/android/jiakaoyi/teachingk2/elements/model/TraceItemModel;->wheel:S

    .line 21
    iput-wide v13, v3, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;->x:D

    .line 22
    iput-wide v4, v3, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;->y:D

    move-object/from16 v2, v16

    .line 23
    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const/4 v3, 0x1

    add-int/2addr v11, v3

    move-wide/from16 v25, v4

    .line 24
    iget-wide v3, v9, Lcn/mucang/android/jiakaoyi/signal/pos/Gps;->longitude:D

    const-wide v27, 0x4066800000000000L    # 180.0

    add-double v3, v3, v27

    const-wide/high16 v27, 0x4018000000000000L    # 6.0

    div-double v3, v3, v27

    invoke-static {v3, v4}, Ljava/lang/Math;->floor(D)D

    move-result-wide v3

    double-to-int v3, v3

    const/4 v4, 0x1

    add-int/lit8 v35, v3, 0x1

    const/4 v3, 0x2

    new-array v4, v3, [D

    const/16 v36, 0x0

    move-wide/from16 v31, v13

    move-wide/from16 v33, v25

    move-object/from16 v37, v4

    .line 25
    invoke-static/range {v31 .. v37}, Lcn/mucang/android/jiakaoyi/teachingk2/autopilot/h/b;->h(DDIZ[D)V

    .line 26
    new-instance v5, Lcn/mucang/android/jiakaoyi/signal/pos/Gps;

    const/4 v13, 0x0

    aget-wide v25, v4, v13

    invoke-static/range {v25 .. v26}, Ljava/lang/Math;->toDegrees(D)D

    move-result-wide v13

    const/4 v3, 0x1

    aget-wide v25, v4, v3

    invoke-static/range {v25 .. v26}, Ljava/lang/Math;->toDegrees(D)D

    move-result-wide v3

    invoke-direct {v5, v13, v14, v3, v4}, Lcn/mucang/android/jiakaoyi/signal/pos/Gps;-><init>(DD)V

    invoke-interface {v1, v5}, Lcn/mucang/android/jiakaoyi/signal/i/a;->a(Lcn/mucang/android/jiakaoyi/signal/pos/Gps;)Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    move-result-object v3

    move-object/from16 v4, v17

    .line 27
    invoke-interface {v4, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    if-lt v11, v12, :cond_4

    .line 28
    invoke-interface {v2, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    move-object/from16 v3, p2

    .line 29
    invoke-interface {v4, v3}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 30
    invoke-static {v15}, Lcn/mucang/android/jiakaoyi/framework/bus/LiveBus;->d(Ljava/lang/Class;)Landroidx/lifecycle/c;

    move-result-object v1

    new-instance v3, Lcn/mucang/android/jiakaoyi/teachingk2/a1/a;

    const/4 v5, 0x1

    invoke-direct {v3, v4, v5}, Lcn/mucang/android/jiakaoyi/teachingk2/a1/a;-><init>(Ljava/util/List;Z)V

    invoke-virtual {v1, v3}, Landroidx/lifecycle/z;->l(Ljava/lang/Object;)V

    .line 31
    new-instance v1, Ljava/lang/StringBuilder;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "\u5f53\u524d\u9879\u76ee:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v13, 0x0

    invoke-interface {v0, v13}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcn/mucang/android/jiakaoyi/teachingk2/elements/model/TraceItemModel;

    iget-short v0, v0, Lcn/mucang/android/jiakaoyi/teachingk2/elements/model/TraceItemModel;->step:S

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, "\n"

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 32
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcn/mucang/android/jiakaoyi/teachingk2/elements/model/TraceItemModel;

    .line 33
    iget-wide v5, v4, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;->x:D

    invoke-virtual {v1, v5, v6}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string v5, ","

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v6, v4, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;->y:D

    invoke-virtual {v1, v6, v7}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-short v6, v4, Lcn/mucang/android/jiakaoyi/teachingk2/elements/model/TraceItemModel;->wheel:S

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-byte v4, v4, Lcn/mucang/android/jiakaoyi/teachingk2/elements/model/TraceItemModel;->pointType:B

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 34
    :cond_3
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcn/mucang/android/jiakaoyi/framework/log/f;->b(Ljava/lang/Object;)V

    return-object v2

    :cond_4
    move-object/from16 v16, v2

    move-object/from16 v17, v4

    move-object v3, v15

    move-wide/from16 v4, v29

    move-object/from16 v2, p2

    goto/16 :goto_0
.end method

.method public static b()V
    .locals 1

    .line 1
    sget-object v0, Lcn/mucang/android/jiakaoyi/teachingk2/r0/b;->a:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 2
    sget-object v0, Lcn/mucang/android/jiakaoyi/teachingk2/r0/b;->b:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 3
    sget-object v0, Lcn/mucang/android/jiakaoyi/teachingk2/r0/b;->c:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    return-void
.end method

.method private static c(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;Lcn/mucang/android/jiakaoyi/signal/pos/Pos;)D
    .locals 4

    .line 1
    iget-wide v0, p0, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;->x:D

    iget-wide v2, p1, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;->x:D

    sub-double/2addr v0, v2

    .line 2
    iget-wide v2, p0, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;->y:D

    iget-wide p0, p1, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;->y:D

    sub-double/2addr v2, p0

    mul-double v0, v0, v0

    mul-double v2, v2, v2

    add-double/2addr v0, v2

    return-wide v0
.end method

.method static synthetic d(Lcn/mucang/android/jiakaoyi/teachingk2/r0/b$a;Lcn/mucang/android/jiakaoyi/teachingk2/r0/b$a;)I
    .locals 0

    .line 1
    iget p0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/r0/b$a;->a:I

    iget p1, p1, Lcn/mucang/android/jiakaoyi/teachingk2/r0/b$a;->a:I

    invoke-static {p0, p1}, Ljava/lang/Integer;->compare(II)I

    move-result p0

    return p0
.end method

.method public static e(Lcn/mucang/android/jiakaoyi/signal/i/a;Lcn/mucang/android/jiakaoyi/hpmap/a/a/b;Ljava/util/List;)Ljava/util/List;
    .locals 20
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcn/mucang/android/jiakaoyi/signal/i/a;",
            "Lcn/mucang/android/jiakaoyi/hpmap/a/a/b;",
            "Ljava/util/List<",
            "Lcn/mucang/android/jiakaoyi/teachingk2/data/TeachModel;",
            ">;)",
            "Ljava/util/List<",
            "Lcn/mucang/android/jiakaoyi/teachingk2/elements/model/TraceItemModel;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 1
    const-class v2, Lcn/mucang/android/jiakaoyi/teachingk2/autopilot/h/a;

    if-nez p2, :cond_0

    .line 2
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    return-object v0

    .line 3
    :cond_0
    sget-object v3, Lcn/mucang/android/jiakaoyi/teachingk2/r0/b;->a:Ljava/util/Map;

    invoke-interface {v3, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    if-eqz v3, :cond_1

    .line 4
    invoke-static {v2}, Lcn/mucang/android/jiakaoyi/framework/bus/LiveBus;->d(Ljava/lang/Class;)Landroidx/lifecycle/c;

    move-result-object v2

    sget-object v4, Lcn/mucang/android/jiakaoyi/teachingk2/r0/b;->c:Ljava/util/Map;

    invoke-interface {v4, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v2, v4}, Landroidx/lifecycle/z;->l(Ljava/lang/Object;)V

    .line 5
    sget-object v2, Lcn/mucang/android/jiakaoyi/teachingk2/r0/b;->b:Ljava/util/Map;

    invoke-interface {v2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    invoke-static {v3, v0, v1}, Lcn/mucang/android/jiakaoyi/teachingk2/r0/b;->a(Ljava/util/List;Lcn/mucang/android/jiakaoyi/signal/i/a;Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0

    .line 6
    :cond_1
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 7
    invoke-interface/range {p2 .. p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_2
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_4

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcn/mucang/android/jiakaoyi/teachingk2/data/TeachModel;

    .line 8
    invoke-virtual {v5}, Lcn/mucang/android/jiakaoyi/teachingk2/data/TeachModel;->getTraceVariable()Lcn/mucang/android/jiakaoyi/teachingk2/elements/variable/TraceVariable;

    move-result-object v6

    if-eqz v6, :cond_2

    .line 9
    iget-object v7, v6, Lcn/mucang/android/jiakaoyi/teachingk2/elements/variable/TraceVariable;->traces:Ljava/util/List;

    if-eqz v7, :cond_2

    invoke-static {}, Lcn/mucang/android/jiakaoyi/teachingk2/res/n;->b()Lcn/mucang/android/jiakaoyi/teachingk2/res/n;

    move-result-object v7

    invoke-virtual {v7, v5, v1}, Lcn/mucang/android/jiakaoyi/teachingk2/res/n;->a(Lcn/mucang/android/jiakaoyi/teachingk2/data/TeachModel;Lcn/mucang/android/jiakaoyi/hpmap/a/a/b;)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 10
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "\u52a0\u5165\u8f68\u8ff9\u6570\u636e:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v8, v5, Lcn/mucang/android/jiakaoyi/teachingk2/data/TeachModel;->step:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v8, ","

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v9, v5, Lcn/mucang/android/jiakaoyi/teachingk2/data/TeachModel;->subStep:I

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v9, ",size:"

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v9, v6, Lcn/mucang/android/jiakaoyi/teachingk2/elements/variable/TraceVariable;->traces:Ljava/util/List;

    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v9

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcn/mucang/android/jiakaoyi/framework/log/f;->b(Ljava/lang/Object;)V

    .line 11
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    .line 12
    iget-object v9, v6, Lcn/mucang/android/jiakaoyi/teachingk2/elements/variable/TraceVariable;->traces:Ljava/util/List;

    invoke-interface {v9}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :goto_1
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_3

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcn/mucang/android/jiakaoyi/teachingk2/elements/model/TraceItemModel;

    .line 13
    iget-wide v11, v10, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;->x:D

    invoke-virtual {v7, v11, v12}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v11, v10, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;->y:D

    invoke-virtual {v7, v11, v12}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-short v10, v10, Lcn/mucang/android/jiakaoyi/teachingk2/elements/model/TraceItemModel;->wheel:S

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v10, "\n"

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 14
    :cond_3
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcn/mucang/android/jiakaoyi/framework/log/f;->b(Ljava/lang/Object;)V

    .line 15
    new-instance v7, Lcn/mucang/android/jiakaoyi/teachingk2/r0/b$a;

    iget v5, v5, Lcn/mucang/android/jiakaoyi/teachingk2/data/TeachModel;->subStep:I

    iget-object v6, v6, Lcn/mucang/android/jiakaoyi/teachingk2/elements/variable/TraceVariable;->traces:Ljava/util/List;

    invoke-direct {v7, v5, v6}, Lcn/mucang/android/jiakaoyi/teachingk2/r0/b$a;-><init>(ILjava/util/List;)V

    invoke-interface {v3, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 16
    :cond_4
    sget-object v4, Lcn/mucang/android/jiakaoyi/teachingk2/r0/a;->a:Lcn/mucang/android/jiakaoyi/teachingk2/r0/a;

    invoke-static {v3, v4}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 17
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_5
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    const/4 v6, 0x0

    const/4 v7, 0x1

    if-eqz v5, :cond_a

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcn/mucang/android/jiakaoyi/teachingk2/r0/b$a;

    .line 18
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "\u6b65\u9aa4"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v9, v5, Lcn/mucang/android/jiakaoyi/teachingk2/r0/b$a;->a:I

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v9, "\u6570\u636e\u957f\u5ea6:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v9, v5, Lcn/mucang/android/jiakaoyi/teachingk2/r0/b$a;->b:Ljava/util/List;

    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Lcn/mucang/android/jiakaoyi/framework/log/f;->b(Ljava/lang/Object;)V

    .line 19
    iget-object v8, v5, Lcn/mucang/android/jiakaoyi/teachingk2/r0/b$a;->b:Ljava/util/List;

    invoke-interface {v8}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :goto_2
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_6

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcn/mucang/android/jiakaoyi/teachingk2/elements/model/TraceItemModel;

    .line 20
    iput-byte v6, v9, Lcn/mucang/android/jiakaoyi/teachingk2/elements/model/TraceItemModel;->pointType:B

    goto :goto_2

    .line 21
    :cond_6
    iget-object v8, v5, Lcn/mucang/android/jiakaoyi/teachingk2/r0/b$a;->c:Ljava/util/List;

    invoke-interface {v8, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Integer;

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v8

    invoke-static {v8}, Ljava/lang/Math;->abs(I)I

    move-result v8

    const/16 v9, 0x14

    if-ge v8, v9, :cond_7

    iget-object v8, v5, Lcn/mucang/android/jiakaoyi/teachingk2/r0/b$a;->b:Ljava/util/List;

    invoke-interface {v8, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcn/mucang/android/jiakaoyi/teachingk2/elements/model/TraceItemModel;

    iget-short v8, v8, Lcn/mucang/android/jiakaoyi/teachingk2/elements/model/TraceItemModel;->wheel:S

    invoke-static {v8}, Ljava/lang/Math;->abs(I)I

    move-result v8

    const/16 v9, 0x1f4

    if-le v8, v9, :cond_7

    .line 22
    iget-object v8, v5, Lcn/mucang/android/jiakaoyi/teachingk2/r0/b$a;->b:Ljava/util/List;

    invoke-interface {v8, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcn/mucang/android/jiakaoyi/teachingk2/elements/model/TraceItemModel;

    iput-byte v7, v8, Lcn/mucang/android/jiakaoyi/teachingk2/elements/model/TraceItemModel;->pointType:B

    :cond_7
    const/4 v8, 0x1

    const/4 v9, 0x0

    .line 23
    :goto_3
    iget-object v10, v5, Lcn/mucang/android/jiakaoyi/teachingk2/r0/b$a;->c:Ljava/util/List;

    invoke-interface {v10}, Ljava/util/List;->size()I

    move-result v10

    sub-int/2addr v10, v7

    if-ge v8, v10, :cond_5

    .line 24
    iget-object v10, v5, Lcn/mucang/android/jiakaoyi/teachingk2/r0/b$a;->c:Ljava/util/List;

    add-int/lit8 v11, v8, -0x1

    invoke-interface {v10, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/Integer;

    invoke-virtual {v10}, Ljava/lang/Integer;->intValue()I

    move-result v10

    iget-object v11, v5, Lcn/mucang/android/jiakaoyi/teachingk2/r0/b$a;->c:Ljava/util/List;

    invoke-interface {v11, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/Integer;

    invoke-virtual {v11}, Ljava/lang/Integer;->intValue()I

    move-result v11

    add-int/2addr v10, v11

    iget-object v11, v5, Lcn/mucang/android/jiakaoyi/teachingk2/r0/b$a;->c:Ljava/util/List;

    add-int/lit8 v12, v8, 0x1

    invoke-interface {v11, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/Integer;

    invoke-virtual {v11}, Ljava/lang/Integer;->intValue()I

    move-result v11

    add-int/2addr v10, v11

    .line 25
    invoke-static {v10}, Ljava/lang/Math;->abs(I)I

    move-result v11

    const/16 v13, 0x64

    if-le v11, v13, :cond_9

    if-nez v9, :cond_8

    .line 26
    iget-object v9, v5, Lcn/mucang/android/jiakaoyi/teachingk2/r0/b$a;->b:Ljava/util/List;

    invoke-interface {v9, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcn/mucang/android/jiakaoyi/teachingk2/elements/model/TraceItemModel;

    iput-byte v7, v9, Lcn/mucang/android/jiakaoyi/teachingk2/elements/model/TraceItemModel;->pointType:B

    .line 27
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "\u8fd9\u662f\u4e00\u4e2a\u7279\u6b8a\u70b9:"

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v8, ", diffSum="

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Lcn/mucang/android/jiakaoyi/framework/log/f;->b(Ljava/lang/Object;)V

    :cond_8
    const/4 v9, 0x1

    goto :goto_4

    :cond_9
    const/4 v9, 0x0

    :goto_4
    move v8, v12

    goto :goto_3

    .line 28
    :cond_a
    invoke-static/range {p1 .. p1}, Lcn/mucang/android/jiakaoyi/teachingk2/elements/model/a;->a(Lcn/mucang/android/jiakaoyi/hpmap/a/a/b;)Lcn/mucang/android/jiakaoyi/signal/utils/b;

    move-result-object v4

    .line 29
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 30
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    .line 31
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    const/4 v10, 0x0

    .line 32
    :goto_5
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v11

    if-ge v10, v11, :cond_17

    .line 33
    invoke-interface {v3, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcn/mucang/android/jiakaoyi/teachingk2/r0/b$a;

    const/4 v12, 0x0

    .line 34
    :goto_6
    iget-object v13, v11, Lcn/mucang/android/jiakaoyi/teachingk2/r0/b$a;->b:Ljava/util/List;

    invoke-interface {v13}, Ljava/util/List;->size()I

    move-result v13

    if-ge v12, v13, :cond_16

    .line 35
    iget-object v13, v11, Lcn/mucang/android/jiakaoyi/teachingk2/r0/b$a;->b:Ljava/util/List;

    invoke-interface {v13, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcn/mucang/android/jiakaoyi/teachingk2/elements/model/TraceItemModel;

    .line 36
    iget-short v14, v13, Lcn/mucang/android/jiakaoyi/teachingk2/elements/model/TraceItemModel;->heading:S

    int-to-float v14, v14

    const v15, 0x3dcccccd    # 0.1f

    mul-float v14, v14, v15

    float-to-double v14, v14

    .line 37
    iget-wide v6, v4, Lcn/mucang/android/jiakaoyi/signal/utils/b;->f:D

    add-double/2addr v14, v6

    double-to-float v6, v14

    .line 38
    invoke-static {v6}, Lcn/mucang/android/jiakaoyi/signal/utils/d;->d(F)F

    move-result v6

    const/high16 v7, 0x41200000    # 10.0f

    mul-float v6, v6, v7

    float-to-int v6, v6

    int-to-short v6, v6

    .line 39
    iput-short v6, v13, Lcn/mucang/android/jiakaoyi/teachingk2/elements/model/TraceItemModel;->heading:S

    .line 40
    invoke-virtual {v4, v13}, Lcn/mucang/android/jiakaoyi/signal/utils/b;->c(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;)Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    move-result-object v6

    .line 41
    invoke-interface {v5}, Ljava/util/List;->isEmpty()Z

    move-result v7

    if-eqz v7, :cond_b

    .line 42
    invoke-interface {v5, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_7

    .line 43
    :cond_b
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v7

    const/4 v14, 0x1

    sub-int/2addr v7, v14

    invoke-interface {v5, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    .line 44
    invoke-static {v7, v6}, Lcn/mucang/android/jiakaoyi/teachingk2/r0/b;->c(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;Lcn/mucang/android/jiakaoyi/signal/pos/Pos;)D

    move-result-wide v14

    const-wide/high16 v16, 0x4024000000000000L    # 10.0

    cmpl-double v7, v14, v16

    if-lez v7, :cond_c

    .line 45
    invoke-interface {v5, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 46
    :cond_c
    :goto_7
    invoke-interface {v0, v6}, Lcn/mucang/android/jiakaoyi/signal/i/a;->b(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;)Lcn/mucang/android/jiakaoyi/signal/pos/Gps;

    move-result-object v7

    .line 47
    iget-wide v14, v7, Lcn/mucang/android/jiakaoyi/signal/pos/Gps;->longitude:D

    move-object/from16 v16, v3

    move-object/from16 v17, v4

    iget-wide v3, v7, Lcn/mucang/android/jiakaoyi/signal/pos/Gps;->latitude:D

    invoke-static {v14, v15, v3, v4}, Lcn/mucang/android/jiakaoyi/teachingk2/autopilot/h/b;->i(DD)[D

    move-result-object v3

    const/4 v4, 0x0

    .line 48
    aget-wide v14, v3, v4

    iput-wide v14, v13, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;->x:D

    const/4 v7, 0x1

    .line 49
    aget-wide v14, v3, v7

    iput-wide v14, v13, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;->y:D

    .line 50
    iget-object v3, v11, Lcn/mucang/android/jiakaoyi/teachingk2/r0/b$a;->b:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    sub-int/2addr v3, v7

    if-ne v12, v3, :cond_f

    .line 51
    invoke-interface/range {p1 .. p1}, Lcn/mucang/android/jiakaoyi/hpmap/a/a/b;->s()Lcn/mucang/android/jiakaoyi/engine/model/Step;

    move-result-object v3

    sget-object v7, Lcn/mucang/android/jiakaoyi/engine/model/Step;->K2_DaoCheRuKu:Lcn/mucang/android/jiakaoyi/engine/model/Step;

    const/4 v14, 0x2

    if-ne v3, v7, :cond_e

    iget v3, v11, Lcn/mucang/android/jiakaoyi/teachingk2/r0/b$a;->a:I

    if-eq v3, v14, :cond_d

    const/4 v7, 0x3

    if-eq v3, v7, :cond_d

    const/4 v7, 0x4

    if-ne v3, v7, :cond_e

    :cond_d
    const/4 v3, 0x1

    .line 52
    iput-byte v3, v13, Lcn/mucang/android/jiakaoyi/teachingk2/elements/model/TraceItemModel;->pointType:B

    goto :goto_8

    :cond_e
    const/4 v3, 0x1

    .line 53
    invoke-interface/range {p1 .. p1}, Lcn/mucang/android/jiakaoyi/hpmap/a/a/b;->s()Lcn/mucang/android/jiakaoyi/engine/model/Step;

    move-result-object v7

    sget-object v15, Lcn/mucang/android/jiakaoyi/engine/model/Step;->K2_CeFangTingChe:Lcn/mucang/android/jiakaoyi/engine/model/Step;

    if-ne v7, v15, :cond_10

    iget v7, v11, Lcn/mucang/android/jiakaoyi/teachingk2/r0/b$a;->a:I

    if-ne v7, v14, :cond_10

    .line 54
    iput-byte v3, v13, Lcn/mucang/android/jiakaoyi/teachingk2/elements/model/TraceItemModel;->pointType:B

    goto :goto_8

    :cond_f
    const/4 v3, 0x1

    .line 55
    :cond_10
    :goto_8
    invoke-interface/range {p1 .. p1}, Lcn/mucang/android/jiakaoyi/hpmap/a/a/b;->s()Lcn/mucang/android/jiakaoyi/engine/model/Step;

    move-result-object v7

    sget-object v14, Lcn/mucang/android/jiakaoyi/engine/model/Step;->K2_ShangPoQiBu:Lcn/mucang/android/jiakaoyi/engine/model/Step;

    if-ne v7, v14, :cond_11

    .line 56
    iget-byte v7, v13, Lcn/mucang/android/jiakaoyi/teachingk2/elements/model/TraceItemModel;->handbrake:B

    if-ne v7, v3, :cond_11

    .line 57
    iput-byte v3, v13, Lcn/mucang/android/jiakaoyi/teachingk2/elements/model/TraceItemModel;->pointType:B

    .line 58
    :cond_11
    iget-byte v7, v13, Lcn/mucang/android/jiakaoyi/teachingk2/elements/model/TraceItemModel;->pointType:B

    if-ne v7, v3, :cond_12

    .line 59
    invoke-interface {v8, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 60
    :cond_12
    invoke-interface {v9}, Ljava/util/List;->isEmpty()Z

    move-result v6

    if-eqz v6, :cond_13

    .line 61
    invoke-interface {v9, v13}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_9

    .line 62
    :cond_13
    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v6

    sub-int/2addr v6, v3

    invoke-interface {v9, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcn/mucang/android/jiakaoyi/teachingk2/elements/model/TraceItemModel;

    .line 63
    invoke-static {v6, v13}, Lcn/mucang/android/jiakaoyi/teachingk2/r0/b;->c(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;Lcn/mucang/android/jiakaoyi/signal/pos/Pos;)D

    move-result-wide v14

    const-wide v18, 0x3f970a3d70a3d70aL    # 0.0225

    cmpl-double v7, v14, v18

    if-ltz v7, :cond_14

    .line 64
    invoke-interface {v9, v13}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_9

    .line 65
    :cond_14
    iget-byte v7, v13, Lcn/mucang/android/jiakaoyi/teachingk2/elements/model/TraceItemModel;->pointType:B

    if-ne v7, v3, :cond_15

    .line 66
    invoke-interface {v9, v6}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 67
    invoke-interface {v9, v13}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_15
    :goto_9
    add-int/lit8 v12, v12, 0x1

    move-object/from16 v3, v16

    move-object/from16 v4, v17

    const/4 v6, 0x0

    const/4 v7, 0x1

    goto/16 :goto_6

    :cond_16
    move-object/from16 v16, v3

    move-object/from16 v17, v4

    const/4 v3, 0x1

    const/4 v4, 0x0

    add-int/lit8 v10, v10, 0x1

    move-object/from16 v3, v16

    move-object/from16 v4, v17

    const/4 v6, 0x0

    const/4 v7, 0x1

    goto/16 :goto_5

    .line 68
    :cond_17
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "\u603b\u6570\u636e\u957f\u5ea6:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcn/mucang/android/jiakaoyi/framework/log/f;->b(Ljava/lang/Object;)V

    .line 69
    sget-object v3, Lcn/mucang/android/jiakaoyi/teachingk2/r0/b;->b:Ljava/util/Map;

    invoke-interface {v3, v1, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 70
    new-instance v3, Lcn/mucang/android/jiakaoyi/teachingk2/autopilot/h/a;

    invoke-direct {v3, v8}, Lcn/mucang/android/jiakaoyi/teachingk2/autopilot/h/a;-><init>(Ljava/util/List;)V

    .line 71
    sget-object v4, Lcn/mucang/android/jiakaoyi/teachingk2/r0/b;->c:Ljava/util/Map;

    invoke-interface {v4, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 72
    invoke-static {v2}, Lcn/mucang/android/jiakaoyi/framework/bus/LiveBus;->d(Ljava/lang/Class;)Landroidx/lifecycle/c;

    move-result-object v2

    invoke-virtual {v2, v3}, Landroidx/lifecycle/z;->l(Ljava/lang/Object;)V

    .line 73
    sget-object v2, Lcn/mucang/android/jiakaoyi/teachingk2/r0/b;->a:Ljava/util/Map;

    invoke-interface {v2, v1, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 74
    invoke-static {v9, v0, v5}, Lcn/mucang/android/jiakaoyi/teachingk2/r0/b;->a(Ljava/util/List;Lcn/mucang/android/jiakaoyi/signal/i/a;Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method
