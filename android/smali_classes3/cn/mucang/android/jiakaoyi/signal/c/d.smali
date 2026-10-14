.class public Lcn/mucang/android/jiakaoyi/signal/c/d;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/mucang/android/jiakaoyi/signal/c/d$a;
    }
.end annotation


# static fields
.field public static final m:Lcn/mucang/android/jiakaoyi/signal/c/d;

.field private static final n:Ljava/lang/Object;

.field private static final o:Ljava/lang/Object;

.field private static final p:Ljava/lang/Object;


# instance fields
.field private a:I

.field private b:I

.field private c:I

.field private d:I

.field private e:I

.field private f:I

.field private final g:Lcn/mucang/android/jiakaoyi/signal/center/model/d;

.field private h:Lcn/mucang/android/jiakaoyi/signal/center/model/d;

.field private final i:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcn/mucang/android/jiakaoyi/signal/c/f/a;",
            ">;"
        }
    .end annotation
.end field

.field private final j:Landroid/os/Handler;

.field private final k:Lcn/mucang/android/jiakaoyi/framework/h/b;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcn/mucang/android/jiakaoyi/framework/h/b<",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation
.end field

.field private l:Lcn/mucang/android/jiakaoyi/framework/h/b;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcn/mucang/android/jiakaoyi/framework/h/b<",
            "Lcn/mucang/android/jiakaoyi/signal/center/model/d;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lcn/mucang/android/jiakaoyi/signal/c/d;

    invoke-direct {v0}, Lcn/mucang/android/jiakaoyi/signal/c/d;-><init>()V

    sput-object v0, Lcn/mucang/android/jiakaoyi/signal/c/d;->m:Lcn/mucang/android/jiakaoyi/signal/c/d;

    .line 2
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcn/mucang/android/jiakaoyi/signal/c/d;->n:Ljava/lang/Object;

    .line 3
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcn/mucang/android/jiakaoyi/signal/c/d;->o:Ljava/lang/Object;

    .line 4
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcn/mucang/android/jiakaoyi/signal/c/d;->p:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput v0, p0, Lcn/mucang/android/jiakaoyi/signal/c/d;->b:I

    .line 3
    iput v0, p0, Lcn/mucang/android/jiakaoyi/signal/c/d;->c:I

    .line 4
    iput v0, p0, Lcn/mucang/android/jiakaoyi/signal/c/d;->d:I

    .line 5
    iput v0, p0, Lcn/mucang/android/jiakaoyi/signal/c/d;->e:I

    .line 6
    iput v0, p0, Lcn/mucang/android/jiakaoyi/signal/c/d;->f:I

    .line 7
    new-instance v0, Lcn/mucang/android/jiakaoyi/signal/center/model/d;

    invoke-direct {v0}, Lcn/mucang/android/jiakaoyi/signal/center/model/d;-><init>()V

    iput-object v0, p0, Lcn/mucang/android/jiakaoyi/signal/c/d;->g:Lcn/mucang/android/jiakaoyi/signal/center/model/d;

    .line 8
    new-instance v0, Lcn/mucang/android/jiakaoyi/signal/center/model/d;

    invoke-direct {v0}, Lcn/mucang/android/jiakaoyi/signal/center/model/d;-><init>()V

    iput-object v0, p0, Lcn/mucang/android/jiakaoyi/signal/c/d;->h:Lcn/mucang/android/jiakaoyi/signal/center/model/d;

    .line 9
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcn/mucang/android/jiakaoyi/signal/c/d;->i:Ljava/util/List;

    .line 10
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcn/mucang/android/jiakaoyi/signal/c/d;->j:Landroid/os/Handler;

    .line 11
    sget-object v0, Lcn/mucang/android/jiakaoyi/signal/c/b;->a:Lcn/mucang/android/jiakaoyi/signal/c/b;

    iput-object v0, p0, Lcn/mucang/android/jiakaoyi/signal/c/d;->k:Lcn/mucang/android/jiakaoyi/framework/h/b;

    return-void
