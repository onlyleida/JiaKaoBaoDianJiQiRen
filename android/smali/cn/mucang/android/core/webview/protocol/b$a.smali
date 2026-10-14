.class Lcn/mucang/android/core/webview/protocol/b$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/mucang/android/core/webview/protocol/b;->a(Lcn/mucang/android/core/webview/core/h;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcn/mucang/android/core/webview/j/a;

.field final synthetic b:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcn/mucang/android/core/webview/protocol/b;Lcn/mucang/android/core/webview/j/a;Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p2, p0, Lcn/mucang/android/core/webview/protocol/b$a;->a:Lcn/mucang/android/core/webview/j/a;

    iput-object p3, p0, Lcn/mucang/android/core/webview/protocol/b$a;->b:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 0

    .line 1
    invoke-static {}, Lcn/mucang/android/core/callphone/a;->h()Lcn/mucang/android/core/callphone/a;

    move-result-object p1

    iget-object p2, p0, Lcn/mucang/android/core/webview/protocol/b$a;->a:Lcn/mucang/android/core/webview/j/a;

    iget-object p2, p2, Lcn/mucang/android/core/webview/j/a;->e:Ljava/lang/String;

    invoke-virtual {p1, p2}, Lcn/mucang/android/core/callphone/a;->f(Ljava/lang/String;)V

    .line 2
    iget-object p1, p0, Lcn/mucang/android/core/webview/protocol/b$a;->b:Ljava/lang/String;

    invoke-static {p1}, Lf/a/a/a/c;->c(Ljava/lang/String;)V

    return-void
.end method
