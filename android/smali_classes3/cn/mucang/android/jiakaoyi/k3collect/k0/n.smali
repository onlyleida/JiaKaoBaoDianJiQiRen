.class public Lcn/mucang/android/jiakaoyi/k3collect/k0/n;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final a:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcn/mucang/android/jiakaoyi/k3collect/k0/n;->a:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(DDLcn/mucang/android/jiakaoyi/hpmap/view/MapView;)F
    .locals 4

    const-wide/16 v0, 0x0

    cmpg-double v2, p0, v0

    if-lez v2, :cond_2

    cmpg-double v2, p2, v0

    if-lez v2, :cond_2

    .line 1
    invoke-static {p0, p1}, Ljava/lang/Double;->isNaN(D)Z

    move-result v0

    if-nez v0, :cond_2

    invoke-static {p0, p1}, Ljava/lang/Double;->isInfinite(D)Z

    move-result v0

    if-nez v0, :cond_2

    .line 2
    invoke-static {p2, p3}, Ljava/lang/Double;->isNaN(D)Z

    move-result v0

    if-nez v0, :cond_2

    invoke-static {p2, p3}, Ljava/lang/Double;->isInfinite(D)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 3
    :cond_0
    invoke-virtual {p4}, Landroid/view/TextureView;->getMeasuredWidth()I

    move-result v0

    .line 4
    invoke-virtual {p4}, Landroid/view/TextureView;->getMeasuredHeight()I

    move-result v1

    mul-int v2, v0, v1

    if-gtz v2, :cond_1

    .line 5
    invoke-virtual {p4}, Lcn/mucang/android/jiakaoyi/hpmap/view/MapView;->getCurrentZoom()F

    move-result p0

    return p0

    :cond_1
    int-to-double v2, v0

    div-double/2addr v2, p0

    int-to-double p0, v1

    div-double/2addr p0, p2

    .line 6
    invoke-static {v2, v3, p0, p1}, Ljava/lang/Math;->min(DD)D

    move-result-wide p0

    double-to-float p0, p0

    return p0

    .line 7
    :cond_2
    :goto_0
    invoke-virtual {p4}, Lcn/mucang/android/jiakaoyi/hpmap/view/MapView;->getCurrentZoom()F

    move-result p0

    return p0
.end method

