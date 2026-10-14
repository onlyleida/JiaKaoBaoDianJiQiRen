.class public Lcn/mucang/android/jiakaoyi/signal/communicate/w/m;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/mucang/android/jiakaoyi/signal/communicate/w/m$b;
    }
.end annotation


# static fields
.field private static final h:Ljava/util/concurrent/ExecutorService;


# instance fields
.field private final a:Ljava/lang/Object;

.field private b:Lcn/mucang/android/jiakaoyi/signal/communicate/w/n/n/b;

.field private volatile c:Z

.field private volatile d:Lcn/mucang/android/jiakaoyi/signal/communicate/ComStateListener$State;

.field private final e:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcn/mucang/android/jiakaoyi/signal/communicate/ComStateListener;",
            ">;"
        }
    .end annotation
.end field

.field private final f:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcn/mucang/android/jiakaoyi/signal/communicate/w/n/j;",
            ">;"
        }
    .end annotation
.end field

.field private final g:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcn/mucang/android/jiakaoyi/signal/communicate/w/n/i;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    sput-object v0, Lcn/mucang/android/jiakaoyi/signal/communicate/w/m;->h:Ljava/util/concurrent/ExecutorService;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcn/mucang/android/jiakaoyi/signal/communicate/w/m;->a:Ljava/lang/Object;

    const/4 v0, 0x0

    .line 4
    iput-object v0, p0, Lcn/mucang/android/jiakaoyi/signal/communicate/w/m;->b:Lcn/mucang/android/jiakaoyi/signal/communicate/w/n/n/b;

    .line 5
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v0, p0, Lcn/mucang/android/jiakaoyi/signal/communicate/w/m;->e:Ljava/util/List;

    .line 6
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcn/mucang/android/jiakaoyi/signal/communicate/w/m;->f:Ljava/util/List;

    .line 7
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v0, p0, Lcn/mucang/android/jiakaoyi/signal/communicate/w/m;->g:Ljava/util/List;

    return-void
.end method

