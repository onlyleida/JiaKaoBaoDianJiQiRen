.class Lcn/mucang/android/core/webview/tracker/b$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/mucang/android/core/webview/tracker/b;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcn/mucang/android/core/webview/tracker/http/model/a;


# direct methods
.method constructor <init>(Lcn/mucang/android/core/webview/tracker/b;Lcn/mucang/android/core/webview/tracker/http/model/a;)V
    .locals 0

    .line 1
    iput-object p2, p0, Lcn/mucang/android/core/webview/tracker/b$a;->a:Lcn/mucang/android/core/webview/tracker/http/model/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 1
    new-instance v0, Lcn/mucang/android/core/webview/tracker/d/b;

    invoke-direct {v0}, Lcn/mucang/android/core/webview/tracker/d/b;-><init>()V

    iget-object v1, p0, Lcn/mucang/android/core/webview/tracker/b$a;->a:Lcn/mucang/android/core/webview/tracker/http/model/a;

    invoke-virtual {v0, v1}, Lcn/mucang/android/core/webview/tracker/d/b;->b(Lcn/mucang/android/core/webview/tracker/http/model/a;)V

    return-void
.end method
