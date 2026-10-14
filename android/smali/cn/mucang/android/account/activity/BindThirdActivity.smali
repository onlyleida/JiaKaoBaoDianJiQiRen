.class public Lcn/mucang/android/account/activity/BindThirdActivity;
.super Lcn/mucang/android/account/activity/l1;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcn/mucang/android/account/activity/l1;-><init>()V

    return-void
.end method

.method private init()V
    .locals 3

    .line 1
    sget v0, Lcn/mucang/android/framework/account/R$id;->giveUpTv:I

    invoke-virtual {p0, v0}, Landroidx/appcompat/app/d;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 2
    invoke-virtual {v0}, Landroid/widget/TextView;->getPaint()Landroid/text/TextPaint;

    move-result-object v1

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/text/TextPaint;->setFlags(I)V

    .line 3
    invoke-virtual {v0}, Landroid/widget/TextView;->getPaint()Landroid/text/TextPaint;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/text/TextPaint;->setAntiAlias(Z)V

    .line 4
    new-instance v1, Lcn/mucang/android/account/activity/p;

    invoke-direct {v1, p0}, Lcn/mucang/android/account/activity/p;-><init>(Lcn/mucang/android/account/activity/BindThirdActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 5
    sget v0, Lcn/mucang/android/framework/account/R$id;->bindIv:I

    invoke-virtual {p0, v0}, Landroidx/appcompat/app/d;->findViewById(I)Landroid/view/View;

    move-result-object v0

    new-instance v1, Lcn/mucang/android/account/activity/q;

    invoke-direct {v1, p0}, Lcn/mucang/android/account/activity/q;-><init>(Lcn/mucang/android/account/activity/BindThirdActivity;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method private k()V
    .locals 1

    .line 1
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    const-string v0, "\u7ed1\u5b9a\u7b2c\u4e09\u65b9\u8d26\u53f7-\u70b9\u51fb\u653e\u5f03\u7ed1\u5b9a"

    .line 2
    invoke-static {v0}, Lcn/mucang/android/account/n/a;->onEvent(Ljava/lang/String;)V

    return-void
.end method

.method private l(Ljava/lang/String;)V
    .locals 2

    .line 1
    invoke-static {}, Lcn/mucang/android/account/AccountManager;->h()Lcn/mucang/android/account/AccountManager;

    move-result-object v0

    invoke-virtual {v0}, Lcn/mucang/android/account/AccountManager;->g()Lcn/mucang/android/account/data/AuthUser;

    move-result-object v0

    if-nez v0, :cond_0

    const-string p1, "\u767b\u5f55\u6388\u6743\u5df2\u8fc7\u671f\uff0c\u8bf7\u91cd\u65b0\u767b\u5f55"

    .line 2
    invoke-static {p1}, Lcn/mucang/android/core/utils/u;->h(Ljava/lang/String;)V

    return-void

    :cond_0
    const-string v0, "\u8bf7\u7a0d\u7b49"

    .line 3
    invoke-virtual {p0, v0}, Lcn/mucang/android/account/activity/l1;->j(Ljava/lang/String;)V

    .line 4
    new-instance v0, Lcn/mucang/android/account/activity/BindThirdActivity$a;

    invoke-direct {v0, p0}, Lcn/mucang/android/account/activity/BindThirdActivity$a;-><init>(Lcn/mucang/android/account/activity/BindThirdActivity;)V

    .line 5
    sget-object v1, Lcn/mucang/android/account/third/y;->a:Lcn/mucang/android/account/third/y;

    invoke-virtual {v1, p0, p1, v0}, Lcn/mucang/android/account/third/y;->F(Landroid/app/Activity;Ljava/lang/String;Lcn/mucang/android/account/i/a;)V

    return-void
.end method

.method private synthetic m(Landroid/view/View;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcn/mucang/android/account/activity/BindThirdActivity;->k()V

    return-void
.end method

.method private synthetic o(Landroid/view/View;)V
    .locals 0

    const-string p1, "weixin"

    .line 1
    invoke-direct {p0, p1}, Lcn/mucang/android/account/activity/BindThirdActivity;->l(Ljava/lang/String;)V

    const-string p1, "\u7ed1\u5b9a\u7b2c\u4e09\u65b9\u8d26\u53f7-\u70b9\u51fb\u7ed1\u5b9a\u5fae\u4fe1"

    .line 2
    invoke-static {p1}, Lcn/mucang/android/account/n/a;->onEvent(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public getStatName()Ljava/lang/String;
    .locals 1

    const-string v0, "\u7ed1\u5b9a\u7b2c\u4e09\u65b9\u8d26\u53f7\u9875"

    return-object v0
.end method

.method public synthetic n(Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lcn/mucang/android/account/activity/BindThirdActivity;->m(Landroid/view/View;)V

    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Lcn/mucang/android/account/activity/l1;->onCreate(Landroid/os/Bundle;)V

    .line 2
    sget p1, Lcn/mucang/android/framework/account/R$layout;->account__activity_bind_third:I

    invoke-virtual {p0, p1}, Lcn/mucang/android/core/config/n;->setContentView(I)V

    .line 3
    invoke-direct {p0}, Lcn/mucang/android/account/activity/BindThirdActivity;->init()V

    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 1

    const/4 v0, 0x4

    if-ne p1, v0, :cond_0

    .line 1
    invoke-direct {p0}, Lcn/mucang/android/account/activity/BindThirdActivity;->k()V

    const/4 p1, 0x1

    return p1

    .line 2
    :cond_0
    invoke-super {p0, p1, p2}, Landroidx/appcompat/app/d;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result p1

    return p1
.end method

.method public synthetic p(Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lcn/mucang/android/account/activity/BindThirdActivity;->o(Landroid/view/View;)V

    return-void
.end method