.end method

.method public static c()F
    .locals 1

    .line 1
    sget-object v0, Lcn/mucang/android/jiakaoyi/signal/c/d;->m:Lcn/mucang/android/jiakaoyi/signal/c/d;

    iget-object v0, v0, Lcn/mucang/android/jiakaoyi/signal/c/d;->g:Lcn/mucang/android/jiakaoyi/signal/center/model/d;

    invoke-virtual {v0}, Lcn/mucang/android/jiakaoyi/signal/center/model/d;->getCurrentPosition()Lcn/mucang/android/jiakaoyi/signal/center/model/b;

    move-result-object v0

    iget v0, v0, Lcn/mucang/android/jiakaoyi/signal/center/model/b;->a:F

    return v0
.end method

.method public static d()I
    .locals 1

    .line 1
    sget-object v0, Lcn/mucang/android/jiakaoyi/signal/c/d;->m:Lcn/mucang/android/jiakaoyi/signal/c/d;

    iget-object v0, v0, Lcn/mucang/android/jiakaoyi/signal/c/d;->g:Lcn/mucang/android/jiakaoyi/signal/center/model/d;

    invoke-virtual {v0}, Lcn/mucang/android/jiakaoyi/signal/center/model/d;->d()Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;

    move-result-object v0

    iget-object v0, v0, Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;->F:Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel$Direction;

    iget v0, v0, Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel$Direction;->direction:I

    return v0
.end method

.method public static e()Lcn/mucang/android/jiakaoyi/signal/center/model/Gear;
    .locals 1

    .line 1
    sget-object v0, Lcn/mucang/android/jiakaoyi/signal/c/d;->m:Lcn/mucang/android/jiakaoyi/signal/c/d;

    iget-object v0, v0, Lcn/mucang/android/jiakaoyi/signal/c/d;->g:Lcn/mucang/android/jiakaoyi/signal/center/model/d;

    invoke-virtual {v0}, Lcn/mucang/android/jiakaoyi/signal/center/model/d;->d()Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;

    move-result-object v0

    iget-object v0, v0, Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;->m:Lcn/mucang/android/jiakaoyi/signal/center/model/Gear;

    return-object v0
.end method

.method public static f()F
    .locals 1

    .line 1
    sget-object v0, Lcn/mucang/android/jiakaoyi/signal/c/d;->m:Lcn/mucang/android/jiakaoyi/signal/c/d;

    iget-object v0, v0, Lcn/mucang/android/jiakaoyi/signal/c/d;->g:Lcn/mucang/android/jiakaoyi/signal/center/model/d;

    invoke-virtual {v0}, Lcn/mucang/android/jiakaoyi/signal/center/model/d;->d()Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;

    move-result-object v0

    iget v0, v0, Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;->c:F

    return v0
.end method

.method public static g()Lcn/mucang/android/jiakaoyi/signal/pos/Gps;
    .locals 1

    .line 1
    sget-object v0, Lcn/mucang/android/jiakaoyi/signal/c/d;->m:Lcn/mucang/android/jiakaoyi/signal/c/d;

    iget-object v0, v0, Lcn/mucang/android/jiakaoyi/signal/c/d;->g:Lcn/mucang/android/jiakaoyi/signal/center/model/d;

    invoke-virtual {v0}, Lcn/mucang/android/jiakaoyi/signal/center/model/d;->getCurrentPosition()Lcn/mucang/android/jiakaoyi/signal/center/model/b;

    move-result-object v0

    iget-object v0, v0, Lcn/mucang/android/jiakaoyi/signal/center/model/b;->g:Landroid/location/Location;

    invoke-static {v0}, Lcn/mucang/android/jiakaoyi/signal/pos/Gps;->from(Landroid/location/Location;)Lcn/mucang/android/jiakaoyi/signal/pos/Gps;

    move-result-object v0

    return-object v0
.end method

