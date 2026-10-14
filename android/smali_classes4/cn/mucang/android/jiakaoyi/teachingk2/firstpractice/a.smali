.class public Lcn/mucang/android/jiakaoyi/teachingk2/firstpractice/a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/mucang/android/jiakaoyi/teachingk2/firstpractice/a$b;
    }
.end annotation


# instance fields
.field private final a:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lcn/mucang/android/jiakaoyi/teachingk2/firstpractice/FirstPracticeStep;",
            "Lcn/mucang/android/jiakaoyi/teachingk2/firstpractice/c<",
            "*>;>;"
        }
    .end annotation
.end field

.field private final b:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private volatile c:Lcn/mucang/android/jiakaoyi/teachingk2/firstpractice/FirstPracticeStep;

.field private final d:Ljava/lang/Object;

.field private volatile e:Z

.field private f:Lcn/mucang/android/jiakaoyi/framework/h/b;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcn/mucang/android/jiakaoyi/framework/h/b<",
            "Lcn/mucang/android/jiakaoyi/teachingk2/firstpractice/FirstPracticeStep;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>()V
    .locals 2

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/firstpractice/a;->b:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 4
    sget-object v0, Lcn/mucang/android/jiakaoyi/teachingk2/firstpractice/FirstPracticeStep;->None:Lcn/mucang/android/jiakaoyi/teachingk2/firstpractice/FirstPracticeStep;

    iput-object v0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/firstpractice/a;->c:Lcn/mucang/android/jiakaoyi/teachingk2/firstpractice/FirstPracticeStep;

    .line 5
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/firstpractice/a;->a:Ljava/util/Map;

    .line 6
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/firstpractice/a;->d:Ljava/lang/Object;

    .line 7
    iput-boolean v1, p0, Lcn/mucang/android/jiakaoyi/teachingk2/firstpractice/a;->e:Z

    return-void
.end method

