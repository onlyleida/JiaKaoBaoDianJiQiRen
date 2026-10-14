.class public Lcom/amap/api/mapcore/util/u3$a;
.super Lcom/amap/api/mapcore/util/dq;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amap/api/mapcore/util/u3;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/amap/api/mapcore/util/dq<",
        "Ljava/lang/Boolean;",
        "Ljava/lang/Void;",
        "Landroid/graphics/Bitmap;",
        ">;"
    }
.end annotation


# instance fields
.field private final m:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lcom/amap/api/mapcore/util/f2$b;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic n:Lcom/amap/api/mapcore/util/u3;


# direct methods
.method public constructor <init>(Lcom/amap/api/mapcore/util/u3;Lcom/amap/api/mapcore/util/f2$b;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/amap/api/mapcore/util/u3$a;->n:Lcom/amap/api/mapcore/util/u3;

    invoke-direct {p0}, Lcom/amap/api/mapcore/util/dq;-><init>()V

    .line 2
    new-instance p1, Ljava/lang/ref/WeakReference;

    invoke-direct {p1, p2}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object p1, p0, Lcom/amap/api/mapcore/util/u3$a;->m:Ljava/lang/ref/WeakReference;

    return-void
.end method

.method private w()Lcom/amap/api/mapcore/util/f2$b;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/amap/api/mapcore/util/u3$a;->m:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amap/api/mapcore/util/f2$b;

    .line 2
    invoke-static {v0}, Lcom/amap/api/mapcore/util/u3;->i(Lcom/amap/api/mapcore/util/f2$b;)Lcom/amap/api/mapcore/util/u3$a;

    move-result-object v1

    if-ne p0, v1, :cond_0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method


# virtual methods
.method protected bridge synthetic d([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p1, [Ljava/lang/Boolean;

    invoke-virtual {p0, p1}, Lcom/amap/api/mapcore/util/u3$a;->t([Ljava/lang/Boolean;)Landroid/graphics/Bitmap;

    move-result-object p1

    return-object p1
.end method

.method protected bridge synthetic f(Ljava/lang/Object;)V
    .locals 0

    .line 1
    check-cast p1, Landroid/graphics/Bitmap;

    invoke-virtual {p0, p1}, Lcom/amap/api/mapcore/util/u3$a;->u(Landroid/graphics/Bitmap;)V

    return-void
.end method

.method protected bridge synthetic k(Ljava/lang/Object;)V
    .locals 0

    .line 1
    check-cast p1, Landroid/graphics/Bitmap;

    invoke-virtual {p0, p1}, Lcom/amap/api/mapcore/util/u3$a;->v(Landroid/graphics/Bitmap;)V

    return-void
.end method

.method protected varargs t([Ljava/lang/Boolean;)Landroid/graphics/Bitmap;
    .locals 5

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 1
    :try_start_0
    aget-object p1, p1, v0

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    .line 2
    iget-object v0, p0, Lcom/amap/api/mapcore/util/u3$a;->m:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amap/api/mapcore/util/f2$b;

    if-nez v0, :cond_0

    return-object v1

    .line 3
    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 4
    iget v3, v0, Lcom/amap/api/mapcore/util/f2$b;->a:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, "-"

    .line 5
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 6
    iget v3, v0, Lcom/amap/api/mapcore/util/f2$b;->b:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, "-"

    .line 7
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 8
    iget v3, v0, Lcom/amap/api/mapcore/util/f2$b;->c:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 9
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 10
    iget-object v3, p0, Lcom/amap/api/mapcore/util/u3$a;->n:Lcom/amap/api/mapcore/util/u3;

    invoke-static {v3}, Lcom/amap/api/mapcore/util/u3;->b(Lcom/amap/api/mapcore/util/u3;)Ljava/lang/Object;

    move-result-object v3

    monitor-enter v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    .line 11
    :goto_0
    :try_start_1
    iget-object v4, p0, Lcom/amap/api/mapcore/util/u3$a;->n:Lcom/amap/api/mapcore/util/u3;

    iget-boolean v4, v4, Lcom/amap/api/mapcore/util/u3;->d:Z

    if-eqz v4, :cond_1

    invoke-virtual {p0}, Lcom/amap/api/mapcore/util/dq;->r()Z

    move-result v4

    if-nez v4, :cond_1

    .line 12
    iget-object v4, p0, Lcom/amap/api/mapcore/util/u3$a;->n:Lcom/amap/api/mapcore/util/u3;

    invoke-static {v4}, Lcom/amap/api/mapcore/util/u3;->b(Lcom/amap/api/mapcore/util/u3;)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->wait()V

    goto :goto_0

    .line 13
    :cond_1
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 14
    :try_start_2
    iget-object v3, p0, Lcom/amap/api/mapcore/util/u3$a;->n:Lcom/amap/api/mapcore/util/u3;

    invoke-static {v3}, Lcom/amap/api/mapcore/util/u3;->j(Lcom/amap/api/mapcore/util/u3;)Lcom/amap/api/mapcore/util/v3;

    move-result-object v3

    if-eqz v3, :cond_2

    invoke-virtual {p0}, Lcom/amap/api/mapcore/util/dq;->r()Z

    move-result v3

    if-nez v3, :cond_2

    .line 15
    invoke-direct {p0}, Lcom/amap/api/mapcore/util/u3$a;->w()Lcom/amap/api/mapcore/util/f2$b;

    move-result-object v3

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/amap/api/mapcore/util/u3$a;->n:Lcom/amap/api/mapcore/util/u3;

    .line 16
    invoke-static {v3}, Lcom/amap/api/mapcore/util/u3;->p(Lcom/amap/api/mapcore/util/u3;)Z

    move-result v3

    if-nez v3, :cond_2

    .line 17
    iget-object v3, p0, Lcom/amap/api/mapcore/util/u3$a;->n:Lcom/amap/api/mapcore/util/u3;

    invoke-static {v3}, Lcom/amap/api/mapcore/util/u3;->j(Lcom/amap/api/mapcore/util/u3;)Lcom/amap/api/mapcore/util/v3;

    move-result-object v3

    invoke-virtual {v3, v2}, Lcom/amap/api/mapcore/util/v3;->l(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v3

    goto :goto_1

    :cond_2
    move-object v3, v1

    :goto_1
    if-eqz p1, :cond_3

    if-nez v3, :cond_3

    .line 18
    invoke-virtual {p0}, Lcom/amap/api/mapcore/util/dq;->r()Z

    move-result p1

    if-nez p1, :cond_3

    .line 19
    invoke-direct {p0}, Lcom/amap/api/mapcore/util/u3$a;->w()Lcom/amap/api/mapcore/util/f2$b;

    move-result-object p1

    if-eqz p1, :cond_3

    iget-object p1, p0, Lcom/amap/api/mapcore/util/u3$a;->n:Lcom/amap/api/mapcore/util/u3;

    .line 20
    invoke-static {p1}, Lcom/amap/api/mapcore/util/u3;->p(Lcom/amap/api/mapcore/util/u3;)Z

    move-result p1

    if-nez p1, :cond_3

    .line 21
    const-class p1, Lcom/amap/api/mapcore/util/u3;

    monitor-enter p1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 22
    :try_start_3
    iget-object v3, p0, Lcom/amap/api/mapcore/util/u3$a;->n:Lcom/amap/api/mapcore/util/u3;

    invoke-virtual {v3, v0}, Lcom/amap/api/mapcore/util/u3;->a(Ljava/lang/Object;)Landroid/graphics/Bitmap;

    move-result-object v3

    .line 23
    monitor-exit p1

    goto :goto_2

    :catchall_0
    move-exception v0

    monitor-exit p1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    throw v0

    :cond_3
    :goto_2
    if-eqz v3, :cond_4

    .line 24
    iget-object p1, p0, Lcom/amap/api/mapcore/util/u3$a;->n:Lcom/amap/api/mapcore/util/u3;

    invoke-static {p1}, Lcom/amap/api/mapcore/util/u3;->j(Lcom/amap/api/mapcore/util/u3;)Lcom/amap/api/mapcore/util/v3;

    move-result-object p1

    if-eqz p1, :cond_4

    .line 25
    iget-object p1, p0, Lcom/amap/api/mapcore/util/u3$a;->n:Lcom/amap/api/mapcore/util/u3;

    invoke-static {p1}, Lcom/amap/api/mapcore/util/u3;->j(Lcom/amap/api/mapcore/util/u3;)Lcom/amap/api/mapcore/util/v3;

    move-result-object p1

    invoke-virtual {p1, v2, v3}, Lcom/amap/api/mapcore/util/v3;->j(Ljava/lang/String;Landroid/graphics/Bitmap;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    :cond_4
    return-object v3

    :catchall_1
    move-exception p1

    .line 26
    :try_start_5
    monitor-exit v3
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    :try_start_6
    throw p1
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    :catchall_2
    move-exception p1

    .line 27
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    return-object v1
.end method

.method protected u(Landroid/graphics/Bitmap;)V
    .locals 2

    .line 1
    :try_start_0
    invoke-virtual {p0}, Lcom/amap/api/mapcore/util/dq;->r()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/amap/api/mapcore/util/u3$a;->n:Lcom/amap/api/mapcore/util/u3;

    invoke-static {v0}, Lcom/amap/api/mapcore/util/u3;->p(Lcom/amap/api/mapcore/util/u3;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 p1, 0x0

    .line 2
    :cond_1
    invoke-direct {p0}, Lcom/amap/api/mapcore/util/u3$a;->w()Lcom/amap/api/mapcore/util/f2$b;

    move-result-object v0

    if-eqz p1, :cond_2

    .line 3
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v1

    if-nez v1, :cond_2

    if-eqz v0, :cond_2

    .line 4
    invoke-virtual {v0, p1}, Lcom/amap/api/mapcore/util/f2$b;->c(Landroid/graphics/Bitmap;)V

    .line 5
    iget-object p1, p0, Lcom/amap/api/mapcore/util/u3$a;->n:Lcom/amap/api/mapcore/util/u3;

    invoke-static {p1}, Lcom/amap/api/mapcore/util/u3;->q(Lcom/amap/api/mapcore/util/u3;)Lcom/amap/api/mapcore/util/u3$c;

    move-result-object p1

    if-eqz p1, :cond_2

    .line 6
    iget-object p1, p0, Lcom/amap/api/mapcore/util/u3$a;->n:Lcom/amap/api/mapcore/util/u3;

    invoke-static {p1}, Lcom/amap/api/mapcore/util/u3;->q(Lcom/amap/api/mapcore/util/u3;)Lcom/amap/api/mapcore/util/u3$c;

    move-result-object p1

    invoke-interface {p1}, Lcom/amap/api/mapcore/util/u3$c;->a()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    .line 7
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_2
    :goto_0
    return-void
.end method

.method protected v(Landroid/graphics/Bitmap;)V
    .locals 1

    .line 1
    invoke-super {p0, p1}, Lcom/amap/api/mapcore/util/dq;->k(Ljava/lang/Object;)V

    .line 2
    iget-object p1, p0, Lcom/amap/api/mapcore/util/u3$a;->n:Lcom/amap/api/mapcore/util/u3;

    invoke-static {p1}, Lcom/amap/api/mapcore/util/u3;->b(Lcom/amap/api/mapcore/util/u3;)Ljava/lang/Object;

    move-result-object p1

    monitor-enter p1

    .line 3
    :try_start_0
    iget-object v0, p0, Lcom/amap/api/mapcore/util/u3$a;->n:Lcom/amap/api/mapcore/util/u3;

    invoke-static {v0}, Lcom/amap/api/mapcore/util/u3;->b(Lcom/amap/api/mapcore/util/u3;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    .line 4
    :try_start_1
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 5
    :goto_0
    monitor-exit p1

    return-void

    :catchall_1
    move-exception v0

    monitor-exit p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    throw v0
.end method
