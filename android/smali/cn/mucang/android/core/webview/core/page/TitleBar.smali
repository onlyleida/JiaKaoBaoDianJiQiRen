.class public Lcn/mucang/android/core/webview/core/page/TitleBar;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/mucang/android/core/webview/core/page/TitleBar$Back;,
        Lcn/mucang/android/core/webview/core/page/TitleBar$Title;
    }
.end annotation


# instance fields
.field private back:Lcn/mucang/android/core/webview/core/page/TitleBar$Back;

.field private background:Ljava/lang/String;

.field private height:I

.field private title:Lcn/mucang/android/core/webview/core/page/TitleBar$Title;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getBack()Lcn/mucang/android/core/webview/core/page/TitleBar$Back;
    .locals 1

    .line 1
    iget-object v0, p0, Lcn/mucang/android/core/webview/core/page/TitleBar;->back:Lcn/mucang/android/core/webview/core/page/TitleBar$Back;

    return-object v0
.end method

.method public getBackground()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcn/mucang/android/core/webview/core/page/TitleBar;->background:Ljava/lang/String;

    return-object v0
.end method

.method public getHeight()I
    .locals 1

    .line 1
    iget v0, p0, Lcn/mucang/android/core/webview/core/page/TitleBar;->height:I

    return v0
.end method

.method public getTitle()Lcn/mucang/android/core/webview/core/page/TitleBar$Title;
    .locals 1

    .line 1
    iget-object v0, p0, Lcn/mucang/android/core/webview/core/page/TitleBar;->title:Lcn/mucang/android/core/webview/core/page/TitleBar$Title;

    return-object v0
.end method

.method public setBack(Lcn/mucang/android/core/webview/core/page/TitleBar$Back;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcn/mucang/android/core/webview/core/page/TitleBar;->back:Lcn/mucang/android/core/webview/core/page/TitleBar$Back;

    return-void
.end method

.method public setBackground(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcn/mucang/android/core/webview/core/page/TitleBar;->background:Ljava/lang/String;

    return-void
.end method

.method public setHeight(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcn/mucang/android/core/webview/core/page/TitleBar;->height:I

    return-void
.end method

.method public setTitle(Lcn/mucang/android/core/webview/core/page/TitleBar$Title;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcn/mucang/android/core/webview/core/page/TitleBar;->title:Lcn/mucang/android/core/webview/core/page/TitleBar$Title;

    return-void
.end method
