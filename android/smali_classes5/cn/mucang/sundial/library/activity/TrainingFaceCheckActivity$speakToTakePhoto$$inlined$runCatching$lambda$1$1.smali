.class final Lcn/mucang/sundial/library/activity/TrainingFaceCheckActivity$speakToTakePhoto$$inlined$runCatching$lambda$1$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/mucang/sundial/library/activity/TrainingFaceCheckActivity$speakToTakePhoto$$inlined$runCatching$lambda$1;->run()V
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
        "cn/mucang/sundial/library/activity/TrainingFaceCheckActivity$speakToTakePhoto$1$1$1",
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
.field final synthetic this$0:Lcn/mucang/sundial/library/activity/TrainingFaceCheckActivity$speakToTakePhoto$$inlined$runCatching$lambda$1;


# direct methods
.method constructor <init>(Lcn/mucang/sundial/library/activity/TrainingFaceCheckActivity$speakToTakePhoto$$inlined$runCatching$lambda$1;)V
    .locals 0

    iput-object p1, p0, Lcn/mucang/sundial/library/activity/TrainingFaceCheckActivity$speakToTakePhoto$$inlined$runCatching$lambda$1$1;->this$0:Lcn/mucang/sundial/library/activity/TrainingFaceCheckActivity$speakToTakePhoto$$inlined$runCatching$lambda$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    const-string v0, "\u68c0\u6d4b\u5931\u8d25\u4f11\u77201\u79d2\u62cd\u7167"

    .line 1
    invoke-static {v0}, Lcn/mucang/sundial/android/log/SundialLog;->normal(Ljava/lang/Object;)V

    .line 2
    iget-object v0, p0, Lcn/mucang/sundial/library/activity/TrainingFaceCheckActivity$speakToTakePhoto$$inlined$runCatching$lambda$1$1;->this$0:Lcn/mucang/sundial/library/activity/TrainingFaceCheckActivity$speakToTakePhoto$$inlined$runCatching$lambda$1;

    iget-object v0, v0, Lcn/mucang/sundial/library/activity/TrainingFaceCheckActivity$speakToTakePhoto$$inlined$runCatching$lambda$1;->this$0:Lcn/mucang/sundial/library/activity/TrainingFaceCheckActivity;

    invoke-static {v0}, Lcn/mucang/sundial/library/activity/TrainingFaceCheckActivity;->access$getCameraUtil$p(Lcn/mucang/sundial/library/activity/TrainingFaceCheckActivity;)Lcn/mucang/sundial/library/device/BaseCamera;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcn/mucang/sundial/library/device/TtCamera;->takePhoto()V

    :cond_0
    return-void
.end method
