.class Lcn/mucang/android/core/api/verify/captcha/CaptchaVerifyActivity$3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnCancelListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/mucang/android/core/api/verify/captcha/CaptchaVerifyActivity;->initCaptchaDialog()Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcn/mucang/android/core/api/verify/captcha/CaptchaVerifyActivity;


# direct methods
.method constructor <init>(Lcn/mucang/android/core/api/verify/captcha/CaptchaVerifyActivity;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcn/mucang/android/core/api/verify/captcha/CaptchaVerifyActivity$3;->this$0:Lcn/mucang/android/core/api/verify/captcha/CaptchaVerifyActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancel(Landroid/content/DialogInterface;)V
    .locals 1

    .line 1
    iget-object p1, p0, Lcn/mucang/android/core/api/verify/captcha/CaptchaVerifyActivity$3;->this$0:Lcn/mucang/android/core/api/verify/captcha/CaptchaVerifyActivity;

    invoke-static {p1}, Lcn/mucang/android/core/api/verify/captcha/CaptchaVerifyActivity;->access$100(Lcn/mucang/android/core/api/verify/captcha/CaptchaVerifyActivity;)Lcn/mucang/android/core/api/verify/captcha/CaptchaListener;

    move-result-object p1

    invoke-interface {p1}, Lcn/mucang/android/core/api/verify/captcha/CaptchaListener;->onCancel()V

    .line 2
    iget-object p1, p0, Lcn/mucang/android/core/api/verify/captcha/CaptchaVerifyActivity$3;->this$0:Lcn/mucang/android/core/api/verify/captcha/CaptchaVerifyActivity;

    invoke-static {p1}, Lcn/mucang/android/core/api/verify/captcha/CaptchaVerifyActivity;->access$200(Lcn/mucang/android/core/api/verify/captcha/CaptchaVerifyActivity;)Landroid/app/ProgressDialog;

    move-result-object p1

    invoke-static {p1}, Lcn/mucang/android/core/utils/k;->b(Landroid/app/Dialog;)V

    const-string p1, "captcha"

    const-string v0, "\u7528\u6237\u53d6\u6d88\u9a8c\u8bc1"

    .line 3
    invoke-static {p1, v0}, Lcn/mucang/android/core/utils/t;->a(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method
