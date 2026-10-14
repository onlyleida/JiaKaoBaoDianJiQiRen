.class Lcn/mucang/android/core/webview/k/b$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnCancelListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/mucang/android/core/webview/k/b;->d(Landroid/content/Context;Lcn/mucang/android/core/webview/k/b$l;)Landroid/app/ProgressDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcn/mucang/android/core/webview/k/b$l;


# direct methods
.method constructor <init>(Lcn/mucang/android/core/webview/k/b$l;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcn/mucang/android/core/webview/k/b$b;->a:Lcn/mucang/android/core/webview/k/b$l;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancel(Landroid/content/DialogInterface;)V
    .locals 0

    .line 1
    iget-object p1, p0, Lcn/mucang/android/core/webview/k/b$b;->a:Lcn/mucang/android/core/webview/k/b$l;

    if-eqz p1, :cond_0

    .line 2
    invoke-interface {p1}, Lcn/mucang/android/core/webview/k/b$l;->onCancel()V

    :cond_0
    return-void
.end method
