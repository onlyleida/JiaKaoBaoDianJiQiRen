.class Lcom/amap/api/mapcore/util/y4$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amap/api/mapcore/util/y4;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "a"
.end annotation


# instance fields
.field private a:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/amap/api/trace/TraceLocation;",
            ">;"
        }
    .end annotation
.end field

.field private b:I

.field private c:I

.field private d:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/amap/api/trace/TraceLocation;",
            ">;"
        }
    .end annotation
.end field

.field private e:Ljava/lang/String;

.field private f:Lcom/amap/api/trace/TraceListener;

.field final synthetic g:Lcom/amap/api/mapcore/util/y4;


# direct methods
.method public constructor <init>(Lcom/amap/api/mapcore/util/y4;ILjava/util/List;ILcom/amap/api/trace/TraceListener;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Lcom/amap/api/trace/TraceLocation;",
            ">;I",
            "Lcom/amap/api/trace/TraceListener;",
            ")V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/amap/api/mapcore/util/y4$a;->g:Lcom/amap/api/mapcore/util/y4;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/amap/api/mapcore/util/y4$a;->a:Ljava/util/List;

    .line 3
    iput p4, p0, Lcom/amap/api/mapcore/util/y4$a;->b:I

    .line 4
    iput p2, p0, Lcom/amap/api/mapcore/util/y4$a;->c:I

    .line 5
    iput-object p3, p0, Lcom/amap/api/mapcore/util/y4$a;->d:Ljava/util/List;

    .line 6
    invoke-static {}, Lcom/amap/api/mapcore/util/j3;->a()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/amap/api/mapcore/util/y4$a;->e:Ljava/lang/String;

    .line 7
    iput-object p5, p0, Lcom/amap/api/mapcore/util/y4$a;->f:Lcom/amap/api/trace/TraceListener;

    return-void
.end method

.method private a()I
    .locals 9

    .line 1
    iget-object v0, p0, Lcom/amap/api/mapcore/util/y4$a;->d:Ljava/util/List;

    const/4 v1, 0x0

    if-eqz v0, :cond_3

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_1

    .line 2
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 3
    iget-object v2, p0, Lcom/amap/api/mapcore/util/y4$a;->d:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/amap/api/trace/TraceLocation;

    if-nez v3, :cond_1

    goto :goto_0

    .line 4
    :cond_1
    invoke-virtual {v3}, Lcom/amap/api/trace/TraceLocation;->getSpeed()F

    move-result v4

    float-to-double v4, v4

    const-wide v6, 0x3f847ae147ae147bL    # 0.01

    cmpg-double v8, v4, v6

    if-gez v8, :cond_2

    .line 5
    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 6
    :cond_2
    invoke-direct {p0, v0}, Lcom/amap/api/mapcore/util/y4$a;->b(Ljava/util/List;)I

    move-result v3

    add-int/2addr v1, v3

    .line 7
    invoke-interface {v0}, Ljava/util/List;->clear()V

    goto :goto_0

    :cond_3
    :goto_1
    return v1
.end method

.method private b(Ljava/util/List;)I
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/amap/api/trace/TraceLocation;",
            ">;)I"
        }
    .end annotation

    .line 1
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-gt v0, v1, :cond_0

    return v2

    .line 2
    :cond_0
    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/amap/api/trace/TraceLocation;

    sub-int/2addr v0, v1

    .line 3
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/amap/api/trace/TraceLocation;

    if-eqz v3, :cond_2

    if-nez p1, :cond_1

    goto :goto_0

    :cond_1
    if-eqz v3, :cond_2

    if-eqz p1, :cond_2

    .line 4
    invoke-virtual {p1}, Lcom/amap/api/trace/TraceLocation;->getTime()J

    move-result-wide v0

    invoke-virtual {v3}, Lcom/amap/api/trace/TraceLocation;->getTime()J

    move-result-wide v2

    sub-long/2addr v0, v2

    const-wide/16 v2, 0x3e8

    div-long/2addr v0, v2

    long-to-int v2, v0

    :cond_2
    :goto_0
    return v2
