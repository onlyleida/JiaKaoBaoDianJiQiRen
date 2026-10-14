.class Lcn/mucang/android/core/api/verify/captcha/JSInterface$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/mucang/android/core/api/verify/captcha/JSInterface;->onValidate(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcn/mucang/android/core/api/verify/captcha/JSInterface;

.field final synthetic val$message:Ljava/lang/String;

.field final synthetic val$result:Ljava/lang/String;

.field final synthetic val$validate:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcn/mucang/android/core/api/verify/captcha/JSInterface;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcn/mucang/android/core/api/verify/captcha/JSInterface$1;->this$0:Lcn/mucang/android/core/api/verify/captcha/JSInterface;

    iput-object p2, p0, Lcn/mucang/android/core/api/verify/captcha/JSInterface$1;->val$result:Ljava/lang/String;

    iput-object p3, p0, Lcn/mucang/android/core/api/verify/captcha/JSInterface$1;->val$validate:Ljava/lang/String;

    iput-object p4, p0, Lcn/mucang/android/core/api/verify/captcha/JSInterface$1;->val$message:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "result = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcn/mucang/android/core/api/verify/captcha/JSInterface$1;->val$result:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", validate = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcn/mucang/android/core/api/verify/captcha/JSInterface$1;->val$validate:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", message = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcn/mucang/android/core/api/verify/captcha/JSInterface$1;->val$message:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "captcha"

    invoke-static {v1, v0}, Lcn/mucang/android/core/utils/t;->h(Ljava/lang/String;Ljava/lang/String;)I

    .line 2
    iget-object v0, p0, Lcn/mucang/android/core/api/verify/captcha/JSInterface$1;->val$validate:Ljava/lang/String;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_0

    .line 3
    iget-object v0, p0, Lcn/mucang/android/core/api/verify/captcha/JSInterface$1;->this$0:Lcn/mucang/android/core/api/verify/captcha/JSInterface;

    invoke-static {v0}, Lcn/mucang/android/core/api/verify/captcha/JSInterface;->access$000(Lcn/mucang/android/core/api/verify/captcha/JSInterface;)Lcn/mucang/android/core/api/verify/captcha/CaptchaDialog;

    move-result-object v0

    invoke-static {v0}, Lcn/mucang/android/core/utils/k;->b(Landroid/app/Dialog;)V

    .line 4
    :cond_0
    iget-object v0, p0, Lcn/mucang/android/core/api/verify/captcha/JSInterface$1;->this$0:Lcn/mucang/android/core/api/verify/captcha/JSInterface;

    invoke-static {v0}, Lcn/mucang/android/core/api/verify/captcha/JSInterface;->access$100(Lcn/mucang/android/core/api/verify/captcha/JSInterface;)Lcn/mucang/android/core/api/verify/captcha/CaptchaListener;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 5
    iget-object v0, p0, Lcn/mucang/android/core/api/verify/captcha/JSInterface$1;->this$0:Lcn/mucang/android/core/api/verify/captcha/JSInterface;

    invoke-static {v0}, Lcn/mucang/android/core/api/verify/captcha/JSInterface;->access$100(Lcn/mucang/android/core/api/verify/captcha/JSInterface;)Lcn/mucang/android/core/api/verify/captcha/CaptchaListener;

    move-result-object v0

    iget-object v1, p0, Lcn/mucang/android/core/api/verify/captcha/JSInterface$1;->val$result:Ljava/lang/String;

    iget-object v2, p0, Lcn/mucang/android/core/api/verify/captcha/JSInterface$1;->val$validate:Ljava/lang/String;

    iget-object v3, p0, Lcn/mucang/android/core/api/verify/captcha/JSInterface$1;->val$message:Ljava/lang/String;

    invoke-interface {v0, v1, v2, v3}, Lcn/mucang/android/core/api/verify/captcha/CaptchaListener;->onValidate(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    return-void
.end method
