.class public Lcn/mucang/android/jiakaoyi/engine/c;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final a:Lcn/mucang/android/jiakaoyi/signal/c/f/a;

.field private final b:Lcn/mucang/android/jiakaoyi/engine/i/d;

.field private final c:Lcn/mucang/android/jiakaoyi/engine/processor/exam/c;

.field private final d:Lcn/mucang/android/jiakaoyi/engine/f/b;

.field private final e:Lcn/mucang/android/jiakaoyi/engine/f/a;

.field private final f:Lcn/mucang/android/jiakaoyi/engine/i/a;

.field private final g:Lcn/mucang/android/jiakaoyi/engine/e;

.field private volatile h:Z

.field private i:Lcn/mucang/android/jiakaoyi/engine/processor/exam/d;


# direct methods
.method public constructor <init>(Lcn/mucang/android/jiakaoyi/engine/processor/exam/c;Lcn/mucang/android/jiakaoyi/engine/f/b;Lcn/mucang/android/jiakaoyi/engine/f/a;Lcn/mucang/android/jiakaoyi/engine/i/a;)V
    .locals 9

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Lcn/mucang/android/jiakaoyi/engine/a;

    invoke-direct {v0, p0}, Lcn/mucang/android/jiakaoyi/engine/a;-><init>(Lcn/mucang/android/jiakaoyi/engine/c;)V

    iput-object v0, p0, Lcn/mucang/android/jiakaoyi/engine/c;->a:Lcn/mucang/android/jiakaoyi/signal/c/f/a;

    const/4 v0, 0x1

    .line 3
    iput-boolean v0, p0, Lcn/mucang/android/jiakaoyi/engine/c;->h:Z

    .line 4
    iput-object p1, p0, Lcn/mucang/android/jiakaoyi/engine/c;->c:Lcn/mucang/android/jiakaoyi/engine/processor/exam/c;

    .line 5
    iput-object p2, p0, Lcn/mucang/android/jiakaoyi/engine/c;->d:Lcn/mucang/android/jiakaoyi/engine/f/b;

    .line 6
    iput-object p3, p0, Lcn/mucang/android/jiakaoyi/engine/c;->e:Lcn/mucang/android/jiakaoyi/engine/f/a;

    const/4 v0, 0x0

    .line 7
    invoke-virtual {p1, v0}, Lcn/mucang/android/jiakaoyi/engine/processor/exam/c;->a(Lcn/mucang/android/jiakaoyi/engine/config/route/RouteConfig;)Lcn/mucang/android/jiakaoyi/engine/processor/exam/d;

    move-result-object v0

    iput-object v0, p0, Lcn/mucang/android/jiakaoyi/engine/c;->i:Lcn/mucang/android/jiakaoyi/engine/processor/exam/d;

    .line 8
    iput-object p4, p0, Lcn/mucang/android/jiakaoyi/engine/c;->f:Lcn/mucang/android/jiakaoyi/engine/i/a;

    .line 9
    new-instance v0, Lcn/mucang/android/jiakaoyi/engine/e;

    invoke-direct {v0}, Lcn/mucang/android/jiakaoyi/engine/e;-><init>()V

    iput-object v0, p0, Lcn/mucang/android/jiakaoyi/engine/c;->g:Lcn/mucang/android/jiakaoyi/engine/e;

    .line 10
    new-instance v0, Lcn/mucang/android/jiakaoyi/engine/i/d;

    new-instance v8, Lcn/mucang/android/jiakaoyi/engine/processor/exam/ExamProcessor;

    iget-object v2, p0, Lcn/mucang/android/jiakaoyi/engine/c;->i:Lcn/mucang/android/jiakaoyi/engine/processor/exam/d;

    iget-boolean v6, p1, Lcn/mucang/android/jiakaoyi/engine/processor/exam/c;->e:Z

    move-object v1, v8

    move-object v3, p2

    move-object v4, p3

    move-object v5, p0

    move-object v7, p4

    invoke-direct/range {v1 .. v7}, Lcn/mucang/android/jiakaoyi/engine/processor/exam/ExamProcessor;-><init>(Lcn/mucang/android/jiakaoyi/engine/processor/exam/d;Lcn/mucang/android/jiakaoyi/engine/f/b;Lcn/mucang/android/jiakaoyi/engine/f/a;Lcn/mucang/android/jiakaoyi/engine/c;ZLcn/mucang/android/jiakaoyi/engine/i/a;)V

    invoke-direct {v0, v8}, Lcn/mucang/android/jiakaoyi/engine/i/d;-><init>(Lcn/mucang/android/jiakaoyi/engine/processor/exam/e;)V

    iput-object v0, p0, Lcn/mucang/android/jiakaoyi/engine/c;->b:Lcn/mucang/android/jiakaoyi/engine/i/d;

    return-void
