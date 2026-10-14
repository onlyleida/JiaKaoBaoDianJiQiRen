.class public Lcn/mucang/android/jiakaoyi/hpmap/a/b/a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/mucang/android/jiakaoyi/hpmap/a/b/a$b;
    }
.end annotation


# static fields
.field private static final a:Lcn/mucang/android/jiakaoyi/hpmap/a/b/a$b;

.field private static final b:Lcn/mucang/android/jiakaoyi/hpmap/a/b/a$b;

.field private static final c:Lcn/mucang/android/jiakaoyi/hpmap/a/b/a$b;

.field private static final d:Lcn/mucang/android/jiakaoyi/hpmap/a/b/a$b;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lcn/mucang/android/jiakaoyi/hpmap/a/b/a$b;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcn/mucang/android/jiakaoyi/hpmap/a/b/a$b;-><init>(Lcn/mucang/android/jiakaoyi/hpmap/a/b/a$a;)V

    sput-object v0, Lcn/mucang/android/jiakaoyi/hpmap/a/b/a;->a:Lcn/mucang/android/jiakaoyi/hpmap/a/b/a$b;

    .line 2
    new-instance v0, Lcn/mucang/android/jiakaoyi/hpmap/a/b/a$b;

    invoke-direct {v0, v1}, Lcn/mucang/android/jiakaoyi/hpmap/a/b/a$b;-><init>(Lcn/mucang/android/jiakaoyi/hpmap/a/b/a$a;)V

    sput-object v0, Lcn/mucang/android/jiakaoyi/hpmap/a/b/a;->b:Lcn/mucang/android/jiakaoyi/hpmap/a/b/a$b;

    .line 3
    new-instance v0, Lcn/mucang/android/jiakaoyi/hpmap/a/b/a$b;

    invoke-direct {v0, v1}, Lcn/mucang/android/jiakaoyi/hpmap/a/b/a$b;-><init>(Lcn/mucang/android/jiakaoyi/hpmap/a/b/a$a;)V

    sput-object v0, Lcn/mucang/android/jiakaoyi/hpmap/a/b/a;->c:Lcn/mucang/android/jiakaoyi/hpmap/a/b/a$b;

    .line 4
    new-instance v0, Lcn/mucang/android/jiakaoyi/hpmap/a/b/a$b;

    invoke-direct {v0, v1}, Lcn/mucang/android/jiakaoyi/hpmap/a/b/a$b;-><init>(Lcn/mucang/android/jiakaoyi/hpmap/a/b/a$a;)V

    sput-object v0, Lcn/mucang/android/jiakaoyi/hpmap/a/b/a;->d:Lcn/mucang/android/jiakaoyi/hpmap/a/b/a$b;

    return-void
.end method

