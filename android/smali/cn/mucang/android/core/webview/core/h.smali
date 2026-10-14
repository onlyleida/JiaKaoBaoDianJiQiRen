.class public Lcn/mucang/android/core/webview/core/h;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private a:Ljava/lang/String;

.field private b:Ljava/lang/String;

.field private c:Lcn/mucang/android/core/webview/core/MucangWebView;


# direct methods
.method public constructor <init>(Lcn/mucang/android/core/webview/core/MucangWebView;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcn/mucang/android/core/webview/core/h;->c:Lcn/mucang/android/core/webview/core/MucangWebView;

    .line 3
    new-instance p1, Lcn/mucang/android/core/webview/protocol/c/a;

    invoke-direct {p1}, Lcn/mucang/android/core/webview/protocol/c/a;-><init>()V

    invoke-virtual {p0, p1}, Lcn/mucang/android/core/webview/core/h;->g(Lcn/mucang/android/core/webview/protocol/c/a;)V

    return-void
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcn/mucang/android/core/webview/core/h;->b:Ljava/lang/String;

    return-object v0
.end method

.method public b()Lcn/mucang/android/core/webview/core/MucangWebView;
    .locals 1

    .line 1
    iget-object v0, p0, Lcn/mucang/android/core/webview/core/h;->c:Lcn/mucang/android/core/webview/core/MucangWebView;

    return-object v0
.end method

.method public c()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcn/mucang/android/core/webview/core/h;->a:Ljava/lang/String;

    return-object v0
.end method

.method public d(Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public e(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcn/mucang/android/core/webview/core/h;->b:Ljava/lang/String;

    return-void
.end method

.method public f(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcn/mucang/android/core/webview/core/h;->a:Ljava/lang/String;

    return-void
.end method

.method public g(Lcn/mucang/android/core/webview/protocol/c/a;)V
    .locals 0

    return-void
.end method

.method public h(Ljava/lang/String;)V
    .locals 0

    return-void
.end method