.method synthetic constructor <init>(Lcn/mucang/android/jiakaoyi/signal/communicate/w/m$a;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcn/mucang/android/jiakaoyi/signal/communicate/w/m;-><init>()V

    return-void
.end method

.method private synthetic A(Lcn/mucang/android/jiakaoyi/signal/communicate/restruct/channel/provider/names/ComName;)V
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "\u5f00\u59cb\u91cd\u542f:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcn/mucang/android/jiakaoyi/framework/log/f;->f(Ljava/lang/Object;)V

    .line 2
    invoke-direct {p0, p1}, Lcn/mucang/android/jiakaoyi/signal/communicate/w/m;->e(Lcn/mucang/android/jiakaoyi/signal/communicate/restruct/channel/provider/names/ComName;)V

    const-wide/16 v0, 0x64

    .line 3
    invoke-static {v0, v1}, Landroid/os/SystemClock;->sleep(J)V

    .line 4
    invoke-direct {p0, p1}, Lcn/mucang/android/jiakaoyi/signal/communicate/w/m;->f(Lcn/mucang/android/jiakaoyi/signal/communicate/restruct/channel/provider/names/ComName;)V

    return-void
.end method

.method private synthetic C(Z)V
    .locals 7

    .line 1
    iget-boolean v0, p0, Lcn/mucang/android/jiakaoyi/signal/communicate/w/m;->c:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Lcn/mucang/android/jiakaoyi/signal/communicate/w/m;->c:Z

    const/4 v1, 0x0

    .line 3
    :try_start_0
    invoke-static {}, Lcn/mucang/android/jiakaoyi/signal/communicate/w/n/n/a;->a()Lcn/mucang/android/jiakaoyi/signal/communicate/w/n/n/b;

    move-result-object v2

    iput-object v2, p0, Lcn/mucang/android/jiakaoyi/signal/communicate/w/m;->b:Lcn/mucang/android/jiakaoyi/signal/communicate/w/n/n/b;

    const/4 v2, 0x0

    if-nez p1, :cond_3

    .line 4
    iget-object v3, p0, Lcn/mucang/android/jiakaoyi/signal/communicate/w/m;->f:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-nez v3, :cond_1

    goto :goto_0

    .line 5
    :cond_1
    invoke-virtual {p0}, Lcn/mucang/android/jiakaoyi/signal/communicate/w/m;->m()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 6
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "\u6240\u6709\u901a\u9053\u90fd\u662f\u5408\u6cd5\u7684,force=false,size="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcn/mucang/android/jiakaoyi/signal/communicate/w/m;->f:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcn/mucang/android/jiakaoyi/framework/log/f;->f(Ljava/lang/Object;)V

    .line 7
    sget-object v3, Lcn/mucang/android/jiakaoyi/signal/communicate/ComStateListener$State;->Valid:Lcn/mucang/android/jiakaoyi/signal/communicate/ComStateListener$State;

    invoke-direct {p0, v3, v2}, Lcn/mucang/android/jiakaoyi/signal/communicate/w/m;->I(Lcn/mucang/android/jiakaoyi/signal/communicate/ComStateListener$State;Ljava/lang/Throwable;)V

    goto :goto_1

    .line 8
    :cond_2
    iget-object v3, p0, Lcn/mucang/android/jiakaoyi/signal/communicate/w/m;->f:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-lez v3, :cond_4

    .line 9
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "\u9009\u62e9\u521d\u59cb\u5316,force=false,size="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcn/mucang/android/jiakaoyi/signal/communicate/w/m;->f:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcn/mucang/android/jiakaoyi/framework/log/f;->f(Ljava/lang/Object;)V

    .line 10
    iget-object v3, p0, Lcn/mucang/android/jiakaoyi/signal/communicate/w/m;->b:Lcn/mucang/android/jiakaoyi/signal/communicate/w/n/n/b;

    iget-object v4, p0, Lcn/mucang/android/jiakaoyi/signal/communicate/w/m;->f:Ljava/util/List;

    iget-object v5, p0, Lcn/mucang/android/jiakaoyi/signal/communicate/w/m;->g:Ljava/util/List;

    iget-object v6, p0, Lcn/mucang/android/jiakaoyi/signal/communicate/w/m;->a:Ljava/lang/Object;

    invoke-interface {v3, v4, v5, v6}, Lcn/mucang/android/jiakaoyi/signal/communicate/w/n/n/b;->b(Ljava/util/List;Ljava/util/List;Ljava/lang/Object;)Ljava/util/List;

    .line 11
    sget-object v3, Lcn/mucang/android/jiakaoyi/signal/communicate/ComStateListener$State;->Valid:Lcn/mucang/android/jiakaoyi/signal/communicate/ComStateListener$State;

    invoke-direct {p0, v3, v2}, Lcn/mucang/android/jiakaoyi/signal/communicate/w/m;->I(Lcn/mucang/android/jiakaoyi/signal/communicate/ComStateListener$State;Ljava/lang/Throwable;)V

    goto :goto_1

    .line 12
    :cond_3
    :goto_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "\u5148\u6e05\u7a7a\u518d\u521d\u59cb\u5316,force="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v4, ",size="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcn/mucang/android/jiakaoyi/signal/communicate/w/m;->f:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcn/mucang/android/jiakaoyi/framework/log/f;->f(Ljava/lang/Object;)V

    .line 13
    invoke-direct {p0}, Lcn/mucang/android/jiakaoyi/signal/communicate/w/m;->d()V

    .line 14
    iget-object v3, p0, Lcn/mucang/android/jiakaoyi/signal/communicate/w/m;->a:Ljava/lang/Object;

    monitor-enter v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    .line 15
    :try_start_1
    iget-object v4, p0, Lcn/mucang/android/jiakaoyi/signal/communicate/w/m;->f:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->clear()V

    .line 16
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 17
    :try_start_2
    iget-object v3, p0, Lcn/mucang/android/jiakaoyi/signal/communicate/w/m;->b:Lcn/mucang/android/jiakaoyi/signal/communicate/w/n/n/b;

    iget-object v4, p0, Lcn/mucang/android/jiakaoyi/signal/communicate/w/m;->f:Ljava/util/List;

    iget-object v5, p0, Lcn/mucang/android/jiakaoyi/signal/communicate/w/m;->g:Ljava/util/List;

    iget-object v6, p0, Lcn/mucang/android/jiakaoyi/signal/communicate/w/m;->a:Ljava/lang/Object;

    invoke-interface {v3, v4, v5, v6}, Lcn/mucang/android/jiakaoyi/signal/communicate/w/n/n/b;->b(Ljava/util/List;Ljava/util/List;Ljava/lang/Object;)Ljava/util/List;

    .line 18
    sget-object v3, Lcn/mucang/android/jiakaoyi/signal/communicate/ComStateListener$State;->Valid:Lcn/mucang/android/jiakaoyi/signal/communicate/ComStateListener$State;

    invoke-direct {p0, v3, v2}, Lcn/mucang/android/jiakaoyi/signal/communicate/w/m;->I(Lcn/mucang/android/jiakaoyi/signal/communicate/ComStateListener$State;Ljava/lang/Throwable;)V

    .line 19
    :cond_4
    :goto_1
    iget-object v2, p0, Lcn/mucang/android/jiakaoyi/signal/communicate/w/m;->a:Ljava/lang/Object;

    monitor-enter v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 20
    :try_start_3
    iget-object v3, p0, Lcn/mucang/android/jiakaoyi/signal/communicate/w/m;->f:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-lt v3, v0, :cond_5

    sget-object v3, Lcn/mucang/android/jiakaoyi/signal/communicate/restruct/channel/provider/names/ComName;->MasterSerial:Lcn/mucang/android/jiakaoyi/signal/communicate/restruct/channel/provider/names/ComName;

    iget-object v4, p0, Lcn/mucang/android/jiakaoyi/signal/communicate/w/m;->f:Ljava/util/List;

    invoke-interface {v4, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcn/mucang/android/jiakaoyi/signal/communicate/w/n/j;

    iget-object v4, v4, Lcn/mucang/android/jiakaoyi/signal/communicate/w/n/j;->e:Lcn/mucang/android/jiakaoyi/signal/communicate/restruct/channel/provider/names/ComName;

    if-ne v3, v4, :cond_5

    goto :goto_2

    :cond_5
    const/4 v0, 0x0

    .line 21
    :goto_2
    monitor-exit v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    if-eqz v0, :cond_6

    .line 22
    :try_start_4
    sget-object v0, Lcn/mucang/android/jiakaoyi/signal/communicate/McCommandManager;->a:Lcn/mucang/android/jiakaoyi/signal/communicate/McCommandManager;

    invoke-virtual {v0}, Lcn/mucang/android/jiakaoyi/signal/communicate/McCommandManager;->f()Z
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    goto :goto_3

    :catchall_0
    move-exception v0

    .line 23
    :try_start_5
    monitor-exit v2
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    :try_start_6
    throw v0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    :catchall_1
    move-exception v0

    .line 24
    :try_start_7
    monitor-exit v3
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    :try_start_8
    throw v0
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_2

    :catchall_2
    move-exception v0

    .line 25
    :try_start_9
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "McCommunicatorManager:\u8fde\u63a5\u521d\u59cb\u5316\u5931\u8d25, force="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p1, ", error="

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v0}, Lcn/mucang/android/jiakaoyi/framework/utils/q0;->d(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcn/mucang/android/jiakaoyi/framework/log/f;->f(Ljava/lang/Object;)V

    .line 26
    sget-object p1, Lcn/mucang/android/jiakaoyi/signal/communicate/ComStateListener$State;->Error:Lcn/mucang/android/jiakaoyi/signal/communicate/ComStateListener$State;

    invoke-direct {p0, p1, v0}, Lcn/mucang/android/jiakaoyi/signal/communicate/w/m;->I(Lcn/mucang/android/jiakaoyi/signal/communicate/ComStateListener$State;Ljava/lang/Throwable;)V

    .line 27
    new-instance p1, Lcn/mucang/android/jiakaoyi/signal/communicate/w/c;

    invoke-direct {p1, p0, v0}, Lcn/mucang/android/jiakaoyi/signal/communicate/w/c;-><init>(Lcn/mucang/android/jiakaoyi/signal/communicate/w/m;Ljava/lang/Throwable;)V

    invoke-static {p1}, Lcn/mucang/android/core/utils/u;->c(Ljava/lang/Runnable;)V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_3

    .line 28
    :cond_6
    :goto_3
    iput-boolean v1, p0, Lcn/mucang/android/jiakaoyi/signal/communicate/w/m;->c:Z

    return-void

    :catchall_3
    move-exception p1

    iput-boolean v1, p0, Lcn/mucang/android/jiakaoyi/signal/communicate/w/m;->c:Z

    throw p1
.end method

.method private synthetic E(Lcn/mucang/android/jiakaoyi/signal/communicate/restruct/channel/provider/names/ComName;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcn/mucang/android/jiakaoyi/signal/communicate/w/m;->f(Lcn/mucang/android/jiakaoyi/signal/communicate/restruct/channel/provider/names/ComName;)V

    return-void
.end method

.method private synthetic G(Lcn/mucang/android/jiakaoyi/signal/communicate/w/n/i;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/signal/communicate/w/m;->g:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    return-void
.end method

.method private declared-synchronized I(Lcn/mucang/android/jiakaoyi/signal/communicate/ComStateListener$State;Ljava/lang/Throwable;)V
    .locals 1

    monitor-enter p0

    .line 1
    :try_start_0
    new-instance v0, Lcn/mucang/android/jiakaoyi/signal/communicate/w/b;

    invoke-direct {v0, p0, p1, p2}, Lcn/mucang/android/jiakaoyi/signal/communicate/w/b;-><init>(Lcn/mucang/android/jiakaoyi/signal/communicate/w/m;Lcn/mucang/android/jiakaoyi/signal/communicate/ComStateListener$State;Ljava/lang/Throwable;)V

    invoke-static {v0}, Lcn/mucang/android/core/utils/u;->c(Ljava/lang/Runnable;)V
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

.method private d()V
    .locals 3

    const-string v0, "McCommunicatorManager:\u6e05\u7a7a\u8fde\u63a5"

    .line 1
    invoke-static {v0}, Lcn/mucang/android/jiakaoyi/framework/log/f;->f(Ljava/lang/Object;)V

    .line 2
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/signal/communicate/w/m;->f:Ljava/util/List;

    invoke-static {v0}, Lcn/mucang/android/core/utils/g;->b(Ljava/util/Collection;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 3
    :cond_0
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/signal/communicate/w/m;->a:Ljava/lang/Object;

    monitor-enter v0

    .line 4
    :try_start_0
    new-instance v1, Ljava/util/ArrayList;

    iget-object v2, p0, Lcn/mucang/android/jiakaoyi/signal/communicate/w/m;->f:Ljava/util/List;

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 5
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 6
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcn/mucang/android/jiakaoyi/signal/communicate/w/n/j;

    .line 7
    invoke-virtual {v1}, Lcn/mucang/android/jiakaoyi/signal/communicate/w/n/j;->a()V

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    .line 8
    iput-boolean v0, p0, Lcn/mucang/android/jiakaoyi/signal/communicate/w/m;->c:Z

    .line 9
    iget-object v1, p0, Lcn/mucang/android/jiakaoyi/signal/communicate/w/m;->a:Ljava/lang/Object;

    monitor-enter v1

    .line 10
    :try_start_1
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/signal/communicate/w/m;->f:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 11
    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    :catchall_1
    move-exception v1

    .line 12
    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v1
.end method

.method private e(Lcn/mucang/android/jiakaoyi/signal/communicate/restruct/channel/provider/names/ComName;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/signal/communicate/w/m;->f:Ljava/util/List;

    invoke-static {v0}, Lcn/mucang/android/core/utils/g;->b(Ljava/util/Collection;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string p1, "\u4fe1\u9053\u5217\u8868\u4e3a\u7a7a\uff0c\u7ec8\u6b62\u9500\u6bc1"

    .line 2
    invoke-static {p1}, Lcn/mucang/android/jiakaoyi/framework/log/f;->f(Ljava/lang/Object;)V

    return-void

    .line 3
    :cond_0
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/signal/communicate/w/m;->a:Ljava/lang/Object;

    monitor-enter v0

    .line 4
    :try_start_0
    new-instance v1, Ljava/util/ArrayList;

    iget-object v2, p0, Lcn/mucang/android/jiakaoyi/signal/communicate/w/m;->f:Ljava/util/List;

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 5
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 6
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcn/mucang/android/jiakaoyi/signal/communicate/w/n/j;

    .line 7
    invoke-virtual {v1}, Lcn/mucang/android/jiakaoyi/signal/communicate/w/n/j;->e()Lcn/mucang/android/jiakaoyi/signal/communicate/restruct/channel/provider/names/ComName;

    move-result-object v2

    if-ne p1, v2, :cond_1

    .line 8
    invoke-virtual {v1}, Lcn/mucang/android/jiakaoyi/signal/communicate/w/n/j;->a()V

    goto :goto_0

    :cond_2
    return-void

    :catchall_0
    move-exception p1

    .line 9
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method private f(Lcn/mucang/android/jiakaoyi/signal/communicate/restruct/channel/provider/names/ComName;)V
    .locals 5

    .line 1
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/signal/communicate/w/m;->f:Ljava/util/List;

    invoke-static {v0}, Lcn/mucang/android/core/utils/g;->b(Ljava/util/Collection;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string p1, "\u4fe1\u9053\u5217\u8868\u4e3a\u7a7a\uff0c\u542f\u52a8\u7ec8\u6b62"

    .line 2
    invoke-static {p1}, Lcn/mucang/android/jiakaoyi/framework/log/f;->f(Ljava/lang/Object;)V

    return-void

    .line 3
    :cond_0
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/signal/communicate/w/m;->a:Ljava/lang/Object;

    monitor-enter v0

    .line 4
    :try_start_0
    new-instance v1, Ljava/util/ArrayList;

    iget-object v2, p0, Lcn/mucang/android/jiakaoyi/signal/communicate/w/m;->f:Ljava/util/List;

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 5
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 6
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcn/mucang/android/jiakaoyi/signal/communicate/w/n/j;

    .line 7
    invoke-virtual {v1}, Lcn/mucang/android/jiakaoyi/signal/communicate/w/n/j;->e()Lcn/mucang/android/jiakaoyi/signal/communicate/restruct/channel/provider/names/ComName;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/lang/Enum;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 8
    :try_start_1
    invoke-virtual {v1}, Lcn/mucang/android/jiakaoyi/signal/communicate/w/n/j;->a()V

    .line 9
    invoke-virtual {v1}, Lcn/mucang/android/jiakaoyi/signal/communicate/w/n/j;->A()V

    .line 10
    sget-object v2, Lcn/mucang/android/jiakaoyi/signal/communicate/ComStateListener$State;->Valid:Lcn/mucang/android/jiakaoyi/signal/communicate/ComStateListener$State;

    const/4 v3, 0x0

    invoke-direct {p0, v2, v3}, Lcn/mucang/android/jiakaoyi/signal/communicate/w/m;->I(Lcn/mucang/android/jiakaoyi/signal/communicate/ComStateListener$State;Ljava/lang/Throwable;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :catch_0
    move-exception v2

    .line 11
    invoke-virtual {v1}, Lcn/mucang/android/jiakaoyi/signal/communicate/w/n/j;->a()V

    .line 12
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "McCommunicatorManager:\u8fde\u63a5\u521d\u59cb\u5316\u5931\u8d25, error="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/Exception;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcn/mucang/android/jiakaoyi/framework/log/f;->f(Ljava/lang/Object;)V

    .line 13
    sget-object v3, Lcn/mucang/android/jiakaoyi/signal/communicate/ComStateListener$State;->Error:Lcn/mucang/android/jiakaoyi/signal/communicate/ComStateListener$State;

    invoke-direct {p0, v3, v2}, Lcn/mucang/android/jiakaoyi/signal/communicate/w/m;->I(Lcn/mucang/android/jiakaoyi/signal/communicate/ComStateListener$State;Ljava/lang/Throwable;)V

    .line 14
    iget-object v1, v1, Lcn/mucang/android/jiakaoyi/signal/communicate/w/n/j;->d:Lcn/mucang/android/jiakaoyi/signal/communicate/restruct/channel/config/McChannelConfig;

    iget-boolean v1, v1, Lcn/mucang/android/jiakaoyi/signal/communicate/restruct/channel/config/McChannelConfig;->g:Z

    if-eqz v1, :cond_2

    .line 15
    new-instance v1, Lcn/mucang/android/jiakaoyi/signal/communicate/w/i;

    invoke-direct {v1, v2, p1}, Lcn/mucang/android/jiakaoyi/signal/communicate/w/i;-><init>(Ljava/lang/Exception;Lcn/mucang/android/jiakaoyi/signal/communicate/restruct/channel/provider/names/ComName;)V

    invoke-static {v1}, Lcn/mucang/android/core/utils/u;->c(Ljava/lang/Runnable;)V

    goto :goto_0

    .line 16
    :cond_2
    new-instance v1, Lcn/mucang/android/jiakaoyi/signal/communicate/w/j;

    invoke-direct {v1, p0, p1}, Lcn/mucang/android/jiakaoyi/signal/communicate/w/j;-><init>(Lcn/mucang/android/jiakaoyi/signal/communicate/w/m;Lcn/mucang/android/jiakaoyi/signal/communicate/restruct/channel/provider/names/ComName;)V

    const-wide/32 v2, 0xea60

    invoke-static {v1, v2, v3}, Lcn/mucang/android/core/utils/u;->d(Ljava/lang/Runnable;J)V

    goto :goto_0

    :cond_3
    return-void

    :catchall_0
    move-exception p1

    .line 17
    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p1
.end method

.method public static h()Lcn/mucang/android/jiakaoyi/signal/communicate/w/m;
    .locals 1

    .line 1
    invoke-static {}, Lcn/mucang/android/jiakaoyi/signal/communicate/w/m$b;->a()Lcn/mucang/android/jiakaoyi/signal/communicate/w/m;

    move-result-object v0

    return-object v0
.end method

.method public static l()Z
    .locals 2

    const-string v0, "__key_ai_open"

    const/4 v1, 0x0

    .line 1
    invoke-static {v0, v1}, Lcn/mucang/android/jiakaoyi/framework/utils/i0;->b(Ljava/lang/String;Z)Z

    const/4 v0, 0x1

    return v0
.end method

.method public static synthetic o(Lcn/mucang/android/jiakaoyi/signal/communicate/w/m;)V
    .locals 0

    invoke-direct {p0}, Lcn/mucang/android/jiakaoyi/signal/communicate/w/m;->d()V

    return-void
.end method

.method static synthetic p(Ljava/lang/Exception;Lcn/mucang/android/jiakaoyi/signal/communicate/restruct/channel/provider/names/ComName;)V
    .locals 4

    .line 1
    new-instance v0, Lcn/mucang/android/jiakaoyi/signal/com/w/e;

    sget-object v1, Lcn/mucang/android/jiakaoyi/signal/com/ComState;->ErrorCom:Lcn/mucang/android/jiakaoyi/signal/com/ComState;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, v1, p0, p1}, Lcn/mucang/android/jiakaoyi/signal/com/w/e;-><init>(Lcn/mucang/android/jiakaoyi/signal/com/ComState;Ljava/lang/String;Lcn/mucang/android/jiakaoyi/signal/communicate/restruct/channel/provider/names/ComName;)V

    invoke-static {v0}, Lcn/mucang/android/jiakaoyi/signal/com/w/d;->e(Lcn/mucang/android/jiakaoyi/signal/com/w/e;)V

    return-void
.end method

.method private synthetic q(Lcn/mucang/android/jiakaoyi/signal/communicate/restruct/channel/provider/names/ComName;)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcn/mucang/android/jiakaoyi/signal/communicate/w/m;->S(Lcn/mucang/android/jiakaoyi/signal/communicate/restruct/channel/provider/names/ComName;)V

    return-void
.end method

.method private synthetic s(Lcn/mucang/android/jiakaoyi/signal/communicate/ComStateListener$State;Ljava/lang/Throwable;)V
    .locals 2

    .line 1
    iput-object p1, p0, Lcn/mucang/android/jiakaoyi/signal/communicate/w/m;->d:Lcn/mucang/android/jiakaoyi/signal/communicate/ComStateListener$State;

    .line 2
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/signal/communicate/w/m;->e:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcn/mucang/android/jiakaoyi/signal/communicate/ComStateListener;

    .line 3
    invoke-interface {v1, p1, p2}, Lcn/mucang/android/jiakaoyi/signal/communicate/ComStateListener;->a(Lcn/mucang/android/jiakaoyi/signal/communicate/ComStateListener$State;Ljava/lang/Throwable;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method private synthetic u(Ljava/lang/Throwable;)V
    .locals 5

    .line 1
    instance-of v0, p1, Lcn/mucang/android/jiakaoyi/signal/com/exception/ComException;

    if-eqz v0, :cond_0

    .line 2
    move-object v0, p1

    check-cast v0, Lcn/mucang/android/jiakaoyi/signal/com/exception/ComException;

    invoke-virtual {v0}, Lcn/mucang/android/jiakaoyi/signal/com/exception/ComException;->getName()Lcn/mucang/android/jiakaoyi/signal/communicate/restruct/channel/provider/names/ComName;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 3
    :goto_0
    sget-object v1, Lcn/mucang/android/jiakaoyi/signal/communicate/restruct/channel/provider/names/ComName;->AiNet:Lcn/mucang/android/jiakaoyi/signal/communicate/restruct/channel/provider/names/ComName;

    if-ne v1, v0, :cond_1

    .line 4
    new-instance p1, Lcn/mucang/android/jiakaoyi/signal/communicate/w/l;

    invoke-direct {p1, p0}, Lcn/mucang/android/jiakaoyi/signal/communicate/w/l;-><init>(Lcn/mucang/android/jiakaoyi/signal/communicate/w/m;)V

    const-wide/32 v0, 0xea60

    invoke-static {p1, v0, v1}, Lcn/mucang/android/core/utils/u;->d(Ljava/lang/Runnable;J)V

    goto :goto_1

    .line 5
    :cond_1
    new-instance v1, Lcn/mucang/android/jiakaoyi/signal/com/w/e;

    sget-object v2, Lcn/mucang/android/jiakaoyi/signal/com/ComState;->ErrorCom:Lcn/mucang/android/jiakaoyi/signal/com/ComState;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, ""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v1, v2, p1, v0}, Lcn/mucang/android/jiakaoyi/signal/com/w/e;-><init>(Lcn/mucang/android/jiakaoyi/signal/com/ComState;Ljava/lang/String;Lcn/mucang/android/jiakaoyi/signal/communicate/restruct/channel/provider/names/ComName;)V

    invoke-static {v1}, Lcn/mucang/android/jiakaoyi/signal/com/w/d;->e(Lcn/mucang/android/jiakaoyi/signal/com/w/e;)V

    :goto_1
    return-void
.end method

.method private synthetic w(Lcn/mucang/android/jiakaoyi/signal/communicate/w/n/i;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/signal/communicate/w/m;->g:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method private synthetic y(Lcn/mucang/android/jiakaoyi/signal/communicate/restruct/channel/provider/names/ComName;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcn/mucang/android/jiakaoyi/signal/communicate/w/m;->e(Lcn/mucang/android/jiakaoyi/signal/communicate/restruct/channel/provider/names/ComName;)V

    return-void
.end method


# virtual methods
.method public synthetic B(Lcn/mucang/android/jiakaoyi/signal/communicate/restruct/channel/provider/names/ComName;)V
    .locals 0

    invoke-direct {p0, p1}, Lcn/mucang/android/jiakaoyi/signal/communicate/w/m;->A(Lcn/mucang/android/jiakaoyi/signal/communicate/restruct/channel/provider/names/ComName;)V

    return-void
.end method

.method public synthetic D(Z)V
    .locals 0

    invoke-direct {p0, p1}, Lcn/mucang/android/jiakaoyi/signal/communicate/w/m;->C(Z)V

    return-void
.end method

.method public synthetic F(Lcn/mucang/android/jiakaoyi/signal/communicate/restruct/channel/provider/names/ComName;)V
    .locals 0

    invoke-direct {p0, p1}, Lcn/mucang/android/jiakaoyi/signal/communicate/w/m;->E(Lcn/mucang/android/jiakaoyi/signal/communicate/restruct/channel/provider/names/ComName;)V

    return-void
.end method

.method public synthetic H(Lcn/mucang/android/jiakaoyi/signal/communicate/w/n/i;)V
    .locals 0

    invoke-direct {p0, p1}, Lcn/mucang/android/jiakaoyi/signal/communicate/w/m;->G(Lcn/mucang/android/jiakaoyi/signal/communicate/w/n/i;)V

    return-void
.end method

.method public J()V
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcn/mucang/android/jiakaoyi/signal/communicate/w/m;->c:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const-string v0, "\u901a\u4fe1\u91cd\u8fde"

    .line 2
    invoke-static {v0}, Lcn/mucang/android/jiakaoyi/framework/log/f;->f(Ljava/lang/Object;)V

    .line 3
    invoke-virtual {p0}, Lcn/mucang/android/jiakaoyi/signal/communicate/w/m;->L()V

    .line 4
    invoke-virtual {p0}, Lcn/mucang/android/jiakaoyi/signal/communicate/w/m;->R()V

    return-void
.end method

.method public K(Lcn/mucang/android/jiakaoyi/signal/communicate/w/n/i;)V
    .locals 1

    if-eqz p1, :cond_0

    .line 1
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/signal/communicate/w/m;->g:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 2
    new-instance v0, Lcn/mucang/android/jiakaoyi/signal/communicate/w/g;

    invoke-direct {v0, p0, p1}, Lcn/mucang/android/jiakaoyi/signal/communicate/w/g;-><init>(Lcn/mucang/android/jiakaoyi/signal/communicate/w/m;Lcn/mucang/android/jiakaoyi/signal/communicate/w/n/i;)V

    invoke-static {v0}, Lcn/mucang/android/core/utils/u;->c(Ljava/lang/Runnable;)V

    :cond_0
    return-void
.end method

.method public L()V
    .locals 2

    .line 1
    sget-object v0, Lcn/mucang/android/jiakaoyi/signal/communicate/w/m;->h:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lcn/mucang/android/jiakaoyi/signal/communicate/w/e;

    invoke-direct {v1, p0}, Lcn/mucang/android/jiakaoyi/signal/communicate/w/e;-><init>(Lcn/mucang/android/jiakaoyi/signal/communicate/w/m;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public M(Lcn/mucang/android/jiakaoyi/signal/communicate/restruct/channel/provider/names/ComName;)V
    .locals 2

    .line 1
    sget-object v0, Lcn/mucang/android/jiakaoyi/signal/communicate/w/m;->h:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lcn/mucang/android/jiakaoyi/signal/communicate/w/k;

    invoke-direct {v1, p0, p1}, Lcn/mucang/android/jiakaoyi/signal/communicate/w/k;-><init>(Lcn/mucang/android/jiakaoyi/signal/communicate/w/m;Lcn/mucang/android/jiakaoyi/signal/communicate/restruct/channel/provider/names/ComName;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public declared-synchronized N(Lcn/mucang/android/jiakaoyi/signal/communicate/ComStateListener;)V
    .locals 1

    monitor-enter p0

    .line 1
    :try_start_0
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/signal/communicate/w/m;->e:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z
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

.method public O(Lcn/mucang/android/jiakaoyi/signal/communicate/restruct/channel/provider/names/ComName;)V
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "\u91cd\u542f:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcn/mucang/android/jiakaoyi/framework/log/f;->f(Ljava/lang/Object;)V

    .line 2
    sget-object v0, Lcn/mucang/android/jiakaoyi/signal/communicate/w/m;->h:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lcn/mucang/android/jiakaoyi/signal/communicate/w/a;

    invoke-direct {v1, p0, p1}, Lcn/mucang/android/jiakaoyi/signal/communicate/w/a;-><init>(Lcn/mucang/android/jiakaoyi/signal/communicate/w/m;Lcn/mucang/android/jiakaoyi/signal/communicate/restruct/channel/provider/names/ComName;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public P(Lcn/mucang/android/jiakaoyi/signal/com/Cmd;Lcn/mucang/android/jiakaoyi/signal/com/x/b;)Z
    .locals 0

    .line 1
    invoke-interface {p2}, Lcn/mucang/android/jiakaoyi/signal/com/x/b;->a()[B

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Lcn/mucang/android/jiakaoyi/signal/communicate/w/m;->Q(Lcn/mucang/android/jiakaoyi/signal/com/Cmd;[B)Z

    move-result p1

    return p1
.end method

.method public Q(Lcn/mucang/android/jiakaoyi/signal/com/Cmd;[B)Z
    .locals 4

    .line 1
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/signal/communicate/w/m;->a:Ljava/lang/Object;

    monitor-enter v0

    .line 2
    :try_start_0
    iget-object v1, p0, Lcn/mucang/android/jiakaoyi/signal/communicate/w/m;->f:Ljava/util/List;

    invoke-static {v1}, Lcn/mucang/android/core/utils/g;->b(Ljava/util/Collection;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 3
    sget-object p2, Lcn/mucang/android/jiakaoyi/signal/com/Cmd;->OrderSendRtcm:Lcn/mucang/android/jiakaoyi/signal/com/Cmd;

    if-eq p1, p2, :cond_0

    .line 4
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "McCommunicatorManager:\u53d1\u9001\u6307\u4ee40x"

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-byte v1, p1, Lcn/mucang/android/jiakaoyi/signal/com/Cmd;->order:B

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "("

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p1, Lcn/mucang/android/jiakaoyi/signal/com/Cmd;->desc:Ljava/lang/String;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ")\u5931\u8d25,communicator\u4e3a\u7a7a"

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcn/mucang/android/jiakaoyi/framework/log/f;->f(Ljava/lang/Object;)V

    :cond_0
    const/4 p1, 0x0

    .line 5
    monitor-exit v0

    return p1

    .line 6
    :cond_1
    iget-object v1, p0, Lcn/mucang/android/jiakaoyi/signal/communicate/w/m;->f:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcn/mucang/android/jiakaoyi/signal/communicate/w/n/j;

    .line 7
    invoke-virtual {v2, p1}, Lcn/mucang/android/jiakaoyi/signal/communicate/w/n/j;->j(Lcn/mucang/android/jiakaoyi/signal/com/Cmd;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 8
    invoke-virtual {v2, p1, p2}, Lcn/mucang/android/jiakaoyi/signal/communicate/w/n/j;->E(Lcn/mucang/android/jiakaoyi/signal/com/Cmd;[B)V

    .line 9
    :cond_3
    monitor-exit v0

    const/4 p1, 0x1

    return p1

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public R()V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-virtual {p0, v0}, Lcn/mucang/android/jiakaoyi/signal/communicate/w/m;->T(Z)V

    return-void
.end method

.method public S(Lcn/mucang/android/jiakaoyi/signal/communicate/restruct/channel/provider/names/ComName;)V
    .locals 2

    .line 1
    sget-object v0, Lcn/mucang/android/jiakaoyi/signal/communicate/w/m;->h:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lcn/mucang/android/jiakaoyi/signal/communicate/w/h;

    invoke-direct {v1, p0, p1}, Lcn/mucang/android/jiakaoyi/signal/communicate/w/h;-><init>(Lcn/mucang/android/jiakaoyi/signal/communicate/w/m;Lcn/mucang/android/jiakaoyi/signal/communicate/restruct/channel/provider/names/ComName;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public T(Z)V
    .locals 2

    .line 1
    iget-boolean v0, p0, Lcn/mucang/android/jiakaoyi/signal/communicate/w/m;->c:Z

    if-eqz v0, :cond_0

    return-void

    .line 2
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "McCommunicatorManager:\u5f00\u59cb\u8fde\u63a5, force="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcn/mucang/android/jiakaoyi/framework/log/f;->f(Ljava/lang/Object;)V

    .line 3
    sget-object v0, Lcn/mucang/android/jiakaoyi/signal/communicate/w/m;->h:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lcn/mucang/android/jiakaoyi/signal/communicate/w/d;

    invoke-direct {v1, p0, p1}, Lcn/mucang/android/jiakaoyi/signal/communicate/w/d;-><init>(Lcn/mucang/android/jiakaoyi/signal/communicate/w/m;Z)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public U(Lcn/mucang/android/jiakaoyi/signal/communicate/w/n/i;)V
    .locals 1

    if-eqz p1, :cond_0

    .line 1
    new-instance v0, Lcn/mucang/android/jiakaoyi/signal/communicate/w/f;

    invoke-direct {v0, p0, p1}, Lcn/mucang/android/jiakaoyi/signal/communicate/w/f;-><init>(Lcn/mucang/android/jiakaoyi/signal/communicate/w/m;Lcn/mucang/android/jiakaoyi/signal/communicate/w/n/i;)V

    invoke-static {v0}, Lcn/mucang/android/core/utils/u;->c(Ljava/lang/Runnable;)V

    :cond_0
    return-void
.end method

.method public declared-synchronized a(Lcn/mucang/android/jiakaoyi/signal/communicate/ComStateListener;)V
    .locals 1

    monitor-enter p0

    .line 1
    :try_start_0
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/signal/communicate/w/m;->e:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    .line 2
    monitor-exit p0

    return-void

    .line 3
    :cond_0
    :try_start_1
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/signal/communicate/w/m;->e:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 4
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public b()Z
    .locals 6

    .line 1
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/signal/communicate/w/m;->f:Ljava/util/List;

    invoke-static {v0}, Lcn/mucang/android/core/utils/g;->b(Ljava/util/Collection;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    .line 2
    :cond_0
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/signal/communicate/w/m;->b:Lcn/mucang/android/jiakaoyi/signal/communicate/w/n/n/b;

    if-nez v0, :cond_1

    return v1

    .line 3
    :cond_1
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/signal/communicate/w/m;->a:Ljava/lang/Object;

    monitor-enter v0

    .line 4
    :try_start_0
    iget-object v2, p0, Lcn/mucang/android/jiakaoyi/signal/communicate/w/m;->f:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    const/4 v3, 0x0

    :cond_2
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_4

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcn/mucang/android/jiakaoyi/signal/communicate/w/n/j;

    .line 5
    invoke-virtual {v4}, Lcn/mucang/android/jiakaoyi/signal/communicate/w/n/j;->g()Z

    move-result v5

    if-nez v5, :cond_2

    .line 6
    iget-object v4, v4, Lcn/mucang/android/jiakaoyi/signal/communicate/w/n/j;->d:Lcn/mucang/android/jiakaoyi/signal/communicate/restruct/channel/config/McChannelConfig;

    iget-boolean v4, v4, Lcn/mucang/android/jiakaoyi/signal/communicate/restruct/channel/config/McChannelConfig;->g:Z

    if-eqz v4, :cond_3

    .line 7
    monitor-exit v0

    return v1

    :cond_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 8
    :cond_4
    iget-object v2, p0, Lcn/mucang/android/jiakaoyi/signal/communicate/w/m;->b:Lcn/mucang/android/jiakaoyi/signal/communicate/w/n/n/b;

    invoke-interface {v2}, Lcn/mucang/android/jiakaoyi/signal/communicate/w/n/n/b;->a()I

    move-result v2

    iget-object v4, p0, Lcn/mucang/android/jiakaoyi/signal/communicate/w/m;->f:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    sub-int/2addr v4, v3

    if-eq v2, v4, :cond_5

    .line 9
    monitor-exit v0

    return v1

    .line 10
    :cond_5
    monitor-exit v0

    const/4 v0, 0x1

    return v0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public c(Lcn/mucang/android/jiakaoyi/signal/communicate/restruct/channel/provider/names/ComName;)Z
    .locals 3

    .line 1
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/signal/communicate/w/m;->a:Ljava/lang/Object;

    monitor-enter v0

    .line 2
    :try_start_0
    iget-object v1, p0, Lcn/mucang/android/jiakaoyi/signal/communicate/w/m;->f:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcn/mucang/android/jiakaoyi/signal/communicate/w/n/j;

    .line 3
    iget-object v2, v2, Lcn/mucang/android/jiakaoyi/signal/communicate/w/n/j;->e:Lcn/mucang/android/jiakaoyi/signal/communicate/restruct/channel/provider/names/ComName;

    if-ne v2, p1, :cond_0

    const/4 p1, 0x1

    .line 4
    monitor-exit v0

    return p1

    .line 5
    :cond_1
    monitor-exit v0

    const/4 p1, 0x0

    return p1

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public g(Ljava/lang/Runnable;)V
    .locals 1

    .line 1
    sget-object v0, Lcn/mucang/android/jiakaoyi/signal/communicate/w/m;->h:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v0, p1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public i()Lcn/mucang/android/jiakaoyi/signal/communicate/w/n/j;
    .locals 5

    .line 1
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/signal/communicate/w/m;->f:Ljava/util/List;

    invoke-static {v0}, Lcn/mucang/android/core/utils/g;->b(Ljava/util/Collection;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return-object v1

    .line 2
    :cond_0
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/signal/communicate/w/m;->a:Ljava/lang/Object;

    monitor-enter v0

    .line 3
    :try_start_0
    iget-object v2, p0, Lcn/mucang/android/jiakaoyi/signal/communicate/w/m;->f:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcn/mucang/android/jiakaoyi/signal/communicate/w/n/j;

    .line 4
    invoke-virtual {v3}, Lcn/mucang/android/jiakaoyi/signal/communicate/w/n/j;->i()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 5
    monitor-exit v0

    return-object v3

    .line 6
    :cond_2
    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public j(Lcn/mucang/android/jiakaoyi/signal/communicate/restruct/channel/provider/names/ComName;)Lcn/mucang/android/jiakaoyi/signal/com/ComState;
    .locals 4

    .line 1
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/signal/communicate/w/m;->a:Ljava/lang/Object;

    monitor-enter v0

    .line 2
    :try_start_0
    iget-object v1, p0, Lcn/mucang/android/jiakaoyi/signal/communicate/w/m;->f:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcn/mucang/android/jiakaoyi/signal/communicate/w/n/j;

    .line 3
    iget-object v3, v2, Lcn/mucang/android/jiakaoyi/signal/communicate/w/n/j;->e:Lcn/mucang/android/jiakaoyi/signal/communicate/restruct/channel/provider/names/ComName;

    if-ne v3, p1, :cond_0

    .line 4
    invoke-virtual {v2}, Lcn/mucang/android/jiakaoyi/signal/communicate/w/n/j;->f()Lcn/mucang/android/jiakaoyi/signal/com/ComState;

    move-result-object p1

    monitor-exit v0

    return-object p1

    .line 5
    :cond_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 6
    sget-object p1, Lcn/mucang/android/jiakaoyi/signal/com/ComState;->None:Lcn/mucang/android/jiakaoyi/signal/com/ComState;

    return-object p1

    :catchall_0
    move-exception p1

    .line 7
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public k()Lcn/mucang/android/jiakaoyi/signal/communicate/ComStateListener$State;
    .locals 1

    .line 1
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/signal/communicate/w/m;->d:Lcn/mucang/android/jiakaoyi/signal/communicate/ComStateListener$State;

    return-object v0
.end method

.method public m()Z
    .locals 4

    .line 1
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/signal/communicate/w/m;->f:Ljava/util/List;

    invoke-static {v0}, Lcn/mucang/android/core/utils/g;->b(Ljava/util/Collection;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    .line 2
    :cond_0
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/signal/communicate/w/m;->b:Lcn/mucang/android/jiakaoyi/signal/communicate/w/n/n/b;

    if-nez v0, :cond_1

    return v1

    .line 3
    :cond_1
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/signal/communicate/w/m;->a:Ljava/lang/Object;

    monitor-enter v0

    .line 4
    :try_start_0
    iget-object v2, p0, Lcn/mucang/android/jiakaoyi/signal/communicate/w/m;->b:Lcn/mucang/android/jiakaoyi/signal/communicate/w/n/n/b;

    invoke-interface {v2}, Lcn/mucang/android/jiakaoyi/signal/communicate/w/n/n/b;->a()I

    move-result v2

    iget-object v3, p0, Lcn/mucang/android/jiakaoyi/signal/communicate/w/m;->f:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-eq v2, v3, :cond_2

    .line 5
    monitor-exit v0

    return v1

    .line 6
    :cond_2
    iget-object v2, p0, Lcn/mucang/android/jiakaoyi/signal/communicate/w/m;->f:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_3
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcn/mucang/android/jiakaoyi/signal/communicate/w/n/j;

    .line 7
    invoke-virtual {v3}, Lcn/mucang/android/jiakaoyi/signal/communicate/w/n/j;->g()Z

    move-result v3

    if-nez v3, :cond_3

    .line 8
    monitor-exit v0

    return v1

    .line 9
    :cond_4
    monitor-exit v0

    const/4 v0, 0x1

    return v0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public n()Z
    .locals 4

    .line 1
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/signal/communicate/w/m;->a:Ljava/lang/Object;

    monitor-enter v0

    .line 2
    :try_start_0
    iget-object v1, p0, Lcn/mucang/android/jiakaoyi/signal/communicate/w/m;->f:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcn/mucang/android/jiakaoyi/signal/communicate/w/n/j;

    .line 3
    invoke-virtual {v2}, Lcn/mucang/android/jiakaoyi/signal/communicate/w/n/j;->f()Lcn/mucang/android/jiakaoyi/signal/com/ComState;

    move-result-object v2

    sget-object v3, Lcn/mucang/android/jiakaoyi/signal/com/ComState;->UpdatingFirmware:Lcn/mucang/android/jiakaoyi/signal/com/ComState;

    if-ne v2, v3, :cond_0

    const/4 v1, 0x1

    .line 4
    monitor-exit v0

    return v1

    .line 5
    :cond_1
    monitor-exit v0

    const/4 v0, 0x0

    return v0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public synthetic r(Lcn/mucang/android/jiakaoyi/signal/communicate/restruct/channel/provider/names/ComName;)V
    .locals 0

    invoke-direct {p0, p1}, Lcn/mucang/android/jiakaoyi/signal/communicate/w/m;->q(Lcn/mucang/android/jiakaoyi/signal/communicate/restruct/channel/provider/names/ComName;)V

    return-void
.end method

.method public synthetic t(Lcn/mucang/android/jiakaoyi/signal/communicate/ComStateListener$State;Ljava/lang/Throwable;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcn/mucang/android/jiakaoyi/signal/communicate/w/m;->s(Lcn/mucang/android/jiakaoyi/signal/communicate/ComStateListener$State;Ljava/lang/Throwable;)V

    return-void
.end method

.method public synthetic v(Ljava/lang/Throwable;)V
    .locals 0

    invoke-direct {p0, p1}, Lcn/mucang/android/jiakaoyi/signal/communicate/w/m;->u(Ljava/lang/Throwable;)V

    return-void
.end method

.method public synthetic x(Lcn/mucang/android/jiakaoyi/signal/communicate/w/n/i;)V
    .locals 0

    invoke-direct {p0, p1}, Lcn/mucang/android/jiakaoyi/signal/communicate/w/m;->w(Lcn/mucang/android/jiakaoyi/signal/communicate/w/n/i;)V

    return-void
.end method

.method public synthetic z(Lcn/mucang/android/jiakaoyi/signal/communicate/restruct/channel/provider/names/ComName;)V
    .locals 0

    invoke-direct {p0, p1}, Lcn/mucang/android/jiakaoyi/signal/communicate/w/m;->y(Lcn/mucang/android/jiakaoyi/signal/communicate/restruct/channel/provider/names/ComName;)V

    return-void
.end method
