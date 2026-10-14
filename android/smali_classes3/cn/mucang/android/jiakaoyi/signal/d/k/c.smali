.class public Lcn/mucang/android/jiakaoyi/signal/d/k/c;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/mucang/android/jiakaoyi/signal/d/k/c$a;
    }
.end annotation


# static fields
.field private static final e:Lcn/mucang/android/jiakaoyi/signal/d/k/c;

.field private static volatile f:F

.field private static volatile g:F


# instance fields
.field private volatile a:F

.field private volatile b:Landroid/location/Location;

.field private volatile c:Lcn/mucang/android/jiakaoyi/signal/d/k/c$a;

.field private final d:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcn/mucang/android/jiakaoyi/framework/h/b<",
            "Ljava/lang/Float;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lcn/mucang/android/jiakaoyi/signal/d/k/c;

    invoke-direct {v0}, Lcn/mucang/android/jiakaoyi/signal/d/k/c;-><init>()V

    sput-object v0, Lcn/mucang/android/jiakaoyi/signal/d/k/c;->e:Lcn/mucang/android/jiakaoyi/signal/d/k/c;

    return-void
.end method

.method private constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput v0, p0, Lcn/mucang/android/jiakaoyi/signal/d/k/c;->a:F

    .line 3
    new-instance v0, Landroid/location/Location;

    const-string v1, "gps"

    invoke-direct {v0, v1}, Landroid/location/Location;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcn/mucang/android/jiakaoyi/signal/d/k/c;->b:Landroid/location/Location;

    .line 4
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcn/mucang/android/jiakaoyi/signal/d/k/c;->d:Ljava/util/List;

    .line 5
    invoke-direct {p0}, Lcn/mucang/android/jiakaoyi/signal/d/k/c;->n()V

    return-void
.end method

.method static synthetic a()Lcn/mucang/android/jiakaoyi/signal/d/k/c;
    .locals 1

    .line 1
    sget-object v0, Lcn/mucang/android/jiakaoyi/signal/d/k/c;->e:Lcn/mucang/android/jiakaoyi/signal/d/k/c;

    return-object v0
.end method

.method static synthetic b(Lcn/mucang/android/jiakaoyi/signal/d/k/c;)F
    .locals 0

    .line 1
    iget p0, p0, Lcn/mucang/android/jiakaoyi/signal/d/k/c;->a:F

    return p0
.end method

.method static synthetic c(Lcn/mucang/android/jiakaoyi/signal/d/k/c;)Ljava/util/List;
    .locals 0

    .line 1
    iget-object p0, p0, Lcn/mucang/android/jiakaoyi/signal/d/k/c;->d:Ljava/util/List;

    return-object p0
.end method

.method static synthetic d()F
    .locals 1

    .line 1
    sget v0, Lcn/mucang/android/jiakaoyi/signal/d/k/c;->g:F

    return v0
.end method

.method static synthetic e()F
    .locals 1

    .line 1
    sget v0, Lcn/mucang/android/jiakaoyi/signal/d/k/c;->f:F

    return v0
.end method

.method static synthetic f(F)F
    .locals 0

    .line 1
    sput p0, Lcn/mucang/android/jiakaoyi/signal/d/k/c;->f:F

    return p0
.end method

.method static synthetic g(F)V
    .locals 0

    .line 1
    invoke-static {p0}, Lcn/mucang/android/jiakaoyi/signal/d/k/c;->h(F)V

    return-void
.end method

