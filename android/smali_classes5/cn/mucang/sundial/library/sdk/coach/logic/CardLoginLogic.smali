.class public final Lcn/mucang/sundial/library/sdk/coach/logic/CardLoginLogic;
.super Lcn/mucang/sundial/library/sdk/coach/logic/BaseLogic;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcn/mucang/sundial/library/sdk/coach/logic/BaseLogic<",
        "Lcn/mucang/sundial/library/databinding/TtLayoutLoginCardBinding;",
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
        "\u0000\u001c\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000b\n\u0002\u0008\n\u0018\u00002\u0008\u0012\u0004\u0012\u00020\u00020\u0001B\u000f\u0012\u0006\u0010\r\u001a\u00020\u0002\u00a2\u0006\u0004\u0008\u000e\u0010\u000fJ\u000f\u0010\u0004\u001a\u00020\u0003H\u0002\u00a2\u0006\u0004\u0008\u0004\u0010\u0005J\u000f\u0010\u0007\u001a\u00020\u0006H\u0002\u00a2\u0006\u0004\u0008\u0007\u0010\u0008J\u000f\u0010\t\u001a\u00020\u0003H\u0016\u00a2\u0006\u0004\u0008\t\u0010\u0005J\u0017\u0010\u000b\u001a\u00020\u00032\u0006\u0010\n\u001a\u00020\u0006H\u0016\u00a2\u0006\u0004\u0008\u000b\u0010\u000c\u00a8\u0006\u0010"
    }
    d2 = {
        "Lcn/mucang/sundial/library/sdk/coach/logic/CardLoginLogic;",
        "Lcn/mucang/sundial/library/sdk/coach/logic/BaseLogic;",
        "Lcn/mucang/sundial/library/databinding/TtLayoutLoginCardBinding;",
        "Lkotlin/v;",
        "login",
        "()V",
        "",
        "interruptToRegister",
        "()Z",
        "init",
        "fromUser",
        "start",
        "(Z)V",
        "binding",
        "<init>",
        "(Lcn/mucang/sundial/library/databinding/TtLayoutLoginCardBinding;)V",
        "library_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x1,
        0xf
    }
.end annotation


# direct methods
.method public constructor <init>(Lcn/mucang/sundial/library/databinding/TtLayoutLoginCardBinding;)V
    .locals 1

    const-string v0, "binding"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0, p1}, Lcn/mucang/sundial/library/sdk/coach/logic/BaseLogic;-><init>(Landroidx/viewbinding/a;)V

    return-void
.end method

