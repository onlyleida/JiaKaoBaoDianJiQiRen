.class Lcn/mucang/android/core/webview/core/page/f$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/mucang/android/core/webview/core/page/f;->f(Landroid/net/Uri;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/net/Uri;

.field final synthetic b:Lcn/mucang/android/core/webview/core/page/f;


# direct methods
.method constructor <init>(Lcn/mucang/android/core/webview/core/page/f;Landroid/net/Uri;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcn/mucang/android/core/webview/core/page/f$a;->b:Lcn/mucang/android/core/webview/core/page/f;

    iput-object p2, p0, Lcn/mucang/android/core/webview/core/page/f$a;->a:Landroid/net/Uri;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcn/mucang/android/core/webview/core/page/f$a;->b:Lcn/mucang/android/core/webview/core/page/f;

    invoke-static {v0}, Lcn/mucang/android/core/webview/core/page/f;->a(Lcn/mucang/android/core/webview/core/page/f;)Lcn/mucang/android/core/ui/page/d;

    move-result-object v0

    iget-object v1, p0, Lcn/mucang/android/core/webview/core/page/f$a;->a:Landroid/net/Uri;

    const-string v2, "name"

    invoke-virtual {v1, v2}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcn/mucang/android/core/ui/page/d;->i(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 2
    invoke-static {}, Lcn/mucang/android/core/config/MucangConfig;->i()Landroid/app/Activity;

    move-result-object v0

    .line 3
    instance-of v1, v0, Lcn/mucang/android/core/ui/page/PageActivity;

    if-eqz v1, :cond_0

    .line 4
    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    :cond_0
    return-void
.end method
