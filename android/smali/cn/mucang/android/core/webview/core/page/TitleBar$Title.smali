.class Lcn/mucang/android/core/webview/core/page/TitleBar$Title;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/mucang/android/core/webview/core/page/TitleBar;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "Title"
.end annotation


# instance fields
.field private color:Ljava/lang/String;

.field private text:Ljava/lang/String;

.field final synthetic this$0:Lcn/mucang/android/core/webview/core/page/TitleBar;


# direct methods
.method constructor <init>(Lcn/mucang/android/core/webview/core/page/TitleBar;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcn/mucang/android/core/webview/core/page/TitleBar$Title;->this$0:Lcn/mucang/android/core/webview/core/page/TitleBar;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getColor()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcn/mucang/android/core/webview/core/page/TitleBar$Title;->color:Ljava/lang/String;

    return-object v0
.end method

.method public getText()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcn/mucang/android/core/webview/core/page/TitleBar$Title;->text:Ljava/lang/String;

    return-object v0
.end method

.method public setColor(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcn/mucang/android/core/webview/core/page/TitleBar$Title;->color:Ljava/lang/String;

    return-void
.end method

.method public setText(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcn/mucang/android/core/webview/core/page/TitleBar$Title;->text:Ljava/lang/String;

    return-void
.end method
