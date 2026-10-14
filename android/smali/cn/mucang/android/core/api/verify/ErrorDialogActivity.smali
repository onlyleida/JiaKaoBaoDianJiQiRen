.class public Lcn/mucang/android/core/api/verify/ErrorDialogActivity;
.super Lcn/mucang/android/core/config/n;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/mucang/android/core/api/verify/ErrorDialogActivity$a;
    }
.end annotation


# instance fields
.field private a:Lcn/mucang/android/framework/core/databinding/CoreApiVerifyActivityErrorDialogBinding;

.field private b:Lcn/mucang/android/core/api/verify/ErrorDialogActivity$a;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcn/mucang/android/core/config/n;-><init>()V

    return-void
.end method

.method static synthetic g(Lcn/mucang/android/core/api/verify/ErrorDialogActivity;)Lcn/mucang/android/framework/core/databinding/CoreApiVerifyActivityErrorDialogBinding;
    .locals 0

    .line 1
    iget-object p0, p0, Lcn/mucang/android/core/api/verify/ErrorDialogActivity;->a:Lcn/mucang/android/framework/core/databinding/CoreApiVerifyActivityErrorDialogBinding;

    return-object p0
.end method

.method private h(Lcn/mucang/android/core/api/verify/ErrorDialogParams;)V
    .locals 7

    .line 1
    iget-object v0, p0, Lcn/mucang/android/core/api/verify/ErrorDialogActivity;->a:Lcn/mucang/android/framework/core/databinding/CoreApiVerifyActivityErrorDialogBinding;

    iget-object v0, v0, Lcn/mucang/android/framework/core/databinding/CoreApiVerifyActivityErrorDialogBinding;->title:Landroid/widget/TextView;

    iget-object v1, p1, Lcn/mucang/android/core/api/verify/ErrorDialogParams;->title:Ljava/lang/String;

    invoke-static {v1}, Lcn/mucang/android/core/utils/n0;->e(Ljava/lang/String;)Z

    move-result v1

    const/4 v2, 0x0

    const/16 v3, 0x8

    if-eqz v1, :cond_0

    const/16 v1, 0x8

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 2
    iget-object v0, p0, Lcn/mucang/android/core/api/verify/ErrorDialogActivity;->a:Lcn/mucang/android/framework/core/databinding/CoreApiVerifyActivityErrorDialogBinding;

    iget-object v0, v0, Lcn/mucang/android/framework/core/databinding/CoreApiVerifyActivityErrorDialogBinding;->title:Landroid/widget/TextView;

    iget-object v1, p1, Lcn/mucang/android/core/api/verify/ErrorDialogParams;->title:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 3
    iget-object v0, p0, Lcn/mucang/android/core/api/verify/ErrorDialogActivity;->a:Lcn/mucang/android/framework/core/databinding/CoreApiVerifyActivityErrorDialogBinding;

    iget-object v0, v0, Lcn/mucang/android/framework/core/databinding/CoreApiVerifyActivityErrorDialogBinding;->message:Landroid/widget/TextView;

    iget-object v1, p1, Lcn/mucang/android/core/api/verify/ErrorDialogParams;->message:Ljava/lang/String;

    invoke-static {v1}, Lcn/mucang/android/core/utils/n0;->e(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    const/16 v1, 0x8

    goto :goto_1

    :cond_1
    const/4 v1, 0x0

    :goto_1
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 4
    iget-object v0, p0, Lcn/mucang/android/core/api/verify/ErrorDialogActivity;->a:Lcn/mucang/android/framework/core/databinding/CoreApiVerifyActivityErrorDialogBinding;

    iget-object v0, v0, Lcn/mucang/android/framework/core/databinding/CoreApiVerifyActivityErrorDialogBinding;->message:Landroid/widget/TextView;

    iget-object v1, p1, Lcn/mucang/android/core/api/verify/ErrorDialogParams;->message:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 5
    iget-object v0, p0, Lcn/mucang/android/core/api/verify/ErrorDialogActivity;->a:Lcn/mucang/android/framework/core/databinding/CoreApiVerifyActivityErrorDialogBinding;

    iget-object v0, v0, Lcn/mucang/android/framework/core/databinding/CoreApiVerifyActivityErrorDialogBinding;->ok:Landroid/widget/TextView;

    iget-object v1, p1, Lcn/mucang/android/core/api/verify/ErrorDialogParams;->okButton:Ljava/lang/String;

    invoke-static {v1}, Lcn/mucang/android/core/utils/n0;->e(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    const/16 v1, 0x8

    goto :goto_2

    :cond_2
    const/4 v1, 0x0

    :goto_2
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 6
    iget-object v0, p0, Lcn/mucang/android/core/api/verify/ErrorDialogActivity;->a:Lcn/mucang/android/framework/core/databinding/CoreApiVerifyActivityErrorDialogBinding;

    iget-object v0, v0, Lcn/mucang/android/framework/core/databinding/CoreApiVerifyActivityErrorDialogBinding;->ok:Landroid/widget/TextView;

    iget-object v1, p1, Lcn/mucang/android/core/api/verify/ErrorDialogParams;->okButton:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 7
    iget-object v0, p0, Lcn/mucang/android/core/api/verify/ErrorDialogActivity;->a:Lcn/mucang/android/framework/core/databinding/CoreApiVerifyActivityErrorDialogBinding;

    iget-object v0, v0, Lcn/mucang/android/framework/core/databinding/CoreApiVerifyActivityErrorDialogBinding;->ok:Landroid/widget/TextView;

    new-instance v1, Lcn/mucang/android/core/api/verify/b;

    invoke-direct {v1, p0, p1}, Lcn/mucang/android/core/api/verify/b;-><init>(Lcn/mucang/android/core/api/verify/ErrorDialogActivity;Lcn/mucang/android/core/api/verify/ErrorDialogParams;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 8
    iget-object v0, p0, Lcn/mucang/android/core/api/verify/ErrorDialogActivity;->a:Lcn/mucang/android/framework/core/databinding/CoreApiVerifyActivityErrorDialogBinding;

    iget-object v0, v0, Lcn/mucang/android/framework/core/databinding/CoreApiVerifyActivityErrorDialogBinding;->cancel:Landroid/widget/TextView;

    iget-object v1, p1, Lcn/mucang/android/core/api/verify/ErrorDialogParams;->cancelButton:Ljava/lang/String;

    invoke-static {v1}, Lcn/mucang/android/core/utils/n0;->e(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    const/16 v2, 0x8

    :cond_3
    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 9
    iget-object v0, p0, Lcn/mucang/android/core/api/verify/ErrorDialogActivity;->a:Lcn/mucang/android/framework/core/databinding/CoreApiVerifyActivityErrorDialogBinding;

    iget-object v0, v0, Lcn/mucang/android/framework/core/databinding/CoreApiVerifyActivityErrorDialogBinding;->cancel:Landroid/widget/TextView;

    iget-object v1, p1, Lcn/mucang/android/core/api/verify/ErrorDialogParams;->cancelButton:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 10
    iget-object v0, p0, Lcn/mucang/android/core/api/verify/ErrorDialogActivity;->a:Lcn/mucang/android/framework/core/databinding/CoreApiVerifyActivityErrorDialogBinding;

    iget-object v0, v0, Lcn/mucang/android/framework/core/databinding/CoreApiVerifyActivityErrorDialogBinding;->cancel:Landroid/widget/TextView;

    new-instance v1, Lcn/mucang/android/core/api/verify/a;

    invoke-direct {v1, p0, p1}, Lcn/mucang/android/core/api/verify/a;-><init>(Lcn/mucang/android/core/api/verify/ErrorDialogActivity;Lcn/mucang/android/core/api/verify/ErrorDialogParams;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 11
    iget-object v0, p1, Lcn/mucang/android/core/api/verify/ErrorDialogParams;->okButton:Ljava/lang/String;

    invoke-static {v0}, Lcn/mucang/android/core/utils/n0;->e(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_4

    iget-object v0, p1, Lcn/mucang/android/core/api/verify/ErrorDialogParams;->cancelButton:Ljava/lang/String;

    invoke-static {v0}, Lcn/mucang/android/core/utils/n0;->e(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 12
    :cond_4
    iget-object v0, p0, Lcn/mucang/android/core/api/verify/ErrorDialogActivity;->a:Lcn/mucang/android/framework/core/databinding/CoreApiVerifyActivityErrorDialogBinding;

    iget-object v0, v0, Lcn/mucang/android/framework/core/databinding/CoreApiVerifyActivityErrorDialogBinding;->divider:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 13
    :cond_5
    iget-wide v0, p1, Lcn/mucang/android/core/api/verify/ErrorDialogParams;->countDown:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-lez v4, :cond_6

    iget-object v0, p1, Lcn/mucang/android/core/api/verify/ErrorDialogParams;->countDownAction:Ljava/lang/String;

    invoke-static {v0}, Lcn/mucang/android/core/utils/n0;->e(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_6

    .line 14
    new-instance v0, Lcn/mucang/android/core/api/verify/ErrorDialogActivity$a;

    iget-wide v3, p1, Lcn/mucang/android/core/api/verify/ErrorDialogParams;->countDown:J

    iget-object v5, p1, Lcn/mucang/android/core/api/verify/ErrorDialogParams;->message:Ljava/lang/String;

    iget-object v6, p1, Lcn/mucang/android/core/api/verify/ErrorDialogParams;->countDownAction:Ljava/lang/String;

    move-object v1, v0

    move-object v2, p0

    invoke-direct/range {v1 .. v6}, Lcn/mucang/android/core/api/verify/ErrorDialogActivity$a;-><init>(Lcn/mucang/android/core/api/verify/ErrorDialogActivity;JLjava/lang/String;Ljava/lang/String;)V

    iput-object v0, p0, Lcn/mucang/android/core/api/verify/ErrorDialogActivity;->b:Lcn/mucang/android/core/api/verify/ErrorDialogActivity$a;

    .line 15
    invoke-virtual {v0}, Landroid/os/CountDownTimer;->start()Landroid/os/CountDownTimer;

    :cond_6
    return-void
.end method

.method private synthetic i(Lcn/mucang/android/core/api/verify/ErrorDialogParams;Landroid/view/View;)V
    .locals 0

    .line 1
    iget-object p2, p1, Lcn/mucang/android/core/api/verify/ErrorDialogParams;->okAction:Ljava/lang/String;

    invoke-static {p2}, Lcn/mucang/android/core/utils/n0;->e(Ljava/lang/String;)Z

    move-result p2

    if-nez p2, :cond_0

    .line 2
    iget-object p1, p1, Lcn/mucang/android/core/api/verify/ErrorDialogParams;->okAction:Ljava/lang/String;

    invoke-static {p1}, Lf/a/a/a/i/h;->e(Ljava/lang/String;)Z

    .line 3
    :cond_0
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    return-void
.end method

.method private synthetic k(Lcn/mucang/android/core/api/verify/ErrorDialogParams;Landroid/view/View;)V
    .locals 0

    .line 1
    iget-object p2, p1, Lcn/mucang/android/core/api/verify/ErrorDialogParams;->cancelAction:Ljava/lang/String;

    invoke-static {p2}, Lcn/mucang/android/core/utils/n0;->e(Ljava/lang/String;)Z

    move-result p2

    if-nez p2, :cond_0

    .line 2
    iget-object p1, p1, Lcn/mucang/android/core/api/verify/ErrorDialogParams;->cancelAction:Ljava/lang/String;

    invoke-static {p1}, Lf/a/a/a/i/h;->e(Ljava/lang/String;)Z

    .line 3
    :cond_0
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    return-void
.end method

.method public static m(Landroid/content/Context;Lcn/mucang/android/core/api/verify/ErrorDialogParams;)V
    .locals 2

    .line 1
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcn/mucang/android/core/api/verify/ErrorDialogActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v1, "params"

    .line 2
    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 3
    instance-of p1, p0, Landroid/app/Activity;

    if-nez p1, :cond_0

    const/high16 p1, 0x10000000

    .line 4
    invoke-virtual {v0, p1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 5
    :cond_0
    invoke-virtual {p0, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    return-void
.end method


# virtual methods
.method public getStatName()Ljava/lang/String;
    .locals 1

    const-string v0, "\u901a\u7528\u9519\u8bef\u5f39\u6846"

    return-object v0
.end method

.method public synthetic j(Lcn/mucang/android/core/api/verify/ErrorDialogParams;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcn/mucang/android/core/api/verify/ErrorDialogActivity;->i(Lcn/mucang/android/core/api/verify/ErrorDialogParams;Landroid/view/View;)V

    return-void
.end method

.method public synthetic l(Lcn/mucang/android/core/api/verify/ErrorDialogParams;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcn/mucang/android/core/api/verify/ErrorDialogActivity;->k(Lcn/mucang/android/core/api/verify/ErrorDialogParams;Landroid/view/View;)V

    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1

    .line 1
    invoke-super {p0, p1}, Lcn/mucang/android/core/config/n;->onCreate(Landroid/os/Bundle;)V

    .line 2
    invoke-virtual {p0}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object p1

    invoke-static {p1}, Lcn/mucang/android/framework/core/databinding/CoreApiVerifyActivityErrorDialogBinding;->inflate(Landroid/view/LayoutInflater;)Lcn/mucang/android/framework/core/databinding/CoreApiVerifyActivityErrorDialogBinding;

    move-result-object p1

    iput-object p1, p0, Lcn/mucang/android/core/api/verify/ErrorDialogActivity;->a:Lcn/mucang/android/framework/core/databinding/CoreApiVerifyActivityErrorDialogBinding;

    .line 3
    invoke-virtual {p1}, Lcn/mucang/android/framework/core/databinding/CoreApiVerifyActivityErrorDialogBinding;->getRoot()Landroid/widget/FrameLayout;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcn/mucang/android/core/config/n;->setContentView(Landroid/view/View;)V

    .line 4
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    if-eqz p1, :cond_0

    const-string v0, "params"

    .line 5
    invoke-virtual {p1, v0}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object p1

    check-cast p1, Lcn/mucang/android/core/api/verify/ErrorDialogParams;

    if-eqz p1, :cond_0

    .line 6
    invoke-direct {p0, p1}, Lcn/mucang/android/core/api/verify/ErrorDialogActivity;->h(Lcn/mucang/android/core/api/verify/ErrorDialogParams;)V

    return-void

    .line 7
    :cond_0
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    return-void
.end method

.method protected onDestroy()V
    .locals 1

    .line 1
    invoke-super {p0}, Lcn/mucang/android/core/config/n;->onDestroy()V

    .line 2
    iget-object v0, p0, Lcn/mucang/android/core/api/verify/ErrorDialogActivity;->b:Lcn/mucang/android/core/api/verify/ErrorDialogActivity$a;

    if-eqz v0, :cond_0

    .line 3
    invoke-virtual {v0}, Landroid/os/CountDownTimer;->cancel()V

    :cond_0
    const/4 v0, 0x0

    .line 4
    iput-object v0, p0, Lcn/mucang/android/core/api/verify/ErrorDialogActivity;->b:Lcn/mucang/android/core/api/verify/ErrorDialogActivity$a;

    return-void
.end method
