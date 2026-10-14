.class public Lcn/mucang/android/core/ui/page/PageActivity;
.super Lcn/mucang/android/core/config/n;
.source "SourceFile"


# instance fields
.field private a:Lcn/mucang/android/core/ui/page/c;

.field private b:Lcn/mucang/android/core/webview/b;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcn/mucang/android/core/config/n;-><init>()V

    return-void
.end method

.method public static g(Landroid/content/Context;Lcn/mucang/android/core/ui/page/PageAppConfig;Ljava/lang/Class;Lcn/mucang/android/core/ui/page/PageArgument;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcn/mucang/android/core/ui/page/PageAppConfig;",
            "Ljava/lang/Class<",
            "+",
            "Lcn/mucang/android/core/ui/page/b;",
            ">;",
            "Lcn/mucang/android/core/ui/page/PageArgument;",
            ")V"
        }
    .end annotation

    .line 1
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcn/mucang/android/core/ui/page/PageActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 2
    instance-of v1, p0, Landroid/app/Activity;

    if-nez v1, :cond_0

    const/high16 v1, 0x10000000

    .line 3
    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    :cond_0
    const-string v1, "__app_config"

    .line 4
    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    const-string p1, "__page_class"

    .line 5
    invoke-virtual {v0, p1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    const-string p1, "__page_argument"

    .line 6
    invoke-virtual {v0, p1, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 7
    invoke-virtual {p0, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    return-void
.end method


# virtual methods
.method public finish()V
    .locals 2

    .line 1
    invoke-super {p0}, Landroid/app/Activity;->finish()V

    .line 2
    sget v0, Lcn/mucang/android/framework/webview/R$anim;->core__activity_out:I

    const/4 v1, 0x0

    invoke-virtual {p0, v1, v0}, Landroid/app/Activity;->overridePendingTransition(II)V

    return-void
.end method

.method public getStatName()Ljava/lang/String;
    .locals 1

    const-string v0, "Page\u5bbf\u4e3b\u9875\u9762"

    return-object v0
.end method

.method public onBackPressed()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcn/mucang/android/core/ui/page/PageActivity;->a:Lcn/mucang/android/core/ui/page/c;

    invoke-virtual {v0}, Lcn/mucang/android/core/ui/page/c;->s()V

    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3

    .line 1
    invoke-super {p0, p1}, Lcn/mucang/android/core/config/n;->onCreate(Landroid/os/Bundle;)V

    .line 2
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object p1

    const/high16 v0, 0x4000000

    invoke-virtual {p1, v0}, Landroid/view/Window;->addFlags(I)V

    .line 3
    sget p1, Lcn/mucang/android/framework/webview/R$layout;->core__activity_page:I

    invoke-virtual {p0, p1}, Lcn/mucang/android/core/config/n;->setContentView(I)V

    .line 4
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    const-string v0, "__app_config"

    .line 5
    invoke-virtual {p1, v0}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Lcn/mucang/android/core/ui/page/PageAppConfig;

    const-string v1, "__page_class"

    .line 6
    invoke-virtual {p1, v1}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v1

    check-cast v1, Ljava/lang/Class;

    const-string v2, "__page_argument"

    .line 7
    invoke-virtual {p1, v2}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object p1

    check-cast p1, Lcn/mucang/android/core/ui/page/PageArgument;

    .line 8
    invoke-static {v0, v1, p1}, Lcn/mucang/android/core/ui/page/c;->u(Lcn/mucang/android/core/ui/page/PageAppConfig;Ljava/lang/Class;Lcn/mucang/android/core/ui/page/PageArgument;)Lcn/mucang/android/core/ui/page/c;

    move-result-object p1

    iput-object p1, p0, Lcn/mucang/android/core/ui/page/PageActivity;->a:Lcn/mucang/android/core/ui/page/c;

    .line 9
    invoke-virtual {p0}, Landroidx/fragment/app/d;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/fragment/app/FragmentManager;->m()Landroidx/fragment/app/u;

    move-result-object p1

    sget v0, Lcn/mucang/android/framework/webview/R$id;->fragment_container:I

    iget-object v1, p0, Lcn/mucang/android/core/ui/page/PageActivity;->a:Lcn/mucang/android/core/ui/page/c;

    invoke-virtual {p1, v0, v1}, Landroidx/fragment/app/u;->b(ILandroidx/fragment/app/Fragment;)Landroidx/fragment/app/u;

    invoke-virtual {p1}, Landroidx/fragment/app/u;->i()I

    .line 10
    new-instance p1, Lcn/mucang/android/core/webview/b;

    invoke-direct {p1, p0}, Lcn/mucang/android/core/webview/b;-><init>(Landroid/app/Activity;)V

    iput-object p1, p0, Lcn/mucang/android/core/ui/page/PageActivity;->b:Lcn/mucang/android/core/webview/b;

    return-void
.end method

.method protected onDestroy()V
    .locals 1

    .line 1
    invoke-super {p0}, Lcn/mucang/android/core/config/n;->onDestroy()V

    .line 2
    iget-object v0, p0, Lcn/mucang/android/core/ui/page/PageActivity;->b:Lcn/mucang/android/core/webview/b;

    invoke-virtual {v0}, Lcn/mucang/android/core/webview/b;->d()V

    return-void
.end method
