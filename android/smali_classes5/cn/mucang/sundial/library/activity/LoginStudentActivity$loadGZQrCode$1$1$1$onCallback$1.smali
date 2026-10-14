.class final Lcn/mucang/sundial/library/activity/LoginStudentActivity$loadGZQrCode$1$1$1$onCallback$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/mucang/sundial/library/activity/LoginStudentActivity$loadGZQrCode$1$1$1;->onCallback(ILcn/mucang/sundial/library/qrcode/model/GZQrAuthUser;)V
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
.field final synthetic $qrAuthUser:Lcn/mucang/sundial/library/qrcode/model/GZQrAuthUser;

.field final synthetic $scanLoginStatus:I

.field final synthetic this$0:Lcn/mucang/sundial/library/activity/LoginStudentActivity$loadGZQrCode$1$1$1;


# direct methods
.method constructor <init>(Lcn/mucang/sundial/library/activity/LoginStudentActivity$loadGZQrCode$1$1$1;ILcn/mucang/sundial/library/qrcode/model/GZQrAuthUser;)V
    .locals 0

    iput-object p1, p0, Lcn/mucang/sundial/library/activity/LoginStudentActivity$loadGZQrCode$1$1$1$onCallback$1;->this$0:Lcn/mucang/sundial/library/activity/LoginStudentActivity$loadGZQrCode$1$1$1;

    iput p2, p0, Lcn/mucang/sundial/library/activity/LoginStudentActivity$loadGZQrCode$1$1$1$onCallback$1;->$scanLoginStatus:I

    iput-object p3, p0, Lcn/mucang/sundial/library/activity/LoginStudentActivity$loadGZQrCode$1$1$1$onCallback$1;->$qrAuthUser:Lcn/mucang/sundial/library/qrcode/model/GZQrAuthUser;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 13

    .line 1
    iget v0, p0, Lcn/mucang/sundial/library/activity/LoginStudentActivity$loadGZQrCode$1$1$1$onCallback$1;->$scanLoginStatus:I

    const/4 v1, 0x0

    const-string v2, "binding.gzStudent.gzInvalidAppQrCode"

    const/16 v3, 0x4e48

    if-eq v0, v3, :cond_9

    const/4 v3, 0x3

    if-ne v0, v3, :cond_0

    goto/16 :goto_2

    :cond_0
    if-nez v0, :cond_1

    .line 2
    iget-object v0, p0, Lcn/mucang/sundial/library/activity/LoginStudentActivity$loadGZQrCode$1$1$1$onCallback$1;->this$0:Lcn/mucang/sundial/library/activity/LoginStudentActivity$loadGZQrCode$1$1$1;

    iget-object v0, v0, Lcn/mucang/sundial/library/activity/LoginStudentActivity$loadGZQrCode$1$1$1;->this$0:Lcn/mucang/sundial/library/activity/LoginStudentActivity$loadGZQrCode$1$1;

    iget-object v0, v0, Lcn/mucang/sundial/library/activity/LoginStudentActivity$loadGZQrCode$1$1;->this$0:Lcn/mucang/sundial/library/activity/LoginStudentActivity$loadGZQrCode$1;

    iget-object v0, v0, Lcn/mucang/sundial/library/activity/LoginStudentActivity$loadGZQrCode$1;->this$0:Lcn/mucang/sundial/library/activity/LoginStudentActivity;

    invoke-static {v0}, Lcn/mucang/sundial/library/activity/LoginStudentActivity;->access$getBinding$p(Lcn/mucang/sundial/library/activity/LoginStudentActivity;)Lcn/mucang/sundial/library/databinding/TtActivityStudentLoginBinding;

    move-result-object v0

    iget-object v0, v0, Lcn/mucang/sundial/library/databinding/TtActivityStudentLoginBinding;->gzStudent:Lcn/mucang/sundial/library/databinding/TtLayoutStudentQrcodeBinding;

    iget-object v0, v0, Lcn/mucang/sundial/library/databinding/TtLayoutStudentQrcodeBinding;->gzInvalidAppQrCode:Landroid/widget/TextView;

    invoke-static {v0, v2}, Lkotlin/jvm/internal/r;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const/16 v1, 0x8

    .line 3
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_3

    :cond_1
    const/4 v3, 0x1

    const/4 v4, 0x2

    if-eq v0, v3, :cond_2

    if-ne v0, v4, :cond_a

    .line 4
    :cond_2
    sget-object v0, Lcn/mucang/sundial/library/qrcode/GZQrCodeHelper;->Companion:Lcn/mucang/sundial/library/qrcode/GZQrCodeHelper$Companion;

    invoke-virtual {v0}, Lcn/mucang/sundial/library/qrcode/GZQrCodeHelper$Companion;->getInstance()Lcn/mucang/sundial/library/qrcode/GZQrCodeHelper;

    move-result-object v0

    invoke-virtual {v0}, Lcn/mucang/sundial/library/qrcode/GZQrCodeHelper;->stopListenLoginStatus()V

    .line 5
    iget-object v0, p0, Lcn/mucang/sundial/library/activity/LoginStudentActivity$loadGZQrCode$1$1$1$onCallback$1;->this$0:Lcn/mucang/sundial/library/activity/LoginStudentActivity$loadGZQrCode$1$1$1;

    iget-object v0, v0, Lcn/mucang/sundial/library/activity/LoginStudentActivity$loadGZQrCode$1$1$1;->this$0:Lcn/mucang/sundial/library/activity/LoginStudentActivity$loadGZQrCode$1$1;

    iget-object v0, v0, Lcn/mucang/sundial/library/activity/LoginStudentActivity$loadGZQrCode$1$1;->this$0:Lcn/mucang/sundial/library/activity/LoginStudentActivity$loadGZQrCode$1;

    iget-object v0, v0, Lcn/mucang/sundial/library/activity/LoginStudentActivity$loadGZQrCode$1;->this$0:Lcn/mucang/sundial/library/activity/LoginStudentActivity;

    invoke-static {v0}, Lcn/mucang/sundial/library/activity/LoginStudentActivity;->access$getBinding$p(Lcn/mucang/sundial/library/activity/LoginStudentActivity;)Lcn/mucang/sundial/library/databinding/TtActivityStudentLoginBinding;

    move-result-object v0

    iget-object v0, v0, Lcn/mucang/sundial/library/databinding/TtActivityStudentLoginBinding;->gzStudent:Lcn/mucang/sundial/library/databinding/TtLayoutStudentQrcodeBinding;

    iget-object v0, v0, Lcn/mucang/sundial/library/databinding/TtLayoutStudentQrcodeBinding;->gzInvalidAppQrCode:Landroid/widget/TextView;

    invoke-static {v0, v2}, Lkotlin/jvm/internal/r;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 7
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "\u7ca4\u5b66\u8f66\u5b66\u5458\u626b\u7801\u6210\u529f: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcn/mucang/sundial/library/activity/LoginStudentActivity$loadGZQrCode$1$1$1$onCallback$1;->$qrAuthUser:Lcn/mucang/sundial/library/qrcode/model/GZQrAuthUser;

    const-string v2, ""

    if-eqz v1, :cond_3

    invoke-virtual {v1}, Lcn/mucang/sundial/library/qrcode/model/GZQrAuthUser;->getIdCard()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_3

    goto :goto_0

    :cond_3
    move-object v1, v2

    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcn/mucang/sundial/android/log/SundialLog;->normal(Ljava/lang/Object;)V

    .line 8
    iget-object v0, p0, Lcn/mucang/sundial/library/activity/LoginStudentActivity$loadGZQrCode$1$1$1$onCallback$1;->this$0:Lcn/mucang/sundial/library/activity/LoginStudentActivity$loadGZQrCode$1$1$1;

    iget-object v0, v0, Lcn/mucang/sundial/library/activity/LoginStudentActivity$loadGZQrCode$1$1$1;->this$0:Lcn/mucang/sundial/library/activity/LoginStudentActivity$loadGZQrCode$1$1;

    iget-object v0, v0, Lcn/mucang/sundial/library/activity/LoginStudentActivity$loadGZQrCode$1$1;->this$0:Lcn/mucang/sundial/library/activity/LoginStudentActivity$loadGZQrCode$1;

    iget-object v0, v0, Lcn/mucang/sundial/library/activity/LoginStudentActivity$loadGZQrCode$1;->this$0:Lcn/mucang/sundial/library/activity/LoginStudentActivity;

    invoke-static {v0}, Lcn/mucang/sundial/library/activity/LoginStudentActivity;->access$getCheckMode$p(Lcn/mucang/sundial/library/activity/LoginStudentActivity;)I

    move-result v0

    sget-object v1, Lcn/mucang/sundial/library/entity/CheckMode;->SIGN_IN:Lcn/mucang/sundial/library/entity/CheckMode;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    if-ne v0, v1, :cond_8

    .line 9
    invoke-static {}, Lcn/mucang/sundial/android/SundialManager;->getInstance()Lcn/mucang/sundial/android/SundialManager;

    move-result-object v0

    const-string v1, "SundialManager.getInstance()"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/r;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0}, Lcn/mucang/sundial/android/SundialManager;->isRegister()Z

    move-result v0

    const-string v1, "Utils.getApp()"

    if-nez v0, :cond_4

    .line 10
    invoke-static {}, Lcom/blankj/utilcode/util/Utils;->d()Landroid/app/Application;

    move-result-object v0

    invoke-static {v0, v1}, Lkotlin/jvm/internal/r;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0}, Landroid/app/Application;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcn/mucang/sundial/library/R$string;->tt_please_register_device:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-static {v0}, Lcn/mucang/sundial/android/log/SundialLog;->normal(Ljava/lang/Object;)V

    .line 11
    sget-object v0, Lcn/mucang/sundial/library/util/ToastUtil;->INSTANCE:Lcn/mucang/sundial/library/util/ToastUtil;

    invoke-virtual {v0, v1}, Lcn/mucang/sundial/library/util/ToastUtil;->showToastOnce(I)V

    goto/16 :goto_3

    .line 12
    :cond_4
    invoke-static {}, Lcn/mucang/sundial/android/tcp/utils/DeviceUtils;->hasNetWork()Z

    move-result v0

    const/4 v3, 0x0

    if-nez v0, :cond_5

    .line 13
    invoke-static {}, Lcom/blankj/utilcode/util/Utils;->d()Landroid/app/Application;

    move-result-object v0

    invoke-static {v0, v1}, Lkotlin/jvm/internal/r;->d(Ljava/lang/Object;Ljava/lang/String;)V

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

    invoke-static {v0, v3, v4, v3}, Lcn/mucang/sundial/library/tts/Tts;->speak$default(Ljava/lang/String;Lcn/mucang/sundial/library/tts/SpeakListener;ILjava/lang/Object;)V

    goto :goto_3

    .line 15
    :cond_5
    invoke-static {}, Lcn/mucang/sundial/android/location/AppLocation;->isLocationValid()Z

    move-result v0

    if-nez v0, :cond_6

    const-string v0, "\u83b7\u53d6\u5b9a\u4f4d\u4fe1\u606f\u5931\u8d25"

    .line 16
    invoke-static {v0, v3, v4, v3}, Lcn/mucang/sundial/library/tts/Tts;->speak$default(Ljava/lang/String;Lcn/mucang/sundial/library/tts/SpeakListener;ILjava/lang/Object;)V

    goto :goto_3

    .line 17
    :cond_6
    sget-object v5, Lcn/mucang/sundial/library/util/LoginUtil;->INSTANCE:Lcn/mucang/sundial/library/util/LoginUtil;

    .line 18
    iget-object v0, p0, Lcn/mucang/sundial/library/activity/LoginStudentActivity$loadGZQrCode$1$1$1$onCallback$1;->this$0:Lcn/mucang/sundial/library/activity/LoginStudentActivity$loadGZQrCode$1$1$1;

    iget-object v0, v0, Lcn/mucang/sundial/library/activity/LoginStudentActivity$loadGZQrCode$1$1$1;->this$0:Lcn/mucang/sundial/library/activity/LoginStudentActivity$loadGZQrCode$1$1;

    iget-object v0, v0, Lcn/mucang/sundial/library/activity/LoginStudentActivity$loadGZQrCode$1$1;->this$0:Lcn/mucang/sundial/library/activity/LoginStudentActivity$loadGZQrCode$1;

    iget-object v6, v0, Lcn/mucang/sundial/library/activity/LoginStudentActivity$loadGZQrCode$1;->this$0:Lcn/mucang/sundial/library/activity/LoginStudentActivity;

    .line 19
    invoke-static {v6}, Lcn/mucang/sundial/library/activity/LoginStudentActivity;->access$getPersonMode$p(Lcn/mucang/sundial/library/activity/LoginStudentActivity;)I

    move-result v7

    .line 20
    iget-object v0, p0, Lcn/mucang/sundial/library/activity/LoginStudentActivity$loadGZQrCode$1$1$1$onCallback$1;->$qrAuthUser:Lcn/mucang/sundial/library/qrcode/model/GZQrAuthUser;

    if-eqz v0, :cond_7

    invoke-virtual {v0}, Lcn/mucang/sundial/library/qrcode/model/GZQrAuthUser;->getIdCard()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_7

    move-object v8, v0

    goto :goto_1

    :cond_7
    move-object v8, v2

    :goto_1
    const/4 v9, 0x0

    const/4 v10, 0x0

    const/16 v11, 0x18

    const/4 v12, 0x0

    .line 21
    invoke-static/range {v5 .. v12}, Lcn/mucang/sundial/library/util/LoginUtil;->loginWithFaceCheck$default(Lcn/mucang/sundial/library/util/LoginUtil;Lcn/mucang/sundial/library/activity/BaseActivity;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Object;)V

    goto :goto_3

    .line 22
    :cond_8
    iget-object v0, p0, Lcn/mucang/sundial/library/activity/LoginStudentActivity$loadGZQrCode$1$1$1$onCallback$1;->this$0:Lcn/mucang/sundial/library/activity/LoginStudentActivity$loadGZQrCode$1$1$1;

    iget-object v0, v0, Lcn/mucang/sundial/library/activity/LoginStudentActivity$loadGZQrCode$1$1$1;->this$0:Lcn/mucang/sundial/library/activity/LoginStudentActivity$loadGZQrCode$1$1;

    iget-object v0, v0, Lcn/mucang/sundial/library/activity/LoginStudentActivity$loadGZQrCode$1$1;->this$0:Lcn/mucang/sundial/library/activity/LoginStudentActivity$loadGZQrCode$1;

    iget-object v0, v0, Lcn/mucang/sundial/library/activity/LoginStudentActivity$loadGZQrCode$1;->this$0:Lcn/mucang/sundial/library/activity/LoginStudentActivity;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/app/Activity;->setResult(I)V

    .line 23
    iget-object v0, p0, Lcn/mucang/sundial/library/activity/LoginStudentActivity$loadGZQrCode$1$1$1$onCallback$1;->this$0:Lcn/mucang/sundial/library/activity/LoginStudentActivity$loadGZQrCode$1$1$1;

    iget-object v0, v0, Lcn/mucang/sundial/library/activity/LoginStudentActivity$loadGZQrCode$1$1$1;->this$0:Lcn/mucang/sundial/library/activity/LoginStudentActivity$loadGZQrCode$1$1;

    iget-object v0, v0, Lcn/mucang/sundial/library/activity/LoginStudentActivity$loadGZQrCode$1$1;->this$0:Lcn/mucang/sundial/library/activity/LoginStudentActivity$loadGZQrCode$1;

    iget-object v0, v0, Lcn/mucang/sundial/library/activity/LoginStudentActivity$loadGZQrCode$1;->this$0:Lcn/mucang/sundial/library/activity/LoginStudentActivity;

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    goto :goto_3

    .line 24
    :cond_9
    :goto_2
    sget-object v0, Lcn/mucang/sundial/library/qrcode/GZQrCodeHelper;->Companion:Lcn/mucang/sundial/library/qrcode/GZQrCodeHelper$Companion;

    invoke-virtual {v0}, Lcn/mucang/sundial/library/qrcode/GZQrCodeHelper$Companion;->getInstance()Lcn/mucang/sundial/library/qrcode/GZQrCodeHelper;

    move-result-object v0

    invoke-virtual {v0}, Lcn/mucang/sundial/library/qrcode/GZQrCodeHelper;->stopListenLoginStatus()V

    .line 25
    iget-object v0, p0, Lcn/mucang/sundial/library/activity/LoginStudentActivity$loadGZQrCode$1$1$1$onCallback$1;->this$0:Lcn/mucang/sundial/library/activity/LoginStudentActivity$loadGZQrCode$1$1$1;

    iget-object v0, v0, Lcn/mucang/sundial/library/activity/LoginStudentActivity$loadGZQrCode$1$1$1;->this$0:Lcn/mucang/sundial/library/activity/LoginStudentActivity$loadGZQrCode$1$1;

    iget-object v0, v0, Lcn/mucang/sundial/library/activity/LoginStudentActivity$loadGZQrCode$1$1;->this$0:Lcn/mucang/sundial/library/activity/LoginStudentActivity$loadGZQrCode$1;

    iget-object v0, v0, Lcn/mucang/sundial/library/activity/LoginStudentActivity$loadGZQrCode$1;->this$0:Lcn/mucang/sundial/library/activity/LoginStudentActivity;

    invoke-static {v0}, Lcn/mucang/sundial/library/activity/LoginStudentActivity;->access$getBinding$p(Lcn/mucang/sundial/library/activity/LoginStudentActivity;)Lcn/mucang/sundial/library/databinding/TtActivityStudentLoginBinding;

    move-result-object v0

    iget-object v0, v0, Lcn/mucang/sundial/library/databinding/TtActivityStudentLoginBinding;->gzStudent:Lcn/mucang/sundial/library/databinding/TtLayoutStudentQrcodeBinding;

    iget-object v0, v0, Lcn/mucang/sundial/library/databinding/TtLayoutStudentQrcodeBinding;->gzInvalidAppQrCode:Landroid/widget/TextView;

    invoke-static {v0, v2}, Lkotlin/jvm/internal/r;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 26
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    :cond_a
    :goto_3
    return-void
.end method
