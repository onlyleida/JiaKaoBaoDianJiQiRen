.class public abstract Lcom/serenegiant/glutils/AbstractRendererHolder$BaseRendererTask;
.super Lcom/serenegiant/glutils/EglTask;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/serenegiant/glutils/AbstractRendererHolder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x40c
    name = "BaseRendererTask"
.end annotation


# instance fields
.field private final mClients:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Lcom/serenegiant/glutils/RendererSurfaceRec;",
            ">;"
        }
    .end annotation
.end field

.field private volatile mIsFirstFrameRendered:Z

.field private mMasterSurface:Landroid/view/Surface;

.field private mMasterTexture:Landroid/graphics/SurfaceTexture;

.field private mMirror:I

.field protected final mOnFrameAvailableListener:Landroid/graphics/SurfaceTexture$OnFrameAvailableListener;

.field private final mParent:Lcom/serenegiant/glutils/AbstractRendererHolder;

.field private mRotation:I

.field mTexId:I

.field final mTexMatrix:[F

.field private mVideoHeight:I

.field private mVideoWidth:I


# direct methods
.method public constructor <init>(Lcom/serenegiant/glutils/AbstractRendererHolder;II)V
    .locals 7

    const/4 v4, 0x3

    const/4 v5, 0x0

    const/4 v6, 0x2

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    .line 1
    invoke-direct/range {v0 .. v6}, Lcom/serenegiant/glutils/AbstractRendererHolder$BaseRendererTask;-><init>(Lcom/serenegiant/glutils/AbstractRendererHolder;IIILcom/serenegiant/glutils/EGLBase$IContext;I)V

    return-void
.end method

.method public constructor <init>(Lcom/serenegiant/glutils/AbstractRendererHolder;IIILcom/serenegiant/glutils/EGLBase$IContext;I)V
    .locals 0

    .line 2
    invoke-direct {p0, p4, p5, p6}, Lcom/serenegiant/glutils/EglTask;-><init>(ILcom/serenegiant/glutils/EGLBase$IContext;I)V

    .line 3
    new-instance p4, Landroid/util/SparseArray;

    invoke-direct {p4}, Landroid/util/SparseArray;-><init>()V

    iput-object p4, p0, Lcom/serenegiant/glutils/AbstractRendererHolder$BaseRendererTask;->mClients:Landroid/util/SparseArray;

    const/16 p4, 0x10

    new-array p4, p4, [F

    .line 4
    iput-object p4, p0, Lcom/serenegiant/glutils/AbstractRendererHolder$BaseRendererTask;->mTexMatrix:[F

    const/4 p4, 0x0

    .line 5
    iput p4, p0, Lcom/serenegiant/glutils/AbstractRendererHolder$BaseRendererTask;->mMirror:I

    .line 6
    iput p4, p0, Lcom/serenegiant/glutils/AbstractRendererHolder$BaseRendererTask;->mRotation:I

    .line 7
    new-instance p4, Lcom/serenegiant/glutils/AbstractRendererHolder$BaseRendererTask$1;

    invoke-direct {p4, p0}, Lcom/serenegiant/glutils/AbstractRendererHolder$BaseRendererTask$1;-><init>(Lcom/serenegiant/glutils/AbstractRendererHolder$BaseRendererTask;)V

    iput-object p4, p0, Lcom/serenegiant/glutils/AbstractRendererHolder$BaseRendererTask;->mOnFrameAvailableListener:Landroid/graphics/SurfaceTexture$OnFrameAvailableListener;

    .line 8
    iput-object p1, p0, Lcom/serenegiant/glutils/AbstractRendererHolder$BaseRendererTask;->mParent:Lcom/serenegiant/glutils/AbstractRendererHolder;

    if-lez p2, :cond_0

    goto :goto_0

    :cond_0
    const/16 p2, 0x280

    .line 9
    :goto_0
    iput p2, p0, Lcom/serenegiant/glutils/AbstractRendererHolder$BaseRendererTask;->mVideoWidth:I

    if-lez p3, :cond_1

    goto :goto_1

    :cond_1
    const/16 p3, 0x1e0

    .line 10
    :goto_1
    iput p3, p0, Lcom/serenegiant/glutils/AbstractRendererHolder$BaseRendererTask;->mVideoHeight:I

    return-void
.end method

.method static synthetic access$202(Lcom/serenegiant/glutils/AbstractRendererHolder$BaseRendererTask;Z)Z
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/serenegiant/glutils/AbstractRendererHolder$BaseRendererTask;->mIsFirstFrameRendered:Z

    return p1
.end method


# virtual methods
.method public addSurface(ILjava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;,
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    const/4 v0, -0x1

    .line 1
    invoke-virtual {p0, p1, p2, v0}, Lcom/serenegiant/glutils/AbstractRendererHolder$BaseRendererTask;->addSurface(ILjava/lang/Object;I)V

    return-void
.end method

.method public addSurface(ILjava/lang/Object;I)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;,
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .line 2
    invoke-virtual {p0}, Lcom/serenegiant/glutils/AbstractRendererHolder$BaseRendererTask;->checkFinished()V

    .line 3
    instance-of v0, p2, Landroid/graphics/SurfaceTexture;

    if-nez v0, :cond_1

    instance-of v0, p2, Landroid/view/Surface;

    if-nez v0, :cond_1

    instance-of v0, p2, Landroid/view/SurfaceHolder;

    if-eqz v0, :cond_0

    goto :goto_0

    .line 4
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Surface should be one of Surface, SurfaceTexture or SurfaceHolder"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 5
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/serenegiant/glutils/AbstractRendererHolder$BaseRendererTask;->mClients:Landroid/util/SparseArray;

    monitor-enter v0

    .line 6
    :try_start_0
    iget-object v1, p0, Lcom/serenegiant/glutils/AbstractRendererHolder$BaseRendererTask;->mClients:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_3

    .line 7
    :goto_1
    invoke-virtual {p0}, Lcom/serenegiant/utils/MessageTask;->isRunning()Z

    move-result v1

    if-eqz v1, :cond_3

    const/4 v1, 0x3

    .line 8
    invoke-virtual {p0, v1, p1, p3, p2}, Lcom/serenegiant/utils/MessageTask;->offer(IIILjava/lang/Object;)Z

    move-result v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_2

    .line 9
    :try_start_1
    iget-object p1, p0, Lcom/serenegiant/glutils/AbstractRendererHolder$BaseRendererTask;->mClients:Landroid/util/SparseArray;

    invoke-virtual {p1}, Ljava/lang/Object;->wait()V

    goto :goto_2

    .line 10
    :cond_2
    iget-object v1, p0, Lcom/serenegiant/glutils/AbstractRendererHolder$BaseRendererTask;->mClients:Landroid/util/SparseArray;

    const-wide/16 v2, 0x5

    invoke-virtual {v1, v2, v3}, Ljava/lang/Object;->wait(J)V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 11
    :catch_0
    :cond_3
    :goto_2
    :try_start_2
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p1
.end method

.method protected checkFinished()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lcom/serenegiant/utils/MessageTask;->isFinished()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "already finished"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public checkMasterSurface()V
    .locals 3

    .line 1
    invoke-virtual {p0}, Lcom/serenegiant/glutils/AbstractRendererHolder$BaseRendererTask;->checkFinished()V

    .line 2
    iget-object v0, p0, Lcom/serenegiant/glutils/AbstractRendererHolder$BaseRendererTask;->mMasterSurface:Landroid/view/Surface;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/view/Surface;->isValid()Z

    move-result v0

    if-nez v0, :cond_1

    .line 3
    :cond_0
    invoke-static {}, Lcom/serenegiant/glutils/AbstractRendererHolder;->access$100()Ljava/lang/String;

    move-result-object v0

    const-string v1, "checkMasterSurface:invalid master surface"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x5

    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 4
    invoke-virtual {p0, v0, v2, v2, v1}, Lcom/serenegiant/utils/MessageTask;->offerAndWait(IIILjava/lang/Object;)Ljava/lang/Object;

    :cond_1
    return-void
.end method

.method protected checkSurface()V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/serenegiant/glutils/AbstractRendererHolder$BaseRendererTask;->mClients:Landroid/util/SparseArray;

    monitor-enter v0

    .line 2
    :try_start_0
    iget-object v1, p0, Lcom/serenegiant/glutils/AbstractRendererHolder$BaseRendererTask;->mClients:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    .line 3
    iget-object v3, p0, Lcom/serenegiant/glutils/AbstractRendererHolder$BaseRendererTask;->mClients:Landroid/util/SparseArray;

    invoke-virtual {v3, v2}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/serenegiant/glutils/RendererSurfaceRec;

    if-eqz v3, :cond_0

    .line 4
    invoke-virtual {v3}, Lcom/serenegiant/glutils/RendererSurfaceRec;->isValid()Z

    move-result v3

    if-nez v3, :cond_0

    .line 5
    iget-object v3, p0, Lcom/serenegiant/glutils/AbstractRendererHolder$BaseRendererTask;->mClients:Landroid/util/SparseArray;

    invoke-virtual {v3, v2}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v3

    .line 6
    iget-object v4, p0, Lcom/serenegiant/glutils/AbstractRendererHolder$BaseRendererTask;->mClients:Landroid/util/SparseArray;

    invoke-virtual {v4, v2}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/serenegiant/glutils/RendererSurfaceRec;

    invoke-virtual {v4}, Lcom/serenegiant/glutils/RendererSurfaceRec;->release()V

    .line 7
    iget-object v4, p0, Lcom/serenegiant/glutils/AbstractRendererHolder$BaseRendererTask;->mClients:Landroid/util/SparseArray;

    invoke-virtual {v4, v3}, Landroid/util/SparseArray;->remove(I)V

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 8
    :cond_1
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public clearSurface(II)V
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/serenegiant/glutils/AbstractRendererHolder$BaseRendererTask;->checkFinished()V

    const/16 v0, 0x8

    .line 2
    invoke-virtual {p0, v0, p1, p2}, Lcom/serenegiant/utils/MessageTask;->offer(III)Z

    return-void
.end method

.method public clearSurfaceAll(I)V
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/serenegiant/glutils/AbstractRendererHolder$BaseRendererTask;->checkFinished()V

    const/16 v0, 0x9

    .line 2
    invoke-virtual {p0, v0, p1}, Lcom/serenegiant/utils/MessageTask;->offer(II)Z

    return-void
.end method

.method public getCount()I
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/serenegiant/glutils/AbstractRendererHolder$BaseRendererTask;->mClients:Landroid/util/SparseArray;

    monitor-enter v0

    .line 2
    :try_start_0
    iget-object v1, p0, Lcom/serenegiant/glutils/AbstractRendererHolder$BaseRendererTask;->mClients:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v1

    monitor-exit v0

    return v1

    :catchall_0
    move-exception v1

    .line 3
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method protected getParent()Lcom/serenegiant/glutils/AbstractRendererHolder;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/serenegiant/glutils/AbstractRendererHolder$BaseRendererTask;->mParent:Lcom/serenegiant/glutils/AbstractRendererHolder;

    return-object v0
.end method

.method public getSurface()Landroid/view/Surface;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/serenegiant/glutils/AbstractRendererHolder$BaseRendererTask;->checkMasterSurface()V

    .line 2
    iget-object v0, p0, Lcom/serenegiant/glutils/AbstractRendererHolder$BaseRendererTask;->mMasterSurface:Landroid/view/Surface;

    return-object v0
.end method

.method public getSurfaceTexture()Landroid/graphics/SurfaceTexture;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/serenegiant/glutils/AbstractRendererHolder$BaseRendererTask;->checkMasterSurface()V

    .line 2
    iget-object v0, p0, Lcom/serenegiant/glutils/AbstractRendererHolder$BaseRendererTask;->mMasterTexture:Landroid/graphics/SurfaceTexture;

    return-object v0
.end method

.method protected handleAddSurface(ILjava/lang/Object;I)V
    .locals 3

    .line 1
    invoke-virtual {p0}, Lcom/serenegiant/glutils/AbstractRendererHolder$BaseRendererTask;->checkSurface()V

    .line 2
    iget-object v0, p0, Lcom/serenegiant/glutils/AbstractRendererHolder$BaseRendererTask;->mClients:Landroid/util/SparseArray;

    monitor-enter v0

    .line 3
    :try_start_0
    iget-object v1, p0, Lcom/serenegiant/glutils/AbstractRendererHolder$BaseRendererTask;->mClients:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/serenegiant/glutils/RendererSurfaceRec;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v1, :cond_0

    .line 4
    :try_start_1
    invoke-virtual {p0}, Lcom/serenegiant/glutils/EglTask;->getEgl()Lcom/serenegiant/glutils/EGLBase;

    move-result-object v1

    invoke-static {v1, p2, p3}, Lcom/serenegiant/glutils/RendererSurfaceRec;->newInstance(Lcom/serenegiant/glutils/EGLBase;Ljava/lang/Object;I)Lcom/serenegiant/glutils/RendererSurfaceRec;

    move-result-object p3

    .line 5
    iget v1, p0, Lcom/serenegiant/glutils/AbstractRendererHolder$BaseRendererTask;->mMirror:I

    invoke-virtual {p0, p3, v1}, Lcom/serenegiant/glutils/AbstractRendererHolder$BaseRendererTask;->setMirror(Lcom/serenegiant/glutils/RendererSurfaceRec;I)V

    .line 6
    iget-object v1, p0, Lcom/serenegiant/glutils/AbstractRendererHolder$BaseRendererTask;->mClients:Landroid/util/SparseArray;

    invoke-virtual {v1, p1, p3}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 7
    :try_start_2
    invoke-static {}, Lcom/serenegiant/glutils/AbstractRendererHolder;->access$100()Ljava/lang/String;

    move-result-object p3

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "invalid surface: surface="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p3, p2, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 8
    :cond_0
    invoke-static {}, Lcom/serenegiant/glutils/AbstractRendererHolder;->access$100()Ljava/lang/String;

    move-result-object p2

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "surface is already added: id="

    invoke-virtual {p3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 9
    :goto_0
    iget-object p1, p0, Lcom/serenegiant/glutils/AbstractRendererHolder$BaseRendererTask;->mClients:Landroid/util/SparseArray;

    invoke-virtual {p1}, Ljava/lang/Object;->notifyAll()V

    .line 10
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p1
.end method

.method protected handleClear(II)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/serenegiant/glutils/AbstractRendererHolder$BaseRendererTask;->mClients:Landroid/util/SparseArray;

    monitor-enter v0

    .line 2
    :try_start_0
    iget-object v1, p0, Lcom/serenegiant/glutils/AbstractRendererHolder$BaseRendererTask;->mClients:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/serenegiant/glutils/RendererSurfaceRec;

    if-eqz p1, :cond_0

    .line 3
    invoke-virtual {p1}, Lcom/serenegiant/glutils/RendererSurfaceRec;->isValid()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 4
    invoke-virtual {p1, p2}, Lcom/serenegiant/glutils/RendererSurfaceRec;->clear(I)V

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

.method protected handleClearAll(I)V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/serenegiant/glutils/AbstractRendererHolder$BaseRendererTask;->mClients:Landroid/util/SparseArray;

    monitor-enter v0

    .line 2
    :try_start_0
    iget-object v1, p0, Lcom/serenegiant/glutils/AbstractRendererHolder$BaseRendererTask;->mClients:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    .line 3
    iget-object v3, p0, Lcom/serenegiant/glutils/AbstractRendererHolder$BaseRendererTask;->mClients:Landroid/util/SparseArray;

    invoke-virtual {v3, v2}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/serenegiant/glutils/RendererSurfaceRec;

    if-eqz v3, :cond_0

    .line 4
    invoke-virtual {v3}, Lcom/serenegiant/glutils/RendererSurfaceRec;->isValid()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 5
    invoke-virtual {v3, p1}, Lcom/serenegiant/glutils/RendererSurfaceRec;->clear(I)V

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 6
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

.method protected handleDraw()V
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/serenegiant/glutils/AbstractRendererHolder$BaseRendererTask;->mMasterSurface:Landroid/view/Surface;

    const/4 v1, 0x5

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Landroid/view/Surface;->isValid()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_1

    .line 2
    :cond_0
    iget-boolean v0, p0, Lcom/serenegiant/glutils/AbstractRendererHolder$BaseRendererTask;->mIsFirstFrameRendered:Z

    if-eqz v0, :cond_1

    .line 3
    :try_start_0
    invoke-virtual {p0}, Lcom/serenegiant/glutils/EglTask;->makeCurrent()V

    .line 4
    invoke-virtual {p0}, Lcom/serenegiant/glutils/AbstractRendererHolder$BaseRendererTask;->handleUpdateTexture()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 5
    iget-object v0, p0, Lcom/serenegiant/glutils/AbstractRendererHolder$BaseRendererTask;->mParent:Lcom/serenegiant/glutils/AbstractRendererHolder;

    invoke-virtual {v0}, Lcom/serenegiant/glutils/AbstractRendererHolder;->notifyCapture()V

    .line 6
    invoke-virtual {p0}, Lcom/serenegiant/glutils/AbstractRendererHolder$BaseRendererTask;->preprocess()V

    .line 7
    invoke-virtual {p0}, Lcom/serenegiant/glutils/AbstractRendererHolder$BaseRendererTask;->handleDrawClients()V

    .line 8
    iget-object v0, p0, Lcom/serenegiant/glutils/AbstractRendererHolder$BaseRendererTask;->mParent:Lcom/serenegiant/glutils/AbstractRendererHolder;

    invoke-virtual {v0}, Lcom/serenegiant/glutils/AbstractRendererHolder;->callOnFrameAvailable()V

    goto :goto_0

    :catch_0
    move-exception v0

    .line 9
    invoke-static {}, Lcom/serenegiant/glutils/AbstractRendererHolder;->access$100()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "draw:thread id ="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Thread;->getId()J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 10
    invoke-virtual {p0, v1}, Lcom/serenegiant/utils/MessageTask;->offer(I)Z

    return-void

    .line 11
    :cond_1
    :goto_0
    invoke-virtual {p0}, Lcom/serenegiant/glutils/EglTask;->makeCurrent()V

    const/16 v0, 0x4000

    .line 12
    invoke-static {v0}, Landroid/opengl/GLES20;->glClear(I)V

    .line 13
    invoke-static {}, Landroid/opengl/GLES20;->glFlush()V

    return-void

    .line 14
    :cond_2
    :goto_1
    invoke-static {}, Lcom/serenegiant/glutils/AbstractRendererHolder;->access$100()Ljava/lang/String;

    move-result-object v0

    const-string v2, "checkMasterSurface:invalid master surface"

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 15
    invoke-virtual {p0, v1}, Lcom/serenegiant/utils/MessageTask;->offer(I)Z

    return-void
.end method

.method protected handleDrawClients()V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/serenegiant/glutils/AbstractRendererHolder$BaseRendererTask;->mClients:Landroid/util/SparseArray;

    monitor-enter v0

    .line 2
    :try_start_0
    iget-object v1, p0, Lcom/serenegiant/glutils/AbstractRendererHolder$BaseRendererTask;->mClients:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    :goto_0
    if-ltz v1, :cond_1

    .line 3
    iget-object v2, p0, Lcom/serenegiant/glutils/AbstractRendererHolder$BaseRendererTask;->mClients:Landroid/util/SparseArray;

    invoke-virtual {v2, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/serenegiant/glutils/RendererSurfaceRec;

    if-eqz v2, :cond_0

    .line 4
    invoke-virtual {v2}, Lcom/serenegiant/glutils/RendererSurfaceRec;->canDraw()Z

    move-result v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v3, :cond_0

    .line 5
    :try_start_1
    iget v3, p0, Lcom/serenegiant/glutils/AbstractRendererHolder$BaseRendererTask;->mTexId:I

    iget-object v4, p0, Lcom/serenegiant/glutils/AbstractRendererHolder$BaseRendererTask;->mTexMatrix:[F

    invoke-virtual {p0, v2, v3, v4}, Lcom/serenegiant/glutils/AbstractRendererHolder$BaseRendererTask;->onDrawClient(Lcom/serenegiant/glutils/RendererSurfaceRec;I[F)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 6
    :catch_0
    :try_start_2
    iget-object v3, p0, Lcom/serenegiant/glutils/AbstractRendererHolder$BaseRendererTask;->mClients:Landroid/util/SparseArray;

    invoke-virtual {v3, v1}, Landroid/util/SparseArray;->removeAt(I)V

    .line 7
    invoke-virtual {v2}, Lcom/serenegiant/glutils/RendererSurfaceRec;->release()V

    :cond_0
    :goto_1
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 8
    :cond_1
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1
.end method

.method protected handleMirror(I)V
    .locals 4

    .line 1
    iput p1, p0, Lcom/serenegiant/glutils/AbstractRendererHolder$BaseRendererTask;->mMirror:I

    .line 2
    iget-object v0, p0, Lcom/serenegiant/glutils/AbstractRendererHolder$BaseRendererTask;->mClients:Landroid/util/SparseArray;

    monitor-enter v0

    .line 3
    :try_start_0
    iget-object v1, p0, Lcom/serenegiant/glutils/AbstractRendererHolder$BaseRendererTask;->mClients:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    .line 4
    iget-object v3, p0, Lcom/serenegiant/glutils/AbstractRendererHolder$BaseRendererTask;->mClients:Landroid/util/SparseArray;

    invoke-virtual {v3, v2}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/serenegiant/glutils/RendererSurfaceRec;

    if-eqz v3, :cond_0

    .line 5
    invoke-virtual {p0, v3, p1}, Lcom/serenegiant/glutils/AbstractRendererHolder$BaseRendererTask;->setMirror(Lcom/serenegiant/glutils/RendererSurfaceRec;I)V

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 6
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

.method protected handleReCreateMasterSurface()V
    .locals 3
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lcom/serenegiant/glutils/EglTask;->makeCurrent()V

    .line 2
    invoke-virtual {p0}, Lcom/serenegiant/glutils/AbstractRendererHolder$BaseRendererTask;->handleReleaseMasterSurface()V

    .line 3
    invoke-virtual {p0}, Lcom/serenegiant/glutils/EglTask;->makeCurrent()V

    const v0, 0x8d65

    const/16 v1, 0x2600

    .line 4
    invoke-static {v0, v1}, Lcom/serenegiant/glutils/GLHelper;->initTex(II)I

    move-result v0

    iput v0, p0, Lcom/serenegiant/glutils/AbstractRendererHolder$BaseRendererTask;->mTexId:I

    .line 5
    new-instance v0, Landroid/graphics/SurfaceTexture;

    iget v1, p0, Lcom/serenegiant/glutils/AbstractRendererHolder$BaseRendererTask;->mTexId:I

    invoke-direct {v0, v1}, Landroid/graphics/SurfaceTexture;-><init>(I)V

    iput-object v0, p0, Lcom/serenegiant/glutils/AbstractRendererHolder$BaseRendererTask;->mMasterTexture:Landroid/graphics/SurfaceTexture;

    .line 6
    new-instance v0, Landroid/view/Surface;

    iget-object v1, p0, Lcom/serenegiant/glutils/AbstractRendererHolder$BaseRendererTask;->mMasterTexture:Landroid/graphics/SurfaceTexture;

    invoke-direct {v0, v1}, Landroid/view/Surface;-><init>(Landroid/graphics/SurfaceTexture;)V

    iput-object v0, p0, Lcom/serenegiant/glutils/AbstractRendererHolder$BaseRendererTask;->mMasterSurface:Landroid/view/Surface;

    .line 7
    invoke-static {}, Lcom/serenegiant/utils/BuildCheck;->isAndroid4_1()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 8
    iget-object v0, p0, Lcom/serenegiant/glutils/AbstractRendererHolder$BaseRendererTask;->mMasterTexture:Landroid/graphics/SurfaceTexture;

    iget v1, p0, Lcom/serenegiant/glutils/AbstractRendererHolder$BaseRendererTask;->mVideoWidth:I

    iget v2, p0, Lcom/serenegiant/glutils/AbstractRendererHolder$BaseRendererTask;->mVideoHeight:I

    invoke-virtual {v0, v1, v2}, Landroid/graphics/SurfaceTexture;->setDefaultBufferSize(II)V

    .line 9
    :cond_0
    iget-object v0, p0, Lcom/serenegiant/glutils/AbstractRendererHolder$BaseRendererTask;->mMasterTexture:Landroid/graphics/SurfaceTexture;

    iget-object v1, p0, Lcom/serenegiant/glutils/AbstractRendererHolder$BaseRendererTask;->mOnFrameAvailableListener:Landroid/graphics/SurfaceTexture$OnFrameAvailableListener;

    invoke-virtual {v0, v1}, Landroid/graphics/SurfaceTexture;->setOnFrameAvailableListener(Landroid/graphics/SurfaceTexture$OnFrameAvailableListener;)V

    .line 10
    iget-object v0, p0, Lcom/serenegiant/glutils/AbstractRendererHolder$BaseRendererTask;->mParent:Lcom/serenegiant/glutils/AbstractRendererHolder;

    iget-object v1, p0, Lcom/serenegiant/glutils/AbstractRendererHolder$BaseRendererTask;->mMasterSurface:Landroid/view/Surface;

    invoke-virtual {v0, v1}, Lcom/serenegiant/glutils/AbstractRendererHolder;->callOnCreate(Landroid/view/Surface;)V

    return-void
.end method

.method protected handleReleaseMasterSurface()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/serenegiant/glutils/AbstractRendererHolder$BaseRendererTask;->mMasterSurface:Landroid/view/Surface;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 2
    :try_start_0
    invoke-virtual {v0}, Landroid/view/Surface;->release()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 3
    invoke-static {}, Lcom/serenegiant/glutils/AbstractRendererHolder;->access$100()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 4
    :goto_0
    iput-object v1, p0, Lcom/serenegiant/glutils/AbstractRendererHolder$BaseRendererTask;->mMasterSurface:Landroid/view/Surface;

    .line 5
    iget-object v0, p0, Lcom/serenegiant/glutils/AbstractRendererHolder$BaseRendererTask;->mParent:Lcom/serenegiant/glutils/AbstractRendererHolder;

    invoke-virtual {v0}, Lcom/serenegiant/glutils/AbstractRendererHolder;->callOnDestroy()V

    .line 6
    :cond_0
    iget-object v0, p0, Lcom/serenegiant/glutils/AbstractRendererHolder$BaseRendererTask;->mMasterTexture:Landroid/graphics/SurfaceTexture;

    if-eqz v0, :cond_1

    .line 7
    :try_start_1
    invoke-virtual {v0}, Landroid/graphics/SurfaceTexture;->release()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    :catch_1
    move-exception v0

    .line 8
    invoke-static {}, Lcom/serenegiant/glutils/AbstractRendererHolder;->access$100()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 9
    :goto_1
    iput-object v1, p0, Lcom/serenegiant/glutils/AbstractRendererHolder$BaseRendererTask;->mMasterTexture:Landroid/graphics/SurfaceTexture;

    .line 10
    :cond_1
    iget v0, p0, Lcom/serenegiant/glutils/AbstractRendererHolder$BaseRendererTask;->mTexId:I

    if-eqz v0, :cond_2

    .line 11
    invoke-static {v0}, Lcom/serenegiant/glutils/GLHelper;->deleteTex(I)V

    const/4 v0, 0x0

    .line 12
    iput v0, p0, Lcom/serenegiant/glutils/AbstractRendererHolder$BaseRendererTask;->mTexId:I

    :cond_2
    return-void
.end method

.method protected handleRemoveAll()V
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/serenegiant/glutils/AbstractRendererHolder$BaseRendererTask;->mClients:Landroid/util/SparseArray;

    monitor-enter v0

    .line 2
    :try_start_0
    iget-object v1, p0, Lcom/serenegiant/glutils/AbstractRendererHolder$BaseRendererTask;->mClients:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v1, :cond_2

    .line 3
    iget-object v4, p0, Lcom/serenegiant/glutils/AbstractRendererHolder$BaseRendererTask;->mClients:Landroid/util/SparseArray;

    invoke-virtual {v4, v3}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/serenegiant/glutils/RendererSurfaceRec;

    if-eqz v4, :cond_1

    .line 4
    invoke-virtual {v4}, Lcom/serenegiant/glutils/RendererSurfaceRec;->isValid()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 5
    invoke-virtual {v4, v2}, Lcom/serenegiant/glutils/RendererSurfaceRec;->clear(I)V

    .line 6
    :cond_0
    invoke-virtual {v4}, Lcom/serenegiant/glutils/RendererSurfaceRec;->release()V

    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 7
    :cond_2
    iget-object v1, p0, Lcom/serenegiant/glutils/AbstractRendererHolder$BaseRendererTask;->mClients:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->clear()V

    .line 8
    iget-object v1, p0, Lcom/serenegiant/glutils/AbstractRendererHolder$BaseRendererTask;->mClients:Landroid/util/SparseArray;

    invoke-virtual {v1}, Ljava/lang/Object;->notifyAll()V

    .line 9
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method protected handleRemoveSurface(I)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/serenegiant/glutils/AbstractRendererHolder$BaseRendererTask;->mClients:Landroid/util/SparseArray;

    monitor-enter v0

    .line 2
    :try_start_0
    iget-object v1, p0, Lcom/serenegiant/glutils/AbstractRendererHolder$BaseRendererTask;->mClients:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/serenegiant/glutils/RendererSurfaceRec;

    if-eqz v1, :cond_1

    .line 3
    iget-object v2, p0, Lcom/serenegiant/glutils/AbstractRendererHolder$BaseRendererTask;->mClients:Landroid/util/SparseArray;

    invoke-virtual {v2, p1}, Landroid/util/SparseArray;->remove(I)V

    .line 4
    invoke-virtual {v1}, Lcom/serenegiant/glutils/RendererSurfaceRec;->isValid()Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    .line 5
    invoke-virtual {v1, p1}, Lcom/serenegiant/glutils/RendererSurfaceRec;->clear(I)V

    .line 6
    :cond_0
    invoke-virtual {v1}, Lcom/serenegiant/glutils/RendererSurfaceRec;->release()V

    .line 7
    :cond_1
    invoke-virtual {p0}, Lcom/serenegiant/glutils/AbstractRendererHolder$BaseRendererTask;->checkSurface()V

    .line 8
    iget-object p1, p0, Lcom/serenegiant/glutils/AbstractRendererHolder$BaseRendererTask;->mClients:Landroid/util/SparseArray;

    invoke-virtual {p1}, Ljava/lang/Object;->notifyAll()V

    .line 9
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method protected handleResize(II)V
    .locals 1
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    .line 1
    iput p1, p0, Lcom/serenegiant/glutils/AbstractRendererHolder$BaseRendererTask;->mVideoWidth:I

    .line 2
    iput p2, p0, Lcom/serenegiant/glutils/AbstractRendererHolder$BaseRendererTask;->mVideoHeight:I

    .line 3
    invoke-static {}, Lcom/serenegiant/utils/BuildCheck;->isAndroid4_1()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 4
    iget-object p1, p0, Lcom/serenegiant/glutils/AbstractRendererHolder$BaseRendererTask;->mMasterTexture:Landroid/graphics/SurfaceTexture;

    iget p2, p0, Lcom/serenegiant/glutils/AbstractRendererHolder$BaseRendererTask;->mVideoWidth:I

    iget v0, p0, Lcom/serenegiant/glutils/AbstractRendererHolder$BaseRendererTask;->mVideoHeight:I

    invoke-virtual {p1, p2, v0}, Landroid/graphics/SurfaceTexture;->setDefaultBufferSize(II)V

    :cond_0
    return-void
.end method

.method protected handleRotate(II)V
    .locals 0

    return-void
.end method

.method protected handleSetMvp(IILjava/lang/Object;)V
    .locals 3

    .line 1
    instance-of v0, p3, [F

    if-eqz v0, :cond_1

    check-cast p3, [F

    array-length v0, p3

    add-int/lit8 v1, p2, 0x10

    if-lt v0, v1, :cond_1

    .line 2
    iget-object v0, p0, Lcom/serenegiant/glutils/AbstractRendererHolder$BaseRendererTask;->mClients:Landroid/util/SparseArray;

    monitor-enter v0

    .line 3
    :try_start_0
    iget-object v1, p0, Lcom/serenegiant/glutils/AbstractRendererHolder$BaseRendererTask;->mClients:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/serenegiant/glutils/RendererSurfaceRec;

    if-eqz p1, :cond_0

    .line 4
    invoke-virtual {p1}, Lcom/serenegiant/glutils/RendererSurfaceRec;->isValid()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 5
    iget-object p1, p1, Lcom/serenegiant/glutils/RendererSurfaceRec;->mMvpMatrix:[F

    const/4 v1, 0x0

    const/16 v2, 0x10

    invoke-static {p3, p2, p1, v1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 6
    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1

    :cond_1
    :goto_0
    return-void
.end method

.method protected handleUpdateTexture()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/serenegiant/glutils/AbstractRendererHolder$BaseRendererTask;->mMasterTexture:Landroid/graphics/SurfaceTexture;

    invoke-virtual {v0}, Landroid/graphics/SurfaceTexture;->updateTexImage()V

    .line 2
    iget-object v0, p0, Lcom/serenegiant/glutils/AbstractRendererHolder$BaseRendererTask;->mMasterTexture:Landroid/graphics/SurfaceTexture;

    iget-object v1, p0, Lcom/serenegiant/glutils/AbstractRendererHolder$BaseRendererTask;->mTexMatrix:[F

    invoke-virtual {v0, v1}, Landroid/graphics/SurfaceTexture;->getTransformMatrix([F)V

    return-void
.end method

.method protected height()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/serenegiant/glutils/AbstractRendererHolder$BaseRendererTask;->mVideoHeight:I

    return v0
.end method

.method protected abstract internalOnStart()V
.end method

.method protected abstract internalOnStop()V
.end method

.method public isEnabled(I)Z
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/serenegiant/glutils/AbstractRendererHolder$BaseRendererTask;->mClients:Landroid/util/SparseArray;

    monitor-enter v0

    .line 2
    :try_start_0
    iget-object v1, p0, Lcom/serenegiant/glutils/AbstractRendererHolder$BaseRendererTask;->mClients:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/serenegiant/glutils/RendererSurfaceRec;

    if-eqz p1, :cond_0

    .line 3
    invoke-virtual {p1}, Lcom/serenegiant/glutils/RendererSurfaceRec;->isEnabled()Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    monitor-exit v0

    return p1

    :catchall_0
    move-exception p1

    .line 4
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public mirror()I
    .locals 1

    .line 4
    iget v0, p0, Lcom/serenegiant/glutils/AbstractRendererHolder$BaseRendererTask;->mMirror:I

    return v0
.end method

.method public mirror(I)V
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/serenegiant/glutils/AbstractRendererHolder$BaseRendererTask;->checkFinished()V

    .line 2
    iget v0, p0, Lcom/serenegiant/glutils/AbstractRendererHolder$BaseRendererTask;->mMirror:I

    if-eq v0, p1, :cond_0

    const/4 v0, 0x6

    .line 3
    invoke-virtual {p0, v0, p1}, Lcom/serenegiant/utils/MessageTask;->offer(II)Z

    :cond_0
    return-void
.end method

.method protected abstract onDrawClient(Lcom/serenegiant/glutils/RendererSurfaceRec;I[F)V
.end method

.method protected onError(Ljava/lang/Exception;)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method protected final onStart()V
    .locals 3

    .line 1
    invoke-virtual {p0}, Lcom/serenegiant/glutils/AbstractRendererHolder$BaseRendererTask;->handleReCreateMasterSurface()V

    .line 2
    invoke-virtual {p0}, Lcom/serenegiant/glutils/AbstractRendererHolder$BaseRendererTask;->internalOnStart()V

    .line 3
    iget-object v0, p0, Lcom/serenegiant/glutils/AbstractRendererHolder$BaseRendererTask;->mParent:Lcom/serenegiant/glutils/AbstractRendererHolder;

    iget-object v0, v0, Lcom/serenegiant/glutils/AbstractRendererHolder;->mSync:Ljava/lang/Object;

    monitor-enter v0

    .line 4
    :try_start_0
    iget-object v1, p0, Lcom/serenegiant/glutils/AbstractRendererHolder$BaseRendererTask;->mParent:Lcom/serenegiant/glutils/AbstractRendererHolder;

    const/4 v2, 0x1

    invoke-static {v1, v2}, Lcom/serenegiant/glutils/AbstractRendererHolder;->access$002(Lcom/serenegiant/glutils/AbstractRendererHolder;Z)Z

    .line 5
    iget-object v1, p0, Lcom/serenegiant/glutils/AbstractRendererHolder$BaseRendererTask;->mParent:Lcom/serenegiant/glutils/AbstractRendererHolder;

    iget-object v1, v1, Lcom/serenegiant/glutils/AbstractRendererHolder;->mSync:Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Object;->notifyAll()V

    .line 6
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method protected onStop()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/serenegiant/glutils/AbstractRendererHolder$BaseRendererTask;->mParent:Lcom/serenegiant/glutils/AbstractRendererHolder;

    iget-object v0, v0, Lcom/serenegiant/glutils/AbstractRendererHolder;->mSync:Ljava/lang/Object;

    monitor-enter v0

    .line 2
    :try_start_0
    iget-object v1, p0, Lcom/serenegiant/glutils/AbstractRendererHolder$BaseRendererTask;->mParent:Lcom/serenegiant/glutils/AbstractRendererHolder;

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcom/serenegiant/glutils/AbstractRendererHolder;->access$002(Lcom/serenegiant/glutils/AbstractRendererHolder;Z)Z

    .line 3
    iget-object v1, p0, Lcom/serenegiant/glutils/AbstractRendererHolder$BaseRendererTask;->mParent:Lcom/serenegiant/glutils/AbstractRendererHolder;

    iget-object v1, v1, Lcom/serenegiant/glutils/AbstractRendererHolder;->mSync:Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Object;->notifyAll()V

    .line 4
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 5
    invoke-virtual {p0}, Lcom/serenegiant/glutils/EglTask;->makeCurrent()V

    .line 6
    invoke-virtual {p0}, Lcom/serenegiant/glutils/AbstractRendererHolder$BaseRendererTask;->internalOnStop()V

    .line 7
    invoke-virtual {p0}, Lcom/serenegiant/glutils/AbstractRendererHolder$BaseRendererTask;->handleReleaseMasterSurface()V

    .line 8
    invoke-virtual {p0}, Lcom/serenegiant/glutils/AbstractRendererHolder$BaseRendererTask;->handleRemoveAll()V

    return-void

    :catchall_0
    move-exception v1

    .line 9
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method protected abstract preprocess()V
.end method

.method protected processRequest(IIILjava/lang/Object;)Ljava/lang/Object;
    .locals 0

    packed-switch p1, :pswitch_data_0

    :pswitch_0
    goto :goto_0

    .line 1
    :pswitch_1
    invoke-virtual {p0}, Lcom/serenegiant/glutils/AbstractRendererHolder$BaseRendererTask;->handleRemoveAll()V

    goto :goto_0

    .line 2
    :pswitch_2
    invoke-virtual {p0, p2, p3, p4}, Lcom/serenegiant/glutils/AbstractRendererHolder$BaseRendererTask;->handleSetMvp(IILjava/lang/Object;)V

    goto :goto_0

    .line 3
    :pswitch_3
    invoke-virtual {p0, p2}, Lcom/serenegiant/glutils/AbstractRendererHolder$BaseRendererTask;->handleClearAll(I)V

    goto :goto_0

    .line 4
    :pswitch_4
    invoke-virtual {p0, p2, p3}, Lcom/serenegiant/glutils/AbstractRendererHolder$BaseRendererTask;->handleClear(II)V

    goto :goto_0

    .line 5
    :pswitch_5
    invoke-virtual {p0, p2, p3}, Lcom/serenegiant/glutils/AbstractRendererHolder$BaseRendererTask;->handleRotate(II)V

    goto :goto_0

    .line 6
    :pswitch_6
    invoke-virtual {p0, p2}, Lcom/serenegiant/glutils/AbstractRendererHolder$BaseRendererTask;->handleMirror(I)V

    goto :goto_0

    .line 7
    :pswitch_7
    invoke-virtual {p0}, Lcom/serenegiant/glutils/AbstractRendererHolder$BaseRendererTask;->handleReCreateMasterSurface()V

    goto :goto_0

    .line 8
    :pswitch_8
    invoke-virtual {p0, p2}, Lcom/serenegiant/glutils/AbstractRendererHolder$BaseRendererTask;->handleRemoveSurface(I)V

    goto :goto_0

    .line 9
    :pswitch_9
    invoke-virtual {p0, p2, p4, p3}, Lcom/serenegiant/glutils/AbstractRendererHolder$BaseRendererTask;->handleAddSurface(ILjava/lang/Object;I)V

    goto :goto_0

    .line 10
    :pswitch_a
    invoke-virtual {p0, p2, p3}, Lcom/serenegiant/glutils/AbstractRendererHolder$BaseRendererTask;->handleResize(II)V

    goto :goto_0

    .line 11
    :pswitch_b
    invoke-virtual {p0}, Lcom/serenegiant/glutils/AbstractRendererHolder$BaseRendererTask;->handleDraw()V

    :goto_0
    const/4 p1, 0x0

    return-object p1

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public removeSurface(I)V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/serenegiant/glutils/AbstractRendererHolder$BaseRendererTask;->mClients:Landroid/util/SparseArray;

    monitor-enter v0

    .line 2
    :try_start_0
    iget-object v1, p0, Lcom/serenegiant/glutils/AbstractRendererHolder$BaseRendererTask;->mClients:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 3
    :goto_0
    invoke-virtual {p0}, Lcom/serenegiant/utils/MessageTask;->isRunning()Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v1, 0x4

    .line 4
    invoke-virtual {p0, v1, p1}, Lcom/serenegiant/utils/MessageTask;->offer(II)Z

    move-result v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_0

    .line 5
    :try_start_1
    iget-object p1, p0, Lcom/serenegiant/glutils/AbstractRendererHolder$BaseRendererTask;->mClients:Landroid/util/SparseArray;

    invoke-virtual {p1}, Ljava/lang/Object;->wait()V

    goto :goto_1

    .line 6
    :cond_0
    iget-object v1, p0, Lcom/serenegiant/glutils/AbstractRendererHolder$BaseRendererTask;->mClients:Landroid/util/SparseArray;

    const-wide/16 v2, 0x5

    invoke-virtual {v1, v2, v3}, Ljava/lang/Object;->wait(J)V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 7
    :catch_0
    :cond_1
    :goto_1
    :try_start_2
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p1
.end method

.method public removeSurfaceAll()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/serenegiant/glutils/AbstractRendererHolder$BaseRendererTask;->mClients:Landroid/util/SparseArray;

    monitor-enter v0

    .line 2
    :goto_0
    :try_start_0
    invoke-virtual {p0}, Lcom/serenegiant/utils/MessageTask;->isRunning()Z

    move-result v1

    if-eqz v1, :cond_1

    const/16 v1, 0xc

    .line 3
    invoke-virtual {p0, v1}, Lcom/serenegiant/utils/MessageTask;->offer(I)Z

    move-result v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_0

    .line 4
    :try_start_1
    iget-object v1, p0, Lcom/serenegiant/glutils/AbstractRendererHolder$BaseRendererTask;->mClients:Landroid/util/SparseArray;

    invoke-virtual {v1}, Ljava/lang/Object;->wait()V

    goto :goto_1

    .line 5
    :cond_0
    iget-object v1, p0, Lcom/serenegiant/glutils/AbstractRendererHolder$BaseRendererTask;->mClients:Landroid/util/SparseArray;

    const-wide/16 v2, 0x5

    invoke-virtual {v1, v2, v3}, Ljava/lang/Object;->wait(J)V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 6
    :catch_0
    :cond_1
    :goto_1
    :try_start_2
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1
.end method

.method public resize(II)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lcom/serenegiant/glutils/AbstractRendererHolder$BaseRendererTask;->checkFinished()V

    if-lez p1, :cond_1

    if-lez p2, :cond_1

    .line 2
    iget v0, p0, Lcom/serenegiant/glutils/AbstractRendererHolder$BaseRendererTask;->mVideoWidth:I

    if-ne v0, p1, :cond_0

    iget v0, p0, Lcom/serenegiant/glutils/AbstractRendererHolder$BaseRendererTask;->mVideoHeight:I

    if-eq v0, p2, :cond_1

    :cond_0
    const/4 v0, 0x2

    .line 3
    invoke-virtual {p0, v0, p1, p2}, Lcom/serenegiant/utils/MessageTask;->offer(III)Z

    :cond_1
    return-void
.end method

.method public setEnabled(IZ)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/serenegiant/glutils/AbstractRendererHolder$BaseRendererTask;->mClients:Landroid/util/SparseArray;

    monitor-enter v0

    .line 2
    :try_start_0
    iget-object v1, p0, Lcom/serenegiant/glutils/AbstractRendererHolder$BaseRendererTask;->mClients:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/serenegiant/glutils/RendererSurfaceRec;

    if-eqz p1, :cond_0

    .line 3
    invoke-virtual {p1, p2}, Lcom/serenegiant/glutils/RendererSurfaceRec;->setEnabled(Z)V

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

.method protected setMirror(Lcom/serenegiant/glutils/RendererSurfaceRec;I)V
    .locals 0

    .line 1
    iget-object p1, p1, Lcom/serenegiant/glutils/RendererSurfaceRec;->mMvpMatrix:[F

    invoke-static {p1, p2}, Lcom/serenegiant/glutils/AbstractRendererHolder;->setMirror([FI)V

    return-void
.end method

.method public setMvpMatrix(II[F)V
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/serenegiant/glutils/AbstractRendererHolder$BaseRendererTask;->checkFinished()V

    const/16 v0, 0xa

    .line 2
    invoke-virtual {p0, v0, p1, p2, p3}, Lcom/serenegiant/utils/MessageTask;->offer(IIILjava/lang/Object;)Z

    return-void
.end method

.method protected width()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/serenegiant/glutils/AbstractRendererHolder$BaseRendererTask;->mVideoWidth:I

    return v0
.end method
