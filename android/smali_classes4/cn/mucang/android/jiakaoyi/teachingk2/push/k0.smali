.class public final Lcn/mucang/android/jiakaoyi/teachingk2/push/k0;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000@\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000b\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0003\u0008\u00c6\u0002\u0018\u00002\u00020\u0001B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002J\u0008\u0010\u0007\u001a\u00020\u0008H\u0002J\u0006\u0010\t\u001a\u00020\u0008J\u0006\u0010\n\u001a\u00020\u0008J\u0008\u0010\u000b\u001a\u0004\u0018\u00010\u000cJ\u0006\u0010\r\u001a\u00020\u0008J\u0006\u0010\u000e\u001a\u00020\u000fJ\u000e\u0010\u0010\u001a\u00020\u000f2\u0006\u0010\u0011\u001a\u00020\u0012J\u000e\u0010\u0013\u001a\u00020\u00082\u0006\u0010\u0011\u001a\u00020\u0012J\u000e\u0010\u0014\u001a\u00020\u00082\u0006\u0010\u0015\u001a\u00020\u0016J\u0008\u0010\u0017\u001a\u00020\u0008H\u0007J\u0010\u0010\u0017\u001a\u00020\u00082\u0008\u0010\u0015\u001a\u0004\u0018\u00010\u0016J\u000e\u0010\u0018\u001a\u00020\u00082\u0006\u0010\u0011\u001a\u00020\u0012R\u000e\u0010\u0003\u001a\u00020\u0004X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0010\u0010\u0005\u001a\u0004\u0018\u00010\u0006X\u0082\u000e\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u0019"
    }
    d2 = {
        "Lcn/mucang/android/jiakaoyi/teachingk2/push/AiCameraManager;",
        "",
        "()V",
        "closeTask",
        "Ljava/lang/Runnable;",
        "webRtcCamera",
        "Lcn/mucang/android/jiakaoyi/teachingk2/push/WebRtcCamera;",
        "checkUse",
        "",
        "destroy",
        "forceReconnect",
        "getSharedEglContext",
        "Lorg/webrtc/EglBase$Context;",
        "init",
        "isPlaying",
        "",
        "isRegisterFrameCallback",
        "callback",
        "Lcn/mucang/android/jiakaoyi/framework/camera/YuvFrameCallback;",
        "registerFrameCallback",
        "startPreview",
        "render",
        "Lorg/webrtc/SurfaceViewRenderer;",
        "stopPreview",
        "unregisterFrameCallback",
        "teachbase_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x5,
        0x1
    }
    xi = 0x30
.end annotation


# static fields
.field public static final a:Lcn/mucang/android/jiakaoyi/teachingk2/push/k0;

.field private static b:Lcn/mucang/android/jiakaoyi/teachingk2/push/WebRtcCamera;

