.class public Lcn/mucang/android/jiakaoyi/teachingk2/a1/e;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcn/mucang/android/jiakaoyi/teachingk2/elements/g0;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcn/mucang/android/jiakaoyi/teachingk2/elements/g0<",
        "Lcn/mucang/android/jiakaoyi/teachingk2/elements/variable/TraceVariable;",
        ">;"
    }
.end annotation


# instance fields
.field private final a:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcn/mucang/android/jiakaoyi/signal/pos/Pos;",
            ">;"
        }
    .end annotation
.end field

.field private final b:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

.field private c:J

.field private d:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/a1/e;->a:Ljava/util/List;

    .line 3
    new-instance v0, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    invoke-direct {v0}, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;-><init>()V

    iput-object v0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/a1/e;->b:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    const/4 v0, 0x0

    .line 4
    iput v0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/a1/e;->d:I

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


# virtual methods
.method public bridge synthetic a(Lcn/mucang/android/jiakaoyi/teachingk2/elements/Variable;Lcn/mucang/android/jiakaoyi/signal/c/e;Lcn/mucang/android/jiakaoyi/hpmap/a/a/b;Lcn/mucang/android/jiakaoyi/hpmap/collision/k2/checker/b;Lcn/mucang/android/jiakaoyi/teachingk2/data/TeachModel;Lcn/mucang/android/jiakaoyi/teachingk2/elements/f0;)Z
    .locals 0

    .line 1
    check-cast p1, Lcn/mucang/android/jiakaoyi/teachingk2/elements/variable/TraceVariable;

    invoke-virtual/range {p0 .. p6}, Lcn/mucang/android/jiakaoyi/teachingk2/a1/e;->b(Lcn/mucang/android/jiakaoyi/teachingk2/elements/variable/TraceVariable;Lcn/mucang/android/jiakaoyi/signal/c/e;Lcn/mucang/android/jiakaoyi/hpmap/a/a/b;Lcn/mucang/android/jiakaoyi/hpmap/collision/k2/checker/b;Lcn/mucang/android/jiakaoyi/teachingk2/data/TeachModel;Lcn/mucang/android/jiakaoyi/teachingk2/elements/f0;)Z

    move-result p1

    return p1
.end method

