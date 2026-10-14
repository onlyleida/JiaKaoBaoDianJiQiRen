.class public Lcn/mucang/android/jiakaoyi/teachingk2/unity/pageevent/d1/a;
.super Lcn/mucang/android/jiakaoyi/teachingk2/unity/pageevent/v0$a;
.source "SourceFile"


# instance fields
.field private b:J

.field private c:J

.field private d:J

.field private e:Z

.field private f:Z

.field private g:Z

.field private h:Z

.field private i:Z

.field private j:Z

.field private k:Lcn/mucang/android/jiakaoyi/hpmap/a/a/g/c;

.field l:Lcn/mucang/android/jiakaoyi/framework/tts/c;

.field m:Lcn/mucang/android/jiakaoyi/framework/tts/c;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Lcn/mucang/android/jiakaoyi/teachingk2/unity/pageevent/v0$a;-><init>()V

    const-wide/16 v0, 0x0

    .line 2
    iput-wide v0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/unity/pageevent/d1/a;->b:J

    .line 3
    iput-wide v0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/unity/pageevent/d1/a;->c:J

    const/4 v0, 0x1

    .line 4
    iput-boolean v0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/unity/pageevent/d1/a;->e:Z

    .line 5
    iput-boolean v0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/unity/pageevent/d1/a;->f:Z

    .line 6
    iput-boolean v0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/unity/pageevent/d1/a;->g:Z

    const/4 v0, 0x0

    .line 7
    iput-boolean v0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/unity/pageevent/d1/a;->h:Z

    .line 8
    iput-boolean v0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/unity/pageevent/d1/a;->i:Z

    const/4 v0, 0x0

    .line 9
    iput-object v0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/unity/pageevent/d1/a;->k:Lcn/mucang/android/jiakaoyi/hpmap/a/a/g/c;

    .line 10
    new-instance v0, Lcn/mucang/android/jiakaoyi/teachingk2/unity/pageevent/d1/a$a;

    invoke-direct {v0, p0}, Lcn/mucang/android/jiakaoyi/teachingk2/unity/pageevent/d1/a$a;-><init>(Lcn/mucang/android/jiakaoyi/teachingk2/unity/pageevent/d1/a;)V

    .line 11
    new-instance v0, Lcn/mucang/android/jiakaoyi/teachingk2/unity/pageevent/d1/a$b;

    invoke-direct {v0, p0}, Lcn/mucang/android/jiakaoyi/teachingk2/unity/pageevent/d1/a$b;-><init>(Lcn/mucang/android/jiakaoyi/teachingk2/unity/pageevent/d1/a;)V

    iput-object v0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/unity/pageevent/d1/a;->l:Lcn/mucang/android/jiakaoyi/framework/tts/c;

    .line 12
    new-instance v0, Lcn/mucang/android/jiakaoyi/teachingk2/unity/pageevent/d1/a$c;

    invoke-direct {v0, p0}, Lcn/mucang/android/jiakaoyi/teachingk2/unity/pageevent/d1/a$c;-><init>(Lcn/mucang/android/jiakaoyi/teachingk2/unity/pageevent/d1/a;)V

    iput-object v0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/unity/pageevent/d1/a;->m:Lcn/mucang/android/jiakaoyi/framework/tts/c;

    return-void
.end method

.method static synthetic c(Lcn/mucang/android/jiakaoyi/teachingk2/unity/pageevent/d1/a;J)J
    .locals 0

    .line 1
    iput-wide p1, p0, Lcn/mucang/android/jiakaoyi/teachingk2/unity/pageevent/d1/a;->d:J

    return-wide p1
.end method

.method static synthetic d(Lcn/mucang/android/jiakaoyi/teachingk2/unity/pageevent/d1/a;Z)Z
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcn/mucang/android/jiakaoyi/teachingk2/unity/pageevent/d1/a;->j:Z

    return p1
.end method

.method static synthetic e(Lcn/mucang/android/jiakaoyi/teachingk2/unity/pageevent/d1/a;J)J
    .locals 0

    .line 1
    iput-wide p1, p0, Lcn/mucang/android/jiakaoyi/teachingk2/unity/pageevent/d1/a;->b:J

    return-wide p1
.end method

