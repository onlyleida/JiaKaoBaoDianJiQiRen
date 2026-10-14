.class Lcn/mucang/android/core/api/verify/captcha/CaptchaVerifyActivity$MyTask;
.super Ljava/util/TimerTask;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/mucang/android/core/api/verify/captcha/CaptchaVerifyActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MyTask"
.end annotation


# instance fields
.field final synthetic this$0:Lcn/mucang/android/core/api/verify/captcha/CaptchaVerifyActivity;

.field private type:I


# direct methods
.method public constructor <init>(Lcn/mucang/android/core/api/verify/captcha/CaptchaVerifyActivity;I)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcn/mucang/android/core/api/verify/captcha/CaptchaVerifyActivity$MyTask;->this$0:Lcn/mucang/android/core/api/verify/captcha/CaptchaVerifyActivity;

    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    .line 2
    iput p2, p0, Lcn/mucang/android/core/api/verify/captcha/CaptchaVerifyActivity$MyTask;->type:I

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    const-string v0, "captcha"

    const-string v1, "MyTask start"

    .line 1
    invoke-static {v0, v1}, Lcn/mucang/android/core/utils/t;->a(Ljava/lang/String;Ljava/lang/String;)I

    .line 2
    new-instance v1, Landroid/os/Message;

    invoke-direct {v1}, Landroid/os/Message;-><init>()V

    .line 3
    iget v2, p0, Lcn/mucang/android/core/api/verify/captcha/CaptchaVerifyActivity$MyTask;->type:I

    const/4 v3, 0x1

    if-eqz v2, :cond_2

    if-eq v2, v3, :cond_1

    const/4 v4, 0x2

    if-eq v2, v4, :cond_0

    return-void

    .line 4
    :cond_0
    iput v4, v1, Landroid/os/Message;->what:I

    goto :goto_0

    .line 5
    :cond_1
    iput v3, v1, Landroid/os/Message;->what:I

    goto :goto_0

    :cond_2
    const/4 v2, 0x0

    .line 6
    iput v2, v1, Landroid/os/Message;->what:I

    .line 7
    :goto_0
    iget-object v2, p0, Lcn/mucang/android/core/api/verify/captcha/CaptchaVerifyActivity$MyTask;->this$0:Lcn/mucang/android/core/api/verify/captcha/CaptchaVerifyActivity;

    invoke-static {v2}, Lcn/mucang/android/core/api/verify/captcha/CaptchaVerifyActivity;->access$500(Lcn/mucang/android/core/api/verify/captcha/CaptchaVerifyActivity;)Z

    move-result v2

    if-nez v2, :cond_3

    .line 8
    iget-object v2, p0, Lcn/mucang/android/core/api/verify/captcha/CaptchaVerifyActivity$MyTask;->this$0:Lcn/mucang/android/core/api/verify/captcha/CaptchaVerifyActivity;

    invoke-static {v2}, Lcn/mucang/android/core/api/verify/captcha/CaptchaVerifyActivity;->access$600(Lcn/mucang/android/core/api/verify/captcha/CaptchaVerifyActivity;)Landroid/os/Handler;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 9
    iget-object v1, p0, Lcn/mucang/android/core/api/verify/captcha/CaptchaVerifyActivity$MyTask;->this$0:Lcn/mucang/android/core/api/verify/captcha/CaptchaVerifyActivity;

    invoke-static {v1, v3}, Lcn/mucang/android/core/api/verify/captcha/CaptchaVerifyActivity;->access$502(Lcn/mucang/android/core/api/verify/captcha/CaptchaVerifyActivity;Z)Z

    :cond_3
    const-string v1, "MyTask end"

    .line 10
    invoke-static {v0, v1}, Lcn/mucang/android/core/utils/t;->a(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method
