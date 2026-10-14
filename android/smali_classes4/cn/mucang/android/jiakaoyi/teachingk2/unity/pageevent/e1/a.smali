.class public Lcn/mucang/android/jiakaoyi/teachingk2/unity/pageevent/e1/a;
.super Lcn/mucang/android/jiakaoyi/teachingk2/unity/pageevent/v0$a;
.source "SourceFile"


# instance fields
.field private b:Z

.field private c:Lcn/mucang/android/jiakaoyi/hpmap/a/a/g/m;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcn/mucang/android/jiakaoyi/teachingk2/unity/pageevent/v0$a;-><init>()V

    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/unity/pageevent/e1/a;->b:Z

    const/4 v0, 0x0

    .line 3
    iput-object v0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/unity/pageevent/e1/a;->c:Lcn/mucang/android/jiakaoyi/hpmap/a/a/g/m;

    return-void
.end method

.method private c(Lcn/mucang/android/jiakaoyi/hpmap/a/a/g/m;Lcn/mucang/android/jiakaoyi/signal/pos/Pos;)Z
    .locals 5

    .line 1
    iget-object v0, p1, Lcn/mucang/android/jiakaoyi/hpmap/a/a/g/m;->l:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    invoke-virtual {p2, v0}, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;->distanceSquare(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;)D

    move-result-wide v0

    .line 2
    iget-wide v2, p1, Lcn/mucang/android/jiakaoyi/hpmap/a/a/g/m;->n:D

    mul-double v2, v2, v2

    .line 3
    iget-wide p1, p1, Lcn/mucang/android/jiakaoyi/hpmap/a/a/g/m;->o:D

    mul-double p1, p1, p1

    cmpl-double v4, v0, v2

    if-lez v4, :cond_0

    cmpg-double v2, v0, p1

    if-gez v2, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method private d(Lcn/mucang/android/jiakaoyi/hpmap/a/a/g/m;Lcn/mucang/android/jiakaoyi/signal/pos/Pos;)Z
    .locals 3

    .line 1
    iget-object v0, p1, Lcn/mucang/android/jiakaoyi/hpmap/a/a/g/m;->l:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    invoke-virtual {p2, v0}, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;->distanceSquare(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;)D

    move-result-wide v0

    .line 2
    iget-wide p1, p1, Lcn/mucang/android/jiakaoyi/hpmap/a/a/g/m;->o:D

    mul-double p1, p1, p1

    cmpl-double v2, v0, p1

    if-lez v2, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method


# virtual methods
.method public a(Z)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Lcn/mucang/android/jiakaoyi/teachingk2/unity/pageevent/v0$a;->a(Z)V

    if-nez p1, :cond_0

    const/4 p1, 0x1

    .line 2
    iput-boolean p1, p0, Lcn/mucang/android/jiakaoyi/teachingk2/unity/pageevent/e1/a;->b:Z

    const/4 p1, 0x0

    .line 3
    iput-object p1, p0, Lcn/mucang/android/jiakaoyi/teachingk2/unity/pageevent/e1/a;->c:Lcn/mucang/android/jiakaoyi/hpmap/a/a/g/m;

    :cond_0
    return-void
.end method

