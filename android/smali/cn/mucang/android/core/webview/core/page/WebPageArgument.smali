.class public Lcn/mucang/android/core/webview/core/page/WebPageArgument;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcn/mucang/android/core/ui/page/PageArgument;


# instance fields
.field private background:Ljava/lang/String;

.field private baseWidth:I

.field private fullScreen:Z

.field private hasConfig:Z

.field private pageNme:Ljava/lang/String;

.field private showTitleBar:Z

.field private statusBar:Lcn/mucang/android/core/webview/core/page/StatusBar;

.field private titleBar:Lcn/mucang/android/core/webview/core/page/TitleBar;

.field private transition:Z

.field private url:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Z)V
    .locals 0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    iput-object p1, p0, Lcn/mucang/android/core/webview/core/page/WebPageArgument;->url:Ljava/lang/String;

    .line 4
    iput-boolean p2, p0, Lcn/mucang/android/core/webview/core/page/WebPageArgument;->showTitleBar:Z

    return-void
.end method

.method public static defaultConfig(Ljava/lang/String;)Lcn/mucang/android/core/webview/core/page/WebPageArgument;
    .locals 2

    .line 1
    new-instance v0, Lcn/mucang/android/core/webview/core/page/WebPageArgument;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcn/mucang/android/core/webview/core/page/WebPageArgument;-><init>(Ljava/lang/String;Z)V

    .line 2
    new-instance p0, Lcn/mucang/android/core/webview/core/page/TitleBar;

    invoke-direct {p0}, Lcn/mucang/android/core/webview/core/page/TitleBar;-><init>()V

    invoke-virtual {v0, p0}, Lcn/mucang/android/core/webview/core/page/WebPageArgument;->setTitleBar(Lcn/mucang/android/core/webview/core/page/TitleBar;)V

    const/4 p0, 0x1

    .line 3
    invoke-virtual {v0, p0}, Lcn/mucang/android/core/webview/core/page/WebPageArgument;->setFullScreen(Z)V

    return-object v0
.end method


# virtual methods
.method public from(Lcn/mucang/android/core/webview/core/page/WebPageArgument;)V
    .locals 1

    if-nez p1, :cond_0

    return-void

    .line 1
    :cond_0
    iget-object v0, p1, Lcn/mucang/android/core/webview/core/page/WebPageArgument;->titleBar:Lcn/mucang/android/core/webview/core/page/TitleBar;

    iput-object v0, p0, Lcn/mucang/android/core/webview/core/page/WebPageArgument;->titleBar:Lcn/mucang/android/core/webview/core/page/TitleBar;

    .line 2
    iget-object v0, p1, Lcn/mucang/android/core/webview/core/page/WebPageArgument;->statusBar:Lcn/mucang/android/core/webview/core/page/StatusBar;

    iput-object v0, p0, Lcn/mucang/android/core/webview/core/page/WebPageArgument;->statusBar:Lcn/mucang/android/core/webview/core/page/StatusBar;

    .line 3
    iget-boolean v0, p1, Lcn/mucang/android/core/webview/core/page/WebPageArgument;->transition:Z

    iput-boolean v0, p0, Lcn/mucang/android/core/webview/core/page/WebPageArgument;->transition:Z

    .line 4
    iget-boolean v0, p1, Lcn/mucang/android/core/webview/core/page/WebPageArgument;->showTitleBar:Z

    iput-boolean v0, p0, Lcn/mucang/android/core/webview/core/page/WebPageArgument;->showTitleBar:Z

    .line 5
    iget-boolean v0, p1, Lcn/mucang/android/core/webview/core/page/WebPageArgument;->fullScreen:Z

    iput-boolean v0, p0, Lcn/mucang/android/core/webview/core/page/WebPageArgument;->fullScreen:Z

    .line 6
    iget-boolean v0, p1, Lcn/mucang/android/core/webview/core/page/WebPageArgument;->hasConfig:Z

    iput-boolean v0, p0, Lcn/mucang/android/core/webview/core/page/WebPageArgument;->hasConfig:Z

    .line 7
    iget v0, p1, Lcn/mucang/android/core/webview/core/page/WebPageArgument;->baseWidth:I

    iput v0, p0, Lcn/mucang/android/core/webview/core/page/WebPageArgument;->baseWidth:I

    .line 8
    iget-object v0, p1, Lcn/mucang/android/core/webview/core/page/WebPageArgument;->background:Ljava/lang/String;

    iput-object v0, p0, Lcn/mucang/android/core/webview/core/page/WebPageArgument;->background:Ljava/lang/String;

    .line 9
    iget-object p1, p1, Lcn/mucang/android/core/webview/core/page/WebPageArgument;->pageNme:Ljava/lang/String;

    iput-object p1, p0, Lcn/mucang/android/core/webview/core/page/WebPageArgument;->pageNme:Ljava/lang/String;

    return-void
