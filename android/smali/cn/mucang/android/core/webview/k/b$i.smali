.class Lcn/mucang/android/core/webview/k/b$i;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/mucang/android/core/webview/k/b;->b(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcn/mucang/android/core/webview/k/b$k;)Landroid/app/AlertDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcn/mucang/android/core/webview/k/b$k;


# direct methods
.method constructor <init>(Lcn/mucang/android/core/webview/k/b$k;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcn/mucang/android/core/webview/k/b$i;->a:Lcn/mucang/android/core/webview/k/b$k;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 0

    .line 1
    iget-object p1, p0, Lcn/mucang/android/core/webview/k/b$i;->a:Lcn/mucang/android/core/webview/k/b$k;

    if-eqz p1, :cond_0

    .line 2
    invoke-interface {p1}, Lcn/mucang/android/core/webview/k/b$k;->a()V

    :cond_0
    return-void
.end method
