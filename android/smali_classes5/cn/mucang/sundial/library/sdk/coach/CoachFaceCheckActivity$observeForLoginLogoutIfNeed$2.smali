.class final Lcn/mucang/sundial/library/sdk/coach/CoachFaceCheckActivity$observeForLoginLogoutIfNeed$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/lifecycle/a0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/mucang/sundial/library/sdk/coach/CoachFaceCheckActivity;->observeForLoginLogoutIfNeed()V
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
        "Lcn/mucang/sundial/android/eventbus/event/StudentLoginResponseEvent;",
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
        "Lcn/mucang/sundial/android/eventbus/event/StudentLoginResponseEvent;",
        "kotlin.jvm.PlatformType",
        "it",
        "Lkotlin/v;",
        "onChanged",
        "(Lcn/mucang/sundial/android/eventbus/event/StudentLoginResponseEvent;)V",
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
.field final synthetic this$0:Lcn/mucang/sundial/library/sdk/coach/CoachFaceCheckActivity;


# direct methods
.method constructor <init>(Lcn/mucang/sundial/library/sdk/coach/CoachFaceCheckActivity;)V
    .locals 0

    iput-object p1, p0, Lcn/mucang/sundial/library/sdk/coach/CoachFaceCheckActivity$observeForLoginLogoutIfNeed$2;->this$0:Lcn/mucang/sundial/library/sdk/coach/CoachFaceCheckActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onChanged(Lcn/mucang/sundial/android/eventbus/event/StudentLoginResponseEvent;)V
    .locals 2

    .line 2
    iget-object v0, p0, Lcn/mucang/sundial/library/sdk/coach/CoachFaceCheckActivity$observeForLoginLogoutIfNeed$2;->this$0:Lcn/mucang/sundial/library/sdk/coach/CoachFaceCheckActivity;

    invoke-virtual {v0}, Lcn/mucang/sundial/library/activity/TopActivity;->hideLoadingDialog()V

    .line 3
    sget-object v0, Lcn/mucang/sundial/library/util/LoginUtil;->INSTANCE:Lcn/mucang/sundial/library/util/LoginUtil;

    invoke-virtual {v0}, Lcn/mucang/sundial/library/util/LoginUtil;->studentLoginSuccess()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string p1, "\u5b66\u5458\u7b7e\u5230\u6210\u529f"

    .line 4
    invoke-static {p1}, Lcn/mucang/sundial/android/log/SundialLog;->normal(Ljava/lang/Object;)V

    .line 5
    iget-object p1, p0, Lcn/mucang/sundial/library/sdk/coach/CoachFaceCheckActivity$observeForLoginLogoutIfNeed$2;->this$0:Lcn/mucang/sundial/library/sdk/coach/CoachFaceCheckActivity;

    invoke-static {p1}, Lcn/mucang/sundial/library/sdk/coach/CoachFaceCheckActivity;->access$signInOutSuccess(Lcn/mucang/sundial/library/sdk/coach/CoachFaceCheckActivity;)V

    goto :goto_2

    :cond_0
    const-string v0, "it"

    .line 6
    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Lcn/mucang/sundial/android/eventbus/event/StudentLoginResponseEvent;->getExtraMessage()Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_2

    .line 7
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-nez v0, :cond_1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_1

    :cond_2
    :goto_0
    const/4 v0, 0x1

    :goto_1
    if-eqz v0, :cond_3

    .line 8
    iget-object p1, p0, Lcn/mucang/sundial/library/sdk/coach/CoachFaceCheckActivity$observeForLoginLogoutIfNeed$2;->this$0:Lcn/mucang/sundial/library/sdk/coach/CoachFaceCheckActivity;

    sget v0, Lcn/mucang/sundial/library/R$string;->tt_login_fail:I

    invoke-virtual {p1, v0}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object p1

    .line 9
    :cond_3
    iget-object v0, p0, Lcn/mucang/sundial/library/sdk/coach/CoachFaceCheckActivity$observeForLoginLogoutIfNeed$2;->this$0:Lcn/mucang/sundial/library/sdk/coach/CoachFaceCheckActivity;

    const-string v1, "message"

    invoke-static {p1, v1}, Lkotlin/jvm/internal/r;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v0, p1}, Lcn/mucang/sundial/library/sdk/coach/CoachFaceCheckActivity;->access$toastCustomMsg(Lcn/mucang/sundial/library/sdk/coach/CoachFaceCheckActivity;Ljava/lang/String;)V

    .line 10
    invoke-static {p1}, Lcn/mucang/sundial/android/log/SundialLog;->normal(Ljava/lang/Object;)V

    .line 11
    iget-object p1, p0, Lcn/mucang/sundial/library/sdk/coach/CoachFaceCheckActivity$observeForLoginLogoutIfNeed$2;->this$0:Lcn/mucang/sundial/library/sdk/coach/CoachFaceCheckActivity;

    invoke-static {p1}, Lcn/mucang/sundial/library/sdk/coach/CoachFaceCheckActivity;->access$showErrorLayout(Lcn/mucang/sundial/library/sdk/coach/CoachFaceCheckActivity;)V

    :goto_2
    return-void
.end method

.method public bridge synthetic onChanged(Ljava/lang/Object;)V
    .locals 0

    .line 1
    check-cast p1, Lcn/mucang/sundial/android/eventbus/event/StudentLoginResponseEvent;

    invoke-virtual {p0, p1}, Lcn/mucang/sundial/library/sdk/coach/CoachFaceCheckActivity$observeForLoginLogoutIfNeed$2;->onChanged(Lcn/mucang/sundial/android/eventbus/event/StudentLoginResponseEvent;)V

    return-void
.end method
