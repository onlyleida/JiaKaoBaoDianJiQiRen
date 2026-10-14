.class Lcn/mucang/android/core/webview/tracker/b$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/mucang/android/core/webview/tracker/b;->d()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcn/mucang/android/core/webview/tracker/b;


# direct methods
.method constructor <init>(Lcn/mucang/android/core/webview/tracker/b;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcn/mucang/android/core/webview/tracker/b$b;->a:Lcn/mucang/android/core/webview/tracker/b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcn/mucang/android/core/webview/tracker/b$b;->a:Lcn/mucang/android/core/webview/tracker/b;

    new-instance v1, Lcn/mucang/android/core/webview/tracker/d/a;

    invoke-direct {v1}, Lcn/mucang/android/core/webview/tracker/d/a;-><init>()V

    invoke-virtual {v1}, Lcn/mucang/android/core/webview/tracker/d/a;->b()Ljava/util/List;

    move-result-object v1

    invoke-static {v0, v1}, Lcn/mucang/android/core/webview/tracker/b;->a(Lcn/mucang/android/core/webview/tracker/b;Ljava/util/List;)Ljava/util/List;

    return-void
.end method
