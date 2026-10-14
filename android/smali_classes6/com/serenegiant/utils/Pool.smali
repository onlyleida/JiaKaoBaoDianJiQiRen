.class public abstract Lcom/serenegiant/utils/Pool;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field private mCreatedObjects:I

.field private final mInitNum:I

.field private final mLimitNum:I

.field private final mMaxNumInPool:I

.field private final mPool:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "TT;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(II)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2, p2}, Lcom/serenegiant/utils/Pool;-><init>(III)V

    return-void
.end method

.method public constructor <init>(III)V
    .locals 1

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/serenegiant/utils/Pool;->mPool:Ljava/util/List;

    .line 4
    iput p1, p0, Lcom/serenegiant/utils/Pool;->mInitNum:I

    if-ge p2, p3, :cond_0

    goto :goto_0

    :cond_0
    move p2, p3

    .line 5
    :goto_0
    iput p2, p0, Lcom/serenegiant/utils/Pool;->mMaxNumInPool:I

    .line 6
    iput p3, p0, Lcom/serenegiant/utils/Pool;->mLimitNum:I

    .line 7
    invoke-virtual {p0}, Lcom/serenegiant/utils/Pool;->init()V

    return-void
.end method


# virtual methods
.method public clear()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/serenegiant/utils/Pool;->mPool:Ljava/util/List;

    monitor-enter v0

    .line 2
    :try_start_0
    iget-object v1, p0, Lcom/serenegiant/utils/Pool;->mPool:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    const/4 v1, 0x0

    .line 3
    iput v1, p0, Lcom/serenegiant/utils/Pool;->mCreatedObjects:I

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

.method protected varargs abstract createObject([Ljava/lang/Object;)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/Object;",
            ")TT;"
        }
    .end annotation
.end method

.method public init()V
    .locals 4

    .line 1
    invoke-virtual {p0}, Lcom/serenegiant/utils/Pool;->clear()V

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 2
    :goto_0
    iget v2, p0, Lcom/serenegiant/utils/Pool;->mInitNum:I

    if-ge v1, v2, :cond_1

    iget v2, p0, Lcom/serenegiant/utils/Pool;->mMaxNumInPool:I

    if-ge v1, v2, :cond_1

    new-array v2, v0, [Ljava/lang/Object;

    .line 3
    invoke-virtual {p0, v2}, Lcom/serenegiant/utils/Pool;->createObject([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 4
    iget-object v3, p0, Lcom/serenegiant/utils/Pool;->mPool:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 5
    iget v2, p0, Lcom/serenegiant/utils/Pool;->mCreatedObjects:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/serenegiant/utils/Pool;->mCreatedObjects:I

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public varargs obtain([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/Object;",
            ")TT;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/serenegiant/utils/Pool;->mPool:Ljava/util/List;

    monitor-enter v0

    .line 2
    :try_start_0
    iget-object v1, p0, Lcom/serenegiant/utils/Pool;->mPool:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    .line 3
    iget-object v1, p0, Lcom/serenegiant/utils/Pool;->mPool:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-interface {v1, v2}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object v1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    if-nez v1, :cond_1

    .line 4
    iget v2, p0, Lcom/serenegiant/utils/Pool;->mCreatedObjects:I

    iget v3, p0, Lcom/serenegiant/utils/Pool;->mLimitNum:I

    if-ge v2, v3, :cond_1

    .line 5
    invoke-virtual {p0, p1}, Lcom/serenegiant/utils/Pool;->createObject([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 6
    iget p1, p0, Lcom/serenegiant/utils/Pool;->mCreatedObjects:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lcom/serenegiant/utils/Pool;->mCreatedObjects:I

    .line 7
    :cond_1
    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public recycle(Ljava/lang/Object;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/serenegiant/utils/Pool;->mPool:Ljava/util/List;

    monitor-enter v0

    .line 2
    :try_start_0
    iget-object v1, p0, Lcom/serenegiant/utils/Pool;->mPool:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    iget v2, p0, Lcom/serenegiant/utils/Pool;->mMaxNumInPool:I

    if-ge v1, v2, :cond_0

    .line 3
    iget-object v1, p0, Lcom/serenegiant/utils/Pool;->mPool:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 4
    :cond_0
    iget p1, p0, Lcom/serenegiant/utils/Pool;->mCreatedObjects:I

    add-int/lit8 p1, p1, -0x1

    iput p1, p0, Lcom/serenegiant/utils/Pool;->mCreatedObjects:I

    .line 5
    :goto_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public recycle(Ljava/util/Collection;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "TT;>;)V"
        }
    .end annotation

    .line 6
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 7
    invoke-virtual {p0, v0}, Lcom/serenegiant/utils/Pool;->recycle(Ljava/lang/Object;)V

    goto :goto_0

    :cond_1
    return-void
.end method

.method public recycle([Ljava/lang/Object;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([TT;)V"
        }
    .end annotation

    .line 8
    array-length v0, p1

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    aget-object v2, p1, v1

    if-eqz v2, :cond_0

    .line 9
    invoke-virtual {p0, v2}, Lcom/serenegiant/utils/Pool;->recycle(Ljava/lang/Object;)V

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method
