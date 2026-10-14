.class public Lcn/mucang/android/jiakaoyi/mapcollect/poshandle/pitch/d;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final f:Lcn/mucang/android/jiakaoyi/mapcollect/poshandle/pitch/d;


# instance fields
.field private volatile a:Z

.field private volatile b:Z

.field private final c:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcn/mucang/android/jiakaoyi/mapcollect/poshandle/pitch/c;",
            ">;"
        }
    .end annotation
.end field

.field private final d:Landroidx/lifecycle/a0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/lifecycle/a0<",
            "Lcn/mucang/android/jiakaoyi/mapcollect/poshandle/pitch/ShangPoDataList;",
            ">;"
        }
    .end annotation
.end field

.field private final e:Landroidx/lifecycle/a0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/lifecycle/a0<",
            "Lcn/mucang/android/jiakaoyi/engine/h/a;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lcn/mucang/android/jiakaoyi/mapcollect/poshandle/pitch/d;

    invoke-direct {v0}, Lcn/mucang/android/jiakaoyi/mapcollect/poshandle/pitch/d;-><init>()V

    sput-object v0, Lcn/mucang/android/jiakaoyi/mapcollect/poshandle/pitch/d;->f:Lcn/mucang/android/jiakaoyi/mapcollect/poshandle/pitch/d;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Lcn/mucang/android/jiakaoyi/mapcollect/poshandle/pitch/d;->a:Z

    .line 3
    iput-boolean v0, p0, Lcn/mucang/android/jiakaoyi/mapcollect/poshandle/pitch/d;->b:Z

    .line 4
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcn/mucang/android/jiakaoyi/mapcollect/poshandle/pitch/d;->c:Ljava/util/List;

    .line 5
    new-instance v0, Lcn/mucang/android/jiakaoyi/mapcollect/poshandle/pitch/a;

    invoke-direct {v0, p0}, Lcn/mucang/android/jiakaoyi/mapcollect/poshandle/pitch/a;-><init>(Lcn/mucang/android/jiakaoyi/mapcollect/poshandle/pitch/d;)V

    iput-object v0, p0, Lcn/mucang/android/jiakaoyi/mapcollect/poshandle/pitch/d;->d:Landroidx/lifecycle/a0;

    .line 6
    new-instance v0, Lcn/mucang/android/jiakaoyi/mapcollect/poshandle/pitch/b;

    invoke-direct {v0, p0}, Lcn/mucang/android/jiakaoyi/mapcollect/poshandle/pitch/b;-><init>(Lcn/mucang/android/jiakaoyi/mapcollect/poshandle/pitch/d;)V

    iput-object v0, p0, Lcn/mucang/android/jiakaoyi/mapcollect/poshandle/pitch/d;->e:Landroidx/lifecycle/a0;

    return-void
.end method

