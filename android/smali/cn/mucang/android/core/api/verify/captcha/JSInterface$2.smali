.class Lcn/mucang/android/core/api/verify/captcha/JSInterface$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/mucang/android/core/api/verify/captcha/JSInterface;->closeWindow()V
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
    iput-object p1, p0, Lcn/mucang/android/core/api/verify/captcha/JSInterface$2;->this$0:Lcn/mucang/android/core/api/verify/captcha/JSInterface;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcn/mucang/android/core/api/verify/captcha/JSInterface$2;->this$0:Lcn/mucang/android/core/api/verify/captcha/JSInterface;

    invoke-static {v0}, Lcn/mucang/android/core/api/verify/captcha/JSInterface;->access$000(Lcn/mucang/android/core/api/verify/captcha/JSInterface;)Lcn/mucang/android/core/api/verify/captcha/CaptchaDialog;

    move-result-object v0

    invoke-static {v0}, Lcn/mucang/android/core/utils/k;->b(Landroid/app/Dialog;)V

    .line 2
    iget-object v0, p0, Lcn/mucang/android/core/api/verify/captcha/JSInterface$2;->this$0:Lcn/mucang/android/core/api/verify/captcha/JSInterface;

    invoke-static {v0}, Lcn/mucang/android/core/api/verify/captcha/JSInterface;->access$100(Lcn/mucang/android/core/api/verify/captcha/JSInterface;)Lcn/mucang/android/core/api/verify/captcha/CaptchaListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 3
    iget-object v0, p0, Lcn/mucang/android/core/api/verify/captcha/JSInterface$2;->this$0:Lcn/mucang/android/core/api/verify/captcha/JSInterface;

    invoke-static {v0}, Lcn/mucang/android/core/api/verify/captcha/JSInterface;->access$100(Lcn/mucang/android/core/api/verify/captcha/JSInterface;)Lcn/mucang/android/core/api/verify/captcha/CaptchaListener;

    move-result-object v0

    invoke-interface {v0}, Lcn/mucang/android/core/api/verify/captcha/CaptchaListener;->closeWindow()V

    :cond_0
    return-void
.end method
