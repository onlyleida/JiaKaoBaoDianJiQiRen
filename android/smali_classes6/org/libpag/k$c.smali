.class Lorg/libpag/k$c;
.super Landroid/os/Handler;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/libpag/k;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "c"
.end annotation


# instance fields
.field private final a:Ljava/lang/Object;

.field private b:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lorg/libpag/PAGImageView;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Landroid/os/Looper;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 2
    new-instance p1, Ljava/lang/Object;

    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/libpag/k$c;->a:Ljava/lang/Object;

    .line 3
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lorg/libpag/k$c;->b:Ljava/util/List;

    return-void
.end method


# virtual methods
.method a(Lorg/libpag/PAGImageView;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lorg/libpag/k$c;->a:Ljava/lang/Object;

    monitor-enter v0

    .line 2
    :try_start_0
    iget-object v1, p0, Lorg/libpag/k$c;->b:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 3
    invoke-virtual {p0}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v1

    const/4 v2, 0x1

    .line 4
    iput v2, v1, Landroid/os/Message;->arg1:I

    .line 5
    invoke-virtual {p0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 6
    :cond_0
    iget-object v1, p0, Lorg/libpag/k$c;->b:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 7
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public handleMessage(Landroid/os/Message;)V
    .locals 3

    .line 1
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 2
    iget v0, p1, Landroid/os/Message;->arg1:I

    if-eqz v0, :cond_6

    const/4 v1, 0x1

    if-eq v0, v1, :cond_3

    const/4 v1, 0x2

    if-eq v0, v1, :cond_2

    const/4 v1, 0x3

    if-eq v0, v1, :cond_1

    const/4 v1, 0x4

    if-eq v0, v1, :cond_0

    goto/16 :goto_1

    .line 3
    :cond_0
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lorg/libpag/PAGImageView;

    if-eqz p1, :cond_8

    .line 4
    invoke-virtual {p1}, Lorg/libpag/PAGImageView;->c()V

    goto/16 :goto_1

    .line 5
    :cond_1
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lorg/libpag/PAGImageView;

    .line 6
    invoke-virtual {p1}, Lorg/libpag/PAGImageView;->b()V

    goto :goto_1

    .line 7
    :cond_2
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lorg/libpag/PAGImageView;

    if-eqz p1, :cond_8

    .line 8
    invoke-virtual {p1}, Lorg/libpag/PAGImageView;->d()V

    .line 9
    iget-object v0, p1, Lorg/libpag/PAGImageView;->u:Lorg/libpag/k$b;

    if-eqz v0, :cond_8

    .line 10
    iget-object p1, p1, Lorg/libpag/PAGImageView;->u:Lorg/libpag/k$b;

    invoke-virtual {p1}, Lorg/libpag/k$b;->c()V

    goto :goto_1

    .line 11
    :cond_3
    iget-object p1, p0, Lorg/libpag/k$c;->a:Ljava/lang/Object;

    monitor-enter p1

    .line 12
    :try_start_0
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lorg/libpag/k$c;->b:Ljava/util/List;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 13
    iget-object v1, p0, Lorg/libpag/k$c;->b:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 14
    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 15
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 16
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_8

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    .line 17
    instance-of v2, v1, Lorg/libpag/PAGImageView;

    if-nez v2, :cond_4

    goto :goto_0

    .line 18
    :cond_4
    check-cast v1, Lorg/libpag/PAGImageView;

    .line 19
    invoke-interface {p1, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    goto :goto_0

    .line 20
    :cond_5
    invoke-virtual {v1}, Lorg/libpag/PAGImageView;->e()Z

    .line 21
    invoke-interface {p1, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :catchall_0
    move-exception v0

    .line 22
    :try_start_1
    monitor-exit p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    :cond_6
    const/4 p1, 0x0

    .line 23
    invoke-static {p1}, Lorg/libpag/CacheManager;->a(Landroid/content/Context;)Lorg/libpag/CacheManager;

    move-result-object p1

    if-eqz p1, :cond_7

    .line 24
    invoke-virtual {p1}, Lorg/libpag/CacheManager;->a()V

    .line 25
    :cond_7
    new-instance p1, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {p1, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v0, Lorg/libpag/l;

    invoke-direct {v0, p0}, Lorg/libpag/l;-><init>(Lorg/libpag/k$c;)V

    invoke-virtual {p1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_8
    :goto_1
    return-void
.end method
