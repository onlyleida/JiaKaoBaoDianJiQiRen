.class Lio/agora/rtc/video/GLTextureView$GLThread;
.super Ljava/lang/Thread;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/agora/rtc/video/GLTextureView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "GLThread"
.end annotation


# instance fields
.field private mEglHelper:Lio/agora/rtc/video/GLTextureView$EglHelper;

.field private mEventQueue:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/Runnable;",
            ">;"
        }
    .end annotation
.end field

.field private mExited:Z

.field private mGLSurfaceViewWeakRef:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lio/agora/rtc/video/GLTextureView;",
            ">;"
        }
    .end annotation
.end field

.field private mHasSurface:Z

.field private mHaveEglContext:Z

.field private mHaveEglSurface:Z

.field private mHeight:I

.field private mPaused:Z

.field private mRenderComplete:Z

.field private mRenderMode:I

.field private mRequestPaused:Z

.field private mRequestRender:Z

.field private mShouldExit:Z

.field private mShouldReleaseEglContext:Z

.field private mSizeChanged:Z

.field private mSurfaceIsBad:Z

.field private mWaitingForSurface:Z

.field private mWidth:I


# direct methods
.method constructor <init>(Ljava/lang/ref/WeakReference;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/ref/WeakReference<",
            "Lio/agora/rtc/video/GLTextureView;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 2
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lio/agora/rtc/video/GLTextureView$GLThread;->mEventQueue:Ljava/util/ArrayList;

    const/4 v0, 0x1

    .line 3
    iput-boolean v0, p0, Lio/agora/rtc/video/GLTextureView$GLThread;->mSizeChanged:Z

    const/4 v1, 0x0

    .line 4
    iput v1, p0, Lio/agora/rtc/video/GLTextureView$GLThread;->mWidth:I

    .line 5
    iput v1, p0, Lio/agora/rtc/video/GLTextureView$GLThread;->mHeight:I

    .line 6
    iput-boolean v0, p0, Lio/agora/rtc/video/GLTextureView$GLThread;->mRequestRender:Z

    .line 7
    iput v0, p0, Lio/agora/rtc/video/GLTextureView$GLThread;->mRenderMode:I

    .line 8
    iput-object p1, p0, Lio/agora/rtc/video/GLTextureView$GLThread;->mGLSurfaceViewWeakRef:Ljava/lang/ref/WeakReference;

    return-void
.end method

.method static synthetic access$1102(Lio/agora/rtc/video/GLTextureView$GLThread;Z)Z
    .locals 0

    .line 1
    iput-boolean p1, p0, Lio/agora/rtc/video/GLTextureView$GLThread;->mExited:Z

    return p1
.end method

.method private guardedRun()V
    .locals 19
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    move-object/from16 v1, p0

    .line 1
    new-instance v0, Lio/agora/rtc/video/GLTextureView$EglHelper;

    iget-object v2, v1, Lio/agora/rtc/video/GLTextureView$GLThread;->mGLSurfaceViewWeakRef:Ljava/lang/ref/WeakReference;

    invoke-direct {v0, v2}, Lio/agora/rtc/video/GLTextureView$EglHelper;-><init>(Ljava/lang/ref/WeakReference;)V

    iput-object v0, v1, Lio/agora/rtc/video/GLTextureView$GLThread;->mEglHelper:Lio/agora/rtc/video/GLTextureView$EglHelper;

    const/4 v0, 0x0

    .line 2
    iput-boolean v0, v1, Lio/agora/rtc/video/GLTextureView$GLThread;->mHaveEglContext:Z

    .line 3
    iput-boolean v0, v1, Lio/agora/rtc/video/GLTextureView$GLThread;->mHaveEglSurface:Z

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    :goto_0
    const/4 v14, 0x0

    .line 4
    :goto_1
    :try_start_0
    invoke-static {}, Lio/agora/rtc/video/GLTextureView;->access$800()Lio/agora/rtc/video/GLTextureView$GLThreadManager;

    move-result-object v15

    monitor-enter v15
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_8

    .line 5
    :goto_2
    :try_start_1
    iget-boolean v2, v1, Lio/agora/rtc/video/GLTextureView$GLThread;->mShouldExit:Z

    if-eqz v2, :cond_0

    .line 6
    monitor-exit v15
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_5

    .line 7
    invoke-static {}, Lio/agora/rtc/video/GLTextureView;->access$800()Lio/agora/rtc/video/GLTextureView$GLThreadManager;

    move-result-object v2

    monitor-enter v2

    .line 8
    :try_start_2
    invoke-direct/range {p0 .. p0}, Lio/agora/rtc/video/GLTextureView$GLThread;->stopEglSurfaceLocked()V

    .line 9
    invoke-direct/range {p0 .. p0}, Lio/agora/rtc/video/GLTextureView$GLThread;->stopEglContextLocked()V

    .line 10
    monitor-exit v2

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0

    .line 11
    :cond_0
    :try_start_3
    iget-object v2, v1, Lio/agora/rtc/video/GLTextureView$GLThread;->mEventQueue:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_1

    .line 12
    iget-object v2, v1, Lio/agora/rtc/video/GLTextureView$GLThread;->mEventQueue:Ljava/util/ArrayList;

    const/4 v14, 0x0

    invoke-virtual {v2, v14}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v2

    move-object v14, v2

    check-cast v14, Ljava/lang/Runnable;

    move-object/from16 v17, v3

    const/4 v0, 0x0

    goto/16 :goto_7

    .line 13
    :cond_1
    iget-boolean v2, v1, Lio/agora/rtc/video/GLTextureView$GLThread;->mPaused:Z

    iget-boolean v0, v1, Lio/agora/rtc/video/GLTextureView$GLThread;->mRequestPaused:Z

    if-eq v2, v0, :cond_2

    .line 14
    iput-boolean v0, v1, Lio/agora/rtc/video/GLTextureView$GLThread;->mPaused:Z

    .line 15
    invoke-static {}, Lio/agora/rtc/video/GLTextureView;->access$800()Lio/agora/rtc/video/GLTextureView$GLThreadManager;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->notifyAll()V

    const-string v2, "GLThread"

    move/from16 v16, v0

    .line 16
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v17, v3

    const-string v3, "mPaused is now "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v3, v1, Lio/agora/rtc/video/GLTextureView$GLThread;->mPaused:Z

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, " tid="

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move/from16 v18, v4

    invoke-virtual/range {p0 .. p0}, Ljava/lang/Thread;->getId()J

    move-result-wide v3

    invoke-virtual {v0, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3

    :cond_2
    move-object/from16 v17, v3

    move/from16 v18, v4

    const/16 v16, 0x0

    .line 17
    :goto_3
    iget-boolean v0, v1, Lio/agora/rtc/video/GLTextureView$GLThread;->mShouldReleaseEglContext:Z

    if-eqz v0, :cond_3

    const-string v0, "GLThread"

    .line 18
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "releasing EGL context because asked to tid="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {p0 .. p0}, Ljava/lang/Thread;->getId()J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 19
    invoke-direct/range {p0 .. p0}, Lio/agora/rtc/video/GLTextureView$GLThread;->stopEglSurfaceLocked()V

    .line 20
    invoke-direct/range {p0 .. p0}, Lio/agora/rtc/video/GLTextureView$GLThread;->stopEglContextLocked()V

    const/4 v0, 0x0

    .line 21
    iput-boolean v0, v1, Lio/agora/rtc/video/GLTextureView$GLThread;->mShouldReleaseEglContext:Z

    const/4 v11, 0x1

    :cond_3
    if-eqz v7, :cond_4

    .line 22
    invoke-direct/range {p0 .. p0}, Lio/agora/rtc/video/GLTextureView$GLThread;->stopEglSurfaceLocked()V

    .line 23
    invoke-direct/range {p0 .. p0}, Lio/agora/rtc/video/GLTextureView$GLThread;->stopEglContextLocked()V

    const/4 v7, 0x0

    :cond_4
    if-eqz v16, :cond_5

    .line 24
    iget-boolean v0, v1, Lio/agora/rtc/video/GLTextureView$GLThread;->mHaveEglSurface:Z

    if-eqz v0, :cond_5

    const-string v0, "GLThread"

    .line 25
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "releasing EGL surface because paused tid="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {p0 .. p0}, Ljava/lang/Thread;->getId()J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 26
    invoke-direct/range {p0 .. p0}, Lio/agora/rtc/video/GLTextureView$GLThread;->stopEglSurfaceLocked()V

    :cond_5
    if-eqz v16, :cond_8

    .line 27
    iget-boolean v0, v1, Lio/agora/rtc/video/GLTextureView$GLThread;->mHaveEglContext:Z

    if-eqz v0, :cond_8

    .line 28
    iget-object v0, v1, Lio/agora/rtc/video/GLTextureView$GLThread;->mGLSurfaceViewWeakRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/agora/rtc/video/GLTextureView;

    if-nez v0, :cond_6

    const/4 v0, 0x0

    goto :goto_4

    .line 29
    :cond_6
    invoke-static {v0}, Lio/agora/rtc/video/GLTextureView;->access$900(Lio/agora/rtc/video/GLTextureView;)Z

    move-result v0

    :goto_4
    if-eqz v0, :cond_7

    .line 30
    invoke-static {}, Lio/agora/rtc/video/GLTextureView;->access$800()Lio/agora/rtc/video/GLTextureView$GLThreadManager;

    move-result-object v0

    invoke-virtual {v0}, Lio/agora/rtc/video/GLTextureView$GLThreadManager;->shouldReleaseEGLContextWhenPausing()Z

    move-result v0

    if-eqz v0, :cond_8

    .line 31
    :cond_7
    invoke-direct/range {p0 .. p0}, Lio/agora/rtc/video/GLTextureView$GLThread;->stopEglContextLocked()V

    const-string v0, "GLThread"

    .line 32
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "releasing EGL context because paused tid="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {p0 .. p0}, Ljava/lang/Thread;->getId()J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_8
    if-eqz v16, :cond_9

    .line 33
    invoke-static {}, Lio/agora/rtc/video/GLTextureView;->access$800()Lio/agora/rtc/video/GLTextureView$GLThreadManager;

    move-result-object v0

    invoke-virtual {v0}, Lio/agora/rtc/video/GLTextureView$GLThreadManager;->shouldTerminateEGLWhenPausing()Z

    move-result v0

    if-eqz v0, :cond_9

    .line 34
    iget-object v0, v1, Lio/agora/rtc/video/GLTextureView$GLThread;->mEglHelper:Lio/agora/rtc/video/GLTextureView$EglHelper;

    invoke-virtual {v0}, Lio/agora/rtc/video/GLTextureView$EglHelper;->finish()V

    const-string v0, "GLThread"

    .line 35
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "terminating EGL because paused tid="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {p0 .. p0}, Ljava/lang/Thread;->getId()J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 36
    :cond_9
    iget-boolean v0, v1, Lio/agora/rtc/video/GLTextureView$GLThread;->mHasSurface:Z

    if-nez v0, :cond_b

    iget-boolean v0, v1, Lio/agora/rtc/video/GLTextureView$GLThread;->mWaitingForSurface:Z

    if-nez v0, :cond_b

    const-string v0, "GLThread"

    .line 37
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "noticed surfaceView surface lost tid="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {p0 .. p0}, Ljava/lang/Thread;->getId()J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 38
    iget-boolean v0, v1, Lio/agora/rtc/video/GLTextureView$GLThread;->mHaveEglSurface:Z

    if-eqz v0, :cond_a

    .line 39
    invoke-direct/range {p0 .. p0}, Lio/agora/rtc/video/GLTextureView$GLThread;->stopEglSurfaceLocked()V

    :cond_a
    const/4 v0, 0x1

    .line 40
    iput-boolean v0, v1, Lio/agora/rtc/video/GLTextureView$GLThread;->mWaitingForSurface:Z

    const/4 v0, 0x0

    .line 41
    iput-boolean v0, v1, Lio/agora/rtc/video/GLTextureView$GLThread;->mSurfaceIsBad:Z

    .line 42
    invoke-static {}, Lio/agora/rtc/video/GLTextureView;->access$800()Lio/agora/rtc/video/GLTextureView$GLThreadManager;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    .line 43
    :cond_b
    iget-boolean v0, v1, Lio/agora/rtc/video/GLTextureView$GLThread;->mHasSurface:Z

    if-eqz v0, :cond_c

    iget-boolean v0, v1, Lio/agora/rtc/video/GLTextureView$GLThread;->mWaitingForSurface:Z

    if-eqz v0, :cond_c

    const-string v0, "GLThread"

    .line 44
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "noticed surfaceView surface acquired tid="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {p0 .. p0}, Ljava/lang/Thread;->getId()J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    .line 45
    iput-boolean v0, v1, Lio/agora/rtc/video/GLTextureView$GLThread;->mWaitingForSurface:Z

    .line 46
    invoke-static {}, Lio/agora/rtc/video/GLTextureView;->access$800()Lio/agora/rtc/video/GLTextureView$GLThreadManager;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    :cond_c
    if-eqz v10, :cond_d

    const-string v0, "GLThread"

    .line 47
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "sending render notification tid="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {p0 .. p0}, Ljava/lang/Thread;->getId()J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x1

    .line 48
    iput-boolean v0, v1, Lio/agora/rtc/video/GLTextureView$GLThread;->mRenderComplete:Z

    .line 49
    invoke-static {}, Lio/agora/rtc/video/GLTextureView;->access$800()Lio/agora/rtc/video/GLTextureView$GLThreadManager;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    const/4 v9, 0x0

    const/4 v10, 0x0

    .line 50
    :cond_d
    invoke-direct/range {p0 .. p0}, Lio/agora/rtc/video/GLTextureView$GLThread;->readyToDraw()Z

    move-result v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_5

    if-eqz v0, :cond_1e

    .line 51
    :try_start_4
    iget-boolean v0, v1, Lio/agora/rtc/video/GLTextureView$GLThread;->mHaveEglContext:Z
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_4

    if-nez v0, :cond_f

    if-eqz v11, :cond_e

    move/from16 v4, v18

    const/4 v11, 0x0

    goto :goto_5

    .line 52
    :cond_e
    :try_start_5
    invoke-static {}, Lio/agora/rtc/video/GLTextureView;->access$800()Lio/agora/rtc/video/GLTextureView$GLThreadManager;

    move-result-object v0

    invoke-virtual {v0, v1}, Lio/agora/rtc/video/GLTextureView$GLThreadManager;->tryAcquireEglContextLocked(Lio/agora/rtc/video/GLTextureView$GLThread;)Z

    move-result v0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_5

    if-eqz v0, :cond_f

    .line 53
    :try_start_6
    iget-object v0, v1, Lio/agora/rtc/video/GLTextureView$GLThread;->mEglHelper:Lio/agora/rtc/video/GLTextureView$EglHelper;

    invoke-virtual {v0}, Lio/agora/rtc/video/GLTextureView$EglHelper;->start()V
    :try_end_6
    .catch Ljava/lang/RuntimeException; {:try_start_6 .. :try_end_6} :catch_0
    .catchall {:try_start_6 .. :try_end_6} :catchall_5

    const/4 v0, 0x1

    .line 54
    :try_start_7
    iput-boolean v0, v1, Lio/agora/rtc/video/GLTextureView$GLThread;->mHaveEglContext:Z

    .line 55
    invoke-static {}, Lio/agora/rtc/video/GLTextureView;->access$800()Lio/agora/rtc/video/GLTextureView$GLThreadManager;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    const/4 v4, 0x1

    goto :goto_5

    :catch_0
    move-exception v0

    .line 56
    invoke-static {}, Lio/agora/rtc/video/GLTextureView;->access$800()Lio/agora/rtc/video/GLTextureView$GLThreadManager;

    move-result-object v2

    invoke-virtual {v2, v1}, Lio/agora/rtc/video/GLTextureView$GLThreadManager;->releaseEglContextLocked(Lio/agora/rtc/video/GLTextureView$GLThread;)V

    .line 57
    throw v0
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_5

    :cond_f
    move/from16 v4, v18

    .line 58
    :goto_5
    :try_start_8
    iget-boolean v0, v1, Lio/agora/rtc/video/GLTextureView$GLThread;->mHaveEglContext:Z
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_4

    if-eqz v0, :cond_10

    :try_start_9
    iget-boolean v0, v1, Lio/agora/rtc/video/GLTextureView$GLThread;->mHaveEglSurface:Z

    if-nez v0, :cond_10

    const/4 v0, 0x1

    .line 59
    iput-boolean v0, v1, Lio/agora/rtc/video/GLTextureView$GLThread;->mHaveEglSurface:Z
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_5

    const/4 v5, 0x1

    const/4 v6, 0x1

    const/4 v8, 0x1

    .line 60
    :cond_10
    :try_start_a
    iget-boolean v0, v1, Lio/agora/rtc/video/GLTextureView$GLThread;->mHaveEglSurface:Z

    if-eqz v0, :cond_1f

    .line 61
    iget-boolean v0, v1, Lio/agora/rtc/video/GLTextureView$GLThread;->mSizeChanged:Z
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_4

    if-eqz v0, :cond_11

    .line 62
    :try_start_b
    iget v0, v1, Lio/agora/rtc/video/GLTextureView$GLThread;->mWidth:I

    .line 63
    iget v2, v1, Lio/agora/rtc/video/GLTextureView$GLThread;->mHeight:I

    const-string v3, "GLThread"

    .line 64
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "noticing that we want render notification tid="

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 65
    invoke-virtual/range {p0 .. p0}, Ljava/lang/Thread;->getId()J

    move-result-wide v8

    invoke-virtual {v5, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 66
    invoke-static {v3, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v3, 0x0

    .line 67
    iput-boolean v3, v1, Lio/agora/rtc/video/GLTextureView$GLThread;->mSizeChanged:Z
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_5

    move v12, v0

    move v13, v2

    const/4 v0, 0x0

    const/4 v5, 0x1

    const/4 v8, 0x1

    const/4 v9, 0x1

    goto :goto_6

    :cond_11
    const/4 v0, 0x0

    .line 68
    :goto_6
    :try_start_c
    iput-boolean v0, v1, Lio/agora/rtc/video/GLTextureView$GLThread;->mRequestRender:Z

    .line 69
    invoke-static {}, Lio/agora/rtc/video/GLTextureView;->access$800()Lio/agora/rtc/video/GLTextureView$GLThreadManager;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->notifyAll()V

    .line 70
    :goto_7
    monitor-exit v15
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_4

    if-eqz v14, :cond_12

    .line 71
    :try_start_d
    invoke-interface {v14}, Ljava/lang/Runnable;->run()V

    move-object/from16 v3, v17

    goto/16 :goto_0

    :cond_12
    if-eqz v5, :cond_14

    const-string v2, "GLThread"

    const-string v3, "egl createSurface"

    .line 72
    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 73
    iget-object v2, v1, Lio/agora/rtc/video/GLTextureView$GLThread;->mEglHelper:Lio/agora/rtc/video/GLTextureView$EglHelper;

    invoke-virtual {v2}, Lio/agora/rtc/video/GLTextureView$EglHelper;->createSurface()Z

    move-result v2

    if-nez v2, :cond_13

    .line 74
    invoke-static {}, Lio/agora/rtc/video/GLTextureView;->access$800()Lio/agora/rtc/video/GLTextureView$GLThreadManager;

    move-result-object v2

    monitor-enter v2
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_8

    const/4 v3, 0x1

    .line 75
    :try_start_e
    iput-boolean v3, v1, Lio/agora/rtc/video/GLTextureView$GLThread;->mSurfaceIsBad:Z

    .line 76
    invoke-static {}, Lio/agora/rtc/video/GLTextureView;->access$800()Lio/agora/rtc/video/GLTextureView$GLThreadManager;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->notifyAll()V

    .line 77
    monitor-exit v2

    move-object/from16 v3, v17

    goto/16 :goto_1

    :catchall_1
    move-exception v0

    monitor-exit v2
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_1

    :try_start_f
    throw v0

    :cond_13
    const/4 v5, 0x0

    :cond_14
    if-eqz v6, :cond_15

    .line 78
    iget-object v2, v1, Lio/agora/rtc/video/GLTextureView$GLThread;->mEglHelper:Lio/agora/rtc/video/GLTextureView$EglHelper;

    invoke-virtual {v2}, Lio/agora/rtc/video/GLTextureView$EglHelper;->createGL()Ljavax/microedition/khronos/opengles/GL;

    move-result-object v2

    move-object v3, v2

    check-cast v3, Ljavax/microedition/khronos/opengles/GL10;

    .line 79
    invoke-static {}, Lio/agora/rtc/video/GLTextureView;->access$800()Lio/agora/rtc/video/GLTextureView$GLThreadManager;

    move-result-object v2

    invoke-virtual {v2, v3}, Lio/agora/rtc/video/GLTextureView$GLThreadManager;->checkGLDriver(Ljavax/microedition/khronos/opengles/GL10;)V

    const/4 v6, 0x0

    goto :goto_8

    :cond_15
    move-object/from16 v3, v17

    :goto_8
    if-eqz v4, :cond_17

    const-string v2, "GLThread"

    const-string v4, "onSurfaceCreated"

    .line 80
    invoke-static {v2, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 81
    iget-object v2, v1, Lio/agora/rtc/video/GLTextureView$GLThread;->mGLSurfaceViewWeakRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lio/agora/rtc/video/GLTextureView;

    if-eqz v2, :cond_16

    .line 82
    invoke-static {v2}, Lio/agora/rtc/video/GLTextureView;->access$1000(Lio/agora/rtc/video/GLTextureView;)Lio/agora/rtc/video/GLTextureView$Renderer;

    move-result-object v2

    iget-object v4, v1, Lio/agora/rtc/video/GLTextureView$GLThread;->mEglHelper:Lio/agora/rtc/video/GLTextureView$EglHelper;

    iget-object v4, v4, Lio/agora/rtc/video/GLTextureView$EglHelper;->mEglConfig:Ljavax/microedition/khronos/egl/EGLConfig;

    invoke-interface {v2, v3, v4}, Lio/agora/rtc/video/GLTextureView$Renderer;->onSurfaceCreated(Ljavax/microedition/khronos/opengles/GL10;Ljavax/microedition/khronos/egl/EGLConfig;)V

    :cond_16
    const/4 v4, 0x0

    :cond_17
    if-eqz v8, :cond_19

    const-string v2, "GLThread"

    .line 83
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "onSurfaceChanged("

    invoke-virtual {v8, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v15, ", "

    invoke-virtual {v8, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v15, ")"

    invoke-virtual {v8, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v2, v8}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 84
    iget-object v2, v1, Lio/agora/rtc/video/GLTextureView$GLThread;->mGLSurfaceViewWeakRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lio/agora/rtc/video/GLTextureView;

    if-eqz v2, :cond_18

    .line 85
    invoke-static {v2}, Lio/agora/rtc/video/GLTextureView;->access$1000(Lio/agora/rtc/video/GLTextureView;)Lio/agora/rtc/video/GLTextureView$Renderer;

    move-result-object v2

    invoke-interface {v2, v3, v12, v13}, Lio/agora/rtc/video/GLTextureView$Renderer;->onSurfaceChanged(Ljavax/microedition/khronos/opengles/GL10;II)V
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_8

    :cond_18
    const/4 v8, 0x0

    .line 86
    :cond_19
    :try_start_10
    iget-object v2, v1, Lio/agora/rtc/video/GLTextureView$GLThread;->mGLSurfaceViewWeakRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lio/agora/rtc/video/GLTextureView;
    :try_end_10
    .catchall {:try_start_10 .. :try_end_10} :catchall_3

    if-eqz v2, :cond_1a

    .line 87
    :try_start_11
    invoke-static {v2}, Lio/agora/rtc/video/GLTextureView;->access$1000(Lio/agora/rtc/video/GLTextureView;)Lio/agora/rtc/video/GLTextureView$Renderer;

    move-result-object v2

    invoke-interface {v2, v3}, Lio/agora/rtc/video/GLTextureView$Renderer;->onDrawFrame(Ljavax/microedition/khronos/opengles/GL10;)V
    :try_end_11
    .catchall {:try_start_11 .. :try_end_11} :catchall_8

    .line 88
    :cond_1a
    :try_start_12
    iget-object v2, v1, Lio/agora/rtc/video/GLTextureView$GLThread;->mEglHelper:Lio/agora/rtc/video/GLTextureView$EglHelper;

    invoke-virtual {v2}, Lio/agora/rtc/video/GLTextureView$EglHelper;->swap()I

    move-result v2
    :try_end_12
    .catchall {:try_start_12 .. :try_end_12} :catchall_3

    const/16 v15, 0x3000

    if-eq v2, v15, :cond_1c

    const/16 v15, 0x300e

    if-eq v2, v15, :cond_1b

    :try_start_13
    const-string v15, "GLThread"

    const-string v0, "eglSwapBuffers"

    .line 89
    invoke-static {v15, v0, v2}, Lio/agora/rtc/video/GLTextureView$EglHelper;->logEglErrorAsWarning(Ljava/lang/String;Ljava/lang/String;I)V

    .line 90
    invoke-static {}, Lio/agora/rtc/video/GLTextureView;->access$800()Lio/agora/rtc/video/GLTextureView$GLThreadManager;

    move-result-object v2

    monitor-enter v2
    :try_end_13
    .catchall {:try_start_13 .. :try_end_13} :catchall_8

    const/4 v0, 0x1

    .line 91
    :try_start_14
    iput-boolean v0, v1, Lio/agora/rtc/video/GLTextureView$GLThread;->mSurfaceIsBad:Z

    .line 92
    invoke-static {}, Lio/agora/rtc/video/GLTextureView;->access$800()Lio/agora/rtc/video/GLTextureView$GLThreadManager;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/Object;->notifyAll()V

    .line 93
    monitor-exit v2

    goto :goto_9

    :catchall_2
    move-exception v0

    monitor-exit v2
    :try_end_14
    .catchall {:try_start_14 .. :try_end_14} :catchall_2

    :try_start_15
    throw v0
    :try_end_15
    .catchall {:try_start_15 .. :try_end_15} :catchall_8

    :cond_1b
    const/4 v0, 0x1

    :try_start_16
    const-string v2, "GLThread"

    .line 94
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "egl context lost tid="

    invoke-virtual {v7, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {p0 .. p0}, Ljava/lang/Thread;->getId()J

    move-result-wide v0

    invoke-virtual {v7, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_16
    .catchall {:try_start_16 .. :try_end_16} :catchall_3

    const/4 v7, 0x1

    :cond_1c
    :goto_9
    if-eqz v9, :cond_1d

    const/4 v10, 0x1

    :cond_1d
    const/4 v0, 0x0

    move-object/from16 v1, p0

    goto/16 :goto_1

    :catchall_3
    move-exception v0

    move-object/from16 v2, p0

    goto/16 :goto_b

    :catchall_4
    move-exception v0

    move-object/from16 v2, p0

    goto/16 :goto_a

    :cond_1e
    move/from16 v4, v18

    :cond_1f
    :try_start_17
    const-string v0, "GLThread"

    .line 95
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "waiting tid="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {p0 .. p0}, Ljava/lang/Thread;->getId()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, " mHaveEglContext: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_17
    .catchall {:try_start_17 .. :try_end_17} :catchall_4

    move-object/from16 v2, p0

    :try_start_18
    iget-boolean v3, v2, Lio/agora/rtc/video/GLTextureView$GLThread;->mHaveEglContext:Z

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, " mHaveEglSurface: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v3, v2, Lio/agora/rtc/video/GLTextureView$GLThread;->mHaveEglSurface:Z

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, " mPaused: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v3, v2, Lio/agora/rtc/video/GLTextureView$GLThread;->mPaused:Z

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, " mHasSurface: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v3, v2, Lio/agora/rtc/video/GLTextureView$GLThread;->mHasSurface:Z

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, " mSurfaceIsBad: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v3, v2, Lio/agora/rtc/video/GLTextureView$GLThread;->mSurfaceIsBad:Z

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, " mWaitingForSurface: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v3, v2, Lio/agora/rtc/video/GLTextureView$GLThread;->mWaitingForSurface:Z

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, " mWidth: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, v2, Lio/agora/rtc/video/GLTextureView$GLThread;->mWidth:I

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " mHeight: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, v2, Lio/agora/rtc/video/GLTextureView$GLThread;->mHeight:I

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " mRequestRender: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v3, v2, Lio/agora/rtc/video/GLTextureView$GLThread;->mRequestRender:Z

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, " mRenderMode: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, v2, Lio/agora/rtc/video/GLTextureView$GLThread;->mRenderMode:I

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 96
    invoke-static {}, Lio/agora/rtc/video/GLTextureView;->access$800()Lio/agora/rtc/video/GLTextureView$GLThreadManager;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->wait()V

    move-object v1, v2

    move-object/from16 v3, v17

    const/4 v0, 0x0

    goto/16 :goto_2

    :catchall_5
    move-exception v0

    move-object v2, v1

    .line 97
    :goto_a
    monitor-exit v15
    :try_end_18
    .catchall {:try_start_18 .. :try_end_18} :catchall_7

    :try_start_19
    throw v0
    :try_end_19
    .catchall {:try_start_19 .. :try_end_19} :catchall_6

    :catchall_6
    move-exception v0

    goto :goto_b

    :catchall_7
    move-exception v0

    goto :goto_a

    :catchall_8
    move-exception v0

    move-object v2, v1

    .line 98
    :goto_b
    invoke-static {}, Lio/agora/rtc/video/GLTextureView;->access$800()Lio/agora/rtc/video/GLTextureView$GLThreadManager;

    move-result-object v1

    monitor-enter v1

    .line 99
    :try_start_1a
    invoke-direct/range {p0 .. p0}, Lio/agora/rtc/video/GLTextureView$GLThread;->stopEglSurfaceLocked()V

    .line 100
    invoke-direct/range {p0 .. p0}, Lio/agora/rtc/video/GLTextureView$GLThread;->stopEglContextLocked()V

    .line 101
    monitor-exit v1
    :try_end_1a
    .catchall {:try_start_1a .. :try_end_1a} :catchall_9

    .line 102
    throw v0

    :catchall_9
    move-exception v0

    .line 103
    :try_start_1b
    monitor-exit v1
    :try_end_1b
    .catchall {:try_start_1b .. :try_end_1b} :catchall_9

    throw v0
.end method

.method private readyToDraw()Z
    .locals 2

    .line 1
    iget-boolean v0, p0, Lio/agora/rtc/video/GLTextureView$GLThread;->mPaused:Z

    const/4 v1, 0x1

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lio/agora/rtc/video/GLTextureView$GLThread;->mHasSurface:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lio/agora/rtc/video/GLTextureView$GLThread;->mSurfaceIsBad:Z

    if-nez v0, :cond_0

    iget v0, p0, Lio/agora/rtc/video/GLTextureView$GLThread;->mWidth:I

    if-lez v0, :cond_0

    iget v0, p0, Lio/agora/rtc/video/GLTextureView$GLThread;->mHeight:I

    if-lez v0, :cond_0

    iget-boolean v0, p0, Lio/agora/rtc/video/GLTextureView$GLThread;->mRequestRender:Z

    if-nez v0, :cond_1

    iget v0, p0, Lio/agora/rtc/video/GLTextureView$GLThread;->mRenderMode:I

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :cond_1
    :goto_0
    return v1
.end method

.method private stopEglContextLocked()V
    .locals 1

    .line 1
    iget-boolean v0, p0, Lio/agora/rtc/video/GLTextureView$GLThread;->mHaveEglContext:Z

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lio/agora/rtc/video/GLTextureView$GLThread;->mEglHelper:Lio/agora/rtc/video/GLTextureView$EglHelper;

    invoke-virtual {v0}, Lio/agora/rtc/video/GLTextureView$EglHelper;->finish()V

    const/4 v0, 0x0

    .line 3
    iput-boolean v0, p0, Lio/agora/rtc/video/GLTextureView$GLThread;->mHaveEglContext:Z

    .line 4
    invoke-static {}, Lio/agora/rtc/video/GLTextureView;->access$800()Lio/agora/rtc/video/GLTextureView$GLThreadManager;

    move-result-object v0

    invoke-virtual {v0, p0}, Lio/agora/rtc/video/GLTextureView$GLThreadManager;->releaseEglContextLocked(Lio/agora/rtc/video/GLTextureView$GLThread;)V

    :cond_0
    return-void
.end method

.method private stopEglSurfaceLocked()V
    .locals 1

    .line 1
    iget-boolean v0, p0, Lio/agora/rtc/video/GLTextureView$GLThread;->mHaveEglSurface:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Lio/agora/rtc/video/GLTextureView$GLThread;->mHaveEglSurface:Z

    .line 3
    iget-object v0, p0, Lio/agora/rtc/video/GLTextureView$GLThread;->mEglHelper:Lio/agora/rtc/video/GLTextureView$EglHelper;

    invoke-virtual {v0}, Lio/agora/rtc/video/GLTextureView$EglHelper;->destroySurface()V

    :cond_0
    return-void
.end method


# virtual methods
.method public ableToDraw()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lio/agora/rtc/video/GLTextureView$GLThread;->mHaveEglContext:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lio/agora/rtc/video/GLTextureView$GLThread;->mHaveEglSurface:Z

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lio/agora/rtc/video/GLTextureView$GLThread;->readyToDraw()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public getRenderMode()I
    .locals 2

    .line 1
    invoke-static {}, Lio/agora/rtc/video/GLTextureView;->access$800()Lio/agora/rtc/video/GLTextureView$GLThreadManager;

    move-result-object v0

    monitor-enter v0

    .line 2
    :try_start_0
    iget v1, p0, Lio/agora/rtc/video/GLTextureView$GLThread;->mRenderMode:I

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

.method public onPause()V
    .locals 5

    .line 1
    invoke-static {}, Lio/agora/rtc/video/GLTextureView;->access$800()Lio/agora/rtc/video/GLTextureView$GLThreadManager;

    move-result-object v0

    monitor-enter v0

    :try_start_0
    const-string v1, "GLThread"

    .line 2
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onPause tid="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Thread;->getId()J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x1

    .line 3
    iput-boolean v1, p0, Lio/agora/rtc/video/GLTextureView$GLThread;->mRequestPaused:Z

    .line 4
    invoke-static {}, Lio/agora/rtc/video/GLTextureView;->access$800()Lio/agora/rtc/video/GLTextureView$GLThreadManager;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->notifyAll()V

    .line 5
    :goto_0
    iget-boolean v1, p0, Lio/agora/rtc/video/GLTextureView$GLThread;->mExited:Z

    if-nez v1, :cond_0

    iget-boolean v1, p0, Lio/agora/rtc/video/GLTextureView$GLThread;->mPaused:Z

    if-nez v1, :cond_0

    const-string v1, "Main thread"

    const-string v2, "onPause waiting for mPaused."

    .line 6
    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 7
    :try_start_1
    invoke-static {}, Lio/agora/rtc/video/GLTextureView;->access$800()Lio/agora/rtc/video/GLTextureView$GLThreadManager;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->wait()V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 8
    :catch_0
    :try_start_2
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Thread;->interrupt()V

    goto :goto_0

    .line 9
    :cond_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1
.end method

.method public onResume()V
    .locals 5

    .line 1
    invoke-static {}, Lio/agora/rtc/video/GLTextureView;->access$800()Lio/agora/rtc/video/GLTextureView$GLThreadManager;

    move-result-object v0

    monitor-enter v0

    :try_start_0
    const-string v1, "GLThread"

    .line 2
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onResume tid="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Thread;->getId()J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x0

    .line 3
    iput-boolean v1, p0, Lio/agora/rtc/video/GLTextureView$GLThread;->mRequestPaused:Z

    const/4 v2, 0x1

    .line 4
    iput-boolean v2, p0, Lio/agora/rtc/video/GLTextureView$GLThread;->mRequestRender:Z

    .line 5
    iput-boolean v1, p0, Lio/agora/rtc/video/GLTextureView$GLThread;->mRenderComplete:Z

    .line 6
    invoke-static {}, Lio/agora/rtc/video/GLTextureView;->access$800()Lio/agora/rtc/video/GLTextureView$GLThreadManager;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->notifyAll()V

    .line 7
    :goto_0
    iget-boolean v1, p0, Lio/agora/rtc/video/GLTextureView$GLThread;->mExited:Z

    if-nez v1, :cond_0

    iget-boolean v1, p0, Lio/agora/rtc/video/GLTextureView$GLThread;->mPaused:Z

    if-eqz v1, :cond_0

    iget-boolean v1, p0, Lio/agora/rtc/video/GLTextureView$GLThread;->mRenderComplete:Z

    if-nez v1, :cond_0

    const-string v1, "Main thread"

    const-string v2, "onResume waiting for !mPaused."

    .line 8
    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 9
    :try_start_1
    invoke-static {}, Lio/agora/rtc/video/GLTextureView;->access$800()Lio/agora/rtc/video/GLTextureView$GLThreadManager;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->wait()V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 10
    :catch_0
    :try_start_2
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Thread;->interrupt()V

    goto :goto_0

    .line 11
    :cond_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1
.end method

.method public onWindowResize(II)V
    .locals 3

    .line 1
    invoke-static {}, Lio/agora/rtc/video/GLTextureView;->access$800()Lio/agora/rtc/video/GLTextureView$GLThreadManager;

    move-result-object v0

    monitor-enter v0

    .line 2
    :try_start_0
    iput p1, p0, Lio/agora/rtc/video/GLTextureView$GLThread;->mWidth:I

    .line 3
    iput p2, p0, Lio/agora/rtc/video/GLTextureView$GLThread;->mHeight:I

    const/4 p1, 0x1

    .line 4
    iput-boolean p1, p0, Lio/agora/rtc/video/GLTextureView$GLThread;->mSizeChanged:Z

    .line 5
    iput-boolean p1, p0, Lio/agora/rtc/video/GLTextureView$GLThread;->mRequestRender:Z

    const/4 p1, 0x0

    .line 6
    iput-boolean p1, p0, Lio/agora/rtc/video/GLTextureView$GLThread;->mRenderComplete:Z

    .line 7
    invoke-static {}, Lio/agora/rtc/video/GLTextureView;->access$800()Lio/agora/rtc/video/GLTextureView$GLThreadManager;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->notifyAll()V

    .line 8
    :goto_0
    iget-boolean p1, p0, Lio/agora/rtc/video/GLTextureView$GLThread;->mExited:Z

    if-nez p1, :cond_0

    iget-boolean p1, p0, Lio/agora/rtc/video/GLTextureView$GLThread;->mPaused:Z

    if-nez p1, :cond_0

    iget-boolean p1, p0, Lio/agora/rtc/video/GLTextureView$GLThread;->mRenderComplete:Z

    if-nez p1, :cond_0

    .line 9
    invoke-virtual {p0}, Lio/agora/rtc/video/GLTextureView$GLThread;->ableToDraw()Z

    move-result p1

    if-eqz p1, :cond_0

    const-string p1, "Main thread"

    .line 10
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onWindowResize waiting for render complete from tid="

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Thread;->getId()J

    move-result-wide v1

    invoke-virtual {p2, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 11
    :try_start_1
    invoke-static {}, Lio/agora/rtc/video/GLTextureView;->access$800()Lio/agora/rtc/video/GLTextureView$GLThreadManager;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->wait()V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 12
    :catch_0
    :try_start_2
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Thread;->interrupt()V

    goto :goto_0

    .line 13
    :cond_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p1
.end method

.method public queueEvent(Ljava/lang/Runnable;)V
    .locals 2

    if-eqz p1, :cond_0

    .line 1
    invoke-static {}, Lio/agora/rtc/video/GLTextureView;->access$800()Lio/agora/rtc/video/GLTextureView$GLThreadManager;

    move-result-object v0

    monitor-enter v0

    .line 2
    :try_start_0
    iget-object v1, p0, Lio/agora/rtc/video/GLTextureView$GLThread;->mEventQueue:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3
    invoke-static {}, Lio/agora/rtc/video/GLTextureView;->access$800()Lio/agora/rtc/video/GLTextureView$GLThreadManager;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->notifyAll()V

    .line 4
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1

    .line 5
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "r must not be null"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public requestExitAndWait()V
    .locals 2

    .line 1
    invoke-static {}, Lio/agora/rtc/video/GLTextureView;->access$800()Lio/agora/rtc/video/GLTextureView$GLThreadManager;

    move-result-object v0

    monitor-enter v0

    const/4 v1, 0x1

    .line 2
    :try_start_0
    iput-boolean v1, p0, Lio/agora/rtc/video/GLTextureView$GLThread;->mShouldExit:Z

    .line 3
    invoke-static {}, Lio/agora/rtc/video/GLTextureView;->access$800()Lio/agora/rtc/video/GLTextureView$GLThreadManager;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->notifyAll()V

    .line 4
    :goto_0
    iget-boolean v1, p0, Lio/agora/rtc/video/GLTextureView$GLThread;->mExited:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v1, :cond_0

    .line 5
    :try_start_1
    invoke-static {}, Lio/agora/rtc/video/GLTextureView;->access$800()Lio/agora/rtc/video/GLTextureView$GLThreadManager;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->wait()V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 6
    :catch_0
    :try_start_2
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Thread;->interrupt()V

    goto :goto_0

    .line 7
    :cond_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1
.end method

.method public requestReleaseEglContextLocked()V
    .locals 1

    const/4 v0, 0x1

    .line 1
    iput-boolean v0, p0, Lio/agora/rtc/video/GLTextureView$GLThread;->mShouldReleaseEglContext:Z

    .line 2
    invoke-static {}, Lio/agora/rtc/video/GLTextureView;->access$800()Lio/agora/rtc/video/GLTextureView$GLThreadManager;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    return-void
.end method

.method public requestRender()V
    .locals 2

    .line 1
    invoke-static {}, Lio/agora/rtc/video/GLTextureView;->access$800()Lio/agora/rtc/video/GLTextureView$GLThreadManager;

    move-result-object v0

    monitor-enter v0

    const/4 v1, 0x1

    .line 2
    :try_start_0
    iput-boolean v1, p0, Lio/agora/rtc/video/GLTextureView$GLThread;->mRequestRender:Z

    .line 3
    invoke-static {}, Lio/agora/rtc/video/GLTextureView;->access$800()Lio/agora/rtc/video/GLTextureView$GLThreadManager;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->notifyAll()V

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

.method public run()V
    .locals 3

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "GLThread "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Thread;->getId()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/Thread;->setName(Ljava/lang/String;)V

    .line 2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "starting tid="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Thread;->getId()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "GLThread"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3
    :try_start_0
    invoke-direct {p0}, Lio/agora/rtc/video/GLTextureView$GLThread;->guardedRun()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 4
    :catch_0
    invoke-static {}, Lio/agora/rtc/video/GLTextureView;->access$800()Lio/agora/rtc/video/GLTextureView$GLThreadManager;

    move-result-object v0

    invoke-virtual {v0, p0}, Lio/agora/rtc/video/GLTextureView$GLThreadManager;->threadExiting(Lio/agora/rtc/video/GLTextureView$GLThread;)V

    goto :goto_0

    :catchall_0
    move-exception v0

    invoke-static {}, Lio/agora/rtc/video/GLTextureView;->access$800()Lio/agora/rtc/video/GLTextureView$GLThreadManager;

    move-result-object v1

    invoke-virtual {v1, p0}, Lio/agora/rtc/video/GLTextureView$GLThreadManager;->threadExiting(Lio/agora/rtc/video/GLTextureView$GLThread;)V

    .line 5
    throw v0

    :goto_0
    return-void
.end method

.method public setRenderMode(I)V
    .locals 1

    if-ltz p1, :cond_0

    const/4 v0, 0x1

    if-gt p1, v0, :cond_0

    .line 1
    invoke-static {}, Lio/agora/rtc/video/GLTextureView;->access$800()Lio/agora/rtc/video/GLTextureView$GLThreadManager;

    move-result-object v0

    monitor-enter v0

    .line 2
    :try_start_0
    iput p1, p0, Lio/agora/rtc/video/GLTextureView$GLThread;->mRenderMode:I

    .line 3
    invoke-static {}, Lio/agora/rtc/video/GLTextureView;->access$800()Lio/agora/rtc/video/GLTextureView$GLThreadManager;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->notifyAll()V

    .line 4
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1

    .line 5
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "renderMode"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public surfaceCreated()V
    .locals 5

    .line 1
    invoke-static {}, Lio/agora/rtc/video/GLTextureView;->access$800()Lio/agora/rtc/video/GLTextureView$GLThreadManager;

    move-result-object v0

    monitor-enter v0

    :try_start_0
    const-string v1, "GLThread"

    .line 2
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "surfaceCreated tid="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Thread;->getId()J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x1

    .line 3
    iput-boolean v1, p0, Lio/agora/rtc/video/GLTextureView$GLThread;->mHasSurface:Z

    .line 4
    invoke-static {}, Lio/agora/rtc/video/GLTextureView;->access$800()Lio/agora/rtc/video/GLTextureView$GLThreadManager;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->notifyAll()V

    .line 5
    :goto_0
    iget-boolean v1, p0, Lio/agora/rtc/video/GLTextureView$GLThread;->mWaitingForSurface:Z

    if-eqz v1, :cond_0

    iget-boolean v1, p0, Lio/agora/rtc/video/GLTextureView$GLThread;->mExited:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v1, :cond_0

    .line 6
    :try_start_1
    invoke-static {}, Lio/agora/rtc/video/GLTextureView;->access$800()Lio/agora/rtc/video/GLTextureView$GLThreadManager;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->wait()V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 7
    :catch_0
    :try_start_2
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Thread;->interrupt()V

    goto :goto_0

    .line 8
    :cond_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1
.end method

.method public surfaceDestroyed()V
    .locals 5

    .line 1
    invoke-static {}, Lio/agora/rtc/video/GLTextureView;->access$800()Lio/agora/rtc/video/GLTextureView$GLThreadManager;

    move-result-object v0

    monitor-enter v0

    :try_start_0
    const-string v1, "GLThread"

    .line 2
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "surfaceDestroyed tid="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Thread;->getId()J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x0

    .line 3
    iput-boolean v1, p0, Lio/agora/rtc/video/GLTextureView$GLThread;->mHasSurface:Z

    .line 4
    invoke-static {}, Lio/agora/rtc/video/GLTextureView;->access$800()Lio/agora/rtc/video/GLTextureView$GLThreadManager;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->notifyAll()V

    .line 5
    :goto_0
    iget-boolean v1, p0, Lio/agora/rtc/video/GLTextureView$GLThread;->mWaitingForSurface:Z

    if-nez v1, :cond_0

    iget-boolean v1, p0, Lio/agora/rtc/video/GLTextureView$GLThread;->mExited:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v1, :cond_0

    .line 6
    :try_start_1
    invoke-static {}, Lio/agora/rtc/video/GLTextureView;->access$800()Lio/agora/rtc/video/GLTextureView$GLThreadManager;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->wait()V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 7
    :catch_0
    :try_start_2
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Thread;->interrupt()V

    goto :goto_0

    .line 8
    :cond_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1
.end method
