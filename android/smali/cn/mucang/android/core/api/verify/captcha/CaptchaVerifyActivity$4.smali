.class Lcn/mucang/android/core/api/verify/captcha/CaptchaVerifyActivity$4;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcn/mucang/android/core/api/verify/captcha/CaptchaListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/mucang/android/core/api/verify/captcha/CaptchaVerifyActivity;
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
    iput-object p1, p0, Lcn/mucang/android/core/api/verify/captcha/CaptchaVerifyActivity$4;->this$0:Lcn/mucang/android/core/api/verify/captcha/CaptchaVerifyActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public closeWindow()V
    .locals 3

    const-string v0, "captcha"

    const-string v1, "closeWindow"

    .line 1
    invoke-static {v0, v1}, Lcn/mucang/android/core/utils/t;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2
    iget-object v0, p0, Lcn/mucang/android/core/api/verify/captcha/CaptchaVerifyActivity$4;->this$0:Lcn/mucang/android/core/api/verify/captcha/CaptchaVerifyActivity;

    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 3
    :cond_0
    iget-object v0, p0, Lcn/mucang/android/core/api/verify/captcha/CaptchaVerifyActivity$4;->this$0:Lcn/mucang/android/core/api/verify/captcha/CaptchaVerifyActivity;

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcn/mucang/android/core/api/verify/captcha/CaptchaVerifyActivity;->access$300(Lcn/mucang/android/core/api/verify/captcha/CaptchaVerifyActivity;ZLjava/lang/Object;)V

    return-void
.end method

.method public onCancel()V
    .locals 3

    const-string v0, "captcha"

    const-string v1, "onCancel"

    .line 1
    invoke-static {v0, v1}, Lcn/mucang/android/core/utils/t;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2
    iget-object v0, p0, Lcn/mucang/android/core/api/verify/captcha/CaptchaVerifyActivity$4;->this$0:Lcn/mucang/android/core/api/verify/captcha/CaptchaVerifyActivity;

    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 3
    :cond_0
    iget-object v0, p0, Lcn/mucang/android/core/api/verify/captcha/CaptchaVerifyActivity$4;->this$0:Lcn/mucang/android/core/api/verify/captcha/CaptchaVerifyActivity;

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcn/mucang/android/core/api/verify/captcha/CaptchaVerifyActivity;->access$300(Lcn/mucang/android/core/api/verify/captcha/CaptchaVerifyActivity;ZLjava/lang/Object;)V

    return-void
.end method

.method public onError(Ljava/lang/String;)V
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onError s: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "captcha"

    invoke-static {v0, p1}, Lcn/mucang/android/core/utils/t;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2
    iget-object p1, p0, Lcn/mucang/android/core/api/verify/captcha/CaptchaVerifyActivity$4;->this$0:Lcn/mucang/android/core/api/verify/captcha/CaptchaVerifyActivity;

    invoke-virtual {p1}, Landroid/app/Activity;->isFinishing()Z

    move-result p1

    if-eqz p1, :cond_0

    return-void

    :cond_0
    const-string p1, "\u52a0\u8f7d\u9a8c\u8bc1\u7801\u5931\u8d25"

    .line 3
    invoke-static {p1}, Lcn/mucang/android/core/utils/u;->h(Ljava/lang/String;)V

    .line 4
    iget-object p1, p0, Lcn/mucang/android/core/api/verify/captcha/CaptchaVerifyActivity$4;->this$0:Lcn/mucang/android/core/api/verify/captcha/CaptchaVerifyActivity;

    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-static {p1, v0, v1}, Lcn/mucang/android/core/api/verify/captcha/CaptchaVerifyActivity;->access$300(Lcn/mucang/android/core/api/verify/captcha/CaptchaVerifyActivity;ZLjava/lang/Object;)V

    return-void
.end method

.method public onReady(Z)V
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onReady b: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "captcha"

    invoke-static {v0, p1}, Lcn/mucang/android/core/utils/t;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2
    iget-object p1, p0, Lcn/mucang/android/core/api/verify/captcha/CaptchaVerifyActivity$4;->this$0:Lcn/mucang/android/core/api/verify/captcha/CaptchaVerifyActivity;

    invoke-virtual {p1}, Landroid/app/Activity;->isFinishing()Z

    move-result p1

    if-eqz p1, :cond_0

    return-void

    .line 3
    :cond_0
    iget-object p1, p0, Lcn/mucang/android/core/api/verify/captcha/CaptchaVerifyActivity$4;->this$0:Lcn/mucang/android/core/api/verify/captcha/CaptchaVerifyActivity;

    invoke-static {p1}, Lcn/mucang/android/core/api/verify/captcha/CaptchaVerifyActivity;->access$200(Lcn/mucang/android/core/api/verify/captcha/CaptchaVerifyActivity;)Landroid/app/ProgressDialog;

    move-result-object p1

    invoke-static {p1}, Lcn/mucang/android/core/utils/k;->b(Landroid/app/Dialog;)V

    return-void
.end method

.method public onValidate(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onValidate result: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " validate: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " message: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    const-string v0, "captcha"

    invoke-static {v0, p3}, Lcn/mucang/android/core/utils/t;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2
    iget-object p3, p0, Lcn/mucang/android/core/api/verify/captcha/CaptchaVerifyActivity$4;->this$0:Lcn/mucang/android/core/api/verify/captcha/CaptchaVerifyActivity;

    invoke-virtual {p3}, Landroid/app/Activity;->isFinishing()Z

    move-result p3

    if-eqz p3, :cond_0

    return-void

    :cond_0
    const-string p3, "true"

    .line 3
    invoke-virtual {p3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    invoke-static {p2}, Lcn/mucang/android/core/utils/n0;->g(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 4
    new-instance p1, Lcn/mucang/android/core/http/MucangNameValuePair;

    const-string p3, "NECaptchaValidate"

    invoke-direct {p1, p3, p2}, Lcn/mucang/android/core/http/MucangNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 5
    new-instance p2, Lcn/mucang/android/core/http/MucangNameValuePair;

    iget-object p3, p0, Lcn/mucang/android/core/api/verify/captcha/CaptchaVerifyActivity$4;->this$0:Lcn/mucang/android/core/api/verify/captcha/CaptchaVerifyActivity;

    invoke-static {p3}, Lcn/mucang/android/core/api/verify/captcha/CaptchaVerifyActivity;->access$400(Lcn/mucang/android/core/api/verify/captcha/CaptchaVerifyActivity;)Ljava/lang/String;

    move-result-object p3

    const-string v0, "_dunActionId"

    invoke-direct {p2, v0, p3}, Lcn/mucang/android/core/http/MucangNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 6
    new-instance p3, Ljava/util/ArrayList;

    invoke-direct {p3}, Ljava/util/ArrayList;-><init>()V

    .line 7
    invoke-interface {p3, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 8
    invoke-interface {p3, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 9
    iget-object p1, p0, Lcn/mucang/android/core/api/verify/captcha/CaptchaVerifyActivity$4;->this$0:Lcn/mucang/android/core/api/verify/captcha/CaptchaVerifyActivity;

    const/4 p2, 0x1

    invoke-static {p1, p2, p3}, Lcn/mucang/android/core/api/verify/captcha/CaptchaVerifyActivity;->access$300(Lcn/mucang/android/core/api/verify/captcha/CaptchaVerifyActivity;ZLjava/lang/Object;)V

    :cond_1
    return-void
.end method
