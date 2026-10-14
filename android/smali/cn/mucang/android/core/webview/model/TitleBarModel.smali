.class public Lcn/mucang/android/core/webview/model/TitleBarModel;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcn/mucang/android/ui/framework/mvp/BaseModel;


# instance fields
.field private hideRightButton:Z

.field private showBackButton:Z

.field private showProgressBar:Z

.field private title:Ljava/lang/String;

.field private url:Ljava/lang/String;

.field private urlEditable:Z


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Z)V
    .locals 0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    iput-boolean p1, p0, Lcn/mucang/android/core/webview/model/TitleBarModel;->showProgressBar:Z

    return-void
.end method


# virtual methods
.method public getTitle()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcn/mucang/android/core/webview/model/TitleBarModel;->title:Ljava/lang/String;

    return-object v0
.end method

.method public getUrl()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcn/mucang/android/core/webview/model/TitleBarModel;->url:Ljava/lang/String;

    return-object v0
.end method

.method public isHideRightButton()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcn/mucang/android/core/webview/model/TitleBarModel;->hideRightButton:Z

    return v0
.end method

.method public isShowBackButton()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcn/mucang/android/core/webview/model/TitleBarModel;->showBackButton:Z

    return v0
.end method

.method public isShowProgressBar()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcn/mucang/android/core/webview/model/TitleBarModel;->showProgressBar:Z

    return v0
.end method

.method public isUrlEditable()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcn/mucang/android/core/webview/model/TitleBarModel;->urlEditable:Z

    return v0
.end method

.method public setHideRightButton(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcn/mucang/android/core/webview/model/TitleBarModel;->hideRightButton:Z

    return-void
.end method

.method public setShowBackButton(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcn/mucang/android/core/webview/model/TitleBarModel;->showBackButton:Z

    return-void
.end method

.method public setShowProgressBar(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcn/mucang/android/core/webview/model/TitleBarModel;->showProgressBar:Z

    return-void
.end method

.method public setTitle(Ljava/lang/String;)Lcn/mucang/android/core/webview/model/TitleBarModel;
    .locals 0

    .line 1
    iput-object p1, p0, Lcn/mucang/android/core/webview/model/TitleBarModel;->title:Ljava/lang/String;

    return-object p0
.end method

.method public setUrl(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcn/mucang/android/core/webview/model/TitleBarModel;->url:Ljava/lang/String;

    return-void
.end method

.method public setUrlEditable(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcn/mucang/android/core/webview/model/TitleBarModel;->urlEditable:Z

    return-void
.end method