.end method


# virtual methods
.method public declared-synchronized a(Lcn/mucang/android/jiakaoyi/engine/model/a;)V
    .locals 1

    monitor-enter p0

    .line 1
    :try_start_0
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/engine/c;->b:Lcn/mucang/android/jiakaoyi/engine/i/d;

    invoke-virtual {v0, p1}, Lcn/mucang/android/jiakaoyi/engine/i/d;->b(Lcn/mucang/android/jiakaoyi/engine/model/a;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized b(Lcn/mucang/android/jiakaoyi/engine/model/a;)V
    .locals 1

    monitor-enter p0

    .line 1
    :try_start_0
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/engine/c;->b:Lcn/mucang/android/jiakaoyi/engine/i/d;

    invoke-virtual {v0, p1}, Lcn/mucang/android/jiakaoyi/engine/i/d;->e(Lcn/mucang/android/jiakaoyi/engine/model/a;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public c()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/engine/c;->g:Lcn/mucang/android/jiakaoyi/engine/e;

    invoke-virtual {v0}, Lcn/mucang/android/jiakaoyi/engine/e;->b()V

    .line 2
    invoke-virtual {p0}, Lcn/mucang/android/jiakaoyi/engine/c;->m()V

    const/4 v0, 0x1

    .line 3
    iput-boolean v0, p0, Lcn/mucang/android/jiakaoyi/engine/c;->h:Z

    .line 4
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/engine/c;->b:Lcn/mucang/android/jiakaoyi/engine/i/d;

    invoke-virtual {v0}, Lcn/mucang/android/jiakaoyi/engine/i/d;->f()V

    .line 5
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Runtime;->gc()V

    return-void
.end method

.method public declared-synchronized d(Lcn/mucang/android/jiakaoyi/signal/c/e;)V
    .locals 2

    monitor-enter p0

    .line 1
    :try_start_0
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/engine/c;->b:Lcn/mucang/android/jiakaoyi/engine/i/d;

    invoke-virtual {v0, p1}, Lcn/mucang/android/jiakaoyi/engine/i/d;->c(Lcn/mucang/android/jiakaoyi/signal/c/e;)V

    .line 2
    invoke-interface {p1}, Lcn/mucang/android/jiakaoyi/signal/c/e;->d()Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;

    move-result-object v0

    iget-wide v0, v0, Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;->L:J

    invoke-static {v0, v1}, Lcn/mucang/android/jiakaoyi/engine/trace/w;->X(J)V

    .line 3
    iget-boolean v0, p0, Lcn/mucang/android/jiakaoyi/engine/c;->h:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcn/mucang/android/jiakaoyi/engine/c;->k()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcn/mucang/android/jiakaoyi/engine/trace/w;->p()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 4
    invoke-interface {p1}, Lcn/mucang/android/jiakaoyi/signal/c/e;->c()Lcn/mucang/android/jiakaoyi/signal/center/model/CarPos;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 5
    iget-object v0, p1, Lcn/mucang/android/jiakaoyi/signal/center/model/CarPos;->carPoints:Ljava/util/List;

    invoke-static {v0}, Lcn/mucang/android/core/utils/g;->d(Ljava/util/Collection;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    .line 6
    iput-boolean v0, p0, Lcn/mucang/android/jiakaoyi/engine/c;->h:Z

    .line 7
    invoke-static {p1}, Lcn/mucang/android/jiakaoyi/engine/trace/w;->b(Lcn/mucang/android/jiakaoyi/signal/center/model/CarPos;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 8
    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public e(Lcn/mucang/android/jiakaoyi/engine/model/Step;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/engine/c;->b:Lcn/mucang/android/jiakaoyi/engine/i/d;

    invoke-virtual {v0, p1}, Lcn/mucang/android/jiakaoyi/engine/i/d;->h(Lcn/mucang/android/jiakaoyi/engine/model/Step;)V

    return-void
.end method

.method public f(Lcn/mucang/android/jiakaoyi/engine/model/Step;I)V
    .locals 2

    const/4 v0, 0x1

    new-array v0, v0, [I

    const/4 v1, 0x0

    aput p2, v0, v1

    .line 1
    invoke-virtual {p0, p1, v0}, Lcn/mucang/android/jiakaoyi/engine/c;->g(Lcn/mucang/android/jiakaoyi/engine/model/Step;[I)V

    return-void
.end method

.method public g(Lcn/mucang/android/jiakaoyi/engine/model/Step;[I)V
    .locals 1

    if-eqz p2, :cond_1

    .line 1
    array-length v0, p2

    if-gtz v0, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/engine/c;->b:Lcn/mucang/android/jiakaoyi/engine/i/d;

    invoke-virtual {v0, p1, p2}, Lcn/mucang/android/jiakaoyi/engine/i/d;->k(Lcn/mucang/android/jiakaoyi/engine/model/Step;[I)V

    :cond_1
    :goto_0
    return-void
.end method

.method public h()Lcn/mucang/android/jiakaoyi/engine/processor/exam/d;
    .locals 1

    .line 1
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/engine/c;->i:Lcn/mucang/android/jiakaoyi/engine/processor/exam/d;

    return-object v0
.end method

.method public i()Lcn/mucang/android/jiakaoyi/engine/e;
    .locals 1

    .line 1
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/engine/c;->g:Lcn/mucang/android/jiakaoyi/engine/e;

    return-object v0
.end method

.method public j()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/engine/c;->b:Lcn/mucang/android/jiakaoyi/engine/i/d;

    invoke-virtual {v0}, Lcn/mucang/android/jiakaoyi/engine/i/d;->i()Z

    move-result v0

    return v0
.end method

.method public k()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/engine/c;->b:Lcn/mucang/android/jiakaoyi/engine/i/d;

    invoke-virtual {v0}, Lcn/mucang/android/jiakaoyi/engine/i/d;->j()Z

    move-result v0

    return v0
.end method

.method public l()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/engine/c;->b:Lcn/mucang/android/jiakaoyi/engine/i/d;

    invoke-virtual {v0}, Lcn/mucang/android/jiakaoyi/engine/i/d;->l()V

    return-void
.end method

.method public m()V
    .locals 2

    .line 1
    sget-object v0, Lcn/mucang/android/jiakaoyi/signal/c/d;->m:Lcn/mucang/android/jiakaoyi/signal/c/d;

    iget-object v1, p0, Lcn/mucang/android/jiakaoyi/engine/c;->a:Lcn/mucang/android/jiakaoyi/signal/c/f/a;

    invoke-virtual {v0, v1}, Lcn/mucang/android/jiakaoyi/signal/c/d;->n(Lcn/mucang/android/jiakaoyi/signal/c/f/a;)V

    .line 2
    invoke-virtual {v0}, Lcn/mucang/android/jiakaoyi/signal/c/d;->o()V

    return-void
.end method

.method public n()V
    .locals 1

    .line 1
    new-instance v0, Lcn/mucang/android/jiakaoyi/engine/b;

    invoke-direct {v0, p0}, Lcn/mucang/android/jiakaoyi/engine/b;-><init>(Lcn/mucang/android/jiakaoyi/engine/c;)V

    invoke-static {v0}, Lcn/mucang/android/core/utils/u;->c(Ljava/lang/Runnable;)V

    return-void
.end method

.method public o()V
    .locals 9

    .line 1
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/engine/c;->g:Lcn/mucang/android/jiakaoyi/engine/e;

    invoke-virtual {v0}, Lcn/mucang/android/jiakaoyi/engine/e;->b()V

    .line 2
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/engine/c;->b:Lcn/mucang/android/jiakaoyi/engine/i/d;

    invoke-virtual {v0}, Lcn/mucang/android/jiakaoyi/engine/i/d;->m()V

    .line 3
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/engine/c;->i:Lcn/mucang/android/jiakaoyi/engine/processor/exam/d;

    if-eqz v0, :cond_0

    .line 4
    iget-object v0, v0, Lcn/mucang/android/jiakaoyi/engine/processor/exam/d;->m:Lcn/mucang/android/jiakaoyi/engine/config/route/RouteConfig;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 5
    :goto_0
    iget-object v1, p0, Lcn/mucang/android/jiakaoyi/engine/c;->c:Lcn/mucang/android/jiakaoyi/engine/processor/exam/c;

    invoke-virtual {v1, v0}, Lcn/mucang/android/jiakaoyi/engine/processor/exam/c;->a(Lcn/mucang/android/jiakaoyi/engine/config/route/RouteConfig;)Lcn/mucang/android/jiakaoyi/engine/processor/exam/d;

    move-result-object v3

    iput-object v3, p0, Lcn/mucang/android/jiakaoyi/engine/c;->i:Lcn/mucang/android/jiakaoyi/engine/processor/exam/d;

    .line 6
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/engine/c;->b:Lcn/mucang/android/jiakaoyi/engine/i/d;

    new-instance v1, Lcn/mucang/android/jiakaoyi/engine/processor/exam/ExamProcessor;

    iget-object v4, p0, Lcn/mucang/android/jiakaoyi/engine/c;->d:Lcn/mucang/android/jiakaoyi/engine/f/b;

    iget-object v5, p0, Lcn/mucang/android/jiakaoyi/engine/c;->e:Lcn/mucang/android/jiakaoyi/engine/f/a;

    iget-object v2, p0, Lcn/mucang/android/jiakaoyi/engine/c;->c:Lcn/mucang/android/jiakaoyi/engine/processor/exam/c;

    iget-boolean v7, v2, Lcn/mucang/android/jiakaoyi/engine/processor/exam/c;->e:Z

    iget-object v8, p0, Lcn/mucang/android/jiakaoyi/engine/c;->f:Lcn/mucang/android/jiakaoyi/engine/i/a;

    move-object v2, v1

    move-object v6, p0

    invoke-direct/range {v2 .. v8}, Lcn/mucang/android/jiakaoyi/engine/processor/exam/ExamProcessor;-><init>(Lcn/mucang/android/jiakaoyi/engine/processor/exam/d;Lcn/mucang/android/jiakaoyi/engine/f/b;Lcn/mucang/android/jiakaoyi/engine/f/a;Lcn/mucang/android/jiakaoyi/engine/c;ZLcn/mucang/android/jiakaoyi/engine/i/a;)V

    invoke-virtual {v0, v1}, Lcn/mucang/android/jiakaoyi/engine/i/d;->p(Lcn/mucang/android/jiakaoyi/engine/processor/exam/e;)V

    .line 7
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/engine/c;->b:Lcn/mucang/android/jiakaoyi/engine/i/d;

    invoke-virtual {v0}, Lcn/mucang/android/jiakaoyi/engine/i/d;->n()V

    return-void
.end method

.method public p()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/engine/c;->b:Lcn/mucang/android/jiakaoyi/engine/i/d;

    invoke-virtual {v0}, Lcn/mucang/android/jiakaoyi/engine/i/d;->n()V

    return-void
.end method

.method public q(Z)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/engine/c;->c:Lcn/mucang/android/jiakaoyi/engine/processor/exam/c;

    iput-boolean p1, v0, Lcn/mucang/android/jiakaoyi/engine/processor/exam/c;->d:Z

    .line 2
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/engine/c;->i:Lcn/mucang/android/jiakaoyi/engine/processor/exam/d;

    iput-boolean p1, v0, Lcn/mucang/android/jiakaoyi/engine/processor/exam/d;->j:Z

    return-void
.end method

.method public r(Z)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/engine/c;->c:Lcn/mucang/android/jiakaoyi/engine/processor/exam/c;

    iput-boolean p1, v0, Lcn/mucang/android/jiakaoyi/engine/processor/exam/c;->c:Z

    .line 2
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/engine/c;->i:Lcn/mucang/android/jiakaoyi/engine/processor/exam/d;

    iput-boolean p1, v0, Lcn/mucang/android/jiakaoyi/engine/processor/exam/d;->h:Z

    return-void
.end method

.method public s()Z
    .locals 5

    .line 1
    sget-object v0, Lcn/mucang/android/jiakaoyi/signal/c/d;->m:Lcn/mucang/android/jiakaoyi/signal/c/d;

    iget-object v1, p0, Lcn/mucang/android/jiakaoyi/engine/c;->a:Lcn/mucang/android/jiakaoyi/signal/c/f/a;

    invoke-virtual {v0, v1}, Lcn/mucang/android/jiakaoyi/signal/c/d;->b(Lcn/mucang/android/jiakaoyi/signal/c/f/a;)V

    .line 2
    invoke-static {}, Lcn/mucang/android/jiakaoyi/framework/utils/m;->g()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 3
    invoke-virtual {v0}, Lcn/mucang/android/jiakaoyi/signal/c/d;->a()V

    .line 4
    :cond_0
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/engine/c;->b:Lcn/mucang/android/jiakaoyi/engine/i/d;

    invoke-virtual {v0}, Lcn/mucang/android/jiakaoyi/engine/i/d;->q()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 5
    iget-object v1, p0, Lcn/mucang/android/jiakaoyi/engine/c;->i:Lcn/mucang/android/jiakaoyi/engine/processor/exam/d;

    invoke-virtual {v1}, Lcn/mucang/android/jiakaoyi/engine/processor/exam/d;->a()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 6
    iget-object v1, p0, Lcn/mucang/android/jiakaoyi/engine/c;->i:Lcn/mucang/android/jiakaoyi/engine/processor/exam/d;

    iget-object v1, v1, Lcn/mucang/android/jiakaoyi/engine/processor/exam/d;->m:Lcn/mucang/android/jiakaoyi/engine/config/route/RouteConfig;

    iget-object v2, v1, Lcn/mucang/android/jiakaoyi/engine/config/route/RouteConfig;->mapSiteId:Ljava/lang/String;

    iget-object v1, v1, Lcn/mucang/android/jiakaoyi/engine/config/route/RouteConfig;->mapMd5:Ljava/lang/String;

    invoke-static {}, Lcn/mucang/android/jiakaoyi/signal/c/d;->t()Lcn/mucang/android/jiakaoyi/signal/c/e;

    move-result-object v3

    invoke-interface {v3}, Lcn/mucang/android/jiakaoyi/signal/c/e;->d()Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;

    move-result-object v3

    iget-wide v3, v3, Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;->L:J

    invoke-static {v2, v1, v3, v4}, Lcn/mucang/android/jiakaoyi/engine/trace/w;->Q(Ljava/lang/String;Ljava/lang/String;J)V

    :cond_1
    return v0
.end method

.method public t()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/engine/c;->g:Lcn/mucang/android/jiakaoyi/engine/e;

    invoke-virtual {v0}, Lcn/mucang/android/jiakaoyi/engine/e;->b()V

    .line 2
    invoke-virtual {p0}, Lcn/mucang/android/jiakaoyi/engine/c;->m()V

    .line 3
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/engine/c;->b:Lcn/mucang/android/jiakaoyi/engine/i/d;

    invoke-virtual {v0}, Lcn/mucang/android/jiakaoyi/engine/i/d;->r()V

    const/4 v0, 0x1

    .line 4
    iput-boolean v0, p0, Lcn/mucang/android/jiakaoyi/engine/c;->h:Z

    return-void
.end method

.method public u(Lcn/mucang/android/jiakaoyi/engine/model/Step;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/engine/c;->b:Lcn/mucang/android/jiakaoyi/engine/i/d;

    invoke-virtual {v0, p1}, Lcn/mucang/android/jiakaoyi/engine/i/d;->s(Lcn/mucang/android/jiakaoyi/engine/model/Step;)V

    return-void
.end method
