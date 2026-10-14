.class public Lcn/mucang/android/jiakaoyi/teachingk2/safe/detector/d;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static a(Lcn/mucang/android/jiakaoyi/signal/c/e;D)Ljava/util/List;
    .locals 15
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcn/mucang/android/jiakaoyi/signal/c/e;",
            "D)",
            "Ljava/util/List<",
            "Lcn/mucang/android/jiakaoyi/signal/pos/Pos;",
            ">;"
        }
    .end annotation

    .line 1
    invoke-interface {p0}, Lcn/mucang/android/jiakaoyi/signal/c/e;->c()Lcn/mucang/android/jiakaoyi/signal/center/model/CarPos;

    move-result-object v0

    .line 2
    invoke-interface {p0}, Lcn/mucang/android/jiakaoyi/signal/c/e;->d()Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;

    move-result-object v1

    iget v1, v1, Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;->r:I

    int-to-double v1, v1

    .line 3
    sget-wide v3, Lcn/mucang/android/jiakaoyi/framework/utils/o;->b:D

    mul-double v1, v1, v3

    sget-wide v3, Lcn/mucang/android/jiakaoyi/framework/utils/o;->a:D

    div-double/2addr v1, v3

    .line 4
    invoke-static {v1, v2}, Ljava/lang/Math;->abs(D)D

    move-result-wide v3

    const-wide/16 v5, 0x0

    const-wide v7, 0x3ee4f8b588e368f1L    # 1.0E-5

    const/4 v9, 0x1

    const/4 v10, -0x1

    cmpg-double v11, v3, v7

    if-gez v11, :cond_1

    cmpl-double v3, v1, v5

    if-ltz v3, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, -0x1

    :goto_0
    int-to-double v1, v1

    mul-double v1, v1, v7

    .line 5
    :cond_1
    invoke-static {v1, v2}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v3

    .line 6
    iget-wide v7, v0, Lcn/mucang/android/jiakaoyi/signal/center/model/CarPos;->L:D

    .line 7
    invoke-static {v3, v4}, Ljava/lang/Math;->tan(D)D

    move-result-wide v3

    div-double/2addr v7, v3

    invoke-static {v7, v8}, Ljava/lang/Math;->abs(D)D

    move-result-wide v3

    .line 8
    iget-wide v7, v0, Lcn/mucang/android/jiakaoyi/signal/center/model/CarPos;->degree:D

    cmpl-double v11, v1, v5

    if-lez v11, :cond_2

    const/4 v1, 0x1

    goto :goto_1

    :cond_2
    const/4 v1, -0x1

    :goto_1
    mul-int/lit8 v2, v1, 0x5a

    int-to-double v5, v2

    add-double/2addr v7, v5

    .line 9
    invoke-static {v7, v8}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v5

    .line 10
    iget-object v2, v0, Lcn/mucang/android/jiakaoyi/signal/center/model/CarPos;->rearAxlePoint:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    .line 11
    new-instance v7, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    iget-wide v11, v2, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;->x:D

    invoke-static {v5, v6}, Ljava/lang/Math;->cos(D)D

    move-result-wide v13

    mul-double v13, v13, v3

    add-double/2addr v11, v13

    iget-wide v13, v2, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;->y:D

    invoke-static {v5, v6}, Ljava/lang/Math;->sin(D)D

    move-result-wide v5

    mul-double v5, v5, v3

    add-double/2addr v13, v5

    invoke-direct {v7, v11, v12, v13, v14}, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;-><init>(DD)V

    const/4 v2, 0x0

    .line 12
    invoke-interface {p0}, Lcn/mucang/android/jiakaoyi/signal/c/e;->d()Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;

    move-result-object v5

    iget-object v5, v5, Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;->m:Lcn/mucang/android/jiakaoyi/signal/center/model/Gear;

    .line 13
    sget-object v6, Lcn/mucang/android/jiakaoyi/signal/center/model/Gear;->GearN:Lcn/mucang/android/jiakaoyi/signal/center/model/Gear;

    if-eq v5, v6, :cond_5

    sget-object v8, Lcn/mucang/android/jiakaoyi/signal/center/model/Gear;->GearP:Lcn/mucang/android/jiakaoyi/signal/center/model/Gear;

    if-eq v5, v8, :cond_5

    sget-object v8, Lcn/mucang/android/jiakaoyi/signal/center/model/Gear;->Invalid:Lcn/mucang/android/jiakaoyi/signal/center/model/Gear;

    if-ne v5, v8, :cond_3

    goto :goto_2

    .line 14
    :cond_3
    sget-object v2, Lcn/mucang/android/jiakaoyi/signal/center/model/Gear;->GearBack:Lcn/mucang/android/jiakaoyi/signal/center/model/Gear;

    if-eq v5, v2, :cond_4

    invoke-interface {p0}, Lcn/mucang/android/jiakaoyi/signal/c/e;->d()Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;

    move-result-object v2

    iget-object v2, v2, Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;->F:Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel$Direction;

    sget-object v5, Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel$Direction;->Back:Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel$Direction;

    if-ne v2, v5, :cond_8

    :cond_4
    const/4 v9, -0x1

    goto :goto_4

    .line 15
    :cond_5
    :goto_2
    invoke-interface {p0}, Lcn/mucang/android/jiakaoyi/signal/c/e;->d()Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;

    move-result-object v8

    iget-object v8, v8, Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;->F:Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel$Direction;

    sget-object v11, Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel$Direction;->Back:Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel$Direction;

    if-ne v8, v11, :cond_6

    const/4 v9, -0x1

    goto :goto_3

    .line 16
    :cond_6
    invoke-interface {p0}, Lcn/mucang/android/jiakaoyi/signal/c/e;->d()Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;

    move-result-object v8

    iget-object v8, v8, Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;->F:Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel$Direction;

    sget-object v11, Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel$Direction;->Forward:Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel$Direction;

    if-ne v8, v11, :cond_7

    goto :goto_3

    :cond_7
    const/4 v9, 0x0

    :goto_3
    if-nez v9, :cond_8

    .line 17
    sget-object v2, Lcn/mucang/android/jiakaoyi/signal/h/a;->a:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v2

    if-eqz v2, :cond_8

    if-eq v5, v6, :cond_9

    sget-object v2, Lcn/mucang/android/jiakaoyi/signal/center/model/Gear;->Invalid:Lcn/mucang/android/jiakaoyi/signal/center/model/Gear;

    if-ne v5, v2, :cond_8

    goto :goto_5

    :cond_8
    :goto_4
    move v10, v9

    :cond_9
    :goto_5
    int-to-double v1, v1

    mul-double v1, v1, p1

    int-to-double v5, v10

    mul-double v1, v1, v5

    div-double/2addr v1, v3

    .line 18
    invoke-static {v1, v2}, Ljava/lang/Math;->sin(D)D

    move-result-wide v4

    .line 19
    invoke-static {v1, v2}, Ljava/lang/Math;->cos(D)D

    move-result-wide v2

    .line 20
    invoke-interface {p0}, Lcn/mucang/android/jiakaoyi/signal/c/e;->d()Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;

    move-result-object v1

    invoke-virtual {v1}, Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;->c()Z

    move-result v6

    move-object v1, v7

    invoke-static/range {v0 .. v6}, Lcn/mucang/android/jiakaoyi/teachingk2/safe/detector/d;->b(Lcn/mucang/android/jiakaoyi/signal/center/model/CarPos;Lcn/mucang/android/jiakaoyi/signal/pos/Pos;DDZ)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method private static b(Lcn/mucang/android/jiakaoyi/signal/center/model/CarPos;Lcn/mucang/android/jiakaoyi/signal/pos/Pos;DDZ)Ljava/util/List;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcn/mucang/android/jiakaoyi/signal/center/model/CarPos;",
            "Lcn/mucang/android/jiakaoyi/signal/pos/Pos;",
            "DDZ)",
            "Ljava/util/List<",
            "Lcn/mucang/android/jiakaoyi/signal/pos/Pos;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance p6, Ljava/util/ArrayList;

    invoke-direct {p6}, Ljava/util/ArrayList;-><init>()V

    .line 2
    iget-object p0, p0, Lcn/mucang/android/jiakaoyi/signal/center/model/CarPos;->carPoints:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    .line 3
    new-instance v1, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    invoke-direct {v1, v0}, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;-><init>(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;)V

    move-object v2, p1

    move-wide v3, p2

    move-wide v5, p4

    invoke-virtual/range {v1 .. v6}, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;->rotate(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;DD)Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    move-result-object v0

    invoke-interface {p6, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 4
    :cond_0
    sget-object p0, Lcn/mucang/android/jiakaoyi/signal/h/a;->a:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result p0

    if-eqz p0, :cond_1

    const-wide/high16 p0, 0x402e000000000000L    # 15.0

    goto :goto_1

    :cond_1
    const-wide/high16 p0, 0x4014000000000000L    # 5.0

    :goto_1
    const/4 p2, 0x0

    .line 5
    invoke-static {p6, p0, p1, p2}, Lcn/mucang/android/jiakaoyi/hpmap/d/a;->H(Ljava/util/List;DZ)Ljava/util/List;

    move-result-object p0

    .line 6
    invoke-interface {p0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p3

    add-int/lit8 p3, p3, -0x1

    invoke-interface {p0, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    invoke-virtual {p1, p3}, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;->distanceTo(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;)D

    move-result-wide p3

    const-wide/high16 p5, 0x4008000000000000L    # 3.0

    cmpl-double p1, p3, p5

    if-lez p1, :cond_2

    .line 7
    new-instance p1, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    invoke-interface {p0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    invoke-direct {p1, p2}, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;-><init>(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;)V

    invoke-interface {p0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_2
    return-object p0
.end method
