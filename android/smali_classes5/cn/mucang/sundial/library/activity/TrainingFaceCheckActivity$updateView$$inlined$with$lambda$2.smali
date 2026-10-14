.class final Lcn/mucang/sundial/library/activity/TrainingFaceCheckActivity$updateView$$inlined$with$lambda$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/mucang/sundial/library/activity/TrainingFaceCheckActivity;->updateView(Ljava/lang/String;)V
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
        "\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0004\u0010\u0007\u001a\u00020\u00032\u000e\u0010\u0002\u001a\n \u0001*\u0004\u0018\u00010\u00000\u0000H\n\u00a2\u0006\u0004\u0008\u0004\u0010\u0005\u00a8\u0006\u0006"
    }
    d2 = {
        "Landroid/view/View;",
        "kotlin.jvm.PlatformType",
        "it",
        "Lkotlin/v;",
        "onClick",
        "(Landroid/view/View;)V",
        "cn/mucang/sundial/library/activity/TrainingFaceCheckActivity$updateView$1$2",
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
.field final synthetic $avatarStr$inlined:Ljava/lang/String;

.field final synthetic $this_with:Lcn/mucang/sundial/library/databinding/TtActivityTrainingFaceCheckBinding;

.field final synthetic this$0:Lcn/mucang/sundial/library/activity/TrainingFaceCheckActivity;


# direct methods
.method constructor <init>(Lcn/mucang/sundial/library/databinding/TtActivityTrainingFaceCheckBinding;Lcn/mucang/sundial/library/activity/TrainingFaceCheckActivity;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcn/mucang/sundial/library/activity/TrainingFaceCheckActivity$updateView$$inlined$with$lambda$2;->$this_with:Lcn/mucang/sundial/library/databinding/TtActivityTrainingFaceCheckBinding;

    iput-object p2, p0, Lcn/mucang/sundial/library/activity/TrainingFaceCheckActivity$updateView$$inlined$with$lambda$2;->this$0:Lcn/mucang/sundial/library/activity/TrainingFaceCheckActivity;

    iput-object p3, p0, Lcn/mucang/sundial/library/activity/TrainingFaceCheckActivity$updateView$$inlined$with$lambda$2;->$avatarStr$inlined:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 1

    const-string p1, "\u70b9\u51fb\u786e\u5b9a\u4e0a\u4f20\u6309\u94ae"

    .line 1
    invoke-static {p1}, Lcn/mucang/sundial/android/log/SundialLog;->normal(Ljava/lang/Object;)V

    .line 2
    iget-object p1, p0, Lcn/mucang/sundial/library/activity/TrainingFaceCheckActivity$updateView$$inlined$with$lambda$2;->$this_with:Lcn/mucang/sundial/library/databinding/TtActivityTrainingFaceCheckBinding;

    iget-object p1, p1, Lcn/mucang/sundial/library/databinding/TtActivityTrainingFaceCheckBinding;->imageCompleteLayout:Landroid/widget/LinearLayout;

    const-string v0, "imageCompleteLayout"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 3
    iget-object p1, p0, Lcn/mucang/sundial/library/activity/TrainingFaceCheckActivity$updateView$$inlined$with$lambda$2;->this$0:Lcn/mucang/sundial/library/activity/TrainingFaceCheckActivity;

    invoke-static {p1}, Lcn/mucang/sundial/library/activity/TrainingFaceCheckActivity;->access$getUploadCountDownTimer$p(Lcn/mucang/sundial/library/activity/TrainingFaceCheckActivity;)Landroid/os/CountDownTimer;

    move-result-object p1

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/os/CountDownTimer;->cancel()V

    .line 4
    :cond_0
    iget-object p1, p0, Lcn/mucang/sundial/library/activity/TrainingFaceCheckActivity$updateView$$inlined$with$lambda$2;->this$0:Lcn/mucang/sundial/library/activity/TrainingFaceCheckActivity;

    invoke-static {p1}, Lcn/mucang/sundial/library/activity/TrainingFaceCheckActivity;->access$getImageFile$p(Lcn/mucang/sundial/library/activity/TrainingFaceCheckActivity;)Ljava/io/File;

    move-result-object p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcn/mucang/sundial/library/activity/TrainingFaceCheckActivity$updateView$$inlined$with$lambda$2;->this$0:Lcn/mucang/sundial/library/activity/TrainingFaceCheckActivity;

    invoke-static {p1}, Lcn/mucang/sundial/library/activity/TrainingFaceCheckActivity;->access$getImageFile$p(Lcn/mucang/sundial/library/activity/TrainingFaceCheckActivity;)Ljava/io/File;

    move-result-object p1

    invoke-static {p1}, Lkotlin/jvm/internal/r;->c(Ljava/lang/Object;)V

    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 5
    iget-object p1, p0, Lcn/mucang/sundial/library/activity/TrainingFaceCheckActivity$updateView$$inlined$with$lambda$2;->this$0:Lcn/mucang/sundial/library/activity/TrainingFaceCheckActivity;

    invoke-static {p1}, Lcn/mucang/sundial/library/activity/TrainingFaceCheckActivity;->access$getImageFile$p(Lcn/mucang/sundial/library/activity/TrainingFaceCheckActivity;)Ljava/io/File;

    move-result-object v0

    invoke-static {v0}, Lkotlin/jvm/internal/r;->c(Ljava/lang/Object;)V

    invoke-static {p1, v0}, Lcn/mucang/sundial/library/activity/TrainingFaceCheckActivity;->access$uploadImage(Lcn/mucang/sundial/library/activity/TrainingFaceCheckActivity;Ljava/io/File;)V

    :cond_1
    return-void
.end method
