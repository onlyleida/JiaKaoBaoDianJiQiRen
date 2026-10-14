.class public Lcn/mucang/android/core/ui/page/PageView;
.super Landroid/widget/LinearLayout;
.source "SourceFile"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field private bogusBackground:Landroid/view/View;

.field private bogusTitleBar:Landroid/widget/FrameLayout;

.field private loadingView:Landroid/webkit/WebView;

.field private navigationBar:Lcn/mucang/android/core/ui/page/e;

.field private page:Lcn/mucang/android/core/ui/page/b;

.field private pageContentView:Landroid/view/View;

.field private pageLayout:Landroid/widget/FrameLayout;

.field private statusBar:Landroid/view/View;

.field private topLayout:Landroid/widget/LinearLayout;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcn/mucang/android/core/ui/page/d;Lcn/mucang/android/core/ui/page/PageHistory;)V
    .locals 6

    .line 1
    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 2
    invoke-direct {p0, p3}, Lcn/mucang/android/core/ui/page/PageView;->createPage(Lcn/mucang/android/core/ui/page/PageHistory;)Lcn/mucang/android/core/ui/page/b;

    move-result-object v0

    iput-object v0, p0, Lcn/mucang/android/core/ui/page/PageView;->page:Lcn/mucang/android/core/ui/page/b;

    .line 3
    sget v0, Lcn/mucang/android/framework/webview/R$layout;->core__page:I

    const/4 v1, 0x0

    invoke-static {p1, v0, v1}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 4
    sget v1, Lcn/mucang/android/framework/webview/R$id;->status_bar:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcn/mucang/android/core/ui/page/PageView;->statusBar:Landroid/view/View;

    .line 5
    sget v1, Lcn/mucang/android/framework/webview/R$id;->bogus_title_bar:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/FrameLayout;

    iput-object v1, p0, Lcn/mucang/android/core/ui/page/PageView;->bogusTitleBar:Landroid/widget/FrameLayout;

    .line 6
    sget v1, Lcn/mucang/android/framework/webview/R$id;->bogus_background:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcn/mucang/android/core/ui/page/PageView;->bogusBackground:Landroid/view/View;

    .line 7
    sget v1, Lcn/mucang/android/framework/webview/R$id;->loading_view:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/webkit/WebView;

    iput-object v1, p0, Lcn/mucang/android/core/ui/page/PageView;->loadingView:Landroid/webkit/WebView;

    .line 8
    new-instance v1, Lcn/mucang/android/core/ui/page/e;

    invoke-direct {v1, p1}, Lcn/mucang/android/core/ui/page/e;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcn/mucang/android/core/ui/page/PageView;->navigationBar:Lcn/mucang/android/core/ui/page/e;

    .line 9
    sget v1, Lcn/mucang/android/framework/webview/R$id;->top_layout:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    iput-object v1, p0, Lcn/mucang/android/core/ui/page/PageView;->topLayout:Landroid/widget/LinearLayout;

    .line 10
    iget-object v2, p0, Lcn/mucang/android/core/ui/page/PageView;->navigationBar:Lcn/mucang/android/core/ui/page/e;

    new-instance v3, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v4, -0x1

    const/4 v5, -0x2

    invoke-direct {v3, v4, v5}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v1, v2, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 11
    sget v1, Lcn/mucang/android/framework/webview/R$id;->page_layout:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/FrameLayout;

    iput-object v1, p0, Lcn/mucang/android/core/ui/page/PageView;->pageLayout:Landroid/widget/FrameLayout;

    .line 12
    iget-object v1, p0, Lcn/mucang/android/core/ui/page/PageView;->page:Lcn/mucang/android/core/ui/page/b;

    invoke-interface {v1, p1, p2, p0}, Lcn/mucang/android/core/ui/page/b;->onCreate(Landroid/content/Context;Lcn/mucang/android/core/ui/page/d;Lcn/mucang/android/core/ui/page/PageView;)V

    const/4 p1, 0x0

    .line 13
    invoke-virtual {p2, p1}, Lcn/mucang/android/core/ui/page/d;->C(Z)V

    .line 14
    iget-object p1, p0, Lcn/mucang/android/core/ui/page/PageView;->page:Lcn/mucang/android/core/ui/page/b;

    invoke-virtual {p3}, Lcn/mucang/android/core/ui/page/PageHistory;->getPageArgument()Lcn/mucang/android/core/ui/page/PageArgument;

    move-result-object p2

    invoke-interface {p1, p2}, Lcn/mucang/android/core/ui/page/b;->createContentView(Lcn/mucang/android/core/ui/page/PageArgument;)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcn/mucang/android/core/ui/page/PageView;->pageContentView:Landroid/view/View;

    .line 15
    iget-object p2, p0, Lcn/mucang/android/core/ui/page/PageView;->pageLayout:Landroid/widget/FrameLayout;

    new-instance p3, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {p3, v4, v4}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {p2, p1, p3}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 16
    new-instance p1, Landroidx/appcompat/widget/LinearLayoutCompat$a;

    invoke-direct {p1, v4, v4}, Landroidx/appcompat/widget/LinearLayoutCompat$a;-><init>(II)V

    invoke-virtual {p0, v0, p1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method private createPage(Lcn/mucang/android/core/ui/page/PageHistory;)Lcn/mucang/android/core/ui/page/b;
    .locals 4

    .line 1
    :try_start_0
    invoke-virtual {p1}, Lcn/mucang/android/core/ui/page/PageHistory;->getPageClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcn/mucang/android/core/ui/page/b;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    .line 2
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 3
    new-instance v1, Ljava/lang/RuntimeException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "\u65e0\u6cd5\u521d\u59cb\u5316Page\u5bf9\u8c61\uff0cclass="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4
    invoke-virtual {p1}, Lcn/mucang/android/core/ui/page/PageHistory;->getPageClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, ",\n ex message:"

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v1, p1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method private doLog(Ljava/lang/String;)V
    .locals 1

    const-string v0, "mucang"

    .line 1
    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method


# virtual methods
.method doDestroy()V
    .locals 1

    const-string v0, "doDestroy"

    .line 1
    invoke-direct {p0, v0}, Lcn/mucang/android/core/ui/page/PageView;->doLog(Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 2
    iput-object v0, p0, Lcn/mucang/android/core/ui/page/PageView;->pageContentView:Landroid/view/View;

    .line 3
    iget-object v0, p0, Lcn/mucang/android/core/ui/page/PageView;->page:Lcn/mucang/android/core/ui/page/b;

    invoke-interface {v0}, Lcn/mucang/android/core/ui/page/b;->doDestroy()V

    return-void
.end method

.method doPause()V
    .locals 1

    const-string v0, "doPause"

    .line 1
    invoke-direct {p0, v0}, Lcn/mucang/android/core/ui/page/PageView;->doLog(Ljava/lang/String;)V

    .line 2
    iget-object v0, p0, Lcn/mucang/android/core/ui/page/PageView;->page:Lcn/mucang/android/core/ui/page/b;

    invoke-interface {v0}, Lcn/mucang/android/core/ui/page/b;->doPause()V

    return-void
.end method

.method doRestoreInstanceState(Lcn/mucang/android/core/ui/page/PageState;)V
    .locals 1

    const-string v0, "doRestoreInstanceState"

    .line 1
    invoke-direct {p0, v0}, Lcn/mucang/android/core/ui/page/PageView;->doLog(Ljava/lang/String;)V

    if-eqz p1, :cond_0

    .line 2
    iget-object v0, p0, Lcn/mucang/android/core/ui/page/PageView;->page:Lcn/mucang/android/core/ui/page/b;

    invoke-interface {v0, p1}, Lcn/mucang/android/core/ui/page/b;->doRestoreInstanceState(Lcn/mucang/android/core/ui/page/PageState;)V

    :cond_0
    return-void
.end method

.method doResume(Lcn/mucang/android/core/ui/page/PageArgument;)V
    .locals 1

    const-string v0, "doResume"

    .line 1
    invoke-direct {p0, v0}, Lcn/mucang/android/core/ui/page/PageView;->doLog(Ljava/lang/String;)V

    .line 2
    iget-object v0, p0, Lcn/mucang/android/core/ui/page/PageView;->page:Lcn/mucang/android/core/ui/page/b;

    invoke-interface {v0, p1}, Lcn/mucang/android/core/ui/page/b;->doResume(Lcn/mucang/android/core/ui/page/PageArgument;)V

    return-void
.end method

.method doSaveInstanceState()Lcn/mucang/android/core/ui/page/PageState;
    .locals 1

    const-string v0, "doSaveInstanceState"

    .line 1
    invoke-direct {p0, v0}, Lcn/mucang/android/core/ui/page/PageView;->doLog(Ljava/lang/String;)V

    .line 2
    iget-object v0, p0, Lcn/mucang/android/core/ui/page/PageView;->page:Lcn/mucang/android/core/ui/page/b;

    invoke-interface {v0}, Lcn/mucang/android/core/ui/page/b;->doSaveInstanceState()Lcn/mucang/android/core/ui/page/PageState;

    move-result-object v0

    return-object v0
.end method

.method public getBogusBackground()Landroid/view/View;
    .locals 1

    .line 1
    iget-object v0, p0, Lcn/mucang/android/core/ui/page/PageView;->bogusBackground:Landroid/view/View;

    return-object v0
.end method

.method public getBogusTitleBar()Landroid/widget/FrameLayout;
    .locals 1

    .line 1
    iget-object v0, p0, Lcn/mucang/android/core/ui/page/PageView;->bogusTitleBar:Landroid/widget/FrameLayout;

    return-object v0
.end method

.method public getLoadingView()Landroid/webkit/WebView;
    .locals 1

    .line 1
    iget-object v0, p0, Lcn/mucang/android/core/ui/page/PageView;->loadingView:Landroid/webkit/WebView;

    return-object v0
.end method

.method public getNavigationBar()Lcn/mucang/android/core/ui/page/e;
    .locals 1

    .line 1
    iget-object v0, p0, Lcn/mucang/android/core/ui/page/PageView;->navigationBar:Lcn/mucang/android/core/ui/page/e;

    return-object v0
.end method

.method getPage()Lcn/mucang/android/core/ui/page/b;
    .locals 1

    .line 1
    iget-object v0, p0, Lcn/mucang/android/core/ui/page/PageView;->page:Lcn/mucang/android/core/ui/page/b;

    return-object v0
.end method

.method public getStatusBar()Landroid/view/View;
    .locals 1

    .line 1
    iget-object v0, p0, Lcn/mucang/android/core/ui/page/PageView;->statusBar:Landroid/view/View;

    return-object v0
.end method

.method public getTopLayout()Landroid/widget/LinearLayout;
    .locals 1

    .line 1
    iget-object v0, p0, Lcn/mucang/android/core/ui/page/PageView;->topLayout:Landroid/widget/LinearLayout;

    return-object v0
.end method

.method protected onRestoreInstanceState(Landroid/os/Parcelable;)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    return-void
.end method

.method protected onSaveInstanceState()Landroid/os/Parcelable;
    .locals 1

    .line 1
    invoke-super {p0}, Landroid/widget/LinearLayout;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v0

    return-object v0
.end method
