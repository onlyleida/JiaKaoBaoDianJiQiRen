.class public Lcn/mucang/android/jiakaoyi/teachingk2/unity/pageevent/z0/a;
.super Lcn/mucang/android/jiakaoyi/teachingk2/unity/pageevent/v0$a;
.source "SourceFile"


# instance fields
.field private b:Z

.field private c:Lcn/mucang/android/jiakaoyi/hpmap/a/a/g/d;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcn/mucang/android/jiakaoyi/teachingk2/unity/pageevent/v0$a;-><init>()V

    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/unity/pageevent/z0/a;->b:Z

    const/4 v0, 0x0

    .line 3
    iput-object v0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/unity/pageevent/z0/a;->c:Lcn/mucang/android/jiakaoyi/hpmap/a/a/g/d;

    return-void
.end method

.method private c(Lcn/mucang/android/jiakaoyi/signal/pos/b;Lcn/mucang/android/jiakaoyi/signal/pos/Pos;DLcn/mucang/android/jiakaoyi/signal/center/model/CarPos;)Lcn/mucang/android/jiakaoyi/hpmap/car/Wheel;
    .locals 3

    .line 1
    invoke-static {p1, p5}, Lcn/mucang/android/jiakaoyi/hpmap/a/b/b;->b(Lcn/mucang/android/jiakaoyi/signal/pos/b;Lcn/mucang/android/jiakaoyi/signal/center/model/CarPos;)Lcn/mucang/android/jiakaoyi/hpmap/car/Wheel;

    move-result-object p1

    .line 2
    sget-object v0, Lcn/mucang/android/jiakaoyi/hpmap/car/Wheel;->LeftFront:Lcn/mucang/android/jiakaoyi/hpmap/car/Wheel;

    if-ne p1, v0, :cond_1

    .line 3
    iget-object v0, p5, Lcn/mucang/android/jiakaoyi/signal/center/model/CarPos;->wheelLeftFront:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    invoke-virtual {v0, p2}, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;->distanceSquare(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;)D

    move-result-wide v0

    cmpg-double v2, v0, p3

    if-lez v2, :cond_0

    iget-object p5, p5, Lcn/mucang/android/jiakaoyi/signal/center/model/CarPos;->wheelLeftFrontInner:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    .line 4
    invoke-virtual {p5, p2}, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;->distanceSquare(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;)D

    move-result-wide v0

    cmpg-double p2, v0, p3

    if-gtz p2, :cond_7

    .line 5
    :cond_0
    sget-object p1, Lcn/mucang/android/jiakaoyi/hpmap/car/Wheel;->None:Lcn/mucang/android/jiakaoyi/hpmap/car/Wheel;

    goto :goto_0

    .line 6
    :cond_1
    sget-object v0, Lcn/mucang/android/jiakaoyi/hpmap/car/Wheel;->LeftBack:Lcn/mucang/android/jiakaoyi/hpmap/car/Wheel;

    if-ne p1, v0, :cond_3

    .line 7
    iget-object v0, p5, Lcn/mucang/android/jiakaoyi/signal/center/model/CarPos;->wheelLeftBack:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    invoke-virtual {v0, p2}, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;->distanceSquare(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;)D

    move-result-wide v0

    cmpg-double v2, v0, p3

    if-lez v2, :cond_2

    iget-object p5, p5, Lcn/mucang/android/jiakaoyi/signal/center/model/CarPos;->wheelLeftBackInner:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    .line 8
    invoke-virtual {p5, p2}, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;->distanceSquare(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;)D

    move-result-wide v0

    cmpg-double p2, v0, p3

    if-gtz p2, :cond_7

    .line 9
    :cond_2
    sget-object p1, Lcn/mucang/android/jiakaoyi/hpmap/car/Wheel;->None:Lcn/mucang/android/jiakaoyi/hpmap/car/Wheel;

    goto :goto_0

    .line 10
    :cond_3
    sget-object v0, Lcn/mucang/android/jiakaoyi/hpmap/car/Wheel;->RightFront:Lcn/mucang/android/jiakaoyi/hpmap/car/Wheel;

    if-ne p1, v0, :cond_5

    .line 11
    iget-object v0, p5, Lcn/mucang/android/jiakaoyi/signal/center/model/CarPos;->wheelRightFront:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    invoke-virtual {v0, p2}, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;->distanceSquare(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;)D

    move-result-wide v0

    cmpg-double v2, v0, p3

    if-lez v2, :cond_4

    iget-object p5, p5, Lcn/mucang/android/jiakaoyi/signal/center/model/CarPos;->wheelRightFrontInner:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    .line 12
    invoke-virtual {p5, p2}, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;->distanceSquare(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;)D

    move-result-wide v0

    cmpg-double p2, v0, p3

    if-gtz p2, :cond_7

    .line 13
    :cond_4
    sget-object p1, Lcn/mucang/android/jiakaoyi/hpmap/car/Wheel;->None:Lcn/mucang/android/jiakaoyi/hpmap/car/Wheel;

    goto :goto_0

    .line 14
    :cond_5
    sget-object v0, Lcn/mucang/android/jiakaoyi/hpmap/car/Wheel;->RightBack:Lcn/mucang/android/jiakaoyi/hpmap/car/Wheel;

    if-ne p1, v0, :cond_7

    .line 15
    iget-object v0, p5, Lcn/mucang/android/jiakaoyi/signal/center/model/CarPos;->wheelRightBack:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    invoke-virtual {v0, p2}, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;->distanceSquare(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;)D

    move-result-wide v0

    cmpg-double v2, v0, p3

    if-lez v2, :cond_6

    iget-object p5, p5, Lcn/mucang/android/jiakaoyi/signal/center/model/CarPos;->wheelRightBackInner:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    .line 16
    invoke-virtual {p5, p2}, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;->distanceSquare(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;)D

    move-result-wide v0

    cmpg-double p2, v0, p3

    if-gtz p2, :cond_7

    .line 17
    :cond_6
    sget-object p1, Lcn/mucang/android/jiakaoyi/hpmap/car/Wheel;->None:Lcn/mucang/android/jiakaoyi/hpmap/car/Wheel;

    :cond_7
    :goto_0
    return-object p1
