.class Lcom/amap/api/mapcore/util/y9$j;
.super Ljava/lang/Thread;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amap/api/mapcore/util/y9;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "j"
.end annotation


# instance fields
.field private a:Z

.field private b:Z

.field private c:Z

.field private d:Z

.field private e:Z

.field private f:Z

.field private g:Z

.field private h:Z

.field private i:Z

.field private j:Z

.field private k:Z

.field private l:I

.field private m:I

.field private n:I

.field private o:Z

.field private p:Z

.field private q:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/Runnable;",
            ">;"
        }
    .end annotation
.end field

.field private r:Z

.field private s:Lcom/amap/api/mapcore/util/y9$i;

.field private t:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lcom/amap/api/mapcore/util/y9;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Ljava/lang/ref/WeakReference;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/ref/WeakReference<",
            "Lcom/amap/api/mapcore/util/y9;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 2
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/amap/api/mapcore/util/y9$j;->q:Ljava/util/ArrayList;

    const/4 v0, 0x1

    .line 3
    iput-boolean v0, p0, Lcom/amap/api/mapcore/util/y9$j;->r:Z

    const/4 v1, 0x0

    .line 4
    iput v1, p0, Lcom/amap/api/mapcore/util/y9$j;->l:I

    .line 5
    iput v1, p0, Lcom/amap/api/mapcore/util/y9$j;->m:I

    .line 6
    iput-boolean v0, p0, Lcom/amap/api/mapcore/util/y9$j;->o:Z

    .line 7
    iput v0, p0, Lcom/amap/api/mapcore/util/y9$j;->n:I

    .line 8
    iput-object p1, p0, Lcom/amap/api/mapcore/util/y9$j;->t:Ljava/lang/ref/WeakReference;

    return-void
.end method

.method static synthetic e(Lcom/amap/api/mapcore/util/y9$j;Z)Z
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/amap/api/mapcore/util/y9$j;->b:Z

    return p1
.end method

.method private p()V
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/amap/api/mapcore/util/y9$j;->i:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Lcom/amap/api/mapcore/util/y9$j;->i:Z

    .line 3
    iget-object v0, p0, Lcom/amap/api/mapcore/util/y9$j;->s:Lcom/amap/api/mapcore/util/y9$i;

    invoke-virtual {v0}, Lcom/amap/api/mapcore/util/y9$i;->i()V

    :cond_0
    return-void
.end method

.method private q()V
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/amap/api/mapcore/util/y9$j;->h:Z

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/amap/api/mapcore/util/y9$j;->s:Lcom/amap/api/mapcore/util/y9$i;

    invoke-virtual {v0}, Lcom/amap/api/mapcore/util/y9$i;->j()V

    const/4 v0, 0x0

    .line 3
    iput-boolean v0, p0, Lcom/amap/api/mapcore/util/y9$j;->h:Z

    .line 4
    invoke-static {}, Lcom/amap/api/mapcore/util/y9;->j()Lcom/amap/api/mapcore/util/y9$k;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/amap/api/mapcore/util/y9$k;->g(Lcom/amap/api/mapcore/util/y9$j;)V

    :cond_0
    return-void
.end method

