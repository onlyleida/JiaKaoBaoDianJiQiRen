.class public abstract Lcn/mucang/android/account/activity/l1;
.super Lcn/mucang/android/core/config/n;
.source "SourceFile"


# instance fields
.field private a:Lcn/mucang/android/account/ui/a;

.field private b:Lcn/mucang/android/account/data/AccountBaseModel;

.field private c:Lcn/mucang/android/account/data/AccountBaseModel;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcn/mucang/android/core/config/n;-><init>()V

    return-void
.end method


# virtual methods
.method public g()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcn/mucang/android/account/activity/l1;->a:Lcn/mucang/android/account/ui/a;

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    invoke-virtual {p0}, Lcn/mucang/android/account/activity/l1;->i()Lcn/mucang/android/account/ui/a;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    return-void
.end method

.method public h()Lcn/mucang/android/account/data/AccountBaseModel;
    .locals 1

    .line 1
    iget-object v0, p0, Lcn/mucang/android/account/activity/l1;->c:Lcn/mucang/android/account/data/AccountBaseModel;

    return-object v0
.end method

.method protected i()Lcn/mucang/android/account/ui/a;
    .locals 1

    .line 1
    iget-object v0, p0, Lcn/mucang/android/account/activity/l1;->a:Lcn/mucang/android/account/ui/a;

    if-nez v0, :cond_0

    .line 2
    new-instance v0, Lcn/mucang/android/account/ui/a;

    invoke-direct {v0, p0}, Lcn/mucang/android/account/ui/a;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcn/mucang/android/account/activity/l1;->a:Lcn/mucang/android/account/ui/a;

    .line 3
    :cond_0
    iget-object v0, p0, Lcn/mucang/android/account/activity/l1;->a:Lcn/mucang/android/account/ui/a;

    return-object v0
.end method

.method public j(Ljava/lang/String;)V
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcn/mucang/android/account/activity/l1;->i()Lcn/mucang/android/account/ui/a;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcn/mucang/android/account/ui/a;->b(Ljava/lang/String;)V

    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3

    .line 1
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    if-eqz v0, :cond_3

    const-string v1, "__key_extra_base_model__"

    .line 2
    invoke-virtual {v0, v1}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v1

    check-cast v1, Lcn/mucang/android/account/data/AccountBaseModel;

    const-string v2, "__key_extra_model__"

    .line 3
    invoke-virtual {v0, v2}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Lcn/mucang/android/account/data/AccountBaseModel;

    if-eqz v0, :cond_1

    .line 4
    iput-object v0, p0, Lcn/mucang/android/account/activity/l1;->c:Lcn/mucang/android/account/data/AccountBaseModel;

    if-eqz v1, :cond_0

    .line 5
    invoke-virtual {v1}, Lcn/mucang/android/account/data/AccountBaseModel;->isSkipAuthRealName()Z

    move-result v2

    invoke-virtual {v0, v2}, Lcn/mucang/android/account/data/AccountBaseModel;->setSkipAuthRealName(Z)Lcn/mucang/android/account/data/AccountBaseModel;

    .line 6
    iget-object v0, p0, Lcn/mucang/android/account/activity/l1;->c:Lcn/mucang/android/account/data/AccountBaseModel;

    invoke-virtual {v1}, Lcn/mucang/android/account/data/AccountBaseModel;->getExtraData()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcn/mucang/android/account/data/AccountBaseModel;->setExtraData(Ljava/lang/String;)Lcn/mucang/android/account/data/AccountBaseModel;

    goto :goto_0

    :cond_0
    move-object v1, v0

    goto :goto_0

    :cond_1
    if-eqz v1, :cond_2

    .line 7
    new-instance v0, Lcn/mucang/android/account/data/AccountBaseModel;

    invoke-direct {v0}, Lcn/mucang/android/account/data/AccountBaseModel;-><init>()V

    iput-object v0, p0, Lcn/mucang/android/account/activity/l1;->c:Lcn/mucang/android/account/data/AccountBaseModel;

    .line 8
    invoke-virtual {v1}, Lcn/mucang/android/account/data/AccountBaseModel;->isSkipAuthRealName()Z

    move-result v2

    invoke-virtual {v0, v2}, Lcn/mucang/android/account/data/AccountBaseModel;->setSkipAuthRealName(Z)Lcn/mucang/android/account/data/AccountBaseModel;

    .line 9
    iget-object v0, p0, Lcn/mucang/android/account/activity/l1;->c:Lcn/mucang/android/account/data/AccountBaseModel;

    invoke-virtual {v1}, Lcn/mucang/android/account/data/AccountBaseModel;->getExtraData()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcn/mucang/android/account/data/AccountBaseModel;->setExtraData(Ljava/lang/String;)Lcn/mucang/android/account/data/AccountBaseModel;

    .line 10
    :cond_2
    :goto_0
    iput-object v1, p0, Lcn/mucang/android/account/activity/l1;->b:Lcn/mucang/android/account/data/AccountBaseModel;

    .line 11
    :cond_3
    invoke-super {p0, p1}, Lcn/mucang/android/core/config/n;->onCreate(Landroid/os/Bundle;)V

    .line 12
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object p1

    new-instance v0, Landroid/graphics/drawable/ColorDrawable;

    const/4 v1, -0x1

    invoke-direct {v0, v1}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {p1, v0}, Landroid/view/Window;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method protected onDestroy()V
    .locals 1

    .line 1
    invoke-super {p0}, Lcn/mucang/android/core/config/n;->onDestroy()V

    .line 2
    iget-object v0, p0, Lcn/mucang/android/account/activity/l1;->a:Lcn/mucang/android/account/ui/a;

    invoke-static {v0}, Lcn/mucang/android/core/utils/k;->b(Landroid/app/Dialog;)V

    const/4 v0, 0x0

    .line 3
    iput-object v0, p0, Lcn/mucang/android/account/activity/l1;->a:Lcn/mucang/android/account/ui/a;

    return-void
.end method

.method public startActivity(Landroid/content/Intent;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcn/mucang/android/account/activity/l1;->b:Lcn/mucang/android/account/data/AccountBaseModel;

    if-eqz v0, :cond_0

    const-string v1, "__key_extra_base_model__"

    .line 2
    invoke-virtual {p1, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 3
    :cond_0
    invoke-super {p0, p1}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    return-void
.end method
