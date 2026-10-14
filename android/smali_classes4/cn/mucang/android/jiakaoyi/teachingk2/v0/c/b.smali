.class public Lcn/mucang/android/jiakaoyi/teachingk2/v0/c/b;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/mucang/android/jiakaoyi/teachingk2/v0/c/b$b;
    }
.end annotation


# direct methods
.method private static a()Lcn/mucang/android/jiakaoyi/teachingk2/v0/c/b$b;
    .locals 24

    .line 1
    invoke-static {}, Lcn/mucang/android/jiakaoyi/teachingk2/res/n;->b()Lcn/mucang/android/jiakaoyi/teachingk2/res/n;

    move-result-object v0

    iget-object v0, v0, Lcn/mucang/android/jiakaoyi/teachingk2/res/n;->c:Lcn/mucang/android/jiakaoyi/mapcollect/c/j;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    .line 2
    :cond_0
    invoke-static {}, Lcn/mucang/android/jiakaoyi/teachingk2/res/n;->b()Lcn/mucang/android/jiakaoyi/teachingk2/res/n;

    move-result-object v0

    iget-object v0, v0, Lcn/mucang/android/jiakaoyi/teachingk2/res/n;->c:Lcn/mucang/android/jiakaoyi/mapcollect/c/j;

    iget-object v0, v0, Lcn/mucang/android/jiakaoyi/mapcollect/c/j;->w:Lcn/mucang/android/jiakaoyi/hpmap/car/CarData;

    if-nez v0, :cond_1

    return-object v1

    .line 3
    :cond_1
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 4
    new-instance v3, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    const-wide/16 v8, 0x0

    invoke-direct {v3, v8, v9, v8, v9}, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;-><init>(DD)V

    .line 5
    iget-object v1, v0, Lcn/mucang/android/jiakaoyi/hpmap/car/CarData;->carPoints:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v1

    .line 6
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 7
    sget-object v1, Lcn/mucang/android/jiakaoyi/teachingk2/v0/c/a;->a:Lcn/mucang/android/jiakaoyi/teachingk2/v0/c/a;

    invoke-static {v4, v1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 8
    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_2
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    .line 9
    iget-object v5, v0, Lcn/mucang/android/jiakaoyi/hpmap/car/CarData;->carPoints:Ljava/util/Map;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v5, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcn/mucang/android/jiakaoyi/hpmap/car/RelatePos;

    if-eqz v4, :cond_2

    .line 10
    invoke-virtual {v4, v3, v8, v9}, Lcn/mucang/android/jiakaoyi/hpmap/car/RelatePos;->get(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;D)Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    move-result-object v4

    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 11
    :cond_3
    iget-object v1, v0, Lcn/mucang/android/jiakaoyi/hpmap/car/CarData;->wheelLeftBack:Lcn/mucang/android/jiakaoyi/hpmap/car/RelatePos;

    invoke-virtual {v1, v3, v8, v9}, Lcn/mucang/android/jiakaoyi/hpmap/car/RelatePos;->get(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;D)Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    move-result-object v1

    .line 12
    iget-object v4, v0, Lcn/mucang/android/jiakaoyi/hpmap/car/CarData;->wheelRightBack:Lcn/mucang/android/jiakaoyi/hpmap/car/RelatePos;

    invoke-virtual {v4, v3, v8, v9}, Lcn/mucang/android/jiakaoyi/hpmap/car/RelatePos;->get(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;D)Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    move-result-object v10

    .line 13
    iget-object v4, v0, Lcn/mucang/android/jiakaoyi/hpmap/car/CarData;->wheelLeftFront:Lcn/mucang/android/jiakaoyi/hpmap/car/RelatePos;

    invoke-virtual {v4, v3, v8, v9}, Lcn/mucang/android/jiakaoyi/hpmap/car/RelatePos;->get(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;D)Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    move-result-object v11

    .line 14
    iget-object v0, v0, Lcn/mucang/android/jiakaoyi/hpmap/car/CarData;->wheelRightFront:Lcn/mucang/android/jiakaoyi/hpmap/car/RelatePos;

    invoke-virtual {v0, v3, v8, v9}, Lcn/mucang/android/jiakaoyi/hpmap/car/RelatePos;->get(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;D)Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    move-result-object v0

    .line 15
    new-instance v4, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    invoke-direct {v4, v1}, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;-><init>(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;)V

    invoke-virtual {v4, v10}, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;->meanWith(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;)Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    move-result-object v4

    .line 16
    new-instance v5, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    invoke-direct {v5, v11}, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;-><init>(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;)V

    invoke-virtual {v5, v0}, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;->meanWith(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;)Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    move-result-object v5

    .line 17
    invoke-virtual {v4, v5}, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;->angleTo(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;)D

    move-result-wide v4

    new-instance v6, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    invoke-direct {v6}, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;-><init>()V

    new-instance v7, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    invoke-direct {v7}, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;-><init>()V

    invoke-static/range {v2 .. v7}, Lcn/mucang/android/jiakaoyi/hpmap/car/CarData;->calculateCenter(Ljava/util/List;Lcn/mucang/android/jiakaoyi/signal/pos/Pos;DLcn/mucang/android/jiakaoyi/signal/pos/Pos;Lcn/mucang/android/jiakaoyi/signal/pos/Pos;)Lcn/mucang/android/jiakaoyi/signal/pos/c;

    move-result-object v2

    .line 18
    new-instance v3, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    invoke-direct {v3, v1}, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;-><init>(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;)V

    invoke-virtual {v3, v10}, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;->meanWith(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;)Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    move-result-object v3

    iget-object v4, v2, Lcn/mucang/android/jiakaoyi/signal/pos/c;->a:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    iget-object v5, v2, Lcn/mucang/android/jiakaoyi/signal/pos/c;->d:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    invoke-static {v3, v4, v5}, Lcn/mucang/android/jiakaoyi/hpmap/d/a;->k(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;Lcn/mucang/android/jiakaoyi/signal/pos/Pos;Lcn/mucang/android/jiakaoyi/signal/pos/Pos;)D

    move-result-wide v19

    .line 19
    new-instance v3, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    invoke-direct {v3, v1}, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;-><init>(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;)V

    invoke-virtual {v3, v10}, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;->meanWith(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;)Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    move-result-object v1

    new-instance v3, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    invoke-direct {v3, v11}, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;-><init>(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;)V

    invoke-virtual {v3, v0}, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;->meanWith(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;)Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;->distanceTo(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;)D

    move-result-wide v17

    .line 20
    invoke-static {}, Lcn/mucang/android/jiakaoyi/teachingk2/res/n;->b()Lcn/mucang/android/jiakaoyi/teachingk2/res/n;

    move-result-object v0

    iget-object v0, v0, Lcn/mucang/android/jiakaoyi/teachingk2/res/n;->c:Lcn/mucang/android/jiakaoyi/mapcollect/c/j;

    iget-object v0, v0, Lcn/mucang/android/jiakaoyi/mapcollect/c/j;->f:Ljava/util/List;

    .line 21
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    move-wide v3, v8

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcn/mucang/android/jiakaoyi/hpmap/a/a/g/c;

    .line 22
    iget-object v6, v5, Lcn/mucang/android/jiakaoyi/hpmap/a/a/g/c;->o:Lcn/mucang/android/jiakaoyi/hpmap/model/Line;

    invoke-virtual {v6}, Lcn/mucang/android/jiakaoyi/hpmap/model/Line;->length()D

    move-result-wide v6

    add-double/2addr v8, v6

    .line 23
    iget-object v5, v5, Lcn/mucang/android/jiakaoyi/hpmap/a/a/g/c;->k:Lcn/mucang/android/jiakaoyi/hpmap/model/Line;

    invoke-virtual {v5}, Lcn/mucang/android/jiakaoyi/hpmap/model/Line;->length()D

    move-result-wide v5

    add-double/2addr v3, v5

    goto :goto_1

    .line 24
    :cond_4
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_5

    .line 25
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    int-to-double v5, v1

    div-double/2addr v8, v5

    .line 26
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    int-to-double v0, v0

    div-double/2addr v3, v0

    move-wide v13, v3

    move-wide v15, v8

    goto :goto_2

    :cond_5
    const-wide v0, 0x406cc00000000000L    # 230.0

    const-wide v3, 0x407f400000000000L    # 500.0

    move-wide v13, v0

    move-wide v15, v3

    .line 27
    :goto_2
    new-instance v0, Lcn/mucang/android/jiakaoyi/teachingk2/v0/c/b$b;

    iget-object v1, v2, Lcn/mucang/android/jiakaoyi/signal/pos/c;->a:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    iget-object v2, v2, Lcn/mucang/android/jiakaoyi/signal/pos/c;->b:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    invoke-virtual {v1, v2}, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;->distanceTo(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;)D

    move-result-wide v21

    const/16 v23, 0x0

    move-object v12, v0

    invoke-direct/range {v12 .. v23}, Lcn/mucang/android/jiakaoyi/teachingk2/v0/c/b$b;-><init>(DDDDDLcn/mucang/android/jiakaoyi/teachingk2/v0/c/b$a;)V

    return-object v0
.end method

.method private static b(Lcn/mucang/android/jiakaoyi/teachingk2/data/TeachModel;Lcn/mucang/android/jiakaoyi/teachingk2/data/TeachModel;I)V
    .locals 2

    .line 1
    iget v0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/data/TeachModel;->step:I

    iput v0, p1, Lcn/mucang/android/jiakaoyi/teachingk2/data/TeachModel;->step:I

    .line 2
    iput p2, p1, Lcn/mucang/android/jiakaoyi/teachingk2/data/TeachModel;->subStep:I

    .line 3
    iget p2, p0, Lcn/mucang/android/jiakaoyi/teachingk2/data/TeachModel;->pointType:I

    iput p2, p1, Lcn/mucang/android/jiakaoyi/teachingk2/data/TeachModel;->pointType:I

    .line 4
    iget-object p2, p0, Lcn/mucang/android/jiakaoyi/teachingk2/data/TeachModel;->parkingSpaceBindId:Ljava/lang/String;

    iput-object p2, p1, Lcn/mucang/android/jiakaoyi/teachingk2/data/TeachModel;->parkingSpaceBindId:Ljava/lang/String;

    .line 5
    iget-object p2, p0, Lcn/mucang/android/jiakaoyi/teachingk2/data/TeachModel;->parkingSpaceGroup:Ljava/lang/String;

    iput-object p2, p1, Lcn/mucang/android/jiakaoyi/teachingk2/data/TeachModel;->parkingSpaceGroup:Ljava/lang/String;

    .line 6
    iget-object p2, p0, Lcn/mucang/android/jiakaoyi/teachingk2/data/TeachModel;->examSiteId:Ljava/lang/String;

    iput-object p2, p1, Lcn/mucang/android/jiakaoyi/teachingk2/data/TeachModel;->examSiteId:Ljava/lang/String;

    .line 7
    iget-object p2, p0, Lcn/mucang/android/jiakaoyi/teachingk2/data/TeachModel;->driveSchoolId:Ljava/lang/String;

    iput-object p2, p1, Lcn/mucang/android/jiakaoyi/teachingk2/data/TeachModel;->driveSchoolId:Ljava/lang/String;

    .line 8
    iget p2, p0, Lcn/mucang/android/jiakaoyi/teachingk2/data/TeachModel;->grade:I

    iput p2, p1, Lcn/mucang/android/jiakaoyi/teachingk2/data/TeachModel;->grade:I

    .line 9
    iget-object p2, p0, Lcn/mucang/android/jiakaoyi/teachingk2/data/TeachModel;->programmeId:Ljava/lang/String;

    iput-object p2, p1, Lcn/mucang/android/jiakaoyi/teachingk2/data/TeachModel;->programmeId:Ljava/lang/String;

    .line 10
    iget p0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/data/TeachModel;->stepDirection:I

    iput p0, p1, Lcn/mucang/android/jiakaoyi/teachingk2/data/TeachModel;->stepDirection:I

    .line 11
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object p0

    iput-object p0, p1, Lcn/mucang/android/jiakaoyi/teachingk2/data/TeachModel;->teachModelId:Ljava/lang/String;

    const/4 p0, 0x0

    .line 12
    iput p0, p1, Lcn/mucang/android/jiakaoyi/teachingk2/data/TeachModel;->position:I

    return-void
.end method

.method private static c(Ljava/util/List;I)Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcn/mucang/android/jiakaoyi/teachingk2/elements/model/TraceItemModel;",
            ">;I)",
            "Ljava/util/List<",
            "Lcn/mucang/android/jiakaoyi/teachingk2/elements/model/TraceItemModel;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 2
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcn/mucang/android/jiakaoyi/teachingk2/elements/model/TraceItemModel;

    .line 3
    invoke-virtual {v1}, Lcn/mucang/android/jiakaoyi/teachingk2/elements/model/TraceItemModel;->copy()Lcn/mucang/android/jiakaoyi/teachingk2/elements/model/TraceItemModel;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcn/mucang/android/jiakaoyi/teachingk2/elements/model/TraceItemModel;->setGear(I)Lcn/mucang/android/jiakaoyi/teachingk2/elements/model/TraceItemModel;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method private static d(Ljava/util/List;Ljava/util/List;Lcn/mucang/android/jiakaoyi/teachingk2/v0/c/b$b;)Z
    .locals 34
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcn/mucang/android/jiakaoyi/teachingk2/data/TeachModel;",
            ">;",
            "Ljava/util/List<",
            "Lcn/mucang/android/jiakaoyi/teachingk2/data/TeachModel;",
            ">;",
            "Lcn/mucang/android/jiakaoyi/teachingk2/v0/c/b$b;",
            ")Z"
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    const/4 v3, 0x0

    .line 1
    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcn/mucang/android/jiakaoyi/teachingk2/data/TeachModel;

    iget v4, v4, Lcn/mucang/android/jiakaoyi/teachingk2/data/TeachModel;->stepDirection:I

    .line 2
    invoke-static {}, Lcn/mucang/android/jiakaoyi/teachingk2/res/n;->b()Lcn/mucang/android/jiakaoyi/teachingk2/res/n;

    move-result-object v5

    iget-object v5, v5, Lcn/mucang/android/jiakaoyi/teachingk2/res/n;->c:Lcn/mucang/android/jiakaoyi/mapcollect/c/j;

    iget-object v5, v5, Lcn/mucang/android/jiakaoyi/mapcollect/c/j;->f:Ljava/util/List;

    .line 3
    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    const/4 v7, 0x0

    const/4 v8, 0x1

    if-eqz v6, :cond_2

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    move-object v7, v6

    check-cast v7, Lcn/mucang/android/jiakaoyi/hpmap/a/a/g/c;

    .line 4
    iget-boolean v6, v7, Lcn/mucang/android/jiakaoyi/hpmap/a/a/g/c;->u:Z

    if-ne v4, v8, :cond_1

    const/4 v9, 0x1

    goto :goto_0

    :cond_1
    const/4 v9, 0x0

    :goto_0
    if-ne v6, v9, :cond_0

    .line 5
    invoke-virtual {v7}, Lcn/mucang/android/jiakaoyi/hpmap/a/a/g/c;->g()Lcn/mucang/android/jiakaoyi/signal/utils/b;

    move-result-object v4

    move-object/from16 v33, v7

    move-object v7, v4

    move-object/from16 v4, v33

    goto :goto_1

    :cond_2
    move-object v4, v7

    :goto_1
    if-nez v7, :cond_3

    return v3

    .line 6
    :cond_3
    invoke-interface/range {p0 .. p0}, Ljava/util/List;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_4

    .line 7
    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcn/mucang/android/jiakaoyi/teachingk2/data/TeachModel;

    iget v5, v5, Lcn/mucang/android/jiakaoyi/teachingk2/data/TeachModel;->stepDirection:I

    if-ne v5, v8, :cond_4

    const/4 v5, -0x1

    goto :goto_2

    :cond_4
    const/4 v5, 0x1

    :goto_2
    mul-int/lit16 v5, v5, 0x226

    int-to-double v9, v5

    .line 8
    iget-wide v11, v2, Lcn/mucang/android/jiakaoyi/teachingk2/v0/c/b$b;->b:D

    const-wide v13, 0x4041800000000000L    # 35.0

    invoke-static {v13, v14}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v13

    invoke-static {v13, v14}, Ljava/lang/Math;->tan(D)D

    move-result-wide v13

    div-double/2addr v11, v13

    .line 9
    sget-object v5, Lcn/mucang/android/jiakaoyi/hpmap/collision/k2/checker/SubStep;->Step5:Lcn/mucang/android/jiakaoyi/hpmap/collision/k2/checker/SubStep;

    invoke-virtual {v5}, Ljava/lang/Enum;->ordinal()I

    move-result v5

    invoke-static {v0, v5}, Lcn/mucang/android/jiakaoyi/teachingk2/v0/c/b;->k(Ljava/util/List;I)Ljava/util/List;

    move-result-object v5

    .line 10
    iget-object v13, v4, Lcn/mucang/android/jiakaoyi/hpmap/a/a/g/c;->k:Lcn/mucang/android/jiakaoyi/hpmap/model/Line;

    invoke-virtual {v13}, Lcn/mucang/android/jiakaoyi/hpmap/model/Line;->middle()Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    move-result-object v13

    .line 11
    iget-object v14, v4, Lcn/mucang/android/jiakaoyi/hpmap/a/a/g/c;->m:Lcn/mucang/android/jiakaoyi/hpmap/model/Line;

    invoke-virtual {v14}, Lcn/mucang/android/jiakaoyi/hpmap/model/Line;->middle()Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    move-result-object v14

    move-object v15, v7

    .line 12
    iget-wide v6, v2, Lcn/mucang/android/jiakaoyi/teachingk2/v0/c/b$b;->c:D

    move-object/from16 v17, v4

    iget-wide v3, v2, Lcn/mucang/android/jiakaoyi/teachingk2/v0/c/b$b;->a:D

    move-wide/from16 v18, v9

    iget-wide v8, v2, Lcn/mucang/android/jiakaoyi/teachingk2/v0/c/b$b;->d:D

    sub-double/2addr v3, v8

    const-wide/high16 v8, 0x3fe0000000000000L    # 0.5

    mul-double v3, v3, v8

    add-double/2addr v6, v3

    invoke-static {v14, v13, v6, v7}, Lcn/mucang/android/jiakaoyi/hpmap/d/a;->t(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;Lcn/mucang/android/jiakaoyi/signal/pos/Pos;D)Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    move-result-object v2

    .line 13
    invoke-static {v5}, Lcn/mucang/android/core/utils/g;->b(Ljava/util/Collection;)Z

    move-result v3

    if-eqz v3, :cond_5

    move-wide/from16 v23, v11

    goto/16 :goto_9

    .line 14
    :cond_5
    invoke-static {v5}, Lcn/mucang/android/jiakaoyi/teachingk2/v0/c/b;->j(Ljava/util/List;)D

    move-result-wide v3

    const-wide v8, 0x40a7700000000000L    # 3000.0

    cmpl-double v10, v3, v8

    if-lez v10, :cond_6

    const-wide v3, 0x3fb999999999999aL    # 0.1

    goto :goto_3

    :cond_6
    const-wide/high16 v3, 0x3ff0000000000000L    # 1.0

    .line 15
    :goto_3
    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    const/4 v8, 0x0

    .line 16
    :goto_4
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v9

    if-ge v8, v9, :cond_b

    .line 17
    invoke-interface {v5, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcn/mucang/android/jiakaoyi/teachingk2/elements/model/TraceItemModel;

    iget-short v9, v9, Lcn/mucang/android/jiakaoyi/teachingk2/elements/model/TraceItemModel;->wheel:S

    invoke-static {v9}, Ljava/lang/Math;->abs(I)I

    move-result v9

    int-to-double v6, v9

    mul-double v6, v6, v3

    const-wide v23, 0x407f400000000000L    # 500.0

    cmpg-double v9, v6, v23

    if-gez v9, :cond_7

    move-wide/from16 v23, v11

    goto :goto_7

    :cond_7
    add-int/lit8 v9, v8, 0x1

    move-wide/from16 v23, v11

    .line 18
    :goto_5
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v11

    if-ge v9, v11, :cond_9

    add-int/lit8 v11, v8, 0xa

    if-ge v9, v11, :cond_9

    .line 19
    invoke-interface {v5, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcn/mucang/android/jiakaoyi/teachingk2/elements/model/TraceItemModel;

    iget-short v11, v11, Lcn/mucang/android/jiakaoyi/teachingk2/elements/model/TraceItemModel;->wheel:S

    invoke-static {v11}, Ljava/lang/Math;->abs(I)I

    move-result v11

    int-to-double v11, v11

    mul-double v11, v11, v3

    sub-double/2addr v11, v6

    .line 20
    invoke-static {v11, v12}, Ljava/lang/Math;->abs(D)D

    move-result-wide v11

    const-wide/high16 v21, 0x4024000000000000L    # 10.0

    cmpl-double v25, v11, v21

    if-lez v25, :cond_8

    const/4 v6, 0x0

    goto :goto_6

    :cond_8
    add-int/lit8 v9, v9, 0x1

    goto :goto_5

    :cond_9
    const/4 v6, 0x1

    :goto_6
    if-eqz v6, :cond_a

    .line 21
    invoke-interface {v5, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcn/mucang/android/jiakaoyi/teachingk2/elements/model/TraceItemModel;

    iget-short v6, v6, Lcn/mucang/android/jiakaoyi/teachingk2/elements/model/TraceItemModel;->wheel:S

    int-to-double v6, v6

    mul-double v3, v3, v6

    .line 22
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v6

    const/4 v7, 0x1

    sub-int/2addr v6, v7

    add-int/lit8 v7, v8, 0xa

    invoke-static {v6, v7}, Ljava/lang/Math;->min(II)I

    move-result v6

    invoke-interface {v5, v8, v6}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object v5

    invoke-interface {v10, v5}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    move-wide v8, v3

    goto :goto_8

    :cond_a
    :goto_7
    add-int/lit8 v8, v8, 0x1

    move-wide/from16 v11, v23

    goto :goto_4

    :cond_b
    move-wide/from16 v23, v11

    const-wide/16 v8, 0x0

    .line 23
    :goto_8
    invoke-static {v8, v9}, Ljava/lang/Math;->abs(D)D

    move-result-wide v3

    const-wide v5, 0x4076800000000000L    # 360.0

    cmpl-double v7, v3, v5

    if-lez v7, :cond_c

    invoke-static {v10}, Lcn/mucang/android/core/utils/g;->b(Ljava/util/Collection;)Z

    move-result v3

    if-nez v3, :cond_c

    invoke-interface {v10}, Ljava/util/List;->size()I

    move-result v3

    const/4 v4, 0x3

    if-lt v3, v4, :cond_c

    .line 24
    invoke-interface {v10}, Ljava/util/List;->size()I

    move-result v3

    const/4 v4, 0x1

    sub-int/2addr v3, v4

    new-instance v4, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    invoke-direct {v4}, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;-><init>()V

    const/4 v5, 0x0

    invoke-static {v10, v5, v3, v4}, Lcn/mucang/android/jiakaoyi/mapcollect/collect/c1/c;->b(Ljava/util/List;IILcn/mucang/android/jiakaoyi/signal/pos/Pos;)D

    move-result-wide v11

    .line 25
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "\u8f68\u8ff9\u91cc\u6700\u5927\u65b9\u5411\u76d8\u89d2\u5ea6:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v8, v9}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string v4, " , \u6700\u5c0f\u8f6c\u5f2f\u534a\u5f84:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v11, v12}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcn/mucang/android/jiakaoyi/framework/log/f;->o(Ljava/lang/Object;)V

    move-wide v9, v8

    goto :goto_a

    :cond_c
    :goto_9
    move-wide/from16 v9, v18

    move-wide/from16 v11, v23

    .line 26
    :goto_a
    sget-object v3, Lcn/mucang/android/jiakaoyi/hpmap/collision/k2/checker/SubStep;->Step1:Lcn/mucang/android/jiakaoyi/hpmap/collision/k2/checker/SubStep;

    invoke-virtual {v3}, Ljava/lang/Enum;->ordinal()I

    move-result v3

    invoke-static {v0, v3}, Lcn/mucang/android/jiakaoyi/teachingk2/v0/c/b;->k(Ljava/util/List;I)Ljava/util/List;

    move-result-object v3

    .line 27
    invoke-static {v3}, Lcn/mucang/android/core/utils/g;->b(Ljava/util/Collection;)Z

    move-result v4

    if-eqz v4, :cond_e

    .line 28
    sget-object v3, Lcn/mucang/android/jiakaoyi/hpmap/collision/k2/checker/SubStep;->Step2:Lcn/mucang/android/jiakaoyi/hpmap/collision/k2/checker/SubStep;

    invoke-virtual {v3}, Ljava/lang/Enum;->ordinal()I

    move-result v3

    invoke-static {v0, v3}, Lcn/mucang/android/jiakaoyi/teachingk2/v0/c/b;->k(Ljava/util/List;I)Ljava/util/List;

    move-result-object v3

    .line 29
    invoke-static {v3}, Lcn/mucang/android/core/utils/g;->d(Ljava/util/Collection;)Z

    move-result v4

    if-eqz v4, :cond_d

    const/4 v4, 0x0

    .line 30
    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    move-object v7, v15

    invoke-virtual {v7, v3}, Lcn/mucang/android/jiakaoyi/signal/utils/b;->c(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;)Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    move-result-object v3

    goto :goto_b

    :cond_d
    const/4 v4, 0x0

    const-string v0, "\u9996\u8bad\u6559\u5b66\u5f02\u5e38\uff0c\u6ca1\u6709\u7b2c\u4e8c\u6b65\u8f68\u8ff9"

    .line 31
    invoke-static {v0}, Lcn/mucang/android/jiakaoyi/framework/log/f;->o(Ljava/lang/Object;)V

    return v4

    :cond_e
    move-object v7, v15

    .line 32
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v4

    const/4 v5, 0x1

    sub-int/2addr v4, v5

    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    invoke-virtual {v7, v3}, Lcn/mucang/android/jiakaoyi/signal/utils/b;->c(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;)Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    move-result-object v3

    :goto_b
    move-object/from16 v4, v17

    .line 33
    iget-boolean v4, v4, Lcn/mucang/android/jiakaoyi/hpmap/a/a/g/c;->u:Z

    if-eqz v4, :cond_f

    const/4 v6, -0x1

    goto :goto_c

    :cond_f
    const/4 v6, 0x1

    .line 34
    :goto_c
    invoke-static {v3, v13, v14}, Lcn/mucang/android/jiakaoyi/hpmap/d/a;->n(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;Lcn/mucang/android/jiakaoyi/signal/pos/Pos;Lcn/mucang/android/jiakaoyi/signal/pos/Pos;)Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    move-result-object v4

    .line 35
    invoke-static {v4, v13, v11, v12}, Lcn/mucang/android/jiakaoyi/hpmap/d/a;->t(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;Lcn/mucang/android/jiakaoyi/signal/pos/Pos;D)Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    move-result-object v5

    .line 36
    new-instance v8, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    invoke-direct {v8, v4}, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;-><init>(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;)V

    const-wide/16 v25, 0x0

    int-to-double v13, v6

    move-object/from16 v23, v8

    move-object/from16 v24, v5

    move-wide/from16 v27, v13

    invoke-virtual/range {v23 .. v28}, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;->rotate(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;DD)Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    move-result-object v4

    .line 37
    new-instance v8, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    invoke-direct {v8, v5}, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;-><init>(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;)V

    const-wide/16 v29, 0x0

    move-object/from16 v27, v8

    move-object/from16 v28, v4

    move-wide/from16 v31, v13

    invoke-virtual/range {v27 .. v32}, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;->rotate(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;DD)Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    move-result-object v8

    .line 38
    invoke-static {}, Lcn/mucang/android/jiakaoyi/signal/utils/f;->b()Z

    move-result v15

    if-eqz v15, :cond_10

    sget-object v15, Lcn/mucang/android/jiakaoyi/signal/center/model/Gear;->GearD:Lcn/mucang/android/jiakaoyi/signal/center/model/Gear;

    goto :goto_d

    :cond_10
    sget-object v15, Lcn/mucang/android/jiakaoyi/signal/center/model/Gear;->Gear1:Lcn/mucang/android/jiakaoyi/signal/center/model/Gear;

    :goto_d
    iget v15, v15, Lcn/mucang/android/jiakaoyi/signal/center/model/Gear;->gear:I

    .line 39
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    move/from16 v17, v6

    move-object/from16 v16, v7

    const-wide/high16 v6, 0x403e000000000000L    # 30.0

    .line 40
    invoke-static {v2, v5, v6, v7}, Lcn/mucang/android/jiakaoyi/teachingk2/autocreate/i/f/b;->b(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;Lcn/mucang/android/jiakaoyi/signal/pos/Pos;D)Ljava/util/List;

    move-result-object v0

    .line 41
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v18

    :goto_e
    invoke-interface/range {v18 .. v18}, Ljava/util/Iterator;->hasNext()Z

    move-result v19

    if-eqz v19, :cond_11

    invoke-interface/range {v18 .. v18}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v19

    move-object/from16 v23, v19

    check-cast v23, Lcn/mucang/android/jiakaoyi/teachingk2/elements/model/TraceItemModel;

    const/16 v24, 0x0

    const/16 v25, 0x0

    .line 42
    sget-object v6, Lcn/mucang/android/jiakaoyi/engine/model/Step;->K2_DaoCheRuKu:Lcn/mucang/android/jiakaoyi/engine/model/Step;

    iget v6, v6, Lcn/mucang/android/jiakaoyi/engine/model/Step;->type:I

    const/16 v27, 0x0

    const/16 v28, 0x0

    const/16 v29, 0x0

    const/16 v31, 0x0

    move/from16 v26, v6

    move/from16 v30, v15

    invoke-virtual/range {v23 .. v31}, Lcn/mucang/android/jiakaoyi/teachingk2/elements/model/TraceItemModel;->set(IIIIIIII)Lcn/mucang/android/jiakaoyi/teachingk2/elements/model/TraceItemModel;

    const-wide/high16 v6, 0x403e000000000000L    # 30.0

    goto :goto_e

    .line 43
    :cond_11
    invoke-interface {v1, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    const-wide v6, 0x3ff921fb54442d18L    # 1.5707963267948966

    mul-double v11, v11, v6

    const-wide/high16 v18, 0x403e000000000000L    # 30.0

    div-double v11, v11, v18

    double-to-int v0, v11

    mul-double v13, v13, v6

    int-to-double v6, v0

    div-double/2addr v13, v6

    const/4 v6, 0x1

    :goto_f
    if-ge v6, v0, :cond_12

    int-to-double v11, v6

    mul-double v11, v11, v13

    .line 44
    new-instance v7, Lcn/mucang/android/jiakaoyi/teachingk2/elements/model/TraceItemModel;

    invoke-direct {v7}, Lcn/mucang/android/jiakaoyi/teachingk2/elements/model/TraceItemModel;-><init>()V

    move/from16 v18, v0

    new-instance v0, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    invoke-direct {v0, v5}, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;-><init>(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;)V

    invoke-static {v11, v12}, Ljava/lang/Math;->cos(D)D

    move-result-wide v29

    invoke-static {v11, v12}, Ljava/lang/Math;->sin(D)D

    move-result-wide v31

    move-object/from16 v27, v0

    move-object/from16 v28, v4

    invoke-virtual/range {v27 .. v32}, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;->rotate(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;DD)Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    move-result-object v0

    invoke-virtual {v7, v0}, Lcn/mucang/android/jiakaoyi/teachingk2/elements/model/TraceItemModel;->set(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;)Lcn/mucang/android/jiakaoyi/teachingk2/elements/model/TraceItemModel;

    move-result-object v0

    .line 45
    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    double-to-int v7, v9

    .line 46
    invoke-static {v11, v12}, Ljava/lang/Math;->toDegrees(D)D

    move-result-wide v11

    const-wide/high16 v20, 0x4024000000000000L    # 10.0

    mul-double v11, v11, v20

    double-to-int v11, v11

    sget-object v12, Lcn/mucang/android/jiakaoyi/engine/model/Step;->K2_DaoCheRuKu:Lcn/mucang/android/jiakaoyi/engine/model/Step;

    iget v12, v12, Lcn/mucang/android/jiakaoyi/engine/model/Step;->type:I

    const/16 v27, 0x0

    const/16 v28, 0x0

    const/16 v29, 0x0

    const/16 v31, 0x0

    move-object/from16 v23, v0

    move/from16 v24, v7

    move/from16 v25, v11

    move/from16 v26, v12

    move/from16 v30, v15

    invoke-virtual/range {v23 .. v31}, Lcn/mucang/android/jiakaoyi/teachingk2/elements/model/TraceItemModel;->set(IIIIIIII)Lcn/mucang/android/jiakaoyi/teachingk2/elements/model/TraceItemModel;

    add-int/lit8 v6, v6, 0x1

    move/from16 v0, v18

    goto :goto_f

    :cond_12
    const-wide/high16 v6, 0x403e000000000000L    # 30.0

    .line 47
    invoke-static {v8, v3, v6, v7}, Lcn/mucang/android/jiakaoyi/teachingk2/autocreate/i/f/b;->b(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;Lcn/mucang/android/jiakaoyi/signal/pos/Pos;D)Ljava/util/List;

    move-result-object v0

    .line 48
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_10
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_13

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    move-object/from16 v23, v6

    check-cast v23, Lcn/mucang/android/jiakaoyi/teachingk2/elements/model/TraceItemModel;

    const/16 v24, 0x0

    const/16 v25, 0x384

    .line 49
    sget-object v6, Lcn/mucang/android/jiakaoyi/engine/model/Step;->K2_DaoCheRuKu:Lcn/mucang/android/jiakaoyi/engine/model/Step;

    iget v6, v6, Lcn/mucang/android/jiakaoyi/engine/model/Step;->type:I

    const/16 v27, 0x0

    const/16 v28, 0x0

    const/16 v29, 0x0

    const/16 v31, 0x0

    move/from16 v26, v6

    move/from16 v30, v15

    invoke-virtual/range {v23 .. v31}, Lcn/mucang/android/jiakaoyi/teachingk2/elements/model/TraceItemModel;->set(IIIIIIII)Lcn/mucang/android/jiakaoyi/teachingk2/elements/model/TraceItemModel;

    goto :goto_10

    .line 50
    :cond_13
    invoke-interface {v1, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 51
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_11
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_14

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcn/mucang/android/jiakaoyi/teachingk2/elements/model/TraceItemModel;

    move-object/from16 v7, v16

    .line 52
    invoke-virtual {v7, v4}, Lcn/mucang/android/jiakaoyi/signal/utils/b;->a(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;)Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    move-result-object v6

    invoke-virtual {v4, v6}, Lcn/mucang/android/jiakaoyi/teachingk2/elements/model/TraceItemModel;->set(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;)Lcn/mucang/android/jiakaoyi/teachingk2/elements/model/TraceItemModel;

    goto :goto_11

    :cond_14
    move-object/from16 v7, v16

    const-wide/high16 v9, 0x4034000000000000L    # 20.0

    .line 53
    invoke-static {v5, v2, v9, v10}, Lcn/mucang/android/jiakaoyi/hpmap/d/a;->t(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;Lcn/mucang/android/jiakaoyi/signal/pos/Pos;D)Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    move-result-object v0

    .line 54
    new-instance v4, Lcn/mucang/android/jiakaoyi/teachingk2/elements/variable/NormalVariable;

    invoke-direct {v4}, Lcn/mucang/android/jiakaoyi/teachingk2/elements/variable/NormalVariable;-><init>()V

    invoke-virtual {v7, v0}, Lcn/mucang/android/jiakaoyi/signal/utils/b;->a(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;)Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    move-result-object v5

    const-wide/high16 v11, 0x4049000000000000L    # 50.0

    .line 55
    invoke-static {v2, v0, v11, v12}, Lcn/mucang/android/jiakaoyi/hpmap/d/a;->s(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;Lcn/mucang/android/jiakaoyi/signal/pos/Pos;D)Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    move-result-object v6

    invoke-virtual {v7, v6}, Lcn/mucang/android/jiakaoyi/signal/utils/b;->a(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;)Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    move-result-object v6

    .line 56
    invoke-virtual {v4, v5, v6}, Lcn/mucang/android/jiakaoyi/teachingk2/elements/variable/NormalVariable;->setPos(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;Lcn/mucang/android/jiakaoyi/signal/pos/Pos;)Lcn/mucang/android/jiakaoyi/teachingk2/elements/variable/NormalVariable;

    move-result-object v4

    const/4 v5, 0x1

    .line 57
    iput-boolean v5, v4, Lcn/mucang/android/jiakaoyi/teachingk2/elements/variable/NormalVariable;->noAdvance:Z

    .line 58
    new-instance v6, Lcn/mucang/android/jiakaoyi/teachingk2/data/TeachModel;

    invoke-direct {v6}, Lcn/mucang/android/jiakaoyi/teachingk2/data/TeachModel;-><init>()V

    const/4 v14, 0x0

    move-object/from16 v13, p0

    .line 59
    invoke-interface {v13, v14}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lcn/mucang/android/jiakaoyi/teachingk2/data/TeachModel;

    sget-object v14, Lcn/mucang/android/jiakaoyi/hpmap/collision/k2/checker/SubStep;->Step5:Lcn/mucang/android/jiakaoyi/hpmap/collision/k2/checker/SubStep;

    invoke-virtual {v14}, Ljava/lang/Enum;->ordinal()I

    move-result v9

    invoke-static {v15, v6, v9}, Lcn/mucang/android/jiakaoyi/teachingk2/v0/c/b;->b(Lcn/mucang/android/jiakaoyi/teachingk2/data/TeachModel;Lcn/mucang/android/jiakaoyi/teachingk2/data/TeachModel;I)V

    move/from16 v9, v17

    if-ne v9, v5, :cond_15

    .line 60
    sget v10, Lcn/mucang/android/jiakaoyi/teachbase/R$string;->teachbase_hard_right:I

    goto :goto_12

    :cond_15
    sget v10, Lcn/mucang/android/jiakaoyi/teachbase/R$string;->teachbase_hard_left:I

    :goto_12
    invoke-static {v10}, Lcn/mucang/android/jiakaoyi/framework/utils/k0;->a(I)Ljava/lang/String;

    move-result-object v10

    invoke-static {v6, v10, v4, v5}, Lcn/mucang/android/jiakaoyi/teachingk2/v0/c/b;->o(Lcn/mucang/android/jiakaoyi/teachingk2/data/TeachModel;Ljava/lang/String;Lcn/mucang/android/jiakaoyi/teachingk2/elements/variable/NormalVariable;Z)V

    move-object v5, v1

    move-object/from16 v1, p1

    .line 61
    invoke-interface {v1, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 62
    new-instance v10, Lcn/mucang/android/jiakaoyi/teachingk2/elements/variable/NormalVariable;

    invoke-direct {v10}, Lcn/mucang/android/jiakaoyi/teachingk2/elements/variable/NormalVariable;-><init>()V

    invoke-virtual {v7, v0}, Lcn/mucang/android/jiakaoyi/signal/utils/b;->a(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;)Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    move-result-object v15

    invoke-static {v2, v0, v11, v12}, Lcn/mucang/android/jiakaoyi/hpmap/d/a;->s(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;Lcn/mucang/android/jiakaoyi/signal/pos/Pos;D)Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    move-result-object v0

    invoke-virtual {v7, v0}, Lcn/mucang/android/jiakaoyi/signal/utils/b;->a(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;)Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    move-result-object v0

    invoke-virtual {v10, v15, v0}, Lcn/mucang/android/jiakaoyi/teachingk2/elements/variable/NormalVariable;->setPos(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;Lcn/mucang/android/jiakaoyi/signal/pos/Pos;)Lcn/mucang/android/jiakaoyi/teachingk2/elements/variable/NormalVariable;

    move-result-object v0

    .line 63
    new-instance v2, Lcn/mucang/android/jiakaoyi/teachingk2/data/TeachModel;

    invoke-direct {v2}, Lcn/mucang/android/jiakaoyi/teachingk2/data/TeachModel;-><init>()V

    const/4 v10, 0x0

    .line 64
    invoke-interface {v13, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lcn/mucang/android/jiakaoyi/teachingk2/data/TeachModel;

    invoke-virtual {v14}, Ljava/lang/Enum;->ordinal()I

    move-result v11

    invoke-static {v15, v2, v11}, Lcn/mucang/android/jiakaoyi/teachingk2/v0/c/b;->b(Lcn/mucang/android/jiakaoyi/teachingk2/data/TeachModel;Lcn/mucang/android/jiakaoyi/teachingk2/data/TeachModel;I)V

    const/4 v11, 0x1

    if-ne v9, v11, :cond_16

    .line 65
    sget v9, Lcn/mucang/android/jiakaoyi/teachbase/R$string;->teachbase_ready_steering_right_full:I

    goto :goto_13

    :cond_16
    sget v9, Lcn/mucang/android/jiakaoyi/teachbase/R$string;->teachbase_ready_steering_left_full:I

    :goto_13
    invoke-static {v9}, Lcn/mucang/android/jiakaoyi/framework/utils/k0;->a(I)Ljava/lang/String;

    move-result-object v9

    invoke-static {v2, v9, v0, v10}, Lcn/mucang/android/jiakaoyi/teachingk2/v0/c/b;->o(Lcn/mucang/android/jiakaoyi/teachingk2/data/TeachModel;Ljava/lang/String;Lcn/mucang/android/jiakaoyi/teachingk2/elements/variable/NormalVariable;Z)V

    .line 66
    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 67
    iget-wide v9, v4, Lcn/mucang/android/jiakaoyi/teachingk2/elements/variable/NormalVariable;->key:J

    iput-wide v9, v0, Lcn/mucang/android/jiakaoyi/teachingk2/elements/variable/NormalVariable;->reportKey:J

    .line 68
    iput v11, v2, Lcn/mucang/android/jiakaoyi/teachingk2/data/TeachModel;->pointType:I

    .line 69
    iput-object v6, v2, Lcn/mucang/android/jiakaoyi/teachingk2/data/TeachModel;->reportModel:Lcn/mucang/android/jiakaoyi/teachingk2/data/TeachModel;

    const-wide/high16 v9, 0x4034000000000000L    # 20.0

    .line 70
    invoke-static {v3, v8, v9, v10}, Lcn/mucang/android/jiakaoyi/hpmap/d/a;->s(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;Lcn/mucang/android/jiakaoyi/signal/pos/Pos;D)Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    move-result-object v0

    .line 71
    new-instance v2, Lcn/mucang/android/jiakaoyi/teachingk2/elements/variable/NormalVariable;

    invoke-direct {v2}, Lcn/mucang/android/jiakaoyi/teachingk2/elements/variable/NormalVariable;-><init>()V

    invoke-virtual {v7, v0}, Lcn/mucang/android/jiakaoyi/signal/utils/b;->a(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;)Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    move-result-object v4

    const-wide/high16 v9, 0x4049000000000000L    # 50.0

    invoke-static {v8, v3, v9, v10}, Lcn/mucang/android/jiakaoyi/hpmap/d/a;->t(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;Lcn/mucang/android/jiakaoyi/signal/pos/Pos;D)Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    move-result-object v6

    invoke-virtual {v7, v6}, Lcn/mucang/android/jiakaoyi/signal/utils/b;->a(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;)Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    move-result-object v6

    invoke-virtual {v2, v4, v6}, Lcn/mucang/android/jiakaoyi/teachingk2/elements/variable/NormalVariable;->setPos(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;Lcn/mucang/android/jiakaoyi/signal/pos/Pos;)Lcn/mucang/android/jiakaoyi/teachingk2/elements/variable/NormalVariable;

    move-result-object v2

    .line 72
    iput-boolean v11, v2, Lcn/mucang/android/jiakaoyi/teachingk2/elements/variable/NormalVariable;->noAdvance:Z

    .line 73
    new-instance v4, Lcn/mucang/android/jiakaoyi/teachingk2/data/TeachModel;

    invoke-direct {v4}, Lcn/mucang/android/jiakaoyi/teachingk2/data/TeachModel;-><init>()V

    const/4 v6, 0x0

    .line 74
    invoke-interface {v13, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcn/mucang/android/jiakaoyi/teachingk2/data/TeachModel;

    invoke-virtual {v14}, Ljava/lang/Enum;->ordinal()I

    move-result v6

    invoke-static {v9, v4, v6}, Lcn/mucang/android/jiakaoyi/teachingk2/v0/c/b;->b(Lcn/mucang/android/jiakaoyi/teachingk2/data/TeachModel;Lcn/mucang/android/jiakaoyi/teachingk2/data/TeachModel;I)V

    .line 75
    sget v6, Lcn/mucang/android/jiakaoyi/teachbase/R$string;->teachbase_back_to_body:I

    invoke-static {v6}, Lcn/mucang/android/jiakaoyi/framework/utils/k0;->a(I)Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6, v2, v11}, Lcn/mucang/android/jiakaoyi/teachingk2/v0/c/b;->o(Lcn/mucang/android/jiakaoyi/teachingk2/data/TeachModel;Ljava/lang/String;Lcn/mucang/android/jiakaoyi/teachingk2/elements/variable/NormalVariable;Z)V

    .line 76
    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 77
    new-instance v6, Lcn/mucang/android/jiakaoyi/teachingk2/elements/variable/NormalVariable;

    invoke-direct {v6}, Lcn/mucang/android/jiakaoyi/teachingk2/elements/variable/NormalVariable;-><init>()V

    invoke-virtual {v7, v0}, Lcn/mucang/android/jiakaoyi/signal/utils/b;->a(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;)Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    move-result-object v0

    const-wide/high16 v9, 0x4049000000000000L    # 50.0

    invoke-static {v8, v3, v9, v10}, Lcn/mucang/android/jiakaoyi/hpmap/d/a;->t(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;Lcn/mucang/android/jiakaoyi/signal/pos/Pos;D)Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    move-result-object v11

    invoke-virtual {v7, v11}, Lcn/mucang/android/jiakaoyi/signal/utils/b;->a(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;)Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    move-result-object v9

    invoke-virtual {v6, v0, v9}, Lcn/mucang/android/jiakaoyi/teachingk2/elements/variable/NormalVariable;->setPos(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;Lcn/mucang/android/jiakaoyi/signal/pos/Pos;)Lcn/mucang/android/jiakaoyi/teachingk2/elements/variable/NormalVariable;

    move-result-object v0

    .line 78
    new-instance v6, Lcn/mucang/android/jiakaoyi/teachingk2/data/TeachModel;

    invoke-direct {v6}, Lcn/mucang/android/jiakaoyi/teachingk2/data/TeachModel;-><init>()V

    const/4 v9, 0x0

    .line 79
    invoke-interface {v13, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcn/mucang/android/jiakaoyi/teachingk2/data/TeachModel;

    invoke-virtual {v14}, Ljava/lang/Enum;->ordinal()I

    move-result v11

    invoke-static {v10, v6, v11}, Lcn/mucang/android/jiakaoyi/teachingk2/v0/c/b;->b(Lcn/mucang/android/jiakaoyi/teachingk2/data/TeachModel;Lcn/mucang/android/jiakaoyi/teachingk2/data/TeachModel;I)V

    .line 80
    sget v10, Lcn/mucang/android/jiakaoyi/teachbase/R$string;->teachbase_ready_back_to_body:I

    invoke-static {v10}, Lcn/mucang/android/jiakaoyi/framework/utils/k0;->a(I)Ljava/lang/String;

    move-result-object v10

    invoke-static {v6, v10, v0, v9}, Lcn/mucang/android/jiakaoyi/teachingk2/v0/c/b;->o(Lcn/mucang/android/jiakaoyi/teachingk2/data/TeachModel;Ljava/lang/String;Lcn/mucang/android/jiakaoyi/teachingk2/elements/variable/NormalVariable;Z)V

    .line 81
    invoke-interface {v1, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 82
    iget-wide v9, v2, Lcn/mucang/android/jiakaoyi/teachingk2/elements/variable/NormalVariable;->key:J

    iput-wide v9, v0, Lcn/mucang/android/jiakaoyi/teachingk2/elements/variable/NormalVariable;->reportKey:J

    const/4 v0, 0x1

    .line 83
    iput v0, v6, Lcn/mucang/android/jiakaoyi/teachingk2/data/TeachModel;->pointType:I

    .line 84
    iput-object v4, v6, Lcn/mucang/android/jiakaoyi/teachingk2/data/TeachModel;->reportModel:Lcn/mucang/android/jiakaoyi/teachingk2/data/TeachModel;

    .line 85
    new-instance v2, Lcn/mucang/android/jiakaoyi/teachingk2/elements/variable/NormalVariable;

    invoke-direct {v2}, Lcn/mucang/android/jiakaoyi/teachingk2/elements/variable/NormalVariable;-><init>()V

    invoke-virtual {v7, v3}, Lcn/mucang/android/jiakaoyi/signal/utils/b;->a(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;)Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    move-result-object v4

    const-wide/high16 v9, 0x4049000000000000L    # 50.0

    invoke-static {v8, v3, v9, v10}, Lcn/mucang/android/jiakaoyi/hpmap/d/a;->s(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;Lcn/mucang/android/jiakaoyi/signal/pos/Pos;D)Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    move-result-object v6

    invoke-virtual {v7, v6}, Lcn/mucang/android/jiakaoyi/signal/utils/b;->a(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;)Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    move-result-object v6

    invoke-virtual {v2, v4, v6}, Lcn/mucang/android/jiakaoyi/teachingk2/elements/variable/NormalVariable;->setPos(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;Lcn/mucang/android/jiakaoyi/signal/pos/Pos;)Lcn/mucang/android/jiakaoyi/teachingk2/elements/variable/NormalVariable;

    move-result-object v2

    .line 86
    iput-boolean v0, v2, Lcn/mucang/android/jiakaoyi/teachingk2/elements/variable/NormalVariable;->noAdvance:Z

    .line 87
    new-instance v4, Lcn/mucang/android/jiakaoyi/teachingk2/data/TeachModel;

    invoke-direct {v4}, Lcn/mucang/android/jiakaoyi/teachingk2/data/TeachModel;-><init>()V

    const/4 v6, 0x0

    .line 88
    invoke-interface {v13, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcn/mucang/android/jiakaoyi/teachingk2/data/TeachModel;

    invoke-virtual {v14}, Ljava/lang/Enum;->ordinal()I

    move-result v6

    invoke-static {v9, v4, v6}, Lcn/mucang/android/jiakaoyi/teachingk2/v0/c/b;->b(Lcn/mucang/android/jiakaoyi/teachingk2/data/TeachModel;Lcn/mucang/android/jiakaoyi/teachingk2/data/TeachModel;I)V

    .line 89
    sget v6, Lcn/mucang/android/jiakaoyi/teachbase/R$string;->teachbase_please_stop:I

    invoke-static {v6}, Lcn/mucang/android/jiakaoyi/framework/utils/k0;->a(I)Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6, v2, v0}, Lcn/mucang/android/jiakaoyi/teachingk2/v0/c/b;->o(Lcn/mucang/android/jiakaoyi/teachingk2/data/TeachModel;Ljava/lang/String;Lcn/mucang/android/jiakaoyi/teachingk2/elements/variable/NormalVariable;Z)V

    .line 90
    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 91
    new-instance v0, Lcn/mucang/android/jiakaoyi/teachingk2/elements/variable/NormalVariable;

    invoke-direct {v0}, Lcn/mucang/android/jiakaoyi/teachingk2/elements/variable/NormalVariable;-><init>()V

    invoke-virtual {v7, v3}, Lcn/mucang/android/jiakaoyi/signal/utils/b;->a(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;)Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    move-result-object v6

    const-wide/high16 v9, 0x4049000000000000L    # 50.0

    invoke-static {v8, v3, v9, v10}, Lcn/mucang/android/jiakaoyi/hpmap/d/a;->s(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;Lcn/mucang/android/jiakaoyi/signal/pos/Pos;D)Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    move-result-object v3

    invoke-virtual {v7, v3}, Lcn/mucang/android/jiakaoyi/signal/utils/b;->a(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;)Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    move-result-object v3

    invoke-virtual {v0, v6, v3}, Lcn/mucang/android/jiakaoyi/teachingk2/elements/variable/NormalVariable;->setPos(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;Lcn/mucang/android/jiakaoyi/signal/pos/Pos;)Lcn/mucang/android/jiakaoyi/teachingk2/elements/variable/NormalVariable;

    move-result-object v0

    .line 92
    new-instance v3, Lcn/mucang/android/jiakaoyi/teachingk2/data/TeachModel;

    invoke-direct {v3}, Lcn/mucang/android/jiakaoyi/teachingk2/data/TeachModel;-><init>()V

    const/4 v6, 0x0

    .line 93
    invoke-interface {v13, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcn/mucang/android/jiakaoyi/teachingk2/data/TeachModel;

    invoke-virtual {v14}, Ljava/lang/Enum;->ordinal()I

    move-result v8

    invoke-static {v7, v3, v8}, Lcn/mucang/android/jiakaoyi/teachingk2/v0/c/b;->b(Lcn/mucang/android/jiakaoyi/teachingk2/data/TeachModel;Lcn/mucang/android/jiakaoyi/teachingk2/data/TeachModel;I)V

    .line 94
    sget v7, Lcn/mucang/android/jiakaoyi/teachbase/R$string;->teachbase_ready_stop_car:I

    invoke-static {v7}, Lcn/mucang/android/jiakaoyi/framework/utils/k0;->a(I)Ljava/lang/String;

    move-result-object v7

    invoke-static {v3, v7, v0, v6}, Lcn/mucang/android/jiakaoyi/teachingk2/v0/c/b;->o(Lcn/mucang/android/jiakaoyi/teachingk2/data/TeachModel;Ljava/lang/String;Lcn/mucang/android/jiakaoyi/teachingk2/elements/variable/NormalVariable;Z)V

    .line 95
    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 96
    iget-wide v7, v2, Lcn/mucang/android/jiakaoyi/teachingk2/elements/variable/NormalVariable;->key:J

    iput-wide v7, v0, Lcn/mucang/android/jiakaoyi/teachingk2/elements/variable/NormalVariable;->reportKey:J

    const/4 v0, 0x1

    .line 97
    iput v0, v3, Lcn/mucang/android/jiakaoyi/teachingk2/data/TeachModel;->pointType:I

    .line 98
    iput-object v4, v3, Lcn/mucang/android/jiakaoyi/teachingk2/data/TeachModel;->reportModel:Lcn/mucang/android/jiakaoyi/teachingk2/data/TeachModel;

    .line 99
    invoke-interface {v13, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcn/mucang/android/jiakaoyi/teachingk2/data/TeachModel;

    invoke-virtual {v14}, Ljava/lang/Enum;->ordinal()I

    move-result v3

    invoke-static {v5, v2, v3}, Lcn/mucang/android/jiakaoyi/teachingk2/v0/c/b;->f(Ljava/util/List;Lcn/mucang/android/jiakaoyi/teachingk2/data/TeachModel;I)Lcn/mucang/android/jiakaoyi/teachingk2/data/TeachModel;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return v0
.end method

.method private static e(Ljava/util/List;Ljava/util/List;Lcn/mucang/android/jiakaoyi/teachingk2/v0/c/b$b;)V
    .locals 17
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcn/mucang/android/jiakaoyi/teachingk2/data/TeachModel;",
            ">;",
            "Ljava/util/List<",
            "Lcn/mucang/android/jiakaoyi/teachingk2/data/TeachModel;",
            ">;",
            "Lcn/mucang/android/jiakaoyi/teachingk2/v0/c/b$b;",
            ")V"
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    .line 1
    new-instance v3, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    invoke-direct {v3}, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;-><init>()V

    .line 2
    new-instance v4, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    invoke-direct {v4}, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;-><init>()V

    .line 3
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 4
    sget-object v6, Lcn/mucang/android/jiakaoyi/hpmap/collision/k2/checker/SubStep;->Step3:Lcn/mucang/android/jiakaoyi/hpmap/collision/k2/checker/SubStep;

    invoke-virtual {v6}, Ljava/lang/Enum;->ordinal()I

    move-result v6

    invoke-static {v0, v6, v3, v4, v5}, Lcn/mucang/android/jiakaoyi/teachingk2/v0/c/b;->h(Ljava/util/List;ILcn/mucang/android/jiakaoyi/signal/pos/Pos;Lcn/mucang/android/jiakaoyi/signal/pos/Pos;Ljava/util/List;)V

    .line 5
    invoke-virtual {v3, v4}, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;->distanceSquare(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;)D

    move-result-wide v6

    const-wide/high16 v8, 0x4059000000000000L    # 100.0

    cmpg-double v10, v6, v8

    if-ltz v10, :cond_0

    invoke-virtual {v3, v4}, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;->distanceSquare(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;)D

    move-result-wide v6

    const-wide v10, 0x4107a20000000000L    # 193600.0

    cmpl-double v12, v6, v10

    if-lez v12, :cond_1

    .line 6
    :cond_0
    sget-object v6, Lcn/mucang/android/jiakaoyi/hpmap/collision/k2/checker/SubStep;->Step5:Lcn/mucang/android/jiakaoyi/hpmap/collision/k2/checker/SubStep;

    invoke-virtual {v6}, Ljava/lang/Enum;->ordinal()I

    move-result v6

    invoke-static {v0, v6, v3, v4, v5}, Lcn/mucang/android/jiakaoyi/teachingk2/v0/c/b;->h(Ljava/util/List;ILcn/mucang/android/jiakaoyi/signal/pos/Pos;Lcn/mucang/android/jiakaoyi/signal/pos/Pos;Ljava/util/List;)V

    .line 7
    :cond_1
    invoke-interface {v5}, Ljava/util/List;->isEmpty()Z

    move-result v6

    const/4 v7, 0x0

    const/4 v10, 0x1

    if-eqz v6, :cond_2

    const-wide/16 v11, 0x0

    goto :goto_0

    :cond_2
    invoke-interface {v5, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcn/mucang/android/jiakaoyi/teachingk2/elements/model/TraceItemModel;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v11

    sub-int/2addr v11, v10

    invoke-interface {v5, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    invoke-virtual {v6, v11}, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;->distanceTo(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;)D

    move-result-wide v11

    .line 8
    :goto_0
    invoke-interface {v5}, Ljava/util/List;->isEmpty()Z

    move-result v6

    const-wide/high16 v13, 0x401e000000000000L    # 7.5

    if-nez v6, :cond_4

    cmpg-double v6, v11, v8

    if-ltz v6, :cond_4

    const-wide v8, 0x407b800000000000L    # 440.0

    cmpl-double v6, v11, v8

    if-lez v6, :cond_3

    goto :goto_1

    :cond_3
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v6

    sub-int/2addr v6, v10

    invoke-interface {v5, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcn/mucang/android/jiakaoyi/teachingk2/elements/model/TraceItemModel;

    iget-wide v5, v5, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;->x:D

    goto :goto_2

    :cond_4
    :goto_1
    move-wide v5, v13

    .line 9
    :goto_2
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "\u67e5\u627e\u7684\u51fa\u5e93\u505c\u8f66\u70b9\u662f:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v5, v6}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string v5, ",\u7406\u8bba\u662f:7.5"

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcn/mucang/android/jiakaoyi/framework/log/f;->o(Ljava/lang/Object;)V

    .line 10
    invoke-interface/range {p0 .. p0}, Ljava/util/List;->isEmpty()Z

    .line 11
    iget-wide v5, v2, Lcn/mucang/android/jiakaoyi/teachingk2/v0/c/b$b;->f:D

    int-to-double v8, v10

    mul-double v5, v5, v8

    .line 12
    new-instance v8, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    iget-wide v9, v2, Lcn/mucang/android/jiakaoyi/teachingk2/v0/c/b$b;->e:D

    invoke-direct {v8, v9, v10, v5, v6}, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;-><init>(DD)V

    invoke-virtual {v3, v8}, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;->setPos(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;)Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    .line 13
    new-instance v2, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    invoke-direct {v2, v13, v14, v5, v6}, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;-><init>(DD)V

    invoke-virtual {v4, v2}, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;->setPos(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;)Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    const-wide/high16 v5, 0x403e000000000000L    # 30.0

    .line 14
    invoke-static {v3, v4, v5, v6}, Lcn/mucang/android/jiakaoyi/teachingk2/autocreate/i/f/b;->b(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;Lcn/mucang/android/jiakaoyi/signal/pos/Pos;D)Ljava/util/List;

    move-result-object v2

    .line 15
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_3
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_5

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    move-object v8, v4

    check-cast v8, Lcn/mucang/android/jiakaoyi/teachingk2/elements/model/TraceItemModel;

    const/4 v9, 0x0

    const/4 v10, 0x0

    .line 16
    sget-object v4, Lcn/mucang/android/jiakaoyi/engine/model/Step;->K2_DaoCheRuKu:Lcn/mucang/android/jiakaoyi/engine/model/Step;

    iget v11, v4, Lcn/mucang/android/jiakaoyi/engine/model/Step;->type:I

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    invoke-virtual/range {v8 .. v16}, Lcn/mucang/android/jiakaoyi/teachingk2/elements/model/TraceItemModel;->set(IIIIIIII)Lcn/mucang/android/jiakaoyi/teachingk2/elements/model/TraceItemModel;

    goto :goto_3

    .line 17
    :cond_5
    invoke-static {}, Lcn/mucang/android/jiakaoyi/signal/utils/f;->c()Z

    move-result v3

    if-eqz v3, :cond_6

    sget-object v3, Lcn/mucang/android/jiakaoyi/signal/center/model/Gear;->Gear1:Lcn/mucang/android/jiakaoyi/signal/center/model/Gear;

    goto :goto_4

    :cond_6
    sget-object v3, Lcn/mucang/android/jiakaoyi/signal/center/model/Gear;->GearD:Lcn/mucang/android/jiakaoyi/signal/center/model/Gear;

    .line 18
    :goto_4
    iget v3, v3, Lcn/mucang/android/jiakaoyi/signal/center/model/Gear;->gear:I

    invoke-static {v2, v3}, Lcn/mucang/android/jiakaoyi/teachingk2/v0/c/b;->c(Ljava/util/List;I)Ljava/util/List;

    move-result-object v3

    .line 19
    sget-object v4, Lcn/mucang/android/jiakaoyi/signal/center/model/Gear;->GearBack:Lcn/mucang/android/jiakaoyi/signal/center/model/Gear;

    iget v4, v4, Lcn/mucang/android/jiakaoyi/signal/center/model/Gear;->gear:I

    invoke-static {v2, v4}, Lcn/mucang/android/jiakaoyi/teachingk2/v0/c/b;->c(Ljava/util/List;I)Ljava/util/List;

    move-result-object v2

    .line 20
    invoke-static {v2}, Ljava/util/Collections;->reverse(Ljava/util/List;)V

    .line 21
    invoke-interface {v0, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcn/mucang/android/jiakaoyi/teachingk2/data/TeachModel;

    .line 22
    new-instance v4, Lcn/mucang/android/jiakaoyi/teachingk2/data/TeachModel;

    invoke-direct {v4}, Lcn/mucang/android/jiakaoyi/teachingk2/data/TeachModel;-><init>()V

    .line 23
    new-instance v5, Lcn/mucang/android/jiakaoyi/teachingk2/data/TeachModel;

    invoke-direct {v5}, Lcn/mucang/android/jiakaoyi/teachingk2/data/TeachModel;-><init>()V

    .line 24
    sget-object v6, Lcn/mucang/android/jiakaoyi/hpmap/collision/k2/checker/SubStep;->Step8:Lcn/mucang/android/jiakaoyi/hpmap/collision/k2/checker/SubStep;

    invoke-virtual {v6}, Ljava/lang/Enum;->ordinal()I

    move-result v7

    invoke-static {v0, v4, v7}, Lcn/mucang/android/jiakaoyi/teachingk2/v0/c/b;->b(Lcn/mucang/android/jiakaoyi/teachingk2/data/TeachModel;Lcn/mucang/android/jiakaoyi/teachingk2/data/TeachModel;I)V

    .line 25
    invoke-virtual {v6}, Ljava/lang/Enum;->ordinal()I

    move-result v7

    invoke-static {v0, v5, v7}, Lcn/mucang/android/jiakaoyi/teachingk2/v0/c/b;->b(Lcn/mucang/android/jiakaoyi/teachingk2/data/TeachModel;Lcn/mucang/android/jiakaoyi/teachingk2/data/TeachModel;I)V

    .line 26
    sget v7, Lcn/mucang/android/jiakaoyi/teachbase/R$string;->teachbase_stop_gear_r:I

    invoke-static {v7}, Lcn/mucang/android/jiakaoyi/framework/utils/k0;->a(I)Ljava/lang/String;

    move-result-object v7

    invoke-static {v4, v3, v7}, Lcn/mucang/android/jiakaoyi/teachingk2/v0/c/b;->l(Lcn/mucang/android/jiakaoyi/teachingk2/data/TeachModel;Ljava/util/List;Ljava/lang/String;)Lcn/mucang/android/jiakaoyi/teachingk2/elements/variable/NormalVariable;

    move-result-object v7

    .line 27
    sget v8, Lcn/mucang/android/jiakaoyi/teachbase/R$string;->teachbase_stop_on_hood_line:I

    invoke-static {v8}, Lcn/mucang/android/jiakaoyi/framework/utils/k0;->a(I)Ljava/lang/String;

    move-result-object v8

    invoke-static {v5, v8, v7, v4}, Lcn/mucang/android/jiakaoyi/teachingk2/v0/c/b;->m(Lcn/mucang/android/jiakaoyi/teachingk2/data/TeachModel;Ljava/lang/String;Lcn/mucang/android/jiakaoyi/teachingk2/elements/variable/NormalVariable;Lcn/mucang/android/jiakaoyi/teachingk2/data/TeachModel;)V

    .line 28
    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 29
    invoke-interface {v1, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 30
    invoke-virtual {v6}, Ljava/lang/Enum;->ordinal()I

    move-result v4

    invoke-static {v3, v0, v4}, Lcn/mucang/android/jiakaoyi/teachingk2/v0/c/b;->f(Ljava/util/List;Lcn/mucang/android/jiakaoyi/teachingk2/data/TeachModel;I)Lcn/mucang/android/jiakaoyi/teachingk2/data/TeachModel;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 31
    new-instance v3, Lcn/mucang/android/jiakaoyi/teachingk2/data/TeachModel;

    invoke-direct {v3}, Lcn/mucang/android/jiakaoyi/teachingk2/data/TeachModel;-><init>()V

    .line 32
    new-instance v4, Lcn/mucang/android/jiakaoyi/teachingk2/data/TeachModel;

    invoke-direct {v4}, Lcn/mucang/android/jiakaoyi/teachingk2/data/TeachModel;-><init>()V

    .line 33
    sget-object v5, Lcn/mucang/android/jiakaoyi/hpmap/collision/k2/checker/SubStep;->Step9:Lcn/mucang/android/jiakaoyi/hpmap/collision/k2/checker/SubStep;

    invoke-virtual {v5}, Ljava/lang/Enum;->ordinal()I

    move-result v6

    invoke-static {v0, v3, v6}, Lcn/mucang/android/jiakaoyi/teachingk2/v0/c/b;->b(Lcn/mucang/android/jiakaoyi/teachingk2/data/TeachModel;Lcn/mucang/android/jiakaoyi/teachingk2/data/TeachModel;I)V

    .line 34
    invoke-virtual {v5}, Ljava/lang/Enum;->ordinal()I

    move-result v6

    invoke-static {v0, v4, v6}, Lcn/mucang/android/jiakaoyi/teachingk2/v0/c/b;->b(Lcn/mucang/android/jiakaoyi/teachingk2/data/TeachModel;Lcn/mucang/android/jiakaoyi/teachingk2/data/TeachModel;I)V

    .line 35
    invoke-static {}, Lcn/mucang/android/jiakaoyi/signal/utils/f;->c()Z

    move-result v6

    if-eqz v6, :cond_7

    .line 36
    sget v6, Lcn/mucang/android/jiakaoyi/teachbase/R$string;->teachbase_stop_gear_1:I

    invoke-static {v6}, Lcn/mucang/android/jiakaoyi/framework/utils/k0;->a(I)Ljava/lang/String;

    move-result-object v6

    goto :goto_5

    .line 37
    :cond_7
    sget v6, Lcn/mucang/android/jiakaoyi/teachbase/R$string;->teachbase_stop_gear_d:I

    invoke-static {v6}, Lcn/mucang/android/jiakaoyi/framework/utils/k0;->a(I)Ljava/lang/String;

    move-result-object v6

    .line 38
    :goto_5
    invoke-static {v3, v2, v6}, Lcn/mucang/android/jiakaoyi/teachingk2/v0/c/b;->l(Lcn/mucang/android/jiakaoyi/teachingk2/data/TeachModel;Ljava/util/List;Ljava/lang/String;)Lcn/mucang/android/jiakaoyi/teachingk2/elements/variable/NormalVariable;

    move-result-object v6

    .line 39
    sget v7, Lcn/mucang/android/jiakaoyi/teachbase/R$string;->teachbase_slow_back_attention:I

    invoke-static {v7}, Lcn/mucang/android/jiakaoyi/framework/utils/k0;->a(I)Ljava/lang/String;

    move-result-object v7

    invoke-static {v4, v7, v6, v3}, Lcn/mucang/android/jiakaoyi/teachingk2/v0/c/b;->m(Lcn/mucang/android/jiakaoyi/teachingk2/data/TeachModel;Ljava/lang/String;Lcn/mucang/android/jiakaoyi/teachingk2/elements/variable/NormalVariable;Lcn/mucang/android/jiakaoyi/teachingk2/data/TeachModel;)V

    .line 40
    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 41
    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 42
    invoke-virtual {v5}, Ljava/lang/Enum;->ordinal()I

    move-result v3

    invoke-static {v2, v0, v3}, Lcn/mucang/android/jiakaoyi/teachingk2/v0/c/b;->f(Ljava/util/List;Lcn/mucang/android/jiakaoyi/teachingk2/data/TeachModel;I)Lcn/mucang/android/jiakaoyi/teachingk2/data/TeachModel;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method private static f(Ljava/util/List;Lcn/mucang/android/jiakaoyi/teachingk2/data/TeachModel;I)Lcn/mucang/android/jiakaoyi/teachingk2/data/TeachModel;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcn/mucang/android/jiakaoyi/teachingk2/elements/model/TraceItemModel;",
            ">;",
            "Lcn/mucang/android/jiakaoyi/teachingk2/data/TeachModel;",
            "I)",
            "Lcn/mucang/android/jiakaoyi/teachingk2/data/TeachModel;"
        }
    .end annotation

    .line 1
    new-instance v0, Lcn/mucang/android/jiakaoyi/teachingk2/data/TeachModel;

    invoke-direct {v0}, Lcn/mucang/android/jiakaoyi/teachingk2/data/TeachModel;-><init>()V

    .line 2
    invoke-static {p1, v0, p2}, Lcn/mucang/android/jiakaoyi/teachingk2/v0/c/b;->b(Lcn/mucang/android/jiakaoyi/teachingk2/data/TeachModel;Lcn/mucang/android/jiakaoyi/teachingk2/data/TeachModel;I)V

    .line 3
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, v0, Lcn/mucang/android/jiakaoyi/teachingk2/data/TeachModel;->data:Ljava/util/List;

    .line 4
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, v0, Lcn/mucang/android/jiakaoyi/teachingk2/data/TeachModel;->variableList:Ljava/util/List;

    .line 5
    iget-object p1, v0, Lcn/mucang/android/jiakaoyi/teachingk2/data/TeachModel;->data:Ljava/util/List;

    new-instance p2, Lcn/mucang/android/jiakaoyi/teachingk2/form/model/VoiceModel;

    const-string v1, "\u6807\u51c6\u8f68\u8ff9"

    invoke-direct {p2, v1}, Lcn/mucang/android/jiakaoyi/teachingk2/form/model/VoiceModel;-><init>(Ljava/lang/String;)V

    invoke-interface {p1, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 6
    new-instance p1, Lcn/mucang/android/jiakaoyi/teachingk2/elements/variable/TraceVariable;

    invoke-direct {p1}, Lcn/mucang/android/jiakaoyi/teachingk2/elements/variable/TraceVariable;-><init>()V

    .line 7
    iput-object p0, p1, Lcn/mucang/android/jiakaoyi/teachingk2/elements/variable/TraceVariable;->traces:Ljava/util/List;

    const/16 p0, 0x3e8

    .line 8
    iput p0, p1, Lcn/mucang/android/jiakaoyi/teachingk2/elements/variable/TraceVariable;->range:I

    .line 9
    iget-object p0, v0, Lcn/mucang/android/jiakaoyi/teachingk2/data/TeachModel;->variableList:Ljava/util/List;

    invoke-interface {p0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object v0
.end method

.method private static g(Ljava/util/List;)Z
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcn/mucang/android/jiakaoyi/teachingk2/data/TeachModel;",
            ">;)Z"
        }
    .end annotation

    const/4 p0, 0x1

    return p0
.end method

.method private static h(Ljava/util/List;ILcn/mucang/android/jiakaoyi/signal/pos/Pos;Lcn/mucang/android/jiakaoyi/signal/pos/Pos;Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcn/mucang/android/jiakaoyi/teachingk2/data/TeachModel;",
            ">;I",
            "Lcn/mucang/android/jiakaoyi/signal/pos/Pos;",
            "Lcn/mucang/android/jiakaoyi/signal/pos/Pos;",
            "Ljava/util/List<",
            "Lcn/mucang/android/jiakaoyi/teachingk2/elements/model/TraceItemModel;",
            ">;)V"
        }
    .end annotation

    const-wide/16 v0, 0x0

    .line 1
    invoke-virtual {p2, v0, v1, v0, v1}, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;->setPos(DD)Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    .line 2
    invoke-virtual {p3, v0, v1, v0, v1}, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;->setPos(DD)Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    .line 3
    invoke-interface {p4}, Ljava/util/List;->clear()V

    .line 4
    invoke-static {p0, p1}, Lcn/mucang/android/jiakaoyi/teachingk2/v0/c/b;->k(Ljava/util/List;I)Ljava/util/List;

    move-result-object p0

    if-nez p0, :cond_0

    return-void

    :cond_0
    const/4 p1, 0x0

    .line 5
    invoke-interface {p0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    invoke-virtual {p2, p1}, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;->setPos(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;)Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    .line 6
    invoke-static {p0}, Lcn/mucang/android/jiakaoyi/teachingk2/v0/c/b;->j(Ljava/util/List;)D

    move-result-wide p1

    const-wide v0, 0x40a7700000000000L    # 3000.0

    cmpl-double v2, p1, v0

    if-lez v2, :cond_1

    const-wide p1, 0x3fb999999999999aL    # 0.1

    goto :goto_0

    :cond_1
    const-wide/high16 p1, 0x3ff0000000000000L    # 1.0

    .line 7
    :goto_0
    invoke-static {p0, p1, p2, p4}, Lcn/mucang/android/jiakaoyi/teachingk2/v0/c/b;->i(Ljava/util/List;DLjava/util/List;)Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    move-result-object p0

    if-eqz p0, :cond_2

    .line 8
    invoke-virtual {p3, p0}, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;->setPos(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;)Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    :cond_2
    return-void
.end method

.method private static i(Ljava/util/List;DLjava/util/List;)Lcn/mucang/android/jiakaoyi/signal/pos/Pos;
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcn/mucang/android/jiakaoyi/teachingk2/elements/model/TraceItemModel;",
            ">;D",
            "Ljava/util/List<",
            "Lcn/mucang/android/jiakaoyi/teachingk2/elements/model/TraceItemModel;",
            ">;)",
            "Lcn/mucang/android/jiakaoyi/signal/pos/Pos;"
        }
    .end annotation

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 1
    :goto_0
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_5

    .line 2
    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcn/mucang/android/jiakaoyi/teachingk2/elements/model/TraceItemModel;

    iget-short v2, v2, Lcn/mucang/android/jiakaoyi/teachingk2/elements/model/TraceItemModel;->wheel:S

    int-to-double v2, v2

    mul-double v2, v2, p1

    add-int/lit8 v4, v1, 0x1

    move v5, v4

    .line 3
    :goto_1
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v6

    const/4 v7, 0x1

    if-ge v5, v6, :cond_1

    add-int/lit8 v6, v1, 0x14

    if-ge v5, v6, :cond_1

    .line 4
    invoke-interface {p0, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcn/mucang/android/jiakaoyi/teachingk2/elements/model/TraceItemModel;

    iget-short v6, v6, Lcn/mucang/android/jiakaoyi/teachingk2/elements/model/TraceItemModel;->wheel:S

    int-to-double v8, v6

    mul-double v8, v8, p1

    sub-double/2addr v8, v2

    .line 5
    invoke-static {v8, v9}, Ljava/lang/Math;->abs(D)D

    move-result-wide v8

    const-wide v10, 0x4076800000000000L    # 360.0

    cmpl-double v6, v8, v10

    if-lez v6, :cond_0

    const/4 v6, 0x1

    goto :goto_2

    :cond_0
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    :cond_1
    const/4 v5, 0x0

    const/4 v6, 0x0

    :goto_2
    if-eqz v6, :cond_4

    .line 6
    :goto_3
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v6

    if-ge v4, v6, :cond_3

    if-gt v4, v5, :cond_3

    .line 7
    invoke-interface {p0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcn/mucang/android/jiakaoyi/teachingk2/elements/model/TraceItemModel;

    iget-short v6, v6, Lcn/mucang/android/jiakaoyi/teachingk2/elements/model/TraceItemModel;->wheel:S

    int-to-double v8, v6

    mul-double v8, v8, p1

    sub-double/2addr v8, v2

    .line 8
    invoke-static {v8, v9}, Ljava/lang/Math;->abs(D)D

    move-result-wide v8

    const-wide v10, 0x4046800000000000L    # 45.0

    cmpl-double v6, v8, v10

    if-lez v6, :cond_2

    add-int/lit8 v1, v4, -0x1

    goto :goto_4

    :cond_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_3

    .line 9
    :cond_3
    :goto_4
    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    move-result p1

    add-int/lit8 p2, p1, 0x1

    .line 10
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v1

    invoke-static {p2, v1}, Ljava/lang/Math;->min(II)I

    move-result p2

    invoke-interface {p0, v0, p2}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object p2

    invoke-interface {p3, p2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 11
    invoke-interface {p0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    return-object p0

    :cond_4
    move v1, v4

    goto/16 :goto_0

    :cond_5
    const/4 p0, 0x0

    return-object p0
.end method

.method private static j(Ljava/util/List;)D
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcn/mucang/android/jiakaoyi/teachingk2/elements/model/TraceItemModel;",
            ">;)D"
        }
    .end annotation

    .line 1
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    const-wide/16 v0, 0x0

    :cond_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcn/mucang/android/jiakaoyi/teachingk2/elements/model/TraceItemModel;

    .line 2
    iget-short v3, v2, Lcn/mucang/android/jiakaoyi/teachingk2/elements/model/TraceItemModel;->wheel:S

    invoke-static {v3}, Ljava/lang/Math;->abs(I)I

    move-result v3

    int-to-double v3, v3

    cmpl-double v5, v3, v0

    if-lez v5, :cond_0

    .line 3
    iget-short v0, v2, Lcn/mucang/android/jiakaoyi/teachingk2/elements/model/TraceItemModel;->wheel:S

    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v0

    int-to-double v0, v0

    const-wide v2, 0x40a7700000000000L    # 3000.0

    cmpl-double v4, v0, v2

    if-lez v4, :cond_0

    :cond_1
    return-wide v0
.end method

.method private static k(Ljava/util/List;I)Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcn/mucang/android/jiakaoyi/teachingk2/data/TeachModel;",
            ">;I)",
            "Ljava/util/List<",
            "Lcn/mucang/android/jiakaoyi/teachingk2/elements/model/TraceItemModel;",
            ">;"
        }
    .end annotation

    .line 1
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcn/mucang/android/jiakaoyi/teachingk2/data/TeachModel;

    .line 2
    iget v1, v0, Lcn/mucang/android/jiakaoyi/teachingk2/data/TeachModel;->subStep:I

    if-eq v1, p1, :cond_1

    goto :goto_0

    .line 3
    :cond_1
    invoke-virtual {v0}, Lcn/mucang/android/jiakaoyi/teachingk2/data/TeachModel;->getTraceVariable()Lcn/mucang/android/jiakaoyi/teachingk2/elements/variable/TraceVariable;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 4
    iget-object p0, v0, Lcn/mucang/android/jiakaoyi/teachingk2/elements/variable/TraceVariable;->traces:Ljava/util/List;

    return-object p0

    :cond_2
    const/4 p0, 0x0

    return-object p0
.end method

.method private static l(Lcn/mucang/android/jiakaoyi/teachingk2/data/TeachModel;Ljava/util/List;Ljava/lang/String;)Lcn/mucang/android/jiakaoyi/teachingk2/elements/variable/NormalVariable;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcn/mucang/android/jiakaoyi/teachingk2/data/TeachModel;",
            "Ljava/util/List<",
            "Lcn/mucang/android/jiakaoyi/teachingk2/elements/model/TraceItemModel;",
            ">;",
            "Ljava/lang/String;",
            ")",
            "Lcn/mucang/android/jiakaoyi/teachingk2/elements/variable/NormalVariable;"
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/data/TeachModel;->data:Ljava/util/List;

    .line 2
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/data/TeachModel;->variableList:Ljava/util/List;

    .line 3
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/data/TeachModel;->data:Ljava/util/List;

    new-instance v1, Lcn/mucang/android/jiakaoyi/teachingk2/form/model/VoiceModel;

    invoke-direct {v1, p2}, Lcn/mucang/android/jiakaoyi/teachingk2/form/model/VoiceModel;-><init>(Ljava/lang/String;)V

    const/4 p2, 0x1

    invoke-virtual {v1, p2}, Lcn/mucang/android/jiakaoyi/teachingk2/form/model/VoiceModel;->sound(Z)Lcn/mucang/android/jiakaoyi/teachingk2/form/model/VoiceModel;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 4
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    sub-int/2addr v0, p2

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    .line 5
    new-instance v0, Lcn/mucang/android/jiakaoyi/teachingk2/elements/variable/NormalVariable;

    invoke-direct {v0}, Lcn/mucang/android/jiakaoyi/teachingk2/elements/variable/NormalVariable;-><init>()V

    const/4 v1, 0x0

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    const-wide/high16 v1, 0x4049000000000000L    # 50.0

    invoke-static {p1, p2, v1, v2}, Lcn/mucang/android/jiakaoyi/hpmap/d/a;->s(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;Lcn/mucang/android/jiakaoyi/signal/pos/Pos;D)Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    move-result-object p1

    invoke-virtual {v0, p2, p1}, Lcn/mucang/android/jiakaoyi/teachingk2/elements/variable/NormalVariable;->setPos(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;Lcn/mucang/android/jiakaoyi/signal/pos/Pos;)Lcn/mucang/android/jiakaoyi/teachingk2/elements/variable/NormalVariable;

    move-result-object p1

    .line 6
    iget-object p2, p0, Lcn/mucang/android/jiakaoyi/teachingk2/data/TeachModel;->variableList:Ljava/util/List;

    invoke-interface {p2, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const/4 p2, 0x2

    .line 7
    iput p2, p0, Lcn/mucang/android/jiakaoyi/teachingk2/data/TeachModel;->pointType:I

    return-object p1
.end method

.method private static m(Lcn/mucang/android/jiakaoyi/teachingk2/data/TeachModel;Ljava/lang/String;Lcn/mucang/android/jiakaoyi/teachingk2/elements/variable/NormalVariable;Lcn/mucang/android/jiakaoyi/teachingk2/data/TeachModel;)V
    .locals 2

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/data/TeachModel;->data:Ljava/util/List;

    .line 2
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/data/TeachModel;->variableList:Ljava/util/List;

    .line 3
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/data/TeachModel;->data:Ljava/util/List;

    new-instance v1, Lcn/mucang/android/jiakaoyi/teachingk2/form/model/VoiceModel;

    invoke-direct {v1, p1}, Lcn/mucang/android/jiakaoyi/teachingk2/form/model/VoiceModel;-><init>(Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 4
    new-instance p1, Lcn/mucang/android/jiakaoyi/teachingk2/elements/variable/NormalVariable;

    invoke-direct {p1}, Lcn/mucang/android/jiakaoyi/teachingk2/elements/variable/NormalVariable;-><init>()V

    iget-object v0, p2, Lcn/mucang/android/jiakaoyi/teachingk2/elements/variable/NormalVariable;->posOnLine:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    iget-object v1, p2, Lcn/mucang/android/jiakaoyi/teachingk2/elements/variable/NormalVariable;->forwardPoint:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    invoke-virtual {p1, v0, v1}, Lcn/mucang/android/jiakaoyi/teachingk2/elements/variable/NormalVariable;->setPos(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;Lcn/mucang/android/jiakaoyi/signal/pos/Pos;)Lcn/mucang/android/jiakaoyi/teachingk2/elements/variable/NormalVariable;

    move-result-object p1

    .line 5
    iget-wide v0, p2, Lcn/mucang/android/jiakaoyi/teachingk2/elements/variable/NormalVariable;->key:J

    invoke-virtual {p1, v0, v1}, Lcn/mucang/android/jiakaoyi/teachingk2/elements/variable/NormalVariable;->setReportKey(J)Lcn/mucang/android/jiakaoyi/teachingk2/elements/variable/NormalVariable;

    .line 6
    iget-object p2, p0, Lcn/mucang/android/jiakaoyi/teachingk2/data/TeachModel;->variableList:Ljava/util/List;

    invoke-interface {p2, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const/4 p1, 0x1

    .line 7
    iput p1, p0, Lcn/mucang/android/jiakaoyi/teachingk2/data/TeachModel;->pointType:I

    .line 8
    iput-object p3, p0, Lcn/mucang/android/jiakaoyi/teachingk2/data/TeachModel;->reportModel:Lcn/mucang/android/jiakaoyi/teachingk2/data/TeachModel;

    return-void
.end method

.method public static n()V
    .locals 6

    .line 1
    invoke-static {}, Lcn/mucang/android/jiakaoyi/teachingk2/res/n;->b()Lcn/mucang/android/jiakaoyi/teachingk2/res/n;

    move-result-object v0

    iget-object v0, v0, Lcn/mucang/android/jiakaoyi/teachingk2/res/n;->i:Ljava/util/HashMap;

    sget-object v1, Lcn/mucang/android/jiakaoyi/engine/model/Step;->K2_DaoCheRuKu:Lcn/mucang/android/jiakaoyi/engine/model/Step;

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 2
    invoke-static {v0}, Lcn/mucang/android/core/utils/g;->b(Ljava/util/Collection;)Z

    move-result v1

    if-eqz v1, :cond_0

    return-void

    .line 3
    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    .line 4
    invoke-static {v0}, Lcn/mucang/android/jiakaoyi/teachingk2/v0/c/b;->r(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    .line 5
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    :goto_0
    if-ltz v3, :cond_2

    .line 6
    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    invoke-static {v4}, Lcn/mucang/android/jiakaoyi/teachingk2/v0/c/b;->g(Ljava/util/List;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 7
    invoke-interface {v0, v3}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    :cond_1
    add-int/lit8 v3, v3, -0x1

    goto :goto_0

    .line 8
    :cond_2
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 9
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    .line 10
    invoke-static {v4}, Lcn/mucang/android/jiakaoyi/teachingk2/v0/c/b;->s(Ljava/util/List;)Ljava/util/List;

    move-result-object v4

    .line 11
    invoke-static {v4}, Lcn/mucang/android/core/utils/g;->b(Ljava/util/Collection;)Z

    move-result v5

    if-eqz v5, :cond_3

    goto :goto_1

    .line 12
    :cond_3
    invoke-interface {v3, v4}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto :goto_1

    .line 13
    :cond_4
    invoke-static {v3}, Lcn/mucang/android/core/utils/g;->d(Ljava/util/Collection;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 14
    invoke-static {}, Lcn/mucang/android/jiakaoyi/teachingk2/res/n;->b()Lcn/mucang/android/jiakaoyi/teachingk2/res/n;

    move-result-object v0

    iget-object v0, v0, Lcn/mucang/android/jiakaoyi/teachingk2/res/n;->j:Ljava/util/HashMap;

    sget-object v4, Lcn/mucang/android/jiakaoyi/engine/model/Step;->K2_DaoCheRuKu:Lcn/mucang/android/jiakaoyi/engine/model/Step;

    invoke-virtual {v0, v4, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 15
    :cond_5
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "\u9996\u8bad\u6570\u636e\u521d\u59cb\u5316\u65f6\u95f4:"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    sub-long/2addr v3, v1

    invoke-virtual {v0, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcn/mucang/android/jiakaoyi/framework/log/f;->o(Ljava/lang/Object;)V

    return-void
.end method

.method private static o(Lcn/mucang/android/jiakaoyi/teachingk2/data/TeachModel;Ljava/lang/String;Lcn/mucang/android/jiakaoyi/teachingk2/elements/variable/NormalVariable;Z)V
    .locals 2

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/data/TeachModel;->data:Ljava/util/List;

    .line 2
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/data/TeachModel;->variableList:Ljava/util/List;

    .line 3
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/data/TeachModel;->data:Ljava/util/List;

    new-instance v1, Lcn/mucang/android/jiakaoyi/teachingk2/form/model/VoiceModel;

    invoke-direct {v1, p1}, Lcn/mucang/android/jiakaoyi/teachingk2/form/model/VoiceModel;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p3}, Lcn/mucang/android/jiakaoyi/teachingk2/form/model/VoiceModel;->sound(Z)Lcn/mucang/android/jiakaoyi/teachingk2/form/model/VoiceModel;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 4
    iget-object p1, p0, Lcn/mucang/android/jiakaoyi/teachingk2/data/TeachModel;->variableList:Ljava/util/List;

    invoke-interface {p1, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const/4 p1, 0x2

    .line 5
    iput p1, p0, Lcn/mucang/android/jiakaoyi/teachingk2/data/TeachModel;->pointType:I

    return-void
.end method

.method private static p(Lcn/mucang/android/jiakaoyi/teachingk2/data/TeachModel;)Z
    .locals 4

    .line 1
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/data/TeachModel;->parkingSpaceBindId:Ljava/lang/String;

    invoke-static {v0}, Lcn/mucang/android/core/utils/n0;->g(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    .line 2
    :cond_0
    iget-object p0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/data/TeachModel;->errors:Ljava/util/List;

    const/4 v0, 0x1

    if-nez p0, :cond_1

    return v0

    .line 3
    :cond_1
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_2
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_5

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcn/mucang/android/jiakaoyi/teachingk2/data/ErrorModel;

    .line 4
    iget-object v3, v2, Lcn/mucang/android/jiakaoyi/teachingk2/data/ErrorModel;->errorVariables:Ljava/util/List;

    invoke-static {v3}, Lcn/mucang/android/core/utils/g;->b(Ljava/util/Collection;)Z

    move-result v3

    if-eqz v3, :cond_3

    goto :goto_0

    .line 5
    :cond_3
    iget-object v2, v2, Lcn/mucang/android/jiakaoyi/teachingk2/data/ErrorModel;->errorVariables:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_4
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcn/mucang/android/jiakaoyi/teachingk2/elements/Variable;

    .line 6
    instance-of v3, v3, Lcn/mucang/android/jiakaoyi/teachingk2/elements/variable/StopPositionVariable;

    if-eqz v3, :cond_4

    return v1

    :cond_5
    return v0
.end method

.method private static q(Ljava/util/Map;Ljava/lang/String;Lcn/mucang/android/jiakaoyi/teachingk2/data/TeachModel;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lcn/mucang/android/jiakaoyi/teachingk2/data/TeachModel;",
            ">;>;",
            "Ljava/lang/String;",
            "Lcn/mucang/android/jiakaoyi/teachingk2/data/TeachModel;",
            ")V"
        }
    .end annotation

    .line 1
    invoke-interface {p0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    if-nez v0, :cond_0

    .line 2
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 3
    invoke-interface {p0, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    :cond_0
    invoke-interface {v0, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method private static r(Ljava/util/List;)Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcn/mucang/android/jiakaoyi/teachingk2/data/TeachModel;",
            ">;)",
            "Ljava/util/List<",
            "Ljava/util/List<",
            "Lcn/mucang/android/jiakaoyi/teachingk2/data/TeachModel;",
            ">;>;"
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 2
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcn/mucang/android/jiakaoyi/teachingk2/data/TeachModel;

    .line 3
    invoke-static {v1}, Lcn/mucang/android/jiakaoyi/teachingk2/v0/c/b;->p(Lcn/mucang/android/jiakaoyi/teachingk2/data/TeachModel;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 4
    iget v2, v1, Lcn/mucang/android/jiakaoyi/teachingk2/data/TeachModel;->stepDirection:I

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2, v1}, Lcn/mucang/android/jiakaoyi/teachingk2/v0/c/b;->q(Ljava/util/Map;Ljava/lang/String;Lcn/mucang/android/jiakaoyi/teachingk2/data/TeachModel;)V

    goto :goto_0

    .line 5
    :cond_1
    new-instance p0, Ljava/util/ArrayList;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    return-object p0
.end method

.method private static s(Ljava/util/List;)Ljava/util/List;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcn/mucang/android/jiakaoyi/teachingk2/data/TeachModel;",
            ">;)",
            "Ljava/util/List<",
            "Lcn/mucang/android/jiakaoyi/teachingk2/data/TeachModel;",
            ">;"
        }
    .end annotation

    .line 1
    invoke-static {}, Lcn/mucang/android/jiakaoyi/teachingk2/v0/c/b;->a()Lcn/mucang/android/jiakaoyi/teachingk2/v0/c/b$b;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 2
    :cond_0
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 3
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_1
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcn/mucang/android/jiakaoyi/teachingk2/data/TeachModel;

    .line 4
    iget v4, v3, Lcn/mucang/android/jiakaoyi/teachingk2/data/TeachModel;->subStep:I

    const/4 v5, 0x2

    if-eq v4, v5, :cond_2

    const/4 v5, 0x3

    if-eq v4, v5, :cond_2

    const/4 v5, 0x4

    if-ne v4, v5, :cond_1

    .line 5
    :cond_2
    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 6
    :cond_3
    invoke-static {p0, v1, v0}, Lcn/mucang/android/jiakaoyi/teachingk2/v0/c/b;->d(Ljava/util/List;Ljava/util/List;Lcn/mucang/android/jiakaoyi/teachingk2/v0/c/b$b;)Z

    .line 7
    invoke-static {p0, v1, v0}, Lcn/mucang/android/jiakaoyi/teachingk2/v0/c/b;->e(Ljava/util/List;Ljava/util/List;Lcn/mucang/android/jiakaoyi/teachingk2/v0/c/b$b;)V

    return-object v1
.end method
