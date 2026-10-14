.class public Lcom/mobile/auth/k/w;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static a(Landroid/content/Context;)I
    .locals 1

    const-string v0, "window"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/view/WindowManager;

    new-instance v0, Landroid/util/DisplayMetrics;

    invoke-direct {v0}, Landroid/util/DisplayMetrics;-><init>()V

    if-eqz p0, :cond_0

    invoke-interface {p0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object p0

    invoke-virtual {p0, v0}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    :cond_0
    iget p0, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    return p0
.end method

.method public static a(Landroid/content/Context;F)I
    .locals 1

    const/4 v0, 0x0

    cmpg-float v0, p1, v0

    if-gez v0, :cond_0

    float-to-int p0, p1

    return p0

    :cond_0
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p0

    iget p0, p0, Landroid/util/DisplayMetrics;->density:F
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    mul-float p1, p1, p0

    const/high16 p0, 0x3f000000    # 0.5f

    add-float/2addr p1, p0

    float-to-int p0, p1

    return p0

    :catch_0
    float-to-int p0, p1

    return p0
.end method

.method public static a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/cmic/sso/sdk/widget/a;Lcom/cmic/sso/sdk/widget/a;Lcom/cmic/sso/sdk/widget/a;)Landroid/text/SpannableString;
    .locals 5

    new-instance v0, Landroid/text/SpannableString;

    invoke-direct {v0, p1}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    :try_start_0
    new-instance v1, Lcom/mobile/auth/k/w$a;

    invoke-direct {v1, p0, p3}, Lcom/mobile/auth/k/w$a;-><init>(Landroid/content/Context;Lcom/cmic/sso/sdk/widget/a;)V

    const/4 p3, 0x0

    if-eqz p4, :cond_0

    new-instance v2, Lcom/mobile/auth/k/w$b;

    invoke-direct {v2, p0, p4}, Lcom/mobile/auth/k/w$b;-><init>(Landroid/content/Context;Lcom/cmic/sso/sdk/widget/a;)V

    goto :goto_0

    :cond_0
    move-object v2, p3

    :goto_0
    if-eqz p5, :cond_1

    new-instance p3, Lcom/mobile/auth/k/w$c;

    invoke-direct {p3, p0, p5}, Lcom/mobile/auth/k/w$c;-><init>(Landroid/content/Context;Lcom/cmic/sso/sdk/widget/a;)V

    :cond_1
    invoke-static {p0}, Lcom/mobile/auth/e/a;->a(Landroid/content/Context;)Lcom/mobile/auth/e/a;

    move-result-object p0

    invoke-virtual {p0}, Lcom/mobile/auth/e/a;->a()Lcom/cmic/sso/sdk/AuthThemeConfig;

    move-result-object p0

    invoke-virtual {p1, p2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result p2

    add-int/2addr p2, v3

    const/16 v4, 0x22

    invoke-virtual {v0, v1, v3, p2, v4}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    if-eqz p4, :cond_2

    if-eqz p5, :cond_2

    invoke-virtual {p0}, Lcom/cmic/sso/sdk/AuthThemeConfig;->getClauseName()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result p4

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result p5

    add-int/2addr p5, p4

    invoke-virtual {v0, v2, p4, p5, v4}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result p2

    add-int/2addr p4, p2

    invoke-virtual {p0}, Lcom/cmic/sso/sdk/AuthThemeConfig;->getClauseName2()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0, p4}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result p1

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result p0

    add-int/2addr p0, p1

    :goto_1
    invoke-virtual {v0, p3, p1, p0, v4}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    goto :goto_2

    :cond_2
    if-eqz p4, :cond_3

    invoke-virtual {p0}, Lcom/cmic/sso/sdk/AuthThemeConfig;->getClauseName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result p1

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result p0

    add-int/2addr p0, p1

    invoke-virtual {v0, v2, p1, p0, v4}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    goto :goto_2

    :cond_3
    if-eqz p5, :cond_4

    invoke-virtual {p0}, Lcom/cmic/sso/sdk/AuthThemeConfig;->getClauseName2()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result p1

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    add-int/2addr p0, p1

    goto :goto_1

    :cond_4
    :goto_2
    return-object v0

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    return-object v0
.end method