.method private r()V
    .locals 16
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    move-object/from16 v1, p0

    .line 1
    new-instance v0, Lcom/amap/api/mapcore/util/y9$i;

    iget-object v2, v1, Lcom/amap/api/mapcore/util/y9$j;->t:Ljava/lang/ref/WeakReference;

    invoke-direct {v0, v2}, Lcom/amap/api/mapcore/util/y9$i;-><init>(Ljava/lang/ref/WeakReference;)V

    iput-object v0, v1, Lcom/amap/api/mapcore/util/y9$j;->s:Lcom/amap/api/mapcore/util/y9$i;

    const/4 v0, 0x0

    .line 2
    iput-boolean v0, v1, Lcom/amap/api/mapcore/util/y9$j;->h:Z

    .line 3
    iput-boolean v0, v1, Lcom/amap/api/mapcore/util/y9$j;->i:Z

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    :goto_0
    const/4 v14, 0x0

    .line 4
    :goto_1
    :try_start_0
    invoke-static {}, Lcom/amap/api/mapcore/util/y9;->j()Lcom/amap/api/mapcore/util/y9$k;

    move-result-object v15

    monitor-enter v15
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_5

    .line 5
    :goto_2
    :try_start_1
    iget-boolean v2, v1, Lcom/amap/api/mapcore/util/y9$j;->a:Z

    if-eqz v2, :cond_0

    .line 6
    monitor-exit v15
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_4

    .line 7
    invoke-static {}, Lcom/amap/api/mapcore/util/y9;->j()Lcom/amap/api/mapcore/util/y9$k;

    move-result-object v2

    monitor-enter v2

    .line 8
    :try_start_2
    invoke-direct/range {p0 .. p0}, Lcom/amap/api/mapcore/util/y9$j;->p()V

    .line 9
    invoke-direct/range {p0 .. p0}, Lcom/amap/api/mapcore/util/y9$j;->q()V

    .line 10
    monitor-exit v2

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0

    .line 11
    :cond_0
    :try_start_3
    iget-object v2, v1, Lcom/amap/api/mapcore/util/y9$j;->q:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_1

    .line 12
    iget-object v2, v1, Lcom/amap/api/mapcore/util/y9$j;->q:Ljava/util/ArrayList;

    const/4 v14, 0x0

    invoke-virtual {v2, v14}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v2

    move-object v14, v2

    check-cast v14, Ljava/lang/Runnable;

    const/4 v0, 0x0

    goto/16 :goto_7

    .line 13
    :cond_1
    iget-boolean v2, v1, Lcom/amap/api/mapcore/util/y9$j;->d:Z

    iget-boolean v0, v1, Lcom/amap/api/mapcore/util/y9$j;->c:Z

    if-eq v2, v0, :cond_2

    .line 14
    iput-boolean v0, v1, Lcom/amap/api/mapcore/util/y9$j;->d:Z

    .line 15
    invoke-static {}, Lcom/amap/api/mapcore/util/y9;->j()Lcom/amap/api/mapcore/util/y9$k;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->notifyAll()V

    goto :goto_3

    :cond_2
    const/4 v0, 0x0

    .line 16
    :goto_3
    iget-boolean v2, v1, Lcom/amap/api/mapcore/util/y9$j;->k:Z

    if-eqz v2, :cond_3

    .line 17
    invoke-direct/range {p0 .. p0}, Lcom/amap/api/mapcore/util/y9$j;->p()V

    .line 18
    invoke-direct/range {p0 .. p0}, Lcom/amap/api/mapcore/util/y9$j;->q()V

    const/4 v2, 0x0

    .line 19
    iput-boolean v2, v1, Lcom/amap/api/mapcore/util/y9$j;->k:Z

    const/4 v5, 0x1

    :cond_3
    if-eqz v3, :cond_4

    .line 20
    invoke-direct/range {p0 .. p0}, Lcom/amap/api/mapcore/util/y9$j;->p()V

    .line 21
    invoke-direct/range {p0 .. p0}, Lcom/amap/api/mapcore/util/y9$j;->q()V

    const/4 v3, 0x0

    :cond_4
    if-eqz v0, :cond_5

    .line 22
    iget-boolean v2, v1, Lcom/amap/api/mapcore/util/y9$j;->i:Z

    if-eqz v2, :cond_5

    .line 23
    invoke-direct/range {p0 .. p0}, Lcom/amap/api/mapcore/util/y9$j;->p()V

    :cond_5
    if-eqz v0, :cond_8

    .line 24
    iget-boolean v2, v1, Lcom/amap/api/mapcore/util/y9$j;->h:Z

    if-eqz v2, :cond_8

    .line 25
    iget-object v2, v1, Lcom/amap/api/mapcore/util/y9$j;->t:Ljava/lang/ref/WeakReference;

    .line 26
    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/amap/api/mapcore/util/y9;

    if-nez v2, :cond_6

    const/4 v2, 0x0

    goto :goto_4

    .line 27
    :cond_6
    invoke-static {v2}, Lcom/amap/api/mapcore/util/y9;->n(Lcom/amap/api/mapcore/util/y9;)Z

    move-result v2

    :goto_4
    if-eqz v2, :cond_7

    .line 28
    invoke-static {}, Lcom/amap/api/mapcore/util/y9;->j()Lcom/amap/api/mapcore/util/y9$k;

    move-result-object v2

    .line 29
    invoke-virtual {v2}, Lcom/amap/api/mapcore/util/y9$k;->c()Z

    move-result v2

    if-eqz v2, :cond_8

    .line 30
    :cond_7
    invoke-direct/range {p0 .. p0}, Lcom/amap/api/mapcore/util/y9$j;->q()V

    :cond_8
    if-eqz v0, :cond_9

    .line 31
    invoke-static {}, Lcom/amap/api/mapcore/util/y9;->j()Lcom/amap/api/mapcore/util/y9$k;

    move-result-object v0

    .line 32
    invoke-virtual {v0}, Lcom/amap/api/mapcore/util/y9$k;->d()Z

    move-result v0

    if-eqz v0, :cond_9

    .line 33
    iget-object v0, v1, Lcom/amap/api/mapcore/util/y9$j;->s:Lcom/amap/api/mapcore/util/y9$i;

    invoke-virtual {v0}, Lcom/amap/api/mapcore/util/y9$i;->j()V

    .line 34
    :cond_9
    iget-boolean v0, v1, Lcom/amap/api/mapcore/util/y9$j;->e:Z

    if-nez v0, :cond_b

    iget-boolean v0, v1, Lcom/amap/api/mapcore/util/y9$j;->g:Z

    if-nez v0, :cond_b

    .line 35
    iget-boolean v0, v1, Lcom/amap/api/mapcore/util/y9$j;->i:Z

    if-eqz v0, :cond_a

    .line 36
    invoke-direct/range {p0 .. p0}, Lcom/amap/api/mapcore/util/y9$j;->p()V

    :cond_a
    const/4 v0, 0x1

    .line 37
    iput-boolean v0, v1, Lcom/amap/api/mapcore/util/y9$j;->g:Z

    const/4 v0, 0x0

    .line 38
    iput-boolean v0, v1, Lcom/amap/api/mapcore/util/y9$j;->f:Z

    .line 39
    invoke-static {}, Lcom/amap/api/mapcore/util/y9;->j()Lcom/amap/api/mapcore/util/y9$k;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    .line 40
    :cond_b
    iget-boolean v0, v1, Lcom/amap/api/mapcore/util/y9$j;->e:Z

    if-eqz v0, :cond_c

    iget-boolean v0, v1, Lcom/amap/api/mapcore/util/y9$j;->g:Z

    if-eqz v0, :cond_c

    const/4 v0, 0x0

    .line 41
    iput-boolean v0, v1, Lcom/amap/api/mapcore/util/y9$j;->g:Z

    .line 42
    invoke-static {}, Lcom/amap/api/mapcore/util/y9;->j()Lcom/amap/api/mapcore/util/y9$k;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    :cond_c
    if-eqz v4, :cond_d

    const/4 v0, 0x1

    .line 43
    iput-boolean v0, v1, Lcom/amap/api/mapcore/util/y9$j;->p:Z

    .line 44
    invoke-static {}, Lcom/amap/api/mapcore/util/y9;->j()Lcom/amap/api/mapcore/util/y9$k;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    const/4 v4, 0x0

    const/4 v13, 0x0

    .line 45
    :cond_d
    invoke-direct/range {p0 .. p0}, Lcom/amap/api/mapcore/util/y9$j;->s()Z

    move-result v0

    if-eqz v0, :cond_1e

    .line 46
    iget-boolean v0, v1, Lcom/amap/api/mapcore/util/y9$j;->h:Z

    if-nez v0, :cond_f

    if-eqz v5, :cond_e

    const/4 v5, 0x0

    goto :goto_5

    .line 47
    :cond_e
    invoke-static {}, Lcom/amap/api/mapcore/util/y9;->j()Lcom/amap/api/mapcore/util/y9$k;

    move-result-object v0

    .line 48
    invoke-virtual {v0, v1}, Lcom/amap/api/mapcore/util/y9$k;->e(Lcom/amap/api/mapcore/util/y9$j;)Z

    move-result v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_4

    if-eqz v0, :cond_f

    .line 49
    :try_start_4
    iget-object v0, v1, Lcom/amap/api/mapcore/util/y9$j;->s:Lcom/amap/api/mapcore/util/y9$i;

    invoke-virtual {v0}, Lcom/amap/api/mapcore/util/y9$i;->a()V
    :try_end_4
    .catch Ljava/lang/RuntimeException; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_4

    const/4 v0, 0x1

    .line 50
    :try_start_5
    iput-boolean v0, v1, Lcom/amap/api/mapcore/util/y9$j;->h:Z

    .line 51
    invoke-static {}, Lcom/amap/api/mapcore/util/y9;->j()Lcom/amap/api/mapcore/util/y9$k;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    const/4 v7, 0x1

    goto :goto_5

    :catch_0
    move-exception v0

    .line 52
    invoke-static {}, Lcom/amap/api/mapcore/util/y9;->j()Lcom/amap/api/mapcore/util/y9$k;

    move-result-object v2

    .line 53
    invoke-virtual {v2, v1}, Lcom/amap/api/mapcore/util/y9$k;->g(Lcom/amap/api/mapcore/util/y9$j;)V

    .line 54
    throw v0

    .line 55
    :cond_f
    :goto_5
    iget-boolean v0, v1, Lcom/amap/api/mapcore/util/y9$j;->h:Z

    if-eqz v0, :cond_10

    iget-boolean v0, v1, Lcom/amap/api/mapcore/util/y9$j;->i:Z

    if-nez v0, :cond_10

    const/4 v0, 0x1

    .line 56
    iput-boolean v0, v1, Lcom/amap/api/mapcore/util/y9$j;->i:Z

    const/4 v8, 0x1

    const/4 v9, 0x1

    const/4 v10, 0x1

    .line 57
    :cond_10
    iget-boolean v0, v1, Lcom/amap/api/mapcore/util/y9$j;->i:Z

    if-eqz v0, :cond_1e

    .line 58
    iget-boolean v0, v1, Lcom/amap/api/mapcore/util/y9$j;->r:Z

    if-eqz v0, :cond_11

    .line 59
    iget v0, v1, Lcom/amap/api/mapcore/util/y9$j;->l:I

    .line 60
    iget v2, v1, Lcom/amap/api/mapcore/util/y9$j;->m:I

    const/4 v8, 0x0

    .line 61
    iput-boolean v8, v1, Lcom/amap/api/mapcore/util/y9$j;->r:Z

    move v11, v0

    move v12, v2

    const/4 v0, 0x0

    const/4 v8, 0x1

    const/4 v10, 0x1

    const/4 v13, 0x1

    goto :goto_6

    :cond_11
    const/4 v0, 0x0

    .line 62
    :goto_6
    iput-boolean v0, v1, Lcom/amap/api/mapcore/util/y9$j;->o:Z

    .line 63
    invoke-static {}, Lcom/amap/api/mapcore/util/y9;->j()Lcom/amap/api/mapcore/util/y9$k;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->notifyAll()V

    .line 64
    :goto_7
    monitor-exit v15
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_4

    if-eqz v14, :cond_12

    .line 65
    :try_start_6
    invoke-interface {v14}, Ljava/lang/Runnable;->run()V

    goto/16 :goto_0

    :cond_12
    if-eqz v8, :cond_14

    .line 66
    iget-object v2, v1, Lcom/amap/api/mapcore/util/y9$j;->s:Lcom/amap/api/mapcore/util/y9$i;

    invoke-virtual {v2}, Lcom/amap/api/mapcore/util/y9$i;->f()Z

    move-result v2

    if-eqz v2, :cond_13

    .line 67
    invoke-static {}, Lcom/amap/api/mapcore/util/y9;->j()Lcom/amap/api/mapcore/util/y9$k;

    move-result-object v2

    monitor-enter v2
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_5

    const/4 v8, 0x1

    .line 68
    :try_start_7
    iput-boolean v8, v1, Lcom/amap/api/mapcore/util/y9$j;->j:Z

    .line 69
    invoke-static {}, Lcom/amap/api/mapcore/util/y9;->j()Lcom/amap/api/mapcore/util/y9$k;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Object;->notifyAll()V

    .line 70
    monitor-exit v2

    const/4 v8, 0x0

    goto :goto_8

    :catchall_1
    move-exception v0

    monitor-exit v2
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    :try_start_8
    throw v0

    .line 71
    :cond_13
    invoke-static {}, Lcom/amap/api/mapcore/util/y9;->j()Lcom/amap/api/mapcore/util/y9$k;

    move-result-object v2

    monitor-enter v2
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_5

    const/4 v15, 0x1

    .line 72
    :try_start_9
    iput-boolean v15, v1, Lcom/amap/api/mapcore/util/y9$j;->j:Z

    .line 73
    iput-boolean v15, v1, Lcom/amap/api/mapcore/util/y9$j;->f:Z

    .line 74
    invoke-static {}, Lcom/amap/api/mapcore/util/y9;->j()Lcom/amap/api/mapcore/util/y9$k;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/Object;->notifyAll()V

    .line 75
    monitor-exit v2

    goto/16 :goto_1

    :catchall_2
    move-exception v0

    monitor-exit v2
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_2

    :try_start_a
    throw v0

    :cond_14
    :goto_8
    if-eqz v9, :cond_15

    .line 76
    iget-object v2, v1, Lcom/amap/api/mapcore/util/y9$j;->s:Lcom/amap/api/mapcore/util/y9$i;

    invoke-virtual {v2}, Lcom/amap/api/mapcore/util/y9$i;->g()Ljavax/microedition/khronos/opengles/GL;

    move-result-object v2

    move-object v6, v2

    check-cast v6, Ljavax/microedition/khronos/opengles/GL10;

    .line 77
    invoke-static {}, Lcom/amap/api/mapcore/util/y9;->j()Lcom/amap/api/mapcore/util/y9$k;

    move-result-object v2

    invoke-virtual {v2, v6}, Lcom/amap/api/mapcore/util/y9$k;->b(Ljavax/microedition/khronos/opengles/GL10;)V

    const/4 v9, 0x0

    :cond_15
    if-eqz v7, :cond_17

    .line 78
    iget-object v2, v1, Lcom/amap/api/mapcore/util/y9$j;->t:Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/amap/api/mapcore/util/y9;

    if-eqz v2, :cond_16

    .line 79
    invoke-static {v2}, Lcom/amap/api/mapcore/util/y9;->o(Lcom/amap/api/mapcore/util/y9;)Landroid/opengl/GLSurfaceView$Renderer;

    move-result-object v2

    iget-object v7, v1, Lcom/amap/api/mapcore/util/y9$j;->s:Lcom/amap/api/mapcore/util/y9$i;

    iget-object v7, v7, Lcom/amap/api/mapcore/util/y9$i;->e:Ljavax/microedition/khronos/egl/EGLConfig;

    invoke-interface {v2, v6, v7}, Landroid/opengl/GLSurfaceView$Renderer;->onSurfaceCreated(Ljavax/microedition/khronos/opengles/GL10;Ljavax/microedition/khronos/egl/EGLConfig;)V

    :cond_16
    const/4 v7, 0x0

    :cond_17
    if-eqz v10, :cond_19

    .line 80
    iget-object v2, v1, Lcom/amap/api/mapcore/util/y9$j;->t:Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/amap/api/mapcore/util/y9;

    if-eqz v2, :cond_18

    .line 81
    invoke-static {v2}, Lcom/amap/api/mapcore/util/y9;->o(Lcom/amap/api/mapcore/util/y9;)Landroid/opengl/GLSurfaceView$Renderer;

    move-result-object v2

    invoke-interface {v2, v6, v11, v12}, Landroid/opengl/GLSurfaceView$Renderer;->onSurfaceChanged(Ljavax/microedition/khronos/opengles/GL10;II)V

    :cond_18
    const/4 v10, 0x0

    .line 82
    :cond_19
    iget-object v2, v1, Lcom/amap/api/mapcore/util/y9$j;->t:Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/amap/api/mapcore/util/y9;

    if-eqz v2, :cond_1a

    .line 83
    invoke-static {v2}, Lcom/amap/api/mapcore/util/y9;->o(Lcom/amap/api/mapcore/util/y9;)Landroid/opengl/GLSurfaceView$Renderer;

    move-result-object v2

    invoke-interface {v2, v6}, Landroid/opengl/GLSurfaceView$Renderer;->onDrawFrame(Ljavax/microedition/khronos/opengles/GL10;)V

    .line 84
    :cond_1a
    iget-object v2, v1, Lcom/amap/api/mapcore/util/y9$j;->s:Lcom/amap/api/mapcore/util/y9$i;

    invoke-virtual {v2}, Lcom/amap/api/mapcore/util/y9$i;->h()I

    move-result v2

    const/16 v15, 0x3000

    if-eq v2, v15, :cond_1c

    const/16 v15, 0x300e

    if-eq v2, v15, :cond_1b

    const-string v15, "GLThread"

    const-string v0, "eglSwapBuffers"

    .line 85
    invoke-static {v15, v0, v2}, Lcom/amap/api/mapcore/util/y9$i;->d(Ljava/lang/String;Ljava/lang/String;I)V

    .line 86
    invoke-static {}, Lcom/amap/api/mapcore/util/y9;->j()Lcom/amap/api/mapcore/util/y9$k;

    move-result-object v2

    monitor-enter v2
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_5

    const/4 v0, 0x1

    .line 87
    :try_start_b
    iput-boolean v0, v1, Lcom/amap/api/mapcore/util/y9$j;->f:Z

    .line 88
    invoke-static {}, Lcom/amap/api/mapcore/util/y9;->j()Lcom/amap/api/mapcore/util/y9$k;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/Object;->notifyAll()V

    .line 89
    monitor-exit v2

    goto :goto_9

    :catchall_3
    move-exception v0

    monitor-exit v2
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_3

    :try_start_c
    throw v0
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_5

    :cond_1b
    const/4 v0, 0x1

    const/4 v3, 0x1

    goto :goto_9

    :cond_1c
    const/4 v0, 0x1

    :goto_9
    if-eqz v13, :cond_1d

    const/4 v4, 0x1

    :cond_1d
    const/4 v0, 0x0

    goto/16 :goto_1

    .line 90
    :cond_1e
    :try_start_d
    invoke-static {}, Lcom/amap/api/mapcore/util/y9;->j()Lcom/amap/api/mapcore/util/y9$k;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->wait()V

    const/4 v0, 0x0

    goto/16 :goto_2

    :catchall_4
    move-exception v0

    .line 91
    monitor-exit v15
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_4

    :try_start_e
    throw v0
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_5

    :catchall_5
    move-exception v0

    .line 92
    invoke-static {}, Lcom/amap/api/mapcore/util/y9;->j()Lcom/amap/api/mapcore/util/y9$k;

    move-result-object v2

    monitor-enter v2

    .line 93
    :try_start_f
    invoke-direct/range {p0 .. p0}, Lcom/amap/api/mapcore/util/y9$j;->p()V

    .line 94
    invoke-direct/range {p0 .. p0}, Lcom/amap/api/mapcore/util/y9$j;->q()V

    .line 95
    monitor-exit v2
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_6

    .line 96
    throw v0

    :catchall_6
    move-exception v0

    .line 97
    :try_start_10
    monitor-exit v2
    :try_end_10
    .catchall {:try_start_10 .. :try_end_10} :catchall_6

    throw v0
