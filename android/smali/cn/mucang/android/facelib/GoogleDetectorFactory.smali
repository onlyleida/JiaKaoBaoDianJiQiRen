.class public final Lcn/mucang/android/facelib/GoogleDetectorFactory;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcn/mucang/jiakaoyi/uilib/login/face/k;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/mucang/android/facelib/GoogleDetectorFactory$Companion;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000$\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0018\u0000 \n2\u00020\u0001:\u0001\nB\u0005\u00a2\u0006\u0002\u0010\u0002J\u0008\u0010\u0003\u001a\u00020\u0004H\u0016J\u001c\u0010\u0005\u001a\u00020\u00062\u0012\u0010\u0007\u001a\u000e\u0012\u0004\u0012\u00020\t\u0012\u0004\u0012\u00020\u00060\u0008H\u0016\u00a8\u0006\u000b"
    }
    d2 = {
        "Lcn/mucang/android/facelib/GoogleDetectorFactory;",
        "Lcn/mucang/jiakaoyi/uilib/login/face/FaceDetectorFactory;",
        "()V",
        "getDetector",
        "Lcn/mucang/jiakaoyi/uilib/login/face/IFaceDetector;",
        "getMaskDetector",
        "",
        "callback",
        "Lkotlin/Function1;",
        "Lcn/mucang/jiakaoyi/uilib/login/face/IMaskDetector;",
        "Companion",
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


# static fields
.field public static final a:Lcn/mucang/android/facelib/GoogleDetectorFactory$Companion;

.field private static b:Ljava/lang/Object;

.field private static c:Lcom/google/mlkit/vision/face/FaceDetector;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcn/mucang/android/facelib/GoogleDetectorFactory$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcn/mucang/android/facelib/GoogleDetectorFactory$Companion;-><init>(Lkotlin/jvm/internal/o;)V

    sput-object v0, Lcn/mucang/android/facelib/GoogleDetectorFactory;->a:Lcn/mucang/android/facelib/GoogleDetectorFactory$Companion;

    .line 1
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcn/mucang/android/facelib/GoogleDetectorFactory;->b:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final synthetic c()Lcom/google/mlkit/vision/face/FaceDetector;
    .locals 1

    .line 1
    sget-object v0, Lcn/mucang/android/facelib/GoogleDetectorFactory;->c:Lcom/google/mlkit/vision/face/FaceDetector;

    return-object v0
.end method

.method public static final synthetic d(Lcom/google/mlkit/vision/face/FaceDetector;)V
    .locals 0

    .line 1
    sput-object p0, Lcn/mucang/android/facelib/GoogleDetectorFactory;->c:Lcom/google/mlkit/vision/face/FaceDetector;

    return-void
.end method


# virtual methods
.method public a(Lkotlin/jvm/b/l;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/b/l<",
            "-",
            "Lcn/mucang/jiakaoyi/uilib/login/face/p;",
            "Lkotlin/v;",
            ">;)V"
        }
    .end annotation

    const-string v0, "callback"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    sget-object v0, Lcn/mucang/android/facelib/v;->a:Lcn/mucang/android/facelib/v;

    invoke-virtual {v0, p1}, Lcn/mucang/android/facelib/v;->h(Lkotlin/jvm/b/l;)V

    return-void
.end method

.method public b()Lcn/mucang/jiakaoyi/uilib/login/face/n;
    .locals 2

    .line 1
    sget-object v0, Lcn/mucang/android/facelib/GoogleDetectorFactory;->b:Ljava/lang/Object;

    monitor-enter v0

    .line 2
    :try_start_0
    sget-object v1, Lcn/mucang/android/facelib/GoogleDetectorFactory;->c:Lcom/google/mlkit/vision/face/FaceDetector;

    if-nez v1, :cond_0

    .line 3
    sget-object v1, Lcn/mucang/android/facelib/GoogleDetectorFactory;->a:Lcn/mucang/android/facelib/GoogleDetectorFactory$Companion;

    invoke-static {v1}, Lcn/mucang/android/facelib/GoogleDetectorFactory$Companion;->a(Lcn/mucang/android/facelib/GoogleDetectorFactory$Companion;)V

    .line 4
    :cond_0
    sget-object v1, Lkotlin/v;->a:Lkotlin/v;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 5
    monitor-exit v0

    .line 6
    new-instance v0, Lcn/mucang/android/facelib/t;

    sget-object v1, Lcn/mucang/android/facelib/GoogleDetectorFactory;->c:Lcom/google/mlkit/vision/face/FaceDetector;

    invoke-static {v1}, Lkotlin/jvm/internal/r;->c(Ljava/lang/Object;)V

    invoke-direct {v0, v1}, Lcn/mucang/android/facelib/t;-><init>(Lcom/google/mlkit/vision/face/FaceDetector;)V

    return-object v0

    :catchall_0
    move-exception v1

    .line 7
    monitor-exit v0

    throw v1
.end method
