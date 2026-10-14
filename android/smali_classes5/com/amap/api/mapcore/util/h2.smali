.class public Lcom/amap/api/mapcore/util/h2;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/amap/api/mapcore/util/h2$b;,
        Lcom/amap/api/mapcore/util/h2$a;,
        Lcom/amap/api/mapcore/util/h2$d;,
        Lcom/amap/api/mapcore/util/h2$g;,
        Lcom/amap/api/mapcore/util/h2$c;,
        Lcom/amap/api/mapcore/util/h2$f;,
        Lcom/amap/api/mapcore/util/h2$e;
    }
.end annotation


# instance fields
.field private a:Lcom/amap/api/mapcore/util/h2$d;

.field private b:Lcom/amap/api/mapcore/util/h2$g;

.field private c:Lcom/amap/api/mapcore/util/h2$c;

.field private d:Lcom/amap/api/mapcore/util/h2$e;

.field private e:Lcom/amap/api/mapcore/util/h2$e;

.field private f:Lcom/amap/api/mapcore/util/h2$a;

.field private g:Lcom/amap/api/mapcore/util/h2$b;

.field private h:J


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, 0x0

    .line 2
    iput-wide v0, p0, Lcom/amap/api/mapcore/util/h2;->h:J

    .line 3
    invoke-static {}, Lcom/autonavi/base/amap/mapcore/gles/AMapNativeGLShaderManager;->nativeCreateGLShaderManager()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/amap/api/mapcore/util/h2;->h:J

    return-void
.end method

.method private declared-synchronized d()Lcom/amap/api/mapcore/util/g2;
    .locals 2

    monitor-enter p0

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/amap/api/mapcore/util/h2;->a:Lcom/amap/api/mapcore/util/h2$d;

    if-nez v0, :cond_0

    .line 2
    new-instance v0, Lcom/amap/api/mapcore/util/h2$d;

    const-string v1, "texture_normal.glsl"

    invoke-direct {v0, v1}, Lcom/amap/api/mapcore/util/h2$d;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/amap/api/mapcore/util/h2;->a:Lcom/amap/api/mapcore/util/h2$d;

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/amap/api/mapcore/util/h2;->a:Lcom/amap/api/mapcore/util/h2$d;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private declared-synchronized e()Lcom/amap/api/mapcore/util/g2;
    .locals 2

    monitor-enter p0

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/amap/api/mapcore/util/h2;->b:Lcom/amap/api/mapcore/util/h2$g;

    if-nez v0, :cond_0

    .line 2
    new-instance v0, Lcom/amap/api/mapcore/util/h2$g;

    const-string v1, "texture.glsl"

    invoke-direct {v0, v1}, Lcom/amap/api/mapcore/util/h2$g;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/amap/api/mapcore/util/h2;->b:Lcom/amap/api/mapcore/util/h2$g;

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/amap/api/mapcore/util/h2;->b:Lcom/amap/api/mapcore/util/h2$g;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private declared-synchronized f()Lcom/amap/api/mapcore/util/g2;
    .locals 2

    monitor-enter p0

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/amap/api/mapcore/util/h2;->c:Lcom/amap/api/mapcore/util/h2$c;

    if-nez v0, :cond_0

    .line 2
    new-instance v0, Lcom/amap/api/mapcore/util/h2$c;

    const-string v1, "texture_layer.glsl"

    invoke-direct {v0, v1}, Lcom/amap/api/mapcore/util/h2$c;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/amap/api/mapcore/util/h2;->c:Lcom/amap/api/mapcore/util/h2$c;

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/amap/api/mapcore/util/h2;->c:Lcom/amap/api/mapcore/util/h2$c;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private declared-synchronized g()Lcom/amap/api/mapcore/util/g2;
    .locals 2

    monitor-enter p0

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/amap/api/mapcore/util/h2;->d:Lcom/amap/api/mapcore/util/h2$e;

    if-nez v0, :cond_0

    .line 2
    new-instance v0, Lcom/amap/api/mapcore/util/h2$e;

    const-string v1, "point.glsl"

    invoke-direct {v0, v1}, Lcom/amap/api/mapcore/util/h2$e;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/amap/api/mapcore/util/h2;->d:Lcom/amap/api/mapcore/util/h2$e;

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/amap/api/mapcore/util/h2;->d:Lcom/amap/api/mapcore/util/h2$e;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private declared-synchronized h()Lcom/amap/api/mapcore/util/g2;
    .locals 2

    monitor-enter p0

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/amap/api/mapcore/util/h2;->e:Lcom/amap/api/mapcore/util/h2$e;

    if-nez v0, :cond_0

    .line 2
    new-instance v0, Lcom/amap/api/mapcore/util/h2$f;

    const-string v1, "point_2.glsl"

    invoke-direct {v0, v1}, Lcom/amap/api/mapcore/util/h2$f;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/amap/api/mapcore/util/h2;->e:Lcom/amap/api/mapcore/util/h2$e;

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/amap/api/mapcore/util/h2;->e:Lcom/amap/api/mapcore/util/h2$e;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private declared-synchronized i()Lcom/amap/api/mapcore/util/h2$a;
    .locals 1

    monitor-enter p0

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/amap/api/mapcore/util/h2;->f:Lcom/amap/api/mapcore/util/h2$a;

    if-nez v0, :cond_0

    .line 2
    new-instance v0, Lcom/amap/api/mapcore/util/h2$a;

    invoke-direct {v0}, Lcom/amap/api/mapcore/util/h2$a;-><init>()V

    iput-object v0, p0, Lcom/amap/api/mapcore/util/h2;->f:Lcom/amap/api/mapcore/util/h2$a;

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/amap/api/mapcore/util/h2;->f:Lcom/amap/api/mapcore/util/h2$a;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private declared-synchronized j()Lcom/amap/api/mapcore/util/g2;
    .locals 1

    monitor-enter p0

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/amap/api/mapcore/util/h2;->g:Lcom/amap/api/mapcore/util/h2$b;

    if-nez v0, :cond_0

    .line 2
    new-instance v0, Lcom/amap/api/mapcore/util/h2$b;

    invoke-direct {v0}, Lcom/amap/api/mapcore/util/h2$b;-><init>()V

    iput-object v0, p0, Lcom/amap/api/mapcore/util/h2;->g:Lcom/amap/api/mapcore/util/h2$b;

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/amap/api/mapcore/util/h2;->g:Lcom/amap/api/mapcore/util/h2$b;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method