.end method

.method private s()Z
    .locals 2

    .line 1
    iget-boolean v0, p0, Lcom/amap/api/mapcore/util/y9$j;->d:Z

    const/4 v1, 0x1

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/amap/api/mapcore/util/y9$j;->e:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/amap/api/mapcore/util/y9$j;->f:Z

    if-nez v0, :cond_0

    iget v0, p0, Lcom/amap/api/mapcore/util/y9$j;->l:I

    if-lez v0, :cond_0

    iget v0, p0, Lcom/amap/api/mapcore/util/y9$j;->m:I

    if-lez v0, :cond_0

    iget-boolean v0, p0, Lcom/amap/api/mapcore/util/y9$j;->o:Z

    if-nez v0, :cond_1

    iget v0, p0, Lcom/amap/api/mapcore/util/y9$j;->n:I

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :cond_1
    :goto_0
    return v1
.end method


# virtual methods
.method public a(I)V
    .locals 1

    if-ltz p1, :cond_0

    const/4 v0, 0x1

    if-gt p1, v0, :cond_0

    .line 1
    invoke-static {}, Lcom/amap/api/mapcore/util/y9;->j()Lcom/amap/api/mapcore/util/y9$k;

    move-result-object v0

    monitor-enter v0

    .line 2
    :try_start_0
    iput p1, p0, Lcom/amap/api/mapcore/util/y9$j;->n:I

    .line 3
    invoke-static {}, Lcom/amap/api/mapcore/util/y9;->j()Lcom/amap/api/mapcore/util/y9$k;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->notifyAll()V

    .line 4
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1

    .line 5
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "renderMode"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public b(II)V
    .locals 1

    .line 1
    invoke-static {}, Lcom/amap/api/mapcore/util/y9;->j()Lcom/amap/api/mapcore/util/y9$k;

    move-result-object v0

    monitor-enter v0

    .line 2
    :try_start_0
    iput p1, p0, Lcom/amap/api/mapcore/util/y9$j;->l:I

    .line 3
    iput p2, p0, Lcom/amap/api/mapcore/util/y9$j;->m:I

    const/4 p1, 0x1

    .line 4
    iput-boolean p1, p0, Lcom/amap/api/mapcore/util/y9$j;->r:Z

    .line 5
    iput-boolean p1, p0, Lcom/amap/api/mapcore/util/y9$j;->o:Z

    const/4 p1, 0x0

    .line 6
    iput-boolean p1, p0, Lcom/amap/api/mapcore/util/y9$j;->p:Z

    .line 7
    invoke-static {}, Lcom/amap/api/mapcore/util/y9;->j()Lcom/amap/api/mapcore/util/y9$k;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->notifyAll()V

    .line 8
    :goto_0
    iget-boolean p1, p0, Lcom/amap/api/mapcore/util/y9$j;->b:Z

    if-nez p1, :cond_0

    iget-boolean p1, p0, Lcom/amap/api/mapcore/util/y9$j;->d:Z

    if-nez p1, :cond_0

    iget-boolean p1, p0, Lcom/amap/api/mapcore/util/y9$j;->p:Z

    if-nez p1, :cond_0

    invoke-virtual {p0}, Lcom/amap/api/mapcore/util/y9$j;->d()Z

    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz p1, :cond_0

    .line 9
    :try_start_1
    invoke-static {}, Lcom/amap/api/mapcore/util/y9;->j()Lcom/amap/api/mapcore/util/y9$k;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->wait()V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 10
    :catch_0
    :try_start_2
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Thread;->interrupt()V

    goto :goto_0

    .line 11
    :cond_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p1
