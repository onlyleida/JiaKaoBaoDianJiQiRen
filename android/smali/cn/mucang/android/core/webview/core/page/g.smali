.class public Lcn/mucang/android/core/webview/core/page/g;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method private static a(Ljava/lang/String;)I
    .locals 2

    .line 1
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, -0x1

    if-eqz v0, :cond_0

    return v1

    .line 2
    :cond_0
    :try_start_0
    invoke-static {p0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    return v1
.end method

.method private static b(Landroid/view/View;Ljava/lang/String;)V
    .locals 1

    .line 1
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 2
    :cond_0
    :try_start_0
    invoke-static {p1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result p1

    invoke-virtual {p0, p1}, Landroid/view/View;->setBackgroundColor(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    const-string p1, "e"

    .line 3
    invoke-static {p1, p0}, Lcn/mucang/android/core/utils/t;->c(Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    return-void
.end method

.method public static c(Lcn/mucang/android/core/ui/page/PageView;Lcn/mucang/android/core/webview/core/page/WebPageArgument;Lcn/mucang/android/core/ui/page/d;Lcn/mucang/android/core/webview/core/MucangWebView;)V
    .locals 6

    if-eqz p0, :cond_d

    if-eqz p1, :cond_d

    if-eqz p2, :cond_d

    if-nez p3, :cond_0

    goto/16 :goto_3

    .line 1
    :cond_0
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    instance-of v0, v0, Lcn/mucang/android/core/ui/page/PageActivity;

    if-nez v0, :cond_1

    return-void

    .line 2
    :cond_1
    invoke-virtual {p1}, Lcn/mucang/android/core/webview/core/page/WebPageArgument;->isShowTitleBar()Z

    move-result v0

    const/16 v1, 0x8

    const/4 v2, 0x0

    if-eqz v0, :cond_2

    .line 3
    invoke-virtual {p0}, Lcn/mucang/android/core/ui/page/PageView;->getTopLayout()Landroid/widget/LinearLayout;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto :goto_0

    .line 4
    :cond_2
    invoke-virtual {p0}, Lcn/mucang/android/core/ui/page/PageView;->getTopLayout()Landroid/widget/LinearLayout;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 5
    :goto_0
    invoke-virtual {p1}, Lcn/mucang/android/core/webview/core/page/WebPageArgument;->isTransition()Z

    move-result v0

    if-nez v0, :cond_3

    .line 6
    invoke-virtual {p2}, Lcn/mucang/android/core/ui/page/d;->l()V

    .line 7
    :cond_3
    invoke-virtual {p1}, Lcn/mucang/android/core/webview/core/page/WebPageArgument;->getStatusBar()Lcn/mucang/android/core/webview/core/page/StatusBar;

    move-result-object p2

    if-eqz p2, :cond_7

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object p2

    instance-of p2, p2, Lcn/mucang/android/core/config/n;

    if-eqz p2, :cond_7

    .line 8
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object p2

    check-cast p2, Lcn/mucang/android/core/config/n;

    .line 9
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x15

    if-ge v0, v3, :cond_4

    .line 10
    invoke-virtual {p0}, Lcn/mucang/android/core/ui/page/PageView;->getStatusBar()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 11
    invoke-virtual {p1}, Lcn/mucang/android/core/webview/core/page/WebPageArgument;->getTitleBar()Lcn/mucang/android/core/webview/core/page/TitleBar;

    move-result-object v0

    if-eqz v0, :cond_6

    .line 12
    invoke-virtual {p1}, Lcn/mucang/android/core/webview/core/page/WebPageArgument;->getTitleBar()Lcn/mucang/android/core/webview/core/page/TitleBar;

    move-result-object v0

    invoke-virtual {v0}, Lcn/mucang/android/core/webview/core/page/TitleBar;->getBackground()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcn/mucang/android/core/webview/core/page/g;->a(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p2, v0}, Lcn/mucang/android/core/config/n;->setStatusBarColor(I)V

    goto :goto_1

    .line 13
    :cond_4
    invoke-virtual {p1}, Lcn/mucang/android/core/webview/core/page/WebPageArgument;->getStatusBar()Lcn/mucang/android/core/webview/core/page/StatusBar;

    move-result-object v0

    invoke-virtual {v0}, Lcn/mucang/android/core/webview/core/page/StatusBar;->isTransparent()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 14
    invoke-virtual {p0}, Lcn/mucang/android/core/ui/page/PageView;->getNavigationBar()Lcn/mucang/android/core/ui/page/e;

    move-result-object v0

    invoke-static {}, Lcn/mucang/android/core/utils/o0;->r()I

    move-result v3

    invoke-virtual {v0, v2, v3, v2, v2}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    .line 15
    invoke-virtual {p0}, Lcn/mucang/android/core/ui/page/PageView;->getStatusBar()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_1

    .line 16
    :cond_5
    invoke-virtual {p0}, Lcn/mucang/android/core/ui/page/PageView;->getStatusBar()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    invoke-static {}, Lcn/mucang/android/core/utils/o0;->r()I

    move-result v3

    iput v3, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 17
    invoke-virtual {p0}, Lcn/mucang/android/core/ui/page/PageView;->getStatusBar()Landroid/view/View;

    move-result-object v0

    invoke-virtual {p1}, Lcn/mucang/android/core/webview/core/page/WebPageArgument;->getStatusBar()Lcn/mucang/android/core/webview/core/page/StatusBar;

    move-result-object v3

    invoke-virtual {v3}, Lcn/mucang/android/core/webview/core/page/StatusBar;->getBackground()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Lcn/mucang/android/core/webview/core/page/g;->b(Landroid/view/View;Ljava/lang/String;)V

    .line 18
    invoke-virtual {p0}, Lcn/mucang/android/core/ui/page/PageView;->getStatusBar()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 19
    invoke-virtual {p0}, Lcn/mucang/android/core/ui/page/PageView;->getNavigationBar()Lcn/mucang/android/core/ui/page/e;

    move-result-object v0

    invoke-virtual {v0, v2, v2, v2, v2}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    .line 20
    :cond_6
    :goto_1
    invoke-virtual {p1}, Lcn/mucang/android/core/webview/core/page/WebPageArgument;->getStatusBar()Lcn/mucang/android/core/webview/core/page/StatusBar;

    move-result-object v0

    invoke-virtual {v0}, Lcn/mucang/android/core/webview/core/page/StatusBar;->isDarkMode()Z

    move-result v0

    invoke-static {v0, p2}, Lcn/mucang/android/core/utils/o0;->z(ZLandroid/app/Activity;)V

    .line 21
    :cond_7
    invoke-virtual {p1}, Lcn/mucang/android/core/webview/core/page/WebPageArgument;->getTitleBar()Lcn/mucang/android/core/webview/core/page/TitleBar;

    move-result-object p2

    if-eqz p2, :cond_d

    .line 22
    invoke-virtual {p1}, Lcn/mucang/android/core/webview/core/page/WebPageArgument;->isFullScreen()Z

    move-result v0

    if-eqz v0, :cond_a

    .line 23
    invoke-virtual {p0}, Lcn/mucang/android/core/ui/page/PageView;->getBogusTitleBar()Landroid/widget/FrameLayout;

    move-result-object v0

    invoke-virtual {p1}, Lcn/mucang/android/core/webview/core/page/WebPageArgument;->getTitleBar()Lcn/mucang/android/core/webview/core/page/TitleBar;

    move-result-object v3

    invoke-virtual {v3}, Lcn/mucang/android/core/webview/core/page/TitleBar;->getBackground()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Lcn/mucang/android/core/webview/core/page/g;->b(Landroid/view/View;Ljava/lang/String;)V

    .line 24
    invoke-virtual {p0}, Lcn/mucang/android/core/ui/page/PageView;->getBogusBackground()Landroid/view/View;

    move-result-object v0

    invoke-virtual {p1}, Lcn/mucang/android/core/webview/core/page/WebPageArgument;->getBackground()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Lcn/mucang/android/core/webview/core/page/g;->b(Landroid/view/View;Ljava/lang/String;)V

    .line 25
    invoke-virtual {p0}, Lcn/mucang/android/core/ui/page/PageView;->getBogusBackground()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 26
    invoke-virtual {p1}, Lcn/mucang/android/core/webview/core/page/WebPageArgument;->getStatusBar()Lcn/mucang/android/core/webview/core/page/StatusBar;

    move-result-object v0

    if-eqz v0, :cond_9

    .line 27
    invoke-virtual {p1}, Lcn/mucang/android/core/webview/core/page/WebPageArgument;->getStatusBar()Lcn/mucang/android/core/webview/core/page/StatusBar;

    move-result-object v0

    invoke-virtual {v0}, Lcn/mucang/android/core/webview/core/page/StatusBar;->isTransparent()Z

    move-result v0

    if-eqz v0, :cond_8

    .line 28
    invoke-virtual {p0}, Lcn/mucang/android/core/ui/page/PageView;->getStatusBar()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_2

    .line 29
    :cond_8
    invoke-virtual {p0}, Lcn/mucang/android/core/ui/page/PageView;->getStatusBar()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    invoke-static {}, Lcn/mucang/android/core/utils/o0;->r()I

    move-result v3

    iput v3, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 30
    invoke-virtual {p0}, Lcn/mucang/android/core/ui/page/PageView;->getStatusBar()Landroid/view/View;

    move-result-object v0

    invoke-virtual {p1}, Lcn/mucang/android/core/webview/core/page/WebPageArgument;->getStatusBar()Lcn/mucang/android/core/webview/core/page/StatusBar;

    move-result-object v3

    invoke-virtual {v3}, Lcn/mucang/android/core/webview/core/page/StatusBar;->getBackground()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Lcn/mucang/android/core/webview/core/page/g;->b(Landroid/view/View;Ljava/lang/String;)V

    .line 31
    invoke-virtual {p0}, Lcn/mucang/android/core/ui/page/PageView;->getStatusBar()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 32
    :cond_9
    :goto_2
    invoke-virtual {p3}, Landroid/webkit/WebView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    .line 33
    invoke-virtual {p0}, Lcn/mucang/android/core/ui/page/PageView;->getBogusTitleBar()Landroid/widget/FrameLayout;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/FrameLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    .line 34
    invoke-virtual {p1}, Lcn/mucang/android/core/webview/core/page/WebPageArgument;->getTitleBar()Lcn/mucang/android/core/webview/core/page/TitleBar;

    move-result-object v4

    invoke-virtual {v4}, Lcn/mucang/android/core/webview/core/page/TitleBar;->getHeight()I

    move-result v4

    int-to-float v4, v4

    iget v0, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    int-to-float v0, v0

    const/high16 v5, 0x3f800000    # 1.0f

    mul-float v0, v0, v5

    .line 35
    invoke-virtual {p1}, Lcn/mucang/android/core/webview/core/page/WebPageArgument;->getBaseWidth()I

    move-result p1

    int-to-float p1, p1

    div-float/2addr v0, p1

    mul-float v4, v4, v0

    .line 36
    invoke-static {v4}, Ljava/lang/Math;->round(F)I

    move-result p1

    iput p1, v3, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 37
    invoke-virtual {p0}, Lcn/mucang/android/core/ui/page/PageView;->getTopLayout()Landroid/widget/LinearLayout;

    move-result-object p1

    invoke-virtual {p1, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 38
    invoke-virtual {p0}, Lcn/mucang/android/core/ui/page/PageView;->getBogusTitleBar()Landroid/widget/FrameLayout;

    move-result-object p1

    invoke-virtual {p1, v2}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 39
    invoke-virtual {p3, v2}, Landroid/webkit/WebView;->setBackgroundColor(I)V

    .line 40
    :cond_a
    invoke-virtual {p0}, Lcn/mucang/android/core/ui/page/PageView;->getTopLayout()Landroid/widget/LinearLayout;

    move-result-object p1

    invoke-virtual {p2}, Lcn/mucang/android/core/webview/core/page/TitleBar;->getBackground()Ljava/lang/String;

    move-result-object p3

    invoke-static {p1, p3}, Lcn/mucang/android/core/webview/core/page/g;->b(Landroid/view/View;Ljava/lang/String;)V

    .line 41
    invoke-virtual {p2}, Lcn/mucang/android/core/webview/core/page/TitleBar;->getTitle()Lcn/mucang/android/core/webview/core/page/TitleBar$Title;

    move-result-object p1

    const/4 p3, -0x1

    if-eqz p1, :cond_b

    .line 42
    invoke-virtual {p0}, Lcn/mucang/android/core/ui/page/PageView;->getNavigationBar()Lcn/mucang/android/core/ui/page/e;

    move-result-object p1

    invoke-virtual {p2}, Lcn/mucang/android/core/webview/core/page/TitleBar;->getTitle()Lcn/mucang/android/core/webview/core/page/TitleBar$Title;

    move-result-object v0

    invoke-virtual {v0}, Lcn/mucang/android/core/webview/core/page/TitleBar$Title;->getText()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcn/mucang/android/core/ui/page/e;->setText(Ljava/lang/String;)V

    .line 43
    invoke-virtual {p2}, Lcn/mucang/android/core/webview/core/page/TitleBar;->getTitle()Lcn/mucang/android/core/webview/core/page/TitleBar$Title;

    move-result-object p1

    invoke-virtual {p1}, Lcn/mucang/android/core/webview/core/page/TitleBar$Title;->getColor()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcn/mucang/android/core/webview/core/page/g;->a(Ljava/lang/String;)I

    move-result p1

    if-eq p1, p3, :cond_b

    .line 44
    invoke-virtual {p0}, Lcn/mucang/android/core/ui/page/PageView;->getNavigationBar()Lcn/mucang/android/core/ui/page/e;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcn/mucang/android/core/ui/page/e;->setTextColor(I)V

    .line 45
    :cond_b
    invoke-virtual {p2}, Lcn/mucang/android/core/webview/core/page/TitleBar;->getBack()Lcn/mucang/android/core/webview/core/page/TitleBar$Back;

    move-result-object p1

    if-eqz p1, :cond_d

    .line 46
    invoke-virtual {p2}, Lcn/mucang/android/core/webview/core/page/TitleBar;->getBack()Lcn/mucang/android/core/webview/core/page/TitleBar$Back;

    move-result-object p1

    invoke-virtual {p1}, Lcn/mucang/android/core/webview/core/page/TitleBar$Back;->getColor()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcn/mucang/android/core/webview/core/page/g;->a(Ljava/lang/String;)I

    move-result p1

    if-eq p1, p3, :cond_c

    .line 47
    invoke-virtual {p0}, Lcn/mucang/android/core/ui/page/PageView;->getNavigationBar()Lcn/mucang/android/core/ui/page/e;

    move-result-object p3

    invoke-virtual {p3, p1}, Lcn/mucang/android/core/ui/page/e;->setBackButtonColor(I)V

    .line 48
    :cond_c
    invoke-virtual {p0}, Lcn/mucang/android/core/ui/page/PageView;->getNavigationBar()Lcn/mucang/android/core/ui/page/e;

    move-result-object p0

    invoke-virtual {p2}, Lcn/mucang/android/core/webview/core/page/TitleBar;->getBack()Lcn/mucang/android/core/webview/core/page/TitleBar$Back;

    move-result-object p1

    invoke-virtual {p1}, Lcn/mucang/android/core/webview/core/page/TitleBar$Back;->getText()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcn/mucang/android/core/ui/page/e;->setBackButtonText(Ljava/lang/String;)V

    :cond_d
    :goto_3
    return-void
.end method
