.class Lcn/mucang/android/core/api/verify/captcha/JSInterface$3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/mucang/android/core/api/verify/captcha/JSInterface;->onReady()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcn/mucang/android/core/api/verify/captcha/JSInterface;


# direct methods
.method constructor <init>(Lcn/mucang/android/core/api/verify/captcha/JSInterface;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcn/mucang/android/core/api/verify/captcha/JSInterface$3;->this$0:Lcn/mucang/android/core/api/verify/captcha/JSInterface;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcn/mucang/android/core/api/verify/captcha/JSInterface$3;->this$0:Lcn/mucang/android/core/api/verify/captcha/JSInterface;

    invoke-static {v0}, Lcn/mucang/android/core/api/verify/captcha/JSInterface;->access$000(Lcn/mucang/android/core/api/verify/captcha/JSInterface;)Lcn/mucang/android/core/api/verify/captcha/CaptchaDialog;

    move-result-object v0

    invoke-virtual {v0}, Lcn/mucang/android/core/api/verify/captcha/CaptchaDialog;->isShowing()Z

    move-result v0

    if-nez v0, :cond_0

    .line 2
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    new-instance v1, Lcn/mucang/android/core/api/verify/captcha/JSInterface$3$1;

    invoke-direct {v1, p0}, Lcn/mucang/android/core/api/verify/captcha/JSInterface$3$1;-><init>(Lcn/mucang/android/core/api/verify/captcha/JSInterface$3;)V

    const-wide/16 v2, 0x64

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 3
    :cond_0
    iget-object v0, p0, Lcn/mucang/android/core/api/verify/captcha/JSInterface$3;->this$0:Lcn/mucang/android/core/api/verify/captcha/JSInterface;

    invoke-static {v0}, Lcn/mucang/android/core/api/verify/captcha/JSInterface;->access$100(Lcn/mucang/android/core/api/verify/captcha/JSInterface;)Lcn/mucang/android/core/api/verify/captcha/CaptchaListener;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 4
    iget-object v0, p0, Lcn/mucang/android/core/api/verify/captcha/JSInterface$3;->this$0:Lcn/mucang/android/core/api/verify/captcha/JSInterface;

    invoke-static {v0}, Lcn/mucang/android/core/api/verify/captcha/JSInterface;->access$100(Lcn/mucang/android/core/api/verify/captcha/JSInterface;)Lcn/mucang/android/core/api/verify/captcha/CaptchaListener;

    move-result-object v0

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Lcn/mucang/android/core/api/verify/captcha/CaptchaListener;->onReady(Z)V

    :cond_1
    return-void
.end method