.end method

.method public c(Ljava/lang/Runnable;)V
    .locals 2

    if-eqz p1, :cond_0

    .line 1
    invoke-static {}, Lcom/amap/api/mapcore/util/y9;->j()Lcom/amap/api/mapcore/util/y9$k;

    move-result-object v0

    monitor-enter v0

    .line 2
    :try_start_0
    iget-object v1, p0, Lcom/amap/api/mapcore/util/y9$j;->q:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3
    invoke-static {}, Lcom/amap/api/mapcore/util/y9;->j()Lcom/amap/api/mapcore/util/y9$k;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->notifyAll()V

    .line 4
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1

    .line 5
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "r must not be null"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public d()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/amap/api/mapcore/util/y9$j;->h:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/amap/api/mapcore/util/y9$j;->i:Z

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/amap/api/mapcore/util/y9$j;->s()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public f()I
    .locals 2

    .line 1
    invoke-static {}, Lcom/amap/api/mapcore/util/y9;->j()Lcom/amap/api/mapcore/util/y9$k;

    move-result-object v0

    monitor-enter v0

    .line 2
    :try_start_0
    iget v1, p0, Lcom/amap/api/mapcore/util/y9$j;->n:I

    monitor-exit v0

    return v1

    :catchall_0
    move-exception v1

    .line 3
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public g()V
    .locals 2

    .line 1
    invoke-static {}, Lcom/amap/api/mapcore/util/y9;->j()Lcom/amap/api/mapcore/util/y9$k;

    move-result-object v0

    monitor-enter v0

    const/4 v1, 0x1

    .line 2
    :try_start_0
    iput-boolean v1, p0, Lcom/amap/api/mapcore/util/y9$j;->o:Z

    .line 3
    invoke-static {}, Lcom/amap/api/mapcore/util/y9;->j()Lcom/amap/api/mapcore/util/y9$k;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->notifyAll()V

    .line 4
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public h()V
    .locals 2

    .line 1
    invoke-static {}, Lcom/amap/api/mapcore/util/y9;->j()Lcom/amap/api/mapcore/util/y9$k;

    move-result-object v0

    monitor-enter v0

    const/4 v1, 0x1

    .line 2
    :try_start_0
    iput-boolean v1, p0, Lcom/amap/api/mapcore/util/y9$j;->e:Z

    const/4 v1, 0x0

    .line 3
    iput-boolean v1, p0, Lcom/amap/api/mapcore/util/y9$j;->j:Z

    .line 4
    invoke-static {}, Lcom/amap/api/mapcore/util/y9;->j()Lcom/amap/api/mapcore/util/y9$k;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->notifyAll()V

    .line 5
    :goto_0
    iget-boolean v1, p0, Lcom/amap/api/mapcore/util/y9$j;->g:Z

    if-eqz v1, :cond_0

    iget-boolean v1, p0, Lcom/amap/api/mapcore/util/y9$j;->j:Z

    if-nez v1, :cond_0

    iget-boolean v1, p0, Lcom/amap/api/mapcore/util/y9$j;->b:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v1, :cond_0

    .line 6
    :try_start_1
    invoke-static {}, Lcom/amap/api/mapcore/util/y9;->j()Lcom/amap/api/mapcore/util/y9$k;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->wait()V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 7
    :catch_0
    :try_start_2
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Thread;->interrupt()V

    goto :goto_0

    .line 8
    :cond_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1
