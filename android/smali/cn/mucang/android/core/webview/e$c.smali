.class Lcn/mucang/android/core/webview/e$c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcn/mucang/android/core/webview/m/a$b;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/mucang/android/core/webview/e;->J()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcn/mucang/android/core/webview/e;


# direct methods
.method constructor <init>(Lcn/mucang/android/core/webview/e;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcn/mucang/android/core/webview/e$c;->a:Lcn/mucang/android/core/webview/e;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcn/mucang/android/core/webview/e$c;->a:Lcn/mucang/android/core/webview/e;

    invoke-static {v0}, Lcn/mucang/android/core/webview/e;->w(Lcn/mucang/android/core/webview/e;)Lcn/mucang/android/core/webview/core/g;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    iget-object v0, p0, Lcn/mucang/android/core/webview/e$c;->a:Lcn/mucang/android/core/webview/e;

    invoke-static {v0}, Lcn/mucang/android/core/webview/e;->w(Lcn/mucang/android/core/webview/e;)Lcn/mucang/android/core/webview/core/g;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcn/mucang/android/core/webview/core/g;->v(Ljava/lang/String;)V

    return-void
.end method