.end method

.method private d(Lcn/mucang/android/jiakaoyi/hpmap/a/a/g/d;Lcn/mucang/android/jiakaoyi/signal/pos/Pos;)Z
    .locals 8

    .line 1
    iget-object v0, p1, Lcn/mucang/android/jiakaoyi/hpmap/a/a/g/d;->n:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    invoke-virtual {p2, v0}, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;->distanceSquare(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;)D

    move-result-wide v0

    .line 2
    iget-wide v2, p1, Lcn/mucang/android/jiakaoyi/hpmap/a/a/g/d;->r:D

    mul-double v2, v2, v2

    .line 3
    iget-wide v4, p1, Lcn/mucang/android/jiakaoyi/hpmap/a/a/g/d;->s:D

    mul-double v4, v4, v4

    const/4 v6, 0x1

    cmpl-double v7, v0, v2

    if-lez v7, :cond_0

    cmpg-double v2, v0, v4

    if-gez v2, :cond_0

    return v6

    .line 4
    :cond_0
    iget-object v0, p1, Lcn/mucang/android/jiakaoyi/hpmap/a/a/g/d;->p:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    invoke-virtual {p2, v0}, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;->distanceSquare(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;)D

    move-result-wide v0

    .line 5
    iget-wide v2, p1, Lcn/mucang/android/jiakaoyi/hpmap/a/a/g/d;->t:D

    mul-double v2, v2, v2

    .line 6
    iget-wide p1, p1, Lcn/mucang/android/jiakaoyi/hpmap/a/a/g/d;->u:D

    mul-double p1, p1, p1

    cmpl-double v4, v0, v2

    if-lez v4, :cond_1

    cmpg-double v2, v0, p1

    if-gez v2, :cond_1

    goto :goto_0

    :cond_1
    const/4 v6, 0x0

    :goto_0
    return v6
.end method

.method private e(Lcn/mucang/android/jiakaoyi/hpmap/a/a/g/d;Lcn/mucang/android/jiakaoyi/signal/pos/Pos;)Z
    .locals 6

    .line 1
    iget-object v0, p1, Lcn/mucang/android/jiakaoyi/hpmap/a/a/g/d;->n:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    invoke-virtual {p2, v0}, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;->distanceSquare(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;)D

    move-result-wide v0

    .line 2
    iget-wide v2, p1, Lcn/mucang/android/jiakaoyi/hpmap/a/a/g/d;->s:D

    mul-double v2, v2, v2

    const/4 v4, 0x0

    cmpg-double v5, v0, v2

    if-gtz v5, :cond_0

    return v4

    .line 3
    :cond_0
    iget-object v0, p1, Lcn/mucang/android/jiakaoyi/hpmap/a/a/g/d;->p:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    invoke-virtual {p2, v0}, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;->distanceSquare(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;)D

    move-result-wide v0

    .line 4
    iget-wide p1, p1, Lcn/mucang/android/jiakaoyi/hpmap/a/a/g/d;->u:D

    mul-double p1, p1, p1

    cmpl-double v2, v0, p1

    if-lez v2, :cond_1

    const/4 v4, 0x1

    :cond_1
    return v4