.method public static final synthetic access$login(Lcn/mucang/sundial/library/sdk/coach/logic/CardLoginLogic;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcn/mucang/sundial/library/sdk/coach/logic/CardLoginLogic;->login()V

    return-void
.end method

.method private final interruptToRegister()Z
    .locals 4

    .line 1
    invoke-static {}, Lcn/mucang/sundial/android/SundialManager;->getInstance()Lcn/mucang/sundial/android/SundialManager;

    move-result-object v0

    const-string v1, "SundialManager.getInstance()"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/r;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0}, Lcn/mucang/sundial/android/SundialManager;->isRegister()Z

    move-result v0

    if-nez v0, :cond_0

    .line 2
    invoke-static {}, Lcom/blankj/utilcode/util/Utils;->d()Landroid/app/Application;

    move-result-object v1

    const-string v2, "Utils.getApp()"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/r;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v1}, Landroid/app/Application;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcn/mucang/sundial/library/R$string;->tt_please_register_device:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-static {v1}, Lcn/mucang/sundial/android/log/SundialLog;->normal(Ljava/lang/Object;)V

    .line 3
    sget-object v1, Lcn/mucang/sundial/library/util/ToastUtil;->INSTANCE:Lcn/mucang/sundial/library/util/ToastUtil;

    invoke-virtual {v1, v2}, Lcn/mucang/sundial/library/util/ToastUtil;->showToastOnce(I)V

    .line 4
    invoke-static {}, Lcom/blankj/utilcode/util/Utils;->d()Landroid/app/Application;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/app/Application;->getString(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "Utils.getApp().getString\u2026t_please_register_device)"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/r;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v2, 0x2

    const/4 v3, 0x0

    invoke-static {v1, v3, v2, v3}, Lcn/mucang/sundial/library/tts/Tts;->speak$default(Ljava/lang/String;Lcn/mucang/sundial/library/tts/SpeakListener;ILjava/lang/Object;)V

    :cond_0
    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method private final login()V
    .locals 7

    .line 1
    invoke-virtual {p0}, Lcn/mucang/sundial/library/sdk/coach/logic/BaseLogic;->getBinding()Landroidx/viewbinding/a;

    move-result-object v0

    check-cast v0, Lcn/mucang/sundial/library/databinding/TtLayoutLoginCardBinding;

    iget-object v0, v0, Lcn/mucang/sundial/library/databinding/TtLayoutLoginCardBinding;->idEt:Landroid/widget/EditText;

    const-string v1, "binding.idEt"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/r;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 2
    invoke-static {v0}, Lcn/mucang/android/core/utils/n0;->e(Ljava/lang/String;)Z

    move-result v1

    const-string v2, "binding.tvErrTip"

    if-eqz v1, :cond_0

    .line 3
    invoke-virtual {p0}, Lcn/mucang/sundial/library/sdk/coach/logic/BaseLogic;->getBinding()Landroidx/viewbinding/a;

    move-result-object v0

    check-cast v0, Lcn/mucang/sundial/library/databinding/TtLayoutLoginCardBinding;

    iget-object v0, v0, Lcn/mucang/sundial/library/databinding/TtLayoutLoginCardBinding;->tvErrTip:Landroid/widget/TextView;

    invoke-static {v0, v2}, Lkotlin/jvm/internal/r;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "\u8bf7\u8f93\u5165\u767b\u5f55\u8d26\u53f7"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 4
    invoke-static {v1}, Lcn/mucang/android/core/utils/u;->h(Ljava/lang/String;)V

    return-void

    .line 5
    :cond_0
    invoke-virtual {p0}, Lcn/mucang/sundial/library/sdk/coach/logic/BaseLogic;->getBinding()Landroidx/viewbinding/a;

    move-result-object v1

    check-cast v1, Lcn/mucang/sundial/library/databinding/TtLayoutLoginCardBinding;

    iget-object v1, v1, Lcn/mucang/sundial/library/databinding/TtLayoutLoginCardBinding;->tvErrTip:Landroid/widget/TextView;

    invoke-static {v1, v2}, Lkotlin/jvm/internal/r;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v2, ""

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const-string v1, "\u70b9\u51fb\u767b\u5f55\u6309\u94ae"

    .line 6
    invoke-static {v1}, Lcn/mucang/sundial/android/log/SundialLog;->normal(Ljava/lang/Object;)V

    .line 7
    invoke-direct {p0}, Lcn/mucang/sundial/library/sdk/coach/logic/CardLoginLogic;->interruptToRegister()Z

    move-result v1

    if-eqz v1, :cond_1

    return-void

    :cond_1
    const-string v1, "null cannot be cast to non-null type kotlin.CharSequence"

    .line 8
    invoke-static {v0, v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    invoke-static {v0}, Lkotlin/text/l;->J0(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 9
    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v1

    const/4 v3, 0x1

    if-nez v1, :cond_2

    const/4 v1, 0x1

    goto :goto_0

    :cond_2
    const/4 v1, 0x0

    :goto_0
    const-string v4, "Utils.getApp()"

    if-eqz v1, :cond_3

    .line 10
    invoke-static {}, Lcom/blankj/utilcode/util/Utils;->d()Landroid/app/Application;

    move-result-object v0

    invoke-static {v0, v4}, Lkotlin/jvm/internal/r;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0}, Landroid/app/Application;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcn/mucang/sundial/library/R$string;->tt_please_input_id:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-static {v0}, Lcn/mucang/sundial/android/log/SundialLog;->normal(Ljava/lang/Object;)V

    .line 11
    sget-object v0, Lcn/mucang/sundial/library/util/ToastUtil;->INSTANCE:Lcn/mucang/sundial/library/util/ToastUtil;

    invoke-virtual {v0, v1}, Lcn/mucang/sundial/library/util/ToastUtil;->showToastOnce(I)V

    return-void

    .line 12
    :cond_3
    invoke-static {}, Lcn/mucang/sundial/android/tcp/utils/DeviceUtils;->hasNetWork()Z

    move-result v1

    if-nez v1, :cond_4

    .line 13
    invoke-static {}, Lcom/blankj/utilcode/util/Utils;->d()Landroid/app/Application;

    move-result-object v0

    invoke-static {v0, v4}, Lkotlin/jvm/internal/r;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0}, Landroid/app/Application;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcn/mucang/sundial/library/R$string;->tt_net_error:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-static {v0}, Lcn/mucang/sundial/android/log/SundialLog;->normal(Ljava/lang/Object;)V

    .line 14
    invoke-static {}, Lcom/blankj/utilcode/util/Utils;->d()Landroid/app/Application;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/app/Application;->getString(I)Ljava/lang/String;

    move-result-object v0

    const-string v1, "Utils.getApp().getString(R.string.tt_net_error)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/r;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v1, 0x2

    const/4 v2, 0x0

    invoke-static {v0, v2, v1, v2}, Lcn/mucang/sundial/library/tts/Tts;->speak$default(Ljava/lang/String;Lcn/mucang/sundial/library/tts/SpeakListener;ILjava/lang/Object;)V

    return-void

    .line 15
    :cond_4
    invoke-static {}, Lcn/mucang/android/core/config/MucangConfig;->i()Landroid/app/Activity;

    move-result-object v1

    .line 16
    new-instance v4, Landroid/content/Intent;

    const-class v5, Lcn/mucang/sundial/library/sdk/coach/CoachFaceCheckActivity;

    invoke-direct {v4, v1, v5}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 17
    sget-object v5, Lcn/mucang/sundial/android/PersonMode;->COACH:Lcn/mucang/sundial/android/PersonMode;

    invoke-virtual {v5}, Ljava/lang/Enum;->ordinal()I

    move-result v5

    const-string v6, "person_model"

    invoke-virtual {v4, v6, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 18
    sget-object v5, Lcn/mucang/sundial/library/entity/CheckMode;->SIGN_IN:Lcn/mucang/sundial/library/entity/CheckMode;

    invoke-virtual {v5}, Ljava/lang/Enum;->ordinal()I

    move-result v5

    const-string v6, "check_model"

    invoke-virtual {v4, v6, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 19
    sget-object v5, Lcn/mucang/sundial/android/tcp/upload/EventType;->COACH_SIGN_IN:Lcn/mucang/sundial/android/tcp/upload/EventType;

    invoke-virtual {v5}, Lcn/mucang/sundial/android/tcp/upload/EventType;->valueOf()I

    move-result v5

    const-string v6, "upload_event_type"

    invoke-virtual {v4, v6, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v5, "id_num"

    .line 20
    invoke-virtual {v4, v5, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v0, "auth_token"

    .line 21
    invoke-virtual {v4, v0, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 22
    sget-object v0, Lkotlin/v;->a:Lkotlin/v;

    .line 23
    invoke-virtual {v1, v4, v3}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    return-void
.end method


# virtual methods
.method public init()V
    .locals 3

    .line 1
    invoke-virtual {p0}, Lcn/mucang/sundial/library/sdk/coach/logic/BaseLogic;->getBinding()Landroidx/viewbinding/a;

    move-result-object v0

    check-cast v0, Lcn/mucang/sundial/library/databinding/TtLayoutLoginCardBinding;

    iget-object v0, v0, Lcn/mucang/sundial/library/databinding/TtLayoutLoginCardBinding;->numKeyboard:Lcn/mucang/sundial/library/widget/SundialNumKeyBoardView;

    invoke-virtual {p0}, Lcn/mucang/sundial/library/sdk/coach/logic/BaseLogic;->getBinding()Landroidx/viewbinding/a;

    move-result-object v1

    check-cast v1, Lcn/mucang/sundial/library/databinding/TtLayoutLoginCardBinding;

    iget-object v1, v1, Lcn/mucang/sundial/library/databinding/TtLayoutLoginCardBinding;->idEt:Landroid/widget/EditText;

    const-string v2, "binding.idEt"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/r;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcn/mucang/sundial/library/widget/SundialNumKeyBoardView;->bindEditText(Landroid/widget/EditText;)V

    .line 2
    invoke-virtual {p0}, Lcn/mucang/sundial/library/sdk/coach/logic/BaseLogic;->getBinding()Landroidx/viewbinding/a;

    move-result-object v0

    check-cast v0, Lcn/mucang/sundial/library/databinding/TtLayoutLoginCardBinding;

    iget-object v0, v0, Lcn/mucang/sundial/library/databinding/TtLayoutLoginCardBinding;->loginTv:Landroid/widget/TextView;

    new-instance v1, Lcn/mucang/sundial/library/sdk/coach/logic/CardLoginLogic$init$1;

    invoke-direct {v1, p0}, Lcn/mucang/sundial/library/sdk/coach/logic/CardLoginLogic$init$1;-><init>(Lcn/mucang/sundial/library/sdk/coach/logic/CardLoginLogic;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 3
    invoke-virtual {p0}, Lcn/mucang/sundial/library/sdk/coach/logic/BaseLogic;->getBinding()Landroidx/viewbinding/a;

    move-result-object v0

    check-cast v0, Lcn/mucang/sundial/library/databinding/TtLayoutLoginCardBinding;

    iget-object v0, v0, Lcn/mucang/sundial/library/databinding/TtLayoutLoginCardBinding;->eyeIv:Landroid/widget/ImageView;

    new-instance v1, Lcn/mucang/sundial/library/sdk/coach/logic/CardLoginLogic$init$2;

    invoke-direct {v1, p0}, Lcn/mucang/sundial/library/sdk/coach/logic/CardLoginLogic$init$2;-><init>(Lcn/mucang/sundial/library/sdk/coach/logic/CardLoginLogic;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 4
    invoke-static {}, Lcn/mucang/android/core/config/MucangConfig;->v()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 5
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcn/mucang/sundial/library/sdk/coach/logic/CardLoginLogic$init$3;

    invoke-direct {v1, p0}, Lcn/mucang/sundial/library/sdk/coach/logic/CardLoginLogic$init$3;-><init>(Lcn/mucang/sundial/library/sdk/coach/logic/CardLoginLogic;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 6
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    :cond_0
    return-void
.end method

.method public start(Z)V
    .locals 2

    .line 1
    invoke-super {p0, p1}, Lcn/mucang/sundial/library/sdk/coach/logic/BaseLogic;->start(Z)V

    if-eqz p1, :cond_1

    .line 2
    invoke-virtual {p0}, Lcn/mucang/sundial/library/sdk/coach/logic/BaseLogic;->getBinding()Landroidx/viewbinding/a;

    move-result-object p1

    check-cast p1, Lcn/mucang/sundial/library/databinding/TtLayoutLoginCardBinding;

    iget-object p1, p1, Lcn/mucang/sundial/library/databinding/TtLayoutLoginCardBinding;->idEt:Landroid/widget/EditText;

    const-string v0, "binding.idEt"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3
    invoke-static {p1}, Landroidx/core/view/ViewCompat;->isLaidOut(Landroid/view/View;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p1}, Landroid/view/View;->isLayoutRequested()Z

    move-result v1

    if-nez v1, :cond_0

    .line 4
    invoke-virtual {p0}, Lcn/mucang/sundial/library/sdk/coach/logic/BaseLogic;->getBinding()Landroidx/viewbinding/a;

    move-result-object p1

    check-cast p1, Lcn/mucang/sundial/library/databinding/TtLayoutLoginCardBinding;

    iget-object p1, p1, Lcn/mucang/sundial/library/databinding/TtLayoutLoginCardBinding;->idEt:Landroid/widget/EditText;

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v1, 0x1

    invoke-virtual {p1, v1}, Landroid/widget/EditText;->setFocusable(Z)V

    .line 5
    invoke-virtual {p0}, Lcn/mucang/sundial/library/sdk/coach/logic/BaseLogic;->getBinding()Landroidx/viewbinding/a;

    move-result-object p1

    check-cast p1, Lcn/mucang/sundial/library/databinding/TtLayoutLoginCardBinding;

    iget-object p1, p1, Lcn/mucang/sundial/library/databinding/TtLayoutLoginCardBinding;->idEt:Landroid/widget/EditText;

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1, v1}, Landroid/widget/EditText;->setFocusableInTouchMode(Z)V

    .line 6
    invoke-virtual {p0}, Lcn/mucang/sundial/library/sdk/coach/logic/BaseLogic;->getBinding()Landroidx/viewbinding/a;

    move-result-object p1

    check-cast p1, Lcn/mucang/sundial/library/databinding/TtLayoutLoginCardBinding;

    iget-object p1, p1, Lcn/mucang/sundial/library/databinding/TtLayoutLoginCardBinding;->idEt:Landroid/widget/EditText;

    invoke-virtual {p1}, Landroid/widget/EditText;->findFocus()Landroid/view/View;

    .line 7
    invoke-virtual {p0}, Lcn/mucang/sundial/library/sdk/coach/logic/BaseLogic;->getBinding()Landroidx/viewbinding/a;

    move-result-object p1

    check-cast p1, Lcn/mucang/sundial/library/databinding/TtLayoutLoginCardBinding;

    iget-object p1, p1, Lcn/mucang/sundial/library/databinding/TtLayoutLoginCardBinding;->idEt:Landroid/widget/EditText;

    invoke-virtual {p1}, Landroid/widget/EditText;->requestFocus()Z

    goto :goto_0

    .line 8
    :cond_0
    new-instance v0, Lcn/mucang/sundial/library/sdk/coach/logic/CardLoginLogic$start$$inlined$doOnLayout$1;

    invoke-direct {v0, p0}, Lcn/mucang/sundial/library/sdk/coach/logic/CardLoginLogic$start$$inlined$doOnLayout$1;-><init>(Lcn/mucang/sundial/library/sdk/coach/logic/CardLoginLogic;)V

    invoke-virtual {p1, v0}, Landroid/view/View;->addOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    :cond_1
    :goto_0
    return-void
.end method
