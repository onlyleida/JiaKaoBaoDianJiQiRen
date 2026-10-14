.class Lcn/mucang/android/account/activity/SMSVerifyActivity$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcn/mucang/android/core/api/c/a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/mucang/android/account/activity/SMSVerifyActivity;->x(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcn/mucang/android/core/api/c/a<",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Lcn/mucang/android/account/activity/SMSVerifyActivity;


# direct methods
.method constructor <init>(Lcn/mucang/android/account/activity/SMSVerifyActivity;Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcn/mucang/android/account/activity/SMSVerifyActivity$b;->b:Lcn/mucang/android/account/activity/SMSVerifyActivity;

    iput-object p2, p0, Lcn/mucang/android/account/activity/SMSVerifyActivity$b;->a:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcn/mucang/android/account/activity/SMSVerifyActivity$b;->b:Lcn/mucang/android/account/activity/SMSVerifyActivity;

    invoke-static {v0}, Lcn/mucang/android/account/activity/SMSVerifyActivity;->l(Lcn/mucang/android/account/activity/SMSVerifyActivity;)Lcn/mucang/android/framework/account/databinding/AccountApiVerifyActivitySmsBinding;

    move-result-object v0

    iget-object v0, v0, Lcn/mucang/android/framework/account/databinding/AccountApiVerifyActivitySmsBinding;->verifyError:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 2
    iget-object v0, p0, Lcn/mucang/android/account/activity/SMSVerifyActivity$b;->b:Lcn/mucang/android/account/activity/SMSVerifyActivity;

    invoke-static {v0}, Lcn/mucang/android/account/activity/SMSVerifyActivity;->n(Lcn/mucang/android/account/activity/SMSVerifyActivity;)Landroid/app/ProgressDialog;

    move-result-object v0

    const-string v1, "\u6b63\u5728\u9a8c\u8bc1"

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setTitle(Ljava/lang/CharSequence;)V

    .line 3
    iget-object v0, p0, Lcn/mucang/android/account/activity/SMSVerifyActivity$b;->b:Lcn/mucang/android/account/activity/SMSVerifyActivity;

    invoke-static {v0}, Lcn/mucang/android/account/activity/SMSVerifyActivity;->n(Lcn/mucang/android/account/activity/SMSVerifyActivity;)Landroid/app/ProgressDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->show()V

    return-void
.end method

.method public bridge synthetic b(Ljava/lang/Object;)V
    .locals 0

    .line 1
    check-cast p1, Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcn/mucang/android/account/activity/SMSVerifyActivity$b;->e(Ljava/lang/Void;)V

    return-void
.end method

.method public c(Ljava/lang/Exception;)V
    .locals 1

    .line 1
    instance-of v0, p1, Lcn/mucang/android/core/api/exception/ApiException;

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lcn/mucang/android/account/activity/SMSVerifyActivity$b;->b:Lcn/mucang/android/account/activity/SMSVerifyActivity;

    invoke-static {v0}, Lcn/mucang/android/account/activity/SMSVerifyActivity;->l(Lcn/mucang/android/account/activity/SMSVerifyActivity;)Lcn/mucang/android/framework/account/databinding/AccountApiVerifyActivitySmsBinding;

    move-result-object v0

    iget-object v0, v0, Lcn/mucang/android/framework/account/databinding/AccountApiVerifyActivitySmsBinding;->verifyError:Landroid/widget/TextView;

    check-cast p1, Lcn/mucang/android/core/api/exception/ApiException;

    invoke-virtual {p1}, Lcn/mucang/android/core/api/exception/ApiException;->getApiResponse()Lcn/mucang/android/core/api/ApiResponse;

    move-result-object p1

    invoke-virtual {p1}, Lcn/mucang/android/core/api/ApiResponse;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 3
    iget-object p1, p0, Lcn/mucang/android/account/activity/SMSVerifyActivity$b;->b:Lcn/mucang/android/account/activity/SMSVerifyActivity;

    invoke-static {p1}, Lcn/mucang/android/account/activity/SMSVerifyActivity;->l(Lcn/mucang/android/account/activity/SMSVerifyActivity;)Lcn/mucang/android/framework/account/databinding/AccountApiVerifyActivitySmsBinding;

    move-result-object p1

    iget-object p1, p1, Lcn/mucang/android/framework/account/databinding/AccountApiVerifyActivitySmsBinding;->verifyError:Landroid/widget/TextView;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    :cond_0
    return-void
.end method

.method public d()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcn/mucang/android/account/activity/SMSVerifyActivity$b;->b:Lcn/mucang/android/account/activity/SMSVerifyActivity;

    invoke-static {v0}, Lcn/mucang/android/account/activity/SMSVerifyActivity;->n(Lcn/mucang/android/account/activity/SMSVerifyActivity;)Landroid/app/ProgressDialog;

    move-result-object v0

    invoke-static {v0}, Lcn/mucang/android/core/utils/k;->b(Landroid/app/Dialog;)V

    return-void
.end method

.method public e(Ljava/lang/Void;)V
    .locals 2

    .line 1
    iget-object p1, p0, Lcn/mucang/android/account/activity/SMSVerifyActivity$b;->b:Lcn/mucang/android/account/activity/SMSVerifyActivity;

    invoke-static {p1}, Lcn/mucang/android/account/activity/SMSVerifyActivity;->m(Lcn/mucang/android/account/activity/SMSVerifyActivity;)Lcn/mucang/android/core/api/verify/e;

    move-result-object p1

    if-eqz p1, :cond_0

    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 2
    invoke-virtual {p1, v0, v1}, Lcn/mucang/android/core/api/verify/e;->c(ZLjava/lang/Object;)V

    .line 3
    :cond_0
    iget-object p1, p0, Lcn/mucang/android/account/activity/SMSVerifyActivity$b;->b:Lcn/mucang/android/account/activity/SMSVerifyActivity;

    invoke-virtual {p1}, Landroid/app/Activity;->finish()V

    return-void
.end method

.method public f()Ljava/lang/Void;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcn/mucang/android/account/activity/SMSVerifyActivity$b;->b:Lcn/mucang/android/account/activity/SMSVerifyActivity;

    invoke-static {v0}, Lcn/mucang/android/account/activity/SMSVerifyActivity;->g(Lcn/mucang/android/account/activity/SMSVerifyActivity;)Lcn/mucang/android/core/api/verify/d;

    move-result-object v0

    iget-object v1, p0, Lcn/mucang/android/account/activity/SMSVerifyActivity$b;->b:Lcn/mucang/android/account/activity/SMSVerifyActivity;

    invoke-static {v1}, Lcn/mucang/android/account/activity/SMSVerifyActivity;->h(Lcn/mucang/android/account/activity/SMSVerifyActivity;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcn/mucang/android/account/activity/SMSVerifyActivity$b;->a:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcn/mucang/android/core/api/verify/d;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

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
    invoke-virtual {p0}, Lcn/mucang/android/account/activity/SMSVerifyActivity$b;->f()Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method