.method static synthetic i(Ljava/lang/Float;)V
    .locals 1

    .line 1
    new-instance v0, Lcn/mucang/android/jiakaoyi/signal/c/a;

    invoke-direct {v0, p0}, Lcn/mucang/android/jiakaoyi/signal/c/a;-><init>(Ljava/lang/Float;)V

    invoke-static {v0}, Lcn/mucang/android/jiakaoyi/signal/c/d;->u(Lcn/mucang/android/jiakaoyi/signal/c/d$a;)V

    return-void
.end method

.method private synthetic j(Lcn/mucang/android/jiakaoyi/signal/c/e;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcn/mucang/android/jiakaoyi/signal/c/d;->m(Lcn/mucang/android/jiakaoyi/signal/c/e;)V

    return-void
.end method

.method static synthetic l(Ljava/lang/Float;Lcn/mucang/android/jiakaoyi/signal/center/model/d;)Z
    .locals 2

    .line 1
    invoke-virtual {p1}, Lcn/mucang/android/jiakaoyi/signal/center/model/d;->d()Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;

    move-result-object v0

    invoke-virtual {p0}, Ljava/lang/Float;->floatValue()F

    move-result v1

    iput v1, v0, Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;->B:F

    .line 2
    invoke-virtual {p1}, Lcn/mucang/android/jiakaoyi/signal/center/model/d;->d()Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;

    move-result-object v0

    invoke-virtual {p0}, Ljava/lang/Float;->floatValue()F

    move-result p0

    iput p0, v0, Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;->C:F

    .line 3
    invoke-virtual {p1}, Lcn/mucang/android/jiakaoyi/signal/center/model/d;->d()Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;

    move-result-object p0

    const/4 p1, 0x2

    iput-byte p1, p0, Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;->M:B

    const/4 p0, 0x1

    return p0
.end method

.method private m(Lcn/mucang/android/jiakaoyi/signal/c/e;)V
    .locals 3

    .line 1
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    if-ne v0, v1, :cond_1

    .line 2
    sget-object v0, Lcn/mucang/android/jiakaoyi/signal/c/d;->p:Ljava/lang/Object;

    monitor-enter v0

    .line 3
    :try_start_0
    new-instance v1, Ljava/util/ArrayList;

    iget-object v2, p0, Lcn/mucang/android/jiakaoyi/signal/c/d;->i:Ljava/util/List;

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 4
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcn/mucang/android/jiakaoyi/signal/c/f/a;

    .line 5
    invoke-interface {v2, p1}, Lcn/mucang/android/jiakaoyi/signal/c/f/a;->onSignalChanged(Lcn/mucang/android/jiakaoyi/signal/c/e;)V

    goto :goto_0

    .line 6
    :cond_0
    monitor-exit v0

    goto :goto_1

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1

    .line 7
    :cond_1
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/signal/c/d;->j:Landroid/os/Handler;

    new-instance v1, Lcn/mucang/android/jiakaoyi/signal/c/c;

    invoke-direct {v1, p0, p1}, Lcn/mucang/android/jiakaoyi/signal/c/c;-><init>(Lcn/mucang/android/jiakaoyi/signal/c/d;Lcn/mucang/android/jiakaoyi/signal/c/e;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :goto_1
    return-void
.end method

.method public static p()V
    .locals 2

    .line 1
    sget-object v0, Lcn/mucang/android/jiakaoyi/signal/c/d;->o:Ljava/lang/Object;

    monitor-enter v0

    .line 2
    :try_start_0
    sget-object v1, Lcn/mucang/android/jiakaoyi/signal/c/d;->m:Lcn/mucang/android/jiakaoyi/signal/c/d;

    iget-object v1, v1, Lcn/mucang/android/jiakaoyi/signal/c/d;->g:Lcn/mucang/android/jiakaoyi/signal/center/model/d;

    invoke-virtual {v1}, Lcn/mucang/android/jiakaoyi/signal/center/model/d;->b()Lcn/mucang/android/jiakaoyi/signal/center/model/c;

    move-result-object v1

    invoke-virtual {v1}, Lcn/mucang/android/jiakaoyi/signal/center/model/c;->f()V

    .line 3
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public static q()V
    .locals 2

    .line 1
    sget-object v0, Lcn/mucang/android/jiakaoyi/signal/c/d;->o:Ljava/lang/Object;

    monitor-enter v0

    .line 2
    :try_start_0
    sget-object v1, Lcn/mucang/android/jiakaoyi/signal/c/d;->m:Lcn/mucang/android/jiakaoyi/signal/c/d;

    iget-object v1, v1, Lcn/mucang/android/jiakaoyi/signal/c/d;->g:Lcn/mucang/android/jiakaoyi/signal/center/model/d;

    invoke-virtual {v1}, Lcn/mucang/android/jiakaoyi/signal/center/model/d;->f()V

    .line 3
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public static t()Lcn/mucang/android/jiakaoyi/signal/c/e;
    .locals 2

    .line 1
    sget-object v0, Lcn/mucang/android/jiakaoyi/signal/c/d;->n:Ljava/lang/Object;

    monitor-enter v0

    .line 2
    :try_start_0
    sget-object v1, Lcn/mucang/android/jiakaoyi/signal/c/d;->m:Lcn/mucang/android/jiakaoyi/signal/c/d;

    iget-object v1, v1, Lcn/mucang/android/jiakaoyi/signal/c/d;->h:Lcn/mucang/android/jiakaoyi/signal/center/model/d;

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    .line 3
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public static u(Lcn/mucang/android/jiakaoyi/signal/c/d$a;)V
    .locals 1

    const/4 v0, 0x1

    .line 1
    invoke-static {p0, v0}, Lcn/mucang/android/jiakaoyi/signal/c/d;->v(Lcn/mucang/android/jiakaoyi/signal/c/d$a;Z)V

    return-void
.end method

.method public static v(Lcn/mucang/android/jiakaoyi/signal/c/d$a;Z)V
    .locals 5

    .line 1
    sget-object v0, Lcn/mucang/android/jiakaoyi/signal/c/d;->m:Lcn/mucang/android/jiakaoyi/signal/c/d;

    iget-object v1, v0, Lcn/mucang/android/jiakaoyi/signal/c/d;->g:Lcn/mucang/android/jiakaoyi/signal/center/model/d;

    .line 2
    :try_start_0
    invoke-virtual {v1}, Lcn/mucang/android/jiakaoyi/signal/center/model/d;->d()Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;

    move-result-object v2

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v3

    iput-wide v3, v2, Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;->L:J

    .line 3
    sget-object v2, Lcn/mucang/android/jiakaoyi/signal/c/d;->o:Ljava/lang/Object;

    monitor-enter v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_3

    .line 4
    :try_start_1
    invoke-interface {p0, v1}, Lcn/mucang/android/jiakaoyi/signal/c/d$a;->a(Lcn/mucang/android/jiakaoyi/signal/center/model/d;)Z

    move-result p0

    .line 5
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    if-eqz p0, :cond_7

    .line 6
    :try_start_2
    monitor-enter v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_3

    .line 7
    :try_start_3
    iget-object p0, v0, Lcn/mucang/android/jiakaoyi/signal/c/d;->l:Lcn/mucang/android/jiakaoyi/framework/h/b;

    if-eqz p0, :cond_0

    .line 8
    invoke-interface {p0, v1}, Lcn/mucang/android/jiakaoyi/framework/h/b;->callback(Ljava/lang/Object;)V

    .line 9
    :cond_0
    invoke-virtual {v1}, Lcn/mucang/android/jiakaoyi/signal/center/model/d;->d()Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;

    move-result-object p0

    .line 10
    invoke-static {}, Lcn/mucang/android/jiakaoyi/framework/utils/b0;->a()Lcn/mucang/android/jiakaoyi/framework/utils/b0;

    move-result-object v3

    invoke-virtual {v3}, Lcn/mucang/android/jiakaoyi/framework/utils/b0;->b()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-virtual {v1}, Lcn/mucang/android/jiakaoyi/signal/center/model/d;->getCurrentPosition()Lcn/mucang/android/jiakaoyi/signal/center/model/b;

    move-result-object v3

    iget v3, v3, Lcn/mucang/android/jiakaoyi/signal/center/model/b;->h:I

    invoke-static {v3}, Lcn/mucang/android/jiakaoyi/signal/handle/gps/f;->a(I)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 11
    invoke-virtual {v1}, Lcn/mucang/android/jiakaoyi/signal/center/model/d;->getCurrentPosition()Lcn/mucang/android/jiakaoyi/signal/center/model/b;

    move-result-object v3

    iget-object v3, v3, Lcn/mucang/android/jiakaoyi/signal/center/model/b;->g:Landroid/location/Location;

    invoke-static {v3}, Lcn/mucang/android/jiakaoyi/signal/d/k/c;->j(Landroid/location/Location;)F

    move-result v3

    iput v3, p0, Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;->C:F

    .line 12
    iput v3, p0, Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;->B:F

    goto :goto_0

    .line 13
    :cond_1
    invoke-virtual {v1}, Lcn/mucang/android/jiakaoyi/signal/center/model/d;->d()Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;

    move-result-object p0

    invoke-virtual {v1}, Lcn/mucang/android/jiakaoyi/signal/center/model/d;->d()Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;

    move-result-object v3

    iget v3, v3, Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;->b:F

    invoke-static {v3}, Lcn/mucang/android/jiakaoyi/signal/d/k/c;->i(F)F

    move-result v3

    iput v3, p0, Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;->C:F

    .line 14
    invoke-virtual {v1}, Lcn/mucang/android/jiakaoyi/signal/center/model/d;->d()Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;

    move-result-object p0

    invoke-virtual {v1}, Lcn/mucang/android/jiakaoyi/signal/center/model/d;->d()Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;

    move-result-object v3

    iget v3, v3, Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;->C:F

    iput v3, p0, Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;->B:F

    .line 15
    :goto_0
    monitor-exit v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 16
    :try_start_4
    invoke-virtual {v1}, Lcn/mucang/android/jiakaoyi/signal/center/model/d;->getCurrentPosition()Lcn/mucang/android/jiakaoyi/signal/center/model/b;

    move-result-object p0

    iget p0, p0, Lcn/mucang/android/jiakaoyi/signal/center/model/b;->h:I

    iput p0, v0, Lcn/mucang/android/jiakaoyi/signal/c/d;->a:I

    .line 17
    iget-object p0, v0, Lcn/mucang/android/jiakaoyi/signal/c/d;->g:Lcn/mucang/android/jiakaoyi/signal/center/model/d;

    invoke-static {p0}, Lcn/mucang/android/jiakaoyi/signal/center/model/d;->e(Lcn/mucang/android/jiakaoyi/signal/center/model/d;)Lcn/mucang/android/jiakaoyi/signal/center/model/d;

    move-result-object p0

    .line 18
    sget-object v2, Lcn/mucang/android/jiakaoyi/signal/c/d;->n:Ljava/lang/Object;

    monitor-enter v2
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_3

    .line 19
    :try_start_5
    iput-object p0, v0, Lcn/mucang/android/jiakaoyi/signal/c/d;->h:Lcn/mucang/android/jiakaoyi/signal/center/model/d;

    .line 20
    monitor-exit v2
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    if-eqz p1, :cond_2

    .line 21
    :try_start_6
    invoke-direct {v0, p0}, Lcn/mucang/android/jiakaoyi/signal/c/d;->m(Lcn/mucang/android/jiakaoyi/signal/c/e;)V

    .line 22
    :cond_2
    invoke-virtual {v1}, Lcn/mucang/android/jiakaoyi/signal/center/model/d;->d()Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;

    move-result-object p0

    invoke-virtual {p0}, Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;->h()Z

    move-result p0

    if-eqz p0, :cond_7

    invoke-static {}, Lcn/mucang/android/jiakaoyi/framework/utils/b0;->a()Lcn/mucang/android/jiakaoyi/framework/utils/b0;

    move-result-object p0

    invoke-virtual {p0}, Lcn/mucang/android/jiakaoyi/framework/utils/b0;->b()Z

    move-result p0

    if-eqz p0, :cond_7

    .line 23
    iget p0, v0, Lcn/mucang/android/jiakaoyi/signal/c/d;->b:I

    const/4 p1, 0x1

    add-int/2addr p0, p1

    iput p0, v0, Lcn/mucang/android/jiakaoyi/signal/c/d;->b:I

    .line 24
    iget v1, v0, Lcn/mucang/android/jiakaoyi/signal/c/d;->a:I

    const/4 v2, 0x5

    if-ne v1, v2, :cond_3

    .line 25
    iget v1, v0, Lcn/mucang/android/jiakaoyi/signal/c/d;->c:I

    add-int/2addr v1, p1

    iput v1, v0, Lcn/mucang/android/jiakaoyi/signal/c/d;->c:I

    goto :goto_1

    :cond_3
    const/4 v2, 0x4

    if-ne v1, v2, :cond_4

    .line 26
    iget v1, v0, Lcn/mucang/android/jiakaoyi/signal/c/d;->d:I

    add-int/2addr v1, p1

    iput v1, v0, Lcn/mucang/android/jiakaoyi/signal/c/d;->d:I

    goto :goto_1

    :cond_4
    const/4 v2, 0x2

    if-ne v1, v2, :cond_5

    .line 27
    iget v1, v0, Lcn/mucang/android/jiakaoyi/signal/c/d;->f:I

    add-int/2addr v1, p1

    iput v1, v0, Lcn/mucang/android/jiakaoyi/signal/c/d;->f:I

    goto :goto_1

    :cond_5
    if-ne v1, p1, :cond_6

    .line 28
    iget v1, v0, Lcn/mucang/android/jiakaoyi/signal/c/d;->e:I

    add-int/2addr v1, p1

    iput v1, v0, Lcn/mucang/android/jiakaoyi/signal/c/d;->e:I

    .line 29
    :cond_6
    :goto_1
    rem-int/lit16 p1, p0, 0x708

    if-nez p1, :cond_7

    if-lez p0, :cond_7

    .line 30
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "\u603b\u6570="

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ",gps4="

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, v0, Lcn/mucang/android/jiakaoyi/signal/c/d;->d:I

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ",\u5360\u6bd4="

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, v0, Lcn/mucang/android/jiakaoyi/signal/c/d;->d:I

    mul-int/lit8 v1, v1, 0x64

    div-int/2addr v1, p0

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "%,gps5="

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, v0, Lcn/mucang/android/jiakaoyi/signal/c/d;->c:I

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ",\u5360\u6bd4="

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, v0, Lcn/mucang/android/jiakaoyi/signal/c/d;->c:I

    mul-int/lit8 v1, v1, 0x64

    div-int/2addr v1, p0

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "%,gps1="

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, v0, Lcn/mucang/android/jiakaoyi/signal/c/d;->e:I

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ",\u5360\u6bd4="

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, v0, Lcn/mucang/android/jiakaoyi/signal/c/d;->e:I

    mul-int/lit8 v1, v1, 0x64

    div-int/2addr v1, p0

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "%,gps2="

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, v0, Lcn/mucang/android/jiakaoyi/signal/c/d;->f:I

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ",\u5360\u6bd4="

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, v0, Lcn/mucang/android/jiakaoyi/signal/c/d;->f:I

    mul-int/lit8 v0, v0, 0x64

    div-int/2addr v0, p0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, "%"

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcn/mucang/android/jiakaoyi/framework/log/f;->o(Ljava/lang/Object;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_3

    goto :goto_2

    :catchall_0
    move-exception p0

    .line 31
    :try_start_7
    monitor-exit v2
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    :try_start_8
    throw p0
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_3

    :catchall_1
    move-exception p0

    .line 32
    :try_start_9
    monitor-exit v2
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_1

    :try_start_a
    throw p0
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_3

    :catchall_2
    move-exception p0

    .line 33
    :try_start_b
    monitor-exit v2
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_2

    :try_start_c
    throw p0
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_3

    :catchall_3
    move-exception p0

    const-string p1, "SignalCenter"

    .line 34
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Update Error : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcn/mucang/android/core/utils/t;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 35
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "\u4fe1\u53f7\u66f4\u65b0\u5931\u8d25:"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p0}, Lcn/mucang/android/jiakaoyi/framework/utils/q0;->d(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcn/mucang/android/jiakaoyi/framework/log/f;->f(Ljava/lang/Object;)V

    :cond_7
    :goto_2
    return-void
.end method


# virtual methods
.method public a()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/signal/c/d;->k:Lcn/mucang/android/jiakaoyi/framework/h/b;

    invoke-static {v0}, Lcn/mucang/android/jiakaoyi/signal/d/k/c;->l(Lcn/mucang/android/jiakaoyi/framework/h/b;)V

    return-void
.end method

.method public b(Lcn/mucang/android/jiakaoyi/signal/c/f/a;)V
    .locals 2

    .line 1
    sget-object v0, Lcn/mucang/android/jiakaoyi/signal/c/d;->p:Ljava/lang/Object;

    monitor-enter v0

    if-eqz p1, :cond_0

    .line 2
    :try_start_0
    iget-object v1, p0, Lcn/mucang/android/jiakaoyi/signal/c/d;->i:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 3
    iget-object v1, p0, Lcn/mucang/android/jiakaoyi/signal/c/d;->i:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 4
    :cond_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public h()I
    .locals 1

    .line 1
    iget v0, p0, Lcn/mucang/android/jiakaoyi/signal/c/d;->a:I

    return v0
.end method

.method public synthetic k(Lcn/mucang/android/jiakaoyi/signal/c/e;)V
    .locals 0

    invoke-direct {p0, p1}, Lcn/mucang/android/jiakaoyi/signal/c/d;->j(Lcn/mucang/android/jiakaoyi/signal/c/e;)V

    return-void
.end method

.method public n(Lcn/mucang/android/jiakaoyi/signal/c/f/a;)V
    .locals 2

    .line 1
    sget-object v0, Lcn/mucang/android/jiakaoyi/signal/c/d;->p:Ljava/lang/Object;

    monitor-enter v0

    if-eqz p1, :cond_0

    .line 2
    :try_start_0
    iget-object v1, p0, Lcn/mucang/android/jiakaoyi/signal/c/d;->i:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 3
    :cond_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public o()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/signal/c/d;->k:Lcn/mucang/android/jiakaoyi/framework/h/b;

    invoke-static {v0}, Lcn/mucang/android/jiakaoyi/signal/d/k/c;->o(Lcn/mucang/android/jiakaoyi/framework/h/b;)V

    return-void
.end method

.method public r()V
    .locals 2

    .line 1
    sget-object v0, Lcn/mucang/android/jiakaoyi/signal/c/d;->p:Ljava/lang/Object;

    monitor-enter v0

    .line 2
    :try_start_0
    iget-object v1, p0, Lcn/mucang/android/jiakaoyi/signal/c/d;->i:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 3
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public s(Lcn/mucang/android/jiakaoyi/framework/h/b;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcn/mucang/android/jiakaoyi/framework/h/b<",
            "Lcn/mucang/android/jiakaoyi/signal/center/model/d;",
            ">;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcn/mucang/android/jiakaoyi/signal/c/d;->l:Lcn/mucang/android/jiakaoyi/framework/h/b;

    return-void
.end method
