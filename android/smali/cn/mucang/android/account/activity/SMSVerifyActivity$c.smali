.class Lcn/mucang/android/account/activity/SMSVerifyActivity$c;
.super Landroid/os/CountDownTimer;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/mucang/android/account/activity/SMSVerifyActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "c"
.end annotation


# instance fields
.field final synthetic a:Lcn/mucang/android/account/activity/SMSVerifyActivity;


# direct methods
.method public constructor <init>(Lcn/mucang/android/account/activity/SMSVerifyActivity;I)V
    .locals 2

    .line 1
    iput-object p1, p0, Lcn/mucang/android/account/activity/SMSVerifyActivity$c;->a:Lcn/mucang/android/account/activity/SMSVerifyActivity;

    if-lez p2, :cond_0

    int-to-long p1, p2

    goto :goto_0

    :cond_0
    const-wide/32 p1, 0xea60

    :goto_0
    const-wide/16 v0, 0x3e8

    .line 2
    invoke-direct {p0, p1, p2, v0, v1}, Landroid/os/CountDownTimer;-><init>(JJ)V

    return-void
.end method


# virtual methods
.method public onFinish()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcn/mucang/android/account/activity/SMSVerifyActivity$c;->a:Lcn/mucang/android/account/activity/SMSVerifyActivity;

    invoke-static {v0}, Lcn/mucang/android/account/activity/SMSVerifyActivity;->l(Lcn/mucang/android/account/activity/SMSVerifyActivity;)Lcn/mucang/android/framework/account/databinding/AccountApiVerifyActivitySmsBinding;

    move-result-object v0

    iget-object v0, v0, Lcn/mucang/android/framework/account/databinding/AccountApiVerifyActivitySmsBinding;->sendSms:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lcn/mucang/android/account/activity/SMSVerifyActivity$c;->a:Lcn/mucang/android/account/activity/SMSVerifyActivity;

    invoke-static {v0}, Lcn/mucang/android/account/activity/SMSVerifyActivity;->l(Lcn/mucang/android/account/activity/SMSVerifyActivity;)Lcn/mucang/android/framework/account/databinding/AccountApiVerifyActivitySmsBinding;

    move-result-object v0

    iget-object v0, v0, Lcn/mucang/android/framework/account/databinding/AccountApiVerifyActivitySmsBinding;->sendSms:Landroid/widget/TextView;

    const-string v1, "\u518d\u6b21\u53d1\u9001"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 3
    iget-object v0, p0, Lcn/mucang/android/account/activity/SMSVerifyActivity$c;->a:Lcn/mucang/android/account/activity/SMSVerifyActivity;

    invoke-static {v0}, Lcn/mucang/android/account/activity/SMSVerifyActivity;->l(Lcn/mucang/android/account/activity/SMSVerifyActivity;)Lcn/mucang/android/framework/account/databinding/AccountApiVerifyActivitySmsBinding;

    move-result-object v0

    iget-object v0, v0, Lcn/mucang/android/framework/account/databinding/AccountApiVerifyActivitySmsBinding;->sendSms:Landroid/widget/TextView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setEnabled(Z)V

    :cond_0
    return-void
.end method

.method public onTick(J)V
    .locals 4

    .line 1
    iget-object v0, p0, Lcn/mucang/android/account/activity/SMSVerifyActivity$c;->a:Lcn/mucang/android/account/activity/SMSVerifyActivity;

    invoke-static {v0}, Lcn/mucang/android/account/activity/SMSVerifyActivity;->l(Lcn/mucang/android/account/activity/SMSVerifyActivity;)Lcn/mucang/android/framework/account/databinding/AccountApiVerifyActivitySmsBinding;

    move-result-object v0

    iget-object v0, v0, Lcn/mucang/android/framework/account/databinding/AccountApiVerifyActivitySmsBinding;->sendSms:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lcn/mucang/android/account/activity/SMSVerifyActivity$c;->a:Lcn/mucang/android/account/activity/SMSVerifyActivity;

    invoke-static {v0}, Lcn/mucang/android/account/activity/SMSVerifyActivity;->l(Lcn/mucang/android/account/activity/SMSVerifyActivity;)Lcn/mucang/android/framework/account/databinding/AccountApiVerifyActivitySmsBinding;

    move-result-object v0

    iget-object v0, v0, Lcn/mucang/android/framework/account/databinding/AccountApiVerifyActivitySmsBinding;->sendSms:Landroid/widget/TextView;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const-wide/16 v2, 0x3e8

    div-long/2addr p1, v2

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    const/4 p2, 0x0

    aput-object p1, v1, p2

    const-string p1, "%ds"

    invoke-static {p1, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 3
    iget-object p1, p0, Lcn/mucang/android/account/activity/SMSVerifyActivity$c;->a:Lcn/mucang/android/account/activity/SMSVerifyActivity;

    invoke-static {p1}, Lcn/mucang/android/account/activity/SMSVerifyActivity;->l(Lcn/mucang/android/account/activity/SMSVerifyActivity;)Lcn/mucang/android/framework/account/databinding/AccountApiVerifyActivitySmsBinding;

    move-result-object p1

    iget-object p1, p1, Lcn/mucang/android/framework/account/databinding/AccountApiVerifyActivitySmsBinding;->sendSms:Landroid/widget/TextView;

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setEnabled(Z)V

    :cond_0
    return-void
.end method