.end method

.method public i()V
    .locals 4

    .line 1
    invoke-static {}, Lcom/amap/api/mapcore/util/y9;->j()Lcom/amap/api/mapcore/util/y9$k;

    move-result-object v0

    monitor-enter v0

    const/4 v1, 0x0

    .line 2
    :try_start_0
    iput-boolean v1, p0, Lcom/amap/api/mapcore/util/y9$j;->e:Z

    .line 3
    invoke-static {}, Lcom/amap/api/mapcore/util/y9;->j()Lcom/amap/api/mapcore/util/y9$k;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->notifyAll()V

    .line 4
    :goto_0
    iget-boolean v1, p0, Lcom/amap/api/mapcore/util/y9$j;->g:Z

    if-nez v1, :cond_1

    iget-boolean v1, p0, Lcom/amap/api/mapcore/util/y9$j;->b:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v1, :cond_1

    .line 5
    :try_start_1
    invoke-static {}, Lcom/amap/api/maps/MapsInitializer;->getTextureViewDestorySync()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 6
    invoke-static {}, Lcom/amap/api/mapcore/util/y9;->j()Lcom/amap/api/mapcore/util/y9$k;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->wait()V

    goto :goto_0

    .line 7
    :cond_0
    invoke-static {}, Lcom/amap/api/mapcore/util/y9;->j()Lcom/amap/api/mapcore/util/y9$k;

    move-result-object v1

    const-wide/16 v2, 0x7d0

    invoke-virtual {v1, v2, v3}, Ljava/lang/Object;->wait(J)V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 8
    :catch_0
    :try_start_2
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Thread;->interrupt()V

    goto :goto_0

    .line 9
    :cond_1
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1
.end method

