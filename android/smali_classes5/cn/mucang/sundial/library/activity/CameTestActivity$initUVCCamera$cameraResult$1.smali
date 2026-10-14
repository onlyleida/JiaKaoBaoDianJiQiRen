.class public final Lcn/mucang/sundial/library/activity/CameTestActivity$initUVCCamera$cameraResult$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcn/mucang/sundial/library/device/CameraResult;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/mucang/sundial/library/activity/CameTestActivity;->initUVCCamera()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000\u0019\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0004*\u0001\u0000\u0008\n\u0018\u00002\u00020\u0001J\u000f\u0010\u0003\u001a\u00020\u0002H\u0016\u00a2\u0006\u0004\u0008\u0003\u0010\u0004J\u000f\u0010\u0005\u001a\u00020\u0002H\u0016\u00a2\u0006\u0004\u0008\u0005\u0010\u0004J\u0019\u0010\u0008\u001a\u00020\u00022\u0008\u0010\u0007\u001a\u0004\u0018\u00010\u0006H\u0016\u00a2\u0006\u0004\u0008\u0008\u0010\t\u00a8\u0006\n"
    }
    d2 = {
        "cn/mucang/sundial/library/activity/CameTestActivity$initUVCCamera$cameraResult$1",
        "Lcn/mucang/sundial/library/device/CameraResult;",
        "Lkotlin/v;",
        "connectSuccess",
        "()V",
        "cameraRemoved",
        "Ljava/io/File;",
        "file",
        "takePhotoFinish",
        "(Ljava/io/File;)V",
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
.field final synthetic this$0:Lcn/mucang/sundial/library/activity/CameTestActivity;


# direct methods
.method constructor <init>(Lcn/mucang/sundial/library/activity/CameTestActivity;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcn/mucang/sundial/library/activity/CameTestActivity$initUVCCamera$cameraResult$1;->this$0:Lcn/mucang/sundial/library/activity/CameTestActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public cameraRemoved()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcn/mucang/sundial/library/activity/CameTestActivity$initUVCCamera$cameraResult$1;->this$0:Lcn/mucang/sundial/library/activity/CameTestActivity;

    invoke-static {v0}, Lcn/mucang/sundial/library/activity/CameTestActivity;->access$checkCamera(Lcn/mucang/sundial/library/activity/CameTestActivity;)Z

    return-void
.end method

.method public connectSuccess()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcn/mucang/sundial/library/activity/CameTestActivity$initUVCCamera$cameraResult$1;->this$0:Lcn/mucang/sundial/library/activity/CameTestActivity;

    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 2
    :cond_0
    iget-object v0, p0, Lcn/mucang/sundial/library/activity/CameTestActivity$initUVCCamera$cameraResult$1;->this$0:Lcn/mucang/sundial/library/activity/CameTestActivity;

    invoke-static {v0}, Lcn/mucang/sundial/library/activity/CameTestActivity;->access$getCheckCameraTask$p(Lcn/mucang/sundial/library/activity/CameTestActivity;)Ljava/lang/Runnable;

    move-result-object v0

    invoke-static {v0}, Lcn/mucang/android/core/utils/u;->e(Ljava/lang/Runnable;)V

    return-void
.end method

.method public takePhotoFinish(Ljava/io/File;)V
    .locals 0

    return-void
.end method
