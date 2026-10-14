.class public Lcn/mucang/android/jiakaoyi/hpmap/view/m;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final a:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcn/mucang/android/jiakaoyi/hpmap/view/p/k;",
            ">;"
        }
    .end annotation
.end field

.field private final b:Lcn/mucang/android/jiakaoyi/hpmap/view/MapView;

.field private c:I

.field private d:Landroid/os/HandlerThread;

.field private e:Landroid/os/Handler;

.field private volatile f:Z

.field private volatile g:Z

.field public final h:Lcn/mucang/android/jiakaoyi/hpmap/view/t/a;

.field private volatile i:Z


# direct methods
.method public constructor <init>(Lcn/mucang/android/jiakaoyi/hpmap/view/MapView;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcn/mucang/android/jiakaoyi/hpmap/view/m;->a:Ljava/util/List;

    .line 3
    new-instance v0, Lcn/mucang/android/jiakaoyi/hpmap/view/t/a;

    invoke-direct {v0}, Lcn/mucang/android/jiakaoyi/hpmap/view/t/a;-><init>()V

    iput-object v0, p0, Lcn/mucang/android/jiakaoyi/hpmap/view/m;->h:Lcn/mucang/android/jiakaoyi/hpmap/view/t/a;

    const/4 v0, 0x0

    .line 4
    iput-boolean v0, p0, Lcn/mucang/android/jiakaoyi/hpmap/view/m;->i:Z

    .line 5
    iput-object p1, p0, Lcn/mucang/android/jiakaoyi/hpmap/view/m;->b:Lcn/mucang/android/jiakaoyi/hpmap/view/MapView;

    .line 6
    iput-boolean v0, p0, Lcn/mucang/android/jiakaoyi/hpmap/view/m;->f:Z

    .line 7
    sget-object v0, Lcn/mucang/android/jiakaoyi/hpmap/view/bg/OutProject;->Black:Lcn/mucang/android/jiakaoyi/hpmap/view/bg/OutProject;

    iget v0, v0, Lcn/mucang/android/jiakaoyi/hpmap/view/bg/OutProject;->type:I

    const-string v1, "keyOutProjectBg"

    invoke-static {v1, v0}, Lcn/mucang/android/jiakaoyi/framework/utils/i0;->d(Ljava/lang/String;I)I

    move-result v0

    invoke-static {v0}, Lcn/mucang/android/jiakaoyi/hpmap/view/bg/OutProject;->parse(I)Lcn/mucang/android/jiakaoyi/hpmap/view/bg/OutProject;

    move-result-object v0

    .line 8
    invoke-virtual {p1}, Landroid/view/TextureView;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    iget v0, v0, Lcn/mucang/android/jiakaoyi/hpmap/view/bg/OutProject;->color:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getColor(I)I

    move-result p1

    iput p1, p0, Lcn/mucang/android/jiakaoyi/hpmap/view/m;->c:I

    return-void
.end method

.method static synthetic B(Lcn/mucang/android/jiakaoyi/hpmap/view/q/a;Lcn/mucang/android/jiakaoyi/hpmap/view/q/a;)I
    .locals 2

    .line 1
    iget-wide v0, p0, Lcn/mucang/android/jiakaoyi/hpmap/view/q/a;->a:D

    iget-wide p0, p1, Lcn/mucang/android/jiakaoyi/hpmap/view/q/a;->a:D

    invoke-static {v0, v1, p0, p1}, Ljava/lang/Double;->compare(DD)I

    move-result p0

    return p0
.end method

.method static synthetic C()V
    .locals 0

    return-void
.end method

.method static synthetic D(Lcn/mucang/android/jiakaoyi/hpmap/view/p/k;Lcn/mucang/android/jiakaoyi/hpmap/view/p/k;)I
    .locals 0

    .line 1
    iget p0, p0, Lcn/mucang/android/jiakaoyi/hpmap/view/p/k;->a:I

    iget p1, p1, Lcn/mucang/android/jiakaoyi/hpmap/view/p/k;->a:I

    sub-int/2addr p0, p1

    return p0
.end method

.method static synthetic E(Lcn/mucang/android/jiakaoyi/hpmap/view/p/k;Lcn/mucang/android/jiakaoyi/hpmap/view/p/k;)I
    .locals 0

    .line 1
    iget p0, p0, Lcn/mucang/android/jiakaoyi/hpmap/view/p/k;->a:I

    iget p1, p1, Lcn/mucang/android/jiakaoyi/hpmap/view/p/k;->a:I

    sub-int/2addr p0, p1

    return p0
.end method

.method private synthetic F(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcn/mucang/android/jiakaoyi/hpmap/view/m;->M(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;)V

    return-void
.end method

.method private synthetic H(Lcn/mucang/android/jiakaoyi/hpmap/view/p/k;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/hpmap/view/m;->a:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 2
    invoke-virtual {p1}, Lcn/mucang/android/jiakaoyi/hpmap/view/p/k;->g()V

    .line 3
    invoke-virtual {p0}, Lcn/mucang/android/jiakaoyi/hpmap/view/m;->P()V

    return-void
.end method

.method private synthetic J(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcn/mucang/android/jiakaoyi/hpmap/view/m;->c:I

    return-void
.end method

.method private M(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;)V
    .locals 5

    .line 1
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v0

    .line 2
    invoke-virtual {p0, p1}, Lcn/mucang/android/jiakaoyi/hpmap/view/m;->q(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;)Lcn/mucang/android/jiakaoyi/hpmap/view/q/a;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 3
    iget-object v2, p0, Lcn/mucang/android/jiakaoyi/hpmap/view/m;->b:Lcn/mucang/android/jiakaoyi/hpmap/view/MapView;

    iget-object v3, p1, Lcn/mucang/android/jiakaoyi/hpmap/view/q/a;->c:Lcn/mucang/android/jiakaoyi/hpmap/view/p/k;

    iget-object v4, p1, Lcn/mucang/android/jiakaoyi/hpmap/view/q/a;->b:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    invoke-virtual {v2, v3, v4}, Lcn/mucang/android/jiakaoyi/hpmap/view/MapView;->k(Lcn/mucang/android/jiakaoyi/hpmap/view/p/k;Lcn/mucang/android/jiakaoyi/signal/pos/Pos;)V

    .line 4
    :cond_0
    iget-object v2, p0, Lcn/mucang/android/jiakaoyi/hpmap/view/m;->a:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcn/mucang/android/jiakaoyi/hpmap/view/p/k;

    if-eqz p1, :cond_1

    .line 5
    iget-object v4, p1, Lcn/mucang/android/jiakaoyi/hpmap/view/q/a;->c:Lcn/mucang/android/jiakaoyi/hpmap/view/p/k;

    if-ne v3, v4, :cond_1

    const/4 v4, 0x1

    goto :goto_1

    :cond_1
    const/4 v4, 0x0

    :goto_1
    iput-boolean v4, v3, Lcn/mucang/android/jiakaoyi/hpmap/view/p/k;->d:Z

    if-eqz p1, :cond_2

    .line 6
    iget-object v4, p1, Lcn/mucang/android/jiakaoyi/hpmap/view/q/a;->b:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    iput-object v4, v3, Lcn/mucang/android/jiakaoyi/hpmap/view/p/k;->e:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    goto :goto_0

    :cond_2
    const/4 v4, 0x0

    .line 7
    iput-object v4, v3, Lcn/mucang/android/jiakaoyi/hpmap/view/p/k;->e:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    goto :goto_0

    .line 8
    :cond_3
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\u68c0\u6d4b\u70b9\u51fb -- \u5171\u6709"

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcn/mucang/android/jiakaoyi/hpmap/view/m;->s()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "\u4e2a\u5143\u7d20\uff0c\u6d88\u8017\u65f6\u95f4 : "

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 9
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v2

    sub-long/2addr v2, v0

    long-to-double v0, v2

    const-wide v2, 0x412e848000000000L    # 1000000.0

    div-double/2addr v0, v2

    invoke-virtual {p1, v0, v1}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "MapManager"

    .line 10
    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 11
    invoke-virtual {p0}, Lcn/mucang/android/jiakaoyi/hpmap/view/m;->P()V

    return-void
.end method

.method private T()V
    .locals 1

    const/4 v0, 0x0

    .line 1
    iput-boolean v0, p0, Lcn/mucang/android/jiakaoyi/hpmap/view/m;->g:Z

    .line 2
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/hpmap/view/m;->d:Landroid/os/HandlerThread;

    if-eqz v0, :cond_0

    .line 3
    invoke-virtual {v0}, Landroid/os/HandlerThread;->quitSafely()Z

    const/4 v0, 0x0

    .line 4
    iput-object v0, p0, Lcn/mucang/android/jiakaoyi/hpmap/view/m;->d:Landroid/os/HandlerThread;

    .line 5
    iput-object v0, p0, Lcn/mucang/android/jiakaoyi/hpmap/view/m;->e:Landroid/os/Handler;

    :cond_0
    return-void
.end method

.method static synthetic a(Lcn/mucang/android/jiakaoyi/hpmap/view/m;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcn/mucang/android/jiakaoyi/hpmap/view/m;->f:Z

    return p0
.end method

.method static synthetic b(Lcn/mucang/android/jiakaoyi/hpmap/view/m;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcn/mucang/android/jiakaoyi/hpmap/view/m;->i:Z

    return p0
.end method

.method static synthetic c(Lcn/mucang/android/jiakaoyi/hpmap/view/m;Z)Z
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcn/mucang/android/jiakaoyi/hpmap/view/m;->i:Z

    return p1
.end method

.method static synthetic d(Lcn/mucang/android/jiakaoyi/hpmap/view/m;)Lcn/mucang/android/jiakaoyi/hpmap/view/MapView;
    .locals 0

    .line 1
    iget-object p0, p0, Lcn/mucang/android/jiakaoyi/hpmap/view/m;->b:Lcn/mucang/android/jiakaoyi/hpmap/view/MapView;

    return-object p0
.end method

.method static synthetic e(Lcn/mucang/android/jiakaoyi/hpmap/view/m;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcn/mucang/android/jiakaoyi/hpmap/view/m;->g:Z

    return p0
.end method

.method static synthetic f(Lcn/mucang/android/jiakaoyi/hpmap/view/m;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcn/mucang/android/jiakaoyi/hpmap/view/m;->p()V

    return-void
.end method

.method private l(Lcn/mucang/android/jiakaoyi/hpmap/view/p/k;)V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, p1, v0}, Lcn/mucang/android/jiakaoyi/hpmap/view/m;->m(Lcn/mucang/android/jiakaoyi/hpmap/view/p/k;Z)V

    return-void
.end method

.method private m(Lcn/mucang/android/jiakaoyi/hpmap/view/p/k;Z)V
    .locals 1

    if-eqz p1, :cond_1

    .line 1
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/hpmap/view/m;->a:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    if-eqz p2, :cond_0

    .line 2
    iget-object p2, p0, Lcn/mucang/android/jiakaoyi/hpmap/view/m;->a:Ljava/util/List;

    const/4 v0, 0x0

    invoke-interface {p2, v0, p1}, Ljava/util/List;->add(ILjava/lang/Object;)V

    goto :goto_0

    .line 3
    :cond_0
    iget-object p2, p0, Lcn/mucang/android/jiakaoyi/hpmap/view/m;->a:Ljava/util/List;

    invoke-interface {p2, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 4
    :goto_0
    invoke-virtual {p1}, Lcn/mucang/android/jiakaoyi/hpmap/view/p/k;->e()V

    :cond_1
    return-void
.end method

.method private o(Landroid/graphics/Canvas;)V
    .locals 5

    .line 1
    iget v0, p0, Lcn/mucang/android/jiakaoyi/hpmap/view/m;->c:I

    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->drawColor(I)V

    .line 2
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/hpmap/view/m;->b:Lcn/mucang/android/jiakaoyi/hpmap/view/MapView;

    iget-boolean v0, v0, Lcn/mucang/android/jiakaoyi/hpmap/view/MapView;->a:Z

    if-eqz v0, :cond_3

    .line 3
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/hpmap/view/m;->b:Lcn/mucang/android/jiakaoyi/hpmap/view/MapView;

    invoke-virtual {v0}, Lcn/mucang/android/jiakaoyi/hpmap/view/MapView;->getCurrentViewport()Lcn/mucang/android/jiakaoyi/signal/pos/c;

    move-result-object v0

    .line 4
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    .line 5
    invoke-virtual {p0}, Lcn/mucang/android/jiakaoyi/hpmap/view/m;->s()Ljava/util/List;

    move-result-object v1

    .line 6
    iget-object v2, p0, Lcn/mucang/android/jiakaoyi/hpmap/view/m;->h:Lcn/mucang/android/jiakaoyi/hpmap/view/t/a;

    invoke-virtual {v2}, Lcn/mucang/android/jiakaoyi/hpmap/view/t/a;->a()V

    .line 7
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcn/mucang/android/jiakaoyi/hpmap/view/p/k;

    .line 8
    invoke-virtual {v3, v0}, Lcn/mucang/android/jiakaoyi/hpmap/view/p/k;->d(Lcn/mucang/android/jiakaoyi/signal/pos/c;)Z

    move-result v4

    iput-boolean v4, v3, Lcn/mucang/android/jiakaoyi/hpmap/view/p/k;->b:Z

    goto :goto_0

    .line 9
    :cond_0
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/hpmap/view/m;->b:Lcn/mucang/android/jiakaoyi/hpmap/view/MapView;

    invoke-virtual {v0}, Lcn/mucang/android/jiakaoyi/hpmap/view/MapView;->getCurrentMatrix()Landroid/graphics/Matrix;

    move-result-object v0

    .line 10
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_1
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcn/mucang/android/jiakaoyi/hpmap/view/p/k;

    .line 11
    iget-boolean v3, v2, Lcn/mucang/android/jiakaoyi/hpmap/view/p/k;->b:Z

    if-eqz v3, :cond_1

    .line 12
    iget-object v3, p0, Lcn/mucang/android/jiakaoyi/hpmap/view/m;->b:Lcn/mucang/android/jiakaoyi/hpmap/view/MapView;

    invoke-virtual {v3}, Landroid/view/TextureView;->getWindowVisibility()I

    move-result v3

    if-nez v3, :cond_2

    const/4 v3, 0x1

    goto :goto_2

    :cond_2
    const/4 v3, 0x0

    :goto_2
    if-eqz v3, :cond_1

    .line 13
    invoke-virtual {v2, p1, v0}, Lcn/mucang/android/jiakaoyi/hpmap/view/p/k;->b(Landroid/graphics/Canvas;Landroid/graphics/Matrix;)V

    goto :goto_1

    :cond_3
    return-void
.end method

.method private declared-synchronized p()V
    .locals 5

    monitor-enter p0

    .line 1
    :try_start_0
    iget-boolean v0, p0, Lcn/mucang/android/jiakaoyi/hpmap/view/m;->g:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_5

    if-nez v0, :cond_0

    .line 2
    monitor-exit p0

    return-void

    .line 3
    :cond_0
    :try_start_1
    iget-boolean v0, p0, Lcn/mucang/android/jiakaoyi/hpmap/view/m;->f:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_5

    if-eqz v0, :cond_1

    .line 4
    monitor-exit p0

    return-void

    .line 5
    :cond_1
    :try_start_2
    invoke-static {}, Ljava/lang/System;->nanoTime()J
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_5

    const/4 v0, 0x0

    .line 6
    :try_start_3
    iget-object v1, p0, Lcn/mucang/android/jiakaoyi/hpmap/view/m;->b:Lcn/mucang/android/jiakaoyi/hpmap/view/MapView;

    invoke-virtual {v1}, Landroid/view/TextureView;->lockCanvas()Landroid/graphics/Canvas;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 7
    invoke-direct {p0, v0}, Lcn/mucang/android/jiakaoyi/hpmap/view/m;->o(Landroid/graphics/Canvas;)V

    goto :goto_0

    :cond_2
    const-string v1, "MapManager"

    const-string v2, "Canvas == null"

    .line 8
    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :goto_0
    if-eqz v0, :cond_3

    .line 9
    :try_start_4
    iget-object v1, p0, Lcn/mucang/android/jiakaoyi/hpmap/view/m;->b:Lcn/mucang/android/jiakaoyi/hpmap/view/MapView;

    invoke-virtual {v1, v0}, Landroid/view/TextureView;->unlockCanvasAndPost(Landroid/graphics/Canvas;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_2

    :catchall_0
    move-exception v0

    :try_start_5
    const-string v1, "MapManager"

    .line 10
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Canvas unlock error : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_1
    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_5

    goto :goto_2

    :catchall_1
    move-exception v1

    :try_start_6
    const-string v2, "MapManager"

    .line 11
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "msg : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/Throwable;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_3

    if-eqz v0, :cond_3

    .line 12
    :try_start_7
    iget-object v1, p0, Lcn/mucang/android/jiakaoyi/hpmap/view/m;->b:Lcn/mucang/android/jiakaoyi/hpmap/view/MapView;

    invoke-virtual {v1, v0}, Landroid/view/TextureView;->unlockCanvasAndPost(Landroid/graphics/Canvas;)V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    goto :goto_2

    :catchall_2
    move-exception v0

    :try_start_8
    const-string v1, "MapManager"

    .line 13
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Canvas unlock error : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_5

    goto :goto_1

    .line 14
    :cond_3
    :goto_2
    monitor-exit p0

    return-void

    :catchall_3
    move-exception v1

    if-eqz v0, :cond_4

    .line 15
    :try_start_9
    iget-object v2, p0, Lcn/mucang/android/jiakaoyi/hpmap/view/m;->b:Lcn/mucang/android/jiakaoyi/hpmap/view/MapView;

    invoke-virtual {v2, v0}, Landroid/view/TextureView;->unlockCanvasAndPost(Landroid/graphics/Canvas;)V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_4

    goto :goto_3

    :catchall_4
    move-exception v0

    :try_start_a
    const-string v2, "MapManager"

    .line 16
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Canvas unlock error : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 17
    :cond_4
    :goto_3
    throw v1
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_5

    :catchall_5
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private synthetic v(Lcn/mucang/android/jiakaoyi/hpmap/view/p/k;)V
    .locals 1

    .line 1
    invoke-direct {p0, p1}, Lcn/mucang/android/jiakaoyi/hpmap/view/m;->l(Lcn/mucang/android/jiakaoyi/hpmap/view/p/k;)V

    .line 2
    iget-object p1, p0, Lcn/mucang/android/jiakaoyi/hpmap/view/m;->a:Ljava/util/List;

    sget-object v0, Lcn/mucang/android/jiakaoyi/hpmap/view/f;->a:Lcn/mucang/android/jiakaoyi/hpmap/view/f;

    invoke-static {p1, v0}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 3
    invoke-virtual {p0}, Lcn/mucang/android/jiakaoyi/hpmap/view/m;->P()V

    return-void
.end method

.method private synthetic x(Ljava/util/List;Z)V
    .locals 1

    .line 1
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcn/mucang/android/jiakaoyi/hpmap/view/p/k;

    .line 2
    invoke-direct {p0, v0, p2}, Lcn/mucang/android/jiakaoyi/hpmap/view/m;->m(Lcn/mucang/android/jiakaoyi/hpmap/view/p/k;Z)V

    goto :goto_0

    .line 3
    :cond_0
    iget-object p1, p0, Lcn/mucang/android/jiakaoyi/hpmap/view/m;->a:Ljava/util/List;

    sget-object p2, Lcn/mucang/android/jiakaoyi/hpmap/view/k;->a:Lcn/mucang/android/jiakaoyi/hpmap/view/k;

    invoke-static {p1, p2}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 4
    invoke-virtual {p0}, Lcn/mucang/android/jiakaoyi/hpmap/view/m;->P()V

    return-void
.end method

.method private synthetic z()V
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcn/mucang/android/jiakaoyi/hpmap/view/m;->n()V

    .line 2
    invoke-virtual {p0}, Lcn/mucang/android/jiakaoyi/hpmap/view/m;->P()V

    return-void
.end method


# virtual methods
.method public synthetic A()V
    .locals 0

    invoke-direct {p0}, Lcn/mucang/android/jiakaoyi/hpmap/view/m;->z()V

    return-void
.end method

.method public synthetic G(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;)V
    .locals 0

    invoke-direct {p0, p1}, Lcn/mucang/android/jiakaoyi/hpmap/view/m;->F(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;)V

    return-void
.end method

.method public synthetic I(Lcn/mucang/android/jiakaoyi/hpmap/view/p/k;)V
    .locals 0

    invoke-direct {p0, p1}, Lcn/mucang/android/jiakaoyi/hpmap/view/m;->H(Lcn/mucang/android/jiakaoyi/hpmap/view/p/k;)V

    return-void
.end method

.method public synthetic K(I)V
    .locals 0

    invoke-direct {p0, p1}, Lcn/mucang/android/jiakaoyi/hpmap/view/m;->J(I)V

    return-void
.end method

.method public L(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;)V
    .locals 2

    .line 1
    iget-boolean v0, p0, Lcn/mucang/android/jiakaoyi/hpmap/view/m;->f:Z

    if-eqz v0, :cond_0

    return-void

    .line 2
    :cond_0
    invoke-virtual {p0}, Lcn/mucang/android/jiakaoyi/hpmap/view/m;->t()Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcn/mucang/android/jiakaoyi/hpmap/view/b;

    invoke-direct {v1, p0, p1}, Lcn/mucang/android/jiakaoyi/hpmap/view/b;-><init>(Lcn/mucang/android/jiakaoyi/hpmap/view/m;Lcn/mucang/android/jiakaoyi/signal/pos/Pos;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public N()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcn/mucang/android/jiakaoyi/hpmap/view/m;->T()V

    return-void
.end method

.method public O()V
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcn/mucang/android/jiakaoyi/hpmap/view/m;->S()V

    return-void
.end method

.method public P()V
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcn/mucang/android/jiakaoyi/hpmap/view/m;->f:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Lcn/mucang/android/jiakaoyi/hpmap/view/m;->i:Z

    return-void
.end method

.method public Q(Lcn/mucang/android/jiakaoyi/hpmap/view/p/k;)V
    .locals 2

    .line 1
    iget-boolean v0, p0, Lcn/mucang/android/jiakaoyi/hpmap/view/m;->f:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    if-eqz p1, :cond_1

    .line 2
    invoke-virtual {p0}, Lcn/mucang/android/jiakaoyi/hpmap/view/m;->t()Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcn/mucang/android/jiakaoyi/hpmap/view/j;

    invoke-direct {v1, p0, p1}, Lcn/mucang/android/jiakaoyi/hpmap/view/j;-><init>(Lcn/mucang/android/jiakaoyi/hpmap/view/m;Lcn/mucang/android/jiakaoyi/hpmap/view/p/k;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_1
    return-void
.end method

.method public R(I)V
    .locals 2

    .line 1
    iget-boolean v0, p0, Lcn/mucang/android/jiakaoyi/hpmap/view/m;->f:Z

    if-eqz v0, :cond_0

    return-void

    .line 2
    :cond_0
    invoke-virtual {p0}, Lcn/mucang/android/jiakaoyi/hpmap/view/m;->t()Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcn/mucang/android/jiakaoyi/hpmap/view/g;

    invoke-direct {v1, p0, p1}, Lcn/mucang/android/jiakaoyi/hpmap/view/g;-><init>(Lcn/mucang/android/jiakaoyi/hpmap/view/m;I)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method S()V
    .locals 1

    const/4 v0, 0x1

    .line 1
    iput-boolean v0, p0, Lcn/mucang/android/jiakaoyi/hpmap/view/m;->i:Z

    .line 2
    iput-boolean v0, p0, Lcn/mucang/android/jiakaoyi/hpmap/view/m;->g:Z

    .line 3
    invoke-virtual {p0}, Lcn/mucang/android/jiakaoyi/hpmap/view/m;->t()Landroid/os/Handler;

    move-result-object v0

    iput-object v0, p0, Lcn/mucang/android/jiakaoyi/hpmap/view/m;->e:Landroid/os/Handler;

    const/4 v0, 0x0

    .line 4
    iput-boolean v0, p0, Lcn/mucang/android/jiakaoyi/hpmap/view/m;->f:Z

    return-void
.end method

.method public g(Lcn/mucang/android/jiakaoyi/hpmap/view/p/k;)V
    .locals 2

    .line 1
    iget-boolean v0, p0, Lcn/mucang/android/jiakaoyi/hpmap/view/m;->f:Z

    if-nez v0, :cond_1

    if-nez p1, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    invoke-virtual {p0}, Lcn/mucang/android/jiakaoyi/hpmap/view/m;->t()Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcn/mucang/android/jiakaoyi/hpmap/view/d;

    invoke-direct {v1, p0, p1}, Lcn/mucang/android/jiakaoyi/hpmap/view/d;-><init>(Lcn/mucang/android/jiakaoyi/hpmap/view/m;Lcn/mucang/android/jiakaoyi/hpmap/view/p/k;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_1
    :goto_0
    return-void
.end method

.method public h(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "+",
            "Lcn/mucang/android/jiakaoyi/hpmap/view/p/k;",
            ">;)V"
        }
    .end annotation

    const/4 v0, 0x0

    .line 1
    invoke-virtual {p0, p1, v0}, Lcn/mucang/android/jiakaoyi/hpmap/view/m;->i(Ljava/util/List;Z)V

    return-void
.end method

.method public i(Ljava/util/List;Z)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "+",
            "Lcn/mucang/android/jiakaoyi/hpmap/view/p/k;",
            ">;Z)V"
        }
    .end annotation

    .line 1
    iget-boolean v0, p0, Lcn/mucang/android/jiakaoyi/hpmap/view/m;->f:Z

    if-eqz v0, :cond_0

    return-void

    .line 2
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 3
    invoke-virtual {p0}, Lcn/mucang/android/jiakaoyi/hpmap/view/m;->t()Landroid/os/Handler;

    move-result-object p1

    new-instance v1, Lcn/mucang/android/jiakaoyi/hpmap/view/e;

    invoke-direct {v1, p0, v0, p2}, Lcn/mucang/android/jiakaoyi/hpmap/view/e;-><init>(Lcn/mucang/android/jiakaoyi/hpmap/view/m;Ljava/util/List;Z)V

    invoke-virtual {p1, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public j()V
    .locals 2

    .line 1
    iget-boolean v0, p0, Lcn/mucang/android/jiakaoyi/hpmap/view/m;->f:Z

    if-eqz v0, :cond_0

    return-void

    .line 2
    :cond_0
    invoke-virtual {p0}, Lcn/mucang/android/jiakaoyi/hpmap/view/m;->t()Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcn/mucang/android/jiakaoyi/hpmap/view/h;

    invoke-direct {v1, p0}, Lcn/mucang/android/jiakaoyi/hpmap/view/h;-><init>(Lcn/mucang/android/jiakaoyi/hpmap/view/m;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method k()V
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcn/mucang/android/jiakaoyi/hpmap/view/m;->f:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Lcn/mucang/android/jiakaoyi/hpmap/view/m;->f:Z

    .line 3
    invoke-direct {p0}, Lcn/mucang/android/jiakaoyi/hpmap/view/m;->T()V

    return-void
.end method

.method n()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/hpmap/view/m;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-ltz v0, :cond_0

    .line 2
    iget-object v1, p0, Lcn/mucang/android/jiakaoyi/hpmap/view/m;->a:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcn/mucang/android/jiakaoyi/hpmap/view/p/k;

    invoke-virtual {v1}, Lcn/mucang/android/jiakaoyi/hpmap/view/p/k;->g()V

    .line 3
    iget-object v1, p0, Lcn/mucang/android/jiakaoyi/hpmap/view/m;->a:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public q(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;)Lcn/mucang/android/jiakaoyi/hpmap/view/q/a;
    .locals 6

    .line 1
    invoke-virtual {p0}, Lcn/mucang/android/jiakaoyi/hpmap/view/m;->s()Ljava/util/List;

    move-result-object v0

    const-wide v1, 0x4046800000000000L    # 45.0

    .line 2
    invoke-static {v1, v2}, Lcn/mucang/android/jiakaoyi/hpmap/view/r/a;->b(D)F

    move-result v1

    float-to-double v1, v1

    .line 3
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 4
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcn/mucang/android/jiakaoyi/hpmap/view/p/k;

    .line 5
    invoke-virtual {v4, p1, v1, v2}, Lcn/mucang/android/jiakaoyi/hpmap/view/p/k;->f(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;D)Lcn/mucang/android/jiakaoyi/hpmap/view/q/a;

    move-result-object v4

    if-eqz v4, :cond_0

    .line 6
    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    .line 7
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_2

    .line 8
    sget-object v0, Lcn/mucang/android/jiakaoyi/hpmap/view/i;->a:Lcn/mucang/android/jiakaoyi/hpmap/view/i;

    invoke-static {v3, v0}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    const/4 v0, 0x0

    .line 9
    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcn/mucang/android/jiakaoyi/hpmap/view/q/a;

    .line 10
    iget-wide v3, v0, Lcn/mucang/android/jiakaoyi/hpmap/view/q/a;->a:D

    cmpg-double v5, v3, v1

    if-gtz v5, :cond_2

    move-object p1, v0

    :cond_2
    return-object p1
.end method

.method public r()Landroid/os/Handler;
    .locals 1

    .line 1
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/hpmap/view/m;->e:Landroid/os/Handler;

    return-object v0
.end method

.method public s()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcn/mucang/android/jiakaoyi/hpmap/view/p/k;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcn/mucang/android/jiakaoyi/hpmap/view/m;->a:Ljava/util/List;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    return-object v0
.end method

.method declared-synchronized t()Landroid/os/Handler;
    .locals 4

    monitor-enter p0

    .line 1
    :try_start_0
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/hpmap/view/m;->e:Landroid/os/Handler;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    if-nez v0, :cond_1

    .line 2
    :try_start_1
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/hpmap/view/m;->d:Landroid/os/HandlerThread;

    if-eqz v0, :cond_0

    .line 3
    invoke-virtual {v0}, Landroid/os/HandlerThread;->quit()Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    :try_start_2
    const-string v1, "MapManager"

    .line 4
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "quit error : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Throwable;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcn/mucang/android/core/utils/t;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5
    :cond_0
    :goto_0
    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "MapCanvasThread"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcn/mucang/android/jiakaoyi/hpmap/view/m;->d:Landroid/os/HandlerThread;

    .line 6
    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 7
    new-instance v0, Lcn/mucang/android/jiakaoyi/hpmap/view/m$a;

    iget-object v1, p0, Lcn/mucang/android/jiakaoyi/hpmap/view/m;->d:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcn/mucang/android/jiakaoyi/hpmap/view/m$a;-><init>(Lcn/mucang/android/jiakaoyi/hpmap/view/m;Landroid/os/Looper;)V

    iput-object v0, p0, Lcn/mucang/android/jiakaoyi/hpmap/view/m;->e:Landroid/os/Handler;

    const/4 v1, 0x1

    .line 8
    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 9
    :cond_1
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/hpmap/view/m;->e:Landroid/os/Handler;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    monitor-exit p0

    return-object v0

    :catchall_1
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public u()V
    .locals 2

    .line 1
    iget-boolean v0, p0, Lcn/mucang/android/jiakaoyi/hpmap/view/m;->f:Z

    if-eqz v0, :cond_0

    return-void

    .line 2
    :cond_0
    invoke-virtual {p0}, Lcn/mucang/android/jiakaoyi/hpmap/view/m;->t()Landroid/os/Handler;

    move-result-object v0

    sget-object v1, Lcn/mucang/android/jiakaoyi/hpmap/view/c;->a:Lcn/mucang/android/jiakaoyi/hpmap/view/c;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public synthetic w(Lcn/mucang/android/jiakaoyi/hpmap/view/p/k;)V
    .locals 0

    invoke-direct {p0, p1}, Lcn/mucang/android/jiakaoyi/hpmap/view/m;->v(Lcn/mucang/android/jiakaoyi/hpmap/view/p/k;)V

    return-void
.end method

.method public synthetic y(Ljava/util/List;Z)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcn/mucang/android/jiakaoyi/hpmap/view/m;->x(Ljava/util/List;Z)V

    return-void
.end method