.method synthetic constructor <init>(Lcn/mucang/android/jiakaoyi/teachingk2/firstpractice/a$a;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcn/mucang/android/jiakaoyi/teachingk2/firstpractice/a;-><init>()V

    return-void
.end method

.method public static e()Lcn/mucang/android/jiakaoyi/teachingk2/firstpractice/a;
    .locals 1

    .line 1
    invoke-static {}, Lcn/mucang/android/jiakaoyi/teachingk2/firstpractice/a$b;->a()Lcn/mucang/android/jiakaoyi/teachingk2/firstpractice/a;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public a(Lcn/mucang/android/jiakaoyi/teachingk2/firstpractice/FirstPracticeStep;Lcn/mucang/android/jiakaoyi/teachingk2/firstpractice/c;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Lcn/mucang/android/jiakaoyi/hpmap/a/a/b;",
            ">(",
            "Lcn/mucang/android/jiakaoyi/teachingk2/firstpractice/FirstPracticeStep;",
            "Lcn/mucang/android/jiakaoyi/teachingk2/firstpractice/c<",
            "TT;>;)V"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/firstpractice/a;->d:Ljava/lang/Object;

    monitor-enter v0

    .line 2
    :try_start_0
    iget-object v1, p0, Lcn/mucang/android/jiakaoyi/teachingk2/firstpractice/a;->a:Ljava/util/Map;

    invoke-interface {v1, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public b()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/firstpractice/a;->d:Ljava/lang/Object;

    monitor-enter v0

    .line 2
    :try_start_0
    iget-object v1, p0, Lcn/mucang/android/jiakaoyi/teachingk2/firstpractice/a;->a:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcn/mucang/android/jiakaoyi/teachingk2/firstpractice/c;

    .line 3
    invoke-interface {v2}, Lcn/mucang/android/jiakaoyi/teachingk2/firstpractice/c;->clear()V

    goto :goto_0

    .line 4
    :cond_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public c()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/firstpractice/a;->b:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    return-void
.end method

.method public d()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/firstpractice/a;->b:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 2
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/firstpractice/a;->d:Ljava/lang/Object;

    monitor-enter v0

    .line 3
    :try_start_0
    iget-object v1, p0, Lcn/mucang/android/jiakaoyi/teachingk2/firstpractice/a;->a:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcn/mucang/android/jiakaoyi/teachingk2/firstpractice/c;

    .line 4
    invoke-interface {v2}, Lcn/mucang/android/jiakaoyi/teachingk2/firstpractice/c;->clear()V

    goto :goto_0

    .line 5
    :cond_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public f()Lcn/mucang/android/jiakaoyi/teachingk2/firstpractice/FirstPracticeStep;
    .locals 1

    .line 1
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/firstpractice/a;->c:Lcn/mucang/android/jiakaoyi/teachingk2/firstpractice/FirstPracticeStep;

    return-object v0
.end method

.method public g()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/firstpractice/a;->b:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    return v0
.end method

.method public h(Lcn/mucang/android/jiakaoyi/teachingk2/firstpractice/FirstPracticeStep;Lcn/mucang/android/jiakaoyi/hpmap/collision/k2/checker/SubStep;Lcn/mucang/android/jiakaoyi/signal/c/e;ILcn/mucang/android/jiakaoyi/hpmap/a/a/b;)Z
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Lcn/mucang/android/jiakaoyi/hpmap/a/a/b;",
            ">(",
            "Lcn/mucang/android/jiakaoyi/teachingk2/firstpractice/FirstPracticeStep;",
            "Lcn/mucang/android/jiakaoyi/hpmap/collision/k2/checker/SubStep;",
            "Lcn/mucang/android/jiakaoyi/signal/c/e;",
            "ITT;)Z"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/firstpractice/a;->c:Lcn/mucang/android/jiakaoyi/teachingk2/firstpractice/FirstPracticeStep;

    const/4 v1, 0x0

    if-eq p1, v0, :cond_0

    return v1

    .line 2
    :cond_0
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/firstpractice/a;->d:Ljava/lang/Object;

    monitor-enter v0

    .line 3
    :try_start_0
    iget-object v2, p0, Lcn/mucang/android/jiakaoyi/teachingk2/firstpractice/a;->a:Ljava/util/Map;

    invoke-interface {v2, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    move-object v3, v2

    check-cast v3, Lcn/mucang/android/jiakaoyi/teachingk2/firstpractice/c;

    .line 4
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v3, :cond_1

    move-object v4, p1

    move-object v5, p2

    move v6, p4

    move-object v7, p3

    move-object v8, p5

    .line 5
    invoke-interface/range {v3 .. v8}, Lcn/mucang/android/jiakaoyi/teachingk2/firstpractice/c;->a(Lcn/mucang/android/jiakaoyi/teachingk2/firstpractice/FirstPracticeStep;Lcn/mucang/android/jiakaoyi/hpmap/collision/k2/checker/SubStep;ILcn/mucang/android/jiakaoyi/signal/c/e;Lcn/mucang/android/jiakaoyi/hpmap/a/a/b;)Z

    move-result p1

    return p1

    :cond_1
    return v1

    :catchall_0
    move-exception p1

    .line 6
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public i()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/firstpractice/a;->e:Z

    return v0
.end method

.method public j(Lcn/mucang/android/jiakaoyi/teachingk2/firstpractice/FirstPracticeStep;)Lcn/mucang/android/jiakaoyi/teachingk2/firstpractice/FirstPracticeStep;
    .locals 2

    .line 1
    sget-object v0, Lcn/mucang/android/jiakaoyi/teachingk2/firstpractice/FirstPracticeStep;->None:Lcn/mucang/android/jiakaoyi/teachingk2/firstpractice/FirstPracticeStep;

    if-ne p1, v0, :cond_0

    .line 2
    sget-object p1, Lcn/mucang/android/jiakaoyi/teachingk2/firstpractice/FirstPracticeStep;->DaoKu_Line:Lcn/mucang/android/jiakaoyi/teachingk2/firstpractice/FirstPracticeStep;

    return-object p1

    .line 3
    :cond_0
    sget-object v1, Lcn/mucang/android/jiakaoyi/teachingk2/firstpractice/FirstPracticeStep;->DaoKu_Line:Lcn/mucang/android/jiakaoyi/teachingk2/firstpractice/FirstPracticeStep;

    if-ne p1, v1, :cond_1

    .line 4
    sget-object p1, Lcn/mucang/android/jiakaoyi/teachingk2/firstpractice/FirstPracticeStep;->DaoKu_Right:Lcn/mucang/android/jiakaoyi/teachingk2/firstpractice/FirstPracticeStep;

    return-object p1

    .line 5
    :cond_1
    sget-object v1, Lcn/mucang/android/jiakaoyi/teachingk2/firstpractice/FirstPracticeStep;->DaoKu_Right:Lcn/mucang/android/jiakaoyi/teachingk2/firstpractice/FirstPracticeStep;

    if-ne p1, v1, :cond_2

    .line 6
    sget-object p1, Lcn/mucang/android/jiakaoyi/teachingk2/firstpractice/FirstPracticeStep;->DaoKu_Left:Lcn/mucang/android/jiakaoyi/teachingk2/firstpractice/FirstPracticeStep;

    return-object p1

    .line 7
    :cond_2
    sget-object v1, Lcn/mucang/android/jiakaoyi/teachingk2/firstpractice/FirstPracticeStep;->DaoKu_Left:Lcn/mucang/android/jiakaoyi/teachingk2/firstpractice/FirstPracticeStep;

    if-ne p1, v1, :cond_3

    .line 8
    sget-object p1, Lcn/mucang/android/jiakaoyi/teachingk2/firstpractice/FirstPracticeStep;->DaoKu_Done:Lcn/mucang/android/jiakaoyi/teachingk2/firstpractice/FirstPracticeStep;

    return-object p1

    .line 9
    :cond_3
    sget-object v1, Lcn/mucang/android/jiakaoyi/teachingk2/firstpractice/FirstPracticeStep;->DaoKu_Done:Lcn/mucang/android/jiakaoyi/teachingk2/firstpractice/FirstPracticeStep;

    if-ne p1, v1, :cond_4

    return-object p1

    :cond_4
    return-object v0
.end method

.method public k(Lcn/mucang/android/jiakaoyi/teachingk2/firstpractice/FirstPracticeStep;)V
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "\u8bbe\u7f6e\u9996\u8bad\u6b65\u9aa4:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcn/mucang/android/jiakaoyi/teachingk2/firstpractice/a;->c:Lcn/mucang/android/jiakaoyi/teachingk2/firstpractice/FirstPracticeStep;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcn/mucang/android/jiakaoyi/framework/log/f;->o(Ljava/lang/Object;)V

    .line 2
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/firstpractice/a;->c:Lcn/mucang/android/jiakaoyi/teachingk2/firstpractice/FirstPracticeStep;

    if-eq v0, p1, :cond_0

    .line 3
    iput-object p1, p0, Lcn/mucang/android/jiakaoyi/teachingk2/firstpractice/a;->c:Lcn/mucang/android/jiakaoyi/teachingk2/firstpractice/FirstPracticeStep;

    .line 4
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/firstpractice/a;->f:Lcn/mucang/android/jiakaoyi/framework/h/b;

    if-eqz v0, :cond_0

    .line 5
    invoke-interface {v0, p1}, Lcn/mucang/android/jiakaoyi/framework/h/b;->callback(Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public l(Lcn/mucang/android/jiakaoyi/framework/h/b;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcn/mucang/android/jiakaoyi/framework/h/b<",
            "Lcn/mucang/android/jiakaoyi/teachingk2/firstpractice/FirstPracticeStep;",
            ">;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcn/mucang/android/jiakaoyi/teachingk2/firstpractice/a;->f:Lcn/mucang/android/jiakaoyi/framework/h/b;

    return-void
.end method

.method public m(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcn/mucang/android/jiakaoyi/teachingk2/firstpractice/a;->e:Z

    return-void
.end method
