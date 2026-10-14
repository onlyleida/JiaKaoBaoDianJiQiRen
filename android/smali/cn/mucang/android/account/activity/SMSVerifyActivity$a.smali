.class Lcn/mucang/android/account/activity/SMSVerifyActivity$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcn/mucang/android/core/api/c/a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/mucang/android/account/activity/SMSVerifyActivity;->w()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcn/mucang/android/core/api/c/a<",
        "Lcn/mucang/android/core/api/verify/SmsCheckInfo;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcn/mucang/android/account/activity/SMSVerifyActivity;


# direct methods
.method constructor <init>(Lcn/mucang/android/account/activity/SMSVerifyActivity;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcn/mucang/android/account/activity/SMSVerifyActivity$a;->a:Lcn/mucang/android/account/activity/SMSVerifyActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcn/mucang/android/account/activity/SMSVerifyActivity$a;->a:Lcn/mucang/android/account/activity/SMSVerifyActivity;

    invoke-static {v0}, Lcn/mucang/android/account/activity/SMSVerifyActivity;->j(Lcn/mucang/android/account/activity/SMSVerifyActivity;)Landroid/os/CountDownTimer;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lcn/mucang/android/account/activity/SMSVerifyActivity$a;->a:Lcn/mucang/android/account/activity/SMSVerifyActivity;

    invoke-static {v0}, Lcn/mucang/android/account/activity/SMSVerifyActivity;->j(Lcn/mucang/android/account/activity/SMSVerifyActivity;)Landroid/os/CountDownTimer;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/CountDownTimer;->cancel()V

    .line 3
    :cond_0
    iget-object v0, p0, Lcn/mucang/android/account/activity/SMSVerifyActivity$a;->a:Lcn/mucang/android/account/activity/SMSVerifyActivity;

    invoke-static {v0}, Lcn/mucang/android/account/activity/SMSVerifyActivity;->l(Lcn/mucang/android/account/activity/SMSVerifyActivity;)Lcn/mucang/android/framework/account/databinding/AccountApiVerifyActivitySmsBinding;

    move-result-object v0

    iget-object v0, v0, Lcn/mucang/android/framework/account/databinding/AccountApiVerifyActivitySmsBinding;->codeInput:Landroid/widget/EditText;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 4
    iget-object v0, p0, Lcn/mucang/android/account/activity/SMSVerifyActivity$a;->a:Lcn/mucang/android/account/activity/SMSVerifyActivity;

    invoke-static {v0}, Lcn/mucang/android/account/activity/SMSVerifyActivity;->l(Lcn/mucang/android/account/activity/SMSVerifyActivity;)Lcn/mucang/android/framework/account/databinding/AccountApiVerifyActivitySmsBinding;

    move-result-object v0

    iget-object v0, v0, Lcn/mucang/android/framework/account/databinding/AccountApiVerifyActivitySmsBinding;->sendSms:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 5
    iget-object v0, p0, Lcn/mucang/android/account/activity/SMSVerifyActivity$a;->a:Lcn/mucang/android/account/activity/SMSVerifyActivity;

    invoke-static {v0}, Lcn/mucang/android/account/activity/SMSVerifyActivity;->l(Lcn/mucang/android/account/activity/SMSVerifyActivity;)Lcn/mucang/android/framework/account/databinding/AccountApiVerifyActivitySmsBinding;

    move-result-object v0

    iget-object v0, v0, Lcn/mucang/android/framework/account/databinding/AccountApiVerifyActivitySmsBinding;->sendSms:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setEnabled(Z)V

    return-void
.end method

.method public bridge synthetic b(Ljava/lang/Object;)V
    .locals 0

    .line 1
    check-cast p1, Lcn/mucang/android/core/api/verify/SmsCheckInfo;

    invoke-virtual {p0, p1}, Lcn/mucang/android/account/activity/SMSVerifyActivity$a;->e(Lcn/mucang/android/core/api/verify/SmsCheckInfo;)V

    return-void
.end method

.method public c(Ljava/lang/Exception;)V
    .locals 1

    .line 1
    instance-of p1, p1, Lcn/mucang/android/core/api/exception/ApiException;

    if-eqz p1, :cond_0

    .line 2
    iget-object p1, p0, Lcn/mucang/android/account/activity/SMSVerifyActivity$a;->a:Lcn/mucang/android/account/activity/SMSVerifyActivity;

    invoke-static {p1}, Lcn/mucang/android/account/activity/SMSVerifyActivity;->l(Lcn/mucang/android/account/activity/SMSVerifyActivity;)Lcn/mucang/android/framework/account/databinding/AccountApiVerifyActivitySmsBinding;

    move-result-object p1

    iget-object p1, p1, Lcn/mucang/android/framework/account/databinding/AccountApiVerifyActivitySmsBinding;->verifyError:Landroid/widget/TextView;

    const-string v0, "\u83b7\u53d6\u9a8c\u8bc1\u7801\u5931\u8d25,\u8bf7\u91cd\u8bd5"

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 3
    iget-object p1, p0, Lcn/mucang/android/account/activity/SMSVerifyActivity$a;->a:Lcn/mucang/android/account/activity/SMSVerifyActivity;

    invoke-static {p1}, Lcn/mucang/android/account/activity/SMSVerifyActivity;->l(Lcn/mucang/android/account/activity/SMSVerifyActivity;)Lcn/mucang/android/framework/account/databinding/AccountApiVerifyActivitySmsBinding;

    move-result-object p1

    iget-object p1, p1, Lcn/mucang/android/framework/account/databinding/AccountApiVerifyActivitySmsBinding;->verifyError:Landroid/widget/TextView;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 4
    :cond_0
    iget-object p1, p0, Lcn/mucang/android/account/activity/SMSVerifyActivity$a;->a:Lcn/mucang/android/account/activity/SMSVerifyActivity;

    invoke-static {p1}, Lcn/mucang/android/account/activity/SMSVerifyActivity;->l(Lcn/mucang/android/account/activity/SMSVerifyActivity;)Lcn/mucang/android/framework/account/databinding/AccountApiVerifyActivitySmsBinding;

    move-result-object p1

    iget-object p1, p1, Lcn/mucang/android/framework/account/databinding/AccountApiVerifyActivitySmsBinding;->sendSms:Landroid/widget/TextView;

    const-string v0, "\u518d\u6b21\u53d1\u9001"

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 5
    iget-object p1, p0, Lcn/mucang/android/account/activity/SMSVerifyActivity$a;->a:Lcn/mucang/android/account/activity/SMSVerifyActivity;

    invoke-static {p1}, Lcn/mucang/android/account/activity/SMSVerifyActivity;->l(Lcn/mucang/android/account/activity/SMSVerifyActivity;)Lcn/mucang/android/framework/account/databinding/AccountApiVerifyActivitySmsBinding;

    move-result-object p1

    iget-object p1, p1, Lcn/mucang/android/framework/account/databinding/AccountApiVerifyActivitySmsBinding;->sendSms:Landroid/widget/TextView;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setEnabled(Z)V

    return-void
.end method

.method public d()V
    .locals 0

    return-void
.end method

.method public e(Lcn/mucang/android/core/api/verify/SmsCheckInfo;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcn/mucang/android/account/activity/SMSVerifyActivity$a;->a:Lcn/mucang/android/account/activity/SMSVerifyActivity;

    invoke-virtual {p1}, Lcn/mucang/android/core/api/verify/SmsCheckInfo;->getSmsId()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcn/mucang/android/account/activity/SMSVerifyActivity;->i(Lcn/mucang/android/account/activity/SMSVerifyActivity;Ljava/lang/String;)Ljava/lang/String;

    .line 2
    iget-object v0, p0, Lcn/mucang/android/account/activity/SMSVerifyActivity$a;->a:Lcn/mucang/android/account/activity/SMSVerifyActivity;

    new-instance v1, Lcn/mucang/android/account/activity/SMSVerifyActivity$c;

    iget-object v2, p0, Lcn/mucang/android/account/activity/SMSVerifyActivity$a;->a:Lcn/mucang/android/account/activity/SMSVerifyActivity;

    invoke-virtual {p1}, Lcn/mucang/android/core/api/verify/SmsCheckInfo;->getRestSeconds()I

    move-result p1

    mul-int/lit16 p1, p1, 0x3e8

    invoke-direct {v1, v2, p1}, Lcn/mucang/android/account/activity/SMSVerifyActivity$c;-><init>(Lcn/mucang/android/account/activity/SMSVerifyActivity;I)V

    invoke-static {v0, v1}, Lcn/mucang/android/account/activity/SMSVerifyActivity;->k(Lcn/mucang/android/account/activity/SMSVerifyActivity;Landroid/os/CountDownTimer;)Landroid/os/CountDownTimer;

    .line 3
    iget-object p1, p0, Lcn/mucang/android/account/activity/SMSVerifyActivity$a;->a:Lcn/mucang/android/account/activity/SMSVerifyActivity;

    invoke-static {p1}, Lcn/mucang/android/account/activity/SMSVerifyActivity;->j(Lcn/mucang/android/account/activity/SMSVerifyActivity;)Landroid/os/CountDownTimer;

    move-result-object p1

    invoke-virtual {p1}, Landroid/os/CountDownTimer;->start()Landroid/os/CountDownTimer;

    return-void
.end method

.method public f()Lcn/mucang/android/core/api/verify/SmsCheckInfo;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcn/mucang/android/account/activity/SMSVerifyActivity$a;->a:Lcn/mucang/android/account/activity/SMSVerifyActivity;

    invoke-static {v0}, Lcn/mucang/android/account/activity/SMSVerifyActivity;->g(Lcn/mucang/android/account/activity/SMSVerifyActivity;)Lcn/mucang/android/core/api/verify/d;

    move-result-object v0

    invoke-virtual {v0}, Lcn/mucang/android/core/api/verify/d;->b()Lcn/mucang/android/core/api/verify/SmsCheckInfo;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic request()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lcn/mucang/android/account/activity/SMSVerifyActivity$a;->f()Lcn/mucang/android/core/api/verify/SmsCheckInfo;

    move-result-object v0

    return-object v0
.end method
