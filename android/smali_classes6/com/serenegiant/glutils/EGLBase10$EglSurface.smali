.class public Lcom/serenegiant/glutils/EGLBase10$EglSurface;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/serenegiant/glutils/EGLBase$IEglSurface;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/serenegiant/glutils/EGLBase10;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "EglSurface"
.end annotation


# instance fields
.field private final mEglBase:Lcom/serenegiant/glutils/EGLBase10;

.field private mEglSurface:Ljavax/microedition/khronos/egl/EGLSurface;


# direct methods
.method private constructor <init>(Lcom/serenegiant/glutils/EGLBase10;II)V
    .locals 1

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    sget-object v0, Ljavax/microedition/khronos/egl/EGL10;->EGL_NO_SURFACE:Ljavax/microedition/khronos/egl/EGLSurface;

    iput-object v0, p0, Lcom/serenegiant/glutils/EGLBase10$EglSurface;->mEglSurface:Ljavax/microedition/khronos/egl/EGLSurface;

    .line 13
    iput-object p1, p0, Lcom/serenegiant/glutils/EGLBase10$EglSurface;->mEglBase:Lcom/serenegiant/glutils/EGLBase10;

    if-lez p2, :cond_1

    if-gtz p3, :cond_0

    goto :goto_0

    .line 14
    :cond_0
    invoke-static {p1, p2, p3}, Lcom/serenegiant/glutils/EGLBase10;->access$200(Lcom/serenegiant/glutils/EGLBase10;II)Ljavax/microedition/khronos/egl/EGLSurface;

    move-result-object p1

    iput-object p1, p0, Lcom/serenegiant/glutils/EGLBase10$EglSurface;->mEglSurface:Ljavax/microedition/khronos/egl/EGLSurface;

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p2, 0x1

    .line 15
    invoke-static {p1, p2, p2}, Lcom/serenegiant/glutils/EGLBase10;->access$200(Lcom/serenegiant/glutils/EGLBase10;II)Ljavax/microedition/khronos/egl/EGLSurface;

    move-result-object p1

    iput-object p1, p0, Lcom/serenegiant/glutils/EGLBase10$EglSurface;->mEglSurface:Ljavax/microedition/khronos/egl/EGLSurface;

    :goto_1
    return-void
.end method

.method synthetic constructor <init>(Lcom/serenegiant/glutils/EGLBase10;IILcom/serenegiant/glutils/EGLBase10$1;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2, p3}, Lcom/serenegiant/glutils/EGLBase10$EglSurface;-><init>(Lcom/serenegiant/glutils/EGLBase10;II)V

    return-void
.end method

