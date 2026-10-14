.class final Lcn/mucang/sundial/library/activity/FaceCheckActivity$initViewModel$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/lifecycle/a0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/mucang/sundial/library/activity/FaceCheckActivity;->initViewModel()V
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
        "Lcn/mucang/sundial/library/viewmodel/FaceCheckActivityViewModel$UserData;",
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
        "Lcn/mucang/sundial/library/viewmodel/FaceCheckActivityViewModel$UserData;",
        "kotlin.jvm.PlatformType",
        "it",
        "Lkotlin/v;",
        "onChanged",
        "(Lcn/mucang/sundial/library/viewmodel/FaceCheckActivityViewModel$UserData;)V",
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
.field final synthetic this$0:Lcn/mucang/sundial/library/activity/FaceCheckActivity;


# direct methods
.method constructor <init>(Lcn/mucang/sundial/library/activity/FaceCheckActivity;)V
    .locals 0

    iput-object p1, p0, Lcn/mucang/sundial/library/activity/FaceCheckActivity$initViewModel$1;->this$0:Lcn/mucang/sundial/library/activity/FaceCheckActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onChanged(Lcn/mucang/sundial/library/viewmodel/FaceCheckActivityViewModel$UserData;)V
    .locals 6

    .line 2
    iget-object v0, p0, Lcn/mucang/sundial/library/activity/FaceCheckActivity$initViewModel$1;->this$0:Lcn/mucang/sundial/library/activity/FaceCheckActivity;

    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 3
    :cond_0
    invoke-virtual {p1}, Lcn/mucang/sundial/library/viewmodel/FaceCheckActivityViewModel$UserData;->getError()Z

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v0, :cond_5

    .line 4
    invoke-virtual {p1}, Lcn/mucang/sundial/library/viewmodel/FaceCheckActivityViewModel$UserData;->getErrorMessage()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-nez v0, :cond_2

    :cond_1
    const/4 v1, 0x1

    :cond_2
    if-nez v1, :cond_4

    .line 5
    invoke-virtual {p1}, Lcn/mucang/sundial/library/viewmodel/FaceCheckActivityViewModel$UserData;->getErrorMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    const/16 v1, 0xf

    if-le v0, v1, :cond_3

    .line 6
    invoke-virtual {p1}, Lcn/mucang/sundial/library/viewmodel/FaceCheckActivityViewModel$UserData;->getErrorMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcn/mucang/android/core/utils/u;->j(Ljava/lang/String;)V

    goto :goto_0

    .line 7
    :cond_3
    invoke-virtual {p1}, Lcn/mucang/sundial/library/viewmodel/FaceCheckActivityViewModel$UserData;->getErrorMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcn/mucang/android/core/utils/u;->h(Ljava/lang/String;)V

    .line 8
    :goto_0
    invoke-virtual {p1}, Lcn/mucang/sundial/library/viewmodel/FaceCheckActivityViewModel$UserData;->getErrorMessage()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x2

    invoke-static {v0, v3, v1, v3}, Lcn/mucang/sundial/library/tts/Tts;->speak$default(Ljava/lang/String;Lcn/mucang/sundial/library/tts/SpeakListener;ILjava/lang/Object;)V

    .line 9
    invoke-virtual {p1}, Lcn/mucang/sundial/library/viewmodel/FaceCheckActivityViewModel$UserData;->getErrorMessage()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcn/mucang/sundial/android/log/SundialLog;->normal(Ljava/lang/Object;)V

    .line 10
    :cond_4
    iget-object p1, p0, Lcn/mucang/sundial/library/activity/FaceCheckActivity$initViewModel$1;->this$0:Lcn/mucang/sundial/library/activity/FaceCheckActivity;

    invoke-virtual {p1}, Landroid/app/Activity;->finish()V

    return-void

    .line 11
    :cond_5
    iget-object v0, p0, Lcn/mucang/sundial/library/activity/FaceCheckActivity$initViewModel$1;->this$0:Lcn/mucang/sundial/library/activity/FaceCheckActivity;

    invoke-static {v0}, Lcn/mucang/sundial/library/activity/FaceCheckActivity;->access$getCameraUtil$p(Lcn/mucang/sundial/library/activity/FaceCheckActivity;)Lcn/mucang/sundial/library/device/BaseCamera;

    move-result-object v0

    instance-of v4, v0, Lcn/mucang/sundial/library/device/DebugCameraUtil;

    if-nez v4, :cond_6

    goto :goto_1

    :cond_6
    move-object v3, v0

    :goto_1
    check-cast v3, Lcn/mucang/sundial/library/device/DebugCameraUtil;

    const-string v0, ""

    if-eqz v3, :cond_8

    invoke-virtual {p1}, Lcn/mucang/sundial/library/viewmodel/FaceCheckActivityViewModel$UserData;->getAvatar()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_7

    goto :goto_2

    :cond_7
    move-object v4, v0

    :goto_2
    invoke-virtual {v3, v4}, Lcn/mucang/sundial/library/device/DebugCameraUtil;->setTestFaceUrl(Ljava/lang/String;)V

    .line 12
    :cond_8
    iget-object v3, p0, Lcn/mucang/sundial/library/activity/FaceCheckActivity$initViewModel$1;->this$0:Lcn/mucang/sundial/library/activity/FaceCheckActivity;

    invoke-virtual {p1}, Lcn/mucang/sundial/library/viewmodel/FaceCheckActivityViewModel$UserData;->getName()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_9

    goto :goto_3

    :cond_9
    move-object v4, v0

    :goto_3
    invoke-virtual {p1}, Lcn/mucang/sundial/library/viewmodel/FaceCheckActivityViewModel$UserData;->getAvatar()Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_a

    move-object v0, v5

    :cond_a
    invoke-static {v3, v4, v0}, Lcn/mucang/sundial/library/activity/FaceCheckActivity;->access$updateView(Lcn/mucang/sundial/library/activity/FaceCheckActivity;Ljava/lang/String;Ljava/lang/String;)V

    .line 13
    invoke-virtual {p1}, Lcn/mucang/sundial/library/viewmodel/FaceCheckActivityViewModel$UserData;->getConfirmMessage()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_b

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-nez v0, :cond_c

    :cond_b
    const/4 v1, 0x1

    :cond_c
    if-nez v1, :cond_d

    .line 14
    iget-object v0, p0, Lcn/mucang/sundial/library/activity/FaceCheckActivity$initViewModel$1;->this$0:Lcn/mucang/sundial/library/activity/FaceCheckActivity;

    .line 15
    new-instance v1, Lcn/mucang/sundial/library/widget/ReLoginConfirmDialog$Builder;

    invoke-direct {v1, v0, v2}, Lcn/mucang/sundial/library/widget/ReLoginConfirmDialog$Builder;-><init>(Landroid/content/Context;Z)V

    .line 16
    invoke-virtual {p1}, Lcn/mucang/sundial/library/viewmodel/FaceCheckActivityViewModel$UserData;->getConfirmMessage()Ljava/lang/String;

    move-result-object p1

    new-instance v2, Lcn/mucang/sundial/library/activity/FaceCheckActivity$initViewModel$1$1;

    invoke-direct {v2, p0}, Lcn/mucang/sundial/library/activity/FaceCheckActivity$initViewModel$1$1;-><init>(Lcn/mucang/sundial/library/activity/FaceCheckActivity$initViewModel$1;)V

    invoke-virtual {v1, p1, v2}, Lcn/mucang/sundial/library/widget/ReLoginConfirmDialog$Builder;->setContent(Ljava/lang/String;Lcn/mucang/sundial/library/widget/DialogCallBack;)Lcn/mucang/sundial/library/widget/ReLoginConfirmDialog$Builder;

    move-result-object p1

    .line 17
    invoke-virtual {p1}, Lcn/mucang/sundial/library/widget/BlankDialog$Builder;->show()Lcn/mucang/sundial/library/widget/BlankDialog;

    move-result-object p1

    invoke-static {v0, p1}, Lcn/mucang/sundial/library/activity/FaceCheckActivity;->access$setBlankDialog$p(Lcn/mucang/sundial/library/activity/FaceCheckActivity;Lcn/mucang/sundial/library/widget/BlankDialog;)V

    goto :goto_4

    .line 18
    :cond_d
    iget-object p1, p0, Lcn/mucang/sundial/library/activity/FaceCheckActivity$initViewModel$1;->this$0:Lcn/mucang/sundial/library/activity/FaceCheckActivity;

    invoke-static {p1}, Lcn/mucang/sundial/library/activity/FaceCheckActivity;->access$takePhoto(Lcn/mucang/sundial/library/activity/FaceCheckActivity;)V

    :goto_4
    return-void
.end method

.method public bridge synthetic onChanged(Ljava/lang/Object;)V
    .locals 0

    .line 1
    check-cast p1, Lcn/mucang/sundial/library/viewmodel/FaceCheckActivityViewModel$UserData;

    invoke-virtual {p0, p1}, Lcn/mucang/sundial/library/activity/FaceCheckActivity$initViewModel$1;->onChanged(Lcn/mucang/sundial/library/viewmodel/FaceCheckActivityViewModel$UserData;)V

    return-void
.end method
