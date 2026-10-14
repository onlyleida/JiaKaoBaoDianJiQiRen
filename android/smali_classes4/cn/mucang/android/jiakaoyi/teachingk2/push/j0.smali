.class public final Lcn/mucang/android/jiakaoyi/teachingk2/push/j0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcn/mucang/android/jiakaoyi/framework/camera/b;


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000.\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0000\u0018\u00002\u00020\u0001B\u0005\u00a2\u0006\u0002\u0010\u0002J\u0008\u0010\u0005\u001a\u00020\u0006H\u0016J\u0012\u0010\u0007\u001a\u00020\u00082\u0008\u0010\u0003\u001a\u0004\u0018\u00010\u0004H\u0016J\u0008\u0010\t\u001a\u00020\u0008H\u0016J\u0010\u0010\n\u001a\u00020\u00082\u0006\u0010\u000b\u001a\u00020\u000cH\u0016J\u0008\u0010\r\u001a\u00020\u0008H\u0016J\u0010\u0010\u000e\u001a\u00020\u00082\u0006\u0010\u000b\u001a\u00020\u000cH\u0016J\u0008\u0010\u000f\u001a\u00020\u0008H\u0016J\u0008\u0010\u0010\u001a\u00020\u0011H\u0016R\u0010\u0010\u0003\u001a\u0004\u0018\u00010\u0004X\u0082\u000e\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u0012"
    }
    d2 = {
        "Lcn/mucang/android/jiakaoyi/teachingk2/push/AiCameraAdapter;",
        "Lcn/mucang/android/jiakaoyi/framework/camera/SourceVideoStream;",
        "()V",
        "frameCallback",
        "Lcn/mucang/android/jiakaoyi/framework/camera/YuvFrameCallback;",
        "isPlaying",
        "",
        "setYuvCallback",
        "",
        "start",
        "startPreview",
        "view",
        "Landroid/view/View;",
        "stop",
        "stopPreview",
        "tryReconnect",
        "yuvFormat",
        "Lcn/mucang/android/jiakaoyi/framework/camera/ImageFormat;",
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


# instance fields
.field private a:Lcn/mucang/android/jiakaoyi/framework/camera/c;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static synthetic f(Lcn/mucang/android/jiakaoyi/teachingk2/push/j0;)V
    .locals 0

    invoke-static {p0}, Lcn/mucang/android/jiakaoyi/teachingk2/push/j0;->i(Lcn/mucang/android/jiakaoyi/teachingk2/push/j0;)V

    return-void
.end method

.method public static synthetic g(Lcn/mucang/android/jiakaoyi/teachingk2/push/j0;)V
    .locals 0

    invoke-static {p0}, Lcn/mucang/android/jiakaoyi/teachingk2/push/j0;->h(Lcn/mucang/android/jiakaoyi/teachingk2/push/j0;)V

    return-void
.end method

.method private static final h(Lcn/mucang/android/jiakaoyi/teachingk2/push/j0;)V
    .locals 1

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object p0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/push/j0;->a:Lcn/mucang/android/jiakaoyi/framework/camera/c;

    if-nez p0, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    sget-object v0, Lcn/mucang/android/jiakaoyi/teachingk2/push/k0;->a:Lcn/mucang/android/jiakaoyi/teachingk2/push/k0;

    invoke-virtual {v0, p0}, Lcn/mucang/android/jiakaoyi/teachingk2/push/k0;->j(Lcn/mucang/android/jiakaoyi/framework/camera/c;)V

    :goto_0
    return-void
.end method

.method private static final i(Lcn/mucang/android/jiakaoyi/teachingk2/push/j0;)V
    .locals 1

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object p0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/push/j0;->a:Lcn/mucang/android/jiakaoyi/framework/camera/c;

    if-nez p0, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    sget-object v0, Lcn/mucang/android/jiakaoyi/teachingk2/push/k0;->a:Lcn/mucang/android/jiakaoyi/teachingk2/push/k0;

    invoke-virtual {v0, p0}, Lcn/mucang/android/jiakaoyi/teachingk2/push/k0;->n(Lcn/mucang/android/jiakaoyi/framework/camera/c;)V

    :goto_0
    return-void
.end method


# virtual methods
.method public a()Lcn/mucang/android/jiakaoyi/framework/camera/ImageFormat;
    .locals 1

    .line 1
    sget-object v0, Lcn/mucang/android/jiakaoyi/framework/camera/ImageFormat;->IMAGE_FORMAT_YUV420P:Lcn/mucang/android/jiakaoyi/framework/camera/ImageFormat;

    return-object v0
.end method

.method public b(Landroid/view/View;)V
    .locals 7

    const-string v0, "view"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    instance-of v0, p1, Landroid/widget/FrameLayout;

    if-eqz v0, :cond_6

    .line 2
    check-cast p1, Landroid/widget/FrameLayout;

    invoke-virtual {p1}, Landroid/widget/FrameLayout;->getChildCount()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    move-object v4, v2

    if-lez v0, :cond_2

    const/4 v3, 0x0

    :goto_0
    add-int/lit8 v5, v3, 0x1

    .line 3
    invoke-virtual {p1, v3}, Landroid/widget/FrameLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 4
    instance-of v6, v3, Lorg/webrtc/SurfaceViewRenderer;

    if-eqz v6, :cond_0

    move-object v4, v3

    :cond_0
    if-lt v5, v0, :cond_1

    goto :goto_1

    :cond_1
    move v3, v5

    goto :goto_0

    :cond_2
    :goto_1
    if-nez v4, :cond_3

    .line 5
    new-instance v4, Lorg/webrtc/SurfaceViewRenderer;

    invoke-virtual {p1}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {v4, v0}, Lorg/webrtc/SurfaceViewRenderer;-><init>(Landroid/content/Context;)V

    .line 6
    invoke-virtual {p1, v4}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 7
    :cond_3
    check-cast v4, Lorg/webrtc/SurfaceViewRenderer;

    invoke-virtual {v4}, Landroid/view/SurfaceView;->isSelected()Z

    move-result p1

    const/4 v0, 0x1

    if-ne p1, v0, :cond_4

    const/4 v1, 0x1

    :cond_4
    if-nez v1, :cond_5

    .line 8
    sget-object p1, Lcn/mucang/android/jiakaoyi/teachingk2/push/k0;->a:Lcn/mucang/android/jiakaoyi/teachingk2/push/k0;

    invoke-virtual {p1}, Lcn/mucang/android/jiakaoyi/teachingk2/push/k0;->e()Lorg/webrtc/EglBase$Context;

    move-result-object p1

    invoke-virtual {v4, p1, v2}, Lorg/webrtc/SurfaceViewRenderer;->init(Lorg/webrtc/EglBase$Context;Lorg/webrtc/RendererCommon$RendererEvents;)V

    .line 9
    invoke-virtual {v4, v0}, Landroid/view/SurfaceView;->setSelected(Z)V

    .line 10
    :cond_5
    sget-object p1, Lcn/mucang/android/jiakaoyi/teachingk2/push/k0;->a:Lcn/mucang/android/jiakaoyi/teachingk2/push/k0;

    invoke-virtual {p1, v4}, Lcn/mucang/android/jiakaoyi/teachingk2/push/k0;->k(Lorg/webrtc/SurfaceViewRenderer;)V

    goto :goto_2

    .line 11
    :cond_6
    instance-of v0, p1, Lorg/webrtc/SurfaceViewRenderer;

    if-eqz v0, :cond_7

    .line 12
    sget-object v0, Lcn/mucang/android/jiakaoyi/teachingk2/push/k0;->a:Lcn/mucang/android/jiakaoyi/teachingk2/push/k0;

    check-cast p1, Lorg/webrtc/SurfaceViewRenderer;

    invoke-virtual {v0, p1}, Lcn/mucang/android/jiakaoyi/teachingk2/push/k0;->k(Lorg/webrtc/SurfaceViewRenderer;)V

    :cond_7
    :goto_2
    return-void
.end method

.method public c()V
    .locals 1

    .line 1
    sget-object v0, Lcn/mucang/android/jiakaoyi/teachingk2/push/k0;->a:Lcn/mucang/android/jiakaoyi/teachingk2/push/k0;

    invoke-virtual {v0}, Lcn/mucang/android/jiakaoyi/teachingk2/push/k0;->d()V

    return-void
.end method

.method public d(Landroid/view/View;)V
    .locals 4

    const-string v0, "view"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    instance-of v0, p1, Landroid/widget/FrameLayout;

    if-eqz v0, :cond_2

    const/4 v0, 0x0

    .line 2
    check-cast p1, Landroid/widget/FrameLayout;

    invoke-virtual {p1}, Landroid/widget/FrameLayout;->getChildCount()I

    move-result v1

    if-lez v1, :cond_4

    :goto_0
    add-int/lit8 v2, v0, 0x1

    .line 3
    invoke-virtual {p1, v0}, Landroid/widget/FrameLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 4
    instance-of v3, v0, Lorg/webrtc/SurfaceViewRenderer;

    if-eqz v3, :cond_0

    .line 5
    sget-object p1, Lcn/mucang/android/jiakaoyi/teachingk2/push/k0;->a:Lcn/mucang/android/jiakaoyi/teachingk2/push/k0;

    check-cast v0, Lorg/webrtc/SurfaceViewRenderer;

    invoke-virtual {p1, v0}, Lcn/mucang/android/jiakaoyi/teachingk2/push/k0;->m(Lorg/webrtc/SurfaceViewRenderer;)V

    goto :goto_1

    :cond_0
    if-lt v2, v1, :cond_1

    goto :goto_1

    :cond_1
    move v0, v2

    goto :goto_0

    .line 6
    :cond_2
    instance-of v0, p1, Lorg/webrtc/SurfaceViewRenderer;

    if-eqz v0, :cond_3

    .line 7
    sget-object v0, Lcn/mucang/android/jiakaoyi/teachingk2/push/k0;->a:Lcn/mucang/android/jiakaoyi/teachingk2/push/k0;

    check-cast p1, Lorg/webrtc/SurfaceViewRenderer;

    invoke-virtual {v0, p1}, Lcn/mucang/android/jiakaoyi/teachingk2/push/k0;->m(Lorg/webrtc/SurfaceViewRenderer;)V

    goto :goto_1

    .line 8
    :cond_3
    sget-object p1, Lcn/mucang/android/jiakaoyi/teachingk2/push/k0;->a:Lcn/mucang/android/jiakaoyi/teachingk2/push/k0;

    invoke-virtual {p1}, Lcn/mucang/android/jiakaoyi/teachingk2/push/k0;->l()V

    :cond_4
    :goto_1
    return-void
.end method

.method public e(Lcn/mucang/android/jiakaoyi/framework/camera/c;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/push/j0;->a:Lcn/mucang/android/jiakaoyi/framework/camera/c;

    if-nez v0, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    sget-object v1, Lcn/mucang/android/jiakaoyi/teachingk2/push/k0;->a:Lcn/mucang/android/jiakaoyi/teachingk2/push/k0;

    invoke-virtual {v1, v0}, Lcn/mucang/android/jiakaoyi/teachingk2/push/k0;->h(Lcn/mucang/android/jiakaoyi/framework/camera/c;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 3
    invoke-virtual {v1, v0}, Lcn/mucang/android/jiakaoyi/teachingk2/push/k0;->n(Lcn/mucang/android/jiakaoyi/framework/camera/c;)V

    .line 4
    :cond_1
    :goto_0
    iput-object p1, p0, Lcn/mucang/android/jiakaoyi/teachingk2/push/j0;->a:Lcn/mucang/android/jiakaoyi/framework/camera/c;

    return-void
.end method

.method public isPlaying()Z
    .locals 1

    .line 1
    sget-object v0, Lcn/mucang/android/jiakaoyi/teachingk2/push/k0;->a:Lcn/mucang/android/jiakaoyi/teachingk2/push/k0;

    invoke-virtual {v0}, Lcn/mucang/android/jiakaoyi/teachingk2/push/k0;->g()Z

    move-result v0

    return v0
.end method

.method public start()V
    .locals 1

    .line 1
    new-instance v0, Lcn/mucang/android/jiakaoyi/teachingk2/push/b;

    invoke-direct {v0, p0}, Lcn/mucang/android/jiakaoyi/teachingk2/push/b;-><init>(Lcn/mucang/android/jiakaoyi/teachingk2/push/j0;)V

    invoke-static {v0}, Lcn/mucang/android/core/utils/u;->f(Ljava/lang/Runnable;)V

    return-void
.end method

.method public stop()V
    .locals 1

    .line 1
    new-instance v0, Lcn/mucang/android/jiakaoyi/teachingk2/push/a;

    invoke-direct {v0, p0}, Lcn/mucang/android/jiakaoyi/teachingk2/push/a;-><init>(Lcn/mucang/android/jiakaoyi/teachingk2/push/j0;)V

    invoke-static {v0}, Lcn/mucang/android/core/utils/u;->f(Ljava/lang/Runnable;)V

    return-void
.end method
