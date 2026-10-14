.class Lcn/mucang/android/core/api/verify/captcha/CaptchaVerifyActivity$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnCancelListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/mucang/android/core/api/verify/captcha/CaptchaVerifyActivity;->initProgressDialog()V
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
    iput-object p1, p0, Lcn/mucang/android/core/api/verify/captcha/CaptchaVerifyActivity$1;->this$0:Lcn/mucang/android/core/api/verify/captcha/CaptchaVerifyActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancel(Landroid/content/DialogInterface;)V
    .locals 0

    .line 1
    iget-object p1, p0, Lcn/mucang/android/core/api/verify/captcha/CaptchaVerifyActivity$1;->this$0:Lcn/mucang/android/core/api/verify/captcha/CaptchaVerifyActivity;

    invoke-virtual {p1}, Landroid/app/Activity;->isFinishing()Z

    move-result p1

    if-eqz p1, :cond_0

    return-void

    .line 2
    :cond_0
    iget-object p1, p0, Lcn/mucang/android/core/api/verify/captcha/CaptchaVerifyActivity$1;->this$0:Lcn/mucang/android/core/api/verify/captcha/CaptchaVerifyActivity;

    invoke-static {p1}, Lcn/mucang/android/core/api/verify/captcha/CaptchaVerifyActivity;->access$000(Lcn/mucang/android/core/api/verify/captcha/CaptchaVerifyActivity;)Ljava/util/Timer;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 3
    iget-object p1, p0, Lcn/mucang/android/core/api/verify/captcha/CaptchaVerifyActivity$1;->this$0:Lcn/mucang/android/core/api/verify/captcha/CaptchaVerifyActivity;

    invoke-static {p1}, Lcn/mucang/android/core/api/verify/captcha/CaptchaVerifyActivity;->access$000(Lcn/mucang/android/core/api/verify/captcha/CaptchaVerifyActivity;)Ljava/util/Timer;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/Timer;->cancel()V

    .line 4
    iget-object p1, p0, Lcn/mucang/android/core/api/verify/captcha/CaptchaVerifyActivity$1;->this$0:Lcn/mucang/android/core/api/verify/captcha/CaptchaVerifyActivity;

    invoke-static {p1}, Lcn/mucang/android/core/api/verify/captcha/CaptchaVerifyActivity;->access$000(Lcn/mucang/android/core/api/verify/captcha/CaptchaVerifyActivity;)Ljava/util/Timer;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/Timer;->purge()I

    .line 5
    :cond_1
    iget-object p1, p0, Lcn/mucang/android/core/api/verify/captcha/CaptchaVerifyActivity$1;->this$0:Lcn/mucang/android/core/api/verify/captcha/CaptchaVerifyActivity;

    invoke-static {p1}, Lcn/mucang/android/core/api/verify/captcha/CaptchaVerifyActivity;->access$100(Lcn/mucang/android/core/api/verify/captcha/CaptchaVerifyActivity;)Lcn/mucang/android/core/api/verify/captcha/CaptchaListener;

    move-result-object p1

    if-eqz p1, :cond_2

    .line 6
    iget-object p1, p0, Lcn/mucang/android/core/api/verify/captcha/CaptchaVerifyActivity$1;->this$0:Lcn/mucang/android/core/api/verify/captcha/CaptchaVerifyActivity;

    invoke-static {p1}, Lcn/mucang/android/core/api/verify/captcha/CaptchaVerifyActivity;->access$100(Lcn/mucang/android/core/api/verify/captcha/CaptchaVerifyActivity;)Lcn/mucang/android/core/api/verify/captcha/CaptchaListener;

    move-result-object p1

    invoke-interface {p1}, Lcn/mucang/android/core/api/verify/captcha/CaptchaListener;->onCancel()V

    :cond_2
    return-void
.end method