.method private constructor <init>(Lcom/serenegiant/glutils/EGLBase10;Ljava/lang/Object;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    sget-object v0, Ljavax/microedition/khronos/egl/EGL10;->EGL_NO_SURFACE:Ljavax/microedition/khronos/egl/EGLSurface;

    iput-object v0, p0, Lcom/serenegiant/glutils/EGLBase10$EglSurface;->mEglSurface:Ljavax/microedition/khronos/egl/EGLSurface;

    .line 5
    iput-object p1, p0, Lcom/serenegiant/glutils/EGLBase10$EglSurface;->mEglBase:Lcom/serenegiant/glutils/EGLBase10;

    .line 6
    instance-of v0, p2, Landroid/view/Surface;

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/serenegiant/utils/BuildCheck;->isAndroid4_2()Z

    move-result v1

    if-nez v1, :cond_0

    .line 7
    new-instance v0, Lcom/serenegiant/glutils/EGLBase10$MySurfaceHolder;

    check-cast p2, Landroid/view/Surface;

    invoke-direct {v0, p2}, Lcom/serenegiant/glutils/EGLBase10$MySurfaceHolder;-><init>(Landroid/view/Surface;)V

    invoke-static {p1, v0}, Lcom/serenegiant/glutils/EGLBase10;->access$100(Lcom/serenegiant/glutils/EGLBase10;Ljava/lang/Object;)Ljavax/microedition/khronos/egl/EGLSurface;

    move-result-object p1

    iput-object p1, p0, Lcom/serenegiant/glutils/EGLBase10$EglSurface;->mEglSurface:Ljavax/microedition/khronos/egl/EGLSurface;

    goto :goto_1

    :cond_0
    if-nez v0, :cond_2

    .line 8
    instance-of v0, p2, Landroid/view/SurfaceHolder;

    if-nez v0, :cond_2

    instance-of v0, p2, Landroid/graphics/SurfaceTexture;

    if-nez v0, :cond_2

    instance-of v0, p2, Landroid/view/SurfaceView;

    if-eqz v0, :cond_1

    goto :goto_0

    .line 9
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "unsupported surface"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 10
    :cond_2
    :goto_0
    invoke-static {p1, p2}, Lcom/serenegiant/glutils/EGLBase10;->access$100(Lcom/serenegiant/glutils/EGLBase10;Ljava/lang/Object;)Ljavax/microedition/khronos/egl/EGLSurface;

    move-result-object p1

    iput-object p1, p0, Lcom/serenegiant/glutils/EGLBase10$EglSurface;->mEglSurface:Ljavax/microedition/khronos/egl/EGLSurface;

    :goto_1
    return-void
.end method

.method synthetic constructor <init>(Lcom/serenegiant/glutils/EGLBase10;Ljava/lang/Object;Lcom/serenegiant/glutils/EGLBase10$1;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .line 2
    invoke-direct {p0, p1, p2}, Lcom/serenegiant/glutils/EGLBase10$EglSurface;-><init>(Lcom/serenegiant/glutils/EGLBase10;Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public getContext()Lcom/serenegiant/glutils/EGLBase$IContext;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/serenegiant/glutils/EGLBase10$EglSurface;->mEglBase:Lcom/serenegiant/glutils/EGLBase10;

    invoke-virtual {v0}, Lcom/serenegiant/glutils/EGLBase10;->getContext()Lcom/serenegiant/glutils/EGLBase10$Context;

    move-result-object v0

    return-object v0
.end method

.method public isValid()Z
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/serenegiant/glutils/EGLBase10$EglSurface;->mEglSurface:Ljavax/microedition/khronos/egl/EGLSurface;

    if-eqz v0, :cond_0

    sget-object v1, Ljavax/microedition/khronos/egl/EGL10;->EGL_NO_SURFACE:Ljavax/microedition/khronos/egl/EGLSurface;

    if-eq v0, v1, :cond_0

    iget-object v1, p0, Lcom/serenegiant/glutils/EGLBase10$EglSurface;->mEglBase:Lcom/serenegiant/glutils/EGLBase10;

    .line 2
    invoke-static {v1, v0}, Lcom/serenegiant/glutils/EGLBase10;->access$400(Lcom/serenegiant/glutils/EGLBase10;Ljavax/microedition/khronos/egl/EGLSurface;)I

    move-result v0

    if-lez v0, :cond_0

    iget-object v0, p0, Lcom/serenegiant/glutils/EGLBase10$EglSurface;->mEglBase:Lcom/serenegiant/glutils/EGLBase10;

    iget-object v1, p0, Lcom/serenegiant/glutils/EGLBase10$EglSurface;->mEglSurface:Ljavax/microedition/khronos/egl/EGLSurface;

    .line 3
    invoke-static {v0, v1}, Lcom/serenegiant/glutils/EGLBase10;->access$500(Lcom/serenegiant/glutils/EGLBase10;Ljavax/microedition/khronos/egl/EGLSurface;)I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public makeCurrent()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/serenegiant/glutils/EGLBase10$EglSurface;->mEglBase:Lcom/serenegiant/glutils/EGLBase10;

    iget-object v1, p0, Lcom/serenegiant/glutils/EGLBase10$EglSurface;->mEglSurface:Ljavax/microedition/khronos/egl/EGLSurface;

    invoke-static {v0, v1}, Lcom/serenegiant/glutils/EGLBase10;->access$300(Lcom/serenegiant/glutils/EGLBase10;Ljavax/microedition/khronos/egl/EGLSurface;)Z

    .line 2
    iget-object v0, p0, Lcom/serenegiant/glutils/EGLBase10$EglSurface;->mEglBase:Lcom/serenegiant/glutils/EGLBase10;

    invoke-virtual {v0}, Lcom/serenegiant/glutils/EGLBase10;->getGlVersion()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x2

    if-lt v0, v2, :cond_0

    .line 3
    iget-object v0, p0, Lcom/serenegiant/glutils/EGLBase10$EglSurface;->mEglBase:Lcom/serenegiant/glutils/EGLBase10;

    iget-object v2, p0, Lcom/serenegiant/glutils/EGLBase10$EglSurface;->mEglSurface:Ljavax/microedition/khronos/egl/EGLSurface;

    .line 4
    invoke-static {v0, v2}, Lcom/serenegiant/glutils/EGLBase10;->access$400(Lcom/serenegiant/glutils/EGLBase10;Ljavax/microedition/khronos/egl/EGLSurface;)I

    move-result v0

    iget-object v2, p0, Lcom/serenegiant/glutils/EGLBase10$EglSurface;->mEglBase:Lcom/serenegiant/glutils/EGLBase10;

    iget-object v3, p0, Lcom/serenegiant/glutils/EGLBase10$EglSurface;->mEglSurface:Ljavax/microedition/khronos/egl/EGLSurface;

    invoke-static {v2, v3}, Lcom/serenegiant/glutils/EGLBase10;->access$500(Lcom/serenegiant/glutils/EGLBase10;Ljavax/microedition/khronos/egl/EGLSurface;)I

    move-result v2

    .line 5
    invoke-static {v1, v1, v0, v2}, Landroid/opengl/GLES20;->glViewport(IIII)V

    goto :goto_0

    .line 6
    :cond_0
    iget-object v0, p0, Lcom/serenegiant/glutils/EGLBase10$EglSurface;->mEglBase:Lcom/serenegiant/glutils/EGLBase10;

    iget-object v2, p0, Lcom/serenegiant/glutils/EGLBase10$EglSurface;->mEglSurface:Ljavax/microedition/khronos/egl/EGLSurface;

    .line 7
    invoke-static {v0, v2}, Lcom/serenegiant/glutils/EGLBase10;->access$400(Lcom/serenegiant/glutils/EGLBase10;Ljavax/microedition/khronos/egl/EGLSurface;)I

    move-result v0

    iget-object v2, p0, Lcom/serenegiant/glutils/EGLBase10$EglSurface;->mEglBase:Lcom/serenegiant/glutils/EGLBase10;

    iget-object v3, p0, Lcom/serenegiant/glutils/EGLBase10$EglSurface;->mEglSurface:Ljavax/microedition/khronos/egl/EGLSurface;

    invoke-static {v2, v3}, Lcom/serenegiant/glutils/EGLBase10;->access$500(Lcom/serenegiant/glutils/EGLBase10;Ljavax/microedition/khronos/egl/EGLSurface;)I

    move-result v2

    .line 8
    invoke-static {v1, v1, v0, v2}, Landroid/opengl/GLES10;->glViewport(IIII)V

    :goto_0
    return-void
.end method

.method public release()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/serenegiant/glutils/EGLBase10$EglSurface;->mEglBase:Lcom/serenegiant/glutils/EGLBase10;

    invoke-virtual {v0}, Lcom/serenegiant/glutils/EGLBase10;->makeDefault()V

    .line 2
    iget-object v0, p0, Lcom/serenegiant/glutils/EGLBase10$EglSurface;->mEglBase:Lcom/serenegiant/glutils/EGLBase10;

    iget-object v1, p0, Lcom/serenegiant/glutils/EGLBase10$EglSurface;->mEglSurface:Ljavax/microedition/khronos/egl/EGLSurface;

    invoke-static {v0, v1}, Lcom/serenegiant/glutils/EGLBase10;->access$800(Lcom/serenegiant/glutils/EGLBase10;Ljavax/microedition/khronos/egl/EGLSurface;)V

    .line 3
    sget-object v0, Ljavax/microedition/khronos/egl/EGL10;->EGL_NO_SURFACE:Ljavax/microedition/khronos/egl/EGLSurface;

    iput-object v0, p0, Lcom/serenegiant/glutils/EGLBase10$EglSurface;->mEglSurface:Ljavax/microedition/khronos/egl/EGLSurface;

    return-void
.end method

.method public setPresentationTime(J)V
    .locals 0

    return-void
.end method

.method public swap()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/serenegiant/glutils/EGLBase10$EglSurface;->mEglBase:Lcom/serenegiant/glutils/EGLBase10;

    iget-object v1, p0, Lcom/serenegiant/glutils/EGLBase10$EglSurface;->mEglSurface:Ljavax/microedition/khronos/egl/EGLSurface;

    invoke-static {v0, v1}, Lcom/serenegiant/glutils/EGLBase10;->access$600(Lcom/serenegiant/glutils/EGLBase10;Ljavax/microedition/khronos/egl/EGLSurface;)I

    return-void
.end method

.method public swap(J)V
    .locals 2

    .line 2
    iget-object v0, p0, Lcom/serenegiant/glutils/EGLBase10$EglSurface;->mEglBase:Lcom/serenegiant/glutils/EGLBase10;

    iget-object v1, p0, Lcom/serenegiant/glutils/EGLBase10$EglSurface;->mEglSurface:Ljavax/microedition/khronos/egl/EGLSurface;

    invoke-static {v0, v1, p1, p2}, Lcom/serenegiant/glutils/EGLBase10;->access$700(Lcom/serenegiant/glutils/EGLBase10;Ljavax/microedition/khronos/egl/EGLSurface;J)I

    return-void
.end method