.method static synthetic d(Ljava/util/List;Lcn/mucang/android/jiakaoyi/hpmap/view/MapView;)V
    .locals 18

    move-object/from16 v0, p1

    .line 1
    invoke-interface/range {p0 .. p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    const-wide v2, -0x10000000000001L

    const-wide v4, 0x7fefffffffffffffL    # Double.MAX_VALUE

    const-wide/16 v6, 0x0

    move-wide v8, v4

    move-wide v10, v6

    move-wide v12, v10

    move-wide v4, v2

    move-wide v6, v8

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v14

    if-eqz v14, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    move-object v15, v1

    .line 2
    iget-wide v0, v14, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;->x:D

    add-double/2addr v10, v0

    move-wide/from16 v16, v10

    .line 3
    iget-wide v10, v14, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;->y:D

    add-double/2addr v12, v10

    cmpl-double v14, v6, v0

    if-lez v14, :cond_0

    move-wide v6, v0

    :cond_0
    cmpg-double v14, v2, v0

    if-gez v14, :cond_1

    move-wide v2, v0

    :cond_1
    cmpl-double v0, v8, v10

    if-lez v0, :cond_2

    move-wide v8, v10

    :cond_2
    cmpg-double v0, v4, v10

    if-gez v0, :cond_3

    move-wide v4, v10

    :cond_3
    move-object/from16 v0, p1

    move-object v1, v15

    move-wide/from16 v10, v16

    goto :goto_0

    .line 4
    :cond_4
    invoke-interface/range {p0 .. p0}, Ljava/util/List;->size()I

    move-result v0

    int-to-double v0, v0

    div-double/2addr v10, v0

    .line 5
    invoke-interface/range {p0 .. p0}, Ljava/util/List;->size()I

    move-result v0

    int-to-double v0, v0

    div-double/2addr v12, v0

    sub-double/2addr v2, v6

    sub-double/2addr v4, v8

    move-object/from16 v0, p1

    .line 6
    invoke-static {v2, v3, v4, v5, v0}, Lcn/mucang/android/jiakaoyi/k3collect/k0/n;->a(DDLcn/mucang/android/jiakaoyi/hpmap/view/MapView;)F

    move-result v1

    .line 7
    invoke-virtual {v0, v1}, Lcn/mucang/android/jiakaoyi/hpmap/view/MapView;->setCurrentZoom(F)V

    double-to-float v1, v10

    double-to-float v2, v12

    .line 8
    invoke-virtual {v0, v1, v2}, Lcn/mucang/android/jiakaoyi/hpmap/view/MapView;->i(FF)V

    .line 9
    invoke-virtual/range {p1 .. p1}, Lcn/mucang/android/jiakaoyi/hpmap/view/MapView;->r()V

    return-void
.end method


# virtual methods
.method public b(Lcn/mucang/android/jiakaoyi/hpmap/view/MapView;)V
    .locals 5

    .line 1
    sget-object v0, Lcn/mucang/android/jiakaoyi/k3collect/k0/n;->a:Ljava/lang/Object;

    monitor-enter v0

    .line 2
    :try_start_0
    iget-object v1, p1, Lcn/mucang/android/jiakaoyi/hpmap/view/MapView;->u:Lcn/mucang/android/jiakaoyi/hpmap/view/m;

    invoke-virtual {v1}, Lcn/mucang/android/jiakaoyi/hpmap/view/m;->s()Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 3
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_1

    .line 4
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    :goto_0
    if-ltz v2, :cond_1

    .line 5
    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcn/mucang/android/jiakaoyi/hpmap/view/p/k;

    .line 6
    instance-of v4, v3, Lcn/mucang/android/jiakaoyi/k3collect/g0/j;

    if-eqz v4, :cond_0

    .line 7
    iget-object v4, p1, Lcn/mucang/android/jiakaoyi/hpmap/view/MapView;->u:Lcn/mucang/android/jiakaoyi/hpmap/view/m;

    invoke-virtual {v4, v3}, Lcn/mucang/android/jiakaoyi/hpmap/view/m;->Q(Lcn/mucang/android/jiakaoyi/hpmap/view/p/k;)V

    :cond_0
    add-int/lit8 v2, v2, -0x1

    goto :goto_0

    .line 8
    :cond_1
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public c(Ljava/lang/Long;Lcn/mucang/android/jiakaoyi/hpmap/view/MapView;)Lcn/mucang/android/jiakaoyi/k3collect/g0/j;
    .locals 3

    .line 1
    iget-object p2, p2, Lcn/mucang/android/jiakaoyi/hpmap/view/MapView;->u:Lcn/mucang/android/jiakaoyi/hpmap/view/m;

    invoke-virtual {p2}, Lcn/mucang/android/jiakaoyi/hpmap/view/m;->s()Ljava/util/List;

    move-result-object p2

    if-eqz p2, :cond_3

    .line 2
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_3

    .line 3
    sget-object v0, Lcn/mucang/android/jiakaoyi/k3collect/k0/n;->a:Ljava/lang/Object;

    monitor-enter v0

    .line 4
    :try_start_0
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :cond_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcn/mucang/android/jiakaoyi/hpmap/view/p/k;

    .line 5
    instance-of v2, v1, Lcn/mucang/android/jiakaoyi/k3collect/g0/j;

    if-eqz v2, :cond_0

    .line 6
    check-cast v1, Lcn/mucang/android/jiakaoyi/k3collect/g0/j;

    if-nez p1, :cond_1

    .line 7
    iget-object v2, v1, Lcn/mucang/android/jiakaoyi/k3collect/g0/j;->j:Ljava/lang/Long;

    if-nez v2, :cond_1

    .line 8
    monitor-exit v0

    return-object v1

    :cond_1
    if-eqz p1, :cond_0

    .line 9
    iget-object v2, v1, Lcn/mucang/android/jiakaoyi/k3collect/g0/j;->j:Ljava/lang/Long;

    invoke-virtual {p1, v2}, Ljava/lang/Long;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 10
    monitor-exit v0

    return-object v1

    .line 11
    :cond_2
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1

    :cond_3
    :goto_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public e(Lcn/mucang/android/jiakaoyi/hpmap/view/MapView;Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcn/mucang/android/jiakaoyi/hpmap/view/MapView;",
            "Ljava/util/List<",
            "Lcn/mucang/android/jiakaoyi/signal/pos/Pos;",
            ">;)V"
        }
    .end annotation

    .line 1
    new-instance v0, Lcn/mucang/android/jiakaoyi/k3collect/k0/e;

    invoke-direct {v0, p2, p1}, Lcn/mucang/android/jiakaoyi/k3collect/k0/e;-><init>(Ljava/util/List;Lcn/mucang/android/jiakaoyi/hpmap/view/MapView;)V

    invoke-virtual {p1, v0}, Landroid/view/TextureView;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public f(Lcn/mucang/android/jiakaoyi/k3collect/src/K3SrcData;Lcn/mucang/android/jiakaoyi/hpmap/view/MapView;)V
    .locals 5

    .line 1
    iget-object v0, p2, Lcn/mucang/android/jiakaoyi/hpmap/view/MapView;->u:Lcn/mucang/android/jiakaoyi/hpmap/view/m;

    invoke-virtual {v0}, Lcn/mucang/android/jiakaoyi/hpmap/view/m;->s()Ljava/util/List;

    move-result-object v0

    .line 2
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    if-eqz v0, :cond_2

    .line 3
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_2

    .line 4
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcn/mucang/android/jiakaoyi/hpmap/view/p/k;

    .line 5
    instance-of v3, v2, Lcn/mucang/android/jiakaoyi/k3collect/g0/j;

    if-eqz v3, :cond_0

    .line 6
    check-cast v2, Lcn/mucang/android/jiakaoyi/k3collect/g0/j;

    .line 7
    iget-object v3, v2, Lcn/mucang/android/jiakaoyi/k3collect/g0/j;->j:Ljava/lang/Long;

    if-nez v3, :cond_1

    .line 8
    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 9
    :cond_1
    iget-object v4, p1, Lcn/mucang/android/jiakaoyi/k3collect/src/K3SrcData;->id:Ljava/lang/Long;

    if-eqz v4, :cond_0

    invoke-virtual {v4, v3}, Ljava/lang/Long;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 10
    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 11
    :cond_2
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result p1

    if-lez p1, :cond_3

    .line 12
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcn/mucang/android/jiakaoyi/k3collect/g0/j;

    .line 13
    iget-object v1, p2, Lcn/mucang/android/jiakaoyi/hpmap/view/MapView;->u:Lcn/mucang/android/jiakaoyi/hpmap/view/m;

    invoke-virtual {v1, v0}, Lcn/mucang/android/jiakaoyi/hpmap/view/m;->Q(Lcn/mucang/android/jiakaoyi/hpmap/view/p/k;)V

    goto :goto_1

    :cond_3
    return-void
.end method

.method public g(Lcn/mucang/android/jiakaoyi/k3collect/src/K3SrcData;Lcn/mucang/android/jiakaoyi/hpmap/view/MapView;Lcn/mucang/android/jiakaoyi/signal/i/a;)Lcn/mucang/android/jiakaoyi/k3collect/g0/j;
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-virtual {p0, p1, p2, p3, v0}, Lcn/mucang/android/jiakaoyi/k3collect/k0/n;->h(Lcn/mucang/android/jiakaoyi/k3collect/src/K3SrcData;Lcn/mucang/android/jiakaoyi/hpmap/view/MapView;Lcn/mucang/android/jiakaoyi/signal/i/a;Z)Lcn/mucang/android/jiakaoyi/k3collect/g0/j;

    move-result-object p1

    return-object p1
.end method

.method public h(Lcn/mucang/android/jiakaoyi/k3collect/src/K3SrcData;Lcn/mucang/android/jiakaoyi/hpmap/view/MapView;Lcn/mucang/android/jiakaoyi/signal/i/a;Z)Lcn/mucang/android/jiakaoyi/k3collect/g0/j;
    .locals 8

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return-object v0

    .line 1
    :cond_0
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 2
    sget-object v2, Lcn/mucang/android/jiakaoyi/k3collect/k0/n;->a:Ljava/lang/Object;

    monitor-enter v2

    .line 3
    :try_start_0
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 4
    iget-object v4, p2, Lcn/mucang/android/jiakaoyi/hpmap/view/MapView;->u:Lcn/mucang/android/jiakaoyi/hpmap/view/m;

    invoke-virtual {v4}, Lcn/mucang/android/jiakaoyi/hpmap/view/m;->s()Ljava/util/List;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 5
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v4

    if-lez v4, :cond_3

    .line 6
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    move-object v4, v0

    :cond_1
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_4

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcn/mucang/android/jiakaoyi/hpmap/view/p/k;

    .line 7
    instance-of v6, v5, Lcn/mucang/android/jiakaoyi/k3collect/g0/j;

    if-eqz v6, :cond_1

    .line 8
    check-cast v5, Lcn/mucang/android/jiakaoyi/k3collect/g0/j;

    .line 9
    iget-object v6, v5, Lcn/mucang/android/jiakaoyi/k3collect/g0/j;->j:Ljava/lang/Long;

    if-nez v6, :cond_2

    .line 10
    invoke-interface {v1, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 11
    :cond_2
    iget-object v7, p1, Lcn/mucang/android/jiakaoyi/k3collect/src/K3SrcData;->id:Ljava/lang/Long;

    if-eqz v7, :cond_1

    invoke-virtual {v7, v6}, Ljava/lang/Long;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    move-object v4, v5

    goto :goto_0

    :cond_3
    move-object v4, v0

    .line 12
    :cond_4
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v3

    if-lez v3, :cond_5

    .line 13
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_5

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcn/mucang/android/jiakaoyi/k3collect/g0/j;

    .line 14
    iget-object v5, p2, Lcn/mucang/android/jiakaoyi/hpmap/view/MapView;->u:Lcn/mucang/android/jiakaoyi/hpmap/view/m;

    invoke-virtual {v5, v3}, Lcn/mucang/android/jiakaoyi/hpmap/view/m;->Q(Lcn/mucang/android/jiakaoyi/hpmap/view/p/k;)V

    goto :goto_1

    .line 15
    :cond_5
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 16
    iget v1, p1, Lcn/mucang/android/jiakaoyi/k3collect/src/K3SrcData;->type:I

    invoke-static {v1}, Lcn/mucang/android/jiakaoyi/k3collect/k0/p;->a(I)Lcn/mucang/android/jiakaoyi/k3collect/k0/p$b;

    move-result-object v1

    if-eqz v1, :cond_8

    .line 17
    invoke-interface {v1, p1, p3}, Lcn/mucang/android/jiakaoyi/k3collect/k0/p$b;->b(Lcn/mucang/android/jiakaoyi/k3collect/src/K3SrcData;Lcn/mucang/android/jiakaoyi/signal/i/a;)V

    if-eqz v4, :cond_7

    .line 18
    iget p3, v4, Lcn/mucang/android/jiakaoyi/k3collect/g0/j;->i:I

    iget p1, p1, Lcn/mucang/android/jiakaoyi/k3collect/src/K3SrcData;->type:I

    if-ne p3, p1, :cond_6

    .line 19
    invoke-interface {v1}, Lcn/mucang/android/jiakaoyi/k3collect/k0/p$b;->c()Lcn/mucang/android/jiakaoyi/k3collect/j0/a;

    move-result-object p1

    .line 20
    invoke-virtual {v4, p1}, Lcn/mucang/android/jiakaoyi/k3collect/g0/j;->o(Lcn/mucang/android/jiakaoyi/k3collect/j0/a;)V

    .line 21
    invoke-virtual {p2}, Lcn/mucang/android/jiakaoyi/hpmap/view/MapView;->r()V

    return-object v4

    .line 22
    :cond_6
    invoke-interface {v1, p2}, Lcn/mucang/android/jiakaoyi/k3collect/k0/p$b;->a(Lcn/mucang/android/jiakaoyi/hpmap/view/MapView;)Lcn/mucang/android/jiakaoyi/k3collect/g0/j;

    move-result-object p1

    .line 23
    iput-boolean p4, p1, Lcn/mucang/android/jiakaoyi/hpmap/view/p/k;->d:Z

    .line 24
    iget-object p3, p2, Lcn/mucang/android/jiakaoyi/hpmap/view/MapView;->u:Lcn/mucang/android/jiakaoyi/hpmap/view/m;

    invoke-virtual {p3, p1}, Lcn/mucang/android/jiakaoyi/hpmap/view/m;->g(Lcn/mucang/android/jiakaoyi/hpmap/view/p/k;)V

    .line 25
    iget-object p2, p2, Lcn/mucang/android/jiakaoyi/hpmap/view/MapView;->u:Lcn/mucang/android/jiakaoyi/hpmap/view/m;

    invoke-virtual {p2, v4}, Lcn/mucang/android/jiakaoyi/hpmap/view/m;->Q(Lcn/mucang/android/jiakaoyi/hpmap/view/p/k;)V

    return-object p1

    .line 26
    :cond_7
    invoke-interface {v1, p2}, Lcn/mucang/android/jiakaoyi/k3collect/k0/p$b;->a(Lcn/mucang/android/jiakaoyi/hpmap/view/MapView;)Lcn/mucang/android/jiakaoyi/k3collect/g0/j;

    move-result-object p1

    .line 27
    iput-boolean p4, p1, Lcn/mucang/android/jiakaoyi/hpmap/view/p/k;->d:Z

    .line 28
    iget-object p2, p2, Lcn/mucang/android/jiakaoyi/hpmap/view/MapView;->u:Lcn/mucang/android/jiakaoyi/hpmap/view/m;

    invoke-virtual {p2, p1}, Lcn/mucang/android/jiakaoyi/hpmap/view/m;->g(Lcn/mucang/android/jiakaoyi/hpmap/view/p/k;)V

    return-object p1

    :cond_8
    return-object v0

    :catchall_0
    move-exception p1

    .line 29
    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public i(Lcn/mucang/android/jiakaoyi/hpmap/view/MapView;FF)V
    .locals 1

    const v0, 0x3ecccccd    # 0.4f

    .line 1
    invoke-virtual {p1, v0}, Lcn/mucang/android/jiakaoyi/hpmap/view/MapView;->setCurrentZoom(F)V

    .line 2
    invoke-virtual {p1, p2, p3}, Lcn/mucang/android/jiakaoyi/hpmap/view/MapView;->i(FF)V

    .line 3
    invoke-virtual {p1}, Lcn/mucang/android/jiakaoyi/hpmap/view/MapView;->r()V

    return-void
.end method

.method public j(Lcn/mucang/android/jiakaoyi/hpmap/view/MapView;FFF)V
    .locals 0

    .line 1
    invoke-virtual {p1, p4}, Lcn/mucang/android/jiakaoyi/hpmap/view/MapView;->setCurrentZoom(F)V

    .line 2
    invoke-virtual {p1, p2, p3}, Lcn/mucang/android/jiakaoyi/hpmap/view/MapView;->i(FF)V

    .line 3
    invoke-virtual {p1}, Lcn/mucang/android/jiakaoyi/hpmap/view/MapView;->r()V

    return-void
.end method

.method public k(Lcn/mucang/android/jiakaoyi/hpmap/view/MapView;Lcn/mucang/android/jiakaoyi/signal/i/a;Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcn/mucang/android/jiakaoyi/hpmap/view/MapView;",
            "Lcn/mucang/android/jiakaoyi/signal/i/a;",
            "Ljava/util/List<",
            "Lcn/mucang/android/jiakaoyi/signal/pos/Gps;",
            ">;)V"
        }
    .end annotation

    if-eqz p3, :cond_0

    .line 1
    invoke-interface {p3}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 2
    invoke-static {p2, p3}, Lcn/mucang/android/jiakaoyi/k3collect/k0/o;->f(Lcn/mucang/android/jiakaoyi/signal/i/a;Ljava/util/List;)Ljava/util/List;

    move-result-object p2

    .line 3
    new-instance p3, Lcn/mucang/android/jiakaoyi/k3collect/k0/n$a;

    invoke-direct {p3, p0, p2, p1}, Lcn/mucang/android/jiakaoyi/k3collect/k0/n$a;-><init>(Lcn/mucang/android/jiakaoyi/k3collect/k0/n;Ljava/util/List;Lcn/mucang/android/jiakaoyi/hpmap/view/MapView;)V

    invoke-virtual {p1, p3}, Landroid/view/TextureView;->post(Ljava/lang/Runnable;)Z

    :cond_0
    return-void
.end method
