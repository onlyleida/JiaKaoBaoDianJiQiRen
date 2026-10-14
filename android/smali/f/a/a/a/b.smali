.class public Lf/a/a/a/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lf/a/a/a/i/c;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 1

    .line 1
    invoke-static {p2}, Lcn/mucang/android/core/webview/core/page/e;->h(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    invoke-static {}, Lcn/mucang/android/core/webview/core/page/AsteroidManager;->d()Lcn/mucang/android/core/webview/core/page/AsteroidManager;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcn/mucang/android/core/webview/core/page/AsteroidManager;->h(Landroid/content/Context;Ljava/lang/String;)V

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method