.method public static a(Landroid/content/Context;Landroid/view/View;IILjava/lang/String;Landroid/view/View$OnClickListener;)Landroid/widget/RelativeLayout;
    .locals 6

    invoke-static {p0}, Lcom/mobile/auth/e/a;->a(Landroid/content/Context;)Lcom/mobile/auth/e/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mobile/auth/e/a;->a()Lcom/cmic/sso/sdk/AuthThemeConfig;

    move-result-object v0

    new-instance v1, Landroid/widget/RelativeLayout;

    invoke-direct {v1, p0}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    const/4 v2, -0x2

    if-eqz p1, :cond_0

    const/4 v3, -0x2

    goto :goto_0

    :cond_0
    const/high16 v3, 0x42440000    # 49.0f

    invoke-static {p0, v3}, Lcom/mobile/auth/k/w;->a(Landroid/content/Context;F)I

    move-result v3

    :goto_0
    new-instance v4, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v5, -0x1

    invoke-direct {v4, v5, v3}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    const/16 v3, 0xa

    invoke-virtual {v4, v3, v5}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    invoke-virtual {v1, v4}, Landroid/widget/RelativeLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    invoke-virtual {v1, p2}, Landroid/widget/RelativeLayout;->setId(I)V

    new-instance p2, Landroid/widget/TextView;

    invoke-direct {p2, p0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    new-instance v3, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v3, v2, v2}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    const/16 v2, 0xd

    invoke-virtual {v3, v2, v5}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    invoke-virtual {p2, v3}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    invoke-virtual {v0}, Lcom/cmic/sso/sdk/AuthThemeConfig;->getNavTextColor()I

    move-result v2

    invoke-virtual {p2, v2}, Landroid/widget/TextView;->setTextColor(I)V

    invoke-virtual {v0}, Lcom/cmic/sso/sdk/AuthThemeConfig;->getNavTextSize()I

    move-result v2

    int-to-float v2, v2

    const/4 v3, 0x2

    invoke-virtual {p2, v3, v2}, Landroid/widget/TextView;->setTextSize(IF)V

    invoke-virtual {p2, p4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    if-eqz p1, :cond_1

    invoke-virtual {v1, p1}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    invoke-virtual {v1, p2}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    return-object v1

    :cond_1
    invoke-virtual {v1, p2}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    new-instance p1, Landroid/widget/ImageButton;

    invoke-direct {p1, p0}, Landroid/widget/ImageButton;-><init>(Landroid/content/Context;)V

    new-instance p2, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-virtual {v0}, Lcom/cmic/sso/sdk/AuthThemeConfig;->getNavReturnImgWidth()I

    move-result p4

    int-to-float p4, p4

    invoke-static {p0, p4}, Lcom/mobile/auth/k/w;->a(Landroid/content/Context;F)I

    move-result p4

    invoke-virtual {v0}, Lcom/cmic/sso/sdk/AuthThemeConfig;->getNavReturnImgHeight()I

    move-result v0

    int-to-float v0, v0

    invoke-static {p0, v0}, Lcom/mobile/auth/k/w;->a(Landroid/content/Context;F)I

    move-result v0

    invoke-direct {p2, p4, v0}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    const/16 p4, 0x9

    invoke-virtual {p2, p4, v5}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    const/16 p4, 0xf

    invoke-virtual {p2, p4, v5}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    const/high16 p4, 0x41400000    # 12.0f

    invoke-static {p0, p4}, Lcom/mobile/auth/k/w;->a(Landroid/content/Context;F)I

    move-result p4

    const/4 v0, 0x0

    invoke-virtual {p2, p4, v0, v0, v0}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    invoke-virtual {p1, p2}, Landroid/widget/ImageButton;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    invoke-virtual {p1, p3}, Landroid/widget/ImageButton;->setId(I)V

    invoke-virtual {p1, p5}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-virtual {p1, v0}, Landroid/widget/ImageButton;->setBackgroundColor(I)V

    invoke-virtual {v1, p1}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    :try_start_0
    invoke-static {p0}, Lcom/mobile/auth/e/a;->a(Landroid/content/Context;)Lcom/mobile/auth/e/a;

    move-result-object p2

    invoke-virtual {p2}, Lcom/mobile/auth/e/a;->a()Lcom/cmic/sso/sdk/AuthThemeConfig;

    move-result-object p2

    invoke-virtual {p2}, Lcom/cmic/sso/sdk/AuthThemeConfig;->getNavColor()I

    move-result p2

    invoke-virtual {v1, p2}, Landroid/widget/RelativeLayout;->setBackgroundColor(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    const p2, -0xff7930

    invoke-virtual {v1, p2}, Landroid/widget/RelativeLayout;->setBackgroundColor(I)V

    :goto_1
    const-string p2, "umcsdk_return_bg"

    invoke-static {p0, p2}, Lcom/mobile/auth/k/n;->b(Landroid/content/Context;Ljava/lang/String;)I

    move-result p0

    invoke-virtual {p1, p0}, Landroid/widget/ImageButton;->setImageResource(I)V

    return-object v1
.end method

.method public static b(Landroid/content/Context;)I
    .locals 1

    const-string v0, "window"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/view/WindowManager;

    new-instance v0, Landroid/util/DisplayMetrics;

    invoke-direct {v0}, Landroid/util/DisplayMetrics;-><init>()V

    if-eqz p0, :cond_0

    invoke-interface {p0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object p0

    invoke-virtual {p0, v0}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    :cond_0
    iget p0, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    return p0
.end method