.method public static a(DLcn/mucang/android/jiakaoyi/signal/center/model/CarPos;)D
    .locals 16

    move-object/from16 v0, p2

    .line 1
    const-class v1, Lcn/mucang/android/jiakaoyi/mapcollect/poshandle/pitch/d;

    monitor-enter v1

    .line 2
    :try_start_0
    sget-object v2, Lcn/mucang/android/jiakaoyi/mapcollect/poshandle/pitch/d;->f:Lcn/mucang/android/jiakaoyi/mapcollect/poshandle/pitch/d;

    iget-object v2, v2, Lcn/mucang/android/jiakaoyi/mapcollect/poshandle/pitch/d;->c:Ljava/util/List;

    .line 3
    invoke-static {}, Lcn/mucang/android/jiakaoyi/framework/utils/m;->i()Z

    move-result v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    if-eqz v3, :cond_0

    const-wide/16 v6, 0x0

    goto :goto_0

    :cond_0
    move-wide/from16 v6, p0

    .line 4
    :goto_0
    :try_start_1
    invoke-static {}, Lcn/mucang/android/jiakaoyi/framework/utils/m;->i()Z

    move-result v3

    if-eqz v3, :cond_1

    const-wide/high16 v10, 0x3ff0000000000000L    # 1.0

    goto :goto_1

    :cond_1
    const-wide v10, 0x3feb333333333333L    # 0.85

    :goto_1
    const-wide v12, 0x3fd999999999999aL    # 0.4

    mul-double v12, v12, v6

    .line 5
    invoke-static {v2}, Lcn/mucang/android/core/utils/g;->d(Ljava/util/Collection;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 6
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_2
    :goto_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_5

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcn/mucang/android/jiakaoyi/mapcollect/poshandle/pitch/c;

    .line 7
    iget-object v4, v3, Lcn/mucang/android/jiakaoyi/mapcollect/poshandle/pitch/c;->c:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    .line 8
    iget-object v5, v3, Lcn/mucang/android/jiakaoyi/mapcollect/poshandle/pitch/c;->a:Lcn/mucang/android/jiakaoyi/signal/pos/c;

    if-nez v5, :cond_3

    const-wide/16 v14, 0x0

    goto :goto_3

    :cond_3
    iget-wide v14, v5, Lcn/mucang/android/jiakaoyi/signal/pos/c;->f:D

    mul-double v14, v14, v14

    .line 9
    :goto_3
    iget-object v8, v0, Lcn/mucang/android/jiakaoyi/signal/center/model/CarPos;->carRect:Lcn/mucang/android/jiakaoyi/signal/pos/c;

    if-eqz v8, :cond_4

    if-eqz v5, :cond_4

    iget-object v5, v8, Lcn/mucang/android/jiakaoyi/signal/pos/c;->a:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    .line 10
    invoke-static {v5, v4}, Lcn/mucang/android/jiakaoyi/mapcollect/poshandle/pitch/d;->d(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;Lcn/mucang/android/jiakaoyi/signal/pos/Pos;)D

    move-result-wide v8

    cmpl-double v5, v8, v14

    if-lez v5, :cond_4

    iget-object v5, v0, Lcn/mucang/android/jiakaoyi/signal/center/model/CarPos;->carRect:Lcn/mucang/android/jiakaoyi/signal/pos/c;

    iget-object v5, v5, Lcn/mucang/android/jiakaoyi/signal/pos/c;->b:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    .line 11
    invoke-static {v5, v4}, Lcn/mucang/android/jiakaoyi/mapcollect/poshandle/pitch/d;->d(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;Lcn/mucang/android/jiakaoyi/signal/pos/Pos;)D

    move-result-wide v8

    cmpl-double v5, v8, v14

    if-lez v5, :cond_4

    iget-object v5, v0, Lcn/mucang/android/jiakaoyi/signal/center/model/CarPos;->carRect:Lcn/mucang/android/jiakaoyi/signal/pos/c;

    iget-object v5, v5, Lcn/mucang/android/jiakaoyi/signal/pos/c;->c:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    .line 12
    invoke-static {v5, v4}, Lcn/mucang/android/jiakaoyi/mapcollect/poshandle/pitch/d;->d(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;Lcn/mucang/android/jiakaoyi/signal/pos/Pos;)D

    move-result-wide v8

    cmpl-double v5, v8, v14

    if-lez v5, :cond_4

    iget-object v5, v0, Lcn/mucang/android/jiakaoyi/signal/center/model/CarPos;->carRect:Lcn/mucang/android/jiakaoyi/signal/pos/c;

    iget-object v5, v5, Lcn/mucang/android/jiakaoyi/signal/pos/c;->d:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    .line 13
    invoke-static {v5, v4}, Lcn/mucang/android/jiakaoyi/mapcollect/poshandle/pitch/d;->d(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;Lcn/mucang/android/jiakaoyi/signal/pos/Pos;)D

    move-result-wide v4

    cmpl-double v8, v4, v14

    if-lez v8, :cond_4

    goto :goto_2

    .line 14
    :cond_4
    iget-object v4, v3, Lcn/mucang/android/jiakaoyi/mapcollect/poshandle/pitch/c;->a:Lcn/mucang/android/jiakaoyi/signal/pos/c;

    if-eqz v4, :cond_2

    iget-object v5, v0, Lcn/mucang/android/jiakaoyi/signal/center/model/CarPos;->center:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    if-eqz v5, :cond_2

    invoke-static {v4, v5}, Lcn/mucang/android/jiakaoyi/hpmap/a/b/c;->a(Lcn/mucang/android/jiakaoyi/signal/pos/c;Lcn/mucang/android/jiakaoyi/signal/pos/Pos;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 15
    iget-wide v12, v3, Lcn/mucang/android/jiakaoyi/mapcollect/poshandle/pitch/c;->b:D

    .line 16
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\u8fdb\u5165\u5761\u9053\u8303\u56f4:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v2, v3, Lcn/mucang/android/jiakaoyi/mapcollect/poshandle/pitch/c;->b:D

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string v2, ","

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v6, v7}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcn/mucang/android/jiakaoyi/framework/log/f;->o(Ljava/lang/Object;)V

    const/4 v0, 0x1

    goto :goto_4

    :cond_5
    const/4 v0, 0x0

    :goto_4
    mul-double v12, v12, v10

    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    sub-double v8, v2, v10

    mul-double v8, v8, v6

    add-double/2addr v12, v8

    .line 17
    sget-object v2, Lcn/mucang/android/jiakaoyi/mapcollect/poshandle/pitch/d;->f:Lcn/mucang/android/jiakaoyi/mapcollect/poshandle/pitch/d;

    if-nez v0, :cond_7

    invoke-static {v12, v13}, Ljava/lang/Math;->abs(D)D

    move-result-wide v3

    const-wide/high16 v8, 0x4000000000000000L    # 2.0

    cmpl-double v0, v3, v8

    if-lez v0, :cond_6

    goto :goto_5

    :cond_6
    const/4 v0, 0x0

    goto :goto_6

    :cond_7
    :goto_5
    const/4 v0, 0x1

    :goto_6
    iput-boolean v0, v2, Lcn/mucang/android/jiakaoyi/mapcollect/poshandle/pitch/d;->a:Z

    .line 18
    sget-object v0, Lcn/mucang/android/jiakaoyi/signal/h/a;->a:Ljava/util/concurrent/atomic/AtomicBoolean;

    iget-boolean v3, v2, Lcn/mucang/android/jiakaoyi/mapcollect/poshandle/pitch/d;->a:Z

    if-nez v3, :cond_9

    iget-boolean v2, v2, Lcn/mucang/android/jiakaoyi/mapcollect/poshandle/pitch/d;->b:Z

    if-eqz v2, :cond_8

    goto :goto_7

    :cond_8
    const/4 v14, 0x0

    goto :goto_8

    :cond_9
    :goto_7
    const/4 v14, 0x1

    :goto_8
    invoke-virtual {v0, v14}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 19
    :try_start_2
    monitor-exit v1

    return-wide v12

    :catchall_0
    move-exception v0

    goto :goto_9

    :catchall_1
    move-exception v0

    move-wide/from16 v6, p0

    .line 20
    :goto_9
    invoke-virtual {v0}, Ljava/lang/Throwable;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcn/mucang/android/core/utils/u;->h(Ljava/lang/String;)V

    const-string v2, "TAG"

    .line 21
    invoke-virtual {v0}, Ljava/lang/Throwable;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcn/mucang/android/core/utils/t;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 22
    monitor-exit v1

    return-wide v6

    :catchall_2
    move-exception v0

    .line 23
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    throw v0
.end method

.method public static b()V
    .locals 2

    .line 1
    const-class v0, Lcn/mucang/android/jiakaoyi/mapcollect/poshandle/pitch/d;

    monitor-enter v0

    .line 2
    :try_start_0
    sget-object v1, Lcn/mucang/android/jiakaoyi/mapcollect/poshandle/pitch/d;->f:Lcn/mucang/android/jiakaoyi/mapcollect/poshandle/pitch/d;

    iget-object v1, v1, Lcn/mucang/android/jiakaoyi/mapcollect/poshandle/pitch/d;->c:Ljava/util/List;

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

.method public static c()V
    .locals 2

    .line 1
    invoke-static {}, Lcn/mucang/android/jiakaoyi/mapcollect/poshandle/pitch/d;->b()V

    .line 2
    const-class v0, Lcn/mucang/android/jiakaoyi/mapcollect/poshandle/pitch/ShangPoDataList;

    invoke-static {v0}, Lcn/mucang/android/jiakaoyi/framework/bus/LiveBus;->d(Ljava/lang/Class;)Landroidx/lifecycle/c;

    move-result-object v0

    sget-object v1, Lcn/mucang/android/jiakaoyi/mapcollect/poshandle/pitch/d;->f:Lcn/mucang/android/jiakaoyi/mapcollect/poshandle/pitch/d;

    iget-object v1, v1, Lcn/mucang/android/jiakaoyi/mapcollect/poshandle/pitch/d;->d:Landroidx/lifecycle/a0;

    invoke-virtual {v0, v1}, Landroidx/lifecycle/c;->m(Landroidx/lifecycle/a0;)V

    return-void
.end method

.method private static d(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;Lcn/mucang/android/jiakaoyi/signal/pos/Pos;)D
    .locals 4

    .line 1
    iget-wide v0, p0, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;->x:D

    iget-wide v2, p1, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;->x:D

    sub-double/2addr v0, v2

    .line 2
    iget-wide v2, p0, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;->y:D

    iget-wide p0, p1, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;->y:D

    sub-double/2addr v2, p0

    mul-double v0, v0, v0

    mul-double v2, v2, v2

    add-double/2addr v0, v2

    return-wide v0
.end method

.method public static e()V
    .locals 3

    .line 1
    const-class v0, Lcn/mucang/android/jiakaoyi/mapcollect/poshandle/pitch/ShangPoDataList;

    invoke-static {v0}, Lcn/mucang/android/jiakaoyi/framework/bus/LiveBus;->d(Ljava/lang/Class;)Landroidx/lifecycle/c;

    move-result-object v0

    sget-object v1, Lcn/mucang/android/jiakaoyi/mapcollect/poshandle/pitch/d;->f:Lcn/mucang/android/jiakaoyi/mapcollect/poshandle/pitch/d;

    iget-object v2, v1, Lcn/mucang/android/jiakaoyi/mapcollect/poshandle/pitch/d;->d:Landroidx/lifecycle/a0;

    invoke-virtual {v0, v2}, Landroidx/lifecycle/c;->i(Landroidx/lifecycle/a0;)V

    .line 2
    const-class v0, Lcn/mucang/android/jiakaoyi/engine/h/a;

    invoke-static {v0}, Lcn/mucang/android/jiakaoyi/framework/bus/LiveBus;->d(Ljava/lang/Class;)Landroidx/lifecycle/c;

    move-result-object v0

    iget-object v1, v1, Lcn/mucang/android/jiakaoyi/mapcollect/poshandle/pitch/d;->e:Landroidx/lifecycle/a0;

    invoke-virtual {v0, v1}, Landroidx/lifecycle/c;->i(Landroidx/lifecycle/a0;)V

    return-void
.end method

.method private synthetic f(Lcn/mucang/android/jiakaoyi/mapcollect/poshandle/pitch/ShangPoDataList;)V
    .locals 5

    .line 1
    const-class v0, Lcn/mucang/android/jiakaoyi/mapcollect/poshandle/pitch/d;

    monitor-enter v0

    .line 2
    :try_start_0
    iget-object v1, p0, Lcn/mucang/android/jiakaoyi/mapcollect/poshandle/pitch/d;->c:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 3
    iget-object v1, p0, Lcn/mucang/android/jiakaoyi/mapcollect/poshandle/pitch/d;->c:Ljava/util/List;

    iget-object v2, p1, Lcn/mucang/android/jiakaoyi/mapcollect/poshandle/pitch/ShangPoDataList;->list:Ljava/util/List;

    invoke-interface {v1, v2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 4
    iget-object p1, p1, Lcn/mucang/android/jiakaoyi/mapcollect/poshandle/pitch/ShangPoDataList;->list:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcn/mucang/android/jiakaoyi/mapcollect/poshandle/pitch/c;

    .line 5
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "\u6536\u5230\u5761\u9053\u6570\u636e:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v3, v1, Lcn/mucang/android/jiakaoyi/mapcollect/poshandle/pitch/c;->b:D

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcn/mucang/android/jiakaoyi/framework/log/f;->o(Ljava/lang/Object;)V

    goto :goto_0

    .line 6
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

.method private synthetic h(Lcn/mucang/android/jiakaoyi/engine/h/a;)V
    .locals 2

    .line 1
    iget-object v0, p1, Lcn/mucang/android/jiakaoyi/engine/h/a;->a:Lcn/mucang/android/jiakaoyi/engine/model/Step;

    sget-object v1, Lcn/mucang/android/jiakaoyi/engine/model/Step;->K2_ShangPoQiBu:Lcn/mucang/android/jiakaoyi/engine/model/Step;

    if-eq v0, v1, :cond_0

    sget-object v1, Lcn/mucang/android/jiakaoyi/engine/model/Step;->B2_ShangPoQiBu:Lcn/mucang/android/jiakaoyi/engine/model/Step;

    if-ne v0, v1, :cond_1

    :cond_0
    iget-boolean v0, p1, Lcn/mucang/android/jiakaoyi/engine/h/a;->b:Z

    if-eqz v0, :cond_1

    iget-boolean p1, p1, Lcn/mucang/android/jiakaoyi/engine/h/a;->c:Z

    if-nez p1, :cond_1

    const/4 p1, 0x1

    .line 2
    iput-boolean p1, p0, Lcn/mucang/android/jiakaoyi/mapcollect/poshandle/pitch/d;->b:Z

    const-string p1, "\u8fdb\u5165\u5761\u9053"

    .line 3
    invoke-static {p1}, Lcn/mucang/android/jiakaoyi/framework/log/f;->o(Ljava/lang/Object;)V

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    .line 4
    iput-boolean p1, p0, Lcn/mucang/android/jiakaoyi/mapcollect/poshandle/pitch/d;->b:Z

    :goto_0
    return-void
.end method


# virtual methods
.method public synthetic g(Lcn/mucang/android/jiakaoyi/mapcollect/poshandle/pitch/ShangPoDataList;)V
    .locals 0

    invoke-direct {p0, p1}, Lcn/mucang/android/jiakaoyi/mapcollect/poshandle/pitch/d;->f(Lcn/mucang/android/jiakaoyi/mapcollect/poshandle/pitch/ShangPoDataList;)V

    return-void
.end method

.method public synthetic i(Lcn/mucang/android/jiakaoyi/engine/h/a;)V
    .locals 0

    invoke-direct {p0, p1}, Lcn/mucang/android/jiakaoyi/mapcollect/poshandle/pitch/d;->h(Lcn/mucang/android/jiakaoyi/engine/h/a;)V

    return-void
.end method
