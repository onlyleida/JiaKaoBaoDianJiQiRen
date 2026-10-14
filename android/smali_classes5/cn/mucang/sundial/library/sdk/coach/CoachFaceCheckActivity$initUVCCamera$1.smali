.class public final Lcn/mucang/sundial/library/sdk/coach/CoachFaceCheckActivity$initUVCCamera$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcn/mucang/sundial/library/device/CameraResult;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/mucang/sundial/library/sdk/coach/CoachFaceCheckActivity;->initUVCCamera()V
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
        "cn/mucang/sundial/library/sdk/coach/CoachFaceCheckActivity$initUVCCamera$1",
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
.field final synthetic this$0:Lcn/mucang/sundial/library/sdk/coach/CoachFaceCheckActivity;


# direct methods
.method constructor <init>(Lcn/mucang/sundial/library/sdk/coach/CoachFaceCheckActivity;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcn/mucang/sundial/library/sdk/coach/CoachFaceCheckActivity$initUVCCamera$1;->this$0:Lcn/mucang/sundial/library/sdk/coach/CoachFaceCheckActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public cameraRemoved()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcn/mucang/sundial/library/sdk/coach/CoachFaceCheckActivity$initUVCCamera$1;->this$0:Lcn/mucang/sundial/library/sdk/coach/CoachFaceCheckActivity;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcn/mucang/sundial/library/sdk/coach/CoachFaceCheckActivity;->access$setHasPermission$p(Lcn/mucang/sundial/library/sdk/coach/CoachFaceCheckActivity;Z)V

    const-string v0, "\u6444\u50cf\u5934\u5df2\u79fb\u9664"

    .line 2
    invoke-static {v0}, Lcn/mucang/sundial/android/log/SundialLog;->normal(Ljava/lang/Object;)V

    .line 3
    iget-object v0, p0, Lcn/mucang/sundial/library/sdk/coach/CoachFaceCheckActivity$initUVCCamera$1;->this$0:Lcn/mucang/sundial/library/sdk/coach/CoachFaceCheckActivity;

    invoke-static {v0}, Lcn/mucang/sundial/library/sdk/coach/CoachFaceCheckActivity;->access$cancelCountDown(Lcn/mucang/sundial/library/sdk/coach/CoachFaceCheckActivity;)V

    .line 4
    iget-object v0, p0, Lcn/mucang/sundial/library/sdk/coach/CoachFaceCheckActivity$initUVCCamera$1;->this$0:Lcn/mucang/sundial/library/sdk/coach/CoachFaceCheckActivity;

    invoke-static {v0}, Lcn/mucang/sundial/library/sdk/coach/CoachFaceCheckActivity;->access$checkCamera(Lcn/mucang/sundial/library/sdk/coach/CoachFaceCheckActivity;)Z

    return-void
.end method

.method public connectSuccess()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcn/mucang/sundial/library/sdk/coach/CoachFaceCheckActivity$initUVCCamera$1;->this$0:Lcn/mucang/sundial/library/sdk/coach/CoachFaceCheckActivity;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcn/mucang/sundial/library/sdk/coach/CoachFaceCheckActivity;->access$setHasPermission$p(Lcn/mucang/sundial/library/sdk/coach/CoachFaceCheckActivity;Z)V

    const-string v0, "\u6444\u50cf\u5934\u8fde\u63a5\u6210\u529f"

    .line 2
    invoke-static {v0}, Lcn/mucang/sundial/android/log/SundialLog;->normal(Ljava/lang/Object;)V

    .line 3
    iget-object v2, p0, Lcn/mucang/sundial/library/sdk/coach/CoachFaceCheckActivity$initUVCCamera$1;->this$0:Lcn/mucang/sundial/library/sdk/coach/CoachFaceCheckActivity;

    invoke-virtual {v2}, Landroid/app/Activity;->isFinishing()Z

    move-result v2

    if-eqz v2, :cond_0

    return-void

    .line 4
    :cond_0
    iget-object v2, p0, Lcn/mucang/sundial/library/sdk/coach/CoachFaceCheckActivity$initUVCCamera$1;->this$0:Lcn/mucang/sundial/library/sdk/coach/CoachFaceCheckActivity;

    invoke-static {v2}, Lcn/mucang/sundial/library/sdk/coach/CoachFaceCheckActivity;->access$getCheckCameraTask$p(Lcn/mucang/sundial/library/sdk/coach/CoachFaceCheckActivity;)Ljava/lang/Runnable;

    move-result-object v2

    invoke-static {v2}, Lcn/mucang/android/core/utils/u;->e(Ljava/lang/Runnable;)V

    .line 5
    invoke-static {v0}, Lcn/mucang/android/core/utils/u;->h(Ljava/lang/String;)V

    .line 6
    iget-object v0, p0, Lcn/mucang/sundial/library/sdk/coach/CoachFaceCheckActivity$initUVCCamera$1;->this$0:Lcn/mucang/sundial/library/sdk/coach/CoachFaceCheckActivity;

    invoke-static {v0}, Lcn/mucang/sundial/library/sdk/coach/CoachFaceCheckActivity;->access$getViewModel$p(Lcn/mucang/sundial/library/sdk/coach/CoachFaceCheckActivity;)Lcn/mucang/sundial/library/viewmodel/FaceCheckActivityViewModel;

    move-result-object v0

    invoke-virtual {v0}, Lcn/mucang/sundial/library/viewmodel/FaceCheckActivityViewModel;->getInfoReady()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcn/mucang/sundial/library/sdk/coach/CoachFaceCheckActivity$initUVCCamera$1;->this$0:Lcn/mucang/sundial/library/sdk/coach/CoachFaceCheckActivity;

    invoke-static {v0}, Lcn/mucang/sundial/library/sdk/coach/CoachFaceCheckActivity;->access$getBlankDialog$p(Lcn/mucang/sundial/library/sdk/coach/CoachFaceCheckActivity;)Lcn/mucang/sundial/library/widget/BlankDialog;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcn/mucang/sundial/library/sdk/coach/CoachFaceCheckActivity$initUVCCamera$1;->this$0:Lcn/mucang/sundial/library/sdk/coach/CoachFaceCheckActivity;

    invoke-static {v0}, Lcn/mucang/sundial/library/sdk/coach/CoachFaceCheckActivity;->access$getBlankDialog$p(Lcn/mucang/sundial/library/sdk/coach/CoachFaceCheckActivity;)Lcn/mucang/sundial/library/widget/BlankDialog;

    move-result-object v0

    invoke-static {v0}, Lkotlin/jvm/internal/r;->c(Ljava/lang/Object;)V

    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    move-result v0

    if-nez v0, :cond_2

    .line 7
    :cond_1
    iget-object v0, p0, Lcn/mucang/sundial/library/sdk/coach/CoachFaceCheckActivity$initUVCCamera$1;->this$0:Lcn/mucang/sundial/library/sdk/coach/CoachFaceCheckActivity;

    invoke-static {v0}, Lcn/mucang/sundial/library/sdk/coach/CoachFaceCheckActivity;->access$speakToTakePhoto(Lcn/mucang/sundial/library/sdk/coach/CoachFaceCheckActivity;)V

    goto :goto_0

    .line 8
    :cond_2
    iget-object v0, p0, Lcn/mucang/sundial/library/sdk/coach/CoachFaceCheckActivity$initUVCCamera$1;->this$0:Lcn/mucang/sundial/library/sdk/coach/CoachFaceCheckActivity;

    invoke-static {v0, v1}, Lcn/mucang/sundial/library/sdk/coach/CoachFaceCheckActivity;->access$setTakePictureWhenGetInfo$p(Lcn/mucang/sundial/library/sdk/coach/CoachFaceCheckActivity;Z)V

    .line 9
    iget-object v0, p0, Lcn/mucang/sundial/library/sdk/coach/CoachFaceCheckActivity$initUVCCamera$1;->this$0:Lcn/mucang/sundial/library/sdk/coach/CoachFaceCheckActivity;

    invoke-static {v0}, Lcn/mucang/sundial/library/sdk/coach/CoachFaceCheckActivity;->access$getBinding$p(Lcn/mucang/sundial/library/sdk/coach/CoachFaceCheckActivity;)Lcn/mucang/sundial/library/databinding/TtActivityCoachFaceCheckBinding;

    move-result-object v0

    iget-object v0, v0, Lcn/mucang/sundial/library/databinding/TtActivityCoachFaceCheckBinding;->previewImg:Landroid/widget/ImageView;

    const-string v1, "binding.previewImg"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/r;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const/16 v1, 0x8

    .line 10
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    :goto_0
    return-void
.end method

.method public takePhotoFinish(Ljava/io/File;)V
    .locals 1

    const-string v0, "\u62cd\u7167\u5b8c\u6210"

    .line 1
    invoke-static {v0}, Lcn/mucang/sundial/android/log/SundialLog;->normal(Ljava/lang/Object;)V

    .line 2
    new-instance v0, Lcn/mucang/sundial/library/sdk/coach/CoachFaceCheckActivity$initUVCCamera$1$takePhotoFinish$1;

    invoke-direct {v0, p0, p1}, Lcn/mucang/sundial/library/sdk/coach/CoachFaceCheckActivity$initUVCCamera$1$takePhotoFinish$1;-><init>(Lcn/mucang/sundial/library/sdk/coach/CoachFaceCheckActivity$initUVCCamera$1;Ljava/io/File;)V

    invoke-static {v0}, Lcn/mucang/android/core/utils/u;->f(Ljava/lang/Runnable;)V

    return-void
.end method
