.class final Lcn/mucang/android/jky/camera/UsbCameraManager$onPreviewFrame$1$1;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/b/p;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/mucang/android/jky/camera/UsbCameraManager;->onPreviewFrame(Landroid/hardware/usb/UsbDevice;[B)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/coroutines/jvm/internal/SuspendLambda;",
        "Lkotlin/jvm/b/p<",
        "Lkotlinx/coroutines/i0;",
        "Lkotlin/coroutines/c<",
        "-",
        "Lkotlin/v;",
        ">;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\u008a@"
    }
    d2 = {
        "<anonymous>",
        "",
        "Lkotlinx/coroutines/CoroutineScope;"
    }
    k = 0x3
    mv = {
        0x1,
        0x5,
        0x1
    }
    xi = 0x30
.end annotation

.annotation runtime Lkotlin/coroutines/jvm/internal/d;
    c = "cn.mucang.android.jky.camera.UsbCameraManager$onPreviewFrame$1$1"
    f = "UsbCameraManager.kt"
    l = {}
    m = "invokeSuspend"
.end annotation


# instance fields
.field final synthetic $data:[B

.field final synthetic $intent:Lcn/mucang/android/jky/camera/CameraIntent;

.field label:I


# direct methods
.method constructor <init>(Lcn/mucang/android/jky/camera/CameraIntent;[BLkotlin/coroutines/c;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcn/mucang/android/jky/camera/CameraIntent;",
            "[B",
            "Lkotlin/coroutines/c<",
            "-",
            "Lcn/mucang/android/jky/camera/UsbCameraManager$onPreviewFrame$1$1;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcn/mucang/android/jky/camera/UsbCameraManager$onPreviewFrame$1$1;->$intent:Lcn/mucang/android/jky/camera/CameraIntent;

    iput-object p2, p0, Lcn/mucang/android/jky/camera/UsbCameraManager$onPreviewFrame$1$1;->$data:[B

    const/4 p1, 0x2

    invoke-direct {p0, p1, p3}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/c;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lkotlin/coroutines/c;)Lkotlin/coroutines/c;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Lkotlin/coroutines/c<",
            "*>;)",
            "Lkotlin/coroutines/c<",
            "Lkotlin/v;",
            ">;"
        }
    .end annotation

    new-instance p1, Lcn/mucang/android/jky/camera/UsbCameraManager$onPreviewFrame$1$1;

    iget-object v0, p0, Lcn/mucang/android/jky/camera/UsbCameraManager$onPreviewFrame$1$1;->$intent:Lcn/mucang/android/jky/camera/CameraIntent;

    iget-object v1, p0, Lcn/mucang/android/jky/camera/UsbCameraManager$onPreviewFrame$1$1;->$data:[B

    invoke-direct {p1, v0, v1, p2}, Lcn/mucang/android/jky/camera/UsbCameraManager$onPreviewFrame$1$1;-><init>(Lcn/mucang/android/jky/camera/CameraIntent;[BLkotlin/coroutines/c;)V

    return-object p1
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lkotlinx/coroutines/i0;

    check-cast p2, Lkotlin/coroutines/c;

    invoke-virtual {p0, p1, p2}, Lcn/mucang/android/jky/camera/UsbCameraManager$onPreviewFrame$1$1;->invoke(Lkotlinx/coroutines/i0;Lkotlin/coroutines/c;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invoke(Lkotlinx/coroutines/i0;Lkotlin/coroutines/c;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlinx/coroutines/i0;",
            "Lkotlin/coroutines/c<",
            "-",
            "Lkotlin/v;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    invoke-virtual {p0, p1, p2}, Lcn/mucang/android/jky/camera/UsbCameraManager$onPreviewFrame$1$1;->create(Ljava/lang/Object;Lkotlin/coroutines/c;)Lkotlin/coroutines/c;

    move-result-object p1

    check-cast p1, Lcn/mucang/android/jky/camera/UsbCameraManager$onPreviewFrame$1$1;

    sget-object p2, Lkotlin/v;->a:Lkotlin/v;

    invoke-virtual {p1, p2}, Lcn/mucang/android/jky/camera/UsbCameraManager$onPreviewFrame$1$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    invoke-static {}, Lkotlin/coroutines/intrinsics/a;->d()Ljava/lang/Object;

    .line 1
    iget v0, p0, Lcn/mucang/android/jky/camera/UsbCameraManager$onPreviewFrame$1$1;->label:I

    if-nez v0, :cond_2

    invoke-static {p1}, Lkotlin/k;->b(Ljava/lang/Object;)V

    .line 2
    invoke-static {}, Lcn/mucang/android/jky/camera/UsbCameraManager;->access$getListeners$p()Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object p1

    iget-object v0, p0, Lcn/mucang/android/jky/camera/UsbCameraManager$onPreviewFrame$1$1;->$intent:Lcn/mucang/android/jky/camera/CameraIntent;

    invoke-virtual {p1, v0}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/List;

    if-nez p1, :cond_0

    goto :goto_1

    :cond_0
    iget-object v0, p0, Lcn/mucang/android/jky/camera/UsbCameraManager$onPreviewFrame$1$1;->$data:[B

    .line 3
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcn/mucang/android/jky/camera/UsbCameraManager$UsbCameraListener;

    .line 4
    invoke-interface {v1, v0}, Lcn/mucang/android/jky/camera/UsbCameraManager$UsbCameraListener;->onPreviewFrame([B)V

    goto :goto_0

    .line 5
    :cond_1
    :goto_1
    sget-object p1, Lkotlin/v;->a:Lkotlin/v;

    return-object p1

    :cond_2
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