.end method


# virtual methods
.method public a(Z)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Lcn/mucang/android/jiakaoyi/teachingk2/unity/pageevent/v0$a;->a(Z)V

    if-nez p1, :cond_0

    const/4 p1, 0x1

    .line 2
    iput-boolean p1, p0, Lcn/mucang/android/jiakaoyi/teachingk2/unity/pageevent/z0/a;->b:Z

    const/4 p1, 0x0

    .line 3
    iput-object p1, p0, Lcn/mucang/android/jiakaoyi/teachingk2/unity/pageevent/z0/a;->c:Lcn/mucang/android/jiakaoyi/hpmap/a/a/g/d;

    :cond_0
    return-void
.end method

.method public b(Lcn/mucang/android/jiakaoyi/signal/c/e;Ljava/lang/String;)Lcn/mucang/android/jiakaoyi/teachingk2/unity/models/OperateResultModel;
    .locals 9

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
    iget-object v0, v0, Lcn/mucang/android/jiakaoyi/mapcollect/c/j;->s:Ljava/util/List;

    .line 5
    invoke-static {v0}, Lcn/mucang/android/core/utils/g;->b(Ljava/util/Collection;)Z

    move-result v2

    if-eqz v2, :cond_2

    return-object v1

    :cond_2
    if-eqz p1, :cond_d

    .line 6
    iget-object v2, p1, Lcn/mucang/android/jiakaoyi/signal/center/model/CarPos;->carRect:Lcn/mucang/android/jiakaoyi/signal/pos/c;

    if-eqz v2, :cond_d

    iget-object v2, v2, Lcn/mucang/android/jiakaoyi/signal/pos/c;->e:Lcn/mucang/android/jiakaoyi/signal/pos/a;

    if-nez v2, :cond_3

    goto/16 :goto_2

    .line 7
    :cond_3
    new-instance v6, Lcn/mucang/android/jiakaoyi/teachingk2/unity/models/OperateResultModel;

    invoke-direct {v6}, Lcn/mucang/android/jiakaoyi/teachingk2/unity/models/OperateResultModel;-><init>()V

    .line 8
    iput-object p2, v6, Lcn/mucang/android/jiakaoyi/teachingk2/unity/models/OperateResultModel;->projectId:Ljava/lang/String;

    .line 9
    iget-object p2, p0, Lcn/mucang/android/jiakaoyi/teachingk2/unity/pageevent/z0/a;->c:Lcn/mucang/android/jiakaoyi/hpmap/a/a/g/d;

    if-eqz p2, :cond_4

    .line 10
    iget-object v2, p1, Lcn/mucang/android/jiakaoyi/signal/center/model/CarPos;->wheelRightBack:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    invoke-direct {p0, p2, v2}, Lcn/mucang/android/jiakaoyi/teachingk2/unity/pageevent/z0/a;->e(Lcn/mucang/android/jiakaoyi/hpmap/a/a/g/d;Lcn/mucang/android/jiakaoyi/signal/pos/Pos;)Z

    move-result v2

    if-eqz v2, :cond_4

    iget-object v2, p1, Lcn/mucang/android/jiakaoyi/signal/center/model/CarPos;->wheelRightFront:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    .line 11
    invoke-direct {p0, p2, v2}, Lcn/mucang/android/jiakaoyi/teachingk2/unity/pageevent/z0/a;->e(Lcn/mucang/android/jiakaoyi/hpmap/a/a/g/d;Lcn/mucang/android/jiakaoyi/signal/pos/Pos;)Z

    move-result v2

    if-eqz v2, :cond_4

    iget-object v2, p1, Lcn/mucang/android/jiakaoyi/signal/center/model/CarPos;->wheelLeftBack:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    .line 12
    invoke-direct {p0, p2, v2}, Lcn/mucang/android/jiakaoyi/teachingk2/unity/pageevent/z0/a;->e(Lcn/mucang/android/jiakaoyi/hpmap/a/a/g/d;Lcn/mucang/android/jiakaoyi/signal/pos/Pos;)Z

    move-result v2

    if-eqz v2, :cond_4

    iget-object v2, p1, Lcn/mucang/android/jiakaoyi/signal/center/model/CarPos;->wheelLeftFront:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    .line 13
    invoke-direct {p0, p2, v2}, Lcn/mucang/android/jiakaoyi/teachingk2/unity/pageevent/z0/a;->e(Lcn/mucang/android/jiakaoyi/hpmap/a/a/g/d;Lcn/mucang/android/jiakaoyi/signal/pos/Pos;)Z

    move-result p2

    if-eqz p2, :cond_4

    .line 14
    iput-object v1, p0, Lcn/mucang/android/jiakaoyi/teachingk2/unity/pageevent/z0/a;->c:Lcn/mucang/android/jiakaoyi/hpmap/a/a/g/d;

    .line 15
    :cond_4
    iget-object p2, p0, Lcn/mucang/android/jiakaoyi/teachingk2/unity/pageevent/z0/a;->c:Lcn/mucang/android/jiakaoyi/hpmap/a/a/g/d;

    if-nez p2, :cond_7

    .line 16
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :cond_5
    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_7

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcn/mucang/android/jiakaoyi/hpmap/a/a/g/d;

    .line 17
    iget-object v2, v0, Lcn/mucang/android/jiakaoyi/hpmap/a/a/g/d;->m:Lcn/mucang/android/jiakaoyi/signal/pos/a;

    iget-object v3, p1, Lcn/mucang/android/jiakaoyi/signal/center/model/CarPos;->bound:Lcn/mucang/android/jiakaoyi/signal/pos/a;

    invoke-virtual {v2, v3}, Lcn/mucang/android/jiakaoyi/signal/pos/a;->h(Lcn/mucang/android/jiakaoyi/signal/pos/a;)Z

    move-result v2

    if-eqz v2, :cond_6

    goto :goto_0

    .line 18
    :cond_6
    iget-object v2, p1, Lcn/mucang/android/jiakaoyi/signal/center/model/CarPos;->wheelRightBack:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    invoke-direct {p0, v0, v2}, Lcn/mucang/android/jiakaoyi/teachingk2/unity/pageevent/z0/a;->d(Lcn/mucang/android/jiakaoyi/hpmap/a/a/g/d;Lcn/mucang/android/jiakaoyi/signal/pos/Pos;)Z

    move-result v2

    if-eqz v2, :cond_5

    iget-object v2, p1, Lcn/mucang/android/jiakaoyi/signal/center/model/CarPos;->wheelRightFront:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    .line 19
    invoke-direct {p0, v0, v2}, Lcn/mucang/android/jiakaoyi/teachingk2/unity/pageevent/z0/a;->d(Lcn/mucang/android/jiakaoyi/hpmap/a/a/g/d;Lcn/mucang/android/jiakaoyi/signal/pos/Pos;)Z

    move-result v2

    if-eqz v2, :cond_5

    iget-object v2, p1, Lcn/mucang/android/jiakaoyi/signal/center/model/CarPos;->wheelLeftBack:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    .line 20
    invoke-direct {p0, v0, v2}, Lcn/mucang/android/jiakaoyi/teachingk2/unity/pageevent/z0/a;->d(Lcn/mucang/android/jiakaoyi/hpmap/a/a/g/d;Lcn/mucang/android/jiakaoyi/signal/pos/Pos;)Z

    move-result v2

    if-eqz v2, :cond_5

    iget-object v2, p1, Lcn/mucang/android/jiakaoyi/signal/center/model/CarPos;->wheelLeftFront:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    .line 21
    invoke-direct {p0, v0, v2}, Lcn/mucang/android/jiakaoyi/teachingk2/unity/pageevent/z0/a;->d(Lcn/mucang/android/jiakaoyi/hpmap/a/a/g/d;Lcn/mucang/android/jiakaoyi/signal/pos/Pos;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 22
    iput-object v0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/unity/pageevent/z0/a;->c:Lcn/mucang/android/jiakaoyi/hpmap/a/a/g/d;

    .line 23
    :cond_7
    sget-object p2, Lcn/mucang/android/jiakaoyi/hpmap/car/Wheel;->None:Lcn/mucang/android/jiakaoyi/hpmap/car/Wheel;

    .line 24
    iget-object v7, p0, Lcn/mucang/android/jiakaoyi/teachingk2/unity/pageevent/z0/a;->c:Lcn/mucang/android/jiakaoyi/hpmap/a/a/g/d;

    const/4 v8, 0x0

    if-eqz v7, :cond_c

    .line 25
    iget-object v1, v7, Lcn/mucang/android/jiakaoyi/hpmap/a/a/g/d;->y:Lcn/mucang/android/jiakaoyi/signal/pos/b;

    iget-object v2, v7, Lcn/mucang/android/jiakaoyi/hpmap/a/a/g/d;->p:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    iget-wide v3, v7, Lcn/mucang/android/jiakaoyi/hpmap/a/a/g/d;->u:D

    mul-double v3, v3, v3

    move-object v0, p0

    move-object v5, p1

    invoke-direct/range {v0 .. v5}, Lcn/mucang/android/jiakaoyi/teachingk2/unity/pageevent/z0/a;->c(Lcn/mucang/android/jiakaoyi/signal/pos/b;Lcn/mucang/android/jiakaoyi/signal/pos/Pos;DLcn/mucang/android/jiakaoyi/signal/center/model/CarPos;)Lcn/mucang/android/jiakaoyi/hpmap/car/Wheel;

    move-result-object v0

    if-ne v0, p2, :cond_8

    .line 26
    iget-object v1, v7, Lcn/mucang/android/jiakaoyi/hpmap/a/a/g/d;->A:Lcn/mucang/android/jiakaoyi/signal/pos/b;

    iget-object v2, v7, Lcn/mucang/android/jiakaoyi/hpmap/a/a/g/d;->n:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    iget-wide v3, v7, Lcn/mucang/android/jiakaoyi/hpmap/a/a/g/d;->s:D

    mul-double v3, v3, v3

    move-object v0, p0

    move-object v5, p1

    invoke-direct/range {v0 .. v5}, Lcn/mucang/android/jiakaoyi/teachingk2/unity/pageevent/z0/a;->c(Lcn/mucang/android/jiakaoyi/signal/pos/b;Lcn/mucang/android/jiakaoyi/signal/pos/Pos;DLcn/mucang/android/jiakaoyi/signal/center/model/CarPos;)Lcn/mucang/android/jiakaoyi/hpmap/car/Wheel;

    move-result-object v0

    :cond_8
    if-ne v0, p2, :cond_a

    .line 27
    iget-object v0, v7, Lcn/mucang/android/jiakaoyi/hpmap/a/a/g/d;->z:Lcn/mucang/android/jiakaoyi/signal/pos/b;

    invoke-static {v0, p1}, Lcn/mucang/android/jiakaoyi/hpmap/a/b/b;->b(Lcn/mucang/android/jiakaoyi/signal/pos/b;Lcn/mucang/android/jiakaoyi/signal/center/model/CarPos;)Lcn/mucang/android/jiakaoyi/hpmap/car/Wheel;

    move-result-object v0

    if-ne v0, p2, :cond_9

    .line 28
    iget-object v0, v7, Lcn/mucang/android/jiakaoyi/hpmap/a/a/g/d;->B:Lcn/mucang/android/jiakaoyi/signal/pos/b;

    invoke-static {v0, p1}, Lcn/mucang/android/jiakaoyi/hpmap/a/b/b;->b(Lcn/mucang/android/jiakaoyi/signal/pos/b;Lcn/mucang/android/jiakaoyi/signal/center/model/CarPos;)Lcn/mucang/android/jiakaoyi/hpmap/car/Wheel;

    move-result-object v0

    :cond_9
    if-eq v0, p2, :cond_b

    const/4 v8, 0x2

    goto :goto_1

    :cond_a
    const/4 v8, 0x3

    :cond_b
    :goto_1
    const/4 p1, 0x1

    .line 29
    iput p1, v6, Lcn/mucang/android/jiakaoyi/teachingk2/unity/models/OperateResultModel;->inside:I

    .line 30
    iput v8, v6, Lcn/mucang/android/jiakaoyi/teachingk2/unity/models/OperateResultModel;->pressState:I

    .line 31
    iput-boolean p1, p0, Lcn/mucang/android/jiakaoyi/teachingk2/unity/pageevent/z0/a;->b:Z

    return-object v6

    .line 32
    :cond_c
    iput v8, v6, Lcn/mucang/android/jiakaoyi/teachingk2/unity/models/OperateResultModel;->inside:I

    .line 33
    iput v8, v6, Lcn/mucang/android/jiakaoyi/teachingk2/unity/models/OperateResultModel;->pressState:I

    .line 34
    iget-boolean p1, p0, Lcn/mucang/android/jiakaoyi/teachingk2/unity/pageevent/z0/a;->b:Z

    if-eqz p1, :cond_d

    .line 35
    iput-boolean v8, p0, Lcn/mucang/android/jiakaoyi/teachingk2/unity/pageevent/z0/a;->b:Z

    return-object v6

    :cond_d
    :goto_2
    return-object v1
.end method
