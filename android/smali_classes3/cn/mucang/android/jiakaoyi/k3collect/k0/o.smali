.class public Lcn/mucang/android/jiakaoyi/k3collect/k0/o;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static a(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;Lcn/mucang/android/jiakaoyi/signal/pos/Pos;)Lcn/mucang/android/jiakaoyi/signal/pos/Pos;
    .locals 10

    if-eqz p0, :cond_0

    if-eqz p1, :cond_0

    .line 1
    new-instance v7, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    iget-wide v0, p0, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;->x:D

    iget-wide v2, p1, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;->x:D

    add-double/2addr v0, v2

    const-wide/high16 v2, 0x4000000000000000L    # 2.0

    div-double v4, v0, v2

    iget-wide v0, p0, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;->y:D

    iget-wide v8, p1, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;->y:D

    add-double/2addr v0, v8

    div-double v8, v0, v2

    iget-wide v0, p0, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;->z:D

    iget-wide p0, p1, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;->z:D

    add-double/2addr v0, p0

    div-double p0, v0, v2

    move-object v0, v7

    move-wide v1, v4

    move-wide v3, v8

    move-wide v5, p0

    invoke-direct/range {v0 .. v6}, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;-><init>(DDD)V

    return-object v7

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public static b(Ljava/util/List;)Lcn/mucang/android/jiakaoyi/signal/pos/Pos;
    .locals 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcn/mucang/android/jiakaoyi/signal/pos/Pos;",
            ">;)",
            "Lcn/mucang/android/jiakaoyi/signal/pos/Pos;"
        }
    .end annotation

    .line 1
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_1

    .line 2
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const-wide/16 v1, 0x0

    move-wide v3, v1

    move-wide v5, v3

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    .line 3
    iget-wide v8, v7, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;->x:D

    add-double/2addr v1, v8

    .line 4
    iget-wide v8, v7, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;->y:D

    add-double/2addr v3, v8

    .line 5
    iget-wide v7, v7, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;->z:D

    add-double/2addr v5, v7

    goto :goto_0

    .line 6
    :cond_0
    new-instance v0, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v7

    int-to-double v7, v7

    div-double v8, v1, v7

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v1

    int-to-double v1, v1

    div-double v10, v3, v1

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p0

    int-to-double v1, p0

    div-double v12, v5, v1

    move-object v7, v0

    invoke-direct/range {v7 .. v13}, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;-><init>(DDD)V

    return-object v0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method

.method public static c(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;Lcn/mucang/android/jiakaoyi/signal/pos/Pos;Lcn/mucang/android/jiakaoyi/signal/pos/Pos;)Lcn/mucang/android/jiakaoyi/signal/pos/Pos;
    .locals 30

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    .line 1
    iget-wide v3, v0, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;->x:D

    mul-double v5, v3, v3

    iget-wide v7, v0, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;->y:D

    mul-double v9, v7, v7

    add-double/2addr v5, v9

    .line 2
    iget-wide v9, v1, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;->x:D

    mul-double v11, v9, v9

    iget-wide v13, v1, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;->y:D

    mul-double v15, v13, v13

    add-double/2addr v11, v15

    .line 3
    iget-wide v0, v2, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;->x:D

    mul-double v15, v0, v0

    move-wide/from16 v17, v13

    iget-wide v13, v2, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;->y:D

    mul-double v19, v13, v13

    add-double v15, v15, v19

    sub-double/2addr v11, v5

    sub-double v19, v0, v3

    mul-double v19, v19, v11

    sub-double/2addr v15, v5

    sub-double v5, v9, v3

    mul-double v5, v5, v15

    sub-double v19, v19, v5

    const-wide/high16 v5, 0x3fe0000000000000L    # 0.5

    mul-double v19, v19, v5

    sub-double v21, v7, v13

    sub-double v23, v9, v3

    mul-double v21, v21, v23

    sub-double v23, v7, v17

    sub-double v25, v0, v3

    mul-double v23, v23, v25

    sub-double v21, v21, v23

    div-double v26, v19, v21

    sub-double v19, v13, v7

    mul-double v11, v11, v19

    sub-double v19, v17, v7

    mul-double v15, v15, v19

    sub-double/2addr v11, v15

    mul-double v11, v11, v5

    sub-double v5, v17, v7

    sub-double v0, v3, v0

    mul-double v5, v5, v0

    sub-double/2addr v13, v7

    sub-double/2addr v3, v9

    mul-double v13, v13, v3

    sub-double/2addr v5, v13

    div-double v24, v11, v5

    .line 4
    new-instance v0, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    move-object/from16 v1, p0

    iget-wide v1, v1, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;->z:D

    move-object/from16 v23, v0

    move-wide/from16 v28, v1

    invoke-direct/range {v23 .. v29}, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;-><init>(DDD)V

    return-object v0
