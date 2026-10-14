.class public Lcn/mucang/android/core/webview/i;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/net/Uri;)V
    .locals 1

    .line 1
    invoke-static {p1}, Lcn/mucang/android/core/webview/h;->c(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v0

    .line 2
    invoke-static {v0}, Lcn/mucang/android/core/utils/n0;->f(Ljava/lang/String;)Z

    move-result v0

    .line 3
    invoke-static {p1}, Lcn/mucang/android/core/webview/h;->d(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object p1

    .line 4
    invoke-static {p1}, Lcn/mucang/android/core/utils/n0;->f(Ljava/lang/String;)Z

    move-result p1

    return-void
.end method