.method public b(Lcn/mucang/android/jiakaoyi/teachingk2/elements/variable/TraceVariable;Lcn/mucang/android/jiakaoyi/signal/c/e;Lcn/mucang/android/jiakaoyi/hpmap/a/a/b;Lcn/mucang/android/jiakaoyi/hpmap/collision/k2/checker/b;Lcn/mucang/android/jiakaoyi/teachingk2/data/TeachModel;Lcn/mucang/android/jiakaoyi/teachingk2/elements/f0;)Z
    .locals 27
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcn/mucang/android/jiakaoyi/teachingk2/elements/variable/TraceVariable;",
            "Lcn/mucang/android/jiakaoyi/signal/c/e;",
            "Lcn/mucang/android/jiakaoyi/hpmap/a/a/b;",
            "Lcn/mucang/android/jiakaoyi/hpmap/collision/k2/checker/b<",
            "**>;",
            "Lcn/mucang/android/jiakaoyi/teachingk2/data/TeachModel;",
            "Lcn/mucang/android/jiakaoyi/teachingk2/elements/f0;",
            ")Z"
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 1
    iget-object v2, v1, Lcn/mucang/android/jiakaoyi/teachingk2/elements/variable/TraceVariable;->traces:Ljava/util/List;

    invoke-static {v2}, Lcn/mucang/android/core/utils/g;->b(Ljava/util/Collection;)Z

    move-result v2

    const/4 v3, 0x0

    if-nez v2, :cond_27

    iget-object v2, v1, Lcn/mucang/android/jiakaoyi/teachingk2/elements/variable/TraceVariable;->traces:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    const/4 v4, 0x2

    if-ge v2, v4, :cond_0

    goto/16 :goto_13

    .line 2
    :cond_0
    iget-object v2, v0, Lcn/mucang/android/jiakaoyi/teachingk2/a1/e;->a:Ljava/util/List;

    invoke-static {v2}, Lcn/mucang/android/core/utils/g;->b(Ljava/util/Collection;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 3
    invoke-static/range {p3 .. p3}, Lcn/mucang/android/jiakaoyi/teachingk2/elements/model/a;->a(Lcn/mucang/android/jiakaoyi/hpmap/a/a/b;)Lcn/mucang/android/jiakaoyi/signal/utils/b;

    move-result-object v2

    .line 4
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 5
    iget-object v6, v1, Lcn/mucang/android/jiakaoyi/teachingk2/elements/variable/TraceVariable;->traces:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_1

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    .line 6
    invoke-virtual {v2, v7}, Lcn/mucang/android/jiakaoyi/signal/utils/b;->c(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;)Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    move-result-object v7

    invoke-interface {v5, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 7
    :cond_1
    iget-object v2, v0, Lcn/mucang/android/jiakaoyi/teachingk2/a1/e;->a:Ljava/util/List;

    const-wide/high16 v6, 0x4049000000000000L    # 50.0

    invoke-static {v5, v6, v7}, Lcn/mucang/android/jiakaoyi/mapcollect/collect/c1/d;->c(Ljava/util/List;D)Ljava/util/List;

    move-result-object v5

    invoke-interface {v2, v5}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 8
    const-class v2, Lcn/mucang/android/jiakaoyi/teachingk2/a1/a;

    invoke-static {v2}, Lcn/mucang/android/jiakaoyi/framework/bus/LiveBus;->d(Ljava/lang/Class;)Landroidx/lifecycle/c;

    move-result-object v2

    new-instance v5, Lcn/mucang/android/jiakaoyi/teachingk2/a1/a;

    iget-object v6, v0, Lcn/mucang/android/jiakaoyi/teachingk2/a1/e;->a:Ljava/util/List;

    invoke-direct {v5, v6, v3}, Lcn/mucang/android/jiakaoyi/teachingk2/a1/a;-><init>(Ljava/util/List;Z)V

    invoke-virtual {v2, v5}, Landroidx/lifecycle/z;->l(Ljava/lang/Object;)V

    .line 9
    :cond_2
    invoke-interface/range {p2 .. p2}, Lcn/mucang/android/jiakaoyi/signal/c/e;->d()Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;

    move-result-object v2

    iget-object v2, v2, Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;->m:Lcn/mucang/android/jiakaoyi/signal/center/model/Gear;

    sget-object v5, Lcn/mucang/android/jiakaoyi/signal/center/model/Gear;->GearN:Lcn/mucang/android/jiakaoyi/signal/center/model/Gear;

    const/4 v6, 0x1

    if-eq v2, v5, :cond_3

    invoke-interface/range {p2 .. p2}, Lcn/mucang/android/jiakaoyi/signal/c/e;->d()Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;

    move-result-object v2

    iget-object v2, v2, Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;->m:Lcn/mucang/android/jiakaoyi/signal/center/model/Gear;

    sget-object v5, Lcn/mucang/android/jiakaoyi/signal/center/model/Gear;->GearP:Lcn/mucang/android/jiakaoyi/signal/center/model/Gear;

    if-eq v2, v5, :cond_3

    invoke-interface/range {p2 .. p2}, Lcn/mucang/android/jiakaoyi/signal/c/e;->d()Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;

    move-result-object v2

    iget-object v2, v2, Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;->m:Lcn/mucang/android/jiakaoyi/signal/center/model/Gear;

    sget-object v5, Lcn/mucang/android/jiakaoyi/signal/center/model/Gear;->GearBack:Lcn/mucang/android/jiakaoyi/signal/center/model/Gear;

    if-eq v2, v5, :cond_3

    invoke-interface/range {p2 .. p2}, Lcn/mucang/android/jiakaoyi/signal/c/e;->d()Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;

    move-result-object v2

    iget-object v2, v2, Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;->m:Lcn/mucang/android/jiakaoyi/signal/center/model/Gear;

    invoke-virtual {v2}, Lcn/mucang/android/jiakaoyi/signal/center/model/Gear;->isValid()Z

    move-result v2

    if-eqz v2, :cond_3

    const/4 v2, 0x1

    goto :goto_1

    :cond_3
    const/4 v2, 0x0

    .line 10
    :goto_1
    invoke-interface/range {p2 .. p2}, Lcn/mucang/android/jiakaoyi/signal/c/e;->d()Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;

    move-result-object v5

    iget-object v5, v5, Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;->m:Lcn/mucang/android/jiakaoyi/signal/center/model/Gear;

    sget-object v7, Lcn/mucang/android/jiakaoyi/signal/center/model/Gear;->GearBack:Lcn/mucang/android/jiakaoyi/signal/center/model/Gear;

    if-ne v5, v7, :cond_4

    const/4 v5, 0x1

    goto :goto_2

    :cond_4
    const/4 v5, 0x0

    :goto_2
    if-nez v2, :cond_5

    if-nez v5, :cond_5

    return v3

    .line 11
    :cond_5
    iget-object v7, v0, Lcn/mucang/android/jiakaoyi/teachingk2/a1/e;->b:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    invoke-interface/range {p2 .. p2}, Lcn/mucang/android/jiakaoyi/signal/c/e;->c()Lcn/mucang/android/jiakaoyi/signal/center/model/CarPos;

    move-result-object v8

    iget-object v8, v8, Lcn/mucang/android/jiakaoyi/signal/center/model/CarPos;->center:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    invoke-virtual {v7, v8}, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;->setPos(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;)Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    const-wide v7, 0x42374876e0000000L    # 9.9999997952E10

    const/4 v9, 0x0

    const/4 v10, 0x0

    .line 12
    :goto_3
    iget-object v11, v0, Lcn/mucang/android/jiakaoyi/teachingk2/a1/e;->a:Ljava/util/List;

    invoke-interface {v11}, Ljava/util/List;->size()I

    move-result v11

    if-ge v9, v11, :cond_7

    .line 13
    iget-object v11, v0, Lcn/mucang/android/jiakaoyi/teachingk2/a1/e;->b:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    iget-object v12, v0, Lcn/mucang/android/jiakaoyi/teachingk2/a1/e;->a:Ljava/util/List;

    invoke-interface {v12, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    invoke-static {v11, v12}, Lcn/mucang/android/jiakaoyi/teachingk2/a1/e;->c(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;Lcn/mucang/android/jiakaoyi/signal/pos/Pos;)D

    move-result-wide v11

    cmpg-double v13, v11, v7

    if-gez v13, :cond_6

    move v10, v9

    move-wide v7, v11

    :cond_6
    add-int/lit8 v9, v9, 0x1

    goto :goto_3

    .line 14
    :cond_7
    invoke-interface/range {p2 .. p2}, Lcn/mucang/android/jiakaoyi/signal/c/e;->d()Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;

    move-result-object v7

    iget v7, v7, Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;->c:F

    float-to-double v7, v7

    const-wide v11, 0x400ccccccccccccdL    # 3.6

    div-double/2addr v7, v11

    const-wide/high16 v11, 0x4000000000000000L    # 2.0

    mul-double v7, v7, v11

    const-wide/high16 v11, 0x4059000000000000L    # 100.0

    mul-double v7, v7, v11

    .line 15
    invoke-static {v7, v8, v11, v12}, Ljava/lang/Math;->max(DD)D

    move-result-wide v7

    const-wide v11, 0x406f400000000000L    # 250.0

    .line 16
    invoke-static {v7, v8, v11, v12}, Ljava/lang/Math;->min(DD)D

    move-result-wide v7

    .line 17
    new-instance v9, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    const-wide v11, -0x3bea50e2874a73c0L    # -1.0E20

    invoke-direct {v9, v11, v12, v11, v12}, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;-><init>(DD)V

    .line 18
    new-instance v13, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    invoke-direct {v13, v11, v12, v11, v12}, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;-><init>(DD)V

    if-lez v10, :cond_8

    .line 19
    iget-object v11, v0, Lcn/mucang/android/jiakaoyi/teachingk2/a1/e;->b:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    iget-object v12, v0, Lcn/mucang/android/jiakaoyi/teachingk2/a1/e;->a:Ljava/util/List;

    add-int/lit8 v14, v10, -0x1

    invoke-interface {v12, v14}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    iget-object v14, v0, Lcn/mucang/android/jiakaoyi/teachingk2/a1/e;->a:Ljava/util/List;

    invoke-interface {v14, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    invoke-static {v11, v12, v14, v9}, Lcn/mucang/android/jiakaoyi/hpmap/d/a;->g(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;Lcn/mucang/android/jiakaoyi/signal/pos/Pos;Lcn/mucang/android/jiakaoyi/signal/pos/Pos;Lcn/mucang/android/jiakaoyi/signal/pos/Pos;)Z

    move-result v11

    goto :goto_4

    :cond_8
    const/4 v11, 0x0

    .line 20
    :goto_4
    iget-object v12, v0, Lcn/mucang/android/jiakaoyi/teachingk2/a1/e;->a:Ljava/util/List;

    invoke-interface {v12}, Ljava/util/List;->size()I

    move-result v12

    sub-int/2addr v12, v6

    if-ge v10, v12, :cond_9

    iget-object v12, v0, Lcn/mucang/android/jiakaoyi/teachingk2/a1/e;->b:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    iget-object v14, v0, Lcn/mucang/android/jiakaoyi/teachingk2/a1/e;->a:Ljava/util/List;

    invoke-interface {v14, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    iget-object v15, v0, Lcn/mucang/android/jiakaoyi/teachingk2/a1/e;->a:Ljava/util/List;

    add-int/lit8 v4, v10, 0x1

    invoke-interface {v15, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    invoke-static {v12, v14, v4, v13}, Lcn/mucang/android/jiakaoyi/hpmap/d/a;->g(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;Lcn/mucang/android/jiakaoyi/signal/pos/Pos;Lcn/mucang/android/jiakaoyi/signal/pos/Pos;Lcn/mucang/android/jiakaoyi/signal/pos/Pos;)Z

    move-result v4

    if-eqz v4, :cond_9

    const/4 v4, 0x1

    goto :goto_5

    :cond_9
    const/4 v4, 0x0

    .line 21
    :goto_5
    new-instance v12, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    invoke-direct {v12}, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;-><init>()V

    const/4 v14, 0x3

    if-eqz v4, :cond_b

    if-eqz v11, :cond_b

    .line 22
    iget-object v4, v0, Lcn/mucang/android/jiakaoyi/teachingk2/a1/e;->b:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    invoke-virtual {v9, v4}, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;->distanceTo(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;)D

    move-result-wide v15

    iget-object v4, v0, Lcn/mucang/android/jiakaoyi/teachingk2/a1/e;->b:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    invoke-virtual {v13, v4}, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;->distanceTo(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;)D

    move-result-wide v17

    cmpg-double v4, v15, v17

    if-gez v4, :cond_a

    .line 23
    invoke-virtual {v12, v9}, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;->setPos(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;)Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    goto :goto_6

    .line 24
    :cond_a
    invoke-virtual {v12, v13}, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;->setPos(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;)Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    goto :goto_7

    :cond_b
    if-eqz v11, :cond_d

    .line 25
    invoke-virtual {v12, v9}, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;->setPos(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;)Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    :cond_c
    :goto_6
    const/4 v4, 0x1

    goto :goto_8

    :cond_d
    if-eqz v4, :cond_e

    .line 26
    invoke-virtual {v12, v13}, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;->setPos(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;)Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    :goto_7
    const/4 v4, 0x0

    goto :goto_8

    .line 27
    :cond_e
    iget-object v4, v0, Lcn/mucang/android/jiakaoyi/teachingk2/a1/e;->a:Ljava/util/List;

    invoke-interface {v4, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    invoke-virtual {v12, v4}, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;->setPos(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;)Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    .line 28
    iget-object v4, v0, Lcn/mucang/android/jiakaoyi/teachingk2/a1/e;->a:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    sub-int/2addr v4, v14

    if-le v10, v4, :cond_c

    return v3

    .line 29
    :goto_8
    iget-object v9, v0, Lcn/mucang/android/jiakaoyi/teachingk2/a1/e;->b:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    invoke-virtual {v12, v9}, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;->distanceTo(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;)D

    move-result-wide v14

    if-nez v4, :cond_f

    .line 30
    iget-object v4, v0, Lcn/mucang/android/jiakaoyi/teachingk2/a1/e;->a:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    sub-int/2addr v4, v6

    if-ge v10, v4, :cond_f

    add-int/lit8 v10, v10, 0x1

    .line 31
    :cond_f
    iget-object v4, v0, Lcn/mucang/android/jiakaoyi/teachingk2/a1/e;->a:Ljava/util/List;

    invoke-interface {v4, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    invoke-virtual {v12, v4}, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;->distanceTo(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;)D

    move-result-wide v11

    const-wide/16 v16, 0x0

    add-double v11, v16, v11

    .line 32
    new-instance v4, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    invoke-direct {v4}, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;-><init>()V

    .line 33
    iget-object v9, v0, Lcn/mucang/android/jiakaoyi/teachingk2/a1/e;->a:Ljava/util/List;

    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v9

    sub-int/2addr v9, v6

    if-ne v10, v9, :cond_10

    sub-double/2addr v7, v11

    .line 34
    iget-object v9, v0, Lcn/mucang/android/jiakaoyi/teachingk2/a1/e;->a:Ljava/util/List;

    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v10

    const/4 v11, 0x2

    sub-int/2addr v10, v11

    invoke-interface {v9, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    iget-object v10, v0, Lcn/mucang/android/jiakaoyi/teachingk2/a1/e;->a:Ljava/util/List;

    invoke-interface {v10}, Ljava/util/List;->size()I

    move-result v11

    sub-int/2addr v11, v6

    invoke-interface {v10, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    invoke-static {v9, v10, v7, v8}, Lcn/mucang/android/jiakaoyi/hpmap/d/a;->s(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;Lcn/mucang/android/jiakaoyi/signal/pos/Pos;D)Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    move-result-object v7

    invoke-virtual {v4, v7}, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;->setPos(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;)Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    goto/16 :goto_b

    .line 35
    :cond_10
    :goto_9
    iget-object v9, v0, Lcn/mucang/android/jiakaoyi/teachingk2/a1/e;->a:Ljava/util/List;

    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v9

    if-ge v10, v9, :cond_13

    .line 36
    iget-object v9, v0, Lcn/mucang/android/jiakaoyi/teachingk2/a1/e;->a:Ljava/util/List;

    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v9

    sub-int/2addr v9, v6

    if-ne v10, v9, :cond_11

    move-object/from16 p6, v4

    sub-double v3, v7, v11

    .line 37
    iget-object v9, v0, Lcn/mucang/android/jiakaoyi/teachingk2/a1/e;->a:Ljava/util/List;

    add-int/lit8 v13, v10, -0x1

    invoke-interface {v9, v13}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    iget-object v13, v0, Lcn/mucang/android/jiakaoyi/teachingk2/a1/e;->a:Ljava/util/List;

    invoke-interface {v13, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    invoke-static {v9, v13, v3, v4}, Lcn/mucang/android/jiakaoyi/hpmap/d/a;->s(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;Lcn/mucang/android/jiakaoyi/signal/pos/Pos;D)Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    move-result-object v3

    move-object/from16 v4, p6

    invoke-virtual {v4, v3}, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;->setPos(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;)Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    goto :goto_a

    .line 38
    :cond_11
    iget-object v3, v0, Lcn/mucang/android/jiakaoyi/teachingk2/a1/e;->a:Ljava/util/List;

    invoke-interface {v3, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    iget-object v9, v0, Lcn/mucang/android/jiakaoyi/teachingk2/a1/e;->a:Ljava/util/List;

    add-int/lit8 v13, v10, 0x1

    invoke-interface {v9, v13}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    invoke-virtual {v3, v9}, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;->distanceTo(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;)D

    move-result-wide v18

    add-double v18, v11, v18

    cmpl-double v3, v18, v7

    if-ltz v3, :cond_12

    sub-double/2addr v7, v11

    .line 39
    iget-object v3, v0, Lcn/mucang/android/jiakaoyi/teachingk2/a1/e;->a:Ljava/util/List;

    invoke-interface {v3, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    iget-object v9, v0, Lcn/mucang/android/jiakaoyi/teachingk2/a1/e;->a:Ljava/util/List;

    invoke-interface {v9, v13}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    invoke-static {v3, v9, v7, v8}, Lcn/mucang/android/jiakaoyi/hpmap/d/a;->t(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;Lcn/mucang/android/jiakaoyi/signal/pos/Pos;D)Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    move-result-object v3

    invoke-virtual {v4, v3}, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;->setPos(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;)Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    goto :goto_b

    .line 40
    :cond_12
    iget-object v3, v0, Lcn/mucang/android/jiakaoyi/teachingk2/a1/e;->a:Ljava/util/List;

    invoke-interface {v3, v13}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    invoke-virtual {v4, v3}, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;->setPos(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;)Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    move-wide/from16 v11, v18

    :goto_a
    add-int/lit8 v10, v10, 0x1

    const/4 v3, 0x0

    goto :goto_9

    .line 41
    :cond_13
    :goto_b
    iget-object v3, v0, Lcn/mucang/android/jiakaoyi/teachingk2/a1/e;->b:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    invoke-virtual {v3, v4}, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;->angleTo(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;)D

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Math;->toDegrees(D)D

    move-result-wide v3

    .line 42
    invoke-interface/range {p2 .. p2}, Lcn/mucang/android/jiakaoyi/signal/c/e;->c()Lcn/mucang/android/jiakaoyi/signal/center/model/CarPos;

    move-result-object v7

    iget-object v7, v7, Lcn/mucang/android/jiakaoyi/signal/center/model/CarPos;->back:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    invoke-interface/range {p2 .. p2}, Lcn/mucang/android/jiakaoyi/signal/c/e;->c()Lcn/mucang/android/jiakaoyi/signal/center/model/CarPos;

    move-result-object v8

    iget-object v8, v8, Lcn/mucang/android/jiakaoyi/signal/center/model/CarPos;->front:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    invoke-virtual {v7, v8}, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;->angleTo(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;)D

    move-result-wide v7

    invoke-static {v7, v8}, Ljava/lang/Math;->toDegrees(D)D

    move-result-wide v7

    if-eqz v5, :cond_14

    const-wide v9, 0x4066800000000000L    # 180.0

    add-double/2addr v7, v9

    :cond_14
    double-to-float v7, v7

    .line 43
    invoke-static {v7}, Lcn/mucang/android/jiakaoyi/signal/utils/d;->c(F)F

    move-result v7

    float-to-double v7, v7

    sub-double v9, v3, v7

    double-to-float v9, v9

    .line 44
    invoke-static {v9}, Lcn/mucang/android/jiakaoyi/signal/utils/d;->c(F)F

    move-result v9

    float-to-double v9, v9

    .line 45
    invoke-static {v9, v10}, Ljava/lang/Math;->abs(D)D

    move-result-wide v11

    const-wide v18, 0x4056800000000000L    # 90.0

    cmpl-double v13, v11, v18

    if-ltz v13, :cond_15

    const/4 v11, 0x0

    return v11

    :cond_15
    const-wide v11, 0x4081800000000000L    # 560.0

    mul-double v18, v9, v11

    const-wide v20, 0x4041800000000000L    # 35.0

    move-wide/from16 v22, v7

    div-double v6, v18, v20

    .line 46
    invoke-static {v11, v12, v6, v7}, Ljava/lang/Math;->min(DD)D

    move-result-wide v6

    const-wide v11, -0x3f7e800000000000L    # -560.0

    .line 47
    invoke-static {v11, v12, v6, v7}, Ljava/lang/Math;->max(DD)D

    move-result-wide v6

    .line 48
    invoke-interface/range {p2 .. p2}, Lcn/mucang/android/jiakaoyi/signal/c/e;->d()Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;

    move-result-object v8

    iget v8, v8, Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;->r:I

    int-to-double v11, v8

    move v8, v2

    move-wide/from16 v18, v3

    sub-double v2, v6, v11

    double-to-float v2, v2

    .line 49
    invoke-static {v2}, Lcn/mucang/android/jiakaoyi/signal/utils/d;->c(F)F

    move-result v2

    float-to-double v2, v2

    .line 50
    invoke-static {v9, v10}, Ljava/lang/Math;->abs(D)D

    move-result-wide v20

    const-wide/high16 v24, 0x4014000000000000L    # 5.0

    cmpg-double v4, v20, v24

    if-gez v4, :cond_18

    .line 51
    invoke-static {v11, v12}, Ljava/lang/Math;->abs(D)D

    move-result-wide v20

    const-wide/high16 v24, 0x4038000000000000L    # 24.0

    cmpl-double v4, v20, v24

    if-lez v4, :cond_16

    iget v4, v1, Lcn/mucang/android/jiakaoyi/teachingk2/elements/variable/TraceVariable;->range:I

    move-wide/from16 v20, v2

    int-to-double v2, v4

    const-wide/high16 v24, 0x3ff8000000000000L    # 1.5

    mul-double v2, v2, v24

    cmpg-double v4, v14, v2

    if-gtz v4, :cond_17

    iget v2, v0, Lcn/mucang/android/jiakaoyi/teachingk2/a1/e;->d:I

    if-eqz v2, :cond_17

    const/4 v3, 0x3

    if-eq v2, v3, :cond_17

    move-wide/from16 v24, v11

    const/4 v11, 0x3

    goto :goto_e

    :cond_16
    move-wide/from16 v20, v2

    :cond_17
    move-wide/from16 v24, v11

    goto :goto_d

    :cond_18
    move-wide/from16 v20, v2

    const-wide v2, 0x3ff3333333333333L    # 1.2

    cmpl-double v4, v9, v16

    if-gtz v4, :cond_1a

    if-eqz v5, :cond_19

    goto :goto_c

    .line 52
    :cond_19
    iget v4, v1, Lcn/mucang/android/jiakaoyi/teachingk2/elements/variable/TraceVariable;->range:I

    move-wide/from16 v24, v11

    int-to-double v11, v4

    mul-double v11, v11, v2

    cmpl-double v2, v14, v11

    if-lez v2, :cond_1b

    const/4 v11, 0x1

    goto :goto_e

    :cond_1a
    :goto_c
    move-wide/from16 v24, v11

    .line 53
    iget v4, v1, Lcn/mucang/android/jiakaoyi/teachingk2/elements/variable/TraceVariable;->range:I

    int-to-double v11, v4

    mul-double v11, v11, v2

    cmpl-double v2, v14, v11

    if-lez v2, :cond_1b

    const/4 v11, 0x2

    goto :goto_e

    :cond_1b
    :goto_d
    const/4 v11, 0x0

    :goto_e
    const/4 v2, 0x0

    const/4 v3, 0x2

    if-ne v11, v3, :cond_1c

    .line 54
    sget v3, Lcn/mucang/android/jiakaoyi/teachingk2/lib/R$string;->teachingk2_close_left_trun_right:I

    invoke-static {v3}, Lcn/mucang/android/jiakaoyi/framework/utils/k0;->a(I)Ljava/lang/String;

    move-result-object v3

    goto :goto_10

    :cond_1c
    const/4 v3, 0x1

    if-ne v11, v3, :cond_1d

    .line 55
    sget v3, Lcn/mucang/android/jiakaoyi/teachingk2/lib/R$string;->teachingk2_close_right_trun_left:I

    invoke-static {v3}, Lcn/mucang/android/jiakaoyi/framework/utils/k0;->a(I)Ljava/lang/String;

    move-result-object v3

    goto :goto_10

    :cond_1d
    const/4 v3, 0x3

    if-ne v11, v3, :cond_21

    .line 56
    invoke-static {v9, v10}, Ljava/lang/Math;->abs(D)D

    move-result-wide v3

    const-wide/high16 v12, 0x4004000000000000L    # 2.5

    cmpl-double v26, v3, v12

    if-lez v26, :cond_20

    cmpl-double v3, v9, v16

    if-gtz v3, :cond_1f

    if-eqz v5, :cond_1e

    goto :goto_f

    .line 57
    :cond_1e
    sget v3, Lcn/mucang/android/jiakaoyi/teachingk2/lib/R$string;->teachingk2_turn_right_back:I

    invoke-static {v3}, Lcn/mucang/android/jiakaoyi/framework/utils/k0;->a(I)Ljava/lang/String;

    move-result-object v3

    goto :goto_10

    .line 58
    :cond_1f
    :goto_f
    sget v3, Lcn/mucang/android/jiakaoyi/teachingk2/lib/R$string;->teachingk2_turn_left_back:I

    invoke-static {v3}, Lcn/mucang/android/jiakaoyi/framework/utils/k0;->a(I)Ljava/lang/String;

    move-result-object v3

    goto :goto_10

    .line 59
    :cond_20
    sget v3, Lcn/mucang/android/jiakaoyi/teachingk2/lib/R$string;->teachingk2_please_back_to_body:I

    invoke-static {v3}, Lcn/mucang/android/jiakaoyi/framework/utils/k0;->a(I)Ljava/lang/String;

    move-result-object v3

    goto :goto_10

    :cond_21
    move-object v3, v2

    .line 60
    :goto_10
    invoke-static {}, Lcn/mucang/android/core/config/MucangConfig;->v()Z

    move-result v4

    if-eqz v4, :cond_22

    if-eqz v11, :cond_22

    .line 61
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "target\u89d2\u5ea6 : "

    invoke-virtual {v4, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-wide/from16 v12, v18

    double-to-int v12, v12

    invoke-virtual {v4, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v12, " , car\u89d2\u5ea6 : "

    invoke-virtual {v4, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-wide/from16 v12, v22

    double-to-int v12, v12

    invoke-virtual {v4, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v12, " , \u89d2\u5ea6\u5dee : "

    invoke-virtual {v4, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    double-to-int v9, v9

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v9, " , \u6863\u4f4d : "

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 62
    invoke-interface/range {p2 .. p2}, Lcn/mucang/android/jiakaoyi/signal/c/e;->d()Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;

    move-result-object v9

    iget-object v9, v9, Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;->m:Lcn/mucang/android/jiakaoyi/signal/center/model/Gear;

    iget-object v9, v9, Lcn/mucang/android/jiakaoyi/signal/center/model/Gear;->gearName:Ljava/lang/String;

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v9, " , dis : "

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    double-to-int v9, v14

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v9, " , len : "

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v9, v0, Lcn/mucang/android/jiakaoyi/teachingk2/a1/e;->a:Ljava/util/List;

    .line 63
    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v9

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v9, " , direction : "

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v8, ","

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v5, " , heading : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 64
    invoke-interface/range {p2 .. p2}, Lcn/mucang/android/jiakaoyi/signal/c/e;->getCurrentPosition()Lcn/mucang/android/jiakaoyi/signal/center/model/b;

    move-result-object v5

    iget v5, v5, Lcn/mucang/android/jiakaoyi/signal/center/model/b;->a:F

    invoke-static {v5}, Lcn/mucang/android/jiakaoyi/signal/utils/d;->c(F)F

    move-result v5

    float-to-int v5, v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, " , target\u65b9\u5411\u76d8 : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    double-to-int v5, v6

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, " , current\u65b9\u5411\u76d8 : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-wide/from16 v5, v24

    double-to-int v5, v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, " , diff\u65b9\u5411\u76d8 : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-wide/from16 v5, v20

    double-to-int v5, v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, " , \u63d0\u793a : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 65
    invoke-static {v4}, Lcn/mucang/android/jiakaoyi/framework/log/f;->o(Ljava/lang/Object;)V

    .line 66
    :cond_22
    invoke-static {}, Lcn/mucang/android/core/config/MucangConfig;->getContext()Landroid/app/Application;

    move-result-object v4

    instance-of v4, v4, Lcn/mucang/jiakaoyi/uilib/h;

    if-eqz v4, :cond_23

    .line 67
    invoke-static {}, Lcn/mucang/android/core/config/MucangConfig;->getContext()Landroid/app/Application;

    move-result-object v4

    check-cast v4, Lcn/mucang/jiakaoyi/uilib/h;

    sget-object v5, Lcn/mucang/jiakaoyi/uilib/AutoTeachEvent;->TraceTeach:Lcn/mucang/jiakaoyi/uilib/AutoTeachEvent;

    invoke-interface {v4, v5}, Lcn/mucang/jiakaoyi/uilib/h;->a(Lcn/mucang/jiakaoyi/uilib/AutoTeachEvent;)Z

    move-result v4

    if-eqz v4, :cond_23

    goto :goto_11

    :cond_23
    move-object v2, v3

    .line 68
    :goto_11
    invoke-interface/range {p2 .. p2}, Lcn/mucang/android/jiakaoyi/signal/c/e;->d()Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;

    move-result-object v3

    invoke-virtual {v3}, Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;->c()Z

    move-result v3

    if-eqz v3, :cond_26

    if-eqz v2, :cond_25

    .line 69
    iget v3, v0, Lcn/mucang/android/jiakaoyi/teachingk2/a1/e;->d:I

    if-eq v11, v3, :cond_24

    .line 70
    new-instance v1, Lcn/mucang/android/jiakaoyi/teachingk2/a1/b;

    invoke-direct {v1, v2}, Lcn/mucang/android/jiakaoyi/teachingk2/a1/b;-><init>(Ljava/lang/String;)V

    invoke-static {v1}, Lcn/mucang/android/jiakaoyi/framework/bus/LiveBus;->c(Ljava/lang/Object;)V

    .line 71
    invoke-interface/range {p2 .. p2}, Lcn/mucang/android/jiakaoyi/signal/c/e;->d()Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;

    move-result-object v1

    iget-wide v1, v1, Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;->L:J

    iput-wide v1, v0, Lcn/mucang/android/jiakaoyi/teachingk2/a1/e;->c:J

    goto :goto_12

    .line 72
    :cond_24
    invoke-interface/range {p2 .. p2}, Lcn/mucang/android/jiakaoyi/signal/c/e;->d()Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;

    move-result-object v3

    iget-wide v3, v3, Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;->L:J

    iget-wide v5, v0, Lcn/mucang/android/jiakaoyi/teachingk2/a1/e;->c:J

    sub-long/2addr v3, v5

    const/16 v5, 0x1388

    iget v1, v1, Lcn/mucang/android/jiakaoyi/teachingk2/elements/variable/TraceVariable;->time:I

    invoke-static {v5, v1}, Ljava/lang/Math;->max(II)I

    move-result v1

    int-to-long v5, v1

    cmp-long v1, v3, v5

    if-lez v1, :cond_25

    .line 73
    invoke-interface/range {p2 .. p2}, Lcn/mucang/android/jiakaoyi/signal/c/e;->d()Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;

    move-result-object v1

    iget-wide v3, v1, Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;->L:J

    iput-wide v3, v0, Lcn/mucang/android/jiakaoyi/teachingk2/a1/e;->c:J

    const/4 v1, 0x3

    if-eq v11, v1, :cond_25

    .line 74
    new-instance v1, Lcn/mucang/android/jiakaoyi/teachingk2/a1/b;

    invoke-direct {v1, v2}, Lcn/mucang/android/jiakaoyi/teachingk2/a1/b;-><init>(Ljava/lang/String;)V

    invoke-static {v1}, Lcn/mucang/android/jiakaoyi/framework/bus/LiveBus;->c(Ljava/lang/Object;)V

    :cond_25
    :goto_12
    if-eqz v11, :cond_26

    .line 75
    iput v11, v0, Lcn/mucang/android/jiakaoyi/teachingk2/a1/e;->d:I

    :cond_26
    const/4 v1, 0x0

    return v1

    :cond_27
    :goto_13
    const/4 v1, 0x0

    return v1
.end method
