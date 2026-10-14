.class public Lcn/mucang/android/core/webview/core/page/StatusBar;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field private background:Ljava/lang/String;

.field private fontColor:Ljava/lang/String;

.field private transparent:Z


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getBackground()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcn/mucang/android/core/webview/core/page/StatusBar;->background:Ljava/lang/String;

    return-object v0
.end method

.method public getFontColor()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcn/mucang/android/core/webview/core/page/StatusBar;->fontColor:Ljava/lang/String;

    return-object v0
.end method

.method public isDarkMode()Z
    .locals 2

    .line 1
    iget-object v0, p0, Lcn/mucang/android/core/webview/core/page/StatusBar;->fontColor:Ljava/lang/String;

    const-string v1, "dark"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public isTransparent()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcn/mucang/android/core/webview/core/page/StatusBar;->transparent:Z

    return v0
.end method

.method public setBackground(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcn/mucang/android/core/webview/core/page/StatusBar;->background:Ljava/lang/String;

    return-void
.end method

.method public setFontColor(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcn/mucang/android/core/webview/core/page/StatusBar;->fontColor:Ljava/lang/String;

    return-void
.end method

.method public setTransparent(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcn/mucang/android/core/webview/core/page/StatusBar;->transparent:Z

    return-void
.end method
