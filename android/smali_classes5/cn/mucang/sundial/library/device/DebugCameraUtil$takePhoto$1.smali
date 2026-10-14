.class final Lcn/mucang/sundial/library/device/DebugCameraUtil$takePhoto$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/mucang/sundial/library/device/DebugCameraUtil;->takePhoto()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000\u0008\n\u0002\u0018\u0002\n\u0002\u0008\u0003\u0010\u0003\u001a\u00020\u0000H\n\u00a2\u0006\u0004\u0008\u0001\u0010\u0002"
    }
    d2 = {
        "Lkotlin/v;",
        "run",
        "()V",
        "<anonymous>"
    }
    k = 0x3
    mv = {
        0x1,
        0x1,
        0xf
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcn/mucang/sundial/library/device/DebugCameraUtil;


# direct methods
.method constructor <init>(Lcn/mucang/sundial/library/device/DebugCameraUtil;)V
    .locals 0

    iput-object p1, p0, Lcn/mucang/sundial/library/device/DebugCameraUtil$takePhoto$1;->this$0:Lcn/mucang/sundial/library/device/DebugCameraUtil;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    const/4 v0, 0x0

    .line 1
    :try_start_0
    new-instance v1, Ljava/io/File;

    new-instance v2, Ljava/io/File;

    invoke-static {}, Lcn/mucang/android/core/config/MucangConfig;->getContext()Landroid/app/Application;

    move-result-object v3

    invoke-static {v3}, Lcn/mucang/sundial/android/tcp/utils/PictureUtil;->getPicDir(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    const-string v3, "testFaceUrl"

    invoke-direct {v1, v2, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 2
    iget-object v2, p0, Lcn/mucang/sundial/library/device/DebugCameraUtil$takePhoto$1;->this$0:Lcn/mucang/sundial/library/device/DebugCameraUtil;

    invoke-virtual {v2}, Lcn/mucang/sundial/library/device/DebugCameraUtil;->getTestFaceUrl()Ljava/lang/String;

    move-result-object v2

    .line 3
    invoke-interface {v2}, Ljava/lang/CharSequence;->length()I

    move-result v3

    if-nez v3, :cond_0

    const/4 v3, 0x1

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    :goto_0
    if-eqz v3, :cond_1

    const-string v2, "https://sundial.image.mucang.cn/mc-sundial/2020/12/21/16/5f5c0f43edc34fd9a808fee888c205c4.jpg"
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 4
    :cond_1
    :try_start_1
    sget-object v3, Lkotlin/Result;->Companion:Lkotlin/Result$a;

    .line 5
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 6
    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    .line 7
    :cond_2
    invoke-static {v2, v1, v0}, Lcn/mucang/android/core/utils/j;->g(Ljava/lang/String;Ljava/io/File;Ljava/lang/String;)V

    .line 8
    sget-object v2, Lkotlin/v;->a:Lkotlin/v;

    .line 9
    invoke-static {v2}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception v2

    :try_start_2
    sget-object v3, Lkotlin/Result;->Companion:Lkotlin/Result$a;

    invoke-static {v2}, Lkotlin/k;->a(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object v2

    invoke-static {v2}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    .line 10
    :goto_1
    iget-object v2, p0, Lcn/mucang/sundial/library/device/DebugCameraUtil$takePhoto$1;->this$0:Lcn/mucang/sundial/library/device/DebugCameraUtil;

    invoke-static {v2}, Lcn/mucang/sundial/library/device/DebugCameraUtil;->access$getCameraResult$p(Lcn/mucang/sundial/library/device/DebugCameraUtil;)Lcn/mucang/sundial/library/device/CameraResult;

    move-result-object v2

    if-eqz v2, :cond_3

    invoke-interface {v2, v1}, Lcn/mucang/sundial/library/device/CameraResult;->takePhotoFinish(Ljava/io/File;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_2

    :catch_0
    move-exception v1

    const-string v2, "Camera"

    const-string v3, "Take picture failed"

    .line 11
    invoke-static {v2, v3, v1}, Lcn/mucang/android/core/utils/t;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 12
    iget-object v1, p0, Lcn/mucang/sundial/library/device/DebugCameraUtil$takePhoto$1;->this$0:Lcn/mucang/sundial/library/device/DebugCameraUtil;

    invoke-static {v1}, Lcn/mucang/sundial/library/device/DebugCameraUtil;->access$getCameraResult$p(Lcn/mucang/sundial/library/device/DebugCameraUtil;)Lcn/mucang/sundial/library/device/CameraResult;

    move-result-object v1

    if-eqz v1, :cond_3

    invoke-interface {v1, v0}, Lcn/mucang/sundial/library/device/CameraResult;->takePhotoFinish(Ljava/io/File;)V

    :cond_3
    :goto_2
    return-void
.end method
