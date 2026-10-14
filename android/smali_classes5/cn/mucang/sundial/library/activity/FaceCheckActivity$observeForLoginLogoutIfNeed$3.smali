.class final Lcn/mucang/sundial/library/activity/FaceCheckActivity$observeForLoginLogoutIfNeed$3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/lifecycle/a0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/mucang/sundial/library/activity/FaceCheckActivity;->observeForLoginLogoutIfNeed()V
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
        "Lcn/mucang/sundial/android/eventbus/event/CoachLogoutResponseEvent;",
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
        "Lcn/mucang/sundial/android/eventbus/event/CoachLogoutResponseEvent;",
        "kotlin.jvm.PlatformType",
        "it",
        "Lkotlin/v;",
        "onChanged",
        "(Lcn/mucang/sundial/android/eventbus/event/CoachLogoutResponseEvent;)V",
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

    iput-object p1, p0, Lcn/mucang/sundial/library/activity/FaceCheckActivity$observeForLoginLogoutIfNeed$3;->this$0:Lcn/mucang/sundial/library/activity/FaceCheckActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onChanged(Lcn/mucang/sundial/android/eventbus/event/CoachLogoutResponseEvent;)V
    .locals 5

    .line 2
    sget-object p1, Lcn/mucang/sundial/library/util/LoginUtil;->INSTANCE:Lcn/mucang/sundial/library/util/LoginUtil;

    invoke-virtual {p1}, Lcn/mucang/sundial/library/util/LoginUtil;->coachLoginSuccess()Z

    move-result p1

    const-string v0, "\u6559\u7ec3"

    const/4 v1, 0x2

    const/4 v2, 0x0

    if-nez p1, :cond_0

    .line 3
    iget-object p1, p0, Lcn/mucang/sundial/library/activity/FaceCheckActivity$observeForLoginLogoutIfNeed$3;->this$0:Lcn/mucang/sundial/library/activity/FaceCheckActivity;

    sget v3, Lcn/mucang/sundial/library/R$string;->tt_sign_out_success:I

    invoke-virtual {p1, v3}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object p1

    const-string v4, "getString(R.string.tt_sign_out_success)"

    invoke-static {p1, v4}, Lkotlin/jvm/internal/r;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p1, v2, v1, v2}, Lcn/mucang/sundial/library/tts/Tts;->speak$default(Ljava/lang/String;Lcn/mucang/sundial/library/tts/SpeakListener;ILjava/lang/Object;)V

    .line 4
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcn/mucang/sundial/library/activity/FaceCheckActivity$observeForLoginLogoutIfNeed$3;->this$0:Lcn/mucang/sundial/library/activity/FaceCheckActivity;

    invoke-virtual {v0, v3}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcn/mucang/sundial/android/log/SundialLog;->normal(Ljava/lang/Object;)V

    .line 5
    iget-object p1, p0, Lcn/mucang/sundial/library/activity/FaceCheckActivity$observeForLoginLogoutIfNeed$3;->this$0:Lcn/mucang/sundial/library/activity/FaceCheckActivity;

    invoke-static {p1}, Lcn/mucang/sundial/library/activity/FaceCheckActivity;->access$signInOutSuccess(Lcn/mucang/sundial/library/activity/FaceCheckActivity;)V

    goto :goto_0

    .line 6
    :cond_0
    iget-object p1, p0, Lcn/mucang/sundial/library/activity/FaceCheckActivity$observeForLoginLogoutIfNeed$3;->this$0:Lcn/mucang/sundial/library/activity/FaceCheckActivity;

    sget v3, Lcn/mucang/sundial/library/R$string;->tt_sign_out_fail:I

    invoke-virtual {p1, v3}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object p1

    const-string v4, "getString(R.string.tt_sign_out_fail)"

    invoke-static {p1, v4}, Lkotlin/jvm/internal/r;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p1, v2, v1, v2}, Lcn/mucang/sundial/library/tts/Tts;->speak$default(Ljava/lang/String;Lcn/mucang/sundial/library/tts/SpeakListener;ILjava/lang/Object;)V

    .line 7
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcn/mucang/sundial/library/activity/FaceCheckActivity$observeForLoginLogoutIfNeed$3;->this$0:Lcn/mucang/sundial/library/activity/FaceCheckActivity;

    invoke-virtual {v0, v3}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcn/mucang/sundial/android/log/SundialLog;->normal(Ljava/lang/Object;)V

    .line 8
    iget-object p1, p0, Lcn/mucang/sundial/library/activity/FaceCheckActivity$observeForLoginLogoutIfNeed$3;->this$0:Lcn/mucang/sundial/library/activity/FaceCheckActivity;

    invoke-static {p1}, Lcn/mucang/sundial/library/activity/FaceCheckActivity;->access$showErrorLayout(Lcn/mucang/sundial/library/activity/FaceCheckActivity;)V

    :goto_0
    return-void
.end method

.method public bridge synthetic onChanged(Ljava/lang/Object;)V
    .locals 0

    .line 1
    check-cast p1, Lcn/mucang/sundial/android/eventbus/event/CoachLogoutResponseEvent;

    invoke-virtual {p0, p1}, Lcn/mucang/sundial/library/activity/FaceCheckActivity$observeForLoginLogoutIfNeed$3;->onChanged(Lcn/mucang/sundial/android/eventbus/event/CoachLogoutResponseEvent;)V

    return-void
.end method