.end method

.method public getBackground()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcn/mucang/android/core/webview/core/page/WebPageArgument;->background:Ljava/lang/String;

    return-object v0
.end method

.method public getBaseWidth()I
    .locals 1

    .line 1
    iget v0, p0, Lcn/mucang/android/core/webview/core/page/WebPageArgument;->baseWidth:I

    return v0
.end method

.method public getPageNme()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcn/mucang/android/core/webview/core/page/WebPageArgument;->pageNme:Ljava/lang/String;

    return-object v0
.end method

.method public getStatusBar()Lcn/mucang/android/core/webview/core/page/StatusBar;
    .locals 1

    .line 1
    iget-object v0, p0, Lcn/mucang/android/core/webview/core/page/WebPageArgument;->statusBar:Lcn/mucang/android/core/webview/core/page/StatusBar;

    return-object v0
.end method

.method public getTitleBar()Lcn/mucang/android/core/webview/core/page/TitleBar;
    .locals 1

    .line 1
    iget-object v0, p0, Lcn/mucang/android/core/webview/core/page/WebPageArgument;->titleBar:Lcn/mucang/android/core/webview/core/page/TitleBar;

    return-object v0
.end method

.method public getUrl()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcn/mucang/android/core/webview/core/page/WebPageArgument;->url:Ljava/lang/String;

    return-object v0
.end method

.method public isFullScreen()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcn/mucang/android/core/webview/core/page/WebPageArgument;->fullScreen:Z

    return v0
.end method

.method public isHasConfig()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcn/mucang/android/core/webview/core/page/WebPageArgument;->hasConfig:Z

    return v0
.end method

.method public isShowTitleBar()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcn/mucang/android/core/webview/core/page/WebPageArgument;->showTitleBar:Z

    return v0
.end method

.method public isTransition()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcn/mucang/android/core/webview/core/page/WebPageArgument;->transition:Z

    return v0
.end method

.method public setBackground(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcn/mucang/android/core/webview/core/page/WebPageArgument;->background:Ljava/lang/String;

    return-void
.end method

.method public setBaseWidth(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcn/mucang/android/core/webview/core/page/WebPageArgument;->baseWidth:I

    return-void
.end method

.method public setFullScreen(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcn/mucang/android/core/webview/core/page/WebPageArgument;->fullScreen:Z

    return-void
.end method

.method public setHasConfig(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcn/mucang/android/core/webview/core/page/WebPageArgument;->hasConfig:Z

    return-void
.end method

.method public setPageNme(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcn/mucang/android/core/webview/core/page/WebPageArgument;->pageNme:Ljava/lang/String;

    return-void
.end method

.method public setShowTitleBar(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcn/mucang/android/core/webview/core/page/WebPageArgument;->showTitleBar:Z

    return-void
.end method

.method public setStatusBar(Lcn/mucang/android/core/webview/core/page/StatusBar;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcn/mucang/android/core/webview/core/page/WebPageArgument;->statusBar:Lcn/mucang/android/core/webview/core/page/StatusBar;

    return-void
.end method

.method public setTitleBar(Lcn/mucang/android/core/webview/core/page/TitleBar;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcn/mucang/android/core/webview/core/page/WebPageArgument;->titleBar:Lcn/mucang/android/core/webview/core/page/TitleBar;

    return-void
.end method

.method public setTransition(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcn/mucang/android/core/webview/core/page/WebPageArgument;->transition:Z

    return-void
.end method

.method public setUrl(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcn/mucang/android/core/webview/core/page/WebPageArgument;->url:Ljava/lang/String;

    return-void
.end method
