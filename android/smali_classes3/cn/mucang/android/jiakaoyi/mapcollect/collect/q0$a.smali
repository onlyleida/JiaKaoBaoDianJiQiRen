.class Lcn/mucang/android/jiakaoyi/mapcollect/collect/q0$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcn/mucang/android/jiakaoyi/signal/c/f/a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/mucang/android/jiakaoyi/mapcollect/collect/q0;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcn/mucang/android/jiakaoyi/mapcollect/collect/q0;


# direct methods
.method constructor <init>(Lcn/mucang/android/jiakaoyi/mapcollect/collect/q0;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcn/mucang/android/jiakaoyi/mapcollect/collect/q0$a;->a:Lcn/mucang/android/jiakaoyi/mapcollect/collect/q0;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onSignalChanged(Lcn/mucang/android/jiakaoyi/signal/c/e;)V
    .locals 9

    .line 1
    invoke-interface {p1}, Lcn/mucang/android/jiakaoyi/signal/c/e;->d()Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;

    move-result-object v0

    iget-byte v0, v0, Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;->M:B

    const/4 v1, 0x3

    if-eq v0, v1, :cond_0

    return-void

    .line 2
    :cond_0
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/mapcollect/collect/q0$a;->a:Lcn/mucang/android/jiakaoyi/mapcollect/collect/q0;

    invoke-interface {p1}, Lcn/mucang/android/jiakaoyi/signal/c/e;->getCurrentPosition()Lcn/mucang/android/jiakaoyi/signal/center/model/b;

    move-result-object v1

    iget v1, v1, Lcn/mucang/android/jiakaoyi/signal/center/model/b;->d:F

    iput v1, v0, Lcn/mucang/android/jiakaoyi/mapcollect/collect/q0;->h:F

    .line 3
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/mapcollect/collect/q0$a;->a:Lcn/mucang/android/jiakaoyi/mapcollect/collect/q0;

    invoke-interface {p1}, Lcn/mucang/android/jiakaoyi/signal/c/e;->getCurrentPosition()Lcn/mucang/android/jiakaoyi/signal/center/model/b;

    move-result-object v1

    iget v1, v1, Lcn/mucang/android/jiakaoyi/signal/center/model/b;->a:F

    iput v1, v0, Lcn/mucang/android/jiakaoyi/mapcollect/collect/q0;->g:F

    .line 4
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/mapcollect/collect/q0$a;->a:Lcn/mucang/android/jiakaoyi/mapcollect/collect/q0;

    invoke-interface {p1}, Lcn/mucang/android/jiakaoyi/signal/c/e;->getCurrentPosition()Lcn/mucang/android/jiakaoyi/signal/center/model/b;

    move-result-object v1

    iget v1, v1, Lcn/mucang/android/jiakaoyi/signal/center/model/b;->h:I

    iput v1, v0, Lcn/mucang/android/jiakaoyi/mapcollect/collect/q0;->f:I

    .line 5
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/mapcollect/collect/q0$a;->a:Lcn/mucang/android/jiakaoyi/mapcollect/collect/q0;

    invoke-interface {p1}, Lcn/mucang/android/jiakaoyi/signal/c/e;->getCurrentPosition()Lcn/mucang/android/jiakaoyi/signal/center/model/b;

    move-result-object v1

    iget v1, v1, Lcn/mucang/android/jiakaoyi/signal/center/model/b;->e:F

    float-to-double v1, v1

    iput-wide v1, v0, Lcn/mucang/android/jiakaoyi/mapcollect/collect/q0;->j:D

    .line 6
    invoke-interface {p1}, Lcn/mucang/android/jiakaoyi/signal/c/e;->getCurrentPosition()Lcn/mucang/android/jiakaoyi/signal/center/model/b;

    move-result-object v0

    iget-object v0, v0, Lcn/mucang/android/jiakaoyi/signal/center/model/b;->g:Landroid/location/Location;

    invoke-static {v0}, Lcn/mucang/android/jiakaoyi/signal/pos/Gps;->from(Landroid/location/Location;)Lcn/mucang/android/jiakaoyi/signal/pos/Gps;

    move-result-object v0

    .line 7
    iget-wide v1, v0, Lcn/mucang/android/jiakaoyi/signal/pos/Gps;->latitude:D

    iget-object v3, p0, Lcn/mucang/android/jiakaoyi/mapcollect/collect/q0$a;->a:Lcn/mucang/android/jiakaoyi/mapcollect/collect/q0;

    iget-object v3, v3, Lcn/mucang/android/jiakaoyi/mapcollect/collect/q0;->b:Lcn/mucang/android/jiakaoyi/signal/pos/Gps;

    iget-wide v3, v3, Lcn/mucang/android/jiakaoyi/signal/pos/Gps;->latitude:D

    sub-double/2addr v1, v3

    invoke-static {v1, v2}, Ljava/lang/Math;->abs(D)D

    move-result-wide v1

    iget-wide v3, v0, Lcn/mucang/android/jiakaoyi/signal/pos/Gps;->longitude:D

    iget-object v5, p0, Lcn/mucang/android/jiakaoyi/mapcollect/collect/q0$a;->a:Lcn/mucang/android/jiakaoyi/mapcollect/collect/q0;

    iget-object v5, v5, Lcn/mucang/android/jiakaoyi/mapcollect/collect/q0;->b:Lcn/mucang/android/jiakaoyi/signal/pos/Gps;

    iget-wide v5, v5, Lcn/mucang/android/jiakaoyi/signal/pos/Gps;->longitude:D

    sub-double/2addr v3, v5

    invoke-static {v3, v4}, Ljava/lang/Math;->abs(D)D

    move-result-wide v3

    add-double/2addr v1, v3

    const-wide v3, 0x3ddb7cdfd9d7bdbbL    # 1.0E-10

    cmpg-double v5, v1, v3

    if-gez v5, :cond_1

    return-void

    .line 8
    :cond_1
    iget-object v1, p0, Lcn/mucang/android/jiakaoyi/mapcollect/collect/q0$a;->a:Lcn/mucang/android/jiakaoyi/mapcollect/collect/q0;

    iget-object v1, v1, Lcn/mucang/android/jiakaoyi/mapcollect/collect/q0;->b:Lcn/mucang/android/jiakaoyi/signal/pos/Gps;

    invoke-virtual {v1, v0}, Lcn/mucang/android/jiakaoyi/signal/pos/Gps;->setGps(Lcn/mucang/android/jiakaoyi/signal/pos/Gps;)V

    .line 9
    iget-object v1, p0, Lcn/mucang/android/jiakaoyi/mapcollect/collect/q0$a;->a:Lcn/mucang/android/jiakaoyi/mapcollect/collect/q0;

    iget v1, v1, Lcn/mucang/android/jiakaoyi/mapcollect/collect/q0;->f:I

    invoke-static {v1}, Lcn/mucang/android/jiakaoyi/signal/handle/gps/f;->a(I)Z

    move-result v1

    if-nez v1, :cond_3

    invoke-static {}, Lcn/mucang/android/core/config/MucangConfig;->v()Z

    move-result v1

    if-eqz v1, :cond_2

    goto :goto_0

    .line 10
    :cond_2
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/mapcollect/collect/q0$a;->a:Lcn/mucang/android/jiakaoyi/mapcollect/collect/q0;

    iget-object v1, v0, Lcn/mucang/android/jiakaoyi/mapcollect/collect/q0;->a:Lcn/mucang/android/jiakaoyi/signal/pos/Gps;

    const-wide/16 v2, 0x0

    const-wide/16 v4, 0x0

    const-wide/16 v6, 0x0

    invoke-virtual/range {v1 .. v7}, Lcn/mucang/android/jiakaoyi/signal/pos/Gps;->setGps(DDD)V

    .line 11
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/mapcollect/collect/q0$a;->a:Lcn/mucang/android/jiakaoyi/mapcollect/collect/q0;

    invoke-static {v0}, Lcn/mucang/android/jiakaoyi/mapcollect/collect/q0;->g(Lcn/mucang/android/jiakaoyi/mapcollect/collect/q0;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 12
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/mapcollect/collect/q0$a;->a:Lcn/mucang/android/jiakaoyi/mapcollect/collect/q0;

    invoke-static {v0}, Lcn/mucang/android/jiakaoyi/mapcollect/collect/q0;->i(Lcn/mucang/android/jiakaoyi/mapcollect/collect/q0;)Ljava/util/LinkedList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/LinkedList;->clear()V

    goto :goto_1

    .line 13
    :cond_3
    :goto_0
    iget-object v1, p0, Lcn/mucang/android/jiakaoyi/mapcollect/collect/q0$a;->a:Lcn/mucang/android/jiakaoyi/mapcollect/collect/q0;

    invoke-static {v1}, Lcn/mucang/android/jiakaoyi/mapcollect/collect/q0;->g(Lcn/mucang/android/jiakaoyi/mapcollect/collect/q0;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x2

    if-ge v1, v2, :cond_4

    iget-object v1, p0, Lcn/mucang/android/jiakaoyi/mapcollect/collect/q0$a;->a:Lcn/mucang/android/jiakaoyi/mapcollect/collect/q0;

    iget-object v5, v1, Lcn/mucang/android/jiakaoyi/mapcollect/collect/q0;->a:Lcn/mucang/android/jiakaoyi/signal/pos/Gps;

    iget-wide v6, v5, Lcn/mucang/android/jiakaoyi/signal/pos/Gps;->latitude:D

    cmpg-double v8, v6, v3

    if-gez v8, :cond_4

    iget-wide v5, v5, Lcn/mucang/android/jiakaoyi/signal/pos/Gps;->longitude:D

    cmpg-double v7, v5, v3

    if-gez v7, :cond_4

    .line 14
    invoke-static {v1}, Lcn/mucang/android/jiakaoyi/mapcollect/collect/q0;->g(Lcn/mucang/android/jiakaoyi/mapcollect/collect/q0;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 15
    :cond_4
    iget-object v1, p0, Lcn/mucang/android/jiakaoyi/mapcollect/collect/q0$a;->a:Lcn/mucang/android/jiakaoyi/mapcollect/collect/q0;

    iget-object v1, v1, Lcn/mucang/android/jiakaoyi/mapcollect/collect/q0;->a:Lcn/mucang/android/jiakaoyi/signal/pos/Gps;

    invoke-virtual {v1, v0}, Lcn/mucang/android/jiakaoyi/signal/pos/Gps;->setGps(Lcn/mucang/android/jiakaoyi/signal/pos/Gps;)V

    .line 16
    iget-object v1, p0, Lcn/mucang/android/jiakaoyi/mapcollect/collect/q0$a;->a:Lcn/mucang/android/jiakaoyi/mapcollect/collect/q0;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v3

    invoke-static {v1, v3, v4}, Lcn/mucang/android/jiakaoyi/mapcollect/collect/q0;->h(Lcn/mucang/android/jiakaoyi/mapcollect/collect/q0;J)J

    .line 17
    iget-object v1, p0, Lcn/mucang/android/jiakaoyi/mapcollect/collect/q0$a;->a:Lcn/mucang/android/jiakaoyi/mapcollect/collect/q0;

    invoke-static {v1}, Lcn/mucang/android/jiakaoyi/mapcollect/collect/q0;->i(Lcn/mucang/android/jiakaoyi/mapcollect/collect/q0;)Ljava/util/LinkedList;

    move-result-object v1

    new-instance v3, Lcn/mucang/android/jiakaoyi/signal/pos/Gps;

    invoke-direct {v3, v0}, Lcn/mucang/android/jiakaoyi/signal/pos/Gps;-><init>(Lcn/mucang/android/jiakaoyi/signal/pos/Gps;)V

    invoke-virtual {v1, v3}, Ljava/util/LinkedList;->addLast(Ljava/lang/Object;)V

    .line 18
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/mapcollect/collect/q0$a;->a:Lcn/mucang/android/jiakaoyi/mapcollect/collect/q0;

    invoke-static {v0}, Lcn/mucang/android/jiakaoyi/mapcollect/collect/q0;->i(Lcn/mucang/android/jiakaoyi/mapcollect/collect/q0;)Ljava/util/LinkedList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/LinkedList;->size()I

    move-result v0

    if-le v0, v2, :cond_5

    .line 19
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/mapcollect/collect/q0$a;->a:Lcn/mucang/android/jiakaoyi/mapcollect/collect/q0;

    invoke-static {v0}, Lcn/mucang/android/jiakaoyi/mapcollect/collect/q0;->i(Lcn/mucang/android/jiakaoyi/mapcollect/collect/q0;)Ljava/util/LinkedList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/LinkedList;->removeFirst()Ljava/lang/Object;

    .line 20
    :cond_5
    :goto_1
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/mapcollect/collect/q0$a;->a:Lcn/mucang/android/jiakaoyi/mapcollect/collect/q0;

    invoke-interface {p1}, Lcn/mucang/android/jiakaoyi/signal/c/e;->getCurrentPosition()Lcn/mucang/android/jiakaoyi/signal/center/model/b;

    move-result-object p1

    iget p1, p1, Lcn/mucang/android/jiakaoyi/signal/center/model/b;->i:I

    invoke-virtual {v0, p1}, Lcn/mucang/android/jiakaoyi/mapcollect/collect/q0;->l(I)V

    return-void
.end method
