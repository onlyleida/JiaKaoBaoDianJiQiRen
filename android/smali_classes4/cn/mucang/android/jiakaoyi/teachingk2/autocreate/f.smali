.class public Lcn/mucang/android/jiakaoyi/teachingk2/autocreate/f;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static a(Lcn/mucang/android/jiakaoyi/hpmap/a/a/g/k;Lcn/mucang/android/jiakaoyi/signal/center/model/CarPos;)Lcn/mucang/android/jiakaoyi/teachingk2/autocreate/i/c;
    .locals 12

    .line 1
    iget-object v0, p1, Lcn/mucang/android/jiakaoyi/signal/center/model/CarPos;->rearAxlePoint:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    iget-object v1, p1, Lcn/mucang/android/jiakaoyi/signal/center/model/CarPos;->carRect:Lcn/mucang/android/jiakaoyi/signal/pos/c;

    iget-object v2, v1, Lcn/mucang/android/jiakaoyi/signal/pos/c;->a:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    iget-object v1, v1, Lcn/mucang/android/jiakaoyi/signal/pos/c;->b:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    invoke-static {v0, v2, v1}, Lcn/mucang/android/jiakaoyi/hpmap/d/a;->k(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;Lcn/mucang/android/jiakaoyi/signal/pos/Pos;Lcn/mucang/android/jiakaoyi/signal/pos/Pos;)D

    move-result-wide v0

    const-wide/high16 v2, 0x4034000000000000L    # 20.0

    add-double/2addr v0, v2

    .line 2
    iget-object v2, p0, Lcn/mucang/android/jiakaoyi/hpmap/a/a/g/k;->k:Lcn/mucang/android/jiakaoyi/hpmap/model/Line;

    iget-object v3, v2, Lcn/mucang/android/jiakaoyi/hpmap/model/Line;->start:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    iget-object v2, v2, Lcn/mucang/android/jiakaoyi/hpmap/model/Line;->end:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    invoke-static {v3, v2, v0, v1}, Lcn/mucang/android/jiakaoyi/hpmap/d/a;->p(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;Lcn/mucang/android/jiakaoyi/signal/pos/Pos;D)Lcn/mucang/android/jiakaoyi/hpmap/model/Line;

    move-result-object v0

    .line 3
    new-instance v1, Lcn/mucang/android/jiakaoyi/hpmap/model/Line;

    iget-object v2, p0, Lcn/mucang/android/jiakaoyi/hpmap/a/a/g/k;->m:Lcn/mucang/android/jiakaoyi/hpmap/model/Line;

    iget-object v3, v2, Lcn/mucang/android/jiakaoyi/hpmap/model/Line;->start:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    iget-object v2, v2, Lcn/mucang/android/jiakaoyi/hpmap/model/Line;->end:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    invoke-direct {v1, v3, v2}, Lcn/mucang/android/jiakaoyi/hpmap/model/Line;-><init>(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;Lcn/mucang/android/jiakaoyi/signal/pos/Pos;)V

    .line 4
    invoke-static {v0, v1}, Lcn/mucang/android/jiakaoyi/hpmap/d/a;->i(Lcn/mucang/android/jiakaoyi/hpmap/model/Line;Lcn/mucang/android/jiakaoyi/hpmap/model/Line;)Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    move-result-object v1

    .line 5
    iget-object v2, p1, Lcn/mucang/android/jiakaoyi/signal/center/model/CarPos;->rearAxlePoint:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    iget-object v3, p1, Lcn/mucang/android/jiakaoyi/signal/center/model/CarPos;->carRect:Lcn/mucang/android/jiakaoyi/signal/pos/c;

    iget-object v4, v3, Lcn/mucang/android/jiakaoyi/signal/pos/c;->b:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    iget-object v3, v3, Lcn/mucang/android/jiakaoyi/signal/pos/c;->c:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    invoke-static {v2, v4, v3}, Lcn/mucang/android/jiakaoyi/hpmap/d/a;->k(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;Lcn/mucang/android/jiakaoyi/signal/pos/Pos;Lcn/mucang/android/jiakaoyi/signal/pos/Pos;)D

    move-result-wide v2

    const-wide/high16 v4, 0x4016000000000000L    # 5.5

    invoke-static {v4, v5}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Math;->sin(D)D

    move-result-wide v4

    const-wide v6, 0x4064a00000000000L    # 165.0

    mul-double v4, v4, v6

    const-wide/high16 v6, 0x4000000000000000L    # 2.0

    mul-double v4, v4, v6

    add-double/2addr v2, v4

    .line 6
    iget-object v4, v0, Lcn/mucang/android/jiakaoyi/hpmap/model/Line;->end:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    iget-object v5, v0, Lcn/mucang/android/jiakaoyi/hpmap/model/Line;->start:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    iget-wide v6, p1, Lcn/mucang/android/jiakaoyi/signal/center/model/CarPos;->L:D

    invoke-static {v4, v5, v6, v7}, Lcn/mucang/android/jiakaoyi/hpmap/d/a;->s(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;Lcn/mucang/android/jiakaoyi/signal/pos/Pos;D)Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    move-result-object p1

    .line 7
    iget-object v0, v0, Lcn/mucang/android/jiakaoyi/hpmap/model/Line;->start:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    invoke-static {v1, v0, v2, v3}, Lcn/mucang/android/jiakaoyi/hpmap/d/a;->t(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;Lcn/mucang/android/jiakaoyi/signal/pos/Pos;D)Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    move-result-object v0

    .line 8
    invoke-virtual {p0}, Lcn/mucang/android/jiakaoyi/hpmap/a/a/g/k;->g()Lcn/mucang/android/jiakaoyi/signal/utils/b;

    move-result-object p0

    .line 9
    invoke-virtual {p0, p1}, Lcn/mucang/android/jiakaoyi/signal/utils/b;->a(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;)Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    move-result-object p1

    .line 10
    invoke-virtual {p0, v0}, Lcn/mucang/android/jiakaoyi/signal/utils/b;->a(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;)Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    move-result-object p0

    .line 11
    invoke-static {}, Lcn/mucang/android/jiakaoyi/signal/utils/f;->c()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcn/mucang/android/jiakaoyi/signal/center/model/Gear;->Gear1:Lcn/mucang/android/jiakaoyi/signal/center/model/Gear;

    goto :goto_0

    :cond_0
    sget-object v0, Lcn/mucang/android/jiakaoyi/signal/center/model/Gear;->GearD:Lcn/mucang/android/jiakaoyi/signal/center/model/Gear;

    :goto_0
    iget v0, v0, Lcn/mucang/android/jiakaoyi/signal/center/model/Gear;->gear:I

    const-wide/high16 v1, 0x4039000000000000L    # 25.0

    .line 12
    invoke-static {p1, p0, v1, v2}, Lcn/mucang/android/jiakaoyi/teachingk2/autocreate/i/f/b;->b(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;Lcn/mucang/android/jiakaoyi/signal/pos/Pos;D)Ljava/util/List;

    move-result-object v10

    .line 13
    invoke-interface {v10}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v11

    :goto_1
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcn/mucang/android/jiakaoyi/teachingk2/elements/model/TraceItemModel;

    const/4 v2, 0x0

    const/16 v3, 0x384

    .line 14
    sget-object v4, Lcn/mucang/android/jiakaoyi/engine/model/Step;->K2_ShangPoQiBu:Lcn/mucang/android/jiakaoyi/engine/model/Step;

    iget v4, v4, Lcn/mucang/android/jiakaoyi/engine/model/Step;->type:I

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v9, 0x0

    move v8, v0

    invoke-virtual/range {v1 .. v9}, Lcn/mucang/android/jiakaoyi/teachingk2/elements/model/TraceItemModel;->set(IIIIIIII)Lcn/mucang/android/jiakaoyi/teachingk2/elements/model/TraceItemModel;

    goto :goto_1

    .line 15
    :cond_1
    invoke-interface {v10}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    invoke-interface {v10, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcn/mucang/android/jiakaoyi/teachingk2/elements/model/TraceItemModel;

    invoke-virtual {v0, v1}, Lcn/mucang/android/jiakaoyi/teachingk2/elements/model/TraceItemModel;->setPointType(I)Lcn/mucang/android/jiakaoyi/teachingk2/elements/model/TraceItemModel;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcn/mucang/android/jiakaoyi/teachingk2/elements/model/TraceItemModel;->setHandbrake(I)Lcn/mucang/android/jiakaoyi/teachingk2/elements/model/TraceItemModel;

    .line 16
    new-instance v0, Lcn/mucang/android/jiakaoyi/teachingk2/autocreate/i/c;

    invoke-direct {v0}, Lcn/mucang/android/jiakaoyi/teachingk2/autocreate/i/c;-><init>()V

    .line 17
    new-instance v2, Lcn/mucang/android/jiakaoyi/teachingk2/autocreate/i/f/b;

    sget-object v3, Lcn/mucang/android/jiakaoyi/engine/model/Step;->K2_ShangPoQiBu:Lcn/mucang/android/jiakaoyi/engine/model/Step;

    const/4 v4, 0x2

    invoke-direct {v2, v3, v1, v4}, Lcn/mucang/android/jiakaoyi/teachingk2/autocreate/i/f/b;-><init>(Lcn/mucang/android/jiakaoyi/engine/model/Step;II)V

    iput-object v2, v0, Lcn/mucang/android/jiakaoyi/teachingk2/autocreate/i/c;->a:Lcn/mucang/android/jiakaoyi/teachingk2/autocreate/i/f/b;

    .line 18
    iput-object v10, v2, Lcn/mucang/android/jiakaoyi/teachingk2/autocreate/i/f/b;->a:Ljava/util/List;

    .line 19
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, v2, Lcn/mucang/android/jiakaoyi/teachingk2/autocreate/i/f/b;->b:Ljava/util/List;

    .line 20
    iget-object v1, v0, Lcn/mucang/android/jiakaoyi/teachingk2/autocreate/i/c;->a:Lcn/mucang/android/jiakaoyi/teachingk2/autocreate/i/f/b;

    iget-object v1, v1, Lcn/mucang/android/jiakaoyi/teachingk2/autocreate/i/f/b;->b:Ljava/util/List;

    new-instance v2, Lcn/mucang/android/jiakaoyi/teachingk2/autocreate/i/f/a;

    new-instance v3, Lcn/mucang/android/jiakaoyi/teachingk2/elements/variable/NormalVariable;

    invoke-direct {v3}, Lcn/mucang/android/jiakaoyi/teachingk2/elements/variable/NormalVariable;-><init>()V

    const-wide/high16 v4, 0x4049000000000000L    # 50.0

    invoke-static {p1, p0, v4, v5}, Lcn/mucang/android/jiakaoyi/hpmap/d/a;->s(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;Lcn/mucang/android/jiakaoyi/signal/pos/Pos;D)Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    move-result-object p1

    invoke-virtual {v3, p0, p1}, Lcn/mucang/android/jiakaoyi/teachingk2/elements/variable/NormalVariable;->setPos(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;Lcn/mucang/android/jiakaoyi/signal/pos/Pos;)Lcn/mucang/android/jiakaoyi/teachingk2/elements/variable/NormalVariable;

    move-result-object p0

    const-wide/16 v3, 0x0

    invoke-direct {v2, p0, v3, v4}, Lcn/mucang/android/jiakaoyi/teachingk2/autocreate/i/f/a;-><init>(Lcn/mucang/android/jiakaoyi/teachingk2/elements/variable/NormalVariable;D)V

    invoke-virtual {v2}, Lcn/mucang/android/jiakaoyi/teachingk2/autocreate/i/f/a;->e()Lcn/mucang/android/jiakaoyi/teachingk2/autocreate/i/f/a;

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object v0
.end method
