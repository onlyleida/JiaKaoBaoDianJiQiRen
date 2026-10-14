.class Lcn/mucang/android/core/api/verify/captcha/JSInterface$4;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/mucang/android/core/api/verify/captcha/JSInterface;->onError(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcn/mucang/android/core/api/verify/captcha/JSInterface;

.field final synthetic val$msg:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcn/mucang/android/core/api/verify/captcha/JSInterface;Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcn/mucang/android/core/api/verify/captcha/JSInterface$4;->this$0:Lcn/mucang/android/core/api/verify/captcha/JSInterface;

    iput-object p2, p0, Lcn/mucang/android/core/api/verify/captcha/JSInterface$4;->val$msg:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcn/mucang/android/core/api/verify/captcha/JSInterface$4;->this$0:Lcn/mucang/android/core/api/verify/captcha/JSInterface;

    invoke-static {v0}, Lcn/mucang/android/core/api/verify/captcha/JSInterface;->access$000(Lcn/mucang/android/core/api/verify/captcha/JSInterface;)Lcn/mucang/android/core/api/verify/captcha/CaptchaDialog;

    move-result-object v0

    invoke-static {v0}, Lcn/mucang/android/core/utils/k;->b(Landroid/app/Dialog;)V

    .line 2
    iget-object v0, p0, Lcn/mucang/android/core/api/verify/captcha/JSInterface$4;->this$0:Lcn/mucang/android/core/api/verify/captcha/JSInterface;

    invoke-static {v0}, Lcn/mucang/android/core/api/verify/captcha/JSInterface;->access$100(Lcn/mucang/android/core/api/verify/captcha/JSInterface;)Lcn/mucang/android/core/api/verify/captcha/CaptchaListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 3
    iget-object v0, p0, Lcn/mucang/android/core/api/verify/captcha/JSInterface$4;->this$0:Lcn/mucang/android/core/api/verify/captcha/JSInterface;

    invoke-static {v0}, Lcn/mucang/android/core/api/verify/captcha/JSInterface;->access$100(Lcn/mucang/android/core/api/verify/captcha/JSInterface;)Lcn/mucang/android/core/api/verify/captcha/CaptchaListener;

    move-result-object v0

    iget-object v1, p0, Lcn/mucang/android/core/api/verify/captcha/JSInterface$4;->val$msg:Ljava/lang/String;

    invoke-interface {v0, v1}, Lcn/mucang/android/core/api/verify/captcha/CaptchaListener;->onError(Ljava/lang/String;)V

    :cond_0
    return-void
.end method
