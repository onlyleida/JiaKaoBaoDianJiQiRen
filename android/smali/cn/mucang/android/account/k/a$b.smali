.class Lcn/mucang/android/account/k/a$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcn/mucang/android/core/api/c/a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/mucang/android/account/k/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "b"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcn/mucang/android/core/api/c/a<",
        "Lcn/mucang/android/account/api/data/CaptchaResponse;",
        ">;"
    }
.end annotation


# instance fields
.field private a:Ljava/lang/String;

.field final synthetic b:Lcn/mucang/android/account/k/a;


# direct methods
.method public constructor <init>(Lcn/mucang/android/account/k/a;Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcn/mucang/android/account/k/a$b;->b:Lcn/mucang/android/account/k/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p2, p0, Lcn/mucang/android/account/k/a$b;->a:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public a()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcn/mucang/android/account/k/a$b;->b:Lcn/mucang/android/account/k/a;

    invoke-static {v0}, Lcn/mucang/android/account/k/a;->l(Lcn/mucang/android/account/k/a;)Lcn/mucang/android/ui/framework/mvp/b;

    move-result-object v0

    check-cast v0, Lcn/mucang/android/account/ui/CaptchaView;

    invoke-virtual {v0}, Lcn/mucang/android/account/ui/CaptchaView;->getProgress()Landroid/widget/ProgressBar;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 2
    iget-object v0, p0, Lcn/mucang/android/account/k/a$b;->b:Lcn/mucang/android/account/k/a;

    invoke-static {v0}, Lcn/mucang/android/account/k/a;->m(Lcn/mucang/android/account/k/a;)Lcn/mucang/android/ui/framework/mvp/b;

    move-result-object v0

    check-cast v0, Lcn/mucang/android/account/ui/CaptchaView;

    invoke-virtual {v0}, Lcn/mucang/android/account/ui/CaptchaView;->getError()Landroid/widget/TextView;

    move-result-object v0

    const/4 v2, 0x4

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 3
    iget-object v0, p0, Lcn/mucang/android/account/k/a$b;->b:Lcn/mucang/android/account/k/a;

    invoke-static {v0}, Lcn/mucang/android/account/k/a;->n(Lcn/mucang/android/account/k/a;)Lcn/mucang/android/ui/framework/mvp/b;

    move-result-object v0

    check-cast v0, Lcn/mucang/android/account/ui/CaptchaView;

    invoke-virtual {v0}, Lcn/mucang/android/account/ui/CaptchaView;->getCaptcha()Landroid/widget/ImageView;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 4
    iget-object v0, p0, Lcn/mucang/android/account/k/a$b;->b:Lcn/mucang/android/account/k/a;

    invoke-static {v0}, Lcn/mucang/android/account/k/a;->o(Lcn/mucang/android/account/k/a;)Lcn/mucang/android/ui/framework/mvp/b;

    move-result-object v0

    check-cast v0, Lcn/mucang/android/account/ui/CaptchaView;

    invoke-virtual {v0}, Lcn/mucang/android/account/ui/CaptchaView;->getRefresh()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/View;->setEnabled(Z)V

    return-void
.end method

.method public bridge synthetic b(Ljava/lang/Object;)V
    .locals 0

    .line 1
    check-cast p1, Lcn/mucang/android/account/api/data/CaptchaResponse;

    invoke-virtual {p0, p1}, Lcn/mucang/android/account/k/a$b;->e(Lcn/mucang/android/account/api/data/CaptchaResponse;)V

    return-void
.end method

.method public c(Ljava/lang/Exception;)V
    .locals 1

    .line 1
    iget-object p1, p0, Lcn/mucang/android/account/k/a$b;->b:Lcn/mucang/android/account/k/a;

    invoke-static {p1}, Lcn/mucang/android/account/k/a;->k(Lcn/mucang/android/account/k/a;)Lcn/mucang/android/ui/framework/mvp/b;

    move-result-object p1

    check-cast p1, Lcn/mucang/android/account/ui/CaptchaView;

    invoke-virtual {p1}, Lcn/mucang/android/account/ui/CaptchaView;->getError()Landroid/widget/TextView;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    return-void
.end method

.method public d()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcn/mucang/android/account/k/a$b;->b:Lcn/mucang/android/account/k/a;

    invoke-static {v0}, Lcn/mucang/android/account/k/a;->p(Lcn/mucang/android/account/k/a;)Lcn/mucang/android/ui/framework/mvp/b;

    move-result-object v0

    check-cast v0, Lcn/mucang/android/account/ui/CaptchaView;

    invoke-virtual {v0}, Lcn/mucang/android/account/ui/CaptchaView;->getProgress()Landroid/widget/ProgressBar;

    move-result-object v0

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 2
    iget-object v0, p0, Lcn/mucang/android/account/k/a$b;->b:Lcn/mucang/android/account/k/a;

    invoke-static {v0}, Lcn/mucang/android/account/k/a;->q(Lcn/mucang/android/account/k/a;)Lcn/mucang/android/ui/framework/mvp/b;

    move-result-object v0

    check-cast v0, Lcn/mucang/android/account/ui/CaptchaView;

    invoke-virtual {v0}, Lcn/mucang/android/account/ui/CaptchaView;->getRefresh()Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/view/View;->setEnabled(Z)V

    return-void
.end method

.method public e(Lcn/mucang/android/account/api/data/CaptchaResponse;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcn/mucang/android/account/k/a$b;->b:Lcn/mucang/android/account/k/a;

    invoke-static {v0}, Lcn/mucang/android/account/k/a;->h(Lcn/mucang/android/account/k/a;)Lcn/mucang/android/ui/framework/mvp/b;

    move-result-object v0

    check-cast v0, Lcn/mucang/android/account/ui/CaptchaView;

    invoke-virtual {v0}, Lcn/mucang/android/account/ui/CaptchaView;->getCaptcha()Landroid/widget/ImageView;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 2
    iget-object v0, p0, Lcn/mucang/android/account/k/a$b;->b:Lcn/mucang/android/account/k/a;

    invoke-virtual {p1}, Lcn/mucang/android/account/api/data/CaptchaResponse;->getCaptchaId()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcn/mucang/android/account/k/a;->i(Lcn/mucang/android/account/k/a;Ljava/lang/String;)Ljava/lang/String;

    .line 3
    iget-object v0, p0, Lcn/mucang/android/account/k/a$b;->b:Lcn/mucang/android/account/k/a;

    invoke-static {v0}, Lcn/mucang/android/account/k/a;->j(Lcn/mucang/android/account/k/a;)Lcn/mucang/android/ui/framework/mvp/b;

    move-result-object v0

    check-cast v0, Lcn/mucang/android/account/ui/CaptchaView;

    invoke-virtual {v0}, Lcn/mucang/android/account/ui/CaptchaView;->getCaptcha()Landroid/widget/ImageView;

    move-result-object v0

    invoke-virtual {p1}, Lcn/mucang/android/account/api/data/CaptchaResponse;->getCaptchaUrl()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1, v1}, Lf/a/a/b/a/a;->i(Landroid/widget/ImageView;Ljava/lang/String;I)V

    return-void
.end method

.method public f()Lcn/mucang/android/account/api/data/CaptchaResponse;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1
    new-instance v0, Lcn/mucang/android/account/g/a;

    invoke-direct {v0}, Lcn/mucang/android/account/g/a;-><init>()V

    iget-object v1, p0, Lcn/mucang/android/account/k/a$b;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcn/mucang/android/account/g/a;->b(Ljava/lang/String;)Lcn/mucang/android/core/api/ApiResponse;

    move-result-object v0

    .line 2
    const-class v1, Lcn/mucang/android/account/api/data/CaptchaResponse;

    invoke-virtual {v0, v1}, Lcn/mucang/android/core/api/ApiResponse;->getData(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcn/mucang/android/account/api/data/CaptchaResponse;

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
    invoke-virtual {p0}, Lcn/mucang/android/account/k/a$b;->f()Lcn/mucang/android/account/api/data/CaptchaResponse;

    move-result-object v0

    return-object v0
.end method
