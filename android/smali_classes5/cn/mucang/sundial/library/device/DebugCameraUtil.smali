.class public final Lcn/mucang/sundial/library/device/DebugCameraUtil;
.super Lcn/mucang/sundial/library/device/BaseCamera;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000(\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0006\n\u0002\u0010\u0008\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0002\u0008\t\u0018\u00002\u00020\u0001B\u0013\u0012\n\u0008\u0002\u0010\r\u001a\u0004\u0018\u00010\u000c\u00a2\u0006\u0004\u0008\u0016\u0010\u0017J\u000f\u0010\u0003\u001a\u00020\u0002H\u0016\u00a2\u0006\u0004\u0008\u0003\u0010\u0004J\u000f\u0010\u0005\u001a\u00020\u0002H\u0016\u00a2\u0006\u0004\u0008\u0005\u0010\u0004J\u000f\u0010\u0006\u001a\u00020\u0002H\u0016\u00a2\u0006\u0004\u0008\u0006\u0010\u0004J\u000f\u0010\u0007\u001a\u00020\u0002H\u0016\u00a2\u0006\u0004\u0008\u0007\u0010\u0004J\u000f\u0010\u0008\u001a\u00020\u0002H\u0016\u00a2\u0006\u0004\u0008\u0008\u0010\u0004J\u000f\u0010\n\u001a\u00020\tH\u0016\u00a2\u0006\u0004\u0008\n\u0010\u000bR\u0018\u0010\r\u001a\u0004\u0018\u00010\u000c8\u0002@\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\r\u0010\u000eR\"\u0010\u0010\u001a\u00020\u000f8\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008\u0010\u0010\u0011\u001a\u0004\u0008\u0012\u0010\u0013\"\u0004\u0008\u0014\u0010\u0015\u00a8\u0006\u0018"
    }
    d2 = {
        "Lcn/mucang/sundial/library/device/DebugCameraUtil;",
        "Lcn/mucang/sundial/library/device/BaseCamera;",
        "Lkotlin/v;",
        "init",
        "()V",
        "takePhoto",
        "open",
        "pause",
        "release",
        "",
        "cameraCount",
        "()I",
        "Lcn/mucang/sundial/library/device/CameraResult;",
        "cameraResult",
        "Lcn/mucang/sundial/library/device/CameraResult;",
        "",
        "testFaceUrl",
        "Ljava/lang/String;",
        "getTestFaceUrl",
        "()Ljava/lang/String;",
        "setTestFaceUrl",
        "(Ljava/lang/String;)V",
        "<init>",
        "(Lcn/mucang/sundial/library/device/CameraResult;)V",
        "library_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x1,
        0xf
    }
.end annotation


# instance fields
.field private final cameraResult:Lcn/mucang/sundial/library/device/CameraResult;

.field private testFaceUrl:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1, v0}, Lcn/mucang/sundial/library/device/DebugCameraUtil;-><init>(Lcn/mucang/sundial/library/device/CameraResult;ILkotlin/jvm/internal/o;)V

    return-void
.end method

.method public constructor <init>(Lcn/mucang/sundial/library/device/CameraResult;)V
    .locals 0

    .line 2
    invoke-direct {p0}, Lcn/mucang/sundial/library/device/BaseCamera;-><init>()V

    iput-object p1, p0, Lcn/mucang/sundial/library/device/DebugCameraUtil;->cameraResult:Lcn/mucang/sundial/library/device/CameraResult;

    const-string p1, ""

    .line 3
    iput-object p1, p0, Lcn/mucang/sundial/library/device/DebugCameraUtil;->testFaceUrl:Ljava/lang/String;

    return-void
.end method

.method public synthetic constructor <init>(Lcn/mucang/sundial/library/device/CameraResult;ILkotlin/jvm/internal/o;)V
    .locals 0

    and-int/lit8 p2, p2, 0x1

    if-eqz p2, :cond_0

    const/4 p1, 0x0

    .line 1
    :cond_0
    invoke-direct {p0, p1}, Lcn/mucang/sundial/library/device/DebugCameraUtil;-><init>(Lcn/mucang/sundial/library/device/CameraResult;)V

    return-void
.end method

.method public static final synthetic access$getCameraResult$p(Lcn/mucang/sundial/library/device/DebugCameraUtil;)Lcn/mucang/sundial/library/device/CameraResult;
    .locals 0

    .line 1
    iget-object p0, p0, Lcn/mucang/sundial/library/device/DebugCameraUtil;->cameraResult:Lcn/mucang/sundial/library/device/CameraResult;

    return-object p0
.end method


# virtual methods
.method public cameraCount()I
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public final getTestFaceUrl()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcn/mucang/sundial/library/device/DebugCameraUtil;->testFaceUrl:Ljava/lang/String;

    return-object v0
.end method

.method public init()V
    .locals 0

    return-void
.end method

.method public open()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcn/mucang/sundial/library/device/DebugCameraUtil;->cameraResult:Lcn/mucang/sundial/library/device/CameraResult;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcn/mucang/sundial/library/device/CameraResult;->connectSuccess()V

    :cond_0
    return-void
.end method

.method public pause()V
    .locals 0

    return-void
.end method

.method public release()V
    .locals 0

    return-void
.end method

.method public final setTestFaceUrl(Ljava/lang/String;)V
    .locals 1

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iput-object p1, p0, Lcn/mucang/sundial/library/device/DebugCameraUtil;->testFaceUrl:Ljava/lang/String;

    return-void
.end method

.method public takePhoto()V
    .locals 1

    .line 1
    new-instance v0, Lcn/mucang/sundial/library/device/DebugCameraUtil$takePhoto$1;

    invoke-direct {v0, p0}, Lcn/mucang/sundial/library/device/DebugCameraUtil$takePhoto$1;-><init>(Lcn/mucang/sundial/library/device/DebugCameraUtil;)V

    invoke-static {v0}, Lcn/mucang/android/ui/framework/fetcher/ThreadPool;->a(Ljava/lang/Runnable;)V

    return-void
.end method
