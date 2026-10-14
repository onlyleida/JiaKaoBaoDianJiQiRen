.class final Lcn/mucang/sundial/library/activity/LoginStudentActivity$initQrCode$1$1$1$onCallback$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/mucang/sundial/library/activity/LoginStudentActivity$initQrCode$1$1$1;->onCallback(ILcn/mucang/android/account/qrcode/model/QrAuthUser;)V
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

.field final synthetic this$0:Lcn/mucang/sundial/library/activity/LoginStudentActivity$initQrCode$1$1$1;


# direct methods
.method constructor <init>(Lcn/mucang/sundial/library/activity/LoginStudentActivity$initQrCode$1$1$1;ILcn/mucang/android/account/qrcode/model/QrAuthUser;)V
    .locals 0

    iput-object p1, p0, Lcn/mucang/sundial/library/activity/LoginStudentActivity$initQrCode$1$1$1$onCallback$1;->this$0:Lcn/mucang/sundial/library/activity/LoginStudentActivity$initQrCode$1$1$1;

    iput p2, p0, Lcn/mucang/sundial/library/activity/LoginStudentActivity$initQrCode$1$1$1$onCallback$1;->$scanLoginStatus:I

    iput-object p3, p0, Lcn/mucang/sundial/library/activity/LoginStudentActivity$initQrCode$1$1$1$onCallback$1;->$qrAuthUser:Lcn/mucang/android/account/qrcode/model/QrAuthUser;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 11

    .line 1
    iget v0, p0, Lcn/mucang/sundial/library/activity/LoginStudentActivity$initQrCode$1$1$1$onCallback$1;->$scanLoginStatus:I

    const-string v1, "binding.invalidAppQrCode"

    if-eqz v0, :cond_8

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eq v0, v2, :cond_7

    const/4 v2, 0x2

    if-eq v0, v2, :cond_2

    const/4 v2, 0x3

    if-eq v0, v2, :cond_1

    const/16 v2, 0x4e48

    if-eq v0, v2, :cond_0

    goto/16 :goto_1

    .line 2
    :cond_0
    iget-object v0, p0, Lcn/mucang/sundial/library/activity/LoginStudentActivity$initQrCode$1$1$1$onCallback$1;->this$0:Lcn/mucang/sundial/library/activity/LoginStudentActivity$initQrCode$1$1$1;

    iget-object v0, v0, Lcn/mucang/sundial/library/activity/LoginStudentActivity$initQrCode$1$1$1;->this$0:Lcn/mucang/sundial/library/activity/LoginStudentActivity$initQrCode$1$1;

    iget-object v0, v0, Lcn/mucang/sundial/library/activity/LoginStudentActivity$initQrCode$1$1;->this$0:Lcn/mucang/sundial/library/activity/LoginStudentActivity$initQrCode$1;

    iget-object v0, v0, Lcn/mucang/sundial/library/activity/LoginStudentActivity$initQrCode$1;->this$0:Lcn/mucang/sundial/library/activity/LoginStudentActivity;

    invoke-static {v0}, Lcn/mucang/sundial/library/activity/LoginStudentActivity;->access$getBinding$p(Lcn/mucang/sundial/library/activity/LoginStudentActivity;)Lcn/mucang/sundial/library/databinding/TtActivityStudentLoginBinding;

    move-result-object v0

    iget-object v0, v0, Lcn/mucang/sundial/library/databinding/TtActivityStudentLoginBinding;->invalidAppQrCode:Landroid/widget/TextView;

    invoke-static {v0, v1}, Lkotlin/jvm/internal/r;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 3
    sget-object v0, Lcn/mucang/android/account/m/b;->f:Lcn/mucang/android/account/m/b$a;

    invoke-virtual {v0}, Lcn/mucang/android/account/m/b$a;->a()Lcn/mucang/android/account/m/b;

    move-result-object v0

    invoke-virtual {v0}, Lcn/mucang/android/account/m/b;->i()V

    goto/16 :goto_1

    .line 4
    :cond_1
    iget-object v0, p0, Lcn/mucang/sundial/library/activity/LoginStudentActivity$initQrCode$1$1$1$onCallback$1;->this$0:Lcn/mucang/sundial/library/activity/LoginStudentActivity$initQrCode$1$1$1;

    iget-object v0, v0, Lcn/mucang/sundial/library/activity/LoginStudentActivity$initQrCode$1$1$1;->this$0:Lcn/mucang/sundial/library/activity/LoginStudentActivity$initQrCode$1$1;

    iget-object v0, v0, Lcn/mucang/sundial/library/activity/LoginStudentActivity$initQrCode$1$1;->this$0:Lcn/mucang/sundial/library/activity/LoginStudentActivity$initQrCode$1;

    iget-object v0, v0, Lcn/mucang/sundial/library/activity/LoginStudentActivity$initQrCode$1;->this$0:Lcn/mucang/sundial/library/activity/LoginStudentActivity;

    invoke-static {v0}, Lcn/mucang/sundial/library/activity/LoginStudentActivity;->access$getBinding$p(Lcn/mucang/sundial/library/activity/LoginStudentActivity;)Lcn/mucang/sundial/library/databinding/TtActivityStudentLoginBinding;

    move-result-object v0

    iget-object v0, v0, Lcn/mucang/sundial/library/databinding/TtActivityStudentLoginBinding;->invalidAppQrCode:Landroid/widget/TextView;

    invoke-static {v0, v1}, Lkotlin/jvm/internal/r;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 5
    sget-object v0, Lcn/mucang/android/account/m/b;->f:Lcn/mucang/android/account/m/b$a;

    invoke-virtual {v0}, Lcn/mucang/android/account/m/b$a;->a()Lcn/mucang/android/account/m/b;

    move-result-object v0

    invoke-virtual {v0}, Lcn/mucang/android/account/m/b;->i()V

    goto/16 :goto_1

    .line 6
    :cond_2
    iget-object v0, p0, Lcn/mucang/sundial/library/activity/LoginStudentActivity$initQrCode$1$1$1$onCallback$1;->this$0:Lcn/mucang/sundial/library/activity/LoginStudentActivity$initQrCode$1$1$1;

    iget-object v0, v0, Lcn/mucang/sundial/library/activity/LoginStudentActivity$initQrCode$1$1$1;->this$0:Lcn/mucang/sundial/library/activity/LoginStudentActivity$initQrCode$1$1;

    iget-object v0, v0, Lcn/mucang/sundial/library/activity/LoginStudentActivity$initQrCode$1$1;->this$0:Lcn/mucang/sundial/library/activity/LoginStudentActivity$initQrCode$1;

    iget-object v0, v0, Lcn/mucang/sundial/library/activity/LoginStudentActivity$initQrCode$1;->this$0:Lcn/mucang/sundial/library/activity/LoginStudentActivity;

    invoke-static {v0}, Lcn/mucang/sundial/library/activity/LoginStudentActivity;->access$getBinding$p(Lcn/mucang/sundial/library/activity/LoginStudentActivity;)Lcn/mucang/sundial/library/databinding/TtActivityStudentLoginBinding;

    move-result-object v0

    iget-object v0, v0, Lcn/mucang/sundial/library/databinding/TtActivityStudentLoginBinding;->invalidAppQrCode:Landroid/widget/TextView;

    invoke-static {v0, v1}, Lkotlin/jvm/internal/r;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 7
    sget-object v0, Lcn/mucang/android/account/m/b;->f:Lcn/mucang/android/account/m/b$a;

    invoke-virtual {v0}, Lcn/mucang/android/account/m/b$a;->a()Lcn/mucang/android/account/m/b;

    move-result-object v0

    invoke-virtual {v0}, Lcn/mucang/android/account/m/b;->i()V

    .line 8
    invoke-static {}, Lcn/mucang/sundial/android/SundialManager;->getInstance()Lcn/mucang/sundial/android/SundialManager;

    move-result-object v0

    const-string v1, "SundialManager.getInstance()"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/r;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0}, Lcn/mucang/sundial/android/SundialManager;->isRegister()Z

    move-result v0

    if-nez v0, :cond_3

    .line 9
    sget-object v0, Lcn/mucang/sundial/library/util/ToastUtil;->INSTANCE:Lcn/mucang/sundial/library/util/ToastUtil;

    sget v1, Lcn/mucang/sundial/library/R$string;->tt_please_register_device:I

    invoke-virtual {v0, v1}, Lcn/mucang/sundial/library/util/ToastUtil;->showToastOnce(I)V

    goto/16 :goto_1

    .line 10
    :cond_3
    invoke-static {}, Lcn/mucang/sundial/android/tcp/utils/DeviceUtils;->hasNetWork()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_4

    .line 11
    iget-object v0, p0, Lcn/mucang/sundial/library/activity/LoginStudentActivity$initQrCode$1$1$1$onCallback$1;->this$0:Lcn/mucang/sundial/library/activity/LoginStudentActivity$initQrCode$1$1$1;

    iget-object v0, v0, Lcn/mucang/sundial/library/activity/LoginStudentActivity$initQrCode$1$1$1;->this$0:Lcn/mucang/sundial/library/activity/LoginStudentActivity$initQrCode$1$1;

    iget-object v0, v0, Lcn/mucang/sundial/library/activity/LoginStudentActivity$initQrCode$1$1;->this$0:Lcn/mucang/sundial/library/activity/LoginStudentActivity$initQrCode$1;

    iget-object v0, v0, Lcn/mucang/sundial/library/activity/LoginStudentActivity$initQrCode$1;->this$0:Lcn/mucang/sundial/library/activity/LoginStudentActivity;

    sget v3, Lcn/mucang/sundial/library/R$string;->tt_net_error:I

    invoke-virtual {v0, v3}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v0

    const-string v3, "getString(R.string.tt_net_error)"

    invoke-static {v0, v3}, Lkotlin/jvm/internal/r;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v0, v1, v2, v1}, Lcn/mucang/sundial/library/tts/Tts;->speak$default(Ljava/lang/String;Lcn/mucang/sundial/library/tts/SpeakListener;ILjava/lang/Object;)V

    goto :goto_1

    .line 12
    :cond_4
    invoke-static {}, Lcn/mucang/sundial/android/location/AppLocation;->isLocationValid()Z

    move-result v0

    if-nez v0, :cond_5

    const-string v0, "\u83b7\u53d6\u5b9a\u4f4d\u4fe1\u606f\u5931\u8d25"

    .line 13
    invoke-static {v0, v1, v2, v1}, Lcn/mucang/sundial/library/tts/Tts;->speak$default(Ljava/lang/String;Lcn/mucang/sundial/library/tts/SpeakListener;ILjava/lang/Object;)V

    goto :goto_1

    .line 14
    :cond_5
    sget-object v3, Lcn/mucang/sundial/library/util/LoginUtil;->INSTANCE:Lcn/mucang/sundial/library/util/LoginUtil;

    .line 15
    iget-object v0, p0, Lcn/mucang/sundial/library/activity/LoginStudentActivity$initQrCode$1$1$1$onCallback$1;->this$0:Lcn/mucang/sundial/library/activity/LoginStudentActivity$initQrCode$1$1$1;

    iget-object v0, v0, Lcn/mucang/sundial/library/activity/LoginStudentActivity$initQrCode$1$1$1;->this$0:Lcn/mucang/sundial/library/activity/LoginStudentActivity$initQrCode$1$1;

    iget-object v0, v0, Lcn/mucang/sundial/library/activity/LoginStudentActivity$initQrCode$1$1;->this$0:Lcn/mucang/sundial/library/activity/LoginStudentActivity$initQrCode$1;

    iget-object v4, v0, Lcn/mucang/sundial/library/activity/LoginStudentActivity$initQrCode$1;->this$0:Lcn/mucang/sundial/library/activity/LoginStudentActivity;

    .line 16
    invoke-static {v4}, Lcn/mucang/sundial/library/activity/LoginStudentActivity;->access$getPersonMode$p(Lcn/mucang/sundial/library/activity/LoginStudentActivity;)I

    move-result v5

    const/4 v6, 0x0

    .line 17
    iget-object v0, p0, Lcn/mucang/sundial/library/activity/LoginStudentActivity$initQrCode$1$1$1$onCallback$1;->$qrAuthUser:Lcn/mucang/android/account/qrcode/model/QrAuthUser;

    if-eqz v0, :cond_6

    invoke-virtual {v0}, Lcn/mucang/android/account/data/AuthUser;->getAuthToken()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_6

    goto :goto_0

    :cond_6
    const-string v0, ""

    :goto_0
    move-object v7, v0

    const/4 v8, 0x0

    const/16 v9, 0x14

    const/4 v10, 0x0

    .line 18
    invoke-static/range {v3 .. v10}, Lcn/mucang/sundial/library/util/LoginUtil;->loginWithFaceCheck$default(Lcn/mucang/sundial/library/util/LoginUtil;Lcn/mucang/sundial/library/activity/BaseActivity;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Object;)V

    goto :goto_1

    .line 19
    :cond_7
    iget-object v0, p0, Lcn/mucang/sundial/library/activity/LoginStudentActivity$initQrCode$1$1$1$onCallback$1;->this$0:Lcn/mucang/sundial/library/activity/LoginStudentActivity$initQrCode$1$1$1;

    iget-object v0, v0, Lcn/mucang/sundial/library/activity/LoginStudentActivity$initQrCode$1$1$1;->this$0:Lcn/mucang/sundial/library/activity/LoginStudentActivity$initQrCode$1$1;

    iget-object v0, v0, Lcn/mucang/sundial/library/activity/LoginStudentActivity$initQrCode$1$1;->this$0:Lcn/mucang/sundial/library/activity/LoginStudentActivity$initQrCode$1;

    iget-object v0, v0, Lcn/mucang/sundial/library/activity/LoginStudentActivity$initQrCode$1;->this$0:Lcn/mucang/sundial/library/activity/LoginStudentActivity;

    invoke-static {v0}, Lcn/mucang/sundial/library/activity/LoginStudentActivity;->access$getBinding$p(Lcn/mucang/sundial/library/activity/LoginStudentActivity;)Lcn/mucang/sundial/library/databinding/TtActivityStudentLoginBinding;

    move-result-object v0

    iget-object v0, v0, Lcn/mucang/sundial/library/databinding/TtActivityStudentLoginBinding;->invalidAppQrCode:Landroid/widget/TextView;

    invoke-static {v0, v1}, Lkotlin/jvm/internal/r;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_1

    .line 20
    :cond_8
    iget-object v0, p0, Lcn/mucang/sundial/library/activity/LoginStudentActivity$initQrCode$1$1$1$onCallback$1;->this$0:Lcn/mucang/sundial/library/activity/LoginStudentActivity$initQrCode$1$1$1;

    iget-object v0, v0, Lcn/mucang/sundial/library/activity/LoginStudentActivity$initQrCode$1$1$1;->this$0:Lcn/mucang/sundial/library/activity/LoginStudentActivity$initQrCode$1$1;

    iget-object v0, v0, Lcn/mucang/sundial/library/activity/LoginStudentActivity$initQrCode$1$1;->this$0:Lcn/mucang/sundial/library/activity/LoginStudentActivity$initQrCode$1;

    iget-object v0, v0, Lcn/mucang/sundial/library/activity/LoginStudentActivity$initQrCode$1;->this$0:Lcn/mucang/sundial/library/activity/LoginStudentActivity;

    invoke-static {v0}, Lcn/mucang/sundial/library/activity/LoginStudentActivity;->access$getBinding$p(Lcn/mucang/sundial/library/activity/LoginStudentActivity;)Lcn/mucang/sundial/library/databinding/TtActivityStudentLoginBinding;

    move-result-object v0

    iget-object v0, v0, Lcn/mucang/sundial/library/databinding/TtActivityStudentLoginBinding;->invalidAppQrCode:Landroid/widget/TextView;

    invoke-static {v0, v1}, Lkotlin/jvm/internal/r;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    :goto_1
    return-void
.end method