.method static synthetic f(Lcn/mucang/android/jiakaoyi/teachingk2/unity/pageevent/d1/a;Z)Z
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcn/mucang/android/jiakaoyi/teachingk2/unity/pageevent/d1/a;->e:Z

    return p1
.end method

.method static synthetic g(Lcn/mucang/android/jiakaoyi/teachingk2/unity/pageevent/d1/a;J)J
    .locals 0

    .line 1
    iput-wide p1, p0, Lcn/mucang/android/jiakaoyi/teachingk2/unity/pageevent/d1/a;->c:J

    return-wide p1
.end method

.method static synthetic h(Lcn/mucang/android/jiakaoyi/teachingk2/unity/pageevent/d1/a;Z)Z
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcn/mucang/android/jiakaoyi/teachingk2/unity/pageevent/d1/a;->f:Z

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
    iput-boolean p1, p0, Lcn/mucang/android/jiakaoyi/teachingk2/unity/pageevent/d1/a;->g:Z

    const/4 p1, 0x0

    .line 3
    iput-object p1, p0, Lcn/mucang/android/jiakaoyi/teachingk2/unity/pageevent/d1/a;->k:Lcn/mucang/android/jiakaoyi/hpmap/a/a/g/c;

    :cond_0
    return-void
.end method

.method public b(Lcn/mucang/android/jiakaoyi/signal/c/e;Ljava/lang/String;)Lcn/mucang/android/jiakaoyi/teachingk2/unity/models/OperateResultModel;
    .locals 12

    .line 1
    invoke-interface {p1}, Lcn/mucang/android/jiakaoyi/signal/c/e;->c()Lcn/mucang/android/jiakaoyi/signal/center/model/CarPos;

    move-result-object v0

    .line 2
    invoke-interface {p1}, Lcn/mucang/android/jiakaoyi/signal/c/e;->d()Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;

    move-result-object p1

    .line 3
    iget-boolean v1, p0, Lcn/mucang/android/jiakaoyi/teachingk2/unity/pageevent/v0$a;->a:Z

    const/4 v2, 0x0

    if-nez v1, :cond_0

    return-object v2

    .line 4
    :cond_0
    invoke-static {}, Lcn/mucang/android/jiakaoyi/teachingk2/res/n;->b()Lcn/mucang/android/jiakaoyi/teachingk2/res/n;

    move-result-object v1

    iget-object v1, v1, Lcn/mucang/android/jiakaoyi/teachingk2/res/n;->c:Lcn/mucang/android/jiakaoyi/mapcollect/c/j;

    if-nez v1, :cond_1

    return-object v2

    .line 5
    :cond_1
    iget-object v1, v1, Lcn/mucang/android/jiakaoyi/mapcollect/c/j;->f:Ljava/util/List;

    .line 6
    invoke-static {v1}, Lcn/mucang/android/core/utils/g;->b(Ljava/util/Collection;)Z

    move-result v3

    if-eqz v3, :cond_2

    return-object v2

    :cond_2
    if-eqz v0, :cond_13

    .line 7
    iget-object v3, v0, Lcn/mucang/android/jiakaoyi/signal/center/model/CarPos;->carRect:Lcn/mucang/android/jiakaoyi/signal/pos/c;

    if-eqz v3, :cond_13

    iget-object v3, v3, Lcn/mucang/android/jiakaoyi/signal/pos/c;->e:Lcn/mucang/android/jiakaoyi/signal/pos/a;

    if-nez v3, :cond_3

    goto/16 :goto_7

    .line 8
    :cond_3
    new-instance v3, Lcn/mucang/android/jiakaoyi/teachingk2/unity/models/OperateResultModel;

    invoke-direct {v3}, Lcn/mucang/android/jiakaoyi/teachingk2/unity/models/OperateResultModel;-><init>()V

    .line 9
    iput-object p2, v3, Lcn/mucang/android/jiakaoyi/teachingk2/unity/models/OperateResultModel;->projectId:Ljava/lang/String;

    .line 10
    iget-object p2, p0, Lcn/mucang/android/jiakaoyi/teachingk2/unity/pageevent/d1/a;->k:Lcn/mucang/android/jiakaoyi/hpmap/a/a/g/c;

    if-eqz p2, :cond_4

    .line 11
    invoke-virtual {p2, v0}, Lcn/mucang/android/jiakaoyi/hpmap/a/a/g/c;->v(Lcn/mucang/android/jiakaoyi/signal/center/model/CarPos;)Z

    move-result p2

    if-eqz p2, :cond_6

    .line 12
    iput-object v2, p0, Lcn/mucang/android/jiakaoyi/teachingk2/unity/pageevent/d1/a;->k:Lcn/mucang/android/jiakaoyi/hpmap/a/a/g/c;

    goto :goto_0

    .line 13
    :cond_4
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :cond_5
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_6

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcn/mucang/android/jiakaoyi/hpmap/a/a/g/c;

    .line 14
    invoke-virtual {v1, v0}, Lcn/mucang/android/jiakaoyi/hpmap/a/a/g/c;->m(Lcn/mucang/android/jiakaoyi/signal/center/model/CarPos;)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 15
    iput-object v1, p0, Lcn/mucang/android/jiakaoyi/teachingk2/unity/pageevent/d1/a;->k:Lcn/mucang/android/jiakaoyi/hpmap/a/a/g/c;

    .line 16
    :cond_6
    :goto_0
    iget-object p2, p0, Lcn/mucang/android/jiakaoyi/teachingk2/unity/pageevent/d1/a;->k:Lcn/mucang/android/jiakaoyi/hpmap/a/a/g/c;

    const/4 v1, 0x0

    if-eqz p2, :cond_12

    const/4 v2, 0x1

    .line 17
    iput v2, v3, Lcn/mucang/android/jiakaoyi/teachingk2/unity/models/OperateResultModel;->inside:I

    .line 18
    iget-object v4, p2, Lcn/mucang/android/jiakaoyi/hpmap/a/a/g/c;->o:Lcn/mucang/android/jiakaoyi/hpmap/model/Line;

    invoke-static {v0, v4}, Lcn/mucang/android/jiakaoyi/hpmap/a/b/a;->b(Lcn/mucang/android/jiakaoyi/signal/center/model/CarPos;Lcn/mucang/android/jiakaoyi/hpmap/model/Line;)Z

    move-result v4

    if-nez v4, :cond_8

    iget-object v4, p2, Lcn/mucang/android/jiakaoyi/hpmap/a/a/g/c;->p:Lcn/mucang/android/jiakaoyi/hpmap/model/Line;

    .line 19
    invoke-static {v0, v4}, Lcn/mucang/android/jiakaoyi/hpmap/a/b/a;->b(Lcn/mucang/android/jiakaoyi/signal/center/model/CarPos;Lcn/mucang/android/jiakaoyi/hpmap/model/Line;)Z

    move-result v4

    if-eqz v4, :cond_7

    goto :goto_1

    :cond_7
    const/4 v4, 0x0

    goto :goto_2

    :cond_8
    :goto_1
    const/4 v4, 0x1

    .line 20
    :goto_2
    iget-object v5, p2, Lcn/mucang/android/jiakaoyi/hpmap/a/a/g/c;->m:Lcn/mucang/android/jiakaoyi/hpmap/model/Line;

    invoke-static {v0, v5}, Lcn/mucang/android/jiakaoyi/hpmap/a/b/a;->b(Lcn/mucang/android/jiakaoyi/signal/center/model/CarPos;Lcn/mucang/android/jiakaoyi/hpmap/model/Line;)Z

    move-result v5

    if-eqz v5, :cond_9

    const/4 v4, 0x5

    .line 21
    :cond_9
    iget-boolean v5, p0, Lcn/mucang/android/jiakaoyi/teachingk2/unity/pageevent/d1/a;->h:Z

    if-eqz v5, :cond_a

    invoke-virtual {p1}, Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;->c()Z

    move-result v5

    if-eqz v5, :cond_a

    iget-object v5, p1, Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;->F:Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel$Direction;

    invoke-virtual {v5}, Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel$Direction;->isForward()Z

    move-result v5

    if-eqz v5, :cond_a

    iget-object v5, p2, Lcn/mucang/android/jiakaoyi/hpmap/a/a/g/c;->k:Lcn/mucang/android/jiakaoyi/hpmap/model/Line;

    .line 22
    invoke-static {v0, v5}, Lcn/mucang/android/jiakaoyi/hpmap/a/b/a;->a(Lcn/mucang/android/jiakaoyi/signal/center/model/CarPos;Lcn/mucang/android/jiakaoyi/hpmap/model/Line;)Z

    move-result v5

    if-eqz v5, :cond_a

    const/4 v4, 0x4

    .line 23
    :cond_a
    iget-object v5, p2, Lcn/mucang/android/jiakaoyi/hpmap/a/a/g/c;->w:Lcn/mucang/android/jiakaoyi/signal/pos/c;

    invoke-static {v0, v5}, Lcn/mucang/android/jiakaoyi/hpmap/a/b/a;->e(Lcn/mucang/android/jiakaoyi/signal/center/model/CarPos;Lcn/mucang/android/jiakaoyi/signal/pos/c;)Z

    move-result v5

    const-wide/16 v6, 0x0

    if-eqz v5, :cond_c

    .line 24
    iget-object v5, v0, Lcn/mucang/android/jiakaoyi/signal/center/model/CarPos;->center:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    iget-object v8, v0, Lcn/mucang/android/jiakaoyi/signal/center/model/CarPos;->carRect:Lcn/mucang/android/jiakaoyi/signal/pos/c;

    iget-object v8, v8, Lcn/mucang/android/jiakaoyi/signal/pos/c;->c:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    invoke-virtual {v5, v8}, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;->vectorTo(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;)Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    move-result-object v5

    iget-object v8, v0, Lcn/mucang/android/jiakaoyi/signal/center/model/CarPos;->center:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    iget-object v9, p2, Lcn/mucang/android/jiakaoyi/hpmap/a/a/g/c;->o:Lcn/mucang/android/jiakaoyi/hpmap/model/Line;

    iget-object v9, v9, Lcn/mucang/android/jiakaoyi/hpmap/model/Line;->start:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    invoke-virtual {v8, v9}, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;->vectorTo(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;)Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    move-result-object v8

    invoke-virtual {v5, v8}, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;->dot(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;)D

    move-result-wide v8

    cmpl-double v5, v8, v6

    if-lez v5, :cond_b

    const/4 v5, 0x1

    goto :goto_3

    :cond_b
    const/4 v5, 0x0

    :goto_3
    if-eqz v5, :cond_d

    .line 25
    iput v2, v3, Lcn/mucang/android/jiakaoyi/teachingk2/unity/models/OperateResultModel;->state:I

    .line 26
    iget-boolean v5, p0, Lcn/mucang/android/jiakaoyi/teachingk2/unity/pageevent/d1/a;->h:Z

    if-nez v5, :cond_d

    .line 27
    iput-boolean v2, p0, Lcn/mucang/android/jiakaoyi/teachingk2/unity/pageevent/d1/a;->h:Z

    goto :goto_4

    .line 28
    :cond_c
    iput v1, v3, Lcn/mucang/android/jiakaoyi/teachingk2/unity/models/OperateResultModel;->state:I

    .line 29
    :cond_d
    :goto_4
    iget-boolean v5, p0, Lcn/mucang/android/jiakaoyi/teachingk2/unity/pageevent/d1/a;->h:Z

    if-eqz v5, :cond_10

    if-eq v4, v2, :cond_10

    invoke-virtual {p1}, Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;->c()Z

    move-result v5

    if-eqz v5, :cond_10

    iget-object v5, p2, Lcn/mucang/android/jiakaoyi/hpmap/a/a/g/c;->w:Lcn/mucang/android/jiakaoyi/signal/pos/c;

    invoke-static {v0, v5}, Lcn/mucang/android/jiakaoyi/hpmap/a/b/a;->d(Lcn/mucang/android/jiakaoyi/signal/center/model/CarPos;Lcn/mucang/android/jiakaoyi/signal/pos/c;)Z

    move-result v5

    if-eqz v5, :cond_10

    .line 30
    iget-object p1, p1, Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;->F:Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel$Direction;

    invoke-virtual {p1}, Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel$Direction;->isForward()Z

    move-result p1

    if-eqz p1, :cond_e

    .line 31
    new-instance p1, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    iget-object v5, v0, Lcn/mucang/android/jiakaoyi/signal/center/model/CarPos;->carRect:Lcn/mucang/android/jiakaoyi/signal/pos/c;

    iget-object v5, v5, Lcn/mucang/android/jiakaoyi/signal/pos/c;->b:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    invoke-direct {p1, v5}, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;-><init>(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;)V

    iget-object v0, v0, Lcn/mucang/android/jiakaoyi/signal/center/model/CarPos;->carRect:Lcn/mucang/android/jiakaoyi/signal/pos/c;

    iget-object v0, v0, Lcn/mucang/android/jiakaoyi/signal/pos/c;->c:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    invoke-virtual {p1, v0}, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;->meanWith(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;)Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    move-result-object p1

    goto :goto_5

    .line 32
    :cond_e
    new-instance p1, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    iget-object v5, v0, Lcn/mucang/android/jiakaoyi/signal/center/model/CarPos;->carRect:Lcn/mucang/android/jiakaoyi/signal/pos/c;

    iget-object v5, v5, Lcn/mucang/android/jiakaoyi/signal/pos/c;->a:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    invoke-direct {p1, v5}, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;-><init>(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;)V

    iget-object v0, v0, Lcn/mucang/android/jiakaoyi/signal/center/model/CarPos;->carRect:Lcn/mucang/android/jiakaoyi/signal/pos/c;

    iget-object v0, v0, Lcn/mucang/android/jiakaoyi/signal/pos/c;->d:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    invoke-virtual {p1, v0}, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;->meanWith(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;)Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    move-result-object p1

    .line 33
    :goto_5
    iget-object v0, p2, Lcn/mucang/android/jiakaoyi/hpmap/a/a/g/c;->o:Lcn/mucang/android/jiakaoyi/hpmap/model/Line;

    iget-object v5, v0, Lcn/mucang/android/jiakaoyi/hpmap/model/Line;->start:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    iget-object v0, v0, Lcn/mucang/android/jiakaoyi/hpmap/model/Line;->end:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    invoke-static {p1, v5, v0}, Lcn/mucang/android/jiakaoyi/hpmap/d/a;->k(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;Lcn/mucang/android/jiakaoyi/signal/pos/Pos;Lcn/mucang/android/jiakaoyi/signal/pos/Pos;)D

    move-result-wide v8

    .line 34
    iget-object p2, p2, Lcn/mucang/android/jiakaoyi/hpmap/a/a/g/c;->p:Lcn/mucang/android/jiakaoyi/hpmap/model/Line;

    iget-object v0, p2, Lcn/mucang/android/jiakaoyi/hpmap/model/Line;->start:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    iget-object p2, p2, Lcn/mucang/android/jiakaoyi/hpmap/model/Line;->end:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    invoke-static {p1, v0, p2}, Lcn/mucang/android/jiakaoyi/hpmap/d/a;->k(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;Lcn/mucang/android/jiakaoyi/signal/pos/Pos;Lcn/mucang/android/jiakaoyi/signal/pos/Pos;)D

    move-result-wide p1

    sub-double/2addr p1, v8

    new-array v0, v2, [Ljava/lang/Object;

    .line 35
    invoke-static {p1, p2}, Ljava/lang/Math;->abs(D)D

    move-result-wide v8

    invoke-static {v8, v9}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v5

    aput-object v5, v0, v1

    const-string v5, "%.1f"

    invoke-static {v5, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v8

    .line 36
    iput-wide v8, v3, Lcn/mucang/android/jiakaoyi/teachingk2/unity/models/OperateResultModel;->diffDistance:D

    const-wide/high16 v10, 0x4039000000000000L    # 25.0

    cmpl-double v0, v8, v10

    if-lez v0, :cond_10

    .line 37
    iget-boolean v0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/unity/pageevent/d1/a;->f:Z

    if-eqz v0, :cond_10

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    iget-wide v10, p0, Lcn/mucang/android/jiakaoyi/teachingk2/unity/pageevent/d1/a;->c:J

    sub-long/2addr v8, v10

    const-wide/16 v10, 0x7d0

    cmp-long v0, v8, v10

    if-ltz v0, :cond_10

    cmpl-double v0, p1, v6

    if-lez v0, :cond_f

    .line 38
    sget p1, Lcn/mucang/android/jiakaoyi/teachbase/R$string;->teachbase_body_left_tip:I

    invoke-static {p1}, Lcn/mucang/android/jiakaoyi/framework/utils/k0;->a(I)Ljava/lang/String;

    move-result-object p1

    goto :goto_6

    .line 39
    :cond_f
    sget p1, Lcn/mucang/android/jiakaoyi/teachbase/R$string;->teachbase_body_right_tip:I

    invoke-static {p1}, Lcn/mucang/android/jiakaoyi/framework/utils/k0;->a(I)Ljava/lang/String;

    move-result-object p1

    .line 40
    :goto_6
    iput-boolean v1, p0, Lcn/mucang/android/jiakaoyi/teachingk2/unity/pageevent/d1/a;->f:Z

    .line 41
    sget-object p2, Lcn/mucang/android/jiakaoyi/framework/tts/TtsGrade;->TeachError:Lcn/mucang/android/jiakaoyi/framework/tts/TtsGrade;

    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/unity/pageevent/d1/a;->m:Lcn/mucang/android/jiakaoyi/framework/tts/c;

    invoke-static {p1, p2, v0}, Lcn/mucang/android/jiakaoyi/framework/tts/g;->C(Ljava/lang/String;Lcn/mucang/android/jiakaoyi/framework/tts/TtsGrade;Lcn/mucang/android/jiakaoyi/framework/tts/f;)V

    :cond_10
    if-ne v4, v2, :cond_11

    .line 42
    iget-boolean p1, p0, Lcn/mucang/android/jiakaoyi/teachingk2/unity/pageevent/d1/a;->e:Z

    if-eqz p1, :cond_11

    iget-boolean p1, p0, Lcn/mucang/android/jiakaoyi/teachingk2/unity/pageevent/d1/a;->i:Z

    if-nez p1, :cond_11

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p1

    iget-wide v5, p0, Lcn/mucang/android/jiakaoyi/teachingk2/unity/pageevent/d1/a;->b:J

    sub-long/2addr p1, v5

    const-wide/16 v5, 0xbb8

    cmp-long v0, p1, v5

    if-ltz v0, :cond_11

    .line 43
    iput-boolean v1, p0, Lcn/mucang/android/jiakaoyi/teachingk2/unity/pageevent/d1/a;->e:Z

    .line 44
    sget p1, Lcn/mucang/android/jiakaoyi/teachbase/R$string;->teachbase_car_press_line:I

    invoke-static {p1}, Lcn/mucang/android/jiakaoyi/framework/utils/k0;->a(I)Ljava/lang/String;

    move-result-object p1

    sget-object p2, Lcn/mucang/android/jiakaoyi/framework/tts/TtsGrade;->TeachError:Lcn/mucang/android/jiakaoyi/framework/tts/TtsGrade;

    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/unity/pageevent/d1/a;->l:Lcn/mucang/android/jiakaoyi/framework/tts/c;

    invoke-static {p1, p2, v0}, Lcn/mucang/android/jiakaoyi/framework/tts/g;->C(Ljava/lang/String;Lcn/mucang/android/jiakaoyi/framework/tts/TtsGrade;Lcn/mucang/android/jiakaoyi/framework/tts/f;)V

    .line 45
    :cond_11
    iput v4, v3, Lcn/mucang/android/jiakaoyi/teachingk2/unity/models/OperateResultModel;->pressState:I

    .line 46
    iput-boolean v2, p0, Lcn/mucang/android/jiakaoyi/teachingk2/unity/pageevent/d1/a;->g:Z

    return-object v3

    .line 47
    :cond_12
    iget-boolean p1, p0, Lcn/mucang/android/jiakaoyi/teachingk2/unity/pageevent/d1/a;->g:Z

    if-eqz p1, :cond_13

    .line 48
    iput-boolean v1, p0, Lcn/mucang/android/jiakaoyi/teachingk2/unity/pageevent/d1/a;->g:Z

    .line 49
    iput-boolean v1, p0, Lcn/mucang/android/jiakaoyi/teachingk2/unity/pageevent/d1/a;->h:Z

    .line 50
    iput v1, v3, Lcn/mucang/android/jiakaoyi/teachingk2/unity/models/OperateResultModel;->inside:I

    .line 51
    iput v1, v3, Lcn/mucang/android/jiakaoyi/teachingk2/unity/models/OperateResultModel;->pressState:I

    return-object v3

    :cond_13
    :goto_7
    return-object v2
.end method