# virtual methods
.method public a()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/amap/api/mapcore/util/h2;->h:J

    return-wide v0
.end method

.method public b(I)Lcom/amap/api/mapcore/util/g2;
    .locals 0

    packed-switch p1, :pswitch_data_0

    const/4 p1, 0x0

    return-object p1

    .line 1
    :pswitch_0
    invoke-direct {p0}, Lcom/amap/api/mapcore/util/h2;->h()Lcom/amap/api/mapcore/util/g2;

    move-result-object p1

    return-object p1

    .line 2
    :pswitch_1
    invoke-direct {p0}, Lcom/amap/api/mapcore/util/h2;->j()Lcom/amap/api/mapcore/util/g2;

    move-result-object p1

    return-object p1

    .line 3
    :pswitch_2
    invoke-direct {p0}, Lcom/amap/api/mapcore/util/h2;->i()Lcom/amap/api/mapcore/util/h2$a;

    move-result-object p1

    return-object p1

    .line 4
    :pswitch_3
    invoke-direct {p0}, Lcom/amap/api/mapcore/util/h2;->g()Lcom/amap/api/mapcore/util/g2;

    move-result-object p1

    return-object p1

    .line 5
    :pswitch_4
    invoke-direct {p0}, Lcom/amap/api/mapcore/util/h2;->f()Lcom/amap/api/mapcore/util/g2;

    move-result-object p1

    return-object p1

    .line 6
    :pswitch_5
    invoke-direct {p0}, Lcom/amap/api/mapcore/util/h2;->d()Lcom/amap/api/mapcore/util/g2;

    move-result-object p1

    return-object p1

    .line 7
    :pswitch_6
    invoke-direct {p0}, Lcom/amap/api/mapcore/util/h2;->e()Lcom/amap/api/mapcore/util/g2;

    move-result-object p1

    return-object p1

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public declared-synchronized c()V
    .locals 5

    monitor-enter p0

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/amap/api/mapcore/util/h2;->a:Lcom/amap/api/mapcore/util/h2$d;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Lcom/amap/api/mapcore/util/g2;->g()V

    .line 3
    iput-object v1, p0, Lcom/amap/api/mapcore/util/h2;->a:Lcom/amap/api/mapcore/util/h2$d;

    .line 4
    :cond_0
    iget-object v0, p0, Lcom/amap/api/mapcore/util/h2;->b:Lcom/amap/api/mapcore/util/h2$g;

    if-eqz v0, :cond_1

    .line 5
    invoke-virtual {v0}, Lcom/amap/api/mapcore/util/g2;->g()V

    .line 6
    iput-object v1, p0, Lcom/amap/api/mapcore/util/h2;->b:Lcom/amap/api/mapcore/util/h2$g;

    .line 7
    :cond_1
    iget-object v0, p0, Lcom/amap/api/mapcore/util/h2;->c:Lcom/amap/api/mapcore/util/h2$c;

    if-eqz v0, :cond_2

    .line 8
    invoke-virtual {v0}, Lcom/amap/api/mapcore/util/g2;->g()V

    .line 9
    iput-object v1, p0, Lcom/amap/api/mapcore/util/h2;->c:Lcom/amap/api/mapcore/util/h2$c;

    .line 10
    :cond_2
    iget-object v0, p0, Lcom/amap/api/mapcore/util/h2;->d:Lcom/amap/api/mapcore/util/h2$e;

    if-eqz v0, :cond_3

    .line 11
    invoke-virtual {v0}, Lcom/amap/api/mapcore/util/g2;->g()V

    .line 12
    iput-object v1, p0, Lcom/amap/api/mapcore/util/h2;->d:Lcom/amap/api/mapcore/util/h2$e;

    .line 13
    :cond_3
    iget-object v0, p0, Lcom/amap/api/mapcore/util/h2;->e:Lcom/amap/api/mapcore/util/h2$e;

    if-eqz v0, :cond_4

    .line 14
    invoke-virtual {v0}, Lcom/amap/api/mapcore/util/g2;->g()V

    .line 15
    iput-object v1, p0, Lcom/amap/api/mapcore/util/h2;->e:Lcom/amap/api/mapcore/util/h2$e;

    .line 16
    :cond_4
    iget-wide v0, p0, Lcom/amap/api/mapcore/util/h2;->h:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-eqz v4, :cond_5

    .line 17
    invoke-static {v0, v1}, Lcom/autonavi/base/amap/mapcore/gles/AMapNativeGLShaderManager;->nativeDestroyGLShaderManager(J)V

    .line 18
    iput-wide v2, p0, Lcom/amap/api/mapcore/util/h2;->h:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 19
    :cond_5
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