.method public j()V
    .locals 4

    .line 1
    invoke-static {}, Lcom/amap/api/mapcore/util/y9;->j()Lcom/amap/api/mapcore/util/y9$k;

    move-result-object v0

    monitor-enter v0

    const/4 v1, 0x1

    .line 2
    :try_start_0
    iput-boolean v1, p0, Lcom/amap/api/mapcore/util/y9$j;->c:Z

    .line 3
    invoke-static {}, Lcom/amap/api/mapcore/util/y9;->j()Lcom/amap/api/mapcore/util/y9$k;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->notifyAll()V

    .line 4
    :goto_0
    iget-boolean v1, p0, Lcom/amap/api/mapcore/util/y9$j;->b:Z

    if-nez v1, :cond_1

    iget-boolean v1, p0, Lcom/amap/api/mapcore/util/y9$j;->d:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v1, :cond_1

    .line 5
    :try_start_1
    invoke-static {}, Lcom/amap/api/maps/MapsInitializer;->getTextureViewDestorySync()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 6
    invoke-static {}, Lcom/amap/api/mapcore/util/y9;->j()Lcom/amap/api/mapcore/util/y9$k;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->wait()V

    goto :goto_0

    .line 7
    :cond_0
    invoke-static {}, Lcom/amap/api/mapcore/util/y9;->j()Lcom/amap/api/mapcore/util/y9$k;

    move-result-object v1

    const-wide/16 v2, 0x7d0

    invoke-virtual {v1, v2, v3}, Ljava/lang/Object;->wait(J)V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 8
    :catch_0
    :try_start_2
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Thread;->interrupt()V

    goto :goto_0

    .line 9
    :cond_1
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1
.end method

