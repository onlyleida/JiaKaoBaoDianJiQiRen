.class public Lcn/mucang/android/core/config/YourActivity;
.super Lcn/mucang/android/core/config/n;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/mucang/android/core/config/YourActivity$b;
    }
.end annotation


# instance fields
.field private a:Ljava/lang/String;

.field private b:Lcn/mucang/android/framework/core/databinding/CoreYourBinding;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcn/mucang/android/core/config/n;-><init>()V

    return-void
.end method

.method private g()V
    .locals 7

    .line 1
    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    .line 2
    invoke-static {}, Lf/a/a/a/h;->b()Lf/a/a/a/h;

    move-result-object v1

    invoke-virtual {v1}, Lf/a/a/a/h;->c()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcn/mucang/android/core/config/y/b;

    .line 3
    instance-of v3, v2, Lcn/mucang/android/core/config/y/a;

    .line 4
    sget v4, Lcn/mucang/android/framework/core/R$layout;->core__your_extra_category:I

    iget-object v5, p0, Lcn/mucang/android/core/config/YourActivity;->b:Lcn/mucang/android/framework/core/databinding/CoreYourBinding;

    iget-object v5, v5, Lcn/mucang/android/framework/core/databinding/CoreYourBinding;->container:Landroid/widget/LinearLayout;

    const/4 v6, 0x0

    .line 5
    invoke-virtual {v0, v4, v5, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/view/ViewGroup;

    if-eqz v3, :cond_1

    .line 6
    iget-object v3, p0, Lcn/mucang/android/core/config/YourActivity;->b:Lcn/mucang/android/framework/core/databinding/CoreYourBinding;

    iget-object v3, v3, Lcn/mucang/android/framework/core/databinding/CoreYourBinding;->container:Landroid/widget/LinearLayout;

    invoke-virtual {v3, v4, v6}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;I)V

    goto :goto_0

    .line 7
    :cond_1
    iget-object v3, p0, Lcn/mucang/android/core/config/YourActivity;->b:Lcn/mucang/android/framework/core/databinding/CoreYourBinding;

    iget-object v3, v3, Lcn/mucang/android/framework/core/databinding/CoreYourBinding;->container:Landroid/widget/LinearLayout;

    invoke-virtual {v3, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    :goto_0
    const v3, 0x1020014

    .line 8
    invoke-virtual {v4, v3}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    .line 9
    invoke-interface {v2}, Lcn/mucang/android/core/config/y/b;->b()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 10
    invoke-interface {v2}, Lcn/mucang/android/core/config/y/b;->a()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcn/mucang/android/core/config/y/c;

    .line 11
    invoke-interface {v3, v0, v4}, Lcn/mucang/android/core/config/y/c;->a(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v4, v3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    goto :goto_1

    :cond_2
    return-void
.end method

.method private h()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcn/mucang/android/core/config/YourActivity;->b:Lcn/mucang/android/framework/core/databinding/CoreYourBinding;

    iget-object v0, v0, Lcn/mucang/android/framework/core/databinding/CoreYourBinding;->btnSpClear:Landroid/widget/Button;

    new-instance v1, Lcn/mucang/android/core/config/e;

    invoke-direct {v1, p0}, Lcn/mucang/android/core/config/e;-><init>(Lcn/mucang/android/core/config/YourActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 2
    iget-object v0, p0, Lcn/mucang/android/core/config/YourActivity;->b:Lcn/mucang/android/framework/core/databinding/CoreYourBinding;

    iget-object v0, v0, Lcn/mucang/android/framework/core/databinding/CoreYourBinding;->btnSpCheck:Landroid/widget/Button;

    new-instance v1, Lcn/mucang/android/core/config/g;

    invoke-direct {v1, p0}, Lcn/mucang/android/core/config/g;-><init>(Lcn/mucang/android/core/config/YourActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method private synthetic i(Landroid/view/View;)V
    .locals 2

    .line 1
    iget-object p1, p0, Lcn/mucang/android/core/config/YourActivity;->b:Lcn/mucang/android/framework/core/databinding/CoreYourBinding;

    iget-object p1, p1, Lcn/mucang/android/framework/core/databinding/CoreYourBinding;->editSpFileName:Landroid/widget/EditText;

    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    .line 2
    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string p1, "Sp \u6587\u4ef6\u540d\u4e0d\u80fd\u4e3a\u7a7a"

    .line 3
    invoke-static {p1}, Lcn/mucang/android/core/utils/u;->h(Ljava/lang/String;)V

    return-void

    .line 4
    :cond_0
    iget-object v0, p0, Lcn/mucang/android/core/config/YourActivity;->b:Lcn/mucang/android/framework/core/databinding/CoreYourBinding;

    iget-object v0, v0, Lcn/mucang/android/framework/core/databinding/CoreYourBinding;->editSpKey:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    .line 5
    invoke-static {p1}, Lcn/mucang/android/core/utils/j0;->b(Ljava/lang/String;)Landroid/content/SharedPreferences;

    move-result-object p1

    .line 6
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 7
    invoke-interface {p1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->clear()Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    const-string p1, "\u6574\u4e2a\u914d\u7f6e\u6587\u4ef6\u6e05\u7a7a\u5b8c\u6210"

    .line 8
    invoke-static {p1}, Lcn/mucang/android/core/utils/u;->h(Ljava/lang/String;)V

    goto :goto_0

    .line 9
    :cond_1
    invoke-interface {p1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1, v0}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    const-string p1, "\u5355\u4e2akey\u79fb\u9664\u5b8c\u6210"

    .line 10
    invoke-static {p1}, Lcn/mucang/android/core/utils/u;->h(Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method private synthetic k(Landroid/view/View;)V
    .locals 3

    .line 1
    iget-object p1, p0, Lcn/mucang/android/core/config/YourActivity;->b:Lcn/mucang/android/framework/core/databinding/CoreYourBinding;

    iget-object p1, p1, Lcn/mucang/android/framework/core/databinding/CoreYourBinding;->editSpFileName:Landroid/widget/EditText;

    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    .line 2
    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string p1, "Sp \u6587\u4ef6\u540d\u4e0d\u80fd\u4e3a\u7a7a"

    .line 3
    invoke-static {p1}, Lcn/mucang/android/core/utils/u;->h(Ljava/lang/String;)V

    return-void

    .line 4
    :cond_0
    iget-object v0, p0, Lcn/mucang/android/core/config/YourActivity;->b:Lcn/mucang/android/framework/core/databinding/CoreYourBinding;

    iget-object v0, v0, Lcn/mucang/android/framework/core/databinding/CoreYourBinding;->editSpKey:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    .line 5
    invoke-static {p1}, Lcn/mucang/android/core/utils/j0;->b(Ljava/lang/String;)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 6
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 7
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "\u6587\u4ef6\u7684\u6240\u6709\u914d\u7f6e"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v1}, Landroid/content/SharedPreferences;->getAll()Ljava/util/Map;

    move-result-object v0

    invoke-static {v0}, Lcom/alibaba/fastjson/JSON;->toJSONString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcn/mucang/android/core/config/YourActivity;->r(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 8
    :cond_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "\u6587\u4ef6\uff0ckey\uff1a"

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "\u7684\u914d\u7f6e"

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v2, ""

    .line 9
    invoke-interface {v1, v0, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 10
    invoke-direct {p0, p1, v0}, Lcn/mucang/android/core/config/YourActivity;->r(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method static synthetic m(Landroid/widget/CompoundButton;Z)V
    .locals 0

    .line 1
    invoke-static {p1}, Lf/a/a/a/d;->g(Z)V

    return-void
.end method

.method private synthetic n(Ljava/lang/String;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcn/mucang/android/core/config/YourActivity;->b:Lcn/mucang/android/framework/core/databinding/CoreYourBinding;

    iget-object v0, v0, Lcn/mucang/android/framework/core/databinding/CoreYourBinding;->testDevice:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method private synthetic p()V
    .locals 2

    .line 1
    new-instance v0, Lcn/mucang/android/core/config/YourActivity$b;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcn/mucang/android/core/config/YourActivity$b;-><init>(Lcn/mucang/android/core/config/YourActivity$a;)V

    invoke-virtual {v0}, Lcn/mucang/android/core/config/YourActivity$b;->b()Ljava/lang/String;

    move-result-object v0

    .line 2
    new-instance v1, Lcn/mucang/android/core/config/f;

    invoke-direct {v1, p0, v0}, Lcn/mucang/android/core/config/f;-><init>(Lcn/mucang/android/core/config/YourActivity;Ljava/lang/String;)V

    invoke-static {v1}, Lcn/mucang/android/core/utils/u;->f(Ljava/lang/Runnable;)V

    return-void
.end method

.method private r(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 1
    new-instance v0, Landroidx/appcompat/app/c$a;

    invoke-direct {v0, p0}, Landroidx/appcompat/app/c$a;-><init>(Landroid/content/Context;)V

    .line 2
    invoke-virtual {v0, p1}, Landroidx/appcompat/app/c$a;->setTitle(Ljava/lang/CharSequence;)Landroidx/appcompat/app/c$a;

    move-result-object p1

    .line 3
    invoke-virtual {p1, p2}, Landroidx/appcompat/app/c$a;->setMessage(Ljava/lang/CharSequence;)Landroidx/appcompat/app/c$a;

    move-result-object p1

    new-instance p2, Lcn/mucang/android/core/config/YourActivity$a;

    invoke-direct {p2, p0}, Lcn/mucang/android/core/config/YourActivity$a;-><init>(Lcn/mucang/android/core/config/YourActivity;)V

    const-string v0, "\u5173\u95ed"

    .line 4
    invoke-virtual {p1, v0, p2}, Landroidx/appcompat/app/c$a;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/c$a;

    move-result-object p1

    .line 5
    invoke-virtual {p1}, Landroidx/appcompat/app/c$a;->show()Landroidx/appcompat/app/c;

    return-void
.end method


# virtual methods
.method public getStatName()Ljava/lang/String;
    .locals 1

    const-string v0, "Your"

    return-object v0
.end method

.method public synthetic j(Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lcn/mucang/android/core/config/YourActivity;->i(Landroid/view/View;)V

    return-void
.end method

.method public synthetic l(Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lcn/mucang/android/core/config/YourActivity;->k(Landroid/view/View;)V

    return-void
.end method

.method public synthetic o(Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lcn/mucang/android/core/config/YourActivity;->n(Ljava/lang/String;)V

    return-void
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 0

    .line 1
    invoke-super {p0, p1, p2, p3}, Landroidx/fragment/app/d;->onActivityResult(IILandroid/content/Intent;)V

    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 7

    .line 1
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    .line 2
    sget v1, Lcn/mucang/android/framework/core/R$id;->debug_on:I

    const/4 v2, 0x1

    if-ne v0, v1, :cond_0

    .line 3
    invoke-static {v2}, Lcn/mucang/android/core/config/MucangConfig;->z(Z)V

    goto/16 :goto_1

    .line 4
    :cond_0
    sget v1, Lcn/mucang/android/framework/core/R$id;->debug_off:I

    const/4 v3, 0x0

    if-ne v0, v1, :cond_1

    .line 5
    invoke-static {v3}, Lcn/mucang/android/core/config/MucangConfig;->z(Z)V

    goto/16 :goto_1

    .line 6
    :cond_1
    sget v1, Lcn/mucang/android/framework/core/R$id;->webview_debug_on:I

    if-ne v0, v1, :cond_2

    .line 7
    invoke-static {v2}, Landroid/webkit/WebView;->setWebContentsDebuggingEnabled(Z)V

    goto/16 :goto_1

    .line 8
    :cond_2
    sget v1, Lcn/mucang/android/framework/core/R$id;->webview_debug_off:I

    if-ne v0, v1, :cond_3

    .line 9
    invoke-static {v3}, Landroid/webkit/WebView;->setWebContentsDebuggingEnabled(Z)V

    goto/16 :goto_1

    .line 10
    :cond_3
    sget v1, Lcn/mucang/android/framework/core/R$id;->btn_view_objects:I

    const/4 v4, 0x0

    const-string v5, "\u786e\u5b9a"

    if-ne v0, v1, :cond_4

    .line 11
    invoke-static {}, Lcn/mucang/android/core/utils/v;->a()Ljava/lang/String;

    move-result-object p1

    .line 12
    new-instance v0, Landroidx/appcompat/app/c$a;

    invoke-direct {v0, p0}, Landroidx/appcompat/app/c$a;-><init>(Landroid/content/Context;)V

    const-string v1, "\u5185\u5b58\u5bf9\u8c61"

    .line 13
    invoke-virtual {v0, v1}, Landroidx/appcompat/app/c$a;->setTitle(Ljava/lang/CharSequence;)Landroidx/appcompat/app/c$a;

    move-result-object v0

    .line 14
    invoke-virtual {v0, p1}, Landroidx/appcompat/app/c$a;->setMessage(Ljava/lang/CharSequence;)Landroidx/appcompat/app/c$a;

    move-result-object p1

    .line 15
    invoke-virtual {p1, v5, v4}, Landroidx/appcompat/app/c$a;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/c$a;

    move-result-object p1

    .line 16
    invoke-virtual {p1}, Landroidx/appcompat/app/c$a;->show()Landroidx/appcompat/app/c;

    goto/16 :goto_1

    .line 17
    :cond_4
    sget v1, Lcn/mucang/android/framework/core/R$id;->btn_select_city:I

    if-ne v0, v1, :cond_5

    goto/16 :goto_1

    .line 18
    :cond_5
    sget v1, Lcn/mucang/android/framework/core/R$id;->btn_submit_city:I

    const-string v6, "\u8bbe\u7f6e\u6210\u529f"

    if-ne v0, v1, :cond_7

    .line 19
    :try_start_0
    invoke-static {}, Lcn/mucang/android/core/config/MucangConfig;->v()Z

    move-result p1

    if-eqz p1, :cond_6

    .line 20
    new-instance p1, Lcn/mucang/android/core/location/c;

    invoke-direct {p1}, Lcn/mucang/android/core/location/c;-><init>()V

    .line 21
    iget-object v0, p0, Lcn/mucang/android/core/config/YourActivity;->b:Lcn/mucang/android/framework/core/databinding/CoreYourBinding;

    iget-object v0, v0, Lcn/mucang/android/framework/core/databinding/CoreYourBinding;->cityName:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcn/mucang/android/core/location/c;->m(Ljava/lang/String;)V

    .line 22
    iget-object v0, p0, Lcn/mucang/android/core/config/YourActivity;->b:Lcn/mucang/android/framework/core/databinding/CoreYourBinding;

    iget-object v0, v0, Lcn/mucang/android/framework/core/databinding/CoreYourBinding;->cityCode:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcn/mucang/android/core/location/c;->l(Ljava/lang/String;)V

    .line 23
    iget-object v0, p0, Lcn/mucang/android/core/config/YourActivity;->b:Lcn/mucang/android/framework/core/databinding/CoreYourBinding;

    iget-object v0, v0, Lcn/mucang/android/framework/core/databinding/CoreYourBinding;->cityLongitude:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Lcn/mucang/android/core/location/c;->p(D)V

    .line 24
    iget-object v0, p0, Lcn/mucang/android/core/config/YourActivity;->b:Lcn/mucang/android/framework/core/databinding/CoreYourBinding;

    iget-object v0, v0, Lcn/mucang/android/framework/core/databinding/CoreYourBinding;->cityLatitude:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Lcn/mucang/android/core/location/c;->o(D)V

    .line 25
    invoke-static {p1}, Lcn/mucang/android/core/location/LocationUtils;->r(Lcn/mucang/android/core/location/c;)V

    .line 26
    invoke-static {v6}, Lcn/mucang/android/core/utils/u;->h(Ljava/lang/String;)V

    goto/16 :goto_1

    :cond_6
    const-string p1, "\u5f53\u524d\u4e0d\u662f\u8c03\u8bd5\u6a21\u5f0f\uff0c\u4e0d\u80fd\u8bbe\u7f6e\u8c03\u8bd5\u4f4d\u7f6e"

    .line 27
    invoke-static {p1}, Lcn/mucang/android/core/utils/u;->h(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_1

    :catch_0
    move-exception p1

    const-string v0, "\u9ed8\u8ba4\u66ff\u6362"

    .line 28
    invoke-static {v0, p1}, Lcn/mucang/android/core/utils/t;->c(Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 29
    invoke-virtual {p1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcn/mucang/android/core/utils/u;->h(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 30
    :cond_7
    sget v1, Lcn/mucang/android/framework/core/R$id;->btn_appuser:I

    if-ne v0, v1, :cond_8

    .line 31
    invoke-static {}, Lcn/mucang/android/core/identity/i;->b()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcn/mucang/android/core/utils/j;->u(Ljava/lang/String;)V

    const-string p1, "\u5df2\u590d\u5236appuser\u81f3\u7c98\u5e16\u677f"

    .line 32
    invoke-static {p1}, Lcn/mucang/android/core/utils/u;->h(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 33
    :cond_8
    sget v1, Lcn/mucang/android/framework/core/R$id;->btn_mucangid:I

    if-ne v0, v1, :cond_a

    .line 34
    iget-object p1, p0, Lcn/mucang/android/core/config/YourActivity;->a:Ljava/lang/String;

    invoke-static {p1}, Lcn/mucang/android/core/utils/n0;->e(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_9

    const-string p1, "\u6728\u4ed3Id\u4e3a\u7a7a"

    .line 35
    invoke-static {p1}, Lcn/mucang/android/core/utils/u;->h(Ljava/lang/String;)V

    return-void

    .line 36
    :cond_9
    iget-object p1, p0, Lcn/mucang/android/core/config/YourActivity;->a:Ljava/lang/String;

    invoke-static {p1}, Lcn/mucang/android/core/utils/j;->u(Ljava/lang/String;)V

    const-string p1, "\u5df2\u590d\u5236mucangId\u81f3\u7c98\u5e16\u677f"

    .line 37
    invoke-static {p1}, Lcn/mucang/android/core/utils/u;->h(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 38
    :cond_a
    sget v1, Lcn/mucang/android/framework/core/R$id;->btn_log_level:I

    if-ne v0, v1, :cond_c

    .line 39
    :try_start_1
    invoke-static {}, Lcn/mucang/android/core/config/MucangConfig;->v()Z

    move-result p1

    if-eqz p1, :cond_b

    .line 40
    iget-object p1, p0, Lcn/mucang/android/core/config/YourActivity;->b:Lcn/mucang/android/framework/core/databinding/CoreYourBinding;

    iget-object p1, p1, Lcn/mucang/android/framework/core/databinding/CoreYourBinding;->logLevelEdit:Landroid/widget/EditText;

    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1

    .line 41
    invoke-static {p1}, Lcn/mucang/android/core/utils/t;->j(I)V

    .line 42
    invoke-static {v6}, Lcn/mucang/android/core/utils/u;->h(Ljava/lang/String;)V

    goto/16 :goto_1

    :cond_b
    const-string p1, "\u5f53\u524d\u4e0d\u662f\u8c03\u8bd5\u6a21\u5f0f\uff0c\u4e0d\u80fd\u8bbe\u7f6e\u65e5\u5fd7\u7ea7\u522b"

    .line 43
    invoke-static {p1}, Lcn/mucang/android/core/utils/u;->h(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto/16 :goto_1

    :catch_1
    move-exception p1

    .line 44
    invoke-virtual {p1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcn/mucang/android/core/utils/u;->h(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 45
    :cond_c
    sget v1, Lcn/mucang/android/framework/core/R$id;->btn_view_modules:I

    if-ne v0, v1, :cond_e

    .line 46
    invoke-static {}, Lcn/mucang/android/core/utils/v0;->a()Ljava/util/Map;

    move-result-object p1

    .line 47
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 48
    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_d

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 49
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ":"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    const-string v1, "\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "========================\n"

    .line 50
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 51
    :cond_d
    new-instance p1, Landroidx/appcompat/app/c$a;

    invoke-direct {p1, p0}, Landroidx/appcompat/app/c$a;-><init>(Landroid/content/Context;)V

    const-string v1, "\u6a21\u5757\u5185\u5bb9"

    .line 52
    invoke-virtual {p1, v1}, Landroidx/appcompat/app/c$a;->setTitle(Ljava/lang/CharSequence;)Landroidx/appcompat/app/c$a;

    move-result-object p1

    .line 53
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroidx/appcompat/app/c$a;->setMessage(Ljava/lang/CharSequence;)Landroidx/appcompat/app/c$a;

    move-result-object p1

    .line 54
    invoke-virtual {p1, v5, v4}, Landroidx/appcompat/app/c$a;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/c$a;

    move-result-object p1

    .line 55
    invoke-virtual {p1}, Landroidx/appcompat/app/c$a;->show()Landroidx/appcompat/app/c;

    .line 56
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcn/mucang/android/core/utils/j;->u(Ljava/lang/String;)V

    const-string p1, "\u5df2\u590d\u5236\u5f53\u524d\u5185\u5bb9\u81f3\u7c98\u5e16\u677f"

    .line 57
    invoke-static {p1}, Lcn/mucang/android/core/utils/u;->h(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 58
    :cond_e
    sget v1, Lcn/mucang/android/framework/core/R$id;->url_ok:I

    if-ne v0, v1, :cond_10

    .line 59
    iget-object p1, p0, Lcn/mucang/android/core/config/YourActivity;->b:Lcn/mucang/android/framework/core/databinding/CoreYourBinding;

    iget-object p1, p1, Lcn/mucang/android/framework/core/databinding/CoreYourBinding;->editUrl:Landroid/widget/EditText;

    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    .line 60
    invoke-static {p1}, Lcn/mucang/android/core/utils/n0;->e(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_f

    const-string p1, "\u8bf7\u8f93\u5165URL"

    .line 61
    invoke-static {p1}, Lcn/mucang/android/core/utils/u;->h(Ljava/lang/String;)V

    goto :goto_1

    .line 62
    :cond_f
    invoke-static {p0, p1, v2}, Lf/a/a/a/i/h;->d(Landroid/content/Context;Ljava/lang/String;Z)Z

    goto :goto_1

    .line 63
    :cond_10
    sget v1, Lcn/mucang/android/framework/core/R$id;->edit_autoclick_on:I

    if-ne v0, v1, :cond_11

    .line 64
    invoke-static {v2}, Lf/a/a/a/d;->f(Z)V

    goto :goto_1

    .line 65
    :cond_11
    sget v1, Lcn/mucang/android/framework/core/R$id;->edit_autoclick_off:I

    if-ne v0, v1, :cond_12

    .line 66
    invoke-static {v3}, Lf/a/a/a/d;->f(Z)V

    goto :goto_1

    .line 67
    :cond_12
    sget v1, Lcn/mucang/android/framework/core/R$id;->btn_androidid:I

    if-ne v0, v1, :cond_13

    .line 68
    invoke-static {}, Lcn/mucang/android/core/identity/i;->a()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcn/mucang/android/core/utils/j;->u(Ljava/lang/String;)V

    const-string p1, "\u5df2\u590d\u5236androidId\u81f3\u7c98\u5e16\u677f"

    .line 69
    invoke-static {p1}, Lcn/mucang/android/core/utils/u;->h(Ljava/lang/String;)V

    goto :goto_1

    .line 70
    :cond_13
    sget v1, Lcn/mucang/android/framework/core/R$id;->remote_config_ok:I

    if-ne v0, v1, :cond_14

    .line 71
    invoke-static {}, Lcn/mucang/android/core/config/s;->h()Lcn/mucang/android/core/config/s;

    move-result-object p1

    iget-object v0, p0, Lcn/mucang/android/core/config/YourActivity;->b:Lcn/mucang/android/framework/core/databinding/CoreYourBinding;

    iget-object v0, v0, Lcn/mucang/android/framework/core/databinding/CoreYourBinding;->editRemoteConfig:Landroid/widget/EditText;

    .line 72
    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcn/mucang/android/core/config/s;->e(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 73
    new-instance v0, Landroidx/appcompat/app/c$a;

    invoke-direct {v0, p0}, Landroidx/appcompat/app/c$a;-><init>(Landroid/content/Context;)V

    const-string v1, "\u8fdc\u7a0b\u914d\u7f6e"

    .line 74
    invoke-virtual {v0, v1}, Landroidx/appcompat/app/c$a;->setTitle(Ljava/lang/CharSequence;)Landroidx/appcompat/app/c$a;

    move-result-object v0

    .line 75
    invoke-virtual {v0, p1}, Landroidx/appcompat/app/c$a;->setMessage(Ljava/lang/CharSequence;)Landroidx/appcompat/app/c$a;

    move-result-object p1

    .line 76
    invoke-virtual {p1, v5, v4}, Landroidx/appcompat/app/c$a;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/c$a;

    move-result-object p1

    .line 77
    invoke-virtual {p1}, Landroidx/appcompat/app/c$a;->show()Landroidx/appcompat/app/c;

    goto :goto_1

    .line 78
    :cond_14
    sget v1, Lcn/mucang/android/framework/core/R$id;->btn_test_h5_protocol:I

    if-ne v0, v1, :cond_15

    .line 79
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    const-string v0, "https://share-m.kakamobi.com/activity.kakamobi.com/webview-full/"

    invoke-static {p1, v0, v2}, Lf/a/a/a/i/h;->d(Landroid/content/Context;Ljava/lang/String;Z)Z

    :cond_15
    :goto_1
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 4

    .line 1
    invoke-super {p0, p1}, Lcn/mucang/android/core/config/n;->onCreate(Landroid/os/Bundle;)V

    .line 2
    invoke-static {}, Lcn/mucang/android/core/config/mapping/k;->c()Ljava/util/List;

    move-result-object p1

    invoke-static {p1}, Lcn/mucang/android/core/utils/g;->b(Ljava/util/Collection;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 3
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    const-string p1, "\u975e\u6cd5\u542f\u52a8"

    .line 4
    invoke-static {p1}, Lcn/mucang/android/core/utils/u;->h(Ljava/lang/String;)V

    return-void

    .line 5
    :cond_0
    invoke-virtual {p0}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object p1

    invoke-static {p1}, Lcn/mucang/android/framework/core/databinding/CoreYourBinding;->inflate(Landroid/view/LayoutInflater;)Lcn/mucang/android/framework/core/databinding/CoreYourBinding;

    move-result-object p1

    iput-object p1, p0, Lcn/mucang/android/core/config/YourActivity;->b:Lcn/mucang/android/framework/core/databinding/CoreYourBinding;

    .line 6
    invoke-virtual {p1}, Lcn/mucang/android/framework/core/databinding/CoreYourBinding;->getRoot()Landroid/widget/ScrollView;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcn/mucang/android/core/config/n;->setContentView(Landroid/view/View;)V

    .line 7
    invoke-static {}, Lcn/mucang/android/core/location/LocationUtils;->d()Lcn/mucang/android/core/location/c;

    move-result-object p1

    const-string v0, ""

    if-eqz p1, :cond_1

    .line 8
    iget-object v1, p0, Lcn/mucang/android/core/config/YourActivity;->b:Lcn/mucang/android/framework/core/databinding/CoreYourBinding;

    iget-object v1, v1, Lcn/mucang/android/framework/core/databinding/CoreYourBinding;->cityName:Landroid/widget/TextView;

    invoke-virtual {p1}, Lcn/mucang/android/core/location/c;->c()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 9
    iget-object v1, p0, Lcn/mucang/android/core/config/YourActivity;->b:Lcn/mucang/android/framework/core/databinding/CoreYourBinding;

    iget-object v1, v1, Lcn/mucang/android/framework/core/databinding/CoreYourBinding;->cityCode:Landroid/widget/EditText;

    invoke-virtual {p1}, Lcn/mucang/android/core/location/c;->b()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 10
    iget-object v1, p0, Lcn/mucang/android/core/config/YourActivity;->b:Lcn/mucang/android/framework/core/databinding/CoreYourBinding;

    iget-object v1, v1, Lcn/mucang/android/framework/core/databinding/CoreYourBinding;->cityLongitude:Landroid/widget/EditText;

    invoke-virtual {p1}, Lcn/mucang/android/core/location/c;->f()D

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 11
    iget-object v1, p0, Lcn/mucang/android/core/config/YourActivity;->b:Lcn/mucang/android/framework/core/databinding/CoreYourBinding;

    iget-object v1, v1, Lcn/mucang/android/framework/core/databinding/CoreYourBinding;->cityLatitude:Landroid/widget/EditText;

    invoke-virtual {p1}, Lcn/mucang/android/core/location/c;->e()D

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 12
    :cond_1
    iget-object p1, p0, Lcn/mucang/android/core/config/YourActivity;->b:Lcn/mucang/android/framework/core/databinding/CoreYourBinding;

    iget-object p1, p1, Lcn/mucang/android/framework/core/databinding/CoreYourBinding;->cityName:Landroid/widget/TextView;

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 13
    iget-object p1, p0, Lcn/mucang/android/core/config/YourActivity;->b:Lcn/mucang/android/framework/core/databinding/CoreYourBinding;

    iget-object p1, p1, Lcn/mucang/android/framework/core/databinding/CoreYourBinding;->cityCode:Landroid/widget/EditText;

    invoke-virtual {p1, v0}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 14
    iget-object p1, p0, Lcn/mucang/android/core/config/YourActivity;->b:Lcn/mucang/android/framework/core/databinding/CoreYourBinding;

    iget-object p1, p1, Lcn/mucang/android/framework/core/databinding/CoreYourBinding;->cityLongitude:Landroid/widget/EditText;

    invoke-virtual {p1, v0}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 15
    iget-object p1, p0, Lcn/mucang/android/core/config/YourActivity;->b:Lcn/mucang/android/framework/core/databinding/CoreYourBinding;

    iget-object p1, p1, Lcn/mucang/android/framework/core/databinding/CoreYourBinding;->cityLatitude:Landroid/widget/EditText;

    invoke-virtual {p1, v0}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 16
    :goto_0
    invoke-static {}, Lcn/mucang/android/core/config/MucangConfig;->v()Z

    move-result p1

    const/4 v1, 0x1

    if-eqz p1, :cond_2

    .line 17
    iget-object p1, p0, Lcn/mucang/android/core/config/YourActivity;->b:Lcn/mucang/android/framework/core/databinding/CoreYourBinding;

    iget-object p1, p1, Lcn/mucang/android/framework/core/databinding/CoreYourBinding;->debugOn:Landroid/widget/RadioButton;

    invoke-virtual {p1, v1}, Landroid/widget/RadioButton;->setChecked(Z)V

    goto :goto_1

    .line 18
    :cond_2
    iget-object p1, p0, Lcn/mucang/android/core/config/YourActivity;->b:Lcn/mucang/android/framework/core/databinding/CoreYourBinding;

    iget-object p1, p1, Lcn/mucang/android/framework/core/databinding/CoreYourBinding;->debugOff:Landroid/widget/RadioButton;

    invoke-virtual {p1, v1}, Landroid/widget/RadioButton;->setChecked(Z)V

    .line 19
    :goto_1
    iget-object p1, p0, Lcn/mucang/android/core/config/YourActivity;->b:Lcn/mucang/android/framework/core/databinding/CoreYourBinding;

    iget-object p1, p1, Lcn/mucang/android/framework/core/databinding/CoreYourBinding;->appuser:Landroid/widget/TextView;

    invoke-static {}, Lcn/mucang/android/core/identity/i;->b()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const-string p1, "_am_am_.db"

    const-string v2, "mucangId"

    .line 20
    invoke-static {p1, v2, v0}, Lcn/mucang/android/core/utils/j0;->f(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcn/mucang/android/core/config/YourActivity;->a:Ljava/lang/String;

    .line 21
    iget-object v0, p0, Lcn/mucang/android/core/config/YourActivity;->b:Lcn/mucang/android/framework/core/databinding/CoreYourBinding;

    iget-object v0, v0, Lcn/mucang/android/framework/core/databinding/CoreYourBinding;->mucangid:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 22
    iget-object p1, p0, Lcn/mucang/android/core/config/YourActivity;->b:Lcn/mucang/android/framework/core/databinding/CoreYourBinding;

    iget-object p1, p1, Lcn/mucang/android/framework/core/databinding/CoreYourBinding;->logLevelEdit:Landroid/widget/EditText;

    invoke-static {}, Lcn/mucang/android/core/utils/t;->f()I

    move-result v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 23
    iget-object p1, p0, Lcn/mucang/android/core/config/YourActivity;->b:Lcn/mucang/android/framework/core/databinding/CoreYourBinding;

    iget-object p1, p1, Lcn/mucang/android/framework/core/databinding/CoreYourBinding;->qudao:Landroid/widget/TextView;

    invoke-static {}, Lcn/mucang/android/core/utils/p;->h()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 24
    iget-object p1, p0, Lcn/mucang/android/core/config/YourActivity;->b:Lcn/mucang/android/framework/core/databinding/CoreYourBinding;

    iget-object p1, p1, Lcn/mucang/android/framework/core/databinding/CoreYourBinding;->renyuan:Landroid/widget/TextView;

    invoke-static {}, Lcn/mucang/android/core/utils/p;->i()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 25
    iget-object p1, p0, Lcn/mucang/android/core/config/YourActivity;->b:Lcn/mucang/android/framework/core/databinding/CoreYourBinding;

    iget-object p1, p1, Lcn/mucang/android/framework/core/databinding/CoreYourBinding;->androidid:Landroid/widget/TextView;

    invoke-static {}, Lcn/mucang/android/core/identity/i;->a()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 26
    iget-object p1, p0, Lcn/mucang/android/core/config/YourActivity;->b:Lcn/mucang/android/framework/core/databinding/CoreYourBinding;

    iget-object p1, p1, Lcn/mucang/android/framework/core/databinding/CoreYourBinding;->emulator:Landroid/widget/TextView;

    invoke-static {}, Lcn/mucang/android/core/utils/l;->a()Z

    move-result v0

    if-eqz v0, :cond_3

    const-string v0, "\u662f"

    goto :goto_2

    :cond_3
    const-string v0, "\u5426"

    :goto_2
    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 27
    invoke-static {}, Lf/a/a/a/d;->a()Z

    move-result p1

    if-eqz p1, :cond_4

    .line 28
    iget-object p1, p0, Lcn/mucang/android/core/config/YourActivity;->b:Lcn/mucang/android/framework/core/databinding/CoreYourBinding;

    iget-object p1, p1, Lcn/mucang/android/framework/core/databinding/CoreYourBinding;->editAutoclickOn:Landroid/widget/RadioButton;

    invoke-virtual {p1, v1}, Landroid/widget/RadioButton;->setChecked(Z)V

    goto :goto_3

    .line 29
    :cond_4
    iget-object p1, p0, Lcn/mucang/android/core/config/YourActivity;->b:Lcn/mucang/android/framework/core/databinding/CoreYourBinding;

    iget-object p1, p1, Lcn/mucang/android/framework/core/databinding/CoreYourBinding;->editAutoclickOff:Landroid/widget/RadioButton;

    invoke-virtual {p1, v1}, Landroid/widget/RadioButton;->setChecked(Z)V

    .line 30
    :goto_3
    iget-object p1, p0, Lcn/mucang/android/core/config/YourActivity;->b:Lcn/mucang/android/framework/core/databinding/CoreYourBinding;

    iget-object p1, p1, Lcn/mucang/android/framework/core/databinding/CoreYourBinding;->swEncodeBaseParams:Landroidx/appcompat/widget/SwitchCompat;

    invoke-static {}, Lf/a/a/a/d;->e()Z

    move-result v0

    invoke-virtual {p1, v0}, Landroidx/appcompat/widget/SwitchCompat;->setChecked(Z)V

    .line 31
    iget-object p1, p0, Lcn/mucang/android/core/config/YourActivity;->b:Lcn/mucang/android/framework/core/databinding/CoreYourBinding;

    iget-object p1, p1, Lcn/mucang/android/framework/core/databinding/CoreYourBinding;->swEncodeBaseParams:Landroidx/appcompat/widget/SwitchCompat;

    sget-object v0, Lcn/mucang/android/core/config/h;->a:Lcn/mucang/android/core/config/h;

    invoke-virtual {p1, v0}, Landroid/widget/CompoundButton;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 32
    new-instance p1, Lcn/mucang/android/core/config/d;

    invoke-direct {p1, p0}, Lcn/mucang/android/core/config/d;-><init>(Lcn/mucang/android/core/config/YourActivity;)V

    invoke-static {p1}, Lcn/mucang/android/core/config/MucangConfig;->f(Ljava/lang/Runnable;)V

    .line 33
    invoke-direct {p0}, Lcn/mucang/android/core/config/YourActivity;->g()V

    .line 34
    iget-object p1, p0, Lcn/mucang/android/core/config/YourActivity;->b:Lcn/mucang/android/framework/core/databinding/CoreYourBinding;

    iget-object p1, p1, Lcn/mucang/android/framework/core/databinding/CoreYourBinding;->debugOn:Landroid/widget/RadioButton;

    invoke-virtual {p1, p0}, Landroid/widget/RadioButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 35
    iget-object p1, p0, Lcn/mucang/android/core/config/YourActivity;->b:Lcn/mucang/android/framework/core/databinding/CoreYourBinding;

    iget-object p1, p1, Lcn/mucang/android/framework/core/databinding/CoreYourBinding;->debugOff:Landroid/widget/RadioButton;

    invoke-virtual {p1, p0}, Landroid/widget/RadioButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 36
    iget-object p1, p0, Lcn/mucang/android/core/config/YourActivity;->b:Lcn/mucang/android/framework/core/databinding/CoreYourBinding;

    iget-object p1, p1, Lcn/mucang/android/framework/core/databinding/CoreYourBinding;->btnViewObjects:Landroid/widget/LinearLayout;

    invoke-virtual {p1, p0}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 37
    iget-object p1, p0, Lcn/mucang/android/core/config/YourActivity;->b:Lcn/mucang/android/framework/core/databinding/CoreYourBinding;

    iget-object p1, p1, Lcn/mucang/android/framework/core/databinding/CoreYourBinding;->btnSelectCity:Landroid/widget/LinearLayout;

    invoke-virtual {p1, p0}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 38
    iget-object p1, p0, Lcn/mucang/android/core/config/YourActivity;->b:Lcn/mucang/android/framework/core/databinding/CoreYourBinding;

    iget-object p1, p1, Lcn/mucang/android/framework/core/databinding/CoreYourBinding;->btnAppuser:Landroid/widget/LinearLayout;

    invoke-virtual {p1, p0}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 39
    iget-object p1, p0, Lcn/mucang/android/core/config/YourActivity;->b:Lcn/mucang/android/framework/core/databinding/CoreYourBinding;

    iget-object p1, p1, Lcn/mucang/android/framework/core/databinding/CoreYourBinding;->btnLogLevel:Landroid/widget/Button;

    invoke-virtual {p1, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 40
    iget-object p1, p0, Lcn/mucang/android/core/config/YourActivity;->b:Lcn/mucang/android/framework/core/databinding/CoreYourBinding;

    iget-object p1, p1, Lcn/mucang/android/framework/core/databinding/CoreYourBinding;->btnViewModules:Landroid/widget/LinearLayout;

    invoke-virtual {p1, p0}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 41
    iget-object p1, p0, Lcn/mucang/android/core/config/YourActivity;->b:Lcn/mucang/android/framework/core/databinding/CoreYourBinding;

    iget-object p1, p1, Lcn/mucang/android/framework/core/databinding/CoreYourBinding;->urlOk:Landroid/widget/Button;

    invoke-virtual {p1, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 42
    iget-object p1, p0, Lcn/mucang/android/core/config/YourActivity;->b:Lcn/mucang/android/framework/core/databinding/CoreYourBinding;

    iget-object p1, p1, Lcn/mucang/android/framework/core/databinding/CoreYourBinding;->btnMucangid:Landroid/widget/LinearLayout;

    invoke-virtual {p1, p0}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 43
    iget-object p1, p0, Lcn/mucang/android/core/config/YourActivity;->b:Lcn/mucang/android/framework/core/databinding/CoreYourBinding;

    iget-object p1, p1, Lcn/mucang/android/framework/core/databinding/CoreYourBinding;->btnSubmitCity:Landroid/widget/Button;

    invoke-virtual {p1, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 44
    iget-object p1, p0, Lcn/mucang/android/core/config/YourActivity;->b:Lcn/mucang/android/framework/core/databinding/CoreYourBinding;

    iget-object p1, p1, Lcn/mucang/android/framework/core/databinding/CoreYourBinding;->btnAndroidid:Landroid/widget/LinearLayout;

    invoke-virtual {p1, p0}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 45
    iget-object p1, p0, Lcn/mucang/android/core/config/YourActivity;->b:Lcn/mucang/android/framework/core/databinding/CoreYourBinding;

    iget-object p1, p1, Lcn/mucang/android/framework/core/databinding/CoreYourBinding;->editAutoclickOn:Landroid/widget/RadioButton;

    invoke-virtual {p1, p0}, Landroid/widget/RadioButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 46
    iget-object p1, p0, Lcn/mucang/android/core/config/YourActivity;->b:Lcn/mucang/android/framework/core/databinding/CoreYourBinding;

    iget-object p1, p1, Lcn/mucang/android/framework/core/databinding/CoreYourBinding;->editAutoclickOff:Landroid/widget/RadioButton;

    invoke-virtual {p1, p0}, Landroid/widget/RadioButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 47
    iget-object p1, p0, Lcn/mucang/android/core/config/YourActivity;->b:Lcn/mucang/android/framework/core/databinding/CoreYourBinding;

    iget-object p1, p1, Lcn/mucang/android/framework/core/databinding/CoreYourBinding;->remoteConfigOk:Landroid/widget/Button;

    invoke-virtual {p1, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 48
    iget-object p1, p0, Lcn/mucang/android/core/config/YourActivity;->b:Lcn/mucang/android/framework/core/databinding/CoreYourBinding;

    iget-object p1, p1, Lcn/mucang/android/framework/core/databinding/CoreYourBinding;->btnTestH5Protocol:Landroid/widget/TextView;

    invoke-virtual {p1, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 49
    iget-object p1, p0, Lcn/mucang/android/core/config/YourActivity;->b:Lcn/mucang/android/framework/core/databinding/CoreYourBinding;

    iget-object p1, p1, Lcn/mucang/android/framework/core/databinding/CoreYourBinding;->webviewDebugOn:Landroid/widget/RadioButton;

    invoke-virtual {p1, p0}, Landroid/widget/RadioButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 50
    iget-object p1, p0, Lcn/mucang/android/core/config/YourActivity;->b:Lcn/mucang/android/framework/core/databinding/CoreYourBinding;

    iget-object p1, p1, Lcn/mucang/android/framework/core/databinding/CoreYourBinding;->webviewDebugOff:Landroid/widget/RadioButton;

    invoke-virtual {p1, p0}, Landroid/widget/RadioButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 51
    invoke-direct {p0}, Lcn/mucang/android/core/config/YourActivity;->h()V

    return-void
.end method

.method public synthetic q()V
    .locals 0

    invoke-direct {p0}, Lcn/mucang/android/core/config/YourActivity;->p()V

    return-void
.end method