.field private static c:Ljava/lang/Runnable;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcn/mucang/android/jiakaoyi/teachingk2/push/k0;

    invoke-direct {v0}, Lcn/mucang/android/jiakaoyi/teachingk2/push/k0;-><init>()V

    sput-object v0, Lcn/mucang/android/jiakaoyi/teachingk2/push/k0;->a:Lcn/mucang/android/jiakaoyi/teachingk2/push/k0;

    .line 1
    sget-object v0, Lcn/mucang/android/jiakaoyi/teachingk2/push/c;->a:Lcn/mucang/android/jiakaoyi/teachingk2/push/c;

    sput-object v0, Lcn/mucang/android/jiakaoyi/teachingk2/push/k0;->c:Ljava/lang/Runnable;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private final a()V
    .locals 3

    .line 1
    sget-object v0, Lcn/mucang/android/jiakaoyi/teachingk2/push/k0;->c:Ljava/lang/Runnable;

    invoke-static {v0}, Lcn/mucang/android/core/utils/u;->e(Ljava/lang/Runnable;)V

    .line 2
    sget-object v0, Lcn/mucang/android/jiakaoyi/teachingk2/push/k0;->b:Lcn/mucang/android/jiakaoyi/teachingk2/push/WebRtcCamera;

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Lcn/mucang/android/jiakaoyi/teachingk2/push/WebRtcCamera;->B()Z

    move-result v0

    if-ne v0, v2, :cond_1

    const/4 v1, 0x1

    :cond_1
    :goto_0
    if-eqz v1, :cond_3

    const-string v0, "\u4e1a\u52a1\u9700\u8981\u4f7f\u7528ai\u6444\u50cf\u5934\uff0c\u5f00\u59cbwebrtc\u8fde\u63a5"

    .line 3
    invoke-static {v0}, Lcn/mucang/android/jiakaoyi/framework/log/f;->o(Ljava/lang/Object;)V

    .line 4
    sget-object v0, Lcn/mucang/android/jiakaoyi/teachingk2/push/k0;->b:Lcn/mucang/android/jiakaoyi/teachingk2/push/WebRtcCamera;

    if-nez v0, :cond_2

    goto :goto_1

    :cond_2
    invoke-virtual {v0}, Lcn/mucang/android/jiakaoyi/teachingk2/push/WebRtcCamera;->o()V

    goto :goto_1

    .line 5
    :cond_3
    sget-object v0, Lcn/mucang/android/jiakaoyi/teachingk2/push/k0;->c:Ljava/lang/Runnable;

    const-wide/16 v1, 0xbb8

    invoke-static {v0, v1, v2}, Lcn/mucang/android/core/utils/u;->d(Ljava/lang/Runnable;J)V

    :goto_1
    return-void
.end method

.method private static final b()V
    .locals 4

    const-string v0, "\u6ca1\u6709\u4e1a\u52a1\u4f7f\u7528ai\u6444\u50cf\u5934\uff0c\u65ad\u5f00webrtc\u8fde\u63a5"

    .line 1
    invoke-static {v0}, Lcn/mucang/android/jiakaoyi/framework/log/f;->o(Ljava/lang/Object;)V

    .line 2
    sget-object v0, Lcn/mucang/android/jiakaoyi/teachingk2/push/k0;->b:Lcn/mucang/android/jiakaoyi/teachingk2/push/WebRtcCamera;

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-static {v0, v1, v2, v3}, Lcn/mucang/android/jiakaoyi/teachingk2/push/WebRtcCamera;->u(Lcn/mucang/android/jiakaoyi/teachingk2/push/WebRtcCamera;ZILjava/lang/Object;)V

    :goto_0
    return-void
.end method

.method public static synthetic i()V
    .locals 0

    invoke-static {}, Lcn/mucang/android/jiakaoyi/teachingk2/push/k0;->b()V

    return-void
.end method


# virtual methods
.method public final c()V
    .locals 1

    .line 1
    sget-object v0, Lcn/mucang/android/jiakaoyi/teachingk2/push/k0;->b:Lcn/mucang/android/jiakaoyi/teachingk2/push/WebRtcCamera;

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Lcn/mucang/android/jiakaoyi/teachingk2/push/WebRtcCamera;->q()V

    :goto_0
    return-void
.end method

.method public final d()V
    .locals 1

    .line 1
    sget-object v0, Lcn/mucang/android/jiakaoyi/teachingk2/push/k0;->b:Lcn/mucang/android/jiakaoyi/teachingk2/push/WebRtcCamera;

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Lcn/mucang/android/jiakaoyi/teachingk2/push/WebRtcCamera;->Q()V

    :goto_0
    return-void
.end method