.method public k()V
    .locals 3

    .line 1
    invoke-static {}, Lcom/amap/api/mapcore/util/y9;->j()Lcom/amap/api/mapcore/util/y9$k;

    move-result-object v0

    monitor-enter v0

    const/4 v1, 0x0

    .line 2
    :try_start_0
    iput-boolean v1, p0, Lcom/amap/api/mapcore/util/y9$j;->c:Z

    const/4 v2, 0x1

    .line 3
    iput-boolean v2, p0, Lcom/amap/api/mapcore/util/y9$j;->o:Z

    .line 4
    iput-boolean v1, p0, Lcom/amap/api/mapcore/util/y9$j;->p:Z

    .line 5
    invoke-static {}, Lcom/amap/api/mapcore/util/y9;->j()Lcom/amap/api/mapcore/util/y9$k;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->notifyAll()V

    .line 6
    :goto_0
    iget-boolean v1, p0, Lcom/amap/api/mapcore/util/y9$j;->b:Z

    if-nez v1, :cond_0

    iget-boolean v1, p0, Lcom/amap/api/mapcore/util/y9$j;->d:Z

    if-eqz v1, :cond_0

    iget-boolean v1, p0, Lcom/amap/api/mapcore/util/y9$j;->p:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v1, :cond_0

    .line 7
    :try_start_1
    invoke-static {}, Lcom/amap/api/mapcore/util/y9;->j()Lcom/amap/api/mapcore/util/y9$k;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->wait()V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 8
    :catch_0
    :try_start_2
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Thread;->interrupt()V

    goto :goto_0

    .line 9
    :cond_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1
