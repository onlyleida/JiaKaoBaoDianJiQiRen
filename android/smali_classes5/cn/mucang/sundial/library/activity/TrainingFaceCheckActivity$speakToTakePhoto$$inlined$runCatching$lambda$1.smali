.class final Lcn/mucang/sundial/library/activity/TrainingFaceCheckActivity$speakToTakePhoto$$inlined$runCatching$lambda$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/mucang/sundial/library/activity/TrainingFaceCheckActivity;->speakToTakePhoto(Z)V
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
        "\u0000\u0008\n\u0002\u0018\u0002\n\u0002\u0008\u0004\u0010\u0004\u001a\u00020\u0000H\n\u00a2\u0006\u0004\u0008\u0001\u0010\u0002\u00a8\u0006\u0003"
    }
    d2 = {
        "Lkotlin/v;",
        "run",
        "()V",
        "cn/mucang/sundial/library/activity/TrainingFaceCheckActivity$speakToTakePhoto$1$1",
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
.field final synthetic $isAgain$inlined:Z

.field final synthetic this$0:Lcn/mucang/sundial/library/activity/TrainingFaceCheckActivity;


# direct methods
.method constructor <init>(Lcn/mucang/sundial/library/activity/TrainingFaceCheckActivity;Z)V
    .locals 0

    iput-object p1, p0, Lcn/mucang/sundial/library/activity/TrainingFaceCheckActivity$speakToTakePhoto$$inlined$runCatching$lambda$1;->this$0:Lcn/mucang/sundial/library/activity/TrainingFaceCheckActivity;

    iput-boolean p2, p0, Lcn/mucang/sundial/library/activity/TrainingFaceCheckActivity$speakToTakePhoto$$inlined$runCatching$lambda$1;->$isAgain$inlined:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcn/mucang/sundial/library/activity/TrainingFaceCheckActivity$speakToTakePhoto$$inlined$runCatching$lambda$1;->this$0:Lcn/mucang/sundial/library/activity/TrainingFaceCheckActivity;

    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_1

    .line 2
    iget-object v0, p0, Lcn/mucang/sundial/library/activity/TrainingFaceCheckActivity$speakToTakePhoto$$inlined$runCatching$lambda$1;->this$0:Lcn/mucang/sundial/library/activity/TrainingFaceCheckActivity;

    invoke-static {v0}, Lcn/mucang/sundial/library/activity/TrainingFaceCheckActivity;->access$checkCameraDoNothing(Lcn/mucang/sundial/library/activity/TrainingFaceCheckActivity;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "\u62cd\u7167"

    .line 3
    invoke-static {v0}, Lcn/mucang/sundial/android/log/SundialLog;->normal(Ljava/lang/Object;)V

    .line 4
    iget-object v0, p0, Lcn/mucang/sundial/library/activity/TrainingFaceCheckActivity$speakToTakePhoto$$inlined$runCatching$lambda$1;->this$0:Lcn/mucang/sundial/library/activity/TrainingFaceCheckActivity;

    invoke-static {v0}, Lcn/mucang/sundial/library/activity/TrainingFaceCheckActivity;->access$getCameraUtil$p(Lcn/mucang/sundial/library/activity/TrainingFaceCheckActivity;)Lcn/mucang/sundial/library/device/BaseCamera;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-interface {v0}, Lcn/mucang/sundial/library/device/TtCamera;->takePhoto()V

    goto :goto_0

    .line 5
    :cond_0
    new-instance v0, Lcn/mucang/sundial/library/activity/TrainingFaceCheckActivity$speakToTakePhoto$$inlined$runCatching$lambda$1$1;

    invoke-direct {v0, p0}, Lcn/mucang/sundial/library/activity/TrainingFaceCheckActivity$speakToTakePhoto$$inlined$runCatching$lambda$1$1;-><init>(Lcn/mucang/sundial/library/activity/TrainingFaceCheckActivity$speakToTakePhoto$$inlined$runCatching$lambda$1;)V

    const-wide/16 v1, 0x3e8

    invoke-static {v0, v1, v2}, Lcn/mucang/android/core/utils/u;->d(Ljava/lang/Runnable;J)V

    :cond_1
    :goto_0
    return-void
.end method
