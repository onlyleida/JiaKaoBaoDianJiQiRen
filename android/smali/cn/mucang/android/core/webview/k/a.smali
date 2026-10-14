.class public Lcn/mucang/android/core/webview/k/a;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method static synthetic a(Landroid/content/Context;Ljava/lang/String;Lcn/mucang/android/core/webview/j/a;Ljava/util/List;)V
    .locals 0

    .line 1
    invoke-static {p0, p1, p2, p3}, Lcn/mucang/android/core/webview/k/a;->f(Landroid/content/Context;Ljava/lang/String;Lcn/mucang/android/core/webview/j/a;Ljava/util/List;)V

    return-void
.end method

.method static synthetic b(Lcn/mucang/android/core/webview/j/a;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcn/mucang/android/core/webview/k/a;->d(Lcn/mucang/android/core/webview/j/a;Ljava/lang/String;)V

    return-void
.end method

.method public static c(Ljava/util/Map;Lcn/mucang/android/core/webview/core/h;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Lcn/mucang/android/core/webview/core/h;",
            ")V"
        }
    .end annotation

    if-eqz p0, :cond_3

    if-eqz p1, :cond_3

    .line 1
    invoke-virtual {p1}, Lcn/mucang/android/core/webview/core/h;->b()Lcn/mucang/android/core/webview/core/MucangWebView;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    new-instance v0, Lcn/mucang/android/core/webview/j/a;

    const-string v1, "title"

    invoke-interface {p0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    const-string v2, "group"

    invoke-interface {p0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    const-string v3, "label"

    .line 3
    invoke-interface {p0, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    const-string v4, "source"

    invoke-interface {p0, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-direct {v0, v1, v2, v3, v4}, Lcn/mucang/android/core/webview/j/a;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "phone"

    .line 4
    invoke-interface {p0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    .line 5
    invoke-static {p0}, Lcn/mucang/android/core/webview/k/a;->e(Ljava/lang/String;)Ljava/util/List;

    move-result-object p0

    .line 6
    invoke-static {p0}, Lcn/mucang/android/core/utils/g;->b(Ljava/util/Collection;)Z

    move-result v1

    if-eqz v1, :cond_1

    const-string p0, "\u5f53\u524d\u7535\u8bdd\u4e3a\u7a7a"

    .line 7
    invoke-static {p0}, Lcn/mucang/android/core/utils/u;->h(Ljava/lang/String;)V

    return-void

    .line 8
    :cond_1
    invoke-virtual {p1}, Lcn/mucang/android/core/webview/core/h;->a()Ljava/lang/String;

    move-result-object v1

    .line 9
    iget-object v2, v0, Lcn/mucang/android/core/webview/j/a;->a:Ljava/lang/String;

    invoke-static {v2}, Lcn/mucang/android/core/utils/n0;->e(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    const/4 p1, 0x0

    .line 10
    invoke-interface {p0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcn/mucang/android/core/webview/j/b;

    .line 11
    iget-object p0, p0, Lcn/mucang/android/core/webview/j/b;->b:Ljava/lang/String;

    const-string p1, "-"

    const-string v2, ""

    invoke-virtual {p0, p1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p0

    iput-object p0, v0, Lcn/mucang/android/core/webview/j/a;->e:Ljava/lang/String;

    .line 12
    invoke-static {v0, v1}, Lcn/mucang/android/core/webview/k/a;->d(Lcn/mucang/android/core/webview/j/a;Ljava/lang/String;)V

    goto :goto_0

    .line 13
    :cond_2
    new-instance v2, Lcn/mucang/android/core/webview/k/a$a;

    invoke-direct {v2, p1, v1, v0, p0}, Lcn/mucang/android/core/webview/k/a$a;-><init>(Lcn/mucang/android/core/webview/core/h;Ljava/lang/String;Lcn/mucang/android/core/webview/j/a;Ljava/util/List;)V

    invoke-static {v2}, Lcn/mucang/android/core/utils/u;->c(Ljava/lang/Runnable;)V

    :cond_3
    :goto_0
    return-void
.end method

.method private static d(Lcn/mucang/android/core/webview/j/a;Ljava/lang/String;)V
    .locals 4

    .line 1
    :try_start_0
    new-instance v0, Lcn/mucang/android/core/callphone/PhoneCallRequest;

    iget-object v1, p0, Lcn/mucang/android/core/webview/j/a;->e:Ljava/lang/String;

    iget-object v2, p0, Lcn/mucang/android/core/webview/j/a;->b:Ljava/lang/String;

    iget-object v3, p0, Lcn/mucang/android/core/webview/j/a;->d:Ljava/lang/String;

    iget-object p0, p0, Lcn/mucang/android/core/webview/j/a;->c:Ljava/lang/String;

    invoke-direct {v0, v1, v2, v3, p0}, Lcn/mucang/android/core/callphone/PhoneCallRequest;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    invoke-static {}, Lcn/mucang/android/core/callphone/a;->h()Lcn/mucang/android/core/callphone/a;

    move-result-object p0

    invoke-virtual {p0, v0}, Lcn/mucang/android/core/callphone/a;->d(Lcn/mucang/android/core/callphone/PhoneCallRequest;)V

    .line 3
    invoke-static {p1}, Lf/a/a/a/c;->p(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    const-string p1, "Exception"

    .line 4
    invoke-static {p1, p0}, Lcn/mucang/android/core/utils/t;->c(Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    return-void
.end method

.method private static e(Ljava/lang/String;)Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Lcn/mucang/android/core/webview/j/b;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 2
    :try_start_0
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, p0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 3
    invoke-virtual {v1}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object p0

    .line 4
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 5
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 6
    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 7
    new-instance v4, Lcn/mucang/android/core/webview/j/b;

    invoke-direct {v4, v2, v3}, Lcn/mucang/android/core/webview/j/b;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    const-string v1, "\u9ed8\u8ba4\u66ff\u6362"

    .line 8
    invoke-static {v1, p0}, Lcn/mucang/android/core/utils/t;->c(Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    return-object v0
.end method

.method private static f(Landroid/content/Context;Ljava/lang/String;Lcn/mucang/android/core/webview/j/a;Ljava/util/List;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "Lcn/mucang/android/core/webview/j/a;",
            "Ljava/util/List<",
            "Lcn/mucang/android/core/webview/j/b;",
            ">;)V"
        }
    .end annotation

    .line 1
    new-instance v0, Landroid/app/Dialog;

    sget v1, Lcn/mucang/android/framework/webview/R$style;->core__dialog:I

    invoke-direct {v0, p0, v1}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    .line 2
    invoke-static {}, Lcn/mucang/android/core/config/MucangConfig;->getContext()Landroid/app/Application;

    move-result-object p0

    sget v1, Lcn/mucang/android/framework/webview/R$layout;->core__call_phone_dialog:I

    const/4 v2, 0x0

    invoke-static {p0, v1, v2}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p0

    .line 3
    invoke-virtual {v0, p0}, Landroid/app/Dialog;->setContentView(Landroid/view/View;)V

    .line 4
    sget v1, Lcn/mucang/android/framework/webview/R$id;->call_phone_main:I

    invoke-virtual {p0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p0

    check-cast p0, Landroid/widget/LinearLayout;

    .line 5
    invoke-interface {p3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p3

    :goto_0
    invoke-interface {p3}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcn/mucang/android/core/webview/j/b;

    .line 6
    invoke-static {}, Lcn/mucang/android/core/config/MucangConfig;->getContext()Landroid/app/Application;

    move-result-object v3

    sget v4, Lcn/mucang/android/framework/webview/R$layout;->core__white_button:I

    invoke-static {v3, v4, v2}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v3

    .line 7
    sget v4, Lcn/mucang/android/framework/webview/R$id;->daijia_dialog_driver:I

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    .line 8
    sget v5, Lcn/mucang/android/framework/webview/R$id;->daijia_dialog_tv:I

    invoke-virtual {v3, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    .line 9
    iget-object v6, p2, Lcn/mucang/android/core/webview/j/a;->a:Ljava/lang/String;

    invoke-virtual {v4, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 10
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v6, v1, Lcn/mucang/android/core/webview/j/b;->a:Ljava/lang/String;

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, ":"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, v1, Lcn/mucang/android/core/webview/j/b;->b:Ljava/lang/String;

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 11
    iget-object v1, v1, Lcn/mucang/android/core/webview/j/b;->b:Ljava/lang/String;

    const-string v6, "-"

    const-string v7, ""

    invoke-virtual {v1, v6, v7}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p2, Lcn/mucang/android/core/webview/j/a;->e:Ljava/lang/String;

    .line 12
    invoke-virtual {v5, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 13
    new-instance v1, Lcn/mucang/android/core/webview/k/a$b;

    invoke-direct {v1, p2, p1, v0}, Lcn/mucang/android/core/webview/k/a$b;-><init>(Lcn/mucang/android/core/webview/j/a;Ljava/lang/String;Landroid/app/Dialog;)V

    invoke-virtual {v3, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 14
    invoke-virtual {p0, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    goto :goto_0

    .line 15
    :cond_0
    new-instance p1, Landroid/widget/Button;

    invoke-static {}, Lcn/mucang/android/core/config/MucangConfig;->i()Landroid/app/Activity;

    move-result-object p2

    invoke-direct {p1, p2}, Landroid/widget/Button;-><init>(Landroid/content/Context;)V

    .line 16
    new-instance p2, Landroid/widget/LinearLayout$LayoutParams;

    const/high16 p3, 0x43700000    # 240.0f

    invoke-static {p3}, Lcn/mucang/android/core/utils/s0;->a(F)I

    move-result p3

    const/4 v1, -0x2

    invoke-direct {p2, p3, v1}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    const/high16 p3, 0x41a00000    # 20.0f

    .line 17
    invoke-static {p3}, Lcn/mucang/android/core/utils/s0;->a(F)I

    move-result v1

    iput v1, p2, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    const/16 v1, 0x11

    .line 18
    iput v1, p2, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    .line 19
    invoke-virtual {p1, p2}, Landroid/widget/Button;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 20
    sget p2, Lcn/mucang/android/framework/webview/R$drawable;->core__white_btn:I

    invoke-virtual {p1, p2}, Landroid/widget/Button;->setBackgroundResource(I)V

    const p2, -0xcccccd

    .line 21
    invoke-virtual {p1, p2}, Landroid/widget/Button;->setTextColor(I)V

    const-string p2, "\u53d6\u6d88"

    .line 22
    invoke-virtual {p1, p2}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    const/4 p2, 0x0

    .line 23
    invoke-static {p3}, Lcn/mucang/android/core/utils/s0;->a(F)I

    move-result p3

    int-to-float p3, p3

    invoke-virtual {p1, p2, p3}, Landroid/widget/Button;->setTextSize(IF)V

    .line 24
    new-instance p2, Lcn/mucang/android/core/webview/k/a$c;

    invoke-direct {p2, v0}, Lcn/mucang/android/core/webview/k/a$c;-><init>(Landroid/app/Dialog;)V

    invoke-virtual {p1, p2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 25
    invoke-virtual {p0, p1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 26
    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    return-void
.end method
