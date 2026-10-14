.class public Lcn/mucang/sundial/android/tcp/PacketResponseObserver;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/mucang/sundial/android/tcp/PacketResponseObserver$RequestResultListener;,
        Lcn/mucang/sundial/android/tcp/PacketResponseObserver$ObserveRequest;
    }
.end annotation


# static fields
.field private static final INSTANCE:Lcn/mucang/sundial/android/tcp/PacketResponseObserver;

.field private static final TIMEOUT:I = 0x3a98


# instance fields
.field private final handler:Landroid/os/Handler;

.field private final lock:Ljava/lang/Object;

.field private final requests:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Lcn/mucang/sundial/android/tcp/PacketResponseObserver$ObserveRequest;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lcn/mucang/sundial/android/tcp/PacketResponseObserver;

    invoke-direct {v0}, Lcn/mucang/sundial/android/tcp/PacketResponseObserver;-><init>()V

    sput-object v0, Lcn/mucang/sundial/android/tcp/PacketResponseObserver;->INSTANCE:Lcn/mucang/sundial/android/tcp/PacketResponseObserver;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcn/mucang/sundial/android/tcp/PacketResponseObserver;->handler:Landroid/os/Handler;

    .line 3
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcn/mucang/sundial/android/tcp/PacketResponseObserver;->requests:Landroid/util/SparseArray;

    .line 4
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcn/mucang/sundial/android/tcp/PacketResponseObserver;->lock:Ljava/lang/Object;

    return-void
.end method

.method public static getInstance()Lcn/mucang/sundial/android/tcp/PacketResponseObserver;
    .locals 1

    .line 1
    sget-object v0, Lcn/mucang/sundial/android/tcp/PacketResponseObserver;->INSTANCE:Lcn/mucang/sundial/android/tcp/PacketResponseObserver;

    return-object v0
.end method


# virtual methods
.method observe(Lcn/mucang/sundial/android/tcp/PacketResponseObserver$ObserveRequest;)V
    .locals 5

    .line 1
    invoke-static {p1}, Lcn/mucang/sundial/android/tcp/PacketResponseObserver$ObserveRequest;->access$000(Lcn/mucang/sundial/android/tcp/PacketResponseObserver$ObserveRequest;)Ljava/util/Set;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 2
    invoke-interface {v0}, Ljava/util/Set;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_1

    .line 3
    :cond_0
    iget-object v1, p0, Lcn/mucang/sundial/android/tcp/PacketResponseObserver;->handler:Landroid/os/Handler;

    iget-object v2, p1, Lcn/mucang/sundial/android/tcp/PacketResponseObserver$ObserveRequest;->timeOutRunnable:Ljava/lang/Runnable;

    const-wide/16 v3, 0x3a98

    invoke-virtual {v1, v2, v3, v4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 4
    iget-object v1, p0, Lcn/mucang/sundial/android/tcp/PacketResponseObserver;->lock:Ljava/lang/Object;

    monitor-enter v1

    .line 5
    :try_start_0
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    .line 6
    iget-object v3, p0, Lcn/mucang/sundial/android/tcp/PacketResponseObserver;->requests:Landroid/util/SparseArray;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual {v3, v2, p1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    goto :goto_0

    .line 7
    :cond_1
    monitor-exit v1

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1

    .line 8
    :cond_2
    :goto_1
    invoke-static {p1}, Lcn/mucang/sundial/android/tcp/PacketResponseObserver$ObserveRequest;->access$100(Lcn/mucang/sundial/android/tcp/PacketResponseObserver$ObserveRequest;)Lcn/mucang/sundial/android/tcp/PacketResponseObserver$RequestResultListener;

    move-result-object p1

    if-eqz p1, :cond_3

    const/4 v0, 0x1

    .line 9
    invoke-interface {p1, v0}, Lcn/mucang/sundial/android/tcp/PacketResponseObserver$RequestResultListener;->onResult(Z)V

    :cond_3
    return-void
.end method

.method public onPacketResponse(IZ)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcn/mucang/sundial/android/tcp/PacketResponseObserver;->lock:Ljava/lang/Object;

    monitor-enter v0

    .line 2
    :try_start_0
    iget-object v1, p0, Lcn/mucang/sundial/android/tcp/PacketResponseObserver;->requests:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcn/mucang/sundial/android/tcp/PacketResponseObserver$ObserveRequest;

    if-eqz v1, :cond_0

    .line 3
    iget-object v2, p0, Lcn/mucang/sundial/android/tcp/PacketResponseObserver;->requests:Landroid/util/SparseArray;

    invoke-virtual {v2, p1}, Landroid/util/SparseArray;->remove(I)V

    .line 4
    invoke-static {v1, p1, p2}, Lcn/mucang/sundial/android/tcp/PacketResponseObserver$ObserveRequest;->access$200(Lcn/mucang/sundial/android/tcp/PacketResponseObserver$ObserveRequest;IZ)V

    .line 5
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

.method stopObserve(Lcn/mucang/sundial/android/tcp/PacketResponseObserver$ObserveRequest;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcn/mucang/sundial/android/tcp/PacketResponseObserver;->handler:Landroid/os/Handler;

    iget-object v1, p1, Lcn/mucang/sundial/android/tcp/PacketResponseObserver$ObserveRequest;->timeOutRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 2
    invoke-static {p1}, Lcn/mucang/sundial/android/tcp/PacketResponseObserver$ObserveRequest;->access$000(Lcn/mucang/sundial/android/tcp/PacketResponseObserver$ObserveRequest;)Ljava/util/Set;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 3
    invoke-interface {p1}, Ljava/util/Set;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    .line 4
    iget-object v0, p0, Lcn/mucang/sundial/android/tcp/PacketResponseObserver;->lock:Ljava/lang/Object;

    monitor-enter v0

    .line 5
    :try_start_0
    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    .line 6
    iget-object v2, p0, Lcn/mucang/sundial/android/tcp/PacketResponseObserver;->requests:Landroid/util/SparseArray;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {v2, v1}, Landroid/util/SparseArray;->remove(I)V

    goto :goto_0

    .line 7
    :cond_0
    monitor-exit v0

    goto :goto_1

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1

    :cond_1
    :goto_1
    return-void
.end method
