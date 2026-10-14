.class public final Lcn/mucang/jiakaoyi/uilib/login/face/FaceLoginPresenter;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcn/mucang/android/jiakaoyi/framework/camera/c;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/mucang/jiakaoyi/uilib/login/face/FaceLoginPresenter$a;,
        Lcn/mucang/jiakaoyi/uilib/login/face/FaceLoginPresenter$b;,
        Lcn/mucang/jiakaoyi/uilib/login/face/FaceLoginPresenter$c;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u00b0\u0001\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0006\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u0012\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0008\n\u0002\u0010\t\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\t\u0018\u0000 R2\u00020\u0001:\u0002RSB9\u0008\u0016\u0012\u0008\u0010\u0002\u001a\u0004\u0018\u00010\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\u0006\u0010\u0006\u001a\u00020\u0005\u0012\u0006\u0010\u0007\u001a\u00020\u0008\u0012\u0006\u0010\t\u001a\u00020\n\u0012\u0006\u0010\u000b\u001a\u00020\u000c\u00a2\u0006\u0002\u0010\rB?\u0012\u0008\u0010\u0002\u001a\u0004\u0018\u00010\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\u0006\u0010\u0006\u001a\u00020\u0005\u0012\u0006\u0010\u000e\u001a\u00020\u0005\u0012\u0006\u0010\u0007\u001a\u00020\u0008\u0012\u0006\u0010\t\u001a\u00020\n\u0012\u0006\u0010\u000b\u001a\u00020\u000c\u00a2\u0006\u0002\u0010\u000fJ \u00102\u001a\u0002032\u0006\u00104\u001a\u0002052\u0006\u00106\u001a\u00020\u00052\u0006\u00107\u001a\u00020\u0005H\u0002J\u0006\u00108\u001a\u000203J(\u00109\u001a\u0002032\u0006\u0010:\u001a\u00020;2\u0006\u0010<\u001a\u00020=2\u0006\u00106\u001a\u00020\u00052\u0006\u00107\u001a\u00020\u0005H\u0002J \u0010>\u001a\u0002032\u0006\u0010:\u001a\u00020;2\u0006\u00106\u001a\u00020\u00052\u0006\u00107\u001a\u00020\u0005H\u0002J\u0008\u0010?\u001a\u000203H\u0002J\u0010\u0010@\u001a\u0002032\u0006\u0010:\u001a\u00020;H\u0002J@\u0010A\u001a\u0002032\u0006\u0010B\u001a\u0002052\u0006\u00106\u001a\u00020\u00052\u0006\u00107\u001a\u00020\u00052\u0006\u0010C\u001a\u00020\u00052\u0006\u0010D\u001a\u00020\u00052\u0006\u0010E\u001a\u00020F2\u0006\u0010G\u001a\u00020\u0005H\u0016J\u0018\u0010H\u001a\u0002032\u0006\u0010I\u001a\u00020\u001f2\u0006\u0010J\u001a\u00020KH\u0002J\u0010\u0010L\u001a\u0002032\u0008\u0010M\u001a\u0004\u0018\u00010\u001dJ\u000e\u0010N\u001a\u0002032\u0006\u0010\u000b\u001a\u00020*J\u000e\u0010O\u001a\u0002032\u0006\u0010\u000b\u001a\u000201J\u0006\u0010P\u001a\u000203J\u0006\u0010Q\u001a\u000203R\u0010\u0010\u0010\u001a\u0004\u0018\u00010\u0011X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0010\u0010\u0012\u001a\u0004\u0018\u00010\u0013X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0006\u001a\u00020\u0005X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0004\u001a\u00020\u0005X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0010\u0010\u0014\u001a\u0004\u0018\u00010\u0015X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0016\u001a\u00020\u0017X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\t\u001a\u00020\nX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0010\u0010\u0018\u001a\u0004\u0018\u00010\u0019X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0010\u0010\u001a\u001a\u0004\u0018\u00010\u001bX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0010\u0010\u001c\u001a\u0004\u0018\u00010\u001dX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0010\u0010\u001e\u001a\u0004\u0018\u00010\u001fX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0010\u0010 \u001a\u0004\u0018\u00010\u0011X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0010\u0010!\u001a\u0004\u0018\u00010\"X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0010\u0010#\u001a\u0004\u0018\u00010$X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0010\u0010%\u001a\u0004\u0018\u00010&X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u000e\u001a\u00020\u0005X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u000b\u001a\u00020\u000cX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0010\u0010\'\u001a\u0004\u0018\u00010(X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0010\u0010)\u001a\u0004\u0018\u00010*X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0010\u0010+\u001a\u0004\u0018\u00010\u001fX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0010\u0010,\u001a\u0004\u0018\u00010\u0011X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010-\u001a\u00020\u0017X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010.\u001a\u00020\u0017X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0010\u0010/\u001a\u0004\u0018\u00010\u001fX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0010\u0010\u0002\u001a\u0004\u0018\u00010\u0003X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0007\u001a\u00020\u0008X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0010\u00100\u001a\u0004\u0018\u000101X\u0082\u000e\u00a2\u0006\u0002\n\u0000\u00a8\u0006T"
    }
    d2 = {
        "Lcn/mucang/jiakaoyi/uilib/login/face/FaceLoginPresenter;",
        "Lcn/mucang/android/jiakaoyi/framework/camera/YuvFrameCallback;",
        "scope",
        "Lkotlinx/coroutines/CoroutineScope;",
        "capWidth",
        "",
        "capHeight",
        "sourceVideoStream",
        "Lcn/mucang/android/jiakaoyi/framework/camera/SourceVideoStream;",
        "detectorFactory",
        "Lcn/mucang/jiakaoyi/uilib/login/face/FaceDetectorFactory;",
        "listener",
        "Lcn/mucang/jiakaoyi/uilib/login/face/FaceCheckListener;",
        "(Lkotlinx/coroutines/CoroutineScope;IILcn/mucang/android/jiakaoyi/framework/camera/SourceVideoStream;Lcn/mucang/jiakaoyi/uilib/login/face/FaceDetectorFactory;Lcn/mucang/jiakaoyi/uilib/login/face/FaceCheckListener;)V",
        "limitPixel",
        "(Lkotlinx/coroutines/CoroutineScope;IIILcn/mucang/android/jiakaoyi/framework/camera/SourceVideoStream;Lcn/mucang/jiakaoyi/uilib/login/face/FaceDetectorFactory;Lcn/mucang/jiakaoyi/uilib/login/face/FaceCheckListener;)V",
        "affineMat",
        "Lorg/opencv/core/Mat;",
        "blurCheck",
        "Lcn/mucang/jiakaoyi/uilib/login/face/check/BlurCheck;",
        "checkJob",
        "Lkotlinx/coroutines/Job;",
        "checking",
        "",
        "dispatcher",
        "Lkotlinx/coroutines/android/HandlerDispatcher;",
        "faceDetector",
        "Lcn/mucang/jiakaoyi/uilib/login/face/IFaceDetector;",
        "faceFilter",
        "Lcn/mucang/jiakaoyi/uilib/login/face/IFaceFilter;",
        "faceInputBitmap",
        "Landroid/graphics/Bitmap;",
        "faceInputMat",
        "grayCheck",
        "Lcn/mucang/jiakaoyi/uilib/login/face/check/GrayCheck;",
        "handlerThread",
        "Landroid/os/HandlerThread;",
        "lightCheck",
        "Lcn/mucang/jiakaoyi/uilib/login/face/check/LightCheck;",
        "maskDetector",
        "Lcn/mucang/jiakaoyi/uilib/login/face/IMaskDetector;",
        "maskDetectorListener",
        "Lcn/mucang/jiakaoyi/uilib/login/face/MaskDetectorListener;",
        "maskInputBitmap",
        "maskInputMat",
        "onResume",
        "openCVIsSuccess",
        "originBitmap",
        "testListener",
        "Lcn/mucang/jiakaoyi/uilib/login/face/FaceLoginPresenter$TestListener;",
        "checkFace",
        "",
        "data",
        "",
        "width",
        "height",
        "destroy",
        "onCheckFace",
        "pos",
        "Lorg/opencv/core/Rect;",
        "landmark",
        "Lcn/mucang/jiakaoyi/uilib/login/face/LandmarkEntity;",
        "onCheckFarFace",
        "onCheckNoFace",
        "onCheckSuitableFace",
        "onFrame",
        "byteArray",
        "stride",
        "size",
        "timeUs",
        "",
        "rotation",
        "onSuccess",
        "face",
        "result",
        "Lcn/mucang/jiakaoyi/uilib/login/face/FaceResult;",
        "setFaceFilter",
        "filter",
        "setMaskDetectListener",
        "setTestListener",
        "start",
        "stop",
        "Companion",
        "TestListener",
        "uilib_release"
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
.field public static final B:Lcn/mucang/jiakaoyi/uilib/login/face/FaceLoginPresenter$a;

.field private static final C:F = 0.1125f

.field private static final D:I = 0x14

.field private static final E:I = 0xf

.field private static F:I


# instance fields
.field private A:Lkotlinx/coroutines/android/a;

.field private final a:Lkotlinx/coroutines/i0;

.field private final b:I

.field private final c:I

.field private final d:I

.field private final e:Lcn/mucang/android/jiakaoyi/framework/camera/b;

.field private final f:Lcn/mucang/jiakaoyi/uilib/login/face/k;

.field private final g:Lcn/mucang/jiakaoyi/uilib/login/face/j;

.field private volatile h:Z

.field private volatile i:Z

.field private volatile j:Z

.field private k:Lkotlinx/coroutines/t1;

.field private l:Lcn/mucang/jiakaoyi/uilib/login/face/n;

.field private m:Lcn/mucang/jiakaoyi/uilib/login/face/p;

.field private n:Lcn/mucang/jiakaoyi/uilib/login/face/o;

.field private o:Lorg/opencv/core/Mat;

.field private p:Lorg/opencv/core/Mat;

.field private q:Landroid/graphics/Bitmap;

.field private r:Landroid/graphics/Bitmap;

.field private s:Landroid/graphics/Bitmap;

.field private t:Lorg/opencv/core/Mat;

.field private u:Lcn/mucang/jiakaoyi/uilib/login/face/t/g;

.field private v:Lcn/mucang/jiakaoyi/uilib/login/face/t/f;

.field private w:Lcn/mucang/jiakaoyi/uilib/login/face/t/h;

.field private x:Lcn/mucang/jiakaoyi/uilib/login/face/FaceLoginPresenter$b;

.field private y:Lcn/mucang/jiakaoyi/uilib/login/face/r;

.field private z:Landroid/os/HandlerThread;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcn/mucang/jiakaoyi/uilib/login/face/FaceLoginPresenter$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcn/mucang/jiakaoyi/uilib/login/face/FaceLoginPresenter$a;-><init>(Lkotlin/jvm/internal/o;)V

    sput-object v0, Lcn/mucang/jiakaoyi/uilib/login/face/FaceLoginPresenter;->B:Lcn/mucang/jiakaoyi/uilib/login/face/FaceLoginPresenter$a;

    return-void
.end method

.method public constructor <init>(Lkotlinx/coroutines/i0;IIILcn/mucang/android/jiakaoyi/framework/camera/b;Lcn/mucang/jiakaoyi/uilib/login/face/k;Lcn/mucang/jiakaoyi/uilib/login/face/j;)V
    .locals 6

    const-string v0, "sourceVideoStream"

    invoke-static {p5, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "detectorFactory"

    invoke-static {p6, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "listener"

    invoke-static {p7, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcn/mucang/jiakaoyi/uilib/login/face/FaceLoginPresenter;->a:Lkotlinx/coroutines/i0;

    .line 3
    iput p2, p0, Lcn/mucang/jiakaoyi/uilib/login/face/FaceLoginPresenter;->b:I

    .line 4
    iput p3, p0, Lcn/mucang/jiakaoyi/uilib/login/face/FaceLoginPresenter;->c:I

    .line 5
    iput p4, p0, Lcn/mucang/jiakaoyi/uilib/login/face/FaceLoginPresenter;->d:I

    .line 6
    iput-object p5, p0, Lcn/mucang/jiakaoyi/uilib/login/face/FaceLoginPresenter;->e:Lcn/mucang/android/jiakaoyi/framework/camera/b;

    .line 7
    iput-object p6, p0, Lcn/mucang/jiakaoyi/uilib/login/face/FaceLoginPresenter;->f:Lcn/mucang/jiakaoyi/uilib/login/face/k;

    .line 8
    iput-object p7, p0, Lcn/mucang/jiakaoyi/uilib/login/face/FaceLoginPresenter;->g:Lcn/mucang/jiakaoyi/uilib/login/face/j;

    .line 9
    invoke-interface {p5, p0}, Lcn/mucang/android/jiakaoyi/framework/camera/b;->e(Lcn/mucang/android/jiakaoyi/framework/camera/c;)V

    .line 10
    sget-object p4, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {p2, p3, p4}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object p2

    iput-object p2, p0, Lcn/mucang/jiakaoyi/uilib/login/face/FaceLoginPresenter;->q:Landroid/graphics/Bitmap;

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 11
    new-instance v3, Lcn/mucang/jiakaoyi/uilib/login/face/FaceLoginPresenter$1;

    const/4 p2, 0x0

    invoke-direct {v3, p0, p2}, Lcn/mucang/jiakaoyi/uilib/login/face/FaceLoginPresenter$1;-><init>(Lcn/mucang/jiakaoyi/uilib/login/face/FaceLoginPresenter;Lkotlin/coroutines/c;)V

    const/4 v4, 0x3

    const/4 v5, 0x0

    move-object v0, p1

    invoke-static/range {v0 .. v5}, Lkotlinx/coroutines/f;->b(Lkotlinx/coroutines/i0;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/b/p;ILjava/lang/Object;)Lkotlinx/coroutines/t1;

    :goto_0
    return-void
.end method

.method public static final synthetic A(Lcn/mucang/jiakaoyi/uilib/login/face/FaceLoginPresenter;Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcn/mucang/jiakaoyi/uilib/login/face/FaceLoginPresenter;->i:Z

    return-void
.end method

.method public static final synthetic B(Lcn/mucang/jiakaoyi/uilib/login/face/FaceLoginPresenter;Lkotlinx/coroutines/android/a;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcn/mucang/jiakaoyi/uilib/login/face/FaceLoginPresenter;->A:Lkotlinx/coroutines/android/a;

    return-void
.end method

.method public static final synthetic C(Lcn/mucang/jiakaoyi/uilib/login/face/FaceLoginPresenter;Lcn/mucang/jiakaoyi/uilib/login/face/n;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcn/mucang/jiakaoyi/uilib/login/face/FaceLoginPresenter;->l:Lcn/mucang/jiakaoyi/uilib/login/face/n;

    return-void
.end method

.method public static final synthetic D(Lcn/mucang/jiakaoyi/uilib/login/face/FaceLoginPresenter;Landroid/graphics/Bitmap;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcn/mucang/jiakaoyi/uilib/login/face/FaceLoginPresenter;->q:Landroid/graphics/Bitmap;

    return-void
.end method

.method public static final synthetic E(Lcn/mucang/jiakaoyi/uilib/login/face/FaceLoginPresenter;Lorg/opencv/core/Mat;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcn/mucang/jiakaoyi/uilib/login/face/FaceLoginPresenter;->o:Lorg/opencv/core/Mat;

    return-void
.end method

.method public static final synthetic F(Lcn/mucang/jiakaoyi/uilib/login/face/FaceLoginPresenter;Lcn/mucang/jiakaoyi/uilib/login/face/t/g;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcn/mucang/jiakaoyi/uilib/login/face/FaceLoginPresenter;->u:Lcn/mucang/jiakaoyi/uilib/login/face/t/g;

    return-void
.end method

.method public static final synthetic G(Lcn/mucang/jiakaoyi/uilib/login/face/FaceLoginPresenter;Landroid/os/HandlerThread;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcn/mucang/jiakaoyi/uilib/login/face/FaceLoginPresenter;->z:Landroid/os/HandlerThread;

    return-void
.end method

.method public static final synthetic H(Lcn/mucang/jiakaoyi/uilib/login/face/FaceLoginPresenter;Lcn/mucang/jiakaoyi/uilib/login/face/t/h;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcn/mucang/jiakaoyi/uilib/login/face/FaceLoginPresenter;->w:Lcn/mucang/jiakaoyi/uilib/login/face/t/h;

    return-void
.end method

.method public static final synthetic I(Lcn/mucang/jiakaoyi/uilib/login/face/FaceLoginPresenter;Lcn/mucang/jiakaoyi/uilib/login/face/p;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcn/mucang/jiakaoyi/uilib/login/face/FaceLoginPresenter;->m:Lcn/mucang/jiakaoyi/uilib/login/face/p;

    return-void
.end method

.method public static final synthetic J(Lcn/mucang/jiakaoyi/uilib/login/face/FaceLoginPresenter;Landroid/graphics/Bitmap;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcn/mucang/jiakaoyi/uilib/login/face/FaceLoginPresenter;->r:Landroid/graphics/Bitmap;

    return-void
.end method

.method public static final synthetic K(Lcn/mucang/jiakaoyi/uilib/login/face/FaceLoginPresenter;Lorg/opencv/core/Mat;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcn/mucang/jiakaoyi/uilib/login/face/FaceLoginPresenter;->p:Lorg/opencv/core/Mat;

    return-void
.end method

.method public static final synthetic L(Lcn/mucang/jiakaoyi/uilib/login/face/FaceLoginPresenter;Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcn/mucang/jiakaoyi/uilib/login/face/FaceLoginPresenter;->j:Z

    return-void
.end method

.method public static final synthetic M(I)V
    .locals 0

    .line 1
    sput p0, Lcn/mucang/jiakaoyi/uilib/login/face/FaceLoginPresenter;->F:I

    return-void
.end method

.method private final N([BII)V
    .locals 19

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p2

    move/from16 v3, p3

    .line 1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    .line 2
    iget-object v6, v0, Lcn/mucang/jiakaoyi/uilib/login/face/FaceLoginPresenter;->e:Lcn/mucang/android/jiakaoyi/framework/camera/b;

    invoke-interface {v6}, Lcn/mucang/android/jiakaoyi/framework/camera/b;->a()Lcn/mucang/android/jiakaoyi/framework/camera/ImageFormat;

    move-result-object v6

    sget-object v7, Lcn/mucang/jiakaoyi/uilib/login/face/FaceLoginPresenter$c;->a:[I

    invoke-virtual {v6}, Ljava/lang/Enum;->ordinal()I

    move-result v6

    aget v6, v7, v6

    const/4 v7, 0x2

    const/4 v9, 0x1

    if-eq v6, v9, :cond_2

    if-ne v6, v7, :cond_1

    .line 3
    iget-object v6, v0, Lcn/mucang/jiakaoyi/uilib/login/face/FaceLoginPresenter;->l:Lcn/mucang/jiakaoyi/uilib/login/face/n;

    if-nez v6, :cond_0

    goto :goto_0

    :cond_0
    invoke-interface {v6, v1, v2, v3}, Lcn/mucang/jiakaoyi/uilib/login/face/n;->d([BII)Lcn/mucang/jiakaoyi/uilib/login/face/m;

    move-result-object v1

    goto :goto_1

    :cond_1
    new-instance v1, Lkotlin/NoWhenBranchMatchedException;

    invoke-direct {v1}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    throw v1

    .line 4
    :cond_2
    iget-object v6, v0, Lcn/mucang/jiakaoyi/uilib/login/face/FaceLoginPresenter;->l:Lcn/mucang/jiakaoyi/uilib/login/face/n;

    if-nez v6, :cond_3

    :goto_0
    const/4 v1, 0x0

    goto :goto_1

    :cond_3
    invoke-interface {v6, v1, v2, v3}, Lcn/mucang/jiakaoyi/uilib/login/face/n;->b([BII)Lcn/mucang/jiakaoyi/uilib/login/face/m;

    move-result-object v1

    .line 5
    :goto_1
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "\u4eba\u8138\u626b\u63cf\u8017\u8d39\uff1a"

    invoke-virtual {v6, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v10

    sub-long/2addr v10, v4

    invoke-virtual {v6, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v4, "ms"

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v5, "faceLogin"

    invoke-static {v5, v4}, Lcn/mucang/android/core/utils/t;->h(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v1, :cond_22

    .line 6
    invoke-virtual {v1}, Lcn/mucang/jiakaoyi/uilib/login/face/m;->g()Lorg/opencv/core/Rect;

    move-result-object v4

    if-nez v4, :cond_4

    goto/16 :goto_f

    .line 7
    :cond_4
    invoke-virtual {v1}, Lcn/mucang/jiakaoyi/uilib/login/face/m;->g()Lorg/opencv/core/Rect;

    move-result-object v4

    iget v4, v4, Lorg/opencv/core/Rect;->width:I

    invoke-virtual {v1}, Lcn/mucang/jiakaoyi/uilib/login/face/m;->g()Lorg/opencv/core/Rect;

    move-result-object v6

    iget v6, v6, Lorg/opencv/core/Rect;->height:I

    if-eq v4, v6, :cond_6

    .line 8
    invoke-virtual {v1}, Lcn/mucang/jiakaoyi/uilib/login/face/m;->g()Lorg/opencv/core/Rect;

    move-result-object v4

    iget v4, v4, Lorg/opencv/core/Rect;->x:I

    .line 9
    invoke-virtual {v1}, Lcn/mucang/jiakaoyi/uilib/login/face/m;->g()Lorg/opencv/core/Rect;

    move-result-object v6

    iget v6, v6, Lorg/opencv/core/Rect;->width:I

    .line 10
    invoke-virtual {v1}, Lcn/mucang/jiakaoyi/uilib/login/face/m;->g()Lorg/opencv/core/Rect;

    move-result-object v10

    iget v10, v10, Lorg/opencv/core/Rect;->y:I

    .line 11
    invoke-virtual {v1}, Lcn/mucang/jiakaoyi/uilib/login/face/m;->g()Lorg/opencv/core/Rect;

    move-result-object v11

    iget v11, v11, Lorg/opencv/core/Rect;->height:I

    .line 12
    invoke-virtual {v1}, Lcn/mucang/jiakaoyi/uilib/login/face/m;->g()Lorg/opencv/core/Rect;

    move-result-object v12

    sub-int v13, v11, v6

    div-int/2addr v13, v7

    sub-int v13, v4, v13

    iput v13, v12, Lorg/opencv/core/Rect;->x:I

    .line 13
    invoke-virtual {v1}, Lcn/mucang/jiakaoyi/uilib/login/face/m;->g()Lorg/opencv/core/Rect;

    move-result-object v12

    iput v11, v12, Lorg/opencv/core/Rect;->width:I

    .line 14
    invoke-virtual {v1}, Lcn/mucang/jiakaoyi/uilib/login/face/m;->g()Lorg/opencv/core/Rect;

    move-result-object v12

    iget v12, v12, Lorg/opencv/core/Rect;->x:I

    if-ltz v12, :cond_5

    invoke-virtual {v1}, Lcn/mucang/jiakaoyi/uilib/login/face/m;->g()Lorg/opencv/core/Rect;

    move-result-object v12

    iget v12, v12, Lorg/opencv/core/Rect;->x:I

    invoke-virtual {v1}, Lcn/mucang/jiakaoyi/uilib/login/face/m;->g()Lorg/opencv/core/Rect;

    move-result-object v13

    iget v13, v13, Lorg/opencv/core/Rect;->width:I

    add-int/2addr v12, v13

    if-le v12, v2, :cond_6

    .line 15
    :cond_5
    invoke-virtual {v1}, Lcn/mucang/jiakaoyi/uilib/login/face/m;->g()Lorg/opencv/core/Rect;

    move-result-object v12

    iput v4, v12, Lorg/opencv/core/Rect;->x:I

    .line 16
    invoke-virtual {v1}, Lcn/mucang/jiakaoyi/uilib/login/face/m;->g()Lorg/opencv/core/Rect;

    move-result-object v4

    iput v6, v4, Lorg/opencv/core/Rect;->width:I

    .line 17
    invoke-virtual {v1}, Lcn/mucang/jiakaoyi/uilib/login/face/m;->g()Lorg/opencv/core/Rect;

    move-result-object v4

    sub-int v11, v6, v11

    div-int/2addr v11, v7

    sub-int/2addr v10, v11

    iput v10, v4, Lorg/opencv/core/Rect;->y:I

    .line 18
    invoke-virtual {v1}, Lcn/mucang/jiakaoyi/uilib/login/face/m;->g()Lorg/opencv/core/Rect;

    move-result-object v4

    iput v6, v4, Lorg/opencv/core/Rect;->height:I

    .line 19
    :cond_6
    invoke-virtual {v1}, Lcn/mucang/jiakaoyi/uilib/login/face/m;->g()Lorg/opencv/core/Rect;

    move-result-object v4

    const-string v6, "faceResult.pos"

    invoke-static {v4, v6}, Lkotlin/jvm/internal/r;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v1}, Lcn/mucang/jiakaoyi/uilib/login/face/m;->e()Lcn/mucang/jiakaoyi/uilib/login/face/q;

    move-result-object v10

    const-string v11, "faceResult.landmark"

    invoke-static {v10, v11}, Lkotlin/jvm/internal/r;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {v0, v4, v10, v2, v3}, Lcn/mucang/jiakaoyi/uilib/login/face/FaceLoginPresenter;->X(Lorg/opencv/core/Rect;Lcn/mucang/jiakaoyi/uilib/login/face/q;II)V

    .line 20
    invoke-virtual {v1}, Lcn/mucang/jiakaoyi/uilib/login/face/m;->g()Lorg/opencv/core/Rect;

    move-result-object v4

    iget v4, v4, Lorg/opencv/core/Rect;->height:I

    int-to-float v4, v4

    int-to-float v10, v3

    div-float/2addr v4, v10

    .line 21
    invoke-static {v4}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v10

    const-string v12, "\u4eba\u8138\u5360\u6bd4ratio:"

    invoke-static {v12, v10}, Lkotlin/jvm/internal/r;->m(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    invoke-static {v5, v10}, Lcn/mucang/android/core/utils/t;->h(Ljava/lang/String;Ljava/lang/String;)I

    .line 22
    iget-object v5, v0, Lcn/mucang/jiakaoyi/uilib/login/face/FaceLoginPresenter;->l:Lcn/mucang/jiakaoyi/uilib/login/face/n;

    if-nez v5, :cond_7

    const/4 v5, 0x0

    goto :goto_2

    :cond_7
    invoke-interface {v5}, Lcn/mucang/jiakaoyi/uilib/login/face/n;->a()F

    move-result v5

    invoke-static {v5}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v5

    :goto_2
    if-nez v5, :cond_8

    sget v5, Lcn/mucang/jiakaoyi/uilib/login/face/FaceLoginPresenter;->C:F

    goto :goto_3

    :cond_8
    invoke-virtual {v5}, Ljava/lang/Float;->floatValue()F

    move-result v5

    :goto_3
    cmpg-float v4, v4, v5

    if-gez v4, :cond_9

    .line 23
    invoke-virtual {v1}, Lcn/mucang/jiakaoyi/uilib/login/face/m;->g()Lorg/opencv/core/Rect;

    move-result-object v1

    invoke-static {v1, v6}, Lkotlin/jvm/internal/r;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {v0, v1, v2, v3}, Lcn/mucang/jiakaoyi/uilib/login/face/FaceLoginPresenter;->Z(Lorg/opencv/core/Rect;II)V

    return-void

    .line 24
    :cond_9
    invoke-virtual {v1}, Lcn/mucang/jiakaoyi/uilib/login/face/m;->b()F

    move-result v4

    invoke-static {v4}, Ljava/lang/Math;->abs(F)F

    move-result v4

    const/high16 v5, 0x42340000    # 45.0f

    cmpl-float v4, v4, v5

    if-gez v4, :cond_21

    .line 25
    invoke-virtual {v1}, Lcn/mucang/jiakaoyi/uilib/login/face/m;->a()F

    move-result v4

    const/high16 v5, 0x41a00000    # 20.0f

    cmpl-float v4, v4, v5

    if-gez v4, :cond_21

    invoke-virtual {v1}, Lcn/mucang/jiakaoyi/uilib/login/face/m;->a()F

    move-result v4

    const/high16 v5, -0x3e900000    # -15.0f

    cmpg-float v4, v4, v5

    if-lez v4, :cond_21

    .line 26
    invoke-virtual {v1}, Lcn/mucang/jiakaoyi/uilib/login/face/m;->c()F

    move-result v4

    invoke-static {v4}, Ljava/lang/Math;->abs(F)F

    move-result v4

    const/high16 v5, 0x41700000    # 15.0f

    cmpl-float v4, v4, v5

    if-ltz v4, :cond_a

    goto/16 :goto_e

    .line 27
    :cond_a
    invoke-virtual {v1}, Lcn/mucang/jiakaoyi/uilib/login/face/m;->g()Lorg/opencv/core/Rect;

    move-result-object v4

    invoke-static {v4, v6}, Lkotlin/jvm/internal/r;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {v0, v4}, Lcn/mucang/jiakaoyi/uilib/login/face/FaceLoginPresenter;->d0(Lorg/opencv/core/Rect;)V

    .line 28
    iget-object v4, v0, Lcn/mucang/jiakaoyi/uilib/login/face/FaceLoginPresenter;->l:Lcn/mucang/jiakaoyi/uilib/login/face/n;

    const/4 v5, 0x0

    if-nez v4, :cond_c

    :cond_b
    const/4 v4, 0x0

    goto :goto_4

    :cond_c
    invoke-virtual {v1}, Lcn/mucang/jiakaoyi/uilib/login/face/m;->g()Lorg/opencv/core/Rect;

    move-result-object v10

    invoke-static {v10, v6}, Lkotlin/jvm/internal/r;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v4, v10, v2, v3}, Lcn/mucang/jiakaoyi/uilib/login/face/n;->c(Lorg/opencv/core/Rect;II)Z

    move-result v4

    if-ne v4, v9, :cond_b

    const/4 v4, 0x1

    :goto_4
    if-eqz v4, :cond_d

    return-void

    .line 29
    :cond_d
    sget-object v4, Lcn/mucang/jiakaoyi/uilib/login/face/s;->a:Lcn/mucang/jiakaoyi/uilib/login/face/s;

    invoke-virtual {v1}, Lcn/mucang/jiakaoyi/uilib/login/face/m;->g()Lorg/opencv/core/Rect;

    move-result-object v10

    invoke-static {v10, v6}, Lkotlin/jvm/internal/r;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v4, v10, v2, v3}, Lcn/mucang/jiakaoyi/uilib/login/face/s;->a(Lorg/opencv/core/Rect;II)Z

    move-result v4

    if-nez v4, :cond_e

    return-void

    .line 30
    :cond_e
    invoke-virtual {v1}, Lcn/mucang/jiakaoyi/uilib/login/face/m;->d()Lorg/opencv/core/Mat;

    move-result-object v4

    invoke-virtual {v1}, Lcn/mucang/jiakaoyi/uilib/login/face/m;->g()Lorg/opencv/core/Rect;

    move-result-object v10

    invoke-virtual {v4, v10}, Lorg/opencv/core/Mat;->submat(Lorg/opencv/core/Rect;)Lorg/opencv/core/Mat;

    move-result-object v4

    .line 31
    iget-object v10, v0, Lcn/mucang/jiakaoyi/uilib/login/face/FaceLoginPresenter;->u:Lcn/mucang/jiakaoyi/uilib/login/face/t/g;

    const-string v12, "dst"

    if-nez v10, :cond_f

    const/4 v10, 0x0

    goto :goto_5

    :cond_f
    invoke-virtual {v1}, Lcn/mucang/jiakaoyi/uilib/login/face/m;->g()Lorg/opencv/core/Rect;

    move-result-object v13

    invoke-static {v13, v6}, Lkotlin/jvm/internal/r;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v4, v12}, Lkotlin/jvm/internal/r;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v1}, Lcn/mucang/jiakaoyi/uilib/login/face/m;->e()Lcn/mucang/jiakaoyi/uilib/login/face/q;

    move-result-object v14

    invoke-static {v14, v11}, Lkotlin/jvm/internal/r;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v10, v13, v4, v14}, Lcn/mucang/jiakaoyi/uilib/login/face/t/g;->a(Lorg/opencv/core/Rect;Lorg/opencv/core/Mat;Lcn/mucang/jiakaoyi/uilib/login/face/q;)Z

    move-result v10

    .line 32
    :goto_5
    invoke-virtual {v1, v10}, Lcn/mucang/jiakaoyi/uilib/login/face/m;->i(Z)V

    .line 33
    iget-object v13, v0, Lcn/mucang/jiakaoyi/uilib/login/face/FaceLoginPresenter;->w:Lcn/mucang/jiakaoyi/uilib/login/face/t/h;

    if-nez v13, :cond_10

    const/4 v13, 0x0

    goto :goto_6

    :cond_10
    invoke-virtual {v1}, Lcn/mucang/jiakaoyi/uilib/login/face/m;->g()Lorg/opencv/core/Rect;

    move-result-object v14

    invoke-static {v14, v6}, Lkotlin/jvm/internal/r;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v4, v12}, Lkotlin/jvm/internal/r;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v1}, Lcn/mucang/jiakaoyi/uilib/login/face/m;->e()Lcn/mucang/jiakaoyi/uilib/login/face/q;

    move-result-object v15

    invoke-static {v15, v11}, Lkotlin/jvm/internal/r;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v13, v10, v14, v4, v15}, Lcn/mucang/jiakaoyi/uilib/login/face/t/h;->d(ZLorg/opencv/core/Rect;Lorg/opencv/core/Mat;Lcn/mucang/jiakaoyi/uilib/login/face/q;)Z

    move-result v13

    :goto_6
    if-eqz v13, :cond_11

    return-void

    .line 34
    :cond_11
    iget-object v13, v0, Lcn/mucang/jiakaoyi/uilib/login/face/FaceLoginPresenter;->v:Lcn/mucang/jiakaoyi/uilib/login/face/t/f;

    if-nez v13, :cond_12

    const/4 v6, 0x0

    goto :goto_7

    :cond_12
    invoke-virtual {v1}, Lcn/mucang/jiakaoyi/uilib/login/face/m;->g()Lorg/opencv/core/Rect;

    move-result-object v14

    invoke-static {v14, v6}, Lkotlin/jvm/internal/r;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v4, v12}, Lkotlin/jvm/internal/r;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v1}, Lcn/mucang/jiakaoyi/uilib/login/face/m;->e()Lcn/mucang/jiakaoyi/uilib/login/face/q;

    move-result-object v6

    invoke-static {v6, v11}, Lkotlin/jvm/internal/r;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v13, v10, v14, v4, v6}, Lcn/mucang/jiakaoyi/uilib/login/face/t/f;->a(ZLorg/opencv/core/Rect;Lorg/opencv/core/Mat;Lcn/mucang/jiakaoyi/uilib/login/face/q;)Z

    move-result v6

    :goto_7
    if-eqz v6, :cond_13

    return-void

    :cond_13
    const/4 v6, 0x5

    new-array v10, v6, [Landroid/graphics/PointF;

    .line 35
    invoke-virtual {v1}, Lcn/mucang/jiakaoyi/uilib/login/face/m;->e()Lcn/mucang/jiakaoyi/uilib/login/face/q;

    move-result-object v11

    invoke-virtual {v11}, Lcn/mucang/jiakaoyi/uilib/login/face/q;->a()Landroid/graphics/PointF;

    move-result-object v11

    aput-object v11, v10, v5

    .line 36
    invoke-virtual {v1}, Lcn/mucang/jiakaoyi/uilib/login/face/m;->e()Lcn/mucang/jiakaoyi/uilib/login/face/q;

    move-result-object v11

    invoke-virtual {v11}, Lcn/mucang/jiakaoyi/uilib/login/face/q;->b()Landroid/graphics/PointF;

    move-result-object v11

    aput-object v11, v10, v9

    .line 37
    invoke-virtual {v1}, Lcn/mucang/jiakaoyi/uilib/login/face/m;->e()Lcn/mucang/jiakaoyi/uilib/login/face/q;

    move-result-object v11

    invoke-virtual {v11}, Lcn/mucang/jiakaoyi/uilib/login/face/q;->h()Landroid/graphics/PointF;

    move-result-object v11

    aput-object v11, v10, v7

    .line 38
    invoke-virtual {v1}, Lcn/mucang/jiakaoyi/uilib/login/face/m;->e()Lcn/mucang/jiakaoyi/uilib/login/face/q;

    move-result-object v11

    invoke-virtual {v11}, Lcn/mucang/jiakaoyi/uilib/login/face/q;->f()Landroid/graphics/PointF;

    move-result-object v11

    const/4 v12, 0x3

    aput-object v11, v10, v12

    .line 39
    invoke-virtual {v1}, Lcn/mucang/jiakaoyi/uilib/login/face/m;->e()Lcn/mucang/jiakaoyi/uilib/login/face/q;

    move-result-object v11

    invoke-virtual {v11}, Lcn/mucang/jiakaoyi/uilib/login/face/q;->g()Landroid/graphics/PointF;

    move-result-object v11

    const/4 v13, 0x4

    aput-object v11, v10, v13

    .line 40
    invoke-static {v10}, Lkotlin/collections/s;->m([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v10

    .line 41
    new-instance v11, Ljava/util/ArrayList;

    const/16 v14, 0xa

    invoke-static {v10, v14}, Lkotlin/collections/s;->u(Ljava/lang/Iterable;I)I

    move-result v14

    invoke-direct {v11, v14}, Ljava/util/ArrayList;-><init>(I)V

    .line 42
    invoke-interface {v10}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v10

    :goto_8
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v14

    if-eqz v14, :cond_14

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v14

    .line 43
    check-cast v14, Landroid/graphics/PointF;

    .line 44
    new-instance v15, Lorg/opencv/core/Point;

    iget v8, v14, Landroid/graphics/PointF;->x:F

    invoke-virtual {v1}, Lcn/mucang/jiakaoyi/uilib/login/face/m;->g()Lorg/opencv/core/Rect;

    move-result-object v13

    iget v13, v13, Lorg/opencv/core/Rect;->x:I

    int-to-float v13, v13

    sub-float/2addr v8, v13

    float-to-double v12, v8

    iget v8, v14, Landroid/graphics/PointF;->y:F

    invoke-virtual {v1}, Lcn/mucang/jiakaoyi/uilib/login/face/m;->g()Lorg/opencv/core/Rect;

    move-result-object v14

    iget v14, v14, Lorg/opencv/core/Rect;->y:I

    int-to-float v14, v14

    sub-float/2addr v8, v14

    float-to-double v7, v8

    invoke-direct {v15, v12, v13, v7, v8}, Lorg/opencv/core/Point;-><init>(DD)V

    invoke-interface {v11, v15}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    const/4 v7, 0x2

    const/4 v12, 0x3

    const/4 v13, 0x4

    goto :goto_8

    :cond_14
    new-array v7, v5, [Lorg/opencv/core/Point;

    .line 45
    invoke-interface {v11, v7}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v7

    const-string v8, "null cannot be cast to non-null type kotlin.Array<T>"

    invoke-static {v7, v8}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 46
    check-cast v7, [Lorg/opencv/core/Point;

    .line 47
    new-instance v8, Lorg/opencv/core/MatOfPoint2f;

    array-length v10, v7

    invoke-static {v7, v10}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v7

    check-cast v7, [Lorg/opencv/core/Point;

    invoke-direct {v8, v7}, Lorg/opencv/core/MatOfPoint2f;-><init>([Lorg/opencv/core/Point;)V

    .line 48
    invoke-virtual {v1}, Lcn/mucang/jiakaoyi/uilib/login/face/m;->g()Lorg/opencv/core/Rect;

    move-result-object v7

    iget v7, v7, Lorg/opencv/core/Rect;->width:I

    int-to-double v10, v7

    const/16 v7, 0x70

    int-to-double v12, v7

    div-double/2addr v10, v12

    .line 49
    new-instance v7, Lorg/opencv/core/MatOfPoint2f;

    new-array v6, v6, [Lorg/opencv/core/Point;

    .line 50
    new-instance v12, Lorg/opencv/core/Point;

    const-wide/high16 v16, 0x4043000000000000L    # 38.0

    mul-double v14, v10, v16

    const-wide v16, 0x4049800000000000L    # 51.0

    move-object/from16 v18, v1

    mul-double v1, v10, v16

    invoke-direct {v12, v14, v15, v1, v2}, Lorg/opencv/core/Point;-><init>(DD)V

    aput-object v12, v6, v5

    .line 51
    new-instance v12, Lorg/opencv/core/Point;

    const-wide v14, 0x4052400000000000L    # 73.0

    mul-double v14, v14, v10

    invoke-direct {v12, v14, v15, v1, v2}, Lorg/opencv/core/Point;-><init>(DD)V

    aput-object v12, v6, v9

    .line 52
    new-instance v1, Lorg/opencv/core/Point;

    const-wide/high16 v14, 0x404c000000000000L    # 56.0

    mul-double v14, v14, v10

    const-wide v16, 0x4051c00000000000L    # 71.0

    mul-double v12, v10, v16

    invoke-direct {v1, v14, v15, v12, v13}, Lorg/opencv/core/Point;-><init>(DD)V

    const/4 v2, 0x2

    aput-object v1, v6, v2

    .line 53
    new-instance v1, Lorg/opencv/core/Point;

    const-wide v12, 0x4044800000000000L    # 41.0

    mul-double v12, v12, v10

    const-wide/high16 v14, 0x4057000000000000L    # 92.0

    mul-double v14, v14, v10

    invoke-direct {v1, v12, v13, v14, v15}, Lorg/opencv/core/Point;-><init>(DD)V

    const/4 v2, 0x3

    aput-object v1, v6, v2

    .line 54
    new-instance v1, Lorg/opencv/core/Point;

    const-wide v12, 0x4051800000000000L    # 70.0

    mul-double v10, v10, v12

    invoke-direct {v1, v10, v11, v14, v15}, Lorg/opencv/core/Point;-><init>(DD)V

    const/4 v2, 0x4

    aput-object v1, v6, v2

    .line 55
    invoke-direct {v7, v6}, Lorg/opencv/core/MatOfPoint2f;-><init>([Lorg/opencv/core/Point;)V

    .line 56
    invoke-static {v8, v7}, Lorg/opencv/calib3d/Calib3d;->estimateAffine2D(Lorg/opencv/core/Mat;Lorg/opencv/core/Mat;)Lorg/opencv/core/Mat;

    move-result-object v1

    .line 57
    invoke-virtual {v8}, Lorg/opencv/core/Mat;->release()V

    .line 58
    invoke-virtual {v7}, Lorg/opencv/core/Mat;->release()V

    .line 59
    iget-object v2, v0, Lcn/mucang/jiakaoyi/uilib/login/face/FaceLoginPresenter;->t:Lorg/opencv/core/Mat;

    invoke-virtual {v4}, Lorg/opencv/core/Mat;->size()Lorg/opencv/core/Size;

    move-result-object v6

    invoke-static {v4, v2, v1, v6}, Lorg/opencv/imgproc/Imgproc;->warpAffine(Lorg/opencv/core/Mat;Lorg/opencv/core/Mat;Lorg/opencv/core/Mat;Lorg/opencv/core/Size;)V

    .line 60
    iget-object v1, v0, Lcn/mucang/jiakaoyi/uilib/login/face/FaceLoginPresenter;->o:Lorg/opencv/core/Mat;

    if-nez v1, :cond_15

    return-void

    .line 61
    :cond_15
    iget-object v2, v0, Lcn/mucang/jiakaoyi/uilib/login/face/FaceLoginPresenter;->q:Landroid/graphics/Bitmap;

    if-nez v2, :cond_16

    return-void

    .line 62
    :cond_16
    iget-object v6, v0, Lcn/mucang/jiakaoyi/uilib/login/face/FaceLoginPresenter;->t:Lorg/opencv/core/Mat;

    invoke-virtual {v1}, Lorg/opencv/core/Mat;->size()Lorg/opencv/core/Size;

    move-result-object v7

    invoke-static {v6, v1, v7}, Lorg/opencv/imgproc/Imgproc;->resize(Lorg/opencv/core/Mat;Lorg/opencv/core/Mat;Lorg/opencv/core/Size;)V

    .line 63
    invoke-static {v1, v2}, Lorg/opencv/android/Utils;->matToBitmap(Lorg/opencv/core/Mat;Landroid/graphics/Bitmap;)V

    .line 64
    iget-object v1, v0, Lcn/mucang/jiakaoyi/uilib/login/face/FaceLoginPresenter;->y:Lcn/mucang/jiakaoyi/uilib/login/face/r;

    if-eqz v1, :cond_1f

    iget-object v1, v0, Lcn/mucang/jiakaoyi/uilib/login/face/FaceLoginPresenter;->n:Lcn/mucang/jiakaoyi/uilib/login/face/o;

    if-nez v1, :cond_17

    goto :goto_9

    :cond_17
    invoke-interface {v1}, Lcn/mucang/jiakaoyi/uilib/login/face/o;->a()Z

    move-result v1

    if-ne v1, v9, :cond_18

    const/4 v5, 0x1

    :cond_18
    :goto_9
    if-nez v5, :cond_1f

    .line 65
    iget-object v1, v0, Lcn/mucang/jiakaoyi/uilib/login/face/FaceLoginPresenter;->p:Lorg/opencv/core/Mat;

    if-nez v1, :cond_19

    :goto_a
    const/4 v8, 0x0

    goto :goto_b

    .line 66
    :cond_19
    invoke-virtual {v1}, Lorg/opencv/core/Mat;->size()Lorg/opencv/core/Size;

    move-result-object v5

    invoke-static {v4, v1, v5}, Lorg/opencv/imgproc/Imgproc;->resize(Lorg/opencv/core/Mat;Lorg/opencv/core/Mat;Lorg/opencv/core/Size;)V

    .line 67
    iget-object v4, v0, Lcn/mucang/jiakaoyi/uilib/login/face/FaceLoginPresenter;->r:Landroid/graphics/Bitmap;

    invoke-static {v1, v4}, Lorg/opencv/android/Utils;->matToBitmap(Lorg/opencv/core/Mat;Landroid/graphics/Bitmap;)V

    .line 68
    iget-object v1, v0, Lcn/mucang/jiakaoyi/uilib/login/face/FaceLoginPresenter;->m:Lcn/mucang/jiakaoyi/uilib/login/face/p;

    if-nez v1, :cond_1a

    goto :goto_a

    .line 69
    :cond_1a
    iget-object v4, v0, Lcn/mucang/jiakaoyi/uilib/login/face/FaceLoginPresenter;->r:Landroid/graphics/Bitmap;

    if-nez v4, :cond_1b

    goto :goto_a

    .line 70
    :cond_1b
    invoke-interface {v1, v4}, Lcn/mucang/jiakaoyi/uilib/login/face/p;->a(Landroid/graphics/Bitmap;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    :goto_b
    if-nez v8, :cond_1c

    goto :goto_c

    .line 71
    :cond_1c
    invoke-virtual {v8}, Ljava/lang/Number;->intValue()I

    .line 72
    iget-object v1, v0, Lcn/mucang/jiakaoyi/uilib/login/face/FaceLoginPresenter;->y:Lcn/mucang/jiakaoyi/uilib/login/face/r;

    if-nez v1, :cond_1d

    goto :goto_c

    :cond_1d
    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-interface {v1, v4}, Lcn/mucang/jiakaoyi/uilib/login/face/r;->e(I)V

    sget-object v1, Lkotlin/v;->a:Lkotlin/v;

    :goto_c
    if-nez v8, :cond_1e

    goto :goto_d

    .line 73
    :cond_1e
    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-ne v1, v9, :cond_1f

    return-void

    .line 74
    :cond_1f
    :goto_d
    iget-object v1, v0, Lcn/mucang/jiakaoyi/uilib/login/face/FaceLoginPresenter;->s:Landroid/graphics/Bitmap;

    if-nez v1, :cond_20

    .line 75
    sget-object v1, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    move/from16 v4, p2

    invoke-static {v4, v3, v1}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v1

    iput-object v1, v0, Lcn/mucang/jiakaoyi/uilib/login/face/FaceLoginPresenter;->s:Landroid/graphics/Bitmap;

    .line 76
    :cond_20
    invoke-virtual/range {v18 .. v18}, Lcn/mucang/jiakaoyi/uilib/login/face/m;->d()Lorg/opencv/core/Mat;

    move-result-object v1

    iget-object v3, v0, Lcn/mucang/jiakaoyi/uilib/login/face/FaceLoginPresenter;->s:Landroid/graphics/Bitmap;

    invoke-static {v3}, Lkotlin/jvm/internal/r;->c(Ljava/lang/Object;)V

    invoke-static {v1, v3}, Lorg/opencv/android/Utils;->matToBitmap(Lorg/opencv/core/Mat;Landroid/graphics/Bitmap;)V

    .line 77
    iget-object v1, v0, Lcn/mucang/jiakaoyi/uilib/login/face/FaceLoginPresenter;->s:Landroid/graphics/Bitmap;

    invoke-static {v1}, Lkotlin/jvm/internal/r;->c(Ljava/lang/Object;)V

    move-object/from16 v8, v18

    invoke-virtual {v8, v1}, Lcn/mucang/jiakaoyi/uilib/login/face/m;->j(Landroid/graphics/Bitmap;)V

    .line 78
    invoke-direct {v0, v2, v8}, Lcn/mucang/jiakaoyi/uilib/login/face/FaceLoginPresenter;->f0(Landroid/graphics/Bitmap;Lcn/mucang/jiakaoyi/uilib/login/face/m;)V

    return-void

    :cond_21
    :goto_e
    move-object v8, v1

    .line 79
    new-instance v1, Lcn/mucang/jiakaoyi/uilib/login/face/f;

    invoke-direct {v1, v0, v8}, Lcn/mucang/jiakaoyi/uilib/login/face/f;-><init>(Lcn/mucang/jiakaoyi/uilib/login/face/FaceLoginPresenter;Lcn/mucang/jiakaoyi/uilib/login/face/m;)V

    invoke-static {v1}, Lcn/mucang/android/core/utils/u;->c(Ljava/lang/Runnable;)V

    return-void

    .line 80
    :cond_22
    :goto_f
    invoke-direct/range {p0 .. p0}, Lcn/mucang/jiakaoyi/uilib/login/face/FaceLoginPresenter;->b0()V

    return-void
.end method

.method private static final O(Lcn/mucang/jiakaoyi/uilib/login/face/FaceLoginPresenter;Lcn/mucang/jiakaoyi/uilib/login/face/m;)V
    .locals 2

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object p0, p0, Lcn/mucang/jiakaoyi/uilib/login/face/FaceLoginPresenter;->g:Lcn/mucang/jiakaoyi/uilib/login/face/j;

    invoke-virtual {p1}, Lcn/mucang/jiakaoyi/uilib/login/face/m;->a()F

    move-result v0

    invoke-virtual {p1}, Lcn/mucang/jiakaoyi/uilib/login/face/m;->b()F

    move-result v1

    invoke-virtual {p1}, Lcn/mucang/jiakaoyi/uilib/login/face/m;->c()F

    move-result p1

    invoke-interface {p0, v0, v1, p1}, Lcn/mucang/jiakaoyi/uilib/login/face/j;->f(FFF)V

    return-void
.end method

.method public static synthetic Q(Lcn/mucang/jiakaoyi/uilib/login/face/FaceLoginPresenter;)V
    .locals 0

    invoke-static {p0}, Lcn/mucang/jiakaoyi/uilib/login/face/FaceLoginPresenter;->k0(Lcn/mucang/jiakaoyi/uilib/login/face/FaceLoginPresenter;)V

    return-void
.end method

.method public static synthetic R(Lcn/mucang/jiakaoyi/uilib/login/face/FaceLoginPresenter;Lorg/opencv/core/Rect;)V
    .locals 0

    invoke-static {p0, p1}, Lcn/mucang/jiakaoyi/uilib/login/face/FaceLoginPresenter;->e0(Lcn/mucang/jiakaoyi/uilib/login/face/FaceLoginPresenter;Lorg/opencv/core/Rect;)V

    return-void
.end method

.method public static synthetic S(Lcn/mucang/jiakaoyi/uilib/login/face/FaceLoginPresenter;Lorg/opencv/core/Rect;Lcn/mucang/jiakaoyi/uilib/login/face/q;II)V
    .locals 0

    invoke-static {p0, p1, p2, p3, p4}, Lcn/mucang/jiakaoyi/uilib/login/face/FaceLoginPresenter;->Y(Lcn/mucang/jiakaoyi/uilib/login/face/FaceLoginPresenter;Lorg/opencv/core/Rect;Lcn/mucang/jiakaoyi/uilib/login/face/q;II)V

    return-void
.end method

.method public static synthetic T(Lcn/mucang/jiakaoyi/uilib/login/face/FaceLoginPresenter;)V
    .locals 0

    invoke-static {p0}, Lcn/mucang/jiakaoyi/uilib/login/face/FaceLoginPresenter;->c0(Lcn/mucang/jiakaoyi/uilib/login/face/FaceLoginPresenter;)V

    return-void
.end method

.method public static synthetic U(Lcn/mucang/jiakaoyi/uilib/login/face/FaceLoginPresenter;Lorg/opencv/core/Rect;II)V
    .locals 0

    invoke-static {p0, p1, p2, p3}, Lcn/mucang/jiakaoyi/uilib/login/face/FaceLoginPresenter;->a0(Lcn/mucang/jiakaoyi/uilib/login/face/FaceLoginPresenter;Lorg/opencv/core/Rect;II)V

    return-void
.end method

.method public static synthetic V(Lcn/mucang/jiakaoyi/uilib/login/face/FaceLoginPresenter;Lcn/mucang/jiakaoyi/uilib/login/face/m;)V
    .locals 0

    invoke-static {p0, p1}, Lcn/mucang/jiakaoyi/uilib/login/face/FaceLoginPresenter;->O(Lcn/mucang/jiakaoyi/uilib/login/face/FaceLoginPresenter;Lcn/mucang/jiakaoyi/uilib/login/face/m;)V

    return-void
.end method

.method public static synthetic W(Lcn/mucang/jiakaoyi/uilib/login/face/FaceLoginPresenter;)V
    .locals 0

    invoke-static {p0}, Lcn/mucang/jiakaoyi/uilib/login/face/FaceLoginPresenter;->m0(Lcn/mucang/jiakaoyi/uilib/login/face/FaceLoginPresenter;)V

    return-void
.end method

.method private final X(Lorg/opencv/core/Rect;Lcn/mucang/jiakaoyi/uilib/login/face/q;II)V
    .locals 7

    .line 1
    new-instance v6, Lcn/mucang/jiakaoyi/uilib/login/face/c;

    move-object v0, v6

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move v4, p3

    move v5, p4

    invoke-direct/range {v0 .. v5}, Lcn/mucang/jiakaoyi/uilib/login/face/c;-><init>(Lcn/mucang/jiakaoyi/uilib/login/face/FaceLoginPresenter;Lorg/opencv/core/Rect;Lcn/mucang/jiakaoyi/uilib/login/face/q;II)V

    invoke-static {v6}, Lcn/mucang/android/core/utils/u;->c(Ljava/lang/Runnable;)V

    return-void
.end method

.method private static final Y(Lcn/mucang/jiakaoyi/uilib/login/face/FaceLoginPresenter;Lorg/opencv/core/Rect;Lcn/mucang/jiakaoyi/uilib/login/face/q;II)V
    .locals 1

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "$pos"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "$landmark"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object p0, p0, Lcn/mucang/jiakaoyi/uilib/login/face/FaceLoginPresenter;->g:Lcn/mucang/jiakaoyi/uilib/login/face/j;

    invoke-interface {p0, p1, p2, p3, p4}, Lcn/mucang/jiakaoyi/uilib/login/face/j;->b(Lorg/opencv/core/Rect;Lcn/mucang/jiakaoyi/uilib/login/face/q;II)V

    return-void
.end method

.method private final Z(Lorg/opencv/core/Rect;II)V
    .locals 1

    .line 1
    new-instance v0, Lcn/mucang/jiakaoyi/uilib/login/face/e;

    invoke-direct {v0, p0, p1, p2, p3}, Lcn/mucang/jiakaoyi/uilib/login/face/e;-><init>(Lcn/mucang/jiakaoyi/uilib/login/face/FaceLoginPresenter;Lorg/opencv/core/Rect;II)V

    invoke-static {v0}, Lcn/mucang/android/core/utils/u;->c(Ljava/lang/Runnable;)V

    return-void
.end method

.method private static final a0(Lcn/mucang/jiakaoyi/uilib/login/face/FaceLoginPresenter;Lorg/opencv/core/Rect;II)V
    .locals 1

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "$pos"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object p0, p0, Lcn/mucang/jiakaoyi/uilib/login/face/FaceLoginPresenter;->g:Lcn/mucang/jiakaoyi/uilib/login/face/j;

    invoke-interface {p0, p1, p2, p3}, Lcn/mucang/jiakaoyi/uilib/login/face/j;->a(Lorg/opencv/core/Rect;II)V

    return-void
.end method

.method public static final synthetic b(Lcn/mucang/jiakaoyi/uilib/login/face/FaceLoginPresenter;[BII)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2, p3}, Lcn/mucang/jiakaoyi/uilib/login/face/FaceLoginPresenter;->N([BII)V

    return-void
.end method

.method private final b0()V
    .locals 1

    .line 1
    new-instance v0, Lcn/mucang/jiakaoyi/uilib/login/face/d;

    invoke-direct {v0, p0}, Lcn/mucang/jiakaoyi/uilib/login/face/d;-><init>(Lcn/mucang/jiakaoyi/uilib/login/face/FaceLoginPresenter;)V

    invoke-static {v0}, Lcn/mucang/android/core/utils/u;->c(Ljava/lang/Runnable;)V

    return-void
.end method

.method public static final synthetic c(Lcn/mucang/jiakaoyi/uilib/login/face/FaceLoginPresenter;)Lorg/opencv/core/Mat;
    .locals 0

    .line 1
    iget-object p0, p0, Lcn/mucang/jiakaoyi/uilib/login/face/FaceLoginPresenter;->t:Lorg/opencv/core/Mat;

    return-object p0
.end method

.method private static final c0(Lcn/mucang/jiakaoyi/uilib/login/face/FaceLoginPresenter;)V
    .locals 1

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object p0, p0, Lcn/mucang/jiakaoyi/uilib/login/face/FaceLoginPresenter;->g:Lcn/mucang/jiakaoyi/uilib/login/face/j;

    invoke-interface {p0}, Lcn/mucang/jiakaoyi/uilib/login/face/j;->c()V

    return-void
.end method

.method public static final synthetic d(Lcn/mucang/jiakaoyi/uilib/login/face/FaceLoginPresenter;)Lcn/mucang/jiakaoyi/uilib/login/face/t/f;
    .locals 0

    .line 1
    iget-object p0, p0, Lcn/mucang/jiakaoyi/uilib/login/face/FaceLoginPresenter;->v:Lcn/mucang/jiakaoyi/uilib/login/face/t/f;

    return-object p0
.end method

.method private final d0(Lorg/opencv/core/Rect;)V
    .locals 1

    .line 1
    new-instance v0, Lcn/mucang/jiakaoyi/uilib/login/face/b;

    invoke-direct {v0, p0, p1}, Lcn/mucang/jiakaoyi/uilib/login/face/b;-><init>(Lcn/mucang/jiakaoyi/uilib/login/face/FaceLoginPresenter;Lorg/opencv/core/Rect;)V

    invoke-static {v0}, Lcn/mucang/android/core/utils/u;->c(Ljava/lang/Runnable;)V

    return-void
.end method

.method public static final synthetic e(Lcn/mucang/jiakaoyi/uilib/login/face/FaceLoginPresenter;)I
    .locals 0

    .line 1
    iget p0, p0, Lcn/mucang/jiakaoyi/uilib/login/face/FaceLoginPresenter;->c:I

    return p0
.end method

.method private static final e0(Lcn/mucang/jiakaoyi/uilib/login/face/FaceLoginPresenter;Lorg/opencv/core/Rect;)V
    .locals 1

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "$pos"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object p0, p0, Lcn/mucang/jiakaoyi/uilib/login/face/FaceLoginPresenter;->g:Lcn/mucang/jiakaoyi/uilib/login/face/j;

    invoke-interface {p0, p1}, Lcn/mucang/jiakaoyi/uilib/login/face/j;->g(Lorg/opencv/core/Rect;)V

    return-void
.end method

.method public static final synthetic f(Lcn/mucang/jiakaoyi/uilib/login/face/FaceLoginPresenter;)I
    .locals 0

    .line 1
    iget p0, p0, Lcn/mucang/jiakaoyi/uilib/login/face/FaceLoginPresenter;->b:I

    return p0
.end method

.method private final f0(Landroid/graphics/Bitmap;Lcn/mucang/jiakaoyi/uilib/login/face/m;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcn/mucang/jiakaoyi/uilib/login/face/FaceLoginPresenter;->g:Lcn/mucang/jiakaoyi/uilib/login/face/j;

    invoke-interface {v0, p1, p2}, Lcn/mucang/jiakaoyi/uilib/login/face/j;->i(Landroid/graphics/Bitmap;Lcn/mucang/jiakaoyi/uilib/login/face/m;)V

    return-void
.end method

.method public static final synthetic g(Lcn/mucang/jiakaoyi/uilib/login/face/FaceLoginPresenter;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcn/mucang/jiakaoyi/uilib/login/face/FaceLoginPresenter;->i:Z

    return p0
.end method

.method public static final synthetic h()I
    .locals 1

    .line 1
    sget v0, Lcn/mucang/jiakaoyi/uilib/login/face/FaceLoginPresenter;->E:I

    return v0
.end method

.method public static final synthetic i()I
    .locals 1

    .line 1
    sget v0, Lcn/mucang/jiakaoyi/uilib/login/face/FaceLoginPresenter;->D:I

    return v0
.end method

.method public static final synthetic j(Lcn/mucang/jiakaoyi/uilib/login/face/FaceLoginPresenter;)Lcn/mucang/jiakaoyi/uilib/login/face/k;
    .locals 0

    .line 1
    iget-object p0, p0, Lcn/mucang/jiakaoyi/uilib/login/face/FaceLoginPresenter;->f:Lcn/mucang/jiakaoyi/uilib/login/face/k;

    return-object p0
.end method

.method public static final synthetic k(Lcn/mucang/jiakaoyi/uilib/login/face/FaceLoginPresenter;)Lkotlinx/coroutines/android/a;
    .locals 0

    .line 1
    iget-object p0, p0, Lcn/mucang/jiakaoyi/uilib/login/face/FaceLoginPresenter;->A:Lkotlinx/coroutines/android/a;

    return-object p0
.end method

.method private static final k0(Lcn/mucang/jiakaoyi/uilib/login/face/FaceLoginPresenter;)V
    .locals 1

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v0, p0, Lcn/mucang/jiakaoyi/uilib/login/face/FaceLoginPresenter;->e:Lcn/mucang/android/jiakaoyi/framework/camera/b;

    invoke-interface {v0}, Lcn/mucang/android/jiakaoyi/framework/camera/b;->start()V

    .line 2
    iget-object p0, p0, Lcn/mucang/jiakaoyi/uilib/login/face/FaceLoginPresenter;->n:Lcn/mucang/jiakaoyi/uilib/login/face/o;

    if-nez p0, :cond_0

    goto :goto_0

    :cond_0
    invoke-interface {p0}, Lcn/mucang/jiakaoyi/uilib/login/face/o;->start()V

    :goto_0
    return-void
.end method

.method public static final synthetic l(Lcn/mucang/jiakaoyi/uilib/login/face/FaceLoginPresenter;)Lcn/mucang/jiakaoyi/uilib/login/face/n;
    .locals 0

    .line 1
    iget-object p0, p0, Lcn/mucang/jiakaoyi/uilib/login/face/FaceLoginPresenter;->l:Lcn/mucang/jiakaoyi/uilib/login/face/n;

    return-object p0
.end method

.method public static final synthetic m(Lcn/mucang/jiakaoyi/uilib/login/face/FaceLoginPresenter;)Lcn/mucang/jiakaoyi/uilib/login/face/o;
    .locals 0

    .line 1
    iget-object p0, p0, Lcn/mucang/jiakaoyi/uilib/login/face/FaceLoginPresenter;->n:Lcn/mucang/jiakaoyi/uilib/login/face/o;

    return-object p0
.end method

.method private static final m0(Lcn/mucang/jiakaoyi/uilib/login/face/FaceLoginPresenter;)V
    .locals 1

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v0, p0, Lcn/mucang/jiakaoyi/uilib/login/face/FaceLoginPresenter;->e:Lcn/mucang/android/jiakaoyi/framework/camera/b;

    invoke-interface {v0}, Lcn/mucang/android/jiakaoyi/framework/camera/b;->stop()V

    .line 2
    iget-object p0, p0, Lcn/mucang/jiakaoyi/uilib/login/face/FaceLoginPresenter;->n:Lcn/mucang/jiakaoyi/uilib/login/face/o;

    if-nez p0, :cond_0

    goto :goto_0

    :cond_0
    invoke-interface {p0}, Lcn/mucang/jiakaoyi/uilib/login/face/o;->stop()V

    :goto_0
    return-void
.end method

.method public static final synthetic n(Lcn/mucang/jiakaoyi/uilib/login/face/FaceLoginPresenter;)Lorg/opencv/core/Mat;
    .locals 0

    .line 1
    iget-object p0, p0, Lcn/mucang/jiakaoyi/uilib/login/face/FaceLoginPresenter;->o:Lorg/opencv/core/Mat;

    return-object p0
.end method

.method public static final synthetic o(Lcn/mucang/jiakaoyi/uilib/login/face/FaceLoginPresenter;)Lcn/mucang/jiakaoyi/uilib/login/face/t/g;
    .locals 0

    .line 1
    iget-object p0, p0, Lcn/mucang/jiakaoyi/uilib/login/face/FaceLoginPresenter;->u:Lcn/mucang/jiakaoyi/uilib/login/face/t/g;

    return-object p0
.end method

.method public static final synthetic p(Lcn/mucang/jiakaoyi/uilib/login/face/FaceLoginPresenter;)Landroid/os/HandlerThread;
    .locals 0

    .line 1
    iget-object p0, p0, Lcn/mucang/jiakaoyi/uilib/login/face/FaceLoginPresenter;->z:Landroid/os/HandlerThread;

    return-object p0
.end method

.method public static final synthetic q(Lcn/mucang/jiakaoyi/uilib/login/face/FaceLoginPresenter;)Lcn/mucang/jiakaoyi/uilib/login/face/t/h;
    .locals 0

    .line 1
    iget-object p0, p0, Lcn/mucang/jiakaoyi/uilib/login/face/FaceLoginPresenter;->w:Lcn/mucang/jiakaoyi/uilib/login/face/t/h;

    return-object p0
.end method

.method public static final synthetic r(Lcn/mucang/jiakaoyi/uilib/login/face/FaceLoginPresenter;)I
    .locals 0

    .line 1
    iget p0, p0, Lcn/mucang/jiakaoyi/uilib/login/face/FaceLoginPresenter;->d:I

    return p0
.end method

.method public static final synthetic s(Lcn/mucang/jiakaoyi/uilib/login/face/FaceLoginPresenter;)Lcn/mucang/jiakaoyi/uilib/login/face/j;
    .locals 0

    .line 1
    iget-object p0, p0, Lcn/mucang/jiakaoyi/uilib/login/face/FaceLoginPresenter;->g:Lcn/mucang/jiakaoyi/uilib/login/face/j;

    return-object p0
.end method

.method public static final synthetic t(Lcn/mucang/jiakaoyi/uilib/login/face/FaceLoginPresenter;)Lorg/opencv/core/Mat;
    .locals 0

    .line 1
    iget-object p0, p0, Lcn/mucang/jiakaoyi/uilib/login/face/FaceLoginPresenter;->p:Lorg/opencv/core/Mat;

    return-object p0
.end method

.method public static final synthetic u(Lcn/mucang/jiakaoyi/uilib/login/face/FaceLoginPresenter;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcn/mucang/jiakaoyi/uilib/login/face/FaceLoginPresenter;->h:Z

    return p0
.end method

.method public static final synthetic v(Lcn/mucang/jiakaoyi/uilib/login/face/FaceLoginPresenter;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcn/mucang/jiakaoyi/uilib/login/face/FaceLoginPresenter;->j:Z

    return p0
.end method

.method public static final synthetic w(Lcn/mucang/jiakaoyi/uilib/login/face/FaceLoginPresenter;)Lcn/mucang/jiakaoyi/uilib/login/face/FaceLoginPresenter$b;
    .locals 0

    .line 1
    iget-object p0, p0, Lcn/mucang/jiakaoyi/uilib/login/face/FaceLoginPresenter;->x:Lcn/mucang/jiakaoyi/uilib/login/face/FaceLoginPresenter$b;

    return-object p0
.end method

.method public static final synthetic x()I
    .locals 1

    .line 1
    sget v0, Lcn/mucang/jiakaoyi/uilib/login/face/FaceLoginPresenter;->F:I

    return v0
.end method

.method public static final synthetic y(Lcn/mucang/jiakaoyi/uilib/login/face/FaceLoginPresenter;Lorg/opencv/core/Mat;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcn/mucang/jiakaoyi/uilib/login/face/FaceLoginPresenter;->t:Lorg/opencv/core/Mat;

    return-void
.end method

.method public static final synthetic z(Lcn/mucang/jiakaoyi/uilib/login/face/FaceLoginPresenter;Lcn/mucang/jiakaoyi/uilib/login/face/t/f;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcn/mucang/jiakaoyi/uilib/login/face/FaceLoginPresenter;->v:Lcn/mucang/jiakaoyi/uilib/login/face/t/f;

    return-void
.end method


# virtual methods
.method public final P()V
    .locals 8

    .line 1
    iget-object v0, p0, Lcn/mucang/jiakaoyi/uilib/login/face/FaceLoginPresenter;->k:Lkotlinx/coroutines/t1;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v2, 0x1

    invoke-static {v0, v1, v2, v1}, Lkotlinx/coroutines/t1$a;->a(Lkotlinx/coroutines/t1;Ljava/util/concurrent/CancellationException;ILjava/lang/Object;)V

    .line 2
    :goto_0
    iput-object v1, p0, Lcn/mucang/jiakaoyi/uilib/login/face/FaceLoginPresenter;->k:Lkotlinx/coroutines/t1;

    const/4 v0, 0x0

    .line 3
    iput-boolean v0, p0, Lcn/mucang/jiakaoyi/uilib/login/face/FaceLoginPresenter;->j:Z

    .line 4
    iget-object v3, p0, Lcn/mucang/jiakaoyi/uilib/login/face/FaceLoginPresenter;->A:Lkotlinx/coroutines/android/a;

    if-nez v3, :cond_1

    goto :goto_1

    .line 5
    :cond_1
    invoke-static {}, Lkotlinx/coroutines/j0;->b()Lkotlinx/coroutines/i0;

    move-result-object v2

    const/4 v4, 0x0

    new-instance v5, Lcn/mucang/jiakaoyi/uilib/login/face/FaceLoginPresenter$destroy$1$1;

    invoke-direct {v5, p0, v1}, Lcn/mucang/jiakaoyi/uilib/login/face/FaceLoginPresenter$destroy$1$1;-><init>(Lcn/mucang/jiakaoyi/uilib/login/face/FaceLoginPresenter;Lkotlin/coroutines/c;)V

    const/4 v6, 0x2

    const/4 v7, 0x0

    invoke-static/range {v2 .. v7}, Lkotlinx/coroutines/f;->b(Lkotlinx/coroutines/i0;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/b/p;ILjava/lang/Object;)Lkotlinx/coroutines/t1;

    :goto_1
    return-void
.end method

.method public a([BIIIIJI)V
    .locals 11

    move-object v6, p0

    const-string v0, "byteArray"

    move-object v2, p1

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v7, v6, Lcn/mucang/jiakaoyi/uilib/login/face/FaceLoginPresenter;->a:Lkotlinx/coroutines/i0;

    if-nez v7, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    invoke-static {}, Lkotlinx/coroutines/w0;->c()Lkotlinx/coroutines/d2;

    move-result-object v8

    const/4 v9, 0x0

    new-instance v10, Lcn/mucang/jiakaoyi/uilib/login/face/FaceLoginPresenter$onFrame$1;

    const/4 v5, 0x0

    move-object v0, v10

    move-object v1, p0

    move-object v2, p1

    move v3, p2

    move v4, p3

    invoke-direct/range {v0 .. v5}, Lcn/mucang/jiakaoyi/uilib/login/face/FaceLoginPresenter$onFrame$1;-><init>(Lcn/mucang/jiakaoyi/uilib/login/face/FaceLoginPresenter;[BIILkotlin/coroutines/c;)V

    const/4 v0, 0x2

    const/4 v1, 0x0

    move-object p1, v7

    move-object p2, v8

    move-object p3, v9

    move-object p4, v10

    move/from16 p5, v0

    move-object/from16 p6, v1

    invoke-static/range {p1 .. p6}, Lkotlinx/coroutines/f;->b(Lkotlinx/coroutines/i0;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/b/p;ILjava/lang/Object;)Lkotlinx/coroutines/t1;

    move-result-object v0

    :goto_0
    iput-object v0, v6, Lcn/mucang/jiakaoyi/uilib/login/face/FaceLoginPresenter;->k:Lkotlinx/coroutines/t1;

    return-void
.end method

.method public final g0(Lcn/mucang/jiakaoyi/uilib/login/face/o;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcn/mucang/jiakaoyi/uilib/login/face/FaceLoginPresenter;->n:Lcn/mucang/jiakaoyi/uilib/login/face/o;

    return-void
.end method

.method public final h0(Lcn/mucang/jiakaoyi/uilib/login/face/r;)V
    .locals 1

    const-string v0, "listener"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iput-object p1, p0, Lcn/mucang/jiakaoyi/uilib/login/face/FaceLoginPresenter;->y:Lcn/mucang/jiakaoyi/uilib/login/face/r;

    return-void
.end method

.method public final i0(Lcn/mucang/jiakaoyi/uilib/login/face/FaceLoginPresenter$b;)V
    .locals 1

    const-string v0, "listener"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iput-object p1, p0, Lcn/mucang/jiakaoyi/uilib/login/face/FaceLoginPresenter;->x:Lcn/mucang/jiakaoyi/uilib/login/face/FaceLoginPresenter$b;

    return-void
.end method

.method public final j0()V
    .locals 1

    const/4 v0, 0x1

    .line 1
    iput-boolean v0, p0, Lcn/mucang/jiakaoyi/uilib/login/face/FaceLoginPresenter;->h:Z

    .line 2
    new-instance v0, Lcn/mucang/jiakaoyi/uilib/login/face/a;

    invoke-direct {v0, p0}, Lcn/mucang/jiakaoyi/uilib/login/face/a;-><init>(Lcn/mucang/jiakaoyi/uilib/login/face/FaceLoginPresenter;)V

    invoke-static {v0}, Lcn/mucang/android/core/utils/u;->f(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final l0()V
    .locals 1

    const/4 v0, 0x0

    .line 1
    iput-boolean v0, p0, Lcn/mucang/jiakaoyi/uilib/login/face/FaceLoginPresenter;->h:Z

    .line 2
    new-instance v0, Lcn/mucang/jiakaoyi/uilib/login/face/g;

    invoke-direct {v0, p0}, Lcn/mucang/jiakaoyi/uilib/login/face/g;-><init>(Lcn/mucang/jiakaoyi/uilib/login/face/FaceLoginPresenter;)V

    invoke-static {v0}, Lcn/mucang/android/core/utils/u;->f(Ljava/lang/Runnable;)V

    return-void
.end method