.method public b(Lcn/mucang/android/jiakaoyi/signal/c/e;Ljava/lang/String;)Lcn/mucang/android/jiakaoyi/teachingk2/unity/models/OperateResultModel;
    .locals 5

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
    iget-object v0, v0, Lcn/mucang/android/jiakaoyi/mapcollect/c/j;->r:Ljava/util/List;

    .line 5
    invoke-static {v0}, Lcn/mucang/android/core/utils/g;->b(Ljava/util/Collection;)Z

    move-result v2

    if-eqz v2, :cond_2

    return-object v1

    :cond_2
    if-eqz p1, :cond_b

    .line 6
    iget-object v2, p1, Lcn/mucang/android/jiakaoyi/signal/center/model/CarPos;->carRect:Lcn/mucang/android/jiakaoyi/signal/pos/c;

    if-eqz v2, :cond_b

    iget-object v2, v2, Lcn/mucang/android/jiakaoyi/signal/pos/c;->e:Lcn/mucang/android/jiakaoyi/signal/pos/a;

    if-nez v2, :cond_3

    goto/16 :goto_2

    .line 7
    :cond_3
    new-instance v2, Lcn/mucang/android/jiakaoyi/teachingk2/unity/models/OperateResultModel;

    invoke-direct {v2}, Lcn/mucang/android/jiakaoyi/teachingk2/unity/models/OperateResultModel;-><init>()V

    .line 8
    iput-object p2, v2, Lcn/mucang/android/jiakaoyi/teachingk2/unity/models/OperateResultModel;->projectId:Ljava/lang/String;

    .line 9
    iget-object p2, p0, Lcn/mucang/android/jiakaoyi/teachingk2/unity/pageevent/e1/a;->c:Lcn/mucang/android/jiakaoyi/hpmap/a/a/g/m;

    if-eqz p2, :cond_4

    .line 10
    iget-object v3, p1, Lcn/mucang/android/jiakaoyi/signal/center/model/CarPos;->wheelRightBack:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    invoke-direct {p0, p2, v3}, Lcn/mucang/android/jiakaoyi/teachingk2/unity/pageevent/e1/a;->d(Lcn/mucang/android/jiakaoyi/hpmap/a/a/g/m;Lcn/mucang/android/jiakaoyi/signal/pos/Pos;)Z

    move-result v3

    if-eqz v3, :cond_4

    iget-object v3, p1, Lcn/mucang/android/jiakaoyi/signal/center/model/CarPos;->wheelRightFront:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    .line 11
    invoke-direct {p0, p2, v3}, Lcn/mucang/android/jiakaoyi/teachingk2/unity/pageevent/e1/a;->d(Lcn/mucang/android/jiakaoyi/hpmap/a/a/g/m;Lcn/mucang/android/jiakaoyi/signal/pos/Pos;)Z

    move-result v3

    if-eqz v3, :cond_4

    iget-object v3, p1, Lcn/mucang/android/jiakaoyi/signal/center/model/CarPos;->wheelLeftBack:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    .line 12
    invoke-direct {p0, p2, v3}, Lcn/mucang/android/jiakaoyi/teachingk2/unity/pageevent/e1/a;->d(Lcn/mucang/android/jiakaoyi/hpmap/a/a/g/m;Lcn/mucang/android/jiakaoyi/signal/pos/Pos;)Z

    move-result v3

    if-eqz v3, :cond_4

    iget-object v3, p1, Lcn/mucang/android/jiakaoyi/signal/center/model/CarPos;->wheelLeftFront:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    .line 13
    invoke-direct {p0, p2, v3}, Lcn/mucang/android/jiakaoyi/teachingk2/unity/pageevent/e1/a;->d(Lcn/mucang/android/jiakaoyi/hpmap/a/a/g/m;Lcn/mucang/android/jiakaoyi/signal/pos/Pos;)Z

    move-result p2

    if-eqz p2, :cond_4

    .line 14
    iput-object v1, p0, Lcn/mucang/android/jiakaoyi/teachingk2/unity/pageevent/e1/a;->c:Lcn/mucang/android/jiakaoyi/hpmap/a/a/g/m;

    .line 15
    :cond_4
    iget-object p2, p0, Lcn/mucang/android/jiakaoyi/teachingk2/unity/pageevent/e1/a;->c:Lcn/mucang/android/jiakaoyi/hpmap/a/a/g/m;

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

    check-cast v0, Lcn/mucang/android/jiakaoyi/hpmap/a/a/g/m;

    .line 17
    iget-object v3, v0, Lcn/mucang/android/jiakaoyi/hpmap/a/a/g/m;->k:Lcn/mucang/android/jiakaoyi/signal/pos/a;

    iget-object v4, p1, Lcn/mucang/android/jiakaoyi/signal/center/model/CarPos;->bound:Lcn/mucang/android/jiakaoyi/signal/pos/a;

    invoke-virtual {v3, v4}, Lcn/mucang/android/jiakaoyi/signal/pos/a;->h(Lcn/mucang/android/jiakaoyi/signal/pos/a;)Z

    move-result v3

    if-eqz v3, :cond_6

    goto :goto_0

    .line 18
    :cond_6
    iget-object v3, p1, Lcn/mucang/android/jiakaoyi/signal/center/model/CarPos;->wheelRightBack:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    invoke-direct {p0, v0, v3}, Lcn/mucang/android/jiakaoyi/teachingk2/unity/pageevent/e1/a;->c(Lcn/mucang/android/jiakaoyi/hpmap/a/a/g/m;Lcn/mucang/android/jiakaoyi/signal/pos/Pos;)Z

    move-result v3

    if-eqz v3, :cond_5

    iget-object v3, p1, Lcn/mucang/android/jiakaoyi/signal/center/model/CarPos;->wheelRightFront:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    .line 19
    invoke-direct {p0, v0, v3}, Lcn/mucang/android/jiakaoyi/teachingk2/unity/pageevent/e1/a;->c(Lcn/mucang/android/jiakaoyi/hpmap/a/a/g/m;Lcn/mucang/android/jiakaoyi/signal/pos/Pos;)Z

    move-result v3

    if-eqz v3, :cond_5

    iget-object v3, p1, Lcn/mucang/android/jiakaoyi/signal/center/model/CarPos;->wheelLeftBack:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    .line 20
    invoke-direct {p0, v0, v3}, Lcn/mucang/android/jiakaoyi/teachingk2/unity/pageevent/e1/a;->c(Lcn/mucang/android/jiakaoyi/hpmap/a/a/g/m;Lcn/mucang/android/jiakaoyi/signal/pos/Pos;)Z

    move-result v3

    if-eqz v3, :cond_5

    iget-object v3, p1, Lcn/mucang/android/jiakaoyi/signal/center/model/CarPos;->wheelLeftFront:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    .line 21
    invoke-direct {p0, v0, v3}, Lcn/mucang/android/jiakaoyi/teachingk2/unity/pageevent/e1/a;->c(Lcn/mucang/android/jiakaoyi/hpmap/a/a/g/m;Lcn/mucang/android/jiakaoyi/signal/pos/Pos;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 22
    iput-object v0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/unity/pageevent/e1/a;->c:Lcn/mucang/android/jiakaoyi/hpmap/a/a/g/m;

    .line 23
    :cond_7
    sget-object p2, Lcn/mucang/android/jiakaoyi/hpmap/car/Wheel;->None:Lcn/mucang/android/jiakaoyi/hpmap/car/Wheel;

    .line 24
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/unity/pageevent/e1/a;->c:Lcn/mucang/android/jiakaoyi/hpmap/a/a/g/m;

    const/4 v3, 0x0

    if-eqz v0, :cond_a

    .line 25
    iget-object v1, v0, Lcn/mucang/android/jiakaoyi/hpmap/a/a/g/m;->u:Lcn/mucang/android/jiakaoyi/signal/pos/b;

    invoke-static {v1, p1}, Lcn/mucang/android/jiakaoyi/hpmap/a/b/b;->b(Lcn/mucang/android/jiakaoyi/signal/pos/b;Lcn/mucang/android/jiakaoyi/signal/center/model/CarPos;)Lcn/mucang/android/jiakaoyi/hpmap/car/Wheel;

    move-result-object v1

    if-ne v1, p2, :cond_8

    .line 26
    iget-object v0, v0, Lcn/mucang/android/jiakaoyi/hpmap/a/a/g/m;->v:Lcn/mucang/android/jiakaoyi/signal/pos/b;

    invoke-static {v0, p1}, Lcn/mucang/android/jiakaoyi/hpmap/a/b/b;->b(Lcn/mucang/android/jiakaoyi/signal/pos/b;Lcn/mucang/android/jiakaoyi/signal/center/model/CarPos;)Lcn/mucang/android/jiakaoyi/hpmap/car/Wheel;

    move-result-object p1

    if-eq p1, p2, :cond_9

    const/4 v3, 0x2

    goto :goto_1

    :cond_8
    const/4 v3, 0x3

    :cond_9
    :goto_1
    const/4 p1, 0x1

    .line 27
    iput p1, v2, Lcn/mucang/android/jiakaoyi/teachingk2/unity/models/OperateResultModel;->inside:I

    .line 28
    iput v3, v2, Lcn/mucang/android/jiakaoyi/teachingk2/unity/models/OperateResultModel;->pressState:I

    .line 29
    iput-boolean p1, p0, Lcn/mucang/android/jiakaoyi/teachingk2/unity/pageevent/e1/a;->b:Z

    return-object v2

    .line 30
    :cond_a
    iput v3, v2, Lcn/mucang/android/jiakaoyi/teachingk2/unity/models/OperateResultModel;->inside:I

    .line 31
    iput v3, v2, Lcn/mucang/android/jiakaoyi/teachingk2/unity/models/OperateResultModel;->pressState:I

    .line 32
    iget-boolean p1, p0, Lcn/mucang/android/jiakaoyi/teachingk2/unity/pageevent/e1/a;->b:Z

    if-eqz p1, :cond_b

    .line 33
    iput-boolean v3, p0, Lcn/mucang/android/jiakaoyi/teachingk2/unity/pageevent/e1/a;->b:Z

    return-object v2

    :cond_b
    :goto_2
    return-object v1
.end method
