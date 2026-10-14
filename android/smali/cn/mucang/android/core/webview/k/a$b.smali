.class Lcn/mucang/android/core/webview/k/a$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/mucang/android/core/webview/k/a;->f(Landroid/content/Context;Ljava/lang/String;Lcn/mucang/android/core/webview/j/a;Ljava/util/List;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcn/mucang/android/core/webview/j/a;

.field final synthetic b:Ljava/lang/String;

.field final synthetic c:Landroid/app/Dialog;


# direct methods
.method constructor <init>(Lcn/mucang/android/core/webview/j/a;Ljava/lang/String;Landroid/app/Dialog;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcn/mucang/android/core/webview/k/a$b;->a:Lcn/mucang/android/core/webview/j/a;

    iput-object p2, p0, Lcn/mucang/android/core/webview/k/a$b;->b:Ljava/lang/String;

    iput-object p3, p0, Lcn/mucang/android/core/webview/k/a$b;->c:Landroid/app/Dialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 1
    iget-object p1, p0, Lcn/mucang/android/core/webview/k/a$b;->a:Lcn/mucang/android/core/webview/j/a;

    iget-object v0, p0, Lcn/mucang/android/core/webview/k/a$b;->b:Ljava/lang/String;

    invoke-static {p1, v0}, Lcn/mucang/android/core/webview/k/a;->b(Lcn/mucang/android/core/webview/j/a;Ljava/lang/String;)V

    .line 2
    iget-object p1, p0, Lcn/mucang/android/core/webview/k/a$b;->c:Landroid/app/Dialog;

    invoke-static {p1}, Lcn/mucang/android/core/utils/k;->b(Landroid/app/Dialog;)V

    return-void
.end method
