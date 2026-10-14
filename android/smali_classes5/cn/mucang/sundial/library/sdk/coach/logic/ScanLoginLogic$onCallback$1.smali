.class final Lcn/mucang/sundial/library/sdk/coach/logic/ScanLoginLogic$onCallback$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/mucang/sundial/library/sdk/coach/logic/ScanLoginLogic;->onCallback(ILcn/mucang/android/account/qrcode/model/QrAuthUser;)V
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
        "\u0000\u0008\n\u0002\u0018\u0002\n\u0002\u0008\u0003\u0010\u0003\u001a\u00020\u0000H\n\u00a2\u0006\u0004\u0008\u0001\u0010\u0002"
    }
    d2 = {
        "Lkotlin/v;",
        "run",
        "()V",
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
.field final synthetic $qrAuthUser:Lcn/mucang/android/account/qrcode/model/QrAuthUser;

.field final synthetic $scanLoginStatus:I

.field final synthetic this$0:Lcn/mucang/sundial/library/sdk/coach/logic/ScanLoginLogic;


# direct methods
.method constructor <init>(Lcn/mucang/sundial/library/sdk/coach/logic/ScanLoginLogic;ILcn/mucang/android/account/qrcode/model/QrAuthUser;)V
    .locals 0

    iput-object p1, p0, Lcn/mucang/sundial/library/sdk/coach/logic/ScanLoginLogic$onCallback$1;->this$0:Lcn/mucang/sundial/library/sdk/coach/logic/ScanLoginLogic;

    iput p2, p0, Lcn/mucang/sundial/library/sdk/coach/logic/ScanLoginLogic$onCallback$1;->$scanLoginStatus:I

    iput-object p3, p0, Lcn/mucang/sundial/library/sdk/coach/logic/ScanLoginLogic$onCallback$1;->$qrAuthUser:Lcn/mucang/android/account/qrcode/model/QrAuthUser;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 5

    .line 1
    iget v0, p0, Lcn/mucang/sundial/library/sdk/coach/logic/ScanLoginLogic$onCallback$1;->$scanLoginStatus:I

    const/4 v1, 0x0

    const-string v2, "binding.qrCodeErrorFl"

    const/16 v3, 0x4e48

    if-eq v0, v3, :cond_6

    const/4 v3, 0x3

    if-ne v0, v3, :cond_0

    goto/16 :goto_0

    :cond_0
    const/16 v3, 0x8

    const/4 v4, 0x1

    if-ne v0, v4, :cond_1

    .line 2
    iget-object v0, p0, Lcn/mucang/sundial/library/sdk/coach/logic/ScanLoginLogic$onCallback$1;->this$0:Lcn/mucang/sundial/library/sdk/coach/logic/ScanLoginLogic;

    invoke-virtual {v0}, Lcn/mucang/sundial/library/sdk/coach/logic/BaseLogic;->getBinding()Landroidx/viewbinding/a;

    move-result-object v0

    check-cast v0, Lcn/mucang/sundial/library/databinding/TtLayoutLoginScanBinding;

    iget-object v0, v0, Lcn/mucang/sundial/library/databinding/TtLayoutLoginScanBinding;->qrCodeErrorFl:Landroid/widget/FrameLayout;

    invoke-static {v0, v2}, Lkotlin/jvm/internal/r;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, v3}, Landroid/widget/FrameLayout;->setVisibility(I)V

    goto/16 :goto_1

    :cond_1
    if-nez v0, :cond_2

    .line 3
    iget-object v0, p0, Lcn/mucang/sundial/library/sdk/coach/logic/ScanLoginLogic$onCallback$1;->this$0:Lcn/mucang/sundial/library/sdk/coach/logic/ScanLoginLogic;

    invoke-virtual {v0}, Lcn/mucang/sundial/library/sdk/coach/logic/BaseLogic;->getBinding()Landroidx/viewbinding/a;

    move-result-object v0

    check-cast v0, Lcn/mucang/sundial/library/databinding/TtLayoutLoginScanBinding;

    iget-object v0, v0, Lcn/mucang/sundial/library/databinding/TtLayoutLoginScanBinding;->qrCodeErrorFl:Landroid/widget/FrameLayout;

    invoke-static {v0, v2}, Lkotlin/jvm/internal/r;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, v3}, Landroid/widget/FrameLayout;->setVisibility(I)V

    goto/16 :goto_1

    :cond_2
    const/4 v3, 0x2

    if-ne v0, v3, :cond_7

    .line 4
    iget-object v0, p0, Lcn/mucang/sundial/library/sdk/coach/logic/ScanLoginLogic$onCallback$1;->this$0:Lcn/mucang/sundial/library/sdk/coach/logic/ScanLoginLogic;

    invoke-virtual {v0}, Lcn/mucang/sundial/library/sdk/coach/logic/BaseLogic;->getBinding()Landroidx/viewbinding/a;

    move-result-object v0

    check-cast v0, Lcn/mucang/sundial/library/databinding/TtLayoutLoginScanBinding;

    iget-object v0, v0, Lcn/mucang/sundial/library/databinding/TtLayoutLoginScanBinding;->qrCodeErrorFl:Landroid/widget/FrameLayout;

    invoke-static {v0, v2}, Lkotlin/jvm/internal/r;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 5
    invoke-static {}, Lcn/mucang/sundial/android/SundialManager;->getInstance()Lcn/mucang/sundial/android/SundialManager;

    move-result-object v0

    const-string v1, "SundialManager.getInstance()"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/r;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0}, Lcn/mucang/sundial/android/SundialManager;->isRegister()Z

    move-result v0

    const-string v1, "Utils.getApp()"

    if-nez v0, :cond_3

    .line 6
    invoke-static {}, Lcom/blankj/utilcode/util/Utils;->d()Landroid/app/Application;

    move-result-object v0

    invoke-static {v0, v1}, Lkotlin/jvm/internal/r;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0}, Landroid/app/Application;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcn/mucang/sundial/library/R$string;->tt_please_register_device:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-static {v0}, Lcn/mucang/sundial/android/log/SundialLog;->normal(Ljava/lang/Object;)V

    .line 7
    sget-object v0, Lcn/mucang/sundial/library/util/ToastUtil;->INSTANCE:Lcn/mucang/sundial/library/util/ToastUtil;

    invoke-virtual {v0, v1}, Lcn/mucang/sundial/library/util/ToastUtil;->showToastOnce(I)V

    goto/16 :goto_1

    .line 8
    :cond_3
    invoke-static {}, Lcn/mucang/sundial/android/tcp/utils/DeviceUtils;->hasNetWork()Z

    move-result v0

    if-nez v0, :cond_4

    .line 9
    invoke-static {}, Lcom/blankj/utilcode/util/Utils;->d()Landroid/app/Application;

    move-result-object v0

    invoke-static {v0, v1}, Lkotlin/jvm/internal/r;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0}, Landroid/app/Application;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcn/mucang/sundial/library/R$string;->tt_net_error:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-static {v0}, Lcn/mucang/sundial/android/log/SundialLog;->normal(Ljava/lang/Object;)V

    .line 10
    invoke-static {}, Lcom/blankj/utilcode/util/Utils;->d()Landroid/app/Application;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/app/Application;->getString(I)Ljava/lang/String;

    move-result-object v0

    const-string v1, "Utils.getApp().getString(R.string.tt_net_error)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/r;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v1, 0x0

    invoke-static {v0, v1, v3, v1}, Lcn/mucang/sundial/library/tts/Tts;->speak$default(Ljava/lang/String;Lcn/mucang/sundial/library/tts/SpeakListener;ILjava/lang/Object;)V

    goto :goto_1

    .line 11
    :cond_4
    invoke-static {}, Lcn/mucang/android/core/config/MucangConfig;->i()Landroid/app/Activity;

    move-result-object v0

    .line 12
    new-instance v1, Landroid/content/Intent;

    const-class v2, Lcn/mucang/sundial/library/sdk/coach/CoachFaceCheckActivity;

    invoke-direct {v1, v0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 13
    sget-object v2, Lcn/mucang/sundial/android/PersonMode;->COACH:Lcn/mucang/sundial/android/PersonMode;

    invoke-virtual {v2}, Ljava/lang/Enum;->ordinal()I

    move-result v2

    const-string v3, "person_model"

    invoke-virtual {v1, v3, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 14
    sget-object v2, Lcn/mucang/sundial/library/entity/CheckMode;->SIGN_IN:Lcn/mucang/sundial/library/entity/CheckMode;

    invoke-virtual {v2}, Ljava/lang/Enum;->ordinal()I

    move-result v2

    const-string v3, "check_model"

    invoke-virtual {v1, v3, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 15
    sget-object v2, Lcn/mucang/sundial/android/tcp/upload/EventType;->COACH_SIGN_IN:Lcn/mucang/sundial/android/tcp/upload/EventType;

    invoke-virtual {v2}, Lcn/mucang/sundial/android/tcp/upload/EventType;->valueOf()I

    move-result v2

    const-string v3, "upload_event_type"

    invoke-virtual {v1, v3, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v2, "id_num"

    const-string v3, ""

    .line 16
    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 17
    iget-object v2, p0, Lcn/mucang/sundial/library/sdk/coach/logic/ScanLoginLogic$onCallback$1;->$qrAuthUser:Lcn/mucang/android/account/qrcode/model/QrAuthUser;

    if-eqz v2, :cond_5

    invoke-virtual {v2}, Lcn/mucang/android/account/data/AuthUser;->getAuthToken()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_5

    move-object v3, v2

    :cond_5
    const-string v2, "auth_token"

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 18
    sget-object v2, Lkotlin/v;->a:Lkotlin/v;

    .line 19
    invoke-virtual {v0, v1, v4}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_1

    .line 20
    :cond_6
    :goto_0
    iget-object v0, p0, Lcn/mucang/sundial/library/sdk/coach/logic/ScanLoginLogic$onCallback$1;->this$0:Lcn/mucang/sundial/library/sdk/coach/logic/ScanLoginLogic;

    invoke-virtual {v0}, Lcn/mucang/sundial/library/sdk/coach/logic/BaseLogic;->getBinding()Landroidx/viewbinding/a;

    move-result-object v0

    check-cast v0, Lcn/mucang/sundial/library/databinding/TtLayoutLoginScanBinding;

    iget-object v0, v0, Lcn/mucang/sundial/library/databinding/TtLayoutLoginScanBinding;->qrCodeErrorFl:Landroid/widget/FrameLayout;

    invoke-static {v0, v2}, Lkotlin/jvm/internal/r;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    :cond_7
    :goto_1
    return-void
.end method
