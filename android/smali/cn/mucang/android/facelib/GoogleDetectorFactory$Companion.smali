.class public final Lcn/mucang/android/facelib/GoogleDetectorFactory$Companion;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/mucang/android/facelib/GoogleDetectorFactory;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u001c\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0010\u0002\n\u0002\u0008\u0002\u0008\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002J\u0006\u0010\u0008\u001a\u00020\tJ\u0008\u0010\n\u001a\u00020\tH\u0002R\u001a\u0010\u0003\u001a\u0004\u0018\u00010\u00048\u0002@\u0002X\u0083\u000e\u00a2\u0006\u0008\n\u0000\u0012\u0004\u0008\u0005\u0010\u0002R\u0018\u0010\u0006\u001a\u00020\u00018\u0002@\u0002X\u0083\u000e\u00a2\u0006\u0008\n\u0000\u0012\u0004\u0008\u0007\u0010\u0002\u00a8\u0006\u000b"
    }
    d2 = {
        "Lcn/mucang/android/facelib/GoogleDetectorFactory$Companion;",
        "",
        "()V",
        "detector",
        "Lcom/google/mlkit/vision/face/FaceDetector;",
        "getDetector$annotations",
        "lock",
        "getLock$annotations",
        "destroy",
        "",
        "init",
        "facelib_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x5,
        0x1
    }
    xi = 0x30
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/o;)V
    .locals 0

    invoke-direct {p0}, Lcn/mucang/android/facelib/GoogleDetectorFactory$Companion;-><init>()V

    return-void
.end method

.method public static final synthetic a(Lcn/mucang/android/facelib/GoogleDetectorFactory$Companion;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcn/mucang/android/facelib/GoogleDetectorFactory$Companion;->c()V

    return-void
.end method

.method private final c()V
    .locals 7

    .line 1
    new-instance v0, Lcom/google/mlkit/vision/face/FaceDetectorOptions$Builder;

    invoke-direct {v0}, Lcom/google/mlkit/vision/face/FaceDetectorOptions$Builder;-><init>()V

    const/4 v1, 0x2

    .line 2
    invoke-virtual {v0, v1}, Lcom/google/mlkit/vision/face/FaceDetectorOptions$Builder;->setLandmarkMode(I)Lcom/google/mlkit/vision/face/FaceDetectorOptions$Builder;

    move-result-object v0

    .line 3
    invoke-virtual {v0}, Lcom/google/mlkit/vision/face/FaceDetectorOptions$Builder;->build()Lcom/google/mlkit/vision/face/FaceDetectorOptions;

    move-result-object v0

    const-string v1, "Builder()\n              \u2026\n                .build()"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/r;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    invoke-static {v0}, Lcom/google/mlkit/vision/face/FaceDetection;->getClient(Lcom/google/mlkit/vision/face/FaceDetectorOptions;)Lcom/google/mlkit/vision/face/FaceDetector;

    move-result-object v0

    invoke-static {v0}, Lcn/mucang/android/facelib/GoogleDetectorFactory;->d(Lcom/google/mlkit/vision/face/FaceDetector;)V

    .line 5
    invoke-static {}, Lkotlinx/coroutines/j0;->b()Lkotlinx/coroutines/i0;

    move-result-object v1

    new-instance v4, Lcn/mucang/android/facelib/GoogleDetectorFactory$Companion$init$1;

    const/4 v0, 0x0

    invoke-direct {v4, v0}, Lcn/mucang/android/facelib/GoogleDetectorFactory$Companion$init$1;-><init>(Lkotlin/coroutines/c;)V

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v5, 0x3

    const/4 v6, 0x0

    invoke-static/range {v1 .. v6}, Lkotlinx/coroutines/f;->b(Lkotlinx/coroutines/i0;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/b/p;ILjava/lang/Object;)Lkotlinx/coroutines/t1;

    return-void
.end method


# virtual methods
.method public final b()V
    .locals 1

    .line 1
    invoke-static {}, Lcn/mucang/android/facelib/GoogleDetectorFactory;->c()Lcom/google/mlkit/vision/face/FaceDetector;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-interface {v0}, Lcom/google/mlkit/vision/face/FaceDetector;->close()V

    :goto_0
    const/4 v0, 0x0

    .line 2
    invoke-static {v0}, Lcn/mucang/android/facelib/GoogleDetectorFactory;->d(Lcom/google/mlkit/vision/face/FaceDetector;)V

    return-void
.end method