.method public static a(Lcn/mucang/android/jiakaoyi/signal/center/model/CarPos;Lcn/mucang/android/jiakaoyi/hpmap/model/Line;)Z
    .locals 7

    .line 1
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/signal/center/model/CarPos;->wheelRightBack:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    iget-object v1, p0, Lcn/mucang/android/jiakaoyi/signal/center/model/CarPos;->wheelRightBackLast:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    iget-object v2, p0, Lcn/mucang/android/jiakaoyi/signal/center/model/CarPos;->wheelLeftBack:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    iget-object v3, p0, Lcn/mucang/android/jiakaoyi/signal/center/model/CarPos;->wheelLeftBackLast:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    iget-object v4, p1, Lcn/mucang/android/jiakaoyi/hpmap/model/Line;->start:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    iget-object v5, p1, Lcn/mucang/android/jiakaoyi/hpmap/model/Line;->end:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    invoke-static/range {v0 .. v5}, Lcn/mucang/android/jiakaoyi/hpmap/a/b/a;->w(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;Lcn/mucang/android/jiakaoyi/signal/pos/Pos;Lcn/mucang/android/jiakaoyi/signal/pos/Pos;Lcn/mucang/android/jiakaoyi/signal/pos/Pos;Lcn/mucang/android/jiakaoyi/signal/pos/Pos;Lcn/mucang/android/jiakaoyi/signal/pos/Pos;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v1, p0, Lcn/mucang/android/jiakaoyi/signal/center/model/CarPos;->wheelRightBack:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    iget-object v2, p0, Lcn/mucang/android/jiakaoyi/signal/center/model/CarPos;->wheelRightBackInner:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    iget-object v3, p0, Lcn/mucang/android/jiakaoyi/signal/center/model/CarPos;->wheelLeftBack:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    iget-object v4, p0, Lcn/mucang/android/jiakaoyi/signal/center/model/CarPos;->wheelLeftBackInner:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    iget-object v5, p1, Lcn/mucang/android/jiakaoyi/hpmap/model/Line;->start:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    iget-object v6, p1, Lcn/mucang/android/jiakaoyi/hpmap/model/Line;->end:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    .line 2
    invoke-static/range {v1 .. v6}, Lcn/mucang/android/jiakaoyi/hpmap/a/b/a;->w(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;Lcn/mucang/android/jiakaoyi/signal/pos/Pos;Lcn/mucang/android/jiakaoyi/signal/pos/Pos;Lcn/mucang/android/jiakaoyi/signal/pos/Pos;Lcn/mucang/android/jiakaoyi/signal/pos/Pos;Lcn/mucang/android/jiakaoyi/signal/pos/Pos;)Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method public static b(Lcn/mucang/android/jiakaoyi/signal/center/model/CarPos;Lcn/mucang/android/jiakaoyi/hpmap/model/Line;)Z
    .locals 1

    .line 1
    iget-object v0, p1, Lcn/mucang/android/jiakaoyi/hpmap/model/Line;->start:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    iget-object p1, p1, Lcn/mucang/android/jiakaoyi/hpmap/model/Line;->end:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    invoke-static {p0, v0, p1}, Lcn/mucang/android/jiakaoyi/hpmap/a/b/a;->c(Lcn/mucang/android/jiakaoyi/signal/center/model/CarPos;Lcn/mucang/android/jiakaoyi/signal/pos/Pos;Lcn/mucang/android/jiakaoyi/signal/pos/Pos;)Z

    move-result p0

    return p0
.end method

.method public static c(Lcn/mucang/android/jiakaoyi/signal/center/model/CarPos;Lcn/mucang/android/jiakaoyi/signal/pos/Pos;Lcn/mucang/android/jiakaoyi/signal/pos/Pos;)Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/signal/center/model/CarPos;->carRect:Lcn/mucang/android/jiakaoyi/signal/pos/c;

    invoke-static {v0, p1, p2}, Lcn/mucang/android/jiakaoyi/hpmap/a/b/c;->f(Lcn/mucang/android/jiakaoyi/signal/pos/c;Lcn/mucang/android/jiakaoyi/signal/pos/Pos;Lcn/mucang/android/jiakaoyi/signal/pos/Pos;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return p0

    .line 2
    :cond_0
    iget-object p0, p0, Lcn/mucang/android/jiakaoyi/signal/center/model/CarPos;->carPoints:Ljava/util/List;

    const/4 v0, 0x1

    invoke-static {p1, p2, p0, v0}, Lcn/mucang/android/jiakaoyi/hpmap/d/a;->A(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;Lcn/mucang/android/jiakaoyi/signal/pos/Pos;Ljava/util/List;Z)Z

    move-result p0

    return p0
.end method

.method public static d(Lcn/mucang/android/jiakaoyi/signal/center/model/CarPos;Lcn/mucang/android/jiakaoyi/signal/pos/c;)Z
    .locals 11

    .line 1
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/signal/center/model/CarPos;->bound:Lcn/mucang/android/jiakaoyi/signal/pos/a;

    iget-object v1, p1, Lcn/mucang/android/jiakaoyi/signal/pos/c;->e:Lcn/mucang/android/jiakaoyi/signal/pos/a;

    invoke-virtual {v0, v1}, Lcn/mucang/android/jiakaoyi/signal/pos/a;->h(Lcn/mucang/android/jiakaoyi/signal/pos/a;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    .line 2
    :cond_0
    invoke-virtual {p1}, Lcn/mucang/android/jiakaoyi/signal/pos/c;->b()Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    move-result-object v0

    .line 3
    iget-object v2, p0, Lcn/mucang/android/jiakaoyi/signal/center/model/CarPos;->center:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    invoke-virtual {v2, v0}, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;->distanceTo(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;)D

    move-result-wide v2

    iget-wide v4, p1, Lcn/mucang/android/jiakaoyi/signal/pos/c;->f:D

    iget-object v6, p0, Lcn/mucang/android/jiakaoyi/signal/center/model/CarPos;->carRect:Lcn/mucang/android/jiakaoyi/signal/pos/c;

    iget-wide v7, v6, Lcn/mucang/android/jiakaoyi/signal/pos/c;->f:D

    add-double/2addr v4, v7

    const-wide v7, 0x3f847ae147ae147bL    # 0.01

    add-double/2addr v4, v7

    cmpl-double v7, v2, v4

    if-lez v7, :cond_1

    return v1

    .line 4
    :cond_1
    invoke-static {v6, p1}, Lcn/mucang/android/jiakaoyi/hpmap/a/b/c;->g(Lcn/mucang/android/jiakaoyi/signal/pos/c;Lcn/mucang/android/jiakaoyi/signal/pos/c;)Z

    move-result v2

    if-nez v2, :cond_2

    return v1

    .line 5
    :cond_2
    iget-object v2, p0, Lcn/mucang/android/jiakaoyi/signal/center/model/CarPos;->center:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    invoke-static {p1, v2}, Lcn/mucang/android/jiakaoyi/hpmap/a/b/c;->a(Lcn/mucang/android/jiakaoyi/signal/pos/c;Lcn/mucang/android/jiakaoyi/signal/pos/Pos;)Z

    move-result v2

    const/4 v3, 0x1

    if-eqz v2, :cond_3

    return v3

    :cond_3
    const/4 v2, 0x0

    .line 6
    :goto_0
    iget-object v4, p0, Lcn/mucang/android/jiakaoyi/signal/center/model/CarPos;->carPoints:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-ge v2, v4, :cond_a

    .line 7
    iget-object v4, p0, Lcn/mucang/android/jiakaoyi/signal/center/model/CarPos;->carPoints:Ljava/util/List;

    invoke-interface {v4, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    .line 8
    iget-object v5, p0, Lcn/mucang/android/jiakaoyi/signal/center/model/CarPos;->carPoints:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    sub-int/2addr v5, v3

    if-ne v2, v5, :cond_4

    .line 9
    iget-object v5, p0, Lcn/mucang/android/jiakaoyi/signal/center/model/CarPos;->carPoints:Ljava/util/List;

    invoke-interface {v5, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    goto :goto_1

    .line 10
    :cond_4
    iget-object v5, p0, Lcn/mucang/android/jiakaoyi/signal/center/model/CarPos;->carPoints:Ljava/util/List;

    add-int/lit8 v6, v2, 0x1

    invoke-interface {v5, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    .line 11
    :goto_1
    invoke-static {v0, v4, v5}, Lcn/mucang/android/jiakaoyi/hpmap/d/a;->k(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;Lcn/mucang/android/jiakaoyi/signal/pos/Pos;Lcn/mucang/android/jiakaoyi/signal/pos/Pos;)D

    move-result-wide v6

    iget-wide v8, p1, Lcn/mucang/android/jiakaoyi/signal/pos/c;->f:D

    cmpl-double v10, v6, v8

    if-lez v10, :cond_5

    goto :goto_4

    .line 12
    :cond_5
    invoke-static {p1, v4}, Lcn/mucang/android/jiakaoyi/hpmap/a/b/c;->a(Lcn/mucang/android/jiakaoyi/signal/pos/c;Lcn/mucang/android/jiakaoyi/signal/pos/Pos;)Z

    move-result v6

    if-eqz v6, :cond_6

    return v3

    .line 13
    :cond_6
    iget-object v6, p1, Lcn/mucang/android/jiakaoyi/signal/pos/c;->g:Ljava/util/List;

    const/4 v7, 0x0

    .line 14
    :goto_2
    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v8

    if-ge v7, v8, :cond_9

    .line 15
    invoke-interface {v6, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    .line 16
    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v9

    sub-int/2addr v9, v3

    if-ne v7, v9, :cond_7

    .line 17
    invoke-interface {v6, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    goto :goto_3

    :cond_7
    add-int/lit8 v9, v7, 0x1

    .line 18
    invoke-interface {v6, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    .line 19
    :goto_3
    invoke-static {v8, v9, v4, v5}, Lcn/mucang/android/jiakaoyi/hpmap/d/a;->C(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;Lcn/mucang/android/jiakaoyi/signal/pos/Pos;Lcn/mucang/android/jiakaoyi/signal/pos/Pos;Lcn/mucang/android/jiakaoyi/signal/pos/Pos;)Z

    move-result v8

    if-eqz v8, :cond_8

    return v3

    :cond_8
    add-int/lit8 v7, v7, 0x1

    goto :goto_2

    :cond_9
    :goto_4
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_a
    return v1
.end method

.method public static e(Lcn/mucang/android/jiakaoyi/signal/center/model/CarPos;Lcn/mucang/android/jiakaoyi/signal/pos/c;)Z
    .locals 8

    .line 1
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/signal/center/model/CarPos;->bound:Lcn/mucang/android/jiakaoyi/signal/pos/a;

    iget-object v1, p1, Lcn/mucang/android/jiakaoyi/signal/pos/c;->e:Lcn/mucang/android/jiakaoyi/signal/pos/a;

    invoke-virtual {v0, v1}, Lcn/mucang/android/jiakaoyi/signal/pos/a;->h(Lcn/mucang/android/jiakaoyi/signal/pos/a;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    .line 2
    :cond_0
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/signal/center/model/CarPos;->center:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    invoke-virtual {p1}, Lcn/mucang/android/jiakaoyi/signal/pos/c;->b()Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;->distanceTo(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;)D

    move-result-wide v2

    iget-wide v4, p1, Lcn/mucang/android/jiakaoyi/signal/pos/c;->f:D

    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/signal/center/model/CarPos;->carRect:Lcn/mucang/android/jiakaoyi/signal/pos/c;

    iget-wide v6, v0, Lcn/mucang/android/jiakaoyi/signal/pos/c;->f:D

    add-double/2addr v4, v6

    cmpl-double v0, v2, v4

    if-lez v0, :cond_1

    return v1

    .line 3
    :cond_1
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/signal/center/model/CarPos;->center:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    invoke-static {p1, v0}, Lcn/mucang/android/jiakaoyi/hpmap/a/b/c;->c(Lcn/mucang/android/jiakaoyi/signal/pos/c;Lcn/mucang/android/jiakaoyi/signal/pos/Pos;)Z

    move-result v0

    if-nez v0, :cond_2

    return v1

    .line 4
    :cond_2
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/signal/center/model/CarPos;->wheelLeftBack:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    invoke-static {p1, v0}, Lcn/mucang/android/jiakaoyi/hpmap/a/b/c;->c(Lcn/mucang/android/jiakaoyi/signal/pos/c;Lcn/mucang/android/jiakaoyi/signal/pos/Pos;)Z

    move-result v0

    if-nez v0, :cond_3

    return v1

    .line 5
    :cond_3
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/signal/center/model/CarPos;->wheelLeftFront:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    invoke-static {p1, v0}, Lcn/mucang/android/jiakaoyi/hpmap/a/b/c;->c(Lcn/mucang/android/jiakaoyi/signal/pos/c;Lcn/mucang/android/jiakaoyi/signal/pos/Pos;)Z

    move-result v0

    if-nez v0, :cond_4

    return v1

    .line 6
    :cond_4
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/signal/center/model/CarPos;->wheelRightBack:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    invoke-static {p1, v0}, Lcn/mucang/android/jiakaoyi/hpmap/a/b/c;->c(Lcn/mucang/android/jiakaoyi/signal/pos/c;Lcn/mucang/android/jiakaoyi/signal/pos/Pos;)Z

    move-result v0

    if-nez v0, :cond_5

    return v1

    .line 7
    :cond_5
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/signal/center/model/CarPos;->wheelRightFront:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    invoke-static {p1, v0}, Lcn/mucang/android/jiakaoyi/hpmap/a/b/c;->c(Lcn/mucang/android/jiakaoyi/signal/pos/c;Lcn/mucang/android/jiakaoyi/signal/pos/Pos;)Z

    move-result v0

    if-nez v0, :cond_6

    return v1

    .line 8
    :cond_6
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/signal/center/model/CarPos;->carRect:Lcn/mucang/android/jiakaoyi/signal/pos/c;

    invoke-static {v0, p1}, Lcn/mucang/android/jiakaoyi/hpmap/a/b/a;->p(Lcn/mucang/android/jiakaoyi/signal/pos/c;Lcn/mucang/android/jiakaoyi/signal/pos/c;)Z

    move-result v0

    const/4 v2, 0x1

    if-eqz v0, :cond_7

    return v2

    .line 9
    :cond_7
    iget-object p0, p0, Lcn/mucang/android/jiakaoyi/signal/center/model/CarPos;->carPoints:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_8
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_9

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    .line 10
    invoke-static {p1, v0}, Lcn/mucang/android/jiakaoyi/hpmap/a/b/c;->c(Lcn/mucang/android/jiakaoyi/signal/pos/c;Lcn/mucang/android/jiakaoyi/signal/pos/Pos;)Z

    move-result v0

    if-nez v0, :cond_8

    return v1

    :cond_9
    return v2
.end method

.method public static f(Lcn/mucang/android/jiakaoyi/signal/center/model/CarPos;Lcn/mucang/android/jiakaoyi/signal/pos/Pos;Lcn/mucang/android/jiakaoyi/signal/pos/Pos;)Z
    .locals 3

    .line 1
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/signal/center/model/CarPos;->wheelLeftBack:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    iget-object v1, p0, Lcn/mucang/android/jiakaoyi/signal/center/model/CarPos;->wheelRightBack:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    invoke-static {v0, v1, p1, p2}, Lcn/mucang/android/jiakaoyi/hpmap/d/a;->C(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;Lcn/mucang/android/jiakaoyi/signal/pos/Pos;Lcn/mucang/android/jiakaoyi/signal/pos/Pos;Lcn/mucang/android/jiakaoyi/signal/pos/Pos;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    return v1

    .line 2
    :cond_0
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/signal/center/model/CarPos;->wheelLeftFront:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    iget-object v2, p0, Lcn/mucang/android/jiakaoyi/signal/center/model/CarPos;->wheelRightFront:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    invoke-static {v0, v2, p1, p2}, Lcn/mucang/android/jiakaoyi/hpmap/d/a;->C(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;Lcn/mucang/android/jiakaoyi/signal/pos/Pos;Lcn/mucang/android/jiakaoyi/signal/pos/Pos;Lcn/mucang/android/jiakaoyi/signal/pos/Pos;)Z

    move-result v0

    if-eqz v0, :cond_1

    return v1

    .line 3
    :cond_1
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/signal/center/model/CarPos;->wheelLeftBack:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    iget-object v2, p0, Lcn/mucang/android/jiakaoyi/signal/center/model/CarPos;->wheelRightFront:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    invoke-static {v0, v2, p1, p2}, Lcn/mucang/android/jiakaoyi/hpmap/d/a;->C(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;Lcn/mucang/android/jiakaoyi/signal/pos/Pos;Lcn/mucang/android/jiakaoyi/signal/pos/Pos;Lcn/mucang/android/jiakaoyi/signal/pos/Pos;)Z

    move-result v0

    if-eqz v0, :cond_2

    return v1

    .line 4
    :cond_2
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/signal/center/model/CarPos;->wheelLeftFront:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    iget-object v2, p0, Lcn/mucang/android/jiakaoyi/signal/center/model/CarPos;->wheelRightBack:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    invoke-static {v0, v2, p1, p2}, Lcn/mucang/android/jiakaoyi/hpmap/d/a;->C(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;Lcn/mucang/android/jiakaoyi/signal/pos/Pos;Lcn/mucang/android/jiakaoyi/signal/pos/Pos;Lcn/mucang/android/jiakaoyi/signal/pos/Pos;)Z

    move-result v0

    if-eqz v0, :cond_3

    return v1

    .line 5
    :cond_3
    invoke-static {p0, p1, p2}, Lcn/mucang/android/jiakaoyi/hpmap/a/b/a;->c(Lcn/mucang/android/jiakaoyi/signal/center/model/CarPos;Lcn/mucang/android/jiakaoyi/signal/pos/Pos;Lcn/mucang/android/jiakaoyi/signal/pos/Pos;)Z

    move-result p0

    return p0
.end method

.method public static g(Lcn/mucang/android/jiakaoyi/signal/center/model/CarPos;Ljava/util/List;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcn/mucang/android/jiakaoyi/signal/center/model/CarPos;",
            "Ljava/util/List<",
            "Lcn/mucang/android/jiakaoyi/signal/pos/Pos;",
            ">;)Z"
        }
    .end annotation

    const/4 v0, 0x1

    .line 1
    invoke-static {p0, p1, v0}, Lcn/mucang/android/jiakaoyi/hpmap/a/b/a;->h(Lcn/mucang/android/jiakaoyi/signal/center/model/CarPos;Ljava/util/List;I)Z

    move-result p0

    return p0
.end method

.method public static h(Lcn/mucang/android/jiakaoyi/signal/center/model/CarPos;Ljava/util/List;I)Z
    .locals 17
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcn/mucang/android/jiakaoyi/signal/center/model/CarPos;",
            "Ljava/util/List<",
            "Lcn/mucang/android/jiakaoyi/signal/pos/Pos;",
            ">;I)Z"
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 1
    invoke-static/range {p1 .. p1}, Lcn/mucang/android/core/utils/g;->b(Ljava/util/Collection;)Z

    move-result v2

    const/4 v3, 0x0

    if-eqz v2, :cond_0

    return v3

    :cond_0
    const/4 v2, 0x0

    .line 2
    :goto_0
    invoke-interface/range {p1 .. p1}, Ljava/util/List;->size()I

    move-result v4

    sub-int v4, v4, p2

    if-ge v2, v4, :cond_7

    .line 3
    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    add-int v2, v2, p2

    .line 4
    invoke-interface/range {p1 .. p1}, Ljava/util/List;->size()I

    move-result v5

    const/4 v6, 0x1

    sub-int/2addr v5, v6

    invoke-static {v2, v5}, Ljava/lang/Math;->min(II)I

    move-result v5

    .line 5
    invoke-interface {v1, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    .line 6
    iget-wide v7, v4, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;->x:D

    iget-wide v9, v5, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;->x:D

    invoke-static {v7, v8, v9, v10}, Ljava/lang/Math;->min(DD)D

    move-result-wide v7

    .line 7
    iget-wide v9, v4, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;->x:D

    iget-wide v11, v5, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;->x:D

    invoke-static {v9, v10, v11, v12}, Ljava/lang/Math;->max(DD)D

    move-result-wide v9

    .line 8
    iget-wide v11, v4, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;->y:D

    iget-wide v13, v5, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;->y:D

    invoke-static {v11, v12, v13, v14}, Ljava/lang/Math;->min(DD)D

    move-result-wide v11

    .line 9
    iget-wide v13, v4, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;->y:D

    move-object v15, v4

    iget-wide v3, v5, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;->y:D

    invoke-static {v13, v14, v3, v4}, Ljava/lang/Math;->max(DD)D

    move-result-wide v3

    .line 10
    iget-object v13, v0, Lcn/mucang/android/jiakaoyi/signal/center/model/CarPos;->bound:Lcn/mucang/android/jiakaoyi/signal/pos/a;

    invoke-virtual {v13}, Lcn/mucang/android/jiakaoyi/signal/pos/a;->d()D

    move-result-wide v13

    cmpg-double v16, v9, v13

    if-gez v16, :cond_1

    goto :goto_1

    .line 11
    :cond_1
    iget-object v9, v0, Lcn/mucang/android/jiakaoyi/signal/center/model/CarPos;->bound:Lcn/mucang/android/jiakaoyi/signal/pos/a;

    invoke-virtual {v9}, Lcn/mucang/android/jiakaoyi/signal/pos/a;->b()D

    move-result-wide v9

    cmpl-double v13, v7, v9

    if-lez v13, :cond_2

    goto :goto_1

    .line 12
    :cond_2
    iget-object v7, v0, Lcn/mucang/android/jiakaoyi/signal/center/model/CarPos;->bound:Lcn/mucang/android/jiakaoyi/signal/pos/a;

    invoke-virtual {v7}, Lcn/mucang/android/jiakaoyi/signal/pos/a;->c()D

    move-result-wide v7

    cmpl-double v9, v11, v7

    if-lez v9, :cond_3

    goto :goto_1

    .line 13
    :cond_3
    iget-object v7, v0, Lcn/mucang/android/jiakaoyi/signal/center/model/CarPos;->bound:Lcn/mucang/android/jiakaoyi/signal/pos/a;

    invoke-virtual {v7}, Lcn/mucang/android/jiakaoyi/signal/pos/a;->e()D

    move-result-wide v7

    cmpg-double v9, v3, v7

    if-gez v9, :cond_4

    goto :goto_1

    .line 14
    :cond_4
    iget-object v3, v0, Lcn/mucang/android/jiakaoyi/signal/center/model/CarPos;->carRect:Lcn/mucang/android/jiakaoyi/signal/pos/c;

    move-object v4, v15

    invoke-static {v3, v4, v5}, Lcn/mucang/android/jiakaoyi/hpmap/a/b/c;->f(Lcn/mucang/android/jiakaoyi/signal/pos/c;Lcn/mucang/android/jiakaoyi/signal/pos/Pos;Lcn/mucang/android/jiakaoyi/signal/pos/Pos;)Z

    move-result v3

    if-nez v3, :cond_5

    goto :goto_1

    .line 15
    :cond_5
    invoke-static {v0, v4, v5}, Lcn/mucang/android/jiakaoyi/hpmap/a/b/a;->f(Lcn/mucang/android/jiakaoyi/signal/center/model/CarPos;Lcn/mucang/android/jiakaoyi/signal/pos/Pos;Lcn/mucang/android/jiakaoyi/signal/pos/Pos;)Z

    move-result v3

    if-eqz v3, :cond_6

    return v6

    :cond_6
    :goto_1
    const/4 v3, 0x0

    goto :goto_0

    :cond_7
    const/4 v2, 0x0

    return v2
.end method

.method public static i(Lcn/mucang/android/jiakaoyi/signal/center/model/CarPos;Lcn/mucang/android/jiakaoyi/hpmap/model/Line;)D
    .locals 1

    .line 1
    iget-object v0, p1, Lcn/mucang/android/jiakaoyi/hpmap/model/Line;->start:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    iget-object p1, p1, Lcn/mucang/android/jiakaoyi/hpmap/model/Line;->end:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    invoke-static {p0, v0, p1}, Lcn/mucang/android/jiakaoyi/hpmap/a/b/a;->j(Lcn/mucang/android/jiakaoyi/signal/center/model/CarPos;Lcn/mucang/android/jiakaoyi/signal/pos/Pos;Lcn/mucang/android/jiakaoyi/signal/pos/Pos;)D

    move-result-wide p0

    return-wide p0
.end method

.method public static j(Lcn/mucang/android/jiakaoyi/signal/center/model/CarPos;Lcn/mucang/android/jiakaoyi/signal/pos/Pos;Lcn/mucang/android/jiakaoyi/signal/pos/Pos;)D
    .locals 13

    .line 1
    new-instance v0, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    invoke-direct {v0, p1}, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;-><init>(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;)V

    invoke-virtual {v0, p2}, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;->meanWith(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;)Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    move-result-object v0

    .line 2
    invoke-virtual {p1, p2}, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;->angleTo(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;)D

    move-result-wide p1

    neg-double p1, p1

    .line 3
    invoke-static {p1, p2}, Ljava/lang/Math;->sin(D)D

    move-result-wide v7

    .line 4
    invoke-static {p1, p2}, Ljava/lang/Math;->cos(D)D

    move-result-wide p1

    .line 5
    iget-object p0, p0, Lcn/mucang/android/jiakaoyi/signal/center/model/CarPos;->carPoints:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    const-wide v1, 0x7fefffffffffffffL    # Double.MAX_VALUE

    const-wide v3, -0x10000000000001L

    move-wide v9, v1

    move-wide v11, v3

    :cond_0
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    .line 6
    new-instance v2, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    invoke-direct {v2, v1}, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;-><init>(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;)V

    move-object v1, v2

    move-object v2, v0

    move-wide v3, p1

    move-wide v5, v7

    invoke-virtual/range {v1 .. v6}, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;->rotate(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;DD)Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    move-result-object v1

    .line 7
    iget-wide v1, v1, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;->y:D

    iget-wide v3, v0, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;->y:D

    sub-double/2addr v1, v3

    cmpg-double v3, v1, v9

    if-gez v3, :cond_1

    move-wide v9, v1

    :cond_1
    cmpl-double v3, v1, v11

    if-lez v3, :cond_0

    move-wide v11, v1

    goto :goto_0

    :cond_2
    const-wide/16 p0, 0x0

    cmpl-double p2, v11, p0

    if-ltz p2, :cond_3

    cmpl-double p2, v9, p0

    if-ltz p2, :cond_3

    return-wide v9

    :cond_3
    cmpg-double p2, v11, p0

    if-gtz p2, :cond_4

    cmpg-double p2, v9, p0

    if-gtz p2, :cond_4

    .line 8
    invoke-static {v11, v12}, Ljava/lang/Math;->abs(D)D

    move-result-wide p0

    return-wide p0

    .line 9
    :cond_4
    invoke-static {v11, v12}, Ljava/lang/Math;->abs(D)D

    move-result-wide p0

    invoke-static {v9, v10}, Ljava/lang/Math;->abs(D)D

    move-result-wide v0

    invoke-static {p0, p1, v0, v1}, Ljava/lang/Math;->min(DD)D

    move-result-wide p0

    neg-double p0, p0

    return-wide p0
.end method

.method public static k(Lcn/mucang/android/jiakaoyi/signal/center/model/CarPos;Lcn/mucang/android/jiakaoyi/hpmap/model/Line;)Z
    .locals 7

    .line 1
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/signal/center/model/CarPos;->wheelLeftFront:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    iget-object v1, p0, Lcn/mucang/android/jiakaoyi/signal/center/model/CarPos;->wheelLeftFrontLast:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    iget-object v2, p0, Lcn/mucang/android/jiakaoyi/signal/center/model/CarPos;->wheelRightFront:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    iget-object v3, p0, Lcn/mucang/android/jiakaoyi/signal/center/model/CarPos;->wheelRightFrontLast:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    iget-object v4, p1, Lcn/mucang/android/jiakaoyi/hpmap/model/Line;->start:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    iget-object v5, p1, Lcn/mucang/android/jiakaoyi/hpmap/model/Line;->end:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    invoke-static/range {v0 .. v5}, Lcn/mucang/android/jiakaoyi/hpmap/a/b/a;->w(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;Lcn/mucang/android/jiakaoyi/signal/pos/Pos;Lcn/mucang/android/jiakaoyi/signal/pos/Pos;Lcn/mucang/android/jiakaoyi/signal/pos/Pos;Lcn/mucang/android/jiakaoyi/signal/pos/Pos;Lcn/mucang/android/jiakaoyi/signal/pos/Pos;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v1, p0, Lcn/mucang/android/jiakaoyi/signal/center/model/CarPos;->wheelLeftFront:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    iget-object v2, p0, Lcn/mucang/android/jiakaoyi/signal/center/model/CarPos;->wheelLeftFrontInner:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    iget-object v3, p0, Lcn/mucang/android/jiakaoyi/signal/center/model/CarPos;->wheelRightFront:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    iget-object v4, p0, Lcn/mucang/android/jiakaoyi/signal/center/model/CarPos;->wheelRightFrontInner:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    iget-object v5, p1, Lcn/mucang/android/jiakaoyi/hpmap/model/Line;->start:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    iget-object v6, p1, Lcn/mucang/android/jiakaoyi/hpmap/model/Line;->end:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    .line 2
    invoke-static/range {v1 .. v6}, Lcn/mucang/android/jiakaoyi/hpmap/a/b/a;->w(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;Lcn/mucang/android/jiakaoyi/signal/pos/Pos;Lcn/mucang/android/jiakaoyi/signal/pos/Pos;Lcn/mucang/android/jiakaoyi/signal/pos/Pos;Lcn/mucang/android/jiakaoyi/signal/pos/Pos;Lcn/mucang/android/jiakaoyi/signal/pos/Pos;)Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method public static l(Lcn/mucang/android/jiakaoyi/signal/center/model/CarPos;Lcn/mucang/android/jiakaoyi/signal/pos/Pos;)Z
    .locals 3

    .line 1
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/signal/center/model/CarPos;->front:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    iget-object v1, p0, Lcn/mucang/android/jiakaoyi/signal/center/model/CarPos;->back:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    invoke-virtual {v0, v1}, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;->vectorTo(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;)Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    move-result-object v0

    iget-object p0, p0, Lcn/mucang/android/jiakaoyi/signal/center/model/CarPos;->front:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    invoke-virtual {p0, p1}, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;->vectorTo(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;)Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;->dot(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;)D

    move-result-wide p0

    const-wide/16 v0, 0x0

    cmpl-double v2, p0, v0

    if-lez v2, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static m(Lcn/mucang/android/jiakaoyi/signal/center/model/CarPos;Lcn/mucang/android/jiakaoyi/signal/pos/Pos;)Z
    .locals 7

    .line 1
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/signal/center/model/CarPos;->wheelLeftFrontLast:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    const/4 v1, 0x1

    const/4 v2, 0x0

    const-wide/16 v3, 0x0

    if-eqz v0, :cond_1

    iget-object v5, p0, Lcn/mucang/android/jiakaoyi/signal/center/model/CarPos;->wheelRightFrontLast:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    if-eqz v5, :cond_1

    .line 2
    new-instance v5, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    invoke-direct {v5, v0}, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;-><init>(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;)V

    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/signal/center/model/CarPos;->wheelRightFrontLast:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    invoke-virtual {v5, v0}, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;->meanWith(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;)Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    move-result-object v0

    .line 3
    new-instance v5, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    iget-object v6, p0, Lcn/mucang/android/jiakaoyi/signal/center/model/CarPos;->wheelLeftFront:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    invoke-direct {v5, v6}, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;-><init>(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;)V

    iget-object p0, p0, Lcn/mucang/android/jiakaoyi/signal/center/model/CarPos;->wheelRightFront:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    invoke-virtual {v5, p0}, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;->meanWith(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;)Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    move-result-object p0

    .line 4
    invoke-virtual {p0, v0}, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;->vectorTo(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;)Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    move-result-object v0

    invoke-virtual {p0, p1}, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;->vectorTo(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;)Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;->dot(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;)D

    move-result-wide p0

    cmpl-double v0, p0, v3

    if-lez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1

    .line 5
    :cond_1
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/signal/center/model/CarPos;->back:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    iget-object v5, p0, Lcn/mucang/android/jiakaoyi/signal/center/model/CarPos;->front:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    invoke-virtual {v0, v5}, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;->vectorTo(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;)Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    move-result-object v0

    iget-object p0, p0, Lcn/mucang/android/jiakaoyi/signal/center/model/CarPos;->back:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    invoke-virtual {p0, p1}, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;->vectorTo(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;)Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;->dot(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;)D

    move-result-wide p0

    cmpg-double v0, p0, v3

    if-gez v0, :cond_2

    goto :goto_1

    :cond_2
    const/4 v1, 0x0

    :goto_1
    return v1
.end method

.method public static n(Lcn/mucang/android/jiakaoyi/signal/center/model/CarPos;Lcn/mucang/android/jiakaoyi/signal/pos/Pos;Lcn/mucang/android/jiakaoyi/signal/pos/Pos;)Z
    .locals 4

    .line 1
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/signal/center/model/CarPos;->back:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    iget-object v1, p0, Lcn/mucang/android/jiakaoyi/signal/center/model/CarPos;->front:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    invoke-virtual {v0, v1}, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;->vectorTo(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;)Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    move-result-object v0

    invoke-virtual {p1, p2}, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;->vectorTo(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;)Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;->dot(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;)D

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmpl-double p1, v0, v2

    if-lez p1, :cond_0

    iget-object p1, p0, Lcn/mucang/android/jiakaoyi/signal/center/model/CarPos;->back:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/signal/center/model/CarPos;->front:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    .line 2
    invoke-virtual {p1, v0}, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;->vectorTo(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;)Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    move-result-object p1

    iget-object p0, p0, Lcn/mucang/android/jiakaoyi/signal/center/model/CarPos;->back:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    invoke-virtual {p0, p2}, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;->vectorTo(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;)Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    move-result-object p0

    invoke-virtual {p1, p0}, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;->dot(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;)D

    move-result-wide p0

    cmpl-double p2, p0, v2

    if-lez p2, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static o(Lcn/mucang/android/jiakaoyi/signal/center/model/CarPos;Lcn/mucang/android/jiakaoyi/signal/pos/Pos;)Z
    .locals 3

    .line 1
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/signal/center/model/CarPos;->back:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    iget-object v1, p0, Lcn/mucang/android/jiakaoyi/signal/center/model/CarPos;->front:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    invoke-virtual {v0, v1}, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;->vectorTo(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;)Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    move-result-object v0

    iget-object p0, p0, Lcn/mucang/android/jiakaoyi/signal/center/model/CarPos;->back:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    invoke-virtual {p0, p1}, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;->vectorTo(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;)Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;->dot(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;)D

    move-result-wide p0

    const-wide/16 v0, 0x0

    cmpl-double v2, p0, v0

    if-lez v2, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static p(Lcn/mucang/android/jiakaoyi/signal/pos/c;Lcn/mucang/android/jiakaoyi/signal/pos/c;)Z
    .locals 2

    .line 1
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/signal/pos/c;->e:Lcn/mucang/android/jiakaoyi/signal/pos/a;

    iget-object v1, p1, Lcn/mucang/android/jiakaoyi/signal/pos/c;->e:Lcn/mucang/android/jiakaoyi/signal/pos/a;

    invoke-virtual {v0, v1}, Lcn/mucang/android/jiakaoyi/signal/pos/a;->h(Lcn/mucang/android/jiakaoyi/signal/pos/a;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    .line 2
    :cond_0
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/signal/pos/c;->a:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    invoke-static {p1, v0}, Lcn/mucang/android/jiakaoyi/hpmap/a/b/c;->c(Lcn/mucang/android/jiakaoyi/signal/pos/c;Lcn/mucang/android/jiakaoyi/signal/pos/Pos;)Z

    move-result v0

    if-nez v0, :cond_1

    return v1

    .line 3
    :cond_1
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/signal/pos/c;->b:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    invoke-static {p1, v0}, Lcn/mucang/android/jiakaoyi/hpmap/a/b/c;->c(Lcn/mucang/android/jiakaoyi/signal/pos/c;Lcn/mucang/android/jiakaoyi/signal/pos/Pos;)Z

    move-result v0

    if-nez v0, :cond_2

    return v1

    .line 4
    :cond_2
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/signal/pos/c;->c:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    invoke-static {p1, v0}, Lcn/mucang/android/jiakaoyi/hpmap/a/b/c;->c(Lcn/mucang/android/jiakaoyi/signal/pos/c;Lcn/mucang/android/jiakaoyi/signal/pos/Pos;)Z

    move-result v0

    if-nez v0, :cond_3

    return v1

    .line 5
    :cond_3
    iget-object p0, p0, Lcn/mucang/android/jiakaoyi/signal/pos/c;->d:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    invoke-static {p1, p0}, Lcn/mucang/android/jiakaoyi/hpmap/a/b/c;->c(Lcn/mucang/android/jiakaoyi/signal/pos/c;Lcn/mucang/android/jiakaoyi/signal/pos/Pos;)Z

    move-result p0

    if-nez p0, :cond_4

    return v1

    :cond_4
    const/4 p0, 0x1

    return p0
.end method

.method private static q(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;Lcn/mucang/android/jiakaoyi/signal/pos/Pos;)V
    .locals 2

    .line 1
    iget-wide v0, p0, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;->x:D

    double-to-int v0, v0

    int-to-double v0, v0

    iput-wide v0, p1, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;->x:D

    .line 2
    iget-wide v0, p0, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;->y:D

    double-to-int v0, v0

    int-to-double v0, v0

    iput-wide v0, p1, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;->y:D

    .line 3
    iget-wide v0, p0, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;->z:D

    double-to-int p0, v0

    int-to-double v0, p0

    iput-wide v0, p1, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;->z:D

    return-void
.end method

.method public static r(Lcn/mucang/android/jiakaoyi/signal/center/model/CarPos;Lcn/mucang/android/jiakaoyi/hpmap/model/Line;)Lcn/mucang/android/jiakaoyi/hpmap/car/Wheel;
    .locals 1

    .line 1
    iget-object v0, p1, Lcn/mucang/android/jiakaoyi/hpmap/model/Line;->start:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    iget-object p1, p1, Lcn/mucang/android/jiakaoyi/hpmap/model/Line;->end:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    invoke-static {p0, v0, p1}, Lcn/mucang/android/jiakaoyi/hpmap/a/b/a;->s(Lcn/mucang/android/jiakaoyi/signal/center/model/CarPos;Lcn/mucang/android/jiakaoyi/signal/pos/Pos;Lcn/mucang/android/jiakaoyi/signal/pos/Pos;)Lcn/mucang/android/jiakaoyi/hpmap/car/Wheel;

    move-result-object p0

    return-object p0
.end method

.method public static s(Lcn/mucang/android/jiakaoyi/signal/center/model/CarPos;Lcn/mucang/android/jiakaoyi/signal/pos/Pos;Lcn/mucang/android/jiakaoyi/signal/pos/Pos;)Lcn/mucang/android/jiakaoyi/hpmap/car/Wheel;
    .locals 4

    .line 1
    sget-object v0, Lcn/mucang/android/jiakaoyi/hpmap/a/b/a;->a:Lcn/mucang/android/jiakaoyi/hpmap/a/b/a$b;

    invoke-virtual {v0}, Lcn/mucang/android/jiakaoyi/hpmap/a/b/a$b;->a()Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    move-result-object v0

    .line 2
    sget-object v1, Lcn/mucang/android/jiakaoyi/hpmap/a/b/a;->b:Lcn/mucang/android/jiakaoyi/hpmap/a/b/a$b;

    invoke-virtual {v1}, Lcn/mucang/android/jiakaoyi/hpmap/a/b/a$b;->a()Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    move-result-object v1

    .line 3
    sget-object v2, Lcn/mucang/android/jiakaoyi/hpmap/a/b/a;->c:Lcn/mucang/android/jiakaoyi/hpmap/a/b/a$b;

    invoke-virtual {v2}, Lcn/mucang/android/jiakaoyi/hpmap/a/b/a$b;->a()Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    move-result-object v2

    .line 4
    sget-object v3, Lcn/mucang/android/jiakaoyi/hpmap/a/b/a;->d:Lcn/mucang/android/jiakaoyi/hpmap/a/b/a$b;

    invoke-virtual {v3}, Lcn/mucang/android/jiakaoyi/hpmap/a/b/a$b;->a()Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    move-result-object v3

    .line 5
    invoke-static {p1, v2}, Lcn/mucang/android/jiakaoyi/hpmap/a/b/a;->q(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;Lcn/mucang/android/jiakaoyi/signal/pos/Pos;)V

    .line 6
    invoke-static {p2, v3}, Lcn/mucang/android/jiakaoyi/hpmap/a/b/a;->q(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;Lcn/mucang/android/jiakaoyi/signal/pos/Pos;)V

    .line 7
    iget-object p1, p0, Lcn/mucang/android/jiakaoyi/signal/center/model/CarPos;->wheelLeftFront:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    invoke-static {p1, v0}, Lcn/mucang/android/jiakaoyi/hpmap/a/b/a;->q(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;Lcn/mucang/android/jiakaoyi/signal/pos/Pos;)V

    .line 8
    iget-object p1, p0, Lcn/mucang/android/jiakaoyi/signal/center/model/CarPos;->wheelLeftFrontLast:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    invoke-static {p1, v1}, Lcn/mucang/android/jiakaoyi/hpmap/a/b/a;->q(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;Lcn/mucang/android/jiakaoyi/signal/pos/Pos;)V

    .line 9
    invoke-static {v0, v1, v2, v3}, Lcn/mucang/android/jiakaoyi/hpmap/d/a;->C(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;Lcn/mucang/android/jiakaoyi/signal/pos/Pos;Lcn/mucang/android/jiakaoyi/signal/pos/Pos;Lcn/mucang/android/jiakaoyi/signal/pos/Pos;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 10
    sget-object p0, Lcn/mucang/android/jiakaoyi/hpmap/car/Wheel;->LeftFront:Lcn/mucang/android/jiakaoyi/hpmap/car/Wheel;

    return-object p0

    .line 11
    :cond_0
    iget-object p1, p0, Lcn/mucang/android/jiakaoyi/signal/center/model/CarPos;->wheelRightFront:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    invoke-static {p1, v0}, Lcn/mucang/android/jiakaoyi/hpmap/a/b/a;->q(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;Lcn/mucang/android/jiakaoyi/signal/pos/Pos;)V

    .line 12
    iget-object p1, p0, Lcn/mucang/android/jiakaoyi/signal/center/model/CarPos;->wheelRightFrontLast:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    invoke-static {p1, v1}, Lcn/mucang/android/jiakaoyi/hpmap/a/b/a;->q(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;Lcn/mucang/android/jiakaoyi/signal/pos/Pos;)V

    .line 13
    invoke-static {v0, v1, v2, v3}, Lcn/mucang/android/jiakaoyi/hpmap/d/a;->C(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;Lcn/mucang/android/jiakaoyi/signal/pos/Pos;Lcn/mucang/android/jiakaoyi/signal/pos/Pos;Lcn/mucang/android/jiakaoyi/signal/pos/Pos;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 14
    sget-object p0, Lcn/mucang/android/jiakaoyi/hpmap/car/Wheel;->RightFront:Lcn/mucang/android/jiakaoyi/hpmap/car/Wheel;

    return-object p0

    .line 15
    :cond_1
    iget-object p1, p0, Lcn/mucang/android/jiakaoyi/signal/center/model/CarPos;->wheelRightBack:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    invoke-static {p1, v0}, Lcn/mucang/android/jiakaoyi/hpmap/a/b/a;->q(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;Lcn/mucang/android/jiakaoyi/signal/pos/Pos;)V

    .line 16
    iget-object p1, p0, Lcn/mucang/android/jiakaoyi/signal/center/model/CarPos;->wheelRightBackLast:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    invoke-static {p1, v1}, Lcn/mucang/android/jiakaoyi/hpmap/a/b/a;->q(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;Lcn/mucang/android/jiakaoyi/signal/pos/Pos;)V

    .line 17
    invoke-static {v0, v1, v2, v3}, Lcn/mucang/android/jiakaoyi/hpmap/d/a;->C(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;Lcn/mucang/android/jiakaoyi/signal/pos/Pos;Lcn/mucang/android/jiakaoyi/signal/pos/Pos;Lcn/mucang/android/jiakaoyi/signal/pos/Pos;)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 18
    sget-object p0, Lcn/mucang/android/jiakaoyi/hpmap/car/Wheel;->RightBack:Lcn/mucang/android/jiakaoyi/hpmap/car/Wheel;

    return-object p0

    .line 19
    :cond_2
    iget-object p1, p0, Lcn/mucang/android/jiakaoyi/signal/center/model/CarPos;->wheelLeftBack:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    invoke-static {p1, v0}, Lcn/mucang/android/jiakaoyi/hpmap/a/b/a;->q(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;Lcn/mucang/android/jiakaoyi/signal/pos/Pos;)V

    .line 20
    iget-object p1, p0, Lcn/mucang/android/jiakaoyi/signal/center/model/CarPos;->wheelLeftBackLast:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    invoke-static {p1, v1}, Lcn/mucang/android/jiakaoyi/hpmap/a/b/a;->q(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;Lcn/mucang/android/jiakaoyi/signal/pos/Pos;)V

    .line 21
    invoke-static {v0, v1, v2, v3}, Lcn/mucang/android/jiakaoyi/hpmap/d/a;->C(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;Lcn/mucang/android/jiakaoyi/signal/pos/Pos;Lcn/mucang/android/jiakaoyi/signal/pos/Pos;Lcn/mucang/android/jiakaoyi/signal/pos/Pos;)Z

    move-result p1

    if-eqz p1, :cond_3

    .line 22
    sget-object p0, Lcn/mucang/android/jiakaoyi/hpmap/car/Wheel;->LeftBack:Lcn/mucang/android/jiakaoyi/hpmap/car/Wheel;

    return-object p0

    .line 23
    :cond_3
    iget-object p1, p0, Lcn/mucang/android/jiakaoyi/signal/center/model/CarPos;->wheelLeftFront:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    invoke-static {p1, v0}, Lcn/mucang/android/jiakaoyi/hpmap/a/b/a;->q(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;Lcn/mucang/android/jiakaoyi/signal/pos/Pos;)V

    .line 24
    iget-object p1, p0, Lcn/mucang/android/jiakaoyi/signal/center/model/CarPos;->wheelLeftFrontInner:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    invoke-static {p1, v1}, Lcn/mucang/android/jiakaoyi/hpmap/a/b/a;->q(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;Lcn/mucang/android/jiakaoyi/signal/pos/Pos;)V

    .line 25
    invoke-static {v0, v1, v2, v3}, Lcn/mucang/android/jiakaoyi/hpmap/d/a;->C(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;Lcn/mucang/android/jiakaoyi/signal/pos/Pos;Lcn/mucang/android/jiakaoyi/signal/pos/Pos;Lcn/mucang/android/jiakaoyi/signal/pos/Pos;)Z

    move-result p1

    if-eqz p1, :cond_4

    .line 26
    sget-object p0, Lcn/mucang/android/jiakaoyi/hpmap/car/Wheel;->LeftFront:Lcn/mucang/android/jiakaoyi/hpmap/car/Wheel;

    return-object p0

    .line 27
    :cond_4
    iget-object p1, p0, Lcn/mucang/android/jiakaoyi/signal/center/model/CarPos;->wheelRightFront:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    invoke-static {p1, v0}, Lcn/mucang/android/jiakaoyi/hpmap/a/b/a;->q(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;Lcn/mucang/android/jiakaoyi/signal/pos/Pos;)V

    .line 28
    iget-object p1, p0, Lcn/mucang/android/jiakaoyi/signal/center/model/CarPos;->wheelRightFrontInner:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    invoke-static {p1, v1}, Lcn/mucang/android/jiakaoyi/hpmap/a/b/a;->q(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;Lcn/mucang/android/jiakaoyi/signal/pos/Pos;)V

    .line 29
    invoke-static {v0, v1, v2, v3}, Lcn/mucang/android/jiakaoyi/hpmap/d/a;->C(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;Lcn/mucang/android/jiakaoyi/signal/pos/Pos;Lcn/mucang/android/jiakaoyi/signal/pos/Pos;Lcn/mucang/android/jiakaoyi/signal/pos/Pos;)Z

    move-result p1

    if-eqz p1, :cond_5

    .line 30
    sget-object p0, Lcn/mucang/android/jiakaoyi/hpmap/car/Wheel;->RightFront:Lcn/mucang/android/jiakaoyi/hpmap/car/Wheel;

    return-object p0

    .line 31
    :cond_5
    iget-object p1, p0, Lcn/mucang/android/jiakaoyi/signal/center/model/CarPos;->wheelLeftBack:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    invoke-static {p1, v0}, Lcn/mucang/android/jiakaoyi/hpmap/a/b/a;->q(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;Lcn/mucang/android/jiakaoyi/signal/pos/Pos;)V

    .line 32
    iget-object p1, p0, Lcn/mucang/android/jiakaoyi/signal/center/model/CarPos;->wheelLeftBackInner:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    invoke-static {p1, v1}, Lcn/mucang/android/jiakaoyi/hpmap/a/b/a;->q(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;Lcn/mucang/android/jiakaoyi/signal/pos/Pos;)V

    .line 33
    invoke-static {v0, v1, v2, v3}, Lcn/mucang/android/jiakaoyi/hpmap/d/a;->C(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;Lcn/mucang/android/jiakaoyi/signal/pos/Pos;Lcn/mucang/android/jiakaoyi/signal/pos/Pos;Lcn/mucang/android/jiakaoyi/signal/pos/Pos;)Z

    move-result p1

    if-eqz p1, :cond_6

    .line 34
    sget-object p0, Lcn/mucang/android/jiakaoyi/hpmap/car/Wheel;->LeftBack:Lcn/mucang/android/jiakaoyi/hpmap/car/Wheel;

    return-object p0

    .line 35
    :cond_6
    iget-object p1, p0, Lcn/mucang/android/jiakaoyi/signal/center/model/CarPos;->wheelRightBack:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    invoke-static {p1, v0}, Lcn/mucang/android/jiakaoyi/hpmap/a/b/a;->q(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;Lcn/mucang/android/jiakaoyi/signal/pos/Pos;)V

    .line 36
    iget-object p0, p0, Lcn/mucang/android/jiakaoyi/signal/center/model/CarPos;->wheelRightBackInner:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    invoke-static {p0, v1}, Lcn/mucang/android/jiakaoyi/hpmap/a/b/a;->q(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;Lcn/mucang/android/jiakaoyi/signal/pos/Pos;)V

    .line 37
    invoke-static {v0, v1, v2, v3}, Lcn/mucang/android/jiakaoyi/hpmap/d/a;->C(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;Lcn/mucang/android/jiakaoyi/signal/pos/Pos;Lcn/mucang/android/jiakaoyi/signal/pos/Pos;Lcn/mucang/android/jiakaoyi/signal/pos/Pos;)Z

    move-result p0

    if-eqz p0, :cond_7

    .line 38
    sget-object p0, Lcn/mucang/android/jiakaoyi/hpmap/car/Wheel;->RightBack:Lcn/mucang/android/jiakaoyi/hpmap/car/Wheel;

    return-object p0

    .line 39
    :cond_7
    sget-object p0, Lcn/mucang/android/jiakaoyi/hpmap/car/Wheel;->None:Lcn/mucang/android/jiakaoyi/hpmap/car/Wheel;

    return-object p0
.end method

.method public static t(Lcn/mucang/android/jiakaoyi/signal/center/model/CarPos;Ljava/util/List;)Lcn/mucang/android/jiakaoyi/hpmap/car/Wheel;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcn/mucang/android/jiakaoyi/signal/center/model/CarPos;",
            "Ljava/util/List<",
            "Lcn/mucang/android/jiakaoyi/signal/pos/Pos;",
            ">;)",
            "Lcn/mucang/android/jiakaoyi/hpmap/car/Wheel;"
        }
    .end annotation

    const/4 v0, 0x0

    .line 1
    :cond_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    if-ge v0, v1, :cond_1

    .line 2
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    add-int/lit8 v0, v0, 0x1

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    invoke-static {p0, v1, v2}, Lcn/mucang/android/jiakaoyi/hpmap/a/b/a;->s(Lcn/mucang/android/jiakaoyi/signal/center/model/CarPos;Lcn/mucang/android/jiakaoyi/signal/pos/Pos;Lcn/mucang/android/jiakaoyi/signal/pos/Pos;)Lcn/mucang/android/jiakaoyi/hpmap/car/Wheel;

    move-result-object v1

    .line 3
    sget-object v2, Lcn/mucang/android/jiakaoyi/hpmap/car/Wheel;->None:Lcn/mucang/android/jiakaoyi/hpmap/car/Wheel;

    if-eq v1, v2, :cond_0

    return-object v1

    .line 4
    :cond_1
    sget-object p0, Lcn/mucang/android/jiakaoyi/hpmap/car/Wheel;->None:Lcn/mucang/android/jiakaoyi/hpmap/car/Wheel;

    return-object p0
.end method

.method public static u(Lcn/mucang/android/jiakaoyi/hpmap/car/Wheel;Lcn/mucang/android/jiakaoyi/signal/center/model/CarPos;Lcn/mucang/android/jiakaoyi/signal/pos/Pos;Lcn/mucang/android/jiakaoyi/signal/pos/Pos;)Z
    .locals 4

    .line 1
    sget-object v0, Lcn/mucang/android/jiakaoyi/hpmap/a/b/a;->a:Lcn/mucang/android/jiakaoyi/hpmap/a/b/a$b;

    invoke-virtual {v0}, Lcn/mucang/android/jiakaoyi/hpmap/a/b/a$b;->a()Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    move-result-object v0

    .line 2
    sget-object v1, Lcn/mucang/android/jiakaoyi/hpmap/a/b/a;->b:Lcn/mucang/android/jiakaoyi/hpmap/a/b/a$b;

    invoke-virtual {v1}, Lcn/mucang/android/jiakaoyi/hpmap/a/b/a$b;->a()Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    move-result-object v1

    .line 3
    sget-object v2, Lcn/mucang/android/jiakaoyi/hpmap/a/b/a;->c:Lcn/mucang/android/jiakaoyi/hpmap/a/b/a$b;

    invoke-virtual {v2}, Lcn/mucang/android/jiakaoyi/hpmap/a/b/a$b;->a()Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    move-result-object v2

    .line 4
    sget-object v3, Lcn/mucang/android/jiakaoyi/hpmap/a/b/a;->d:Lcn/mucang/android/jiakaoyi/hpmap/a/b/a$b;

    invoke-virtual {v3}, Lcn/mucang/android/jiakaoyi/hpmap/a/b/a$b;->a()Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    move-result-object v3

    .line 5
    invoke-static {p2, v2}, Lcn/mucang/android/jiakaoyi/hpmap/a/b/a;->q(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;Lcn/mucang/android/jiakaoyi/signal/pos/Pos;)V

    .line 6
    invoke-static {p3, v3}, Lcn/mucang/android/jiakaoyi/hpmap/a/b/a;->q(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;Lcn/mucang/android/jiakaoyi/signal/pos/Pos;)V

    .line 7
    sget-object p2, Lcn/mucang/android/jiakaoyi/hpmap/car/Wheel;->LeftFront:Lcn/mucang/android/jiakaoyi/hpmap/car/Wheel;

    const/4 p3, 0x1

    if-ne p0, p2, :cond_1

    .line 8
    iget-object p0, p1, Lcn/mucang/android/jiakaoyi/signal/center/model/CarPos;->wheelLeftFront:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    invoke-static {p0, v0}, Lcn/mucang/android/jiakaoyi/hpmap/a/b/a;->q(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;Lcn/mucang/android/jiakaoyi/signal/pos/Pos;)V

    .line 9
    iget-object p0, p1, Lcn/mucang/android/jiakaoyi/signal/center/model/CarPos;->wheelLeftFrontLast:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    invoke-static {p0, v1}, Lcn/mucang/android/jiakaoyi/hpmap/a/b/a;->q(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;Lcn/mucang/android/jiakaoyi/signal/pos/Pos;)V

    .line 10
    invoke-static {v0, v1, v2, v3}, Lcn/mucang/android/jiakaoyi/hpmap/d/a;->C(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;Lcn/mucang/android/jiakaoyi/signal/pos/Pos;Lcn/mucang/android/jiakaoyi/signal/pos/Pos;Lcn/mucang/android/jiakaoyi/signal/pos/Pos;)Z

    move-result p0

    if-eqz p0, :cond_0

    return p3

    .line 11
    :cond_0
    iget-object p0, p1, Lcn/mucang/android/jiakaoyi/signal/center/model/CarPos;->wheelLeftFront:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    invoke-static {p0, v0}, Lcn/mucang/android/jiakaoyi/hpmap/a/b/a;->q(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;Lcn/mucang/android/jiakaoyi/signal/pos/Pos;)V

    .line 12
    iget-object p0, p1, Lcn/mucang/android/jiakaoyi/signal/center/model/CarPos;->wheelLeftFrontInner:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    invoke-static {p0, v1}, Lcn/mucang/android/jiakaoyi/hpmap/a/b/a;->q(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;Lcn/mucang/android/jiakaoyi/signal/pos/Pos;)V

    .line 13
    invoke-static {v0, v1, v2, v3}, Lcn/mucang/android/jiakaoyi/hpmap/d/a;->C(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;Lcn/mucang/android/jiakaoyi/signal/pos/Pos;Lcn/mucang/android/jiakaoyi/signal/pos/Pos;Lcn/mucang/android/jiakaoyi/signal/pos/Pos;)Z

    move-result p0

    if-eqz p0, :cond_7

    return p3

    .line 14
    :cond_1
    sget-object p2, Lcn/mucang/android/jiakaoyi/hpmap/car/Wheel;->RightFront:Lcn/mucang/android/jiakaoyi/hpmap/car/Wheel;

    if-ne p0, p2, :cond_3

    .line 15
    iget-object p0, p1, Lcn/mucang/android/jiakaoyi/signal/center/model/CarPos;->wheelRightFront:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    invoke-static {p0, v0}, Lcn/mucang/android/jiakaoyi/hpmap/a/b/a;->q(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;Lcn/mucang/android/jiakaoyi/signal/pos/Pos;)V

    .line 16
    iget-object p0, p1, Lcn/mucang/android/jiakaoyi/signal/center/model/CarPos;->wheelRightFrontLast:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    invoke-static {p0, v1}, Lcn/mucang/android/jiakaoyi/hpmap/a/b/a;->q(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;Lcn/mucang/android/jiakaoyi/signal/pos/Pos;)V

    .line 17
    invoke-static {v0, v1, v2, v3}, Lcn/mucang/android/jiakaoyi/hpmap/d/a;->C(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;Lcn/mucang/android/jiakaoyi/signal/pos/Pos;Lcn/mucang/android/jiakaoyi/signal/pos/Pos;Lcn/mucang/android/jiakaoyi/signal/pos/Pos;)Z

    move-result p0

    if-eqz p0, :cond_2

    return p3

    .line 18
    :cond_2
    iget-object p0, p1, Lcn/mucang/android/jiakaoyi/signal/center/model/CarPos;->wheelRightFront:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    invoke-static {p0, v0}, Lcn/mucang/android/jiakaoyi/hpmap/a/b/a;->q(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;Lcn/mucang/android/jiakaoyi/signal/pos/Pos;)V

    .line 19
    iget-object p0, p1, Lcn/mucang/android/jiakaoyi/signal/center/model/CarPos;->wheelRightFrontInner:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    invoke-static {p0, v1}, Lcn/mucang/android/jiakaoyi/hpmap/a/b/a;->q(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;Lcn/mucang/android/jiakaoyi/signal/pos/Pos;)V

    .line 20
    invoke-static {v0, v1, v2, v3}, Lcn/mucang/android/jiakaoyi/hpmap/d/a;->C(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;Lcn/mucang/android/jiakaoyi/signal/pos/Pos;Lcn/mucang/android/jiakaoyi/signal/pos/Pos;Lcn/mucang/android/jiakaoyi/signal/pos/Pos;)Z

    move-result p0

    if-eqz p0, :cond_7

    return p3

    .line 21
    :cond_3
    sget-object p2, Lcn/mucang/android/jiakaoyi/hpmap/car/Wheel;->LeftBack:Lcn/mucang/android/jiakaoyi/hpmap/car/Wheel;

    if-ne p0, p2, :cond_5

    .line 22
    iget-object p0, p1, Lcn/mucang/android/jiakaoyi/signal/center/model/CarPos;->wheelLeftBack:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    invoke-static {p0, v0}, Lcn/mucang/android/jiakaoyi/hpmap/a/b/a;->q(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;Lcn/mucang/android/jiakaoyi/signal/pos/Pos;)V

    .line 23
    iget-object p0, p1, Lcn/mucang/android/jiakaoyi/signal/center/model/CarPos;->wheelLeftBackLast:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    invoke-static {p0, v1}, Lcn/mucang/android/jiakaoyi/hpmap/a/b/a;->q(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;Lcn/mucang/android/jiakaoyi/signal/pos/Pos;)V

    .line 24
    invoke-static {v0, v1, v2, v3}, Lcn/mucang/android/jiakaoyi/hpmap/d/a;->C(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;Lcn/mucang/android/jiakaoyi/signal/pos/Pos;Lcn/mucang/android/jiakaoyi/signal/pos/Pos;Lcn/mucang/android/jiakaoyi/signal/pos/Pos;)Z

    move-result p0

    if-eqz p0, :cond_4

    return p3

    .line 25
    :cond_4
    iget-object p0, p1, Lcn/mucang/android/jiakaoyi/signal/center/model/CarPos;->wheelLeftBack:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    invoke-static {p0, v0}, Lcn/mucang/android/jiakaoyi/hpmap/a/b/a;->q(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;Lcn/mucang/android/jiakaoyi/signal/pos/Pos;)V

    .line 26
    iget-object p0, p1, Lcn/mucang/android/jiakaoyi/signal/center/model/CarPos;->wheelLeftBackInner:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    invoke-static {p0, v1}, Lcn/mucang/android/jiakaoyi/hpmap/a/b/a;->q(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;Lcn/mucang/android/jiakaoyi/signal/pos/Pos;)V

    .line 27
    invoke-static {v0, v1, v2, v3}, Lcn/mucang/android/jiakaoyi/hpmap/d/a;->C(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;Lcn/mucang/android/jiakaoyi/signal/pos/Pos;Lcn/mucang/android/jiakaoyi/signal/pos/Pos;Lcn/mucang/android/jiakaoyi/signal/pos/Pos;)Z

    move-result p0

    if-eqz p0, :cond_7

    return p3

    .line 28
    :cond_5
    sget-object p2, Lcn/mucang/android/jiakaoyi/hpmap/car/Wheel;->RightBack:Lcn/mucang/android/jiakaoyi/hpmap/car/Wheel;

    if-ne p0, p2, :cond_7

    .line 29
    iget-object p0, p1, Lcn/mucang/android/jiakaoyi/signal/center/model/CarPos;->wheelRightBack:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    invoke-static {p0, v0}, Lcn/mucang/android/jiakaoyi/hpmap/a/b/a;->q(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;Lcn/mucang/android/jiakaoyi/signal/pos/Pos;)V

    .line 30
    iget-object p0, p1, Lcn/mucang/android/jiakaoyi/signal/center/model/CarPos;->wheelRightBackLast:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    invoke-static {p0, v1}, Lcn/mucang/android/jiakaoyi/hpmap/a/b/a;->q(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;Lcn/mucang/android/jiakaoyi/signal/pos/Pos;)V

    .line 31
    invoke-static {v0, v1, v2, v3}, Lcn/mucang/android/jiakaoyi/hpmap/d/a;->C(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;Lcn/mucang/android/jiakaoyi/signal/pos/Pos;Lcn/mucang/android/jiakaoyi/signal/pos/Pos;Lcn/mucang/android/jiakaoyi/signal/pos/Pos;)Z

    move-result p0

    if-eqz p0, :cond_6

    return p3

    .line 32
    :cond_6
    iget-object p0, p1, Lcn/mucang/android/jiakaoyi/signal/center/model/CarPos;->wheelRightBack:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    invoke-static {p0, v0}, Lcn/mucang/android/jiakaoyi/hpmap/a/b/a;->q(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;Lcn/mucang/android/jiakaoyi/signal/pos/Pos;)V

    .line 33
    iget-object p0, p1, Lcn/mucang/android/jiakaoyi/signal/center/model/CarPos;->wheelRightBackInner:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    invoke-static {p0, v1}, Lcn/mucang/android/jiakaoyi/hpmap/a/b/a;->q(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;Lcn/mucang/android/jiakaoyi/signal/pos/Pos;)V

    .line 34
    invoke-static {v0, v1, v2, v3}, Lcn/mucang/android/jiakaoyi/hpmap/d/a;->C(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;Lcn/mucang/android/jiakaoyi/signal/pos/Pos;Lcn/mucang/android/jiakaoyi/signal/pos/Pos;Lcn/mucang/android/jiakaoyi/signal/pos/Pos;)Z

    move-result p0

    if-eqz p0, :cond_7

    return p3

    :cond_7
    const/4 p0, 0x0

    return p0
.end method

.method public static v(Lcn/mucang/android/jiakaoyi/hpmap/car/Wheel;Lcn/mucang/android/jiakaoyi/signal/center/model/CarPos;Lcn/mucang/android/jiakaoyi/hpmap/model/Line;)Z
    .locals 7

    .line 1
    sget-object v0, Lcn/mucang/android/jiakaoyi/hpmap/car/Wheel;->LeftBack:Lcn/mucang/android/jiakaoyi/hpmap/car/Wheel;

    if-ne p0, v0, :cond_0

    .line 2
    iget-object v3, p1, Lcn/mucang/android/jiakaoyi/signal/center/model/CarPos;->wheelLeftBack:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    iget-object v2, p1, Lcn/mucang/android/jiakaoyi/signal/center/model/CarPos;->wheelLeftBackLast:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    iget-object v4, p1, Lcn/mucang/android/jiakaoyi/signal/center/model/CarPos;->wheelLeftBackInner:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    iget-object v5, p2, Lcn/mucang/android/jiakaoyi/hpmap/model/Line;->start:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    iget-object v6, p2, Lcn/mucang/android/jiakaoyi/hpmap/model/Line;->end:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    move-object v1, v3

    invoke-static/range {v1 .. v6}, Lcn/mucang/android/jiakaoyi/hpmap/a/b/a;->w(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;Lcn/mucang/android/jiakaoyi/signal/pos/Pos;Lcn/mucang/android/jiakaoyi/signal/pos/Pos;Lcn/mucang/android/jiakaoyi/signal/pos/Pos;Lcn/mucang/android/jiakaoyi/signal/pos/Pos;Lcn/mucang/android/jiakaoyi/signal/pos/Pos;)Z

    move-result p0

    return p0

    .line 3
    :cond_0
    sget-object v0, Lcn/mucang/android/jiakaoyi/hpmap/car/Wheel;->LeftFront:Lcn/mucang/android/jiakaoyi/hpmap/car/Wheel;

    if-ne p0, v0, :cond_1

    .line 4
    iget-object v3, p1, Lcn/mucang/android/jiakaoyi/signal/center/model/CarPos;->wheelLeftFront:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    iget-object v2, p1, Lcn/mucang/android/jiakaoyi/signal/center/model/CarPos;->wheelLeftFrontLast:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    iget-object v4, p1, Lcn/mucang/android/jiakaoyi/signal/center/model/CarPos;->wheelLeftFrontInner:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    iget-object v5, p2, Lcn/mucang/android/jiakaoyi/hpmap/model/Line;->start:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    iget-object v6, p2, Lcn/mucang/android/jiakaoyi/hpmap/model/Line;->end:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    move-object v1, v3

    invoke-static/range {v1 .. v6}, Lcn/mucang/android/jiakaoyi/hpmap/a/b/a;->w(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;Lcn/mucang/android/jiakaoyi/signal/pos/Pos;Lcn/mucang/android/jiakaoyi/signal/pos/Pos;Lcn/mucang/android/jiakaoyi/signal/pos/Pos;Lcn/mucang/android/jiakaoyi/signal/pos/Pos;Lcn/mucang/android/jiakaoyi/signal/pos/Pos;)Z

    move-result p0

    return p0

    .line 5
    :cond_1
    sget-object v0, Lcn/mucang/android/jiakaoyi/hpmap/car/Wheel;->RightFront:Lcn/mucang/android/jiakaoyi/hpmap/car/Wheel;

    if-ne p0, v0, :cond_2

    .line 6
    iget-object v3, p1, Lcn/mucang/android/jiakaoyi/signal/center/model/CarPos;->wheelRightFront:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    iget-object v2, p1, Lcn/mucang/android/jiakaoyi/signal/center/model/CarPos;->wheelRightFrontLast:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    iget-object v4, p1, Lcn/mucang/android/jiakaoyi/signal/center/model/CarPos;->wheelRightFrontInner:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    iget-object v5, p2, Lcn/mucang/android/jiakaoyi/hpmap/model/Line;->start:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    iget-object v6, p2, Lcn/mucang/android/jiakaoyi/hpmap/model/Line;->end:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    move-object v1, v3

    invoke-static/range {v1 .. v6}, Lcn/mucang/android/jiakaoyi/hpmap/a/b/a;->w(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;Lcn/mucang/android/jiakaoyi/signal/pos/Pos;Lcn/mucang/android/jiakaoyi/signal/pos/Pos;Lcn/mucang/android/jiakaoyi/signal/pos/Pos;Lcn/mucang/android/jiakaoyi/signal/pos/Pos;Lcn/mucang/android/jiakaoyi/signal/pos/Pos;)Z

    move-result p0

    return p0

    .line 7
    :cond_2
    sget-object v0, Lcn/mucang/android/jiakaoyi/hpmap/car/Wheel;->RightBack:Lcn/mucang/android/jiakaoyi/hpmap/car/Wheel;

    if-ne p0, v0, :cond_3

    .line 8
    iget-object v3, p1, Lcn/mucang/android/jiakaoyi/signal/center/model/CarPos;->wheelRightBack:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    iget-object v2, p1, Lcn/mucang/android/jiakaoyi/signal/center/model/CarPos;->wheelRightBackLast:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    iget-object v4, p1, Lcn/mucang/android/jiakaoyi/signal/center/model/CarPos;->wheelRightBackInner:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    iget-object v5, p2, Lcn/mucang/android/jiakaoyi/hpmap/model/Line;->start:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    iget-object v6, p2, Lcn/mucang/android/jiakaoyi/hpmap/model/Line;->end:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    move-object v1, v3

    invoke-static/range {v1 .. v6}, Lcn/mucang/android/jiakaoyi/hpmap/a/b/a;->w(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;Lcn/mucang/android/jiakaoyi/signal/pos/Pos;Lcn/mucang/android/jiakaoyi/signal/pos/Pos;Lcn/mucang/android/jiakaoyi/signal/pos/Pos;Lcn/mucang/android/jiakaoyi/signal/pos/Pos;Lcn/mucang/android/jiakaoyi/signal/pos/Pos;)Z

    move-result p0

    return p0

    :cond_3
    const/4 p0, 0x0

    return p0
.end method

.method private static w(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;Lcn/mucang/android/jiakaoyi/signal/pos/Pos;Lcn/mucang/android/jiakaoyi/signal/pos/Pos;Lcn/mucang/android/jiakaoyi/signal/pos/Pos;Lcn/mucang/android/jiakaoyi/signal/pos/Pos;Lcn/mucang/android/jiakaoyi/signal/pos/Pos;)Z
    .locals 0

    .line 1
    invoke-static {p0, p1, p4, p5}, Lcn/mucang/android/jiakaoyi/hpmap/d/a;->C(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;Lcn/mucang/android/jiakaoyi/signal/pos/Pos;Lcn/mucang/android/jiakaoyi/signal/pos/Pos;Lcn/mucang/android/jiakaoyi/signal/pos/Pos;)Z

    move-result p0

    const/4 p1, 0x1

    if-eqz p0, :cond_0

    return p1

    .line 2
    :cond_0
    invoke-static {p2, p3, p4, p5}, Lcn/mucang/android/jiakaoyi/hpmap/d/a;->C(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;Lcn/mucang/android/jiakaoyi/signal/pos/Pos;Lcn/mucang/android/jiakaoyi/signal/pos/Pos;Lcn/mucang/android/jiakaoyi/signal/pos/Pos;)Z

    move-result p0

    if-eqz p0, :cond_1

    return p1

    :cond_1
    const/4 p0, 0x0

    return p0
.end method