.end method

.method public static d(Ljava/util/List;DZ)Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcn/mucang/android/jiakaoyi/signal/pos/Pos;",
            ">;DZ)",
            "Ljava/util/List<",
            "Lcn/mucang/android/jiakaoyi/signal/pos/Pos;",
            ">;"
        }
    .end annotation

    .line 1
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x2

    if-ge v0, v1, :cond_0

    .line 2
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1, p0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    return-object p1

    .line 3
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const/4 v2, 0x0

    :goto_0
    add-int/lit8 v3, v2, 0x1

    .line 4
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v4

    if-ge v3, v4, :cond_1

    .line 5
    invoke-interface {p0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    .line 6
    invoke-interface {p0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    .line 7
    invoke-static {v4, v3, p1, p2, p3}, Lcn/mucang/android/jiakaoyi/hpmap/d/a;->o(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;Lcn/mucang/android/jiakaoyi/signal/pos/Pos;DZ)Lcn/mucang/android/jiakaoyi/hpmap/model/Line;

    move-result-object v3

    .line 8
    iget-object v4, v3, Lcn/mucang/android/jiakaoyi/hpmap/model/Line;->start:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 9
    iget-object v3, v3, Lcn/mucang/android/jiakaoyi/hpmap/model/Line;->end:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x2

    goto :goto_0

    .line 10
    :cond_1
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v2

    rem-int/2addr v2, v1

    const/4 v3, 0x1

    if-ne v2, v3, :cond_2

    .line 11
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v2

    sub-int/2addr v2, v1

    invoke-interface {p0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    .line 12
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v2

    sub-int/2addr v2, v3

    invoke-interface {p0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    .line 13
    invoke-static {v1, p0, p1, p2, p3}, Lcn/mucang/android/jiakaoyi/hpmap/d/a;->o(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;Lcn/mucang/android/jiakaoyi/signal/pos/Pos;DZ)Lcn/mucang/android/jiakaoyi/hpmap/model/Line;

    move-result-object p0

    .line 14
    iget-object p0, p0, Lcn/mucang/android/jiakaoyi/hpmap/model/Line;->end:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    invoke-interface {v0, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_2
    return-object v0
.end method

.method public static e(Lcn/mucang/android/jiakaoyi/signal/i/a;Ljava/util/List;)Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcn/mucang/android/jiakaoyi/signal/i/a;",
            "Ljava/util/List<",
            "Lcn/mucang/android/jiakaoyi/signal/pos/Pos;",
            ">;)",
            "Ljava/util/List<",
            "Lcn/mucang/android/jiakaoyi/signal/pos/Gps;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 2
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    .line 3
    invoke-interface {p0, v1}, Lcn/mucang/android/jiakaoyi/signal/i/a;->b(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;)Lcn/mucang/android/jiakaoyi/signal/pos/Gps;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method public static f(Lcn/mucang/android/jiakaoyi/signal/i/a;Ljava/util/List;)Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcn/mucang/android/jiakaoyi/signal/i/a;",
            "Ljava/util/List<",
            "Lcn/mucang/android/jiakaoyi/signal/pos/Gps;",
            ">;)",
            "Ljava/util/List<",
            "Lcn/mucang/android/jiakaoyi/signal/pos/Pos;",
            ">;"
        }
    .end annotation

    if-eqz p1, :cond_2

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 2
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcn/mucang/android/jiakaoyi/signal/pos/Gps;

    if-eqz v1, :cond_0

    .line 3
    invoke-static {v1, p0}, Lcn/mucang/android/jiakaoyi/hpmap/c/b;->j(Lcn/mucang/android/jiakaoyi/signal/pos/Gps;Lcn/mucang/android/jiakaoyi/signal/i/a;)Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    return-object v0

    :cond_2
    const/4 p0, 0x0

    return-object p0
.end method
