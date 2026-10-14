.class public Lcom/iflytek/cloud/ui/b/c;
.super Landroid/app/Dialog;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/iflytek/cloud/ui/b/c$b;
    }
.end annotation


# instance fields
.field protected a:Lcom/iflytek/cloud/ui/b/d;

.field private b:Lcom/iflytek/cloud/ui/b/c$b;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Landroid/app/Dialog;-><init>(Landroid/content/Context;)V

    const/4 p1, 0x0

    .line 2
    iput-object p1, p0, Lcom/iflytek/cloud/ui/b/c;->a:Lcom/iflytek/cloud/ui/b/d;

    .line 3
    new-instance p1, Lcom/iflytek/cloud/ui/b/c$a;

    invoke-direct {p1, p0}, Lcom/iflytek/cloud/ui/b/c$a;-><init>(Lcom/iflytek/cloud/ui/b/c;)V

    iput-object p1, p0, Lcom/iflytek/cloud/ui/b/c;->b:Lcom/iflytek/cloud/ui/b/c$b;

    return-void
.end method


# virtual methods
.method public destroy()Z
    .locals 2

    .line 1
    invoke-virtual {p0}, Landroid/app/Dialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    return v0

    .line 2
    :cond_0
    iget-object v0, p0, Lcom/iflytek/cloud/ui/b/c;->a:Lcom/iflytek/cloud/ui/b/d;

    invoke-virtual {v0}, Lcom/iflytek/cloud/ui/b/d;->b()Z

    move-result v0

    const/4 v1, 0x0

    .line 3
    iput-object v1, p0, Lcom/iflytek/cloud/ui/b/c;->a:Lcom/iflytek/cloud/ui/b/d;

    return v0
.end method

.method public dismiss()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/iflytek/cloud/ui/b/c;->a:Lcom/iflytek/cloud/ui/b/d;

    invoke-virtual {v0}, Lcom/iflytek/cloud/ui/b/d;->a()V

    .line 2
    invoke-super {p0}, Landroid/app/Dialog;->dismiss()V

    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2

    .line 1
    invoke-super {p0, p1}, Landroid/app/Dialog;->onCreate(Landroid/os/Bundle;)V

    const/4 p1, 0x1

    .line 2
    invoke-virtual {p0, p1}, Landroid/app/Dialog;->requestWindowFeature(I)Z

    .line 3
    iget-object p1, p0, Lcom/iflytek/cloud/ui/b/c;->a:Lcom/iflytek/cloud/ui/b/d;

    invoke-virtual {p0, p1}, Landroid/app/Dialog;->setContentView(Landroid/view/View;)V

    .line 4
    invoke-virtual {p0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object p1

    new-instance v0, Landroid/graphics/drawable/ColorDrawable;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {p1, v0}, Landroid/view/Window;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public show()V
    .locals 2

    const/4 v0, 0x1

    .line 1
    invoke-virtual {p0, v0}, Landroid/app/Dialog;->setCanceledOnTouchOutside(Z)V

    .line 2
    iget-object v0, p0, Lcom/iflytek/cloud/ui/b/c;->a:Lcom/iflytek/cloud/ui/b/d;

    iget-object v1, p0, Lcom/iflytek/cloud/ui/b/c;->b:Lcom/iflytek/cloud/ui/b/c$b;

    invoke-virtual {v0, v1}, Lcom/iflytek/cloud/ui/b/d;->setExitCallBack(Lcom/iflytek/cloud/ui/b/c$b;)V

    .line 3
    iget-object v0, p0, Lcom/iflytek/cloud/ui/b/c;->a:Lcom/iflytek/cloud/ui/b/d;

    invoke-virtual {v0}, Lcom/iflytek/cloud/ui/b/d;->e()V

    .line 4
    invoke-super {p0}, Landroid/app/Dialog;->show()V

    return-void
.end method