.end method


# virtual methods
.method public run()V
    .locals 15

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/amap/api/mapcore/util/y4$a;->g:Lcom/amap/api/mapcore/util/y4;

    invoke-static {v0}, Lcom/amap/api/mapcore/util/y4;->m(Lcom/amap/api/mapcore/util/y4;)Lcom/amap/api/mapcore/util/y4$c;

    move-result-object v0

    iget-object v1, p0, Lcom/amap/api/mapcore/util/y4$a;->f:Lcom/amap/api/trace/TraceListener;

    invoke-virtual {v0, v1}, Lcom/amap/api/mapcore/util/y4$c;->a(Lcom/amap/api/trace/TraceListener;)V

    .line 2
    invoke-direct {p0}, Lcom/amap/api/mapcore/util/y4$a;->a()I

    move-result v0

    .line 3
    iget-object v1, p0, Lcom/amap/api/mapcore/util/y4$a;->d:Ljava/util/List;

    if-eqz v1, :cond_b

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x2

    if-ge v1, v2, :cond_0

    goto/16 :goto_6

    .line 4
    :cond_0
    iget-object v1, p0, Lcom/amap/api/mapcore/util/y4$a;->d:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_1
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/amap/api/trace/TraceLocation;

    .line 5
    invoke-virtual {v3}, Lcom/amap/api/trace/TraceLocation;->copy()Lcom/amap/api/trace/TraceLocation;

    move-result-object v3

    if-eqz v3, :cond_1

    .line 6
    invoke-virtual {v3}, Lcom/amap/api/trace/TraceLocation;->getLatitude()D

    move-result-wide v4

    const-wide/16 v6, 0x0

    cmpl-double v8, v4, v6

    if-lez v8, :cond_1

    .line 7
    invoke-virtual {v3}, Lcom/amap/api/trace/TraceLocation;->getLongitude()D

    move-result-wide v4

    cmpl-double v8, v4, v6

    if-lez v8, :cond_1

    .line 8
    iget-object v4, p0, Lcom/amap/api/mapcore/util/y4$a;->a:Ljava/util/List;

    invoke-interface {v4, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 9
    :cond_2
    iget-object v1, p0, Lcom/amap/api/mapcore/util/y4$a;->a:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    sub-int/2addr v1, v2

    const/16 v3, 0x1f4

    .line 10
    div-int/2addr v1, v3

    .line 11
    invoke-static {}, Lcom/amap/api/mapcore/util/z4;->b()Lcom/amap/api/mapcore/util/z4;

    move-result-object v4

    iget-object v5, p0, Lcom/amap/api/mapcore/util/y4$a;->e:Ljava/lang/String;

    iget v6, p0, Lcom/amap/api/mapcore/util/y4$a;->c:I

    invoke-virtual {v4, v5, v6, v1, v0}, Lcom/amap/api/mapcore/util/z4;->d(Ljava/lang/String;III)V

    const/4 v0, 0x0

    const/16 v4, 0x1f4

    const/4 v12, 0x0

    :goto_1
    if-gt v12, v1, :cond_c

    if-ne v12, v1, :cond_3

    .line 12
    iget-object v4, p0, Lcom/amap/api/mapcore/util/y4$a;->a:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    :cond_3
    move v13, v4

    .line 13
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    const/4 v4, 0x0

    :goto_2
    if-ge v4, v13, :cond_8

    .line 14
    iget-object v5, p0, Lcom/amap/api/mapcore/util/y4$a;->a:Ljava/util/List;

    invoke-interface {v5, v0}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/amap/api/trace/TraceLocation;

    if-nez v5, :cond_4

    goto :goto_4

    .line 15
    :cond_4
    iget v6, p0, Lcom/amap/api/mapcore/util/y4$a;->b:I

    const/4 v8, 0x1

    if-eq v6, v8, :cond_7

    const/4 v8, 0x3

    if-ne v6, v8, :cond_5

    .line 16
    iget-object v6, p0, Lcom/amap/api/mapcore/util/y4$a;->g:Lcom/amap/api/mapcore/util/y4;

    invoke-static {v6}, Lcom/amap/api/mapcore/util/y4;->n(Lcom/amap/api/mapcore/util/y4;)Lcom/amap/api/maps/CoordinateConverter;

    move-result-object v6

    sget-object v8, Lcom/amap/api/maps/CoordinateConverter$CoordType;->BAIDU:Lcom/amap/api/maps/CoordinateConverter$CoordType;

    invoke-virtual {v6, v8}, Lcom/amap/api/maps/CoordinateConverter;->from(Lcom/amap/api/maps/CoordinateConverter$CoordType;)Lcom/amap/api/maps/CoordinateConverter;

    goto :goto_3

    :cond_5
    if-ne v6, v2, :cond_6

    .line 17
    iget-object v6, p0, Lcom/amap/api/mapcore/util/y4$a;->g:Lcom/amap/api/mapcore/util/y4;

    invoke-static {v6}, Lcom/amap/api/mapcore/util/y4;->n(Lcom/amap/api/mapcore/util/y4;)Lcom/amap/api/maps/CoordinateConverter;

    move-result-object v6

    sget-object v8, Lcom/amap/api/maps/CoordinateConverter$CoordType;->GPS:Lcom/amap/api/maps/CoordinateConverter$CoordType;

    invoke-virtual {v6, v8}, Lcom/amap/api/maps/CoordinateConverter;->from(Lcom/amap/api/maps/CoordinateConverter$CoordType;)Lcom/amap/api/maps/CoordinateConverter;

    .line 18
    :cond_6
    :goto_3
    new-instance v6, Lcom/amap/api/maps/model/LatLng;

    .line 19
    invoke-virtual {v5}, Lcom/amap/api/trace/TraceLocation;->getLatitude()D

    move-result-wide v8

    .line 20
    invoke-virtual {v5}, Lcom/amap/api/trace/TraceLocation;->getLongitude()D

    move-result-wide v10

    invoke-direct {v6, v8, v9, v10, v11}, Lcom/amap/api/maps/model/LatLng;-><init>(DD)V

    .line 21
    iget-object v8, p0, Lcom/amap/api/mapcore/util/y4$a;->g:Lcom/amap/api/mapcore/util/y4;

    invoke-static {v8}, Lcom/amap/api/mapcore/util/y4;->n(Lcom/amap/api/mapcore/util/y4;)Lcom/amap/api/maps/CoordinateConverter;

    move-result-object v8

    invoke-virtual {v8, v6}, Lcom/amap/api/maps/CoordinateConverter;->coord(Lcom/amap/api/maps/model/LatLng;)Lcom/amap/api/maps/CoordinateConverter;

    .line 22
    iget-object v6, p0, Lcom/amap/api/mapcore/util/y4$a;->g:Lcom/amap/api/mapcore/util/y4;

    invoke-static {v6}, Lcom/amap/api/mapcore/util/y4;->n(Lcom/amap/api/mapcore/util/y4;)Lcom/amap/api/maps/CoordinateConverter;

    move-result-object v6

    .line 23
    invoke-virtual {v6}, Lcom/amap/api/maps/CoordinateConverter;->convert()Lcom/amap/api/maps/model/LatLng;

    move-result-object v6

    if-eqz v6, :cond_7

    .line 24
    iget-wide v8, v6, Lcom/amap/api/maps/model/LatLng;->latitude:D

    invoke-virtual {v5, v8, v9}, Lcom/amap/api/trace/TraceLocation;->setLatitude(D)V

    .line 25
    iget-wide v8, v6, Lcom/amap/api/maps/model/LatLng;->longitude:D

    invoke-virtual {v5, v8, v9}, Lcom/amap/api/trace/TraceLocation;->setLongitude(D)V

    .line 26
    :cond_7
    invoke-interface {v7, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_4
    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    .line 27
    :cond_8
    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v4

    if-lt v4, v2, :cond_a

    .line 28
    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v4

    if-le v4, v3, :cond_9

    goto :goto_5

    .line 29
    :cond_9
    new-instance v14, Lcom/amap/api/mapcore/util/x4;

    iget-object v4, p0, Lcom/amap/api/mapcore/util/y4$a;->g:Lcom/amap/api/mapcore/util/y4;

    invoke-static {v4}, Lcom/amap/api/mapcore/util/y4;->o(Lcom/amap/api/mapcore/util/y4;)Landroid/content/Context;

    move-result-object v5

    iget-object v4, p0, Lcom/amap/api/mapcore/util/y4$a;->g:Lcom/amap/api/mapcore/util/y4;

    invoke-static {v4}, Lcom/amap/api/mapcore/util/y4;->m(Lcom/amap/api/mapcore/util/y4;)Lcom/amap/api/mapcore/util/y4$c;

    move-result-object v6

    iget v8, p0, Lcom/amap/api/mapcore/util/y4$a;->b:I

    iget-object v9, p0, Lcom/amap/api/mapcore/util/y4$a;->e:Ljava/lang/String;

    iget v10, p0, Lcom/amap/api/mapcore/util/y4$a;->c:I

    move-object v4, v14

    move v11, v12

    invoke-direct/range {v4 .. v11}, Lcom/amap/api/mapcore/util/x4;-><init>(Landroid/content/Context;Landroid/os/Handler;Ljava/util/List;ILjava/lang/String;II)V

    .line 30
    iget-object v4, p0, Lcom/amap/api/mapcore/util/y4$a;->g:Lcom/amap/api/mapcore/util/y4;

    invoke-static {v4}, Lcom/amap/api/mapcore/util/y4;->p(Lcom/amap/api/mapcore/util/y4;)Ljava/util/concurrent/ExecutorService;

    move-result-object v4

    invoke-interface {v4, v14}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    add-int/lit8 v12, v12, 0x1

    const-wide/16 v4, 0x32

    .line 31
    :try_start_1
    invoke-static {v4, v5}, Ljava/lang/Thread;->sleep(J)V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_5

    :catch_0
    move-exception v4

    .line 32
    :try_start_2
    invoke-virtual {v4}, Ljava/lang/InterruptedException;->printStackTrace()V

    :cond_a
    :goto_5
    move v4, v13

    goto/16 :goto_1

    .line 33
    :cond_b
    :goto_6
    invoke-static {}, Lcom/amap/api/mapcore/util/z4;->b()Lcom/amap/api/mapcore/util/z4;

    move-result-object v0

    iget-object v1, p0, Lcom/amap/api/mapcore/util/y4$a;->g:Lcom/amap/api/mapcore/util/y4;

    invoke-static {v1}, Lcom/amap/api/mapcore/util/y4;->m(Lcom/amap/api/mapcore/util/y4;)Lcom/amap/api/mapcore/util/y4$c;

    move-result-object v1

    iget v2, p0, Lcom/amap/api/mapcore/util/y4$a;->c:I

    const-string v3, "\u8f68\u8ff9\u70b9\u592a\u5c11\u6216\u8ddd\u79bb\u592a\u8fd1,\u8f68\u8ff9\u7ea0\u504f\u5931\u8d25"

    invoke-virtual {v0, v1, v2, v3}, Lcom/amap/api/mapcore/util/z4;->c(Landroid/os/Handler;ILjava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    return-void

    :catchall_0
    move-exception v0

    .line 34
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_c
    return-void
.end method
