.class public Lcn/mucang/android/jiakaoyi/teachingk2/data/b;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static a(Ljava/util/List;)Ljava/util/List;
    .locals 17
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcn/mucang/android/jiakaoyi/teachingk2/elements/model/TraceItemModel;",
            ">;)",
            "Ljava/util/List<",
            "Lcn/mucang/android/jiakaoyi/teachingk2/elements/model/TraceItemModel;",
            ">;"
        }
    .end annotation

    move-object/from16 v0, p0

    .line 1
    invoke-static/range {p0 .. p0}, Lcn/mucang/android/core/utils/g;->b(Ljava/util/Collection;)Z

    move-result v1

    if-eqz v1, :cond_0

    return-object v0

    .line 2
    :cond_0
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 3
    invoke-interface/range {p0 .. p0}, Ljava/util/List;->size()I

    move-result v2

    new-array v3, v2, [D

    .line 4
    invoke-interface/range {p0 .. p0}, Ljava/util/List;->size()I

    move-result v4

    new-array v4, v4, [D

    .line 5
    invoke-interface/range {p0 .. p0}, Ljava/util/List;->size()I

    move-result v5

    new-array v5, v5, [D

    .line 6
    invoke-interface/range {p0 .. p0}, Ljava/util/List;->size()I

    move-result v6

    new-array v6, v6, [D

    .line 7
    invoke-interface/range {p0 .. p0}, Ljava/util/List;->size()I

    move-result v7

    new-array v7, v7, [D

    .line 8
    invoke-interface/range {p0 .. p0}, Ljava/util/List;->size()I

    move-result v8

    new-array v8, v8, [D

    const/4 v9, 0x0

    const/4 v10, 0x0

    .line 9
    :goto_0
    invoke-interface/range {p0 .. p0}, Ljava/util/List;->size()I

    move-result v11

    if-ge v10, v11, :cond_1

    .line 10
    invoke-interface {v0, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcn/mucang/android/jiakaoyi/teachingk2/elements/model/TraceItemModel;

    iget-wide v11, v11, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;->x:D

    aput-wide v11, v3, v10

    .line 11
    invoke-interface {v0, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcn/mucang/android/jiakaoyi/teachingk2/elements/model/TraceItemModel;

    iget-wide v11, v11, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;->y:D

    aput-wide v11, v5, v10

    .line 12
    invoke-interface {v0, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcn/mucang/android/jiakaoyi/teachingk2/elements/model/TraceItemModel;

    iget-wide v11, v11, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;->z:D

    aput-wide v11, v7, v10

    add-int/lit8 v10, v10, 0x1

    goto :goto_0

    .line 13
    :cond_1
    invoke-static {v3, v4}, Lcn/mucang/android/jiakaoyi/mapcollect/collect/c1/d;->b([D[D)V

    .line 14
    invoke-static {v5, v6}, Lcn/mucang/android/jiakaoyi/mapcollect/collect/c1/d;->b([D[D)V

    .line 15
    invoke-static {v7, v8}, Lcn/mucang/android/jiakaoyi/mapcollect/collect/c1/d;->b([D[D)V

    :goto_1
    if-ge v9, v2, :cond_2

    .line 16
    invoke-interface {v0, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcn/mucang/android/jiakaoyi/teachingk2/elements/model/TraceItemModel;

    invoke-virtual {v3}, Lcn/mucang/android/jiakaoyi/teachingk2/elements/model/TraceItemModel;->copy()Lcn/mucang/android/jiakaoyi/teachingk2/elements/model/TraceItemModel;

    move-result-object v3

    new-instance v5, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    aget-wide v11, v4, v9

    aget-wide v13, v6, v9

    aget-wide v15, v8, v9

    move-object v10, v5

    invoke-direct/range {v10 .. v16}, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;-><init>(DDD)V

    invoke-virtual {v3, v5}, Lcn/mucang/android/jiakaoyi/teachingk2/elements/model/TraceItemModel;->set(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;)Lcn/mucang/android/jiakaoyi/teachingk2/elements/model/TraceItemModel;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v9, v9, 0x1

    goto :goto_1

    .line 17
    :cond_2
    invoke-static {v0, v1}, Lcn/mucang/android/jiakaoyi/mapcollect/collect/c1/d;->f(Ljava/util/List;Ljava/util/List;)V

    .line 18
    invoke-static {v0, v1}, Lcn/mucang/android/jiakaoyi/mapcollect/collect/c1/d;->d(Ljava/util/List;Ljava/util/List;)V

    return-object v1
.end method
