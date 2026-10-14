.class Lcn/mucang/android/core/api/verify/captcha/JSInterface$3$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/mucang/android/core/api/verify/captcha/JSInterface$3;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcn/mucang/android/core/api/verify/captcha/JSInterface$3;


# direct methods
.method constructor <init>(Lcn/mucang/android/core/api/verify/captcha/JSInterface$3;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcn/mucang/android/core/api/verify/captcha/JSInterface$3$1;->this$1:Lcn/mucang/android/core/api/verify/captcha/JSInterface$3;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcn/mucang/android/core/api/verify/captcha/JSInterface$3$1;->this$1:Lcn/mucang/android/core/api/verify/captcha/JSInterface$3;

    iget-object v0, v0, Lcn/mucang/android/core/api/verify/captcha/JSInterface$3;->this$0:Lcn/mucang/android/core/api/verify/captcha/JSInterface;

    invoke-static {v0}, Lcn/mucang/android/core/api/verify/captcha/JSInterface;->access$000(Lcn/mucang/android/core/api/verify/captcha/JSInterface;)Lcn/mucang/android/core/api/verify/captcha/CaptchaDialog;

    move-result-object v0

    invoke-virtual {v0}, Lcn/mucang/android/core/api/verify/captcha/CaptchaDialog;->show()V

    return-void
.end method
