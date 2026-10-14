.class Lcom/amap/api/mapcore/util/ia$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amap/api/mapcore/util/ia;->d()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/amap/api/mapcore/util/ia;


# direct methods
.method constructor <init>(Lcom/amap/api/mapcore/util/ia;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/amap/api/mapcore/util/ia$b;->a:Lcom/amap/api/mapcore/util/ia;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    const/4 v0, -0x1

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 1
    :try_start_0
    iget-object v3, p0, Lcom/amap/api/mapcore/util/ia$b;->a:Lcom/amap/api/mapcore/util/ia;

    const/4 v4, 0x0

    invoke-static {v3, v4}, Lcom/amap/api/mapcore/util/ia;->j(Lcom/amap/api/mapcore/util/ia;Z)Z

    .line 2
    iget-object v3, p0, Lcom/amap/api/mapcore/util/ia$b;->a:Lcom/amap/api/mapcore/util/ia;

    invoke-static {v3}, Lcom/amap/api/mapcore/util/ia;->m(Lcom/amap/api/mapcore/util/ia;)Z

    move-result v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v3, :cond_3

    .line 3
    iget-object v3, p0, Lcom/amap/api/mapcore/util/ia$b;->a:Lcom/amap/api/mapcore/util/ia;

    invoke-static {v3}, Lcom/amap/api/mapcore/util/ia;->y(Lcom/amap/api/mapcore/util/ia;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 4
    iget-object v3, p0, Lcom/amap/api/mapcore/util/ia$b;->a:Lcom/amap/api/mapcore/util/ia;

    invoke-static {v3, v1}, Lcom/amap/api/mapcore/util/ia;->j(Lcom/amap/api/mapcore/util/ia;Z)Z

    .line 5
    iget-object v1, p0, Lcom/amap/api/mapcore/util/ia$b;->a:Lcom/amap/api/mapcore/util/ia;

    invoke-static {v1}, Lcom/amap/api/mapcore/util/ia;->r(Lcom/amap/api/mapcore/util/ia;)Lcom/amap/api/maps/model/CrossOverlay$GenerateCrossImageListener;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 6
    iget-object v1, p0, Lcom/amap/api/mapcore/util/ia$b;->a:Lcom/amap/api/mapcore/util/ia;

    invoke-static {v1}, Lcom/amap/api/mapcore/util/ia;->r(Lcom/amap/api/mapcore/util/ia;)Lcom/amap/api/maps/model/CrossOverlay$GenerateCrossImageListener;

    move-result-object v1

    invoke-interface {v1, v2, v0}, Lcom/amap/api/maps/model/CrossOverlay$GenerateCrossImageListener;->onGenerateComplete(Landroid/graphics/Bitmap;I)V

    .line 7
    :cond_0
    iget-object v0, p0, Lcom/amap/api/mapcore/util/ia$b;->a:Lcom/amap/api/mapcore/util/ia;

    invoke-static {v0}, Lcom/amap/api/mapcore/util/ia;->z(Lcom/amap/api/mapcore/util/ia;)Landroid/opengl/EGLContext;

    move-result-object v0

    sget-object v1, Landroid/opengl/EGL14;->EGL_NO_CONTEXT:Landroid/opengl/EGLContext;

    if-eq v0, v1, :cond_1

    .line 8
    iget-object v0, p0, Lcom/amap/api/mapcore/util/ia$b;->a:Lcom/amap/api/mapcore/util/ia;

    invoke-static {v0}, Lcom/amap/api/mapcore/util/ia;->A(Lcom/amap/api/mapcore/util/ia;)Landroid/opengl/EGLDisplay;

    move-result-object v0

    iget-object v1, p0, Lcom/amap/api/mapcore/util/ia$b;->a:Lcom/amap/api/mapcore/util/ia;

    .line 9
    invoke-static {v1}, Lcom/amap/api/mapcore/util/ia;->z(Lcom/amap/api/mapcore/util/ia;)Landroid/opengl/EGLContext;

    move-result-object v1

    .line 10
    invoke-static {v0, v1}, Landroid/opengl/EGL14;->eglDestroyContext(Landroid/opengl/EGLDisplay;Landroid/opengl/EGLContext;)Z

    .line 11
    iget-object v0, p0, Lcom/amap/api/mapcore/util/ia$b;->a:Lcom/amap/api/mapcore/util/ia;

    invoke-static {v0}, Lcom/amap/api/mapcore/util/ia;->A(Lcom/amap/api/mapcore/util/ia;)Landroid/opengl/EGLDisplay;

    move-result-object v0

    iget-object v1, p0, Lcom/amap/api/mapcore/util/ia$b;->a:Lcom/amap/api/mapcore/util/ia;

    invoke-static {v1}, Lcom/amap/api/mapcore/util/ia;->B(Lcom/amap/api/mapcore/util/ia;)Landroid/opengl/EGLSurface;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/opengl/EGL14;->eglDestroySurface(Landroid/opengl/EGLDisplay;Landroid/opengl/EGLSurface;)Z

    .line 12
    iget-object v0, p0, Lcom/amap/api/mapcore/util/ia$b;->a:Lcom/amap/api/mapcore/util/ia;

    invoke-static {v0, v2}, Lcom/amap/api/mapcore/util/ia;->b(Lcom/amap/api/mapcore/util/ia;Landroid/opengl/EGLContext;)Landroid/opengl/EGLContext;

    .line 13
    :cond_1
    iget-object v0, p0, Lcom/amap/api/mapcore/util/ia$b;->a:Lcom/amap/api/mapcore/util/ia;

    invoke-static {v0}, Lcom/amap/api/mapcore/util/ia;->A(Lcom/amap/api/mapcore/util/ia;)Landroid/opengl/EGLDisplay;

    move-result-object v0

    sget-object v1, Landroid/opengl/EGL14;->EGL_NO_DISPLAY:Landroid/opengl/EGLDisplay;

    if-eq v0, v1, :cond_2

    .line 14
    iget-object v0, p0, Lcom/amap/api/mapcore/util/ia$b;->a:Lcom/amap/api/mapcore/util/ia;

    invoke-static {v0}, Lcom/amap/api/mapcore/util/ia;->A(Lcom/amap/api/mapcore/util/ia;)Landroid/opengl/EGLDisplay;

    move-result-object v0

    invoke-static {v0}, Landroid/opengl/EGL14;->eglTerminate(Landroid/opengl/EGLDisplay;)Z

    .line 15
    iget-object v0, p0, Lcom/amap/api/mapcore/util/ia$b;->a:Lcom/amap/api/mapcore/util/ia;

    invoke-static {v0, v2}, Lcom/amap/api/mapcore/util/ia;->c(Lcom/amap/api/mapcore/util/ia;Landroid/opengl/EGLDisplay;)Landroid/opengl/EGLDisplay;

    .line 16
    :cond_2
    iget-object v0, p0, Lcom/amap/api/mapcore/util/ia$b;->a:Lcom/amap/api/mapcore/util/ia;

    sget-object v1, Landroid/opengl/EGL14;->EGL_NO_CONTEXT:Landroid/opengl/EGLContext;

    invoke-static {v0, v1}, Lcom/amap/api/mapcore/util/ia;->b(Lcom/amap/api/mapcore/util/ia;Landroid/opengl/EGLContext;)Landroid/opengl/EGLContext;

    .line 17
    iget-object v0, p0, Lcom/amap/api/mapcore/util/ia$b;->a:Lcom/amap/api/mapcore/util/ia;

    sget-object v1, Landroid/opengl/EGL14;->EGL_NO_DISPLAY:Landroid/opengl/EGLDisplay;

    invoke-static {v0, v1}, Lcom/amap/api/mapcore/util/ia;->c(Lcom/amap/api/mapcore/util/ia;Landroid/opengl/EGLDisplay;)Landroid/opengl/EGLDisplay;

    return-void

    .line 18
    :cond_3
    :try_start_1
    iget-object v3, p0, Lcom/amap/api/mapcore/util/ia$b;->a:Lcom/amap/api/mapcore/util/ia;

    invoke-static {v3, v4}, Lcom/amap/api/mapcore/util/ia;->a(Lcom/amap/api/mapcore/util/ia;I)I

    const/4 v3, 0x0

    .line 19
    :goto_0
    iget-object v5, p0, Lcom/amap/api/mapcore/util/ia$b;->a:Lcom/amap/api/mapcore/util/ia;

    invoke-static {v5}, Lcom/amap/api/mapcore/util/ia;->m(Lcom/amap/api/mapcore/util/ia;)Z

    move-result v5

    if-nez v5, :cond_9

    iget-object v5, p0, Lcom/amap/api/mapcore/util/ia$b;->a:Lcom/amap/api/mapcore/util/ia;

    invoke-static {v5}, Lcom/amap/api/mapcore/util/ia;->n(Lcom/amap/api/mapcore/util/ia;)I

    move-result v5
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    const/4 v6, 0x5

    if-ge v5, v6, :cond_9

    const/16 v5, 0x32

    if-ge v3, v5, :cond_9

    add-int/lit8 v3, v3, 0x1

    const-wide/16 v5, 0x10

    .line 20
    :try_start_2
    invoke-static {v5, v6}, Ljava/lang/Thread;->sleep(J)V
    :try_end_2
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1

    :catch_0
    move-exception v5

    .line 21
    :try_start_3
    invoke-virtual {v5}, Ljava/lang/InterruptedException;->printStackTrace()V

    .line 22
    :goto_1
    iget-object v5, p0, Lcom/amap/api/mapcore/util/ia$b;->a:Lcom/amap/api/mapcore/util/ia;

    invoke-static {v5}, Lcom/amap/api/mapcore/util/ia;->q(Lcom/amap/api/mapcore/util/ia;)Z

    move-result v5

    if-nez v5, :cond_8

    .line 23
    iget-object v3, p0, Lcom/amap/api/mapcore/util/ia$b;->a:Lcom/amap/api/mapcore/util/ia;

    invoke-static {v3}, Lcom/amap/api/mapcore/util/ia;->r(Lcom/amap/api/mapcore/util/ia;)Lcom/amap/api/maps/model/CrossOverlay$GenerateCrossImageListener;

    move-result-object v3

    if-eqz v3, :cond_4

    .line 24
    iget-object v3, p0, Lcom/amap/api/mapcore/util/ia$b;->a:Lcom/amap/api/mapcore/util/ia;

    invoke-static {v3}, Lcom/amap/api/mapcore/util/ia;->r(Lcom/amap/api/mapcore/util/ia;)Lcom/amap/api/maps/model/CrossOverlay$GenerateCrossImageListener;

    move-result-object v3

    invoke-interface {v3, v2, v0}, Lcom/amap/api/maps/model/CrossOverlay$GenerateCrossImageListener;->onGenerateComplete(Landroid/graphics/Bitmap;I)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 25
    :cond_4
    iget-object v3, p0, Lcom/amap/api/mapcore/util/ia$b;->a:Lcom/amap/api/mapcore/util/ia;

    invoke-static {v3}, Lcom/amap/api/mapcore/util/ia;->y(Lcom/amap/api/mapcore/util/ia;)Z

    move-result v3

    if-nez v3, :cond_5

    .line 26
    iget-object v3, p0, Lcom/amap/api/mapcore/util/ia$b;->a:Lcom/amap/api/mapcore/util/ia;

    invoke-static {v3, v1}, Lcom/amap/api/mapcore/util/ia;->j(Lcom/amap/api/mapcore/util/ia;Z)Z

    .line 27
    iget-object v1, p0, Lcom/amap/api/mapcore/util/ia$b;->a:Lcom/amap/api/mapcore/util/ia;

    invoke-static {v1}, Lcom/amap/api/mapcore/util/ia;->r(Lcom/amap/api/mapcore/util/ia;)Lcom/amap/api/maps/model/CrossOverlay$GenerateCrossImageListener;

    move-result-object v1

    if-eqz v1, :cond_5

    .line 28
    iget-object v1, p0, Lcom/amap/api/mapcore/util/ia$b;->a:Lcom/amap/api/mapcore/util/ia;

    invoke-static {v1}, Lcom/amap/api/mapcore/util/ia;->r(Lcom/amap/api/mapcore/util/ia;)Lcom/amap/api/maps/model/CrossOverlay$GenerateCrossImageListener;

    move-result-object v1

    invoke-interface {v1, v2, v0}, Lcom/amap/api/maps/model/CrossOverlay$GenerateCrossImageListener;->onGenerateComplete(Landroid/graphics/Bitmap;I)V

    .line 29
    :cond_5
    iget-object v0, p0, Lcom/amap/api/mapcore/util/ia$b;->a:Lcom/amap/api/mapcore/util/ia;

    invoke-static {v0}, Lcom/amap/api/mapcore/util/ia;->z(Lcom/amap/api/mapcore/util/ia;)Landroid/opengl/EGLContext;

    move-result-object v0

    sget-object v1, Landroid/opengl/EGL14;->EGL_NO_CONTEXT:Landroid/opengl/EGLContext;

    if-eq v0, v1, :cond_6

    .line 30
    iget-object v0, p0, Lcom/amap/api/mapcore/util/ia$b;->a:Lcom/amap/api/mapcore/util/ia;

    invoke-static {v0}, Lcom/amap/api/mapcore/util/ia;->A(Lcom/amap/api/mapcore/util/ia;)Landroid/opengl/EGLDisplay;

    move-result-object v0

    iget-object v1, p0, Lcom/amap/api/mapcore/util/ia$b;->a:Lcom/amap/api/mapcore/util/ia;

    .line 31
    invoke-static {v1}, Lcom/amap/api/mapcore/util/ia;->z(Lcom/amap/api/mapcore/util/ia;)Landroid/opengl/EGLContext;

    move-result-object v1

    .line 32
    invoke-static {v0, v1}, Landroid/opengl/EGL14;->eglDestroyContext(Landroid/opengl/EGLDisplay;Landroid/opengl/EGLContext;)Z

    .line 33
    iget-object v0, p0, Lcom/amap/api/mapcore/util/ia$b;->a:Lcom/amap/api/mapcore/util/ia;

    invoke-static {v0}, Lcom/amap/api/mapcore/util/ia;->A(Lcom/amap/api/mapcore/util/ia;)Landroid/opengl/EGLDisplay;

    move-result-object v0

    iget-object v1, p0, Lcom/amap/api/mapcore/util/ia$b;->a:Lcom/amap/api/mapcore/util/ia;

    invoke-static {v1}, Lcom/amap/api/mapcore/util/ia;->B(Lcom/amap/api/mapcore/util/ia;)Landroid/opengl/EGLSurface;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/opengl/EGL14;->eglDestroySurface(Landroid/opengl/EGLDisplay;Landroid/opengl/EGLSurface;)Z

    .line 34
    iget-object v0, p0, Lcom/amap/api/mapcore/util/ia$b;->a:Lcom/amap/api/mapcore/util/ia;

    invoke-static {v0, v2}, Lcom/amap/api/mapcore/util/ia;->b(Lcom/amap/api/mapcore/util/ia;Landroid/opengl/EGLContext;)Landroid/opengl/EGLContext;

    .line 35
    :cond_6
    iget-object v0, p0, Lcom/amap/api/mapcore/util/ia$b;->a:Lcom/amap/api/mapcore/util/ia;

    invoke-static {v0}, Lcom/amap/api/mapcore/util/ia;->A(Lcom/amap/api/mapcore/util/ia;)Landroid/opengl/EGLDisplay;

    move-result-object v0

    sget-object v1, Landroid/opengl/EGL14;->EGL_NO_DISPLAY:Landroid/opengl/EGLDisplay;

    if-eq v0, v1, :cond_7

    .line 36
    iget-object v0, p0, Lcom/amap/api/mapcore/util/ia$b;->a:Lcom/amap/api/mapcore/util/ia;

    invoke-static {v0}, Lcom/amap/api/mapcore/util/ia;->A(Lcom/amap/api/mapcore/util/ia;)Landroid/opengl/EGLDisplay;

    move-result-object v0

    invoke-static {v0}, Landroid/opengl/EGL14;->eglTerminate(Landroid/opengl/EGLDisplay;)Z

    .line 37
    iget-object v0, p0, Lcom/amap/api/mapcore/util/ia$b;->a:Lcom/amap/api/mapcore/util/ia;

    invoke-static {v0, v2}, Lcom/amap/api/mapcore/util/ia;->c(Lcom/amap/api/mapcore/util/ia;Landroid/opengl/EGLDisplay;)Landroid/opengl/EGLDisplay;

    .line 38
    :cond_7
    iget-object v0, p0, Lcom/amap/api/mapcore/util/ia$b;->a:Lcom/amap/api/mapcore/util/ia;

    sget-object v1, Landroid/opengl/EGL14;->EGL_NO_CONTEXT:Landroid/opengl/EGLContext;

    invoke-static {v0, v1}, Lcom/amap/api/mapcore/util/ia;->b(Lcom/amap/api/mapcore/util/ia;Landroid/opengl/EGLContext;)Landroid/opengl/EGLContext;

    .line 39
    iget-object v0, p0, Lcom/amap/api/mapcore/util/ia$b;->a:Lcom/amap/api/mapcore/util/ia;

    sget-object v1, Landroid/opengl/EGL14;->EGL_NO_DISPLAY:Landroid/opengl/EGLDisplay;

    invoke-static {v0, v1}, Lcom/amap/api/mapcore/util/ia;->c(Lcom/amap/api/mapcore/util/ia;Landroid/opengl/EGLDisplay;)Landroid/opengl/EGLDisplay;

    return-void

    .line 40
    :cond_8
    :try_start_4
    iget-object v5, p0, Lcom/amap/api/mapcore/util/ia$b;->a:Lcom/amap/api/mapcore/util/ia;

    invoke-static {v5}, Lcom/amap/api/mapcore/util/ia;->t(Lcom/amap/api/mapcore/util/ia;)I

    move-result v5

    iget-object v6, p0, Lcom/amap/api/mapcore/util/ia$b;->a:Lcom/amap/api/mapcore/util/ia;

    invoke-static {v6}, Lcom/amap/api/mapcore/util/ia;->v(Lcom/amap/api/mapcore/util/ia;)I

    move-result v6

    invoke-static {v4, v4, v5, v6}, Landroid/opengl/GLES20;->glViewport(IIII)V

    const/16 v5, 0x4100

    .line 41
    invoke-static {v5}, Landroid/opengl/GLES20;->glClear(I)V

    .line 42
    iget-object v5, p0, Lcom/amap/api/mapcore/util/ia$b;->a:Lcom/amap/api/mapcore/util/ia;

    invoke-static {v5}, Lcom/amap/api/mapcore/util/ia;->x(Lcom/amap/api/mapcore/util/ia;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto/16 :goto_0

    .line 43
    :cond_9
    iget-object v3, p0, Lcom/amap/api/mapcore/util/ia$b;->a:Lcom/amap/api/mapcore/util/ia;

    invoke-static {v3}, Lcom/amap/api/mapcore/util/ia;->y(Lcom/amap/api/mapcore/util/ia;)Z

    move-result v3

    if-nez v3, :cond_a

    .line 44
    iget-object v3, p0, Lcom/amap/api/mapcore/util/ia$b;->a:Lcom/amap/api/mapcore/util/ia;

    invoke-static {v3, v1}, Lcom/amap/api/mapcore/util/ia;->j(Lcom/amap/api/mapcore/util/ia;Z)Z

    .line 45
    iget-object v1, p0, Lcom/amap/api/mapcore/util/ia$b;->a:Lcom/amap/api/mapcore/util/ia;

    invoke-static {v1}, Lcom/amap/api/mapcore/util/ia;->r(Lcom/amap/api/mapcore/util/ia;)Lcom/amap/api/maps/model/CrossOverlay$GenerateCrossImageListener;

    move-result-object v1

    if-eqz v1, :cond_a

    .line 46
    iget-object v1, p0, Lcom/amap/api/mapcore/util/ia$b;->a:Lcom/amap/api/mapcore/util/ia;

    invoke-static {v1}, Lcom/amap/api/mapcore/util/ia;->r(Lcom/amap/api/mapcore/util/ia;)Lcom/amap/api/maps/model/CrossOverlay$GenerateCrossImageListener;

    move-result-object v1

    invoke-interface {v1, v2, v0}, Lcom/amap/api/maps/model/CrossOverlay$GenerateCrossImageListener;->onGenerateComplete(Landroid/graphics/Bitmap;I)V

    .line 47
    :cond_a
    iget-object v0, p0, Lcom/amap/api/mapcore/util/ia$b;->a:Lcom/amap/api/mapcore/util/ia;

    invoke-static {v0}, Lcom/amap/api/mapcore/util/ia;->z(Lcom/amap/api/mapcore/util/ia;)Landroid/opengl/EGLContext;

    move-result-object v0

    sget-object v1, Landroid/opengl/EGL14;->EGL_NO_CONTEXT:Landroid/opengl/EGLContext;

    if-eq v0, v1, :cond_b

    .line 48
    iget-object v0, p0, Lcom/amap/api/mapcore/util/ia$b;->a:Lcom/amap/api/mapcore/util/ia;

    invoke-static {v0}, Lcom/amap/api/mapcore/util/ia;->A(Lcom/amap/api/mapcore/util/ia;)Landroid/opengl/EGLDisplay;

    move-result-object v0

    iget-object v1, p0, Lcom/amap/api/mapcore/util/ia$b;->a:Lcom/amap/api/mapcore/util/ia;

    .line 49
    invoke-static {v1}, Lcom/amap/api/mapcore/util/ia;->z(Lcom/amap/api/mapcore/util/ia;)Landroid/opengl/EGLContext;

    move-result-object v1

    .line 50
    invoke-static {v0, v1}, Landroid/opengl/EGL14;->eglDestroyContext(Landroid/opengl/EGLDisplay;Landroid/opengl/EGLContext;)Z

    .line 51
    iget-object v0, p0, Lcom/amap/api/mapcore/util/ia$b;->a:Lcom/amap/api/mapcore/util/ia;

    invoke-static {v0}, Lcom/amap/api/mapcore/util/ia;->A(Lcom/amap/api/mapcore/util/ia;)Landroid/opengl/EGLDisplay;

    move-result-object v0

    iget-object v1, p0, Lcom/amap/api/mapcore/util/ia$b;->a:Lcom/amap/api/mapcore/util/ia;

    invoke-static {v1}, Lcom/amap/api/mapcore/util/ia;->B(Lcom/amap/api/mapcore/util/ia;)Landroid/opengl/EGLSurface;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/opengl/EGL14;->eglDestroySurface(Landroid/opengl/EGLDisplay;Landroid/opengl/EGLSurface;)Z

    .line 52
    iget-object v0, p0, Lcom/amap/api/mapcore/util/ia$b;->a:Lcom/amap/api/mapcore/util/ia;

    invoke-static {v0, v2}, Lcom/amap/api/mapcore/util/ia;->b(Lcom/amap/api/mapcore/util/ia;Landroid/opengl/EGLContext;)Landroid/opengl/EGLContext;

    .line 53
    :cond_b
    iget-object v0, p0, Lcom/amap/api/mapcore/util/ia$b;->a:Lcom/amap/api/mapcore/util/ia;

    invoke-static {v0}, Lcom/amap/api/mapcore/util/ia;->A(Lcom/amap/api/mapcore/util/ia;)Landroid/opengl/EGLDisplay;

    move-result-object v0

    sget-object v1, Landroid/opengl/EGL14;->EGL_NO_DISPLAY:Landroid/opengl/EGLDisplay;

    if-eq v0, v1, :cond_c

    .line 54
    iget-object v0, p0, Lcom/amap/api/mapcore/util/ia$b;->a:Lcom/amap/api/mapcore/util/ia;

    invoke-static {v0}, Lcom/amap/api/mapcore/util/ia;->A(Lcom/amap/api/mapcore/util/ia;)Landroid/opengl/EGLDisplay;

    move-result-object v0

    invoke-static {v0}, Landroid/opengl/EGL14;->eglTerminate(Landroid/opengl/EGLDisplay;)Z

    .line 55
    iget-object v0, p0, Lcom/amap/api/mapcore/util/ia$b;->a:Lcom/amap/api/mapcore/util/ia;

    invoke-static {v0, v2}, Lcom/amap/api/mapcore/util/ia;->c(Lcom/amap/api/mapcore/util/ia;Landroid/opengl/EGLDisplay;)Landroid/opengl/EGLDisplay;

    .line 56
    :cond_c
    iget-object v0, p0, Lcom/amap/api/mapcore/util/ia$b;->a:Lcom/amap/api/mapcore/util/ia;

    sget-object v1, Landroid/opengl/EGL14;->EGL_NO_CONTEXT:Landroid/opengl/EGLContext;

    invoke-static {v0, v1}, Lcom/amap/api/mapcore/util/ia;->b(Lcom/amap/api/mapcore/util/ia;Landroid/opengl/EGLContext;)Landroid/opengl/EGLContext;

    .line 57
    iget-object v0, p0, Lcom/amap/api/mapcore/util/ia$b;->a:Lcom/amap/api/mapcore/util/ia;

    sget-object v1, Landroid/opengl/EGL14;->EGL_NO_DISPLAY:Landroid/opengl/EGLDisplay;

    invoke-static {v0, v1}, Lcom/amap/api/mapcore/util/ia;->c(Lcom/amap/api/mapcore/util/ia;Landroid/opengl/EGLDisplay;)Landroid/opengl/EGLDisplay;

    return-void

    :catchall_0
    move-exception v3

    .line 58
    iget-object v4, p0, Lcom/amap/api/mapcore/util/ia$b;->a:Lcom/amap/api/mapcore/util/ia;

    invoke-static {v4}, Lcom/amap/api/mapcore/util/ia;->y(Lcom/amap/api/mapcore/util/ia;)Z

    move-result v4

    if-nez v4, :cond_d

    .line 59
    iget-object v4, p0, Lcom/amap/api/mapcore/util/ia$b;->a:Lcom/amap/api/mapcore/util/ia;

    invoke-static {v4, v1}, Lcom/amap/api/mapcore/util/ia;->j(Lcom/amap/api/mapcore/util/ia;Z)Z

    .line 60
    iget-object v1, p0, Lcom/amap/api/mapcore/util/ia$b;->a:Lcom/amap/api/mapcore/util/ia;

    invoke-static {v1}, Lcom/amap/api/mapcore/util/ia;->r(Lcom/amap/api/mapcore/util/ia;)Lcom/amap/api/maps/model/CrossOverlay$GenerateCrossImageListener;

    move-result-object v1

    if-eqz v1, :cond_d

    .line 61
    iget-object v1, p0, Lcom/amap/api/mapcore/util/ia$b;->a:Lcom/amap/api/mapcore/util/ia;

    invoke-static {v1}, Lcom/amap/api/mapcore/util/ia;->r(Lcom/amap/api/mapcore/util/ia;)Lcom/amap/api/maps/model/CrossOverlay$GenerateCrossImageListener;

    move-result-object v1

    invoke-interface {v1, v2, v0}, Lcom/amap/api/maps/model/CrossOverlay$GenerateCrossImageListener;->onGenerateComplete(Landroid/graphics/Bitmap;I)V

    .line 62
    :cond_d
    iget-object v0, p0, Lcom/amap/api/mapcore/util/ia$b;->a:Lcom/amap/api/mapcore/util/ia;

    invoke-static {v0}, Lcom/amap/api/mapcore/util/ia;->z(Lcom/amap/api/mapcore/util/ia;)Landroid/opengl/EGLContext;

    move-result-object v0

    sget-object v1, Landroid/opengl/EGL14;->EGL_NO_CONTEXT:Landroid/opengl/EGLContext;

    if-eq v0, v1, :cond_e

    .line 63
    iget-object v0, p0, Lcom/amap/api/mapcore/util/ia$b;->a:Lcom/amap/api/mapcore/util/ia;

    invoke-static {v0}, Lcom/amap/api/mapcore/util/ia;->A(Lcom/amap/api/mapcore/util/ia;)Landroid/opengl/EGLDisplay;

    move-result-object v0

    iget-object v1, p0, Lcom/amap/api/mapcore/util/ia$b;->a:Lcom/amap/api/mapcore/util/ia;

    .line 64
    invoke-static {v1}, Lcom/amap/api/mapcore/util/ia;->z(Lcom/amap/api/mapcore/util/ia;)Landroid/opengl/EGLContext;

    move-result-object v1

    .line 65
    invoke-static {v0, v1}, Landroid/opengl/EGL14;->eglDestroyContext(Landroid/opengl/EGLDisplay;Landroid/opengl/EGLContext;)Z

    .line 66
    iget-object v0, p0, Lcom/amap/api/mapcore/util/ia$b;->a:Lcom/amap/api/mapcore/util/ia;

    invoke-static {v0}, Lcom/amap/api/mapcore/util/ia;->A(Lcom/amap/api/mapcore/util/ia;)Landroid/opengl/EGLDisplay;

    move-result-object v0

    iget-object v1, p0, Lcom/amap/api/mapcore/util/ia$b;->a:Lcom/amap/api/mapcore/util/ia;

    invoke-static {v1}, Lcom/amap/api/mapcore/util/ia;->B(Lcom/amap/api/mapcore/util/ia;)Landroid/opengl/EGLSurface;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/opengl/EGL14;->eglDestroySurface(Landroid/opengl/EGLDisplay;Landroid/opengl/EGLSurface;)Z

    .line 67
    iget-object v0, p0, Lcom/amap/api/mapcore/util/ia$b;->a:Lcom/amap/api/mapcore/util/ia;

    invoke-static {v0, v2}, Lcom/amap/api/mapcore/util/ia;->b(Lcom/amap/api/mapcore/util/ia;Landroid/opengl/EGLContext;)Landroid/opengl/EGLContext;

    .line 68
    :cond_e
    iget-object v0, p0, Lcom/amap/api/mapcore/util/ia$b;->a:Lcom/amap/api/mapcore/util/ia;

    invoke-static {v0}, Lcom/amap/api/mapcore/util/ia;->A(Lcom/amap/api/mapcore/util/ia;)Landroid/opengl/EGLDisplay;

    move-result-object v0

    sget-object v1, Landroid/opengl/EGL14;->EGL_NO_DISPLAY:Landroid/opengl/EGLDisplay;

    if-eq v0, v1, :cond_f

    .line 69
    iget-object v0, p0, Lcom/amap/api/mapcore/util/ia$b;->a:Lcom/amap/api/mapcore/util/ia;

    invoke-static {v0}, Lcom/amap/api/mapcore/util/ia;->A(Lcom/amap/api/mapcore/util/ia;)Landroid/opengl/EGLDisplay;

    move-result-object v0

    invoke-static {v0}, Landroid/opengl/EGL14;->eglTerminate(Landroid/opengl/EGLDisplay;)Z

    .line 70
    iget-object v0, p0, Lcom/amap/api/mapcore/util/ia$b;->a:Lcom/amap/api/mapcore/util/ia;

    invoke-static {v0, v2}, Lcom/amap/api/mapcore/util/ia;->c(Lcom/amap/api/mapcore/util/ia;Landroid/opengl/EGLDisplay;)Landroid/opengl/EGLDisplay;

    .line 71
    :cond_f
    iget-object v0, p0, Lcom/amap/api/mapcore/util/ia$b;->a:Lcom/amap/api/mapcore/util/ia;

    sget-object v1, Landroid/opengl/EGL14;->EGL_NO_CONTEXT:Landroid/opengl/EGLContext;

    invoke-static {v0, v1}, Lcom/amap/api/mapcore/util/ia;->b(Lcom/amap/api/mapcore/util/ia;Landroid/opengl/EGLContext;)Landroid/opengl/EGLContext;

    .line 72
    iget-object v0, p0, Lcom/amap/api/mapcore/util/ia$b;->a:Lcom/amap/api/mapcore/util/ia;

    sget-object v1, Landroid/opengl/EGL14;->EGL_NO_DISPLAY:Landroid/opengl/EGLDisplay;

    invoke-static {v0, v1}, Lcom/amap/api/mapcore/util/ia;->c(Lcom/amap/api/mapcore/util/ia;Landroid/opengl/EGLDisplay;)Landroid/opengl/EGLDisplay;

    .line 73
    throw v3
.end method
