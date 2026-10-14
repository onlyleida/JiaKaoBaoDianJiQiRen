.class Lcom/amap/api/maps/utils/overlay/SmoothMoveMarker$c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amap/api/maps/utils/overlay/SmoothMoveMarker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "c"
.end annotation


# instance fields
.field final synthetic a:Lcom/amap/api/maps/utils/overlay/SmoothMoveMarker;


# direct methods
.method private constructor <init>(Lcom/amap/api/maps/utils/overlay/SmoothMoveMarker;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/amap/api/maps/utils/overlay/SmoothMoveMarker$c;->a:Lcom/amap/api/maps/utils/overlay/SmoothMoveMarker;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/amap/api/maps/utils/overlay/SmoothMoveMarker;Lcom/amap/api/maps/utils/overlay/SmoothMoveMarker$1;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1}, Lcom/amap/api/maps/utils/overlay/SmoothMoveMarker$c;-><init>(Lcom/amap/api/maps/utils/overlay/SmoothMoveMarker;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/amap/api/maps/utils/overlay/SmoothMoveMarker$c;->a:Lcom/amap/api/maps/utils/overlay/SmoothMoveMarker;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-static {v0, v1, v2}, Lcom/amap/api/maps/utils/overlay/SmoothMoveMarker;->access$202(Lcom/amap/api/maps/utils/overlay/SmoothMoveMarker;J)J

    .line 2
    iget-object v0, p0, Lcom/amap/api/maps/utils/overlay/SmoothMoveMarker$c;->a:Lcom/amap/api/maps/utils/overlay/SmoothMoveMarker;

    sget-object v1, Lcom/amap/api/maps/utils/overlay/SmoothMoveMarker$a;->b:Lcom/amap/api/maps/utils/overlay/SmoothMoveMarker$a;

    invoke-static {v0, v1}, Lcom/amap/api/maps/utils/overlay/SmoothMoveMarker;->access$302(Lcom/amap/api/maps/utils/overlay/SmoothMoveMarker;Lcom/amap/api/maps/utils/overlay/SmoothMoveMarker$a;)Lcom/amap/api/maps/utils/overlay/SmoothMoveMarker$a;

    .line 3
    iget-object v0, p0, Lcom/amap/api/maps/utils/overlay/SmoothMoveMarker$c;->a:Lcom/amap/api/maps/utils/overlay/SmoothMoveMarker;

    iget-object v0, v0, Lcom/amap/api/maps/utils/overlay/SmoothMoveMarker;->exitFlag:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 4
    :goto_0
    iget-object v0, p0, Lcom/amap/api/maps/utils/overlay/SmoothMoveMarker$c;->a:Lcom/amap/api/maps/utils/overlay/SmoothMoveMarker;

    iget-object v0, v0, Lcom/amap/api/maps/utils/overlay/SmoothMoveMarker;->exitFlag:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/amap/api/maps/utils/overlay/SmoothMoveMarker$c;->a:Lcom/amap/api/maps/utils/overlay/SmoothMoveMarker;

    invoke-static {v0}, Lcom/amap/api/maps/utils/overlay/SmoothMoveMarker;->access$400(Lcom/amap/api/maps/utils/overlay/SmoothMoveMarker;)I

    move-result v0

    iget-object v1, p0, Lcom/amap/api/maps/utils/overlay/SmoothMoveMarker$c;->a:Lcom/amap/api/maps/utils/overlay/SmoothMoveMarker;

    invoke-static {v1}, Lcom/amap/api/maps/utils/overlay/SmoothMoveMarker;->access$500(Lcom/amap/api/maps/utils/overlay/SmoothMoveMarker;)Ljava/util/LinkedList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/LinkedList;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    if-gt v0, v1, :cond_3

    .line 5
    iget-object v0, p0, Lcom/amap/api/maps/utils/overlay/SmoothMoveMarker$c;->a:Lcom/amap/api/maps/utils/overlay/SmoothMoveMarker;

    invoke-static {v0}, Lcom/amap/api/maps/utils/overlay/SmoothMoveMarker;->access$600(Lcom/amap/api/maps/utils/overlay/SmoothMoveMarker;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 6
    :try_start_1
    iget-object v1, p0, Lcom/amap/api/maps/utils/overlay/SmoothMoveMarker$c;->a:Lcom/amap/api/maps/utils/overlay/SmoothMoveMarker;

    iget-object v1, v1, Lcom/amap/api/maps/utils/overlay/SmoothMoveMarker;->exitFlag:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 7
    monitor-exit v0

    return-void

    .line 8
    :cond_0
    iget-object v1, p0, Lcom/amap/api/maps/utils/overlay/SmoothMoveMarker$c;->a:Lcom/amap/api/maps/utils/overlay/SmoothMoveMarker;

    invoke-static {v1}, Lcom/amap/api/maps/utils/overlay/SmoothMoveMarker;->access$300(Lcom/amap/api/maps/utils/overlay/SmoothMoveMarker;)Lcom/amap/api/maps/utils/overlay/SmoothMoveMarker$a;

    move-result-object v1

    sget-object v2, Lcom/amap/api/maps/utils/overlay/SmoothMoveMarker$a;->d:Lcom/amap/api/maps/utils/overlay/SmoothMoveMarker$a;

    if-eq v1, v2, :cond_2

    .line 9
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    iget-object v3, p0, Lcom/amap/api/maps/utils/overlay/SmoothMoveMarker$c;->a:Lcom/amap/api/maps/utils/overlay/SmoothMoveMarker;

    invoke-static {v3}, Lcom/amap/api/maps/utils/overlay/SmoothMoveMarker;->access$200(Lcom/amap/api/maps/utils/overlay/SmoothMoveMarker;)J

    move-result-wide v3

    sub-long/2addr v1, v3

    .line 10
    iget-object v3, p0, Lcom/amap/api/maps/utils/overlay/SmoothMoveMarker$c;->a:Lcom/amap/api/maps/utils/overlay/SmoothMoveMarker;

    invoke-static {v3, v1, v2}, Lcom/amap/api/maps/utils/overlay/SmoothMoveMarker;->access$700(Lcom/amap/api/maps/utils/overlay/SmoothMoveMarker;J)Lcom/autonavi/amap/mapcore/IPoint;

    move-result-object v1

    .line 11
    iget-object v2, p0, Lcom/amap/api/maps/utils/overlay/SmoothMoveMarker$c;->a:Lcom/amap/api/maps/utils/overlay/SmoothMoveMarker;

    invoke-static {v2}, Lcom/amap/api/maps/utils/overlay/SmoothMoveMarker;->access$800(Lcom/amap/api/maps/utils/overlay/SmoothMoveMarker;)Lcom/amap/api/maps/model/Marker;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 12
    iget-object v2, p0, Lcom/amap/api/maps/utils/overlay/SmoothMoveMarker$c;->a:Lcom/amap/api/maps/utils/overlay/SmoothMoveMarker;

    invoke-static {v2}, Lcom/amap/api/maps/utils/overlay/SmoothMoveMarker;->access$800(Lcom/amap/api/maps/utils/overlay/SmoothMoveMarker;)Lcom/amap/api/maps/model/Marker;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/amap/api/maps/model/Marker;->setGeoPoint(Lcom/autonavi/amap/mapcore/IPoint;)V

    .line 13
    :cond_1
    iget-object v1, p0, Lcom/amap/api/maps/utils/overlay/SmoothMoveMarker$c;->a:Lcom/amap/api/maps/utils/overlay/SmoothMoveMarker;

    sget-object v2, Lcom/amap/api/maps/utils/overlay/SmoothMoveMarker$a;->c:Lcom/amap/api/maps/utils/overlay/SmoothMoveMarker$a;

    invoke-static {v1, v2}, Lcom/amap/api/maps/utils/overlay/SmoothMoveMarker;->access$302(Lcom/amap/api/maps/utils/overlay/SmoothMoveMarker;Lcom/amap/api/maps/utils/overlay/SmoothMoveMarker$a;)Lcom/amap/api/maps/utils/overlay/SmoothMoveMarker$a;

    .line 14
    :cond_2
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 15
    :try_start_2
    iget-object v0, p0, Lcom/amap/api/maps/utils/overlay/SmoothMoveMarker$c;->a:Lcom/amap/api/maps/utils/overlay/SmoothMoveMarker;

    invoke-static {v0}, Lcom/amap/api/maps/utils/overlay/SmoothMoveMarker;->access$900(Lcom/amap/api/maps/utils/overlay/SmoothMoveMarker;)J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    goto :goto_0

    :catchall_0
    move-exception v1

    .line 16
    :try_start_3
    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    throw v1

    .line 17
    :cond_3
    iget-object v0, p0, Lcom/amap/api/maps/utils/overlay/SmoothMoveMarker$c;->a:Lcom/amap/api/maps/utils/overlay/SmoothMoveMarker;

    sget-object v1, Lcom/amap/api/maps/utils/overlay/SmoothMoveMarker$a;->e:Lcom/amap/api/maps/utils/overlay/SmoothMoveMarker$a;

    invoke-static {v0, v1}, Lcom/amap/api/maps/utils/overlay/SmoothMoveMarker;->access$302(Lcom/amap/api/maps/utils/overlay/SmoothMoveMarker;Lcom/amap/api/maps/utils/overlay/SmoothMoveMarker$a;)Lcom/amap/api/maps/utils/overlay/SmoothMoveMarker$a;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    goto :goto_1

    :catchall_1
    move-exception v0

    .line 18
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_1
    return-void
.end method
