.class public Lcn/mucang/android/core/webview/HTML5Activity;
.super Lcn/mucang/android/core/config/n;
.source "SourceFile"


# annotations
.annotation runtime Lcn/mucang/android/core/webview/core/k;
.end annotation


# instance fields
.field private a:Lcn/mucang/android/core/webview/e;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcn/mucang/android/core/config/n;-><init>()V

    return-void
.end method

.method private g()V
    .locals 3

    .line 1
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "__core__extra_html__"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Lcn/mucang/android/core/webview/HtmlExtra;

    .line 2
    invoke-static {v0}, Lcn/mucang/android/core/webview/e;->L(Lcn/mucang/android/core/webview/HtmlExtra;)Lcn/mucang/android/core/webview/e;

    move-result-object v0

    iput-object v0, p0, Lcn/mucang/android/core/webview/HTML5Activity;->a:Lcn/mucang/android/core/webview/e;

    .line 3
    invoke-virtual {p0}, Landroidx/fragment/app/d;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/fragment/app/FragmentManager;->m()Landroidx/fragment/app/u;

    move-result-object v0

    sget v1, Lcn/mucang/android/framework/webview/R$id;->fragment_container:I

    iget-object v2, p0, Lcn/mucang/android/core/webview/HTML5Activity;->a:Lcn/mucang/android/core/webview/e;

    invoke-virtual {v0, v1, v2}, Landroidx/fragment/app/u;->b(ILandroidx/fragment/app/Fragment;)Landroidx/fragment/app/u;

    invoke-virtual {v0}, Landroidx/fragment/app/u;->i()I

    return-void
.end method

.method public static i(Landroid/content/Context;Lcn/mucang/android/core/webview/HtmlExtra;)V
    .locals 2

    if-eqz p0, :cond_2

    if-eqz p1, :cond_2

    .line 1
    invoke-virtual {p1}, Lcn/mucang/android/core/webview/HtmlExtra;->getOriginUrl()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcn/mucang/android/core/utils/n0;->e(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcn/mucang/android/core/webview/HTML5Activity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 3
    invoke-static {p0}, Lcn/mucang/android/core/utils/d;->c(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_1

    const/high16 v1, 0x10000000

    .line 4
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    :cond_1
    const-string v1, "__core__extra_html__"

    .line 5
    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 6
    invoke-virtual {p0, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    return-void

    :cond_2
    :goto_0
    const-string p0, "HTML5Activity"

    const-string p1, "context, htmlExtra and extra\'s url must be not null"

    .line 7
    invoke-static {p0, p1}, Lcn/mucang/android/core/utils/t;->m(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method


# virtual methods
.method public getStatName()Ljava/lang/String;
    .locals 1

    const-string v0, "\u6728\u4ed3HTML"

    return-object v0
.end method

.method protected h(Lcn/mucang/android/core/webview/core/d;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcn/mucang/android/core/webview/HTML5Activity;->a:Lcn/mucang/android/core/webview/e;

    invoke-virtual {v0, p1}, Lcn/mucang/android/core/webview/e;->D(Lcn/mucang/android/core/webview/core/d;)V

    return-void
.end method

.method protected j(Ljava/lang/String;)V
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "long pressed, the hint url is "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "HTML5Activity"

    invoke-static {v0, p1}, Lcn/mucang/android/core/utils/t;->a(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public onBackPressed()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcn/mucang/android/core/webview/HTML5Activity;->a:Lcn/mucang/android/core/webview/e;

    invoke-virtual {v0}, Lcn/mucang/android/core/webview/e;->F()V

    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Lcn/mucang/android/core/config/n;->onCreate(Landroid/os/Bundle;)V

    .line 2
    sget p1, Lcn/mucang/android/framework/webview/R$layout;->core__activity_html_web_view:I

    invoke-virtual {p0, p1}, Lcn/mucang/android/core/config/n;->setContentView(I)V

    .line 3
    invoke-direct {p0}, Lcn/mucang/android/core/webview/HTML5Activity;->g()V

    return-void
.end method
