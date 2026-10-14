.class final Lcn/mucang/sundial/library/activity/StudentInfoActivity$goToTrainingFaceCheckActivity$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/lifecycle/a0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/mucang/sundial/library/activity/StudentInfoActivity;->goToTrainingFaceCheckActivity()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Landroidx/lifecycle/a0<",
        "Lcn/mucang/sundial/android/eventbus/event/AutoTakePhotoWithActivityEvent;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\u0010\u0006\u001a\u00020\u00032\u000e\u0010\u0002\u001a\n \u0001*\u0004\u0018\u00010\u00000\u0000H\n\u00a2\u0006\u0004\u0008\u0004\u0010\u0005"
    }
    d2 = {
        "Lcn/mucang/sundial/android/eventbus/event/AutoTakePhotoWithActivityEvent;",
        "kotlin.jvm.PlatformType",
        "it",
        "Lkotlin/v;",
        "onChanged",
        "(Lcn/mucang/sundial/android/eventbus/event/AutoTakePhotoWithActivityEvent;)V",
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
.field final synthetic this$0:Lcn/mucang/sundial/library/activity/StudentInfoActivity;


# direct methods
.method constructor <init>(Lcn/mucang/sundial/library/activity/StudentInfoActivity;)V
    .locals 0

    iput-object p1, p0, Lcn/mucang/sundial/library/activity/StudentInfoActivity$goToTrainingFaceCheckActivity$1;->this$0:Lcn/mucang/sundial/library/activity/StudentInfoActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onChanged(Lcn/mucang/sundial/android/eventbus/event/AutoTakePhotoWithActivityEvent;)V
    .locals 2

    .line 2
    iget-object p1, p0, Lcn/mucang/sundial/library/activity/StudentInfoActivity$goToTrainingFaceCheckActivity$1;->this$0:Lcn/mucang/sundial/library/activity/StudentInfoActivity;

    invoke-virtual {p1}, Landroidx/activity/ComponentActivity;->getLifecycle()Landroidx/lifecycle/Lifecycle;

    move-result-object p1

    const-string v0, "lifecycle"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Landroidx/lifecycle/Lifecycle;->b()Landroidx/lifecycle/Lifecycle$State;

    move-result-object p1

    sget-object v0, Landroidx/lifecycle/Lifecycle$State;->RESUMED:Landroidx/lifecycle/Lifecycle$State;

    invoke-virtual {p1, v0}, Landroidx/lifecycle/Lifecycle$State;->isAtLeast(Landroidx/lifecycle/Lifecycle$State;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 3
    invoke-static {}, Lcn/mucang/sundial/android/tcp/upload/TakePhotoManager;->isTakingPhoto()Z

    move-result p1

    if-nez p1, :cond_1

    .line 4
    iget-object p1, p0, Lcn/mucang/sundial/library/activity/StudentInfoActivity$goToTrainingFaceCheckActivity$1;->this$0:Lcn/mucang/sundial/library/activity/StudentInfoActivity;

    invoke-static {p1}, Lcn/mucang/sundial/library/activity/StudentInfoActivity;->access$closeDialog(Lcn/mucang/sundial/library/activity/StudentInfoActivity;)V

    .line 5
    iget-object p1, p0, Lcn/mucang/sundial/library/activity/StudentInfoActivity$goToTrainingFaceCheckActivity$1;->this$0:Lcn/mucang/sundial/library/activity/StudentInfoActivity;

    invoke-static {p1}, Lcn/mucang/sundial/library/activity/StudentInfoActivity;->access$getBinding$p(Lcn/mucang/sundial/library/activity/StudentInfoActivity;)Lcn/mucang/sundial/library/databinding/TtActivityStudentInfoBinding;

    move-result-object p1

    iget-object p1, p1, Lcn/mucang/sundial/library/databinding/TtActivityStudentInfoBinding;->takePhoto:Landroid/widget/LinearLayout;

    const-string v0, "binding.takePhoto"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const/16 v0, 0x8

    .line 6
    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 7
    iget-object p1, p0, Lcn/mucang/sundial/library/activity/StudentInfoActivity$goToTrainingFaceCheckActivity$1;->this$0:Lcn/mucang/sundial/library/activity/StudentInfoActivity;

    invoke-static {p1}, Lcn/mucang/sundial/library/activity/StudentInfoActivity;->access$getBinding$p(Lcn/mucang/sundial/library/activity/StudentInfoActivity;)Lcn/mucang/sundial/library/databinding/TtActivityStudentInfoBinding;

    move-result-object p1

    iget-object p1, p1, Lcn/mucang/sundial/library/databinding/TtActivityStudentInfoBinding;->takeCoachPhoto:Landroid/widget/LinearLayout;

    const-string v1, "binding.takeCoachPhoto"

    invoke-static {p1, v1}, Lkotlin/jvm/internal/r;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 8
    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 9
    invoke-static {}, Lcn/mucang/sundial/android/SundialManager;->getInstance()Lcn/mucang/sundial/android/SundialManager;

    move-result-object p1

    const-string v0, "SundialManager.getInstance()"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Lcn/mucang/sundial/android/SundialManager;->getTakePhotoDelay()I

    move-result p1

    .line 10
    iget-object v0, p0, Lcn/mucang/sundial/library/activity/StudentInfoActivity$goToTrainingFaceCheckActivity$1;->this$0:Lcn/mucang/sundial/library/activity/StudentInfoActivity;

    invoke-static {v0}, Lcn/mucang/sundial/library/activity/StudentInfoActivity;->access$getDiffDelay$p(Lcn/mucang/sundial/library/activity/StudentInfoActivity;)I

    move-result v0

    if-le p1, v0, :cond_0

    .line 11
    iget-object v0, p0, Lcn/mucang/sundial/library/activity/StudentInfoActivity$goToTrainingFaceCheckActivity$1;->this$0:Lcn/mucang/sundial/library/activity/StudentInfoActivity;

    invoke-static {v0, p1}, Lcn/mucang/sundial/library/activity/StudentInfoActivity;->access$playSound(Lcn/mucang/sundial/library/activity/StudentInfoActivity;I)V

    goto :goto_0

    .line 12
    :cond_0
    iget-object p1, p0, Lcn/mucang/sundial/library/activity/StudentInfoActivity$goToTrainingFaceCheckActivity$1;->this$0:Lcn/mucang/sundial/library/activity/StudentInfoActivity;

    invoke-static {p1}, Lcn/mucang/sundial/library/activity/StudentInfoActivity;->access$startTrainingFaceCheck(Lcn/mucang/sundial/library/activity/StudentInfoActivity;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public bridge synthetic onChanged(Ljava/lang/Object;)V
    .locals 0

    .line 1
    check-cast p1, Lcn/mucang/sundial/android/eventbus/event/AutoTakePhotoWithActivityEvent;

    invoke-virtual {p0, p1}, Lcn/mucang/sundial/library/activity/StudentInfoActivity$goToTrainingFaceCheckActivity$1;->onChanged(Lcn/mucang/sundial/android/eventbus/event/AutoTakePhotoWithActivityEvent;)V

    return-void
.end method
