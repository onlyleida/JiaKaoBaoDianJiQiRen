.class Lcom/serenegiant/glutils/AbstractRendererHolder$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/serenegiant/glutils/AbstractRendererHolder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field captureSurface:Lcom/serenegiant/glutils/EGLBase$IEglSurface;

.field drawer:Lcom/serenegiant/glutils/GLDrawer2D;

.field eglBase:Lcom/serenegiant/glutils/EGLBase;

.field final mMvpMatrix:[F

.field final synthetic this$0:Lcom/serenegiant/glutils/AbstractRendererHolder;


# direct methods
.method constructor <init>(Lcom/serenegiant/glutils/AbstractRendererHolder;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/serenegiant/glutils/AbstractRendererHolder$1;->this$0:Lcom/serenegiant/glutils/AbstractRendererHolder;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 p1, 0x10

    new-array p1, p1, [F

    .line 2
    iput-object p1, p0, Lcom/serenegiant/glutils/AbstractRendererHolder$1;->mMvpMatrix:[F

    return-void
.end method

.method private final captureLoopGLES2()V
    .locals 14

    const/4 v0, -0x1

    const/4 v1, 0x0

    const/16 v2, 0x50

    move-object v4, v1

    const/4 v2, -0x1

    const/16 v3, 0x50

    .line 1
    :goto_0
    iget-object v5, p0, Lcom/serenegiant/glutils/AbstractRendererHolder$1;->this$0:Lcom/serenegiant/glutils/AbstractRendererHolder;

    invoke-static {v5}, Lcom/serenegiant/glutils/AbstractRendererHolder;->access$000(Lcom/serenegiant/glutils/AbstractRendererHolder;)Z

    move-result v5

    if-eqz v5, :cond_8

    .line 2
    iget-object v5, p0, Lcom/serenegiant/glutils/AbstractRendererHolder$1;->this$0:Lcom/serenegiant/glutils/AbstractRendererHolder;

    iget-object v5, v5, Lcom/serenegiant/glutils/AbstractRendererHolder;->mSync:Ljava/lang/Object;

    monitor-enter v5

    .line 3
    :try_start_0
    iget-object v6, p0, Lcom/serenegiant/glutils/AbstractRendererHolder$1;->this$0:Lcom/serenegiant/glutils/AbstractRendererHolder;

    invoke-static {v6}, Lcom/serenegiant/glutils/AbstractRendererHolder;->access$300(Lcom/serenegiant/glutils/AbstractRendererHolder;)Ljava/io/OutputStream;

    move-result-object v6
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    if-nez v6, :cond_2

    .line 4
    :try_start_1
    iget-object v6, p0, Lcom/serenegiant/glutils/AbstractRendererHolder$1;->this$0:Lcom/serenegiant/glutils/AbstractRendererHolder;

    iget-object v6, v6, Lcom/serenegiant/glutils/AbstractRendererHolder;->mSync:Ljava/lang/Object;

    invoke-virtual {v6}, Ljava/lang/Object;->wait()V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 5
    :try_start_2
    iget-object v6, p0, Lcom/serenegiant/glutils/AbstractRendererHolder$1;->this$0:Lcom/serenegiant/glutils/AbstractRendererHolder;

    invoke-static {v6}, Lcom/serenegiant/glutils/AbstractRendererHolder;->access$300(Lcom/serenegiant/glutils/AbstractRendererHolder;)Ljava/io/OutputStream;

    move-result-object v6

    if-eqz v6, :cond_1

    .line 6
    iget-object v3, p0, Lcom/serenegiant/glutils/AbstractRendererHolder$1;->this$0:Lcom/serenegiant/glutils/AbstractRendererHolder;

    invoke-static {v3}, Lcom/serenegiant/glutils/AbstractRendererHolder;->access$400(Lcom/serenegiant/glutils/AbstractRendererHolder;)I

    move-result v3

    if-lez v3, :cond_0

    const/16 v6, 0x64

    if-lt v3, v6, :cond_2

    :cond_0
    const/16 v3, 0x5a

    goto :goto_1

    .line 7
    :cond_1
    monitor-exit v5

    goto :goto_0

    .line 8
    :catch_0
    monitor-exit v5

    goto/16 :goto_3

    :cond_2
    :goto_1
    if-eqz v4, :cond_3

    .line 9
    iget-object v6, p0, Lcom/serenegiant/glutils/AbstractRendererHolder$1;->this$0:Lcom/serenegiant/glutils/AbstractRendererHolder;

    iget-object v6, v6, Lcom/serenegiant/glutils/AbstractRendererHolder;->mRendererTask:Lcom/serenegiant/glutils/AbstractRendererHolder$RendererTask;

    .line 10
    invoke-virtual {v6}, Lcom/serenegiant/glutils/AbstractRendererHolder$BaseRendererTask;->width()I

    move-result v6

    if-ne v0, v6, :cond_3

    iget-object v6, p0, Lcom/serenegiant/glutils/AbstractRendererHolder$1;->this$0:Lcom/serenegiant/glutils/AbstractRendererHolder;

    iget-object v6, v6, Lcom/serenegiant/glutils/AbstractRendererHolder;->mRendererTask:Lcom/serenegiant/glutils/AbstractRendererHolder$RendererTask;

    .line 11
    invoke-virtual {v6}, Lcom/serenegiant/glutils/AbstractRendererHolder$BaseRendererTask;->height()I

    move-result v6

    if-eq v2, v6, :cond_5

    .line 12
    :cond_3
    iget-object v0, p0, Lcom/serenegiant/glutils/AbstractRendererHolder$1;->this$0:Lcom/serenegiant/glutils/AbstractRendererHolder;

    iget-object v0, v0, Lcom/serenegiant/glutils/AbstractRendererHolder;->mRendererTask:Lcom/serenegiant/glutils/AbstractRendererHolder$RendererTask;

    invoke-virtual {v0}, Lcom/serenegiant/glutils/AbstractRendererHolder$BaseRendererTask;->width()I

    move-result v0

    .line 13
    iget-object v2, p0, Lcom/serenegiant/glutils/AbstractRendererHolder$1;->this$0:Lcom/serenegiant/glutils/AbstractRendererHolder;

    iget-object v2, v2, Lcom/serenegiant/glutils/AbstractRendererHolder;->mRendererTask:Lcom/serenegiant/glutils/AbstractRendererHolder$RendererTask;

    invoke-virtual {v2}, Lcom/serenegiant/glutils/AbstractRendererHolder$BaseRendererTask;->height()I

    move-result v2

    mul-int v4, v0, v2

    mul-int/lit8 v4, v4, 0x4

    .line 14
    invoke-static {v4}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v4

    .line 15
    sget-object v6, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {v4, v6}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 16
    iget-object v6, p0, Lcom/serenegiant/glutils/AbstractRendererHolder$1;->captureSurface:Lcom/serenegiant/glutils/EGLBase$IEglSurface;

    if-eqz v6, :cond_4

    .line 17
    invoke-interface {v6}, Lcom/serenegiant/glutils/EGLBase$IEglSurface;->release()V

    .line 18
    iput-object v1, p0, Lcom/serenegiant/glutils/AbstractRendererHolder$1;->captureSurface:Lcom/serenegiant/glutils/EGLBase$IEglSurface;

    .line 19
    :cond_4
    iget-object v6, p0, Lcom/serenegiant/glutils/AbstractRendererHolder$1;->eglBase:Lcom/serenegiant/glutils/EGLBase;

    invoke-virtual {v6, v0, v2}, Lcom/serenegiant/glutils/EGLBase;->createOffscreen(II)Lcom/serenegiant/glutils/EGLBase$IEglSurface;

    move-result-object v6

    iput-object v6, p0, Lcom/serenegiant/glutils/AbstractRendererHolder$1;->captureSurface:Lcom/serenegiant/glutils/EGLBase$IEglSurface;

    .line 20
    :cond_5
    iget-object v6, p0, Lcom/serenegiant/glutils/AbstractRendererHolder$1;->this$0:Lcom/serenegiant/glutils/AbstractRendererHolder;

    invoke-static {v6}, Lcom/serenegiant/glutils/AbstractRendererHolder;->access$000(Lcom/serenegiant/glutils/AbstractRendererHolder;)Z

    move-result v6

    if-eqz v6, :cond_6

    if-lez v0, :cond_6

    if-lez v2, :cond_6

    .line 21
    iget-object v6, p0, Lcom/serenegiant/glutils/AbstractRendererHolder$1;->mMvpMatrix:[F

    iget-object v7, p0, Lcom/serenegiant/glutils/AbstractRendererHolder$1;->this$0:Lcom/serenegiant/glutils/AbstractRendererHolder;

    iget-object v7, v7, Lcom/serenegiant/glutils/AbstractRendererHolder;->mRendererTask:Lcom/serenegiant/glutils/AbstractRendererHolder$RendererTask;

    invoke-virtual {v7}, Lcom/serenegiant/glutils/AbstractRendererHolder$BaseRendererTask;->mirror()I

    move-result v7

    invoke-static {v6, v7}, Lcom/serenegiant/glutils/AbstractRendererHolder;->setMirror([FI)V

    .line 22
    iget-object v6, p0, Lcom/serenegiant/glutils/AbstractRendererHolder$1;->mMvpMatrix:[F

    const/4 v7, 0x5

    aget v8, v6, v7

    const/high16 v9, -0x40800000    # -1.0f

    mul-float v8, v8, v9

    aput v8, v6, v7

    .line 23
    iget-object v7, p0, Lcom/serenegiant/glutils/AbstractRendererHolder$1;->drawer:Lcom/serenegiant/glutils/GLDrawer2D;

    const/4 v8, 0x0

    invoke-virtual {v7, v6, v8}, Lcom/serenegiant/glutils/GLDrawer2D;->setMvpMatrix([FI)Lcom/serenegiant/glutils/IDrawer2D;

    .line 24
    iget-object v6, p0, Lcom/serenegiant/glutils/AbstractRendererHolder$1;->captureSurface:Lcom/serenegiant/glutils/EGLBase$IEglSurface;

    invoke-interface {v6}, Lcom/serenegiant/glutils/EGLBase$IEglSurface;->makeCurrent()V

    .line 25
    iget-object v6, p0, Lcom/serenegiant/glutils/AbstractRendererHolder$1;->drawer:Lcom/serenegiant/glutils/GLDrawer2D;

    iget-object v7, p0, Lcom/serenegiant/glutils/AbstractRendererHolder$1;->this$0:Lcom/serenegiant/glutils/AbstractRendererHolder;

    iget-object v7, v7, Lcom/serenegiant/glutils/AbstractRendererHolder;->mRendererTask:Lcom/serenegiant/glutils/AbstractRendererHolder$RendererTask;

    iget v9, v7, Lcom/serenegiant/glutils/AbstractRendererHolder$BaseRendererTask;->mTexId:I

    iget-object v7, v7, Lcom/serenegiant/glutils/AbstractRendererHolder$BaseRendererTask;->mTexMatrix:[F

    invoke-virtual {v6, v9, v7, v8}, Lcom/serenegiant/glutils/GLDrawer2D;->draw(I[FI)V

    .line 26
    iget-object v6, p0, Lcom/serenegiant/glutils/AbstractRendererHolder$1;->captureSurface:Lcom/serenegiant/glutils/EGLBase$IEglSurface;

    invoke-interface {v6}, Lcom/serenegiant/glutils/EGLBase$IEglSurface;->swap()V

    .line 27
    invoke-virtual {v4}, Ljava/nio/ByteBuffer;->clear()Ljava/nio/Buffer;

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/16 v11, 0x1908

    const/16 v12, 0x1401

    move v9, v0

    move v10, v2

    move-object v13, v4

    .line 28
    invoke-static/range {v7 .. v13}, Landroid/opengl/GLES20;->glReadPixels(IIIIIILjava/nio/Buffer;)V

    .line 29
    iget-object v6, p0, Lcom/serenegiant/glutils/AbstractRendererHolder$1;->this$0:Lcom/serenegiant/glutils/AbstractRendererHolder;

    .line 30
    invoke-static {v6}, Lcom/serenegiant/glutils/AbstractRendererHolder;->access$500(Lcom/serenegiant/glutils/AbstractRendererHolder;)I

    move-result v6

    invoke-static {v6}, Lcom/serenegiant/glutils/AbstractRendererHolder;->access$600(I)Landroid/graphics/Bitmap$CompressFormat;

    move-result-object v6
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 31
    :try_start_3
    sget-object v7, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v0, v2, v7}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v7

    .line 32
    invoke-virtual {v4}, Ljava/nio/ByteBuffer;->clear()Ljava/nio/Buffer;

    .line 33
    invoke-virtual {v7, v4}, Landroid/graphics/Bitmap;->copyPixelsFromBuffer(Ljava/nio/Buffer;)V

    .line 34
    iget-object v8, p0, Lcom/serenegiant/glutils/AbstractRendererHolder$1;->this$0:Lcom/serenegiant/glutils/AbstractRendererHolder;

    invoke-static {v8}, Lcom/serenegiant/glutils/AbstractRendererHolder;->access$300(Lcom/serenegiant/glutils/AbstractRendererHolder;)Ljava/io/OutputStream;

    move-result-object v8

    invoke-virtual {v7, v6, v3, v8}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    .line 35
    invoke-virtual {v7}, Landroid/graphics/Bitmap;->recycle()V

    .line 36
    iget-object v6, p0, Lcom/serenegiant/glutils/AbstractRendererHolder$1;->this$0:Lcom/serenegiant/glutils/AbstractRendererHolder;

    invoke-static {v6}, Lcom/serenegiant/glutils/AbstractRendererHolder;->access$300(Lcom/serenegiant/glutils/AbstractRendererHolder;)Ljava/io/OutputStream;

    move-result-object v6

    invoke-virtual {v6}, Ljava/io/OutputStream;->flush()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 37
    :try_start_4
    iget-object v6, p0, Lcom/serenegiant/glutils/AbstractRendererHolder$1;->this$0:Lcom/serenegiant/glutils/AbstractRendererHolder;

    invoke-static {v6}, Lcom/serenegiant/glutils/AbstractRendererHolder;->access$300(Lcom/serenegiant/glutils/AbstractRendererHolder;)Ljava/io/OutputStream;

    move-result-object v6

    invoke-virtual {v6}, Ljava/io/OutputStream;->close()V

    goto :goto_2

    :catchall_0
    move-exception v6

    iget-object v7, p0, Lcom/serenegiant/glutils/AbstractRendererHolder$1;->this$0:Lcom/serenegiant/glutils/AbstractRendererHolder;

    invoke-static {v7}, Lcom/serenegiant/glutils/AbstractRendererHolder;->access$300(Lcom/serenegiant/glutils/AbstractRendererHolder;)Ljava/io/OutputStream;

    move-result-object v7

    invoke-virtual {v7}, Ljava/io/OutputStream;->close()V

    throw v6
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    :catch_1
    move-exception v6

    .line 38
    :try_start_5
    invoke-static {}, Lcom/serenegiant/glutils/AbstractRendererHolder;->access$100()Ljava/lang/String;

    move-result-object v7

    const-string v8, "failed to save file"

    invoke-static {v7, v8, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_2

    .line 39
    :cond_6
    iget-object v6, p0, Lcom/serenegiant/glutils/AbstractRendererHolder$1;->this$0:Lcom/serenegiant/glutils/AbstractRendererHolder;

    invoke-static {v6}, Lcom/serenegiant/glutils/AbstractRendererHolder;->access$000(Lcom/serenegiant/glutils/AbstractRendererHolder;)Z

    move-result v6

    if-eqz v6, :cond_7

    .line 40
    invoke-static {}, Lcom/serenegiant/glutils/AbstractRendererHolder;->access$100()Ljava/lang/String;

    move-result-object v6

    const-string v7, "#captureLoopGLES3:unexpectedly width/height is zero"

    invoke-static {v6, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 41
    :cond_7
    :goto_2
    iget-object v6, p0, Lcom/serenegiant/glutils/AbstractRendererHolder$1;->this$0:Lcom/serenegiant/glutils/AbstractRendererHolder;

    invoke-static {v6, v1}, Lcom/serenegiant/glutils/AbstractRendererHolder;->access$302(Lcom/serenegiant/glutils/AbstractRendererHolder;Ljava/io/OutputStream;)Ljava/io/OutputStream;

    .line 42
    iget-object v6, p0, Lcom/serenegiant/glutils/AbstractRendererHolder$1;->this$0:Lcom/serenegiant/glutils/AbstractRendererHolder;

    iget-object v6, v6, Lcom/serenegiant/glutils/AbstractRendererHolder;->mSync:Ljava/lang/Object;

    invoke-virtual {v6}, Ljava/lang/Object;->notifyAll()V

    .line 43
    monitor-exit v5

    goto/16 :goto_0

    :catchall_1
    move-exception v0

    monitor-exit v5
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    throw v0

    .line 44
    :cond_8
    :goto_3
    iget-object v0, p0, Lcom/serenegiant/glutils/AbstractRendererHolder$1;->this$0:Lcom/serenegiant/glutils/AbstractRendererHolder;

    iget-object v0, v0, Lcom/serenegiant/glutils/AbstractRendererHolder;->mSync:Ljava/lang/Object;

    monitor-enter v0

    .line 45
    :try_start_6
    iget-object v1, p0, Lcom/serenegiant/glutils/AbstractRendererHolder$1;->this$0:Lcom/serenegiant/glutils/AbstractRendererHolder;

    iget-object v1, v1, Lcom/serenegiant/glutils/AbstractRendererHolder;->mSync:Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Object;->notifyAll()V

    .line 46
    monitor-exit v0

    return-void

    :catchall_2
    move-exception v1

    monitor-exit v0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    throw v1
.end method

.method private final captureLoopGLES3()V
    .locals 15
    .annotation build Landroid/annotation/TargetApi;
        value = 0x12
    .end annotation

    const/16 v0, 0x5a

    const/4 v1, -0x1

    const/4 v2, 0x0

    move-object v4, v2

    const/4 v3, -0x1

    const/16 v5, 0x5a

    .line 1
    :goto_0
    iget-object v6, p0, Lcom/serenegiant/glutils/AbstractRendererHolder$1;->this$0:Lcom/serenegiant/glutils/AbstractRendererHolder;

    invoke-static {v6}, Lcom/serenegiant/glutils/AbstractRendererHolder;->access$000(Lcom/serenegiant/glutils/AbstractRendererHolder;)Z

    move-result v6

    if-eqz v6, :cond_8

    .line 2
    iget-object v6, p0, Lcom/serenegiant/glutils/AbstractRendererHolder$1;->this$0:Lcom/serenegiant/glutils/AbstractRendererHolder;

    iget-object v6, v6, Lcom/serenegiant/glutils/AbstractRendererHolder;->mSync:Ljava/lang/Object;

    monitor-enter v6

    .line 3
    :try_start_0
    iget-object v7, p0, Lcom/serenegiant/glutils/AbstractRendererHolder$1;->this$0:Lcom/serenegiant/glutils/AbstractRendererHolder;

    invoke-static {v7}, Lcom/serenegiant/glutils/AbstractRendererHolder;->access$300(Lcom/serenegiant/glutils/AbstractRendererHolder;)Ljava/io/OutputStream;

    move-result-object v7
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    if-nez v7, :cond_2

    .line 4
    :try_start_1
    iget-object v7, p0, Lcom/serenegiant/glutils/AbstractRendererHolder$1;->this$0:Lcom/serenegiant/glutils/AbstractRendererHolder;

    iget-object v7, v7, Lcom/serenegiant/glutils/AbstractRendererHolder;->mSync:Ljava/lang/Object;

    invoke-virtual {v7}, Ljava/lang/Object;->wait()V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 5
    :try_start_2
    iget-object v7, p0, Lcom/serenegiant/glutils/AbstractRendererHolder$1;->this$0:Lcom/serenegiant/glutils/AbstractRendererHolder;

    invoke-static {v7}, Lcom/serenegiant/glutils/AbstractRendererHolder;->access$300(Lcom/serenegiant/glutils/AbstractRendererHolder;)Ljava/io/OutputStream;

    move-result-object v7

    if-eqz v7, :cond_1

    .line 6
    iget-object v5, p0, Lcom/serenegiant/glutils/AbstractRendererHolder$1;->this$0:Lcom/serenegiant/glutils/AbstractRendererHolder;

    invoke-static {v5}, Lcom/serenegiant/glutils/AbstractRendererHolder;->access$400(Lcom/serenegiant/glutils/AbstractRendererHolder;)I

    move-result v5

    if-lez v5, :cond_0

    const/16 v7, 0x64

    if-lt v5, v7, :cond_2

    :cond_0
    const/16 v5, 0x5a

    goto :goto_1

    .line 7
    :cond_1
    monitor-exit v6

    goto :goto_0

    .line 8
    :catch_0
    monitor-exit v6

    goto/16 :goto_3

    :cond_2
    :goto_1
    if-eqz v4, :cond_3

    .line 9
    iget-object v7, p0, Lcom/serenegiant/glutils/AbstractRendererHolder$1;->this$0:Lcom/serenegiant/glutils/AbstractRendererHolder;

    iget-object v7, v7, Lcom/serenegiant/glutils/AbstractRendererHolder;->mRendererTask:Lcom/serenegiant/glutils/AbstractRendererHolder$RendererTask;

    .line 10
    invoke-virtual {v7}, Lcom/serenegiant/glutils/AbstractRendererHolder$BaseRendererTask;->width()I

    move-result v7

    if-ne v1, v7, :cond_3

    iget-object v7, p0, Lcom/serenegiant/glutils/AbstractRendererHolder$1;->this$0:Lcom/serenegiant/glutils/AbstractRendererHolder;

    iget-object v7, v7, Lcom/serenegiant/glutils/AbstractRendererHolder;->mRendererTask:Lcom/serenegiant/glutils/AbstractRendererHolder$RendererTask;

    .line 11
    invoke-virtual {v7}, Lcom/serenegiant/glutils/AbstractRendererHolder$BaseRendererTask;->height()I

    move-result v7

    if-eq v3, v7, :cond_5

    .line 12
    :cond_3
    iget-object v1, p0, Lcom/serenegiant/glutils/AbstractRendererHolder$1;->this$0:Lcom/serenegiant/glutils/AbstractRendererHolder;

    iget-object v1, v1, Lcom/serenegiant/glutils/AbstractRendererHolder;->mRendererTask:Lcom/serenegiant/glutils/AbstractRendererHolder$RendererTask;

    invoke-virtual {v1}, Lcom/serenegiant/glutils/AbstractRendererHolder$BaseRendererTask;->width()I

    move-result v1

    .line 13
    iget-object v3, p0, Lcom/serenegiant/glutils/AbstractRendererHolder$1;->this$0:Lcom/serenegiant/glutils/AbstractRendererHolder;

    iget-object v3, v3, Lcom/serenegiant/glutils/AbstractRendererHolder;->mRendererTask:Lcom/serenegiant/glutils/AbstractRendererHolder$RendererTask;

    invoke-virtual {v3}, Lcom/serenegiant/glutils/AbstractRendererHolder$BaseRendererTask;->height()I

    move-result v3

    mul-int v4, v1, v3

    mul-int/lit8 v4, v4, 0x4

    .line 14
    invoke-static {v4}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v4

    .line 15
    sget-object v7, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {v4, v7}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 16
    iget-object v7, p0, Lcom/serenegiant/glutils/AbstractRendererHolder$1;->captureSurface:Lcom/serenegiant/glutils/EGLBase$IEglSurface;

    if-eqz v7, :cond_4

    .line 17
    invoke-interface {v7}, Lcom/serenegiant/glutils/EGLBase$IEglSurface;->release()V

    .line 18
    iput-object v2, p0, Lcom/serenegiant/glutils/AbstractRendererHolder$1;->captureSurface:Lcom/serenegiant/glutils/EGLBase$IEglSurface;

    .line 19
    :cond_4
    iget-object v7, p0, Lcom/serenegiant/glutils/AbstractRendererHolder$1;->eglBase:Lcom/serenegiant/glutils/EGLBase;

    invoke-virtual {v7, v1, v3}, Lcom/serenegiant/glutils/EGLBase;->createOffscreen(II)Lcom/serenegiant/glutils/EGLBase$IEglSurface;

    move-result-object v7

    iput-object v7, p0, Lcom/serenegiant/glutils/AbstractRendererHolder$1;->captureSurface:Lcom/serenegiant/glutils/EGLBase$IEglSurface;

    .line 20
    :cond_5
    iget-object v7, p0, Lcom/serenegiant/glutils/AbstractRendererHolder$1;->this$0:Lcom/serenegiant/glutils/AbstractRendererHolder;

    invoke-static {v7}, Lcom/serenegiant/glutils/AbstractRendererHolder;->access$000(Lcom/serenegiant/glutils/AbstractRendererHolder;)Z

    move-result v7

    if-eqz v7, :cond_6

    if-lez v1, :cond_6

    if-lez v3, :cond_6

    .line 21
    iget-object v7, p0, Lcom/serenegiant/glutils/AbstractRendererHolder$1;->mMvpMatrix:[F

    iget-object v8, p0, Lcom/serenegiant/glutils/AbstractRendererHolder$1;->this$0:Lcom/serenegiant/glutils/AbstractRendererHolder;

    iget-object v8, v8, Lcom/serenegiant/glutils/AbstractRendererHolder;->mRendererTask:Lcom/serenegiant/glutils/AbstractRendererHolder$RendererTask;

    invoke-virtual {v8}, Lcom/serenegiant/glutils/AbstractRendererHolder$BaseRendererTask;->mirror()I

    move-result v8

    invoke-static {v7, v8}, Lcom/serenegiant/glutils/AbstractRendererHolder;->setMirror([FI)V

    .line 22
    iget-object v7, p0, Lcom/serenegiant/glutils/AbstractRendererHolder$1;->mMvpMatrix:[F

    const/4 v8, 0x5

    aget v9, v7, v8

    const/high16 v10, -0x40800000    # -1.0f

    mul-float v9, v9, v10

    aput v9, v7, v8

    .line 23
    iget-object v8, p0, Lcom/serenegiant/glutils/AbstractRendererHolder$1;->drawer:Lcom/serenegiant/glutils/GLDrawer2D;

    const/4 v9, 0x0

    invoke-virtual {v8, v7, v9}, Lcom/serenegiant/glutils/GLDrawer2D;->setMvpMatrix([FI)Lcom/serenegiant/glutils/IDrawer2D;

    .line 24
    iget-object v7, p0, Lcom/serenegiant/glutils/AbstractRendererHolder$1;->captureSurface:Lcom/serenegiant/glutils/EGLBase$IEglSurface;

    invoke-interface {v7}, Lcom/serenegiant/glutils/EGLBase$IEglSurface;->makeCurrent()V

    .line 25
    iget-object v7, p0, Lcom/serenegiant/glutils/AbstractRendererHolder$1;->drawer:Lcom/serenegiant/glutils/GLDrawer2D;

    iget-object v8, p0, Lcom/serenegiant/glutils/AbstractRendererHolder$1;->this$0:Lcom/serenegiant/glutils/AbstractRendererHolder;

    iget-object v8, v8, Lcom/serenegiant/glutils/AbstractRendererHolder;->mRendererTask:Lcom/serenegiant/glutils/AbstractRendererHolder$RendererTask;

    iget v10, v8, Lcom/serenegiant/glutils/AbstractRendererHolder$BaseRendererTask;->mTexId:I

    iget-object v8, v8, Lcom/serenegiant/glutils/AbstractRendererHolder$BaseRendererTask;->mTexMatrix:[F

    invoke-virtual {v7, v10, v8, v9}, Lcom/serenegiant/glutils/GLDrawer2D;->draw(I[FI)V

    .line 26
    iget-object v7, p0, Lcom/serenegiant/glutils/AbstractRendererHolder$1;->captureSurface:Lcom/serenegiant/glutils/EGLBase$IEglSurface;

    invoke-interface {v7}, Lcom/serenegiant/glutils/EGLBase$IEglSurface;->swap()V

    .line 27
    invoke-virtual {v4}, Ljava/nio/ByteBuffer;->clear()Ljava/nio/Buffer;

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/16 v12, 0x1908

    const/16 v13, 0x1401

    move v10, v1

    move v11, v3

    move-object v14, v4

    .line 28
    invoke-static/range {v8 .. v14}, Landroid/opengl/GLES30;->glReadPixels(IIIIIILjava/nio/Buffer;)V

    .line 29
    iget-object v7, p0, Lcom/serenegiant/glutils/AbstractRendererHolder$1;->this$0:Lcom/serenegiant/glutils/AbstractRendererHolder;

    .line 30
    invoke-static {v7}, Lcom/serenegiant/glutils/AbstractRendererHolder;->access$500(Lcom/serenegiant/glutils/AbstractRendererHolder;)I

    move-result v7

    invoke-static {v7}, Lcom/serenegiant/glutils/AbstractRendererHolder;->access$600(I)Landroid/graphics/Bitmap$CompressFormat;

    move-result-object v7
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 31
    :try_start_3
    sget-object v8, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v1, v3, v8}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v8

    .line 32
    invoke-virtual {v4}, Ljava/nio/ByteBuffer;->clear()Ljava/nio/Buffer;

    .line 33
    invoke-virtual {v8, v4}, Landroid/graphics/Bitmap;->copyPixelsFromBuffer(Ljava/nio/Buffer;)V

    .line 34
    iget-object v9, p0, Lcom/serenegiant/glutils/AbstractRendererHolder$1;->this$0:Lcom/serenegiant/glutils/AbstractRendererHolder;

    invoke-static {v9}, Lcom/serenegiant/glutils/AbstractRendererHolder;->access$300(Lcom/serenegiant/glutils/AbstractRendererHolder;)Ljava/io/OutputStream;

    move-result-object v9

    invoke-virtual {v8, v7, v5, v9}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    .line 35
    invoke-virtual {v8}, Landroid/graphics/Bitmap;->recycle()V

    .line 36
    iget-object v7, p0, Lcom/serenegiant/glutils/AbstractRendererHolder$1;->this$0:Lcom/serenegiant/glutils/AbstractRendererHolder;

    invoke-static {v7}, Lcom/serenegiant/glutils/AbstractRendererHolder;->access$300(Lcom/serenegiant/glutils/AbstractRendererHolder;)Ljava/io/OutputStream;

    move-result-object v7

    invoke-virtual {v7}, Ljava/io/OutputStream;->flush()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 37
    :try_start_4
    iget-object v7, p0, Lcom/serenegiant/glutils/AbstractRendererHolder$1;->this$0:Lcom/serenegiant/glutils/AbstractRendererHolder;

    invoke-static {v7}, Lcom/serenegiant/glutils/AbstractRendererHolder;->access$300(Lcom/serenegiant/glutils/AbstractRendererHolder;)Ljava/io/OutputStream;

    move-result-object v7

    invoke-virtual {v7}, Ljava/io/OutputStream;->close()V

    goto :goto_2

    :catchall_0
    move-exception v7

    iget-object v8, p0, Lcom/serenegiant/glutils/AbstractRendererHolder$1;->this$0:Lcom/serenegiant/glutils/AbstractRendererHolder;

    invoke-static {v8}, Lcom/serenegiant/glutils/AbstractRendererHolder;->access$300(Lcom/serenegiant/glutils/AbstractRendererHolder;)Ljava/io/OutputStream;

    move-result-object v8

    invoke-virtual {v8}, Ljava/io/OutputStream;->close()V

    throw v7
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    :catch_1
    move-exception v7

    .line 38
    :try_start_5
    invoke-static {}, Lcom/serenegiant/glutils/AbstractRendererHolder;->access$100()Ljava/lang/String;

    move-result-object v8

    const-string v9, "failed to save file"

    invoke-static {v8, v9, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_2

    .line 39
    :cond_6
    iget-object v7, p0, Lcom/serenegiant/glutils/AbstractRendererHolder$1;->this$0:Lcom/serenegiant/glutils/AbstractRendererHolder;

    invoke-static {v7}, Lcom/serenegiant/glutils/AbstractRendererHolder;->access$000(Lcom/serenegiant/glutils/AbstractRendererHolder;)Z

    move-result v7

    if-eqz v7, :cond_7

    .line 40
    invoke-static {}, Lcom/serenegiant/glutils/AbstractRendererHolder;->access$100()Ljava/lang/String;

    move-result-object v7

    const-string v8, "#captureLoopGLES3:unexpectedly width/height is zero"

    invoke-static {v7, v8}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 41
    :cond_7
    :goto_2
    iget-object v7, p0, Lcom/serenegiant/glutils/AbstractRendererHolder$1;->this$0:Lcom/serenegiant/glutils/AbstractRendererHolder;

    invoke-static {v7, v2}, Lcom/serenegiant/glutils/AbstractRendererHolder;->access$302(Lcom/serenegiant/glutils/AbstractRendererHolder;Ljava/io/OutputStream;)Ljava/io/OutputStream;

    .line 42
    iget-object v7, p0, Lcom/serenegiant/glutils/AbstractRendererHolder$1;->this$0:Lcom/serenegiant/glutils/AbstractRendererHolder;

    iget-object v7, v7, Lcom/serenegiant/glutils/AbstractRendererHolder;->mSync:Ljava/lang/Object;

    invoke-virtual {v7}, Ljava/lang/Object;->notifyAll()V

    .line 43
    monitor-exit v6

    goto/16 :goto_0

    :catchall_1
    move-exception v0

    monitor-exit v6
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    throw v0

    .line 44
    :cond_8
    :goto_3
    iget-object v0, p0, Lcom/serenegiant/glutils/AbstractRendererHolder$1;->this$0:Lcom/serenegiant/glutils/AbstractRendererHolder;

    iget-object v0, v0, Lcom/serenegiant/glutils/AbstractRendererHolder;->mSync:Ljava/lang/Object;

    monitor-enter v0

    .line 45
    :try_start_6
    iget-object v1, p0, Lcom/serenegiant/glutils/AbstractRendererHolder$1;->this$0:Lcom/serenegiant/glutils/AbstractRendererHolder;

    iget-object v1, v1, Lcom/serenegiant/glutils/AbstractRendererHolder;->mSync:Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Object;->notifyAll()V

    .line 46
    monitor-exit v0

    return-void

    :catchall_2
    move-exception v1

    monitor-exit v0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    throw v1
.end method

.method private final init()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/serenegiant/glutils/AbstractRendererHolder$1;->this$0:Lcom/serenegiant/glutils/AbstractRendererHolder;

    iget-object v0, v0, Lcom/serenegiant/glutils/AbstractRendererHolder;->mRendererTask:Lcom/serenegiant/glutils/AbstractRendererHolder$RendererTask;

    .line 2
    invoke-virtual {v0}, Lcom/serenegiant/glutils/EglTask;->getContext()Lcom/serenegiant/glutils/EGLBase$IContext;

    move-result-object v0

    const/4 v1, 0x3

    const/4 v2, 0x0

    .line 3
    invoke-static {v1, v0, v2, v2, v2}, Lcom/serenegiant/glutils/EGLBase;->createFrom(ILcom/serenegiant/glutils/EGLBase$IContext;ZIZ)Lcom/serenegiant/glutils/EGLBase;

    move-result-object v0

    iput-object v0, p0, Lcom/serenegiant/glutils/AbstractRendererHolder$1;->eglBase:Lcom/serenegiant/glutils/EGLBase;

    .line 4
    iget-object v1, p0, Lcom/serenegiant/glutils/AbstractRendererHolder$1;->this$0:Lcom/serenegiant/glutils/AbstractRendererHolder;

    iget-object v1, v1, Lcom/serenegiant/glutils/AbstractRendererHolder;->mRendererTask:Lcom/serenegiant/glutils/AbstractRendererHolder$RendererTask;

    .line 5
    invoke-virtual {v1}, Lcom/serenegiant/glutils/AbstractRendererHolder$BaseRendererTask;->width()I

    move-result v1

    iget-object v3, p0, Lcom/serenegiant/glutils/AbstractRendererHolder$1;->this$0:Lcom/serenegiant/glutils/AbstractRendererHolder;

    iget-object v3, v3, Lcom/serenegiant/glutils/AbstractRendererHolder;->mRendererTask:Lcom/serenegiant/glutils/AbstractRendererHolder$RendererTask;

    invoke-virtual {v3}, Lcom/serenegiant/glutils/AbstractRendererHolder$BaseRendererTask;->height()I

    move-result v3

    .line 6
    invoke-virtual {v0, v1, v3}, Lcom/serenegiant/glutils/EGLBase;->createOffscreen(II)Lcom/serenegiant/glutils/EGLBase$IEglSurface;

    move-result-object v0

    iput-object v0, p0, Lcom/serenegiant/glutils/AbstractRendererHolder$1;->captureSurface:Lcom/serenegiant/glutils/EGLBase$IEglSurface;

    .line 7
    iget-object v0, p0, Lcom/serenegiant/glutils/AbstractRendererHolder$1;->mMvpMatrix:[F

    invoke-static {v0, v2}, Landroid/opengl/Matrix;->setIdentityM([FI)V

    .line 8
    new-instance v0, Lcom/serenegiant/glutils/GLDrawer2D;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/serenegiant/glutils/GLDrawer2D;-><init>(Z)V

    iput-object v0, p0, Lcom/serenegiant/glutils/AbstractRendererHolder$1;->drawer:Lcom/serenegiant/glutils/GLDrawer2D;

    .line 9
    iget-object v1, p0, Lcom/serenegiant/glutils/AbstractRendererHolder$1;->this$0:Lcom/serenegiant/glutils/AbstractRendererHolder;

    invoke-virtual {v1, v0}, Lcom/serenegiant/glutils/AbstractRendererHolder;->setupCaptureDrawer(Lcom/serenegiant/glutils/GLDrawer2D;)V

    return-void
.end method

.method private final release()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/serenegiant/glutils/AbstractRendererHolder$1;->captureSurface:Lcom/serenegiant/glutils/EGLBase$IEglSurface;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 2
    invoke-interface {v0}, Lcom/serenegiant/glutils/EGLBase$IEglSurface;->makeCurrent()V

    .line 3
    iget-object v0, p0, Lcom/serenegiant/glutils/AbstractRendererHolder$1;->captureSurface:Lcom/serenegiant/glutils/EGLBase$IEglSurface;

    invoke-interface {v0}, Lcom/serenegiant/glutils/EGLBase$IEglSurface;->release()V

    .line 4
    iput-object v1, p0, Lcom/serenegiant/glutils/AbstractRendererHolder$1;->captureSurface:Lcom/serenegiant/glutils/EGLBase$IEglSurface;

    .line 5
    :cond_0
    iget-object v0, p0, Lcom/serenegiant/glutils/AbstractRendererHolder$1;->drawer:Lcom/serenegiant/glutils/GLDrawer2D;

    if-eqz v0, :cond_1

    .line 6
    invoke-virtual {v0}, Lcom/serenegiant/glutils/GLDrawer2D;->release()V

    .line 7
    iput-object v1, p0, Lcom/serenegiant/glutils/AbstractRendererHolder$1;->drawer:Lcom/serenegiant/glutils/GLDrawer2D;

    .line 8
    :cond_1
    iget-object v0, p0, Lcom/serenegiant/glutils/AbstractRendererHolder$1;->eglBase:Lcom/serenegiant/glutils/EGLBase;

    if-eqz v0, :cond_2

    .line 9
    invoke-virtual {v0}, Lcom/serenegiant/glutils/EGLBase;->release()V

    .line 10
    iput-object v1, p0, Lcom/serenegiant/glutils/AbstractRendererHolder$1;->eglBase:Lcom/serenegiant/glutils/EGLBase;

    :cond_2
    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/serenegiant/glutils/AbstractRendererHolder$1;->this$0:Lcom/serenegiant/glutils/AbstractRendererHolder;

    iget-object v0, v0, Lcom/serenegiant/glutils/AbstractRendererHolder;->mSync:Ljava/lang/Object;

    monitor-enter v0

    .line 2
    :goto_0
    :try_start_0
    iget-object v1, p0, Lcom/serenegiant/glutils/AbstractRendererHolder$1;->this$0:Lcom/serenegiant/glutils/AbstractRendererHolder;

    invoke-static {v1}, Lcom/serenegiant/glutils/AbstractRendererHolder;->access$000(Lcom/serenegiant/glutils/AbstractRendererHolder;)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/serenegiant/glutils/AbstractRendererHolder$1;->this$0:Lcom/serenegiant/glutils/AbstractRendererHolder;

    iget-object v1, v1, Lcom/serenegiant/glutils/AbstractRendererHolder;->mRendererTask:Lcom/serenegiant/glutils/AbstractRendererHolder$RendererTask;

    invoke-virtual {v1}, Lcom/serenegiant/utils/MessageTask;->isFinished()Z

    move-result v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    if-nez v1, :cond_0

    .line 3
    :try_start_1
    iget-object v1, p0, Lcom/serenegiant/glutils/AbstractRendererHolder$1;->this$0:Lcom/serenegiant/glutils/AbstractRendererHolder;

    iget-object v1, v1, Lcom/serenegiant/glutils/AbstractRendererHolder;->mSync:Ljava/lang/Object;

    const-wide/16 v2, 0x3e8

    invoke-virtual {v1, v2, v3}, Ljava/lang/Object;->wait(J)V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_0

    .line 4
    :catch_0
    :cond_0
    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 5
    iget-object v0, p0, Lcom/serenegiant/glutils/AbstractRendererHolder$1;->this$0:Lcom/serenegiant/glutils/AbstractRendererHolder;

    invoke-static {v0}, Lcom/serenegiant/glutils/AbstractRendererHolder;->access$000(Lcom/serenegiant/glutils/AbstractRendererHolder;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 6
    invoke-direct {p0}, Lcom/serenegiant/glutils/AbstractRendererHolder$1;->init()V

    .line 7
    :try_start_3
    iget-object v0, p0, Lcom/serenegiant/glutils/AbstractRendererHolder$1;->eglBase:Lcom/serenegiant/glutils/EGLBase;

    invoke-virtual {v0}, Lcom/serenegiant/glutils/EGLBase;->getGlVersion()I

    move-result v0

    const/4 v1, 0x2

    if-le v0, v1, :cond_1

    invoke-static {}, Lcom/serenegiant/utils/BuildCheck;->isAndroid4_3()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 8
    invoke-direct {p0}, Lcom/serenegiant/glutils/AbstractRendererHolder$1;->captureLoopGLES3()V

    goto :goto_1

    .line 9
    :cond_1
    invoke-direct {p0}, Lcom/serenegiant/glutils/AbstractRendererHolder$1;->captureLoopGLES2()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception v0

    goto :goto_2

    :catch_1
    move-exception v0

    .line 10
    :try_start_4
    invoke-static {}, Lcom/serenegiant/glutils/AbstractRendererHolder;->access$100()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 11
    :goto_1
    invoke-direct {p0}, Lcom/serenegiant/glutils/AbstractRendererHolder$1;->release()V

    goto :goto_3

    :goto_2
    invoke-direct {p0}, Lcom/serenegiant/glutils/AbstractRendererHolder$1;->release()V

    throw v0

    :cond_2
    :goto_3
    return-void

    :catchall_1
    move-exception v1

    .line 12
    :try_start_5
    monitor-exit v0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    throw v1
.end method