.method public final e()Lorg/webrtc/EglBase$Context;
    .locals 4

    .line 1
    sget-object v0, Lcn/mucang/android/jiakaoyi/teachingk2/push/k0;->b:Lcn/mucang/android/jiakaoyi/teachingk2/push/WebRtcCamera;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    :goto_0
    move-object v0, v1

    goto :goto_1

    :cond_0
    invoke-virtual {v0}, Lcn/mucang/android/jiakaoyi/teachingk2/push/WebRtcCamera;->z()Lorg/webrtc/EglBase;

    move-result-object v0

    if-nez v0, :cond_1

    goto :goto_0

    :cond_1
    invoke-interface {v0}, Lorg/webrtc/EglBase;->getEglBaseContext()Lorg/webrtc/EglBase$Context;

    move-result-object v0

    .line 2
    :goto_1
    instance-of v2, v0, Lorg/webrtc/EglBase10$Context;

    if-eqz v2, :cond_2

    .line 3
    move-object v2, v0

    check-cast v2, Lorg/webrtc/EglBase10$Context;

    invoke-interface {v2}, Lorg/webrtc/EglBase10$Context;->getRawContext()Ljavax/microedition/khronos/egl/EGLContext;

    move-result-object v2

    sget-object v3, Ljavax/microedition/khronos/egl/EGL10;->EGL_NO_CONTEXT:Ljavax/microedition/khronos/egl/EGLContext;

    invoke-static {v2, v3}, Lkotlin/jvm/internal/r;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    return-object v1

    .line 4
    :cond_2
    instance-of v2, v0, Lorg/webrtc/EglBase14$Context;

    if-eqz v2, :cond_3

    .line 5
    move-object v2, v0

    check-cast v2, Lorg/webrtc/EglBase14$Context;

    invoke-interface {v2}, Lorg/webrtc/EglBase14$Context;->getRawContext()Landroid/opengl/EGLContext;

    move-result-object v2

    sget-object v3, Landroid/opengl/EGL14;->EGL_NO_CONTEXT:Landroid/opengl/EGLContext;

    invoke-static {v2, v3}, Lkotlin/jvm/internal/r;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    return-object v1

    :cond_3
    return-object v0
.end method

.method public final f()V
    .locals 1

    const-string v0, "ai\u6444\u50cf\u5934\u7ba1\u7406\u5668\u521d\u59cb\u5316"

    .line 1
    invoke-static {v0}, Lcn/mucang/android/jiakaoyi/framework/log/f;->o(Ljava/lang/Object;)V

    .line 2
    new-instance v0, Lcn/mucang/android/jiakaoyi/teachingk2/push/WebRtcCamera;

    invoke-direct {v0}, Lcn/mucang/android/jiakaoyi/teachingk2/push/WebRtcCamera;-><init>()V

    sput-object v0, Lcn/mucang/android/jiakaoyi/teachingk2/push/k0;->b:Lcn/mucang/android/jiakaoyi/teachingk2/push/WebRtcCamera;

    if-nez v0, :cond_0

    goto :goto_0

    .line 3
    :cond_0
    invoke-virtual {v0}, Lcn/mucang/android/jiakaoyi/teachingk2/push/WebRtcCamera;->C()V

    :goto_0
    return-void
.end method

.method public final g()Z
    .locals 3

    .line 1
    sget-object v0, Lcn/mucang/android/jiakaoyi/teachingk2/push/k0;->b:Lcn/mucang/android/jiakaoyi/teachingk2/push/WebRtcCamera;

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Lcn/mucang/android/jiakaoyi/teachingk2/push/WebRtcCamera;->D()Z

    move-result v0

    if-ne v0, v2, :cond_1

    const/4 v1, 0x1

    :cond_1
    :goto_0
    return v1
.end method

.method public final h(Lcn/mucang/android/jiakaoyi/framework/camera/c;)Z
    .locals 3

    const-string v0, "callback"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    sget-object v0, Lcn/mucang/android/jiakaoyi/teachingk2/push/k0;->b:Lcn/mucang/android/jiakaoyi/teachingk2/push/WebRtcCamera;

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {v0, p1}, Lcn/mucang/android/jiakaoyi/teachingk2/push/WebRtcCamera;->p(Lcn/mucang/android/jiakaoyi/framework/camera/c;)Z

    move-result p1

    if-ne p1, v2, :cond_1

    const/4 v1, 0x1

    :cond_1
    :goto_0
    return v1
.end method

