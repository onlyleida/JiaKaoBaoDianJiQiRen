.class public final synthetic Lcn/mucang/android/core/webview/l/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic a:Lcn/mucang/android/core/webview/l/d;

.field public final synthetic b:Lcn/mucang/android/core/webview/l/c;


# direct methods
.method public synthetic constructor <init>(Lcn/mucang/android/core/webview/l/d;Lcn/mucang/android/core/webview/l/c;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcn/mucang/android/core/webview/l/b;->a:Lcn/mucang/android/core/webview/l/d;

    iput-object p2, p0, Lcn/mucang/android/core/webview/l/b;->b:Lcn/mucang/android/core/webview/l/c;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 2

    iget-object v0, p0, Lcn/mucang/android/core/webview/l/b;->a:Lcn/mucang/android/core/webview/l/d;

    iget-object v1, p0, Lcn/mucang/android/core/webview/l/b;->b:Lcn/mucang/android/core/webview/l/c;

    invoke-virtual {v0, v1, p1}, Lcn/mucang/android/core/webview/l/d;->f(Lcn/mucang/android/core/webview/l/c;Landroid/view/View;)V

    return-void
.end method