.method private static h(F)V
    .locals 4

    .line 1
    sget-object v0, Lcn/mucang/android/jiakaoyi/signal/d/k/c;->e:Lcn/mucang/android/jiakaoyi/signal/d/k/c;

    iget-object v1, v0, Lcn/mucang/android/jiakaoyi/signal/d/k/c;->d:Ljava/util/List;

    monitor-enter v1

    .line 2
    :try_start_0
    iget-object v0, v0, Lcn/mucang/android/jiakaoyi/signal/d/k/c;->d:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcn/mucang/android/jiakaoyi/framework/h/b;

    .line 3
    invoke-static {p0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    invoke-interface {v2, v3}, Lcn/mucang/android/jiakaoyi/framework/h/b;->callback(Ljava/lang/Object;)V

    goto :goto_0

    .line 4
    :cond_0
    monitor-exit v1

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public static declared-synchronized i(F)F
    .locals 2

    const-class v0, Lcn/mucang/android/jiakaoyi/signal/d/k/c;

    monitor-enter v0

    .line 1
    :try_start_0
    sget-object v1, Lcn/mucang/android/jiakaoyi/signal/d/k/c;->e:Lcn/mucang/android/jiakaoyi/signal/d/k/c;

    iput p0, v1, Lcn/mucang/android/jiakaoyi/signal/d/k/c;->a:F

    .line 2
    iget-object p0, v1, Lcn/mucang/android/jiakaoyi/signal/d/k/c;->c:Lcn/mucang/android/jiakaoyi/signal/d/k/c$a;

    if-eqz p0, :cond_0

    .line 3
    iget-object p0, v1, Lcn/mucang/android/jiakaoyi/signal/d/k/c;->c:Lcn/mucang/android/jiakaoyi/signal/d/k/c$a;

    iget p0, p0, Lcn/mucang/android/jiakaoyi/signal/d/k/c$a;->b:F
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return p0

    :cond_0
    const/4 p0, 0x0

    .line 4
    monitor-exit v0

    return p0

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method public static declared-synchronized j(Landroid/location/Location;)F
    .locals 12

    const-class v0, Lcn/mucang/android/jiakaoyi/signal/d/k/c;

    monitor-enter v0

    .line 1
    :try_start_0
    sget-object v1, Lcn/mucang/android/jiakaoyi/signal/d/k/c;->e:Lcn/mucang/android/jiakaoyi/signal/d/k/c;

    iget-object v2, v1, Lcn/mucang/android/jiakaoyi/signal/d/k/c;->b:Landroid/location/Location;

    invoke-static {v2}, Lcn/mucang/android/jiakaoyi/signal/d/k/c;->k(Landroid/location/Location;)Z

    move-result v2

    const/4 v3, 0x0

    if-eqz v2, :cond_1

    invoke-static {p0}, Lcn/mucang/android/jiakaoyi/signal/d/k/c;->k(Landroid/location/Location;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 2
    invoke-virtual {p0}, Landroid/location/Location;->getLatitude()D

    move-result-wide v4

    iget-object v2, v1, Lcn/mucang/android/jiakaoyi/signal/d/k/c;->b:Landroid/location/Location;

    invoke-virtual {v2}, Landroid/location/Location;->getLatitude()D

    move-result-wide v6

    cmpl-double v2, v4, v6

    if-nez v2, :cond_0

    .line 3
    invoke-virtual {p0}, Landroid/location/Location;->getLongitude()D

    move-result-wide v4

    iget-object v2, v1, Lcn/mucang/android/jiakaoyi/signal/d/k/c;->b:Landroid/location/Location;

    invoke-virtual {v2}, Landroid/location/Location;->getLongitude()D

    move-result-wide v6

    cmpl-double v2, v4, v6

    if-eqz v2, :cond_1

    .line 4
    :cond_0
    iget-object v2, v1, Lcn/mucang/android/jiakaoyi/signal/d/k/c;->b:Landroid/location/Location;

    .line 5
    invoke-virtual {v2}, Landroid/location/Location;->getLongitude()D

    move-result-wide v4

    iget-object v2, v1, Lcn/mucang/android/jiakaoyi/signal/d/k/c;->b:Landroid/location/Location;

    .line 6
    invoke-virtual {v2}, Landroid/location/Location;->getLatitude()D

    move-result-wide v6

    .line 7
    invoke-virtual {p0}, Landroid/location/Location;->getLongitude()D

    move-result-wide v8

    .line 8
    invoke-virtual {p0}, Landroid/location/Location;->getLatitude()D

    move-result-wide v10

    .line 9
    invoke-static/range {v4 .. v11}, Lcn/mucang/android/jiakaoyi/signal/handle/gps/k;->a(DDDD)F

    move-result v2

    sput v2, Lcn/mucang/android/jiakaoyi/signal/d/k/c;->g:F

    .line 10
    iget-object v2, v1, Lcn/mucang/android/jiakaoyi/signal/d/k/c;->c:Lcn/mucang/android/jiakaoyi/signal/d/k/c$a;

    iget-object v4, v1, Lcn/mucang/android/jiakaoyi/signal/d/k/c;->c:Lcn/mucang/android/jiakaoyi/signal/d/k/c$a;

    iget v4, v4, Lcn/mucang/android/jiakaoyi/signal/d/k/c$a;->b:F

    sget v5, Lcn/mucang/android/jiakaoyi/signal/d/k/c;->g:F

    add-float/2addr v4, v5

    iput v4, v2, Lcn/mucang/android/jiakaoyi/signal/d/k/c$a;->b:F

    .line 11
    sput v3, Lcn/mucang/android/jiakaoyi/signal/d/k/c;->f:F

    .line 12
    :cond_1
    iget-object v2, v1, Lcn/mucang/android/jiakaoyi/signal/d/k/c;->b:Landroid/location/Location;

    invoke-virtual {v2, p0}, Landroid/location/Location;->set(Landroid/location/Location;)V

    .line 13
    iget-object p0, v1, Lcn/mucang/android/jiakaoyi/signal/d/k/c;->c:Lcn/mucang/android/jiakaoyi/signal/d/k/c$a;

    if-eqz p0, :cond_2

    .line 14
    iget-object p0, v1, Lcn/mucang/android/jiakaoyi/signal/d/k/c;->c:Lcn/mucang/android/jiakaoyi/signal/d/k/c$a;

    iget p0, p0, Lcn/mucang/android/jiakaoyi/signal/d/k/c$a;->b:F
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return p0

    .line 15
    :cond_2
    monitor-exit v0

    return v3

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method private static k(Landroid/location/Location;)Z
    .locals 6

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return v0

    .line 1
    :cond_0
    invoke-virtual {p0}, Landroid/location/Location;->getLatitude()D

    move-result-wide v1

    const-wide v3, 0x3e7ad7f29abcaf48L    # 1.0E-7

    cmpl-double v5, v1, v3

    if-lez v5, :cond_1

    invoke-virtual {p0}, Landroid/location/Location;->getLongitude()D

    move-result-wide v1

    cmpl-double p0, v1, v3

    if-lez p0, :cond_1

    const/4 v0, 0x1

    :cond_1
    return v0
.end method

.method public static l(Lcn/mucang/android/jiakaoyi/framework/h/b;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcn/mucang/android/jiakaoyi/framework/h/b<",
            "Ljava/lang/Float;",
            ">;)V"
        }
    .end annotation

    .line 1
    sget-object v0, Lcn/mucang/android/jiakaoyi/signal/d/k/c;->e:Lcn/mucang/android/jiakaoyi/signal/d/k/c;

    iget-object v1, v0, Lcn/mucang/android/jiakaoyi/signal/d/k/c;->d:Ljava/util/List;

    monitor-enter v1

    .line 2
    :try_start_0
    iget-object v2, v0, Lcn/mucang/android/jiakaoyi/signal/d/k/c;->d:Ljava/util/List;

    invoke-interface {v2, p0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 3
    monitor-exit v1

    return-void

    .line 4
    :cond_0
    iget-object v0, v0, Lcn/mucang/android/jiakaoyi/signal/d/k/c;->d:Ljava/util/List;

    invoke-interface {v0, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 5
    monitor-exit v1

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public static declared-synchronized m()V
    .locals 1

    const-class v0, Lcn/mucang/android/jiakaoyi/signal/d/k/c;

    monitor-enter v0

    .line 1
    monitor-exit v0

    return-void
.end method

.method private n()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/signal/d/k/c;->c:Lcn/mucang/android/jiakaoyi/signal/d/k/c$a;

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/signal/d/k/c;->c:Lcn/mucang/android/jiakaoyi/signal/d/k/c$a;

    iget-boolean v0, v0, Lcn/mucang/android/jiakaoyi/signal/d/k/c$a;->a:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/signal/d/k/c;->c:Lcn/mucang/android/jiakaoyi/signal/d/k/c$a;

    invoke-virtual {v0}, Ljava/lang/Thread;->isAlive()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 3
    :cond_0
    new-instance v0, Lcn/mucang/android/jiakaoyi/signal/d/k/c$a;

    invoke-direct {v0}, Lcn/mucang/android/jiakaoyi/signal/d/k/c$a;-><init>()V

    iput-object v0, p0, Lcn/mucang/android/jiakaoyi/signal/d/k/c;->c:Lcn/mucang/android/jiakaoyi/signal/d/k/c$a;

    .line 4
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/signal/d/k/c;->c:Lcn/mucang/android/jiakaoyi/signal/d/k/c$a;

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void
.end method

.method public static o(Lcn/mucang/android/jiakaoyi/framework/h/b;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcn/mucang/android/jiakaoyi/framework/h/b<",
            "Ljava/lang/Float;",
            ">;)V"
        }
    .end annotation

    .line 1
    sget-object v0, Lcn/mucang/android/jiakaoyi/signal/d/k/c;->e:Lcn/mucang/android/jiakaoyi/signal/d/k/c;

    iget-object v1, v0, Lcn/mucang/android/jiakaoyi/signal/d/k/c;->d:Ljava/util/List;

    monitor-enter v1

    .line 2
    :try_start_0
    iget-object v0, v0, Lcn/mucang/android/jiakaoyi/signal/d/k/c;->d:Ljava/util/List;

    invoke-interface {v0, p0}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 3
    monitor-exit v1

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method