.method public final j(Lcn/mucang/android/jiakaoyi/framework/camera/c;)V
    .locals 1

    const-string v0, "callback"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    sget-object v0, Lcn/mucang/android/jiakaoyi/teachingk2/push/k0;->b:Lcn/mucang/android/jiakaoyi/teachingk2/push/WebRtcCamera;

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {v0, p1}, Lcn/mucang/android/jiakaoyi/teachingk2/push/WebRtcCamera;->n(Lcn/mucang/android/jiakaoyi/framework/camera/c;)V

    .line 2
    :goto_0
    invoke-direct {p0}, Lcn/mucang/android/jiakaoyi/teachingk2/push/k0;->a()V

    return-void
.end method

.method public final k(Lorg/webrtc/SurfaceViewRenderer;)V
    .locals 1

    const-string v0, "render"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "ai\u6444\u50cf\u5f00\u59cb\u9884\u89c8"

    .line 1
    invoke-static {v0}, Lcn/mucang/android/jiakaoyi/framework/log/f;->o(Ljava/lang/Object;)V

    .line 2
    sget-object v0, Lcn/mucang/android/jiakaoyi/teachingk2/push/k0;->b:Lcn/mucang/android/jiakaoyi/teachingk2/push/WebRtcCamera;

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {v0, p1}, Lcn/mucang/android/jiakaoyi/teachingk2/push/WebRtcCamera;->O(Lorg/webrtc/VideoSink;)V

    .line 3
    :goto_0
    invoke-direct {p0}, Lcn/mucang/android/jiakaoyi/teachingk2/push/k0;->a()V

    return-void
.end method

.method public final l()V
    .locals 1

    const-string v0, "ai\u6444\u50cf\u505c\u6b62\u9884\u89c8"

    .line 1
    invoke-static {v0}, Lcn/mucang/android/jiakaoyi/framework/log/f;->o(Ljava/lang/Object;)V

    const/4 v0, 0x0

    .line 2
    invoke-virtual {p0, v0}, Lcn/mucang/android/jiakaoyi/teachingk2/push/k0;->m(Lorg/webrtc/SurfaceViewRenderer;)V

    return-void
.end method

.method public final m(Lorg/webrtc/SurfaceViewRenderer;)V
    .locals 2

    .line 1
    sget-object v0, Lcn/mucang/android/jiakaoyi/teachingk2/push/k0;->b:Lcn/mucang/android/jiakaoyi/teachingk2/push/WebRtcCamera;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    move-object v0, v1

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Lcn/mucang/android/jiakaoyi/teachingk2/push/WebRtcCamera;->A()Lorg/webrtc/VideoSink;

    move-result-object v0

    :goto_0
    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    if-nez p1, :cond_3

    .line 2
    :cond_1
    sget-object p1, Lcn/mucang/android/jiakaoyi/teachingk2/push/k0;->b:Lcn/mucang/android/jiakaoyi/teachingk2/push/WebRtcCamera;

    if-nez p1, :cond_2

    goto :goto_1

    :cond_2
    invoke-virtual {p1, v1}, Lcn/mucang/android/jiakaoyi/teachingk2/push/WebRtcCamera;->O(Lorg/webrtc/VideoSink;)V

    .line 3
    :goto_1
    invoke-direct {p0}, Lcn/mucang/android/jiakaoyi/teachingk2/push/k0;->a()V

    :cond_3
    return-void
.end method

.method public final n(Lcn/mucang/android/jiakaoyi/framework/camera/c;)V
    .locals 1

    const-string v0, "callback"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    sget-object v0, Lcn/mucang/android/jiakaoyi/teachingk2/push/k0;->b:Lcn/mucang/android/jiakaoyi/teachingk2/push/WebRtcCamera;

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {v0, p1}, Lcn/mucang/android/jiakaoyi/teachingk2/push/WebRtcCamera;->L(Lcn/mucang/android/jiakaoyi/framework/camera/c;)V

    .line 2
    :goto_0
    invoke-direct {p0}, Lcn/mucang/android/jiakaoyi/teachingk2/push/k0;->a()V

    return-void
.end method
