.class Lcn/mucang/android/core/webview/b$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/mucang/android/core/webview/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcn/mucang/android/core/webview/b;


# direct methods
.method constructor <init>(Lcn/mucang/android/core/webview/b;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcn/mucang/android/core/webview/b$a;->a:Lcn/mucang/android/core/webview/b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onGlobalLayout()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcn/mucang/android/core/webview/b$a;->a:Lcn/mucang/android/core/webview/b;

    invoke-static {v0}, Lcn/mucang/android/core/webview/b;->a(Lcn/mucang/android/core/webview/b;)V

    return-void
.end method