.end method

.method public l()V
    .locals 2

    .line 1
    invoke-static {}, Lcom/amap/api/mapcore/util/y9;->j()Lcom/amap/api/mapcore/util/y9$k;

    move-result-object v0

    monitor-enter v0

    const/4 v1, 0x1

    .line 2
    :try_start_0
    iput-boolean v1, p0, Lcom/amap/api/mapcore/util/y9$j;->a:Z

    .line 3
    invoke-static {}, Lcom/amap/api/mapcore/util/y9;->j()Lcom/amap/api/mapcore/util/y9$k;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->notifyAll()V

    .line 4
    :goto_0
    iget-boolean v1, p0, Lcom/amap/api/mapcore/util/y9$j;->b:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v1, :cond_0

    .line 5
    :try_start_1
    invoke-static {}, Lcom/amap/api/mapcore/util/y9;->j()Lcom/amap/api/mapcore/util/y9$k;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->wait()V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 6
    :catch_0
    :try_start_2
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Thread;->interrupt()V

    goto :goto_0

    .line 7
    :cond_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1
.end method

.method public m()V
    .locals 1

    const/4 v0, 0x1

    .line 1
    iput-boolean v0, p0, Lcom/amap/api/mapcore/util/y9$j;->k:Z

    .line 2
    invoke-static {}, Lcom/amap/api/mapcore/util/y9;->j()Lcom/amap/api/mapcore/util/y9$k;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    return-void
.end method

.method public n()I
    .locals 2

    .line 1
    invoke-static {}, Lcom/amap/api/mapcore/util/y9;->j()Lcom/amap/api/mapcore/util/y9$k;

    move-result-object v0

    monitor-enter v0

    .line 2
    :try_start_0
    iget v1, p0, Lcom/amap/api/mapcore/util/y9$j;->l:I

    monitor-exit v0

    return v1

    :catchall_0
    move-exception v1

    .line 3
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public o()I
    .locals 2

    .line 1
    invoke-static {}, Lcom/amap/api/mapcore/util/y9;->j()Lcom/amap/api/mapcore/util/y9$k;

    move-result-object v0

    monitor-enter v0

    .line 2
    :try_start_0
    iget v1, p0, Lcom/amap/api/mapcore/util/y9$j;->m:I

    monitor-exit v0

    return v1

    :catchall_0
    move-exception v1

    .line 3
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public run()V
    .locals 3

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "GLThread "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Thread;->getId()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/Thread;->setName(Ljava/lang/String;)V

    .line 2
    :try_start_0
    invoke-direct {p0}, Lcom/amap/api/mapcore/util/y9$j;->r()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3
    :catch_0
    invoke-static {}, Lcom/amap/api/mapcore/util/y9;->j()Lcom/amap/api/mapcore/util/y9$k;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/amap/api/mapcore/util/y9$k;->a(Lcom/amap/api/mapcore/util/y9$j;)V

    goto :goto_0

    :catchall_0
    move-exception v0

    invoke-static {}, Lcom/amap/api/mapcore/util/y9;->j()Lcom/amap/api/mapcore/util/y9$k;

    move-result-object v1

    invoke-virtual {v1, p0}, Lcom/amap/api/mapcore/util/y9$k;->a(Lcom/amap/api/mapcore/util/y9$j;)V

    .line 4
    throw v0

    :goto_0
    return-void
.end method
