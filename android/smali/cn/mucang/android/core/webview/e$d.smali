.class Lcn/mucang/android/core/webview/e$d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcn/mucang/android/core/webview/l/e;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/mucang/android/core/webview/e;->P()V
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
    iput-object p1, p0, Lcn/mucang/android/core/webview/e$d;->a:Lcn/mucang/android/core/webview/e;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcn/mucang/android/core/webview/e$d;->a:Lcn/mucang/android/core/webview/e;

    invoke-static {v0}, Lcn/mucang/android/core/webview/e;->w(Lcn/mucang/android/core/webview/e;)Lcn/mucang/android/core/webview/core/g;

    move-result-object v0

    invoke-virtual {v0}, Lcn/mucang/android/core/webview/core/g;->H()V

    return-void
.end method

.method public b()V
    .locals 3
    .annotation build Landroid/annotation/TargetApi;
        value = 0xb
    .end annotation

    .line 1
    iget-object v0, p0, Lcn/mucang/android/core/webview/e$d;->a:Lcn/mucang/android/core/webview/e;

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/d;

    move-result-object v0

    const-string v1, "clipboard"

    .line 2
    invoke-virtual {v0, v1}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/ClipboardManager;

    .line 3
    iget-object v1, p0, Lcn/mucang/android/core/webview/e$d;->a:Lcn/mucang/android/core/webview/e;

    .line 4
    invoke-static {v1}, Lcn/mucang/android/core/webview/e;->w(Lcn/mucang/android/core/webview/e;)Lcn/mucang/android/core/webview/core/g;

    move-result-object v1

    invoke-virtual {v1}, Lcn/mucang/android/core/webview/core/g;->l()Ljava/lang/String;

    move-result-object v1

    const-string v2, "url"

    invoke-static {v2, v1}, Landroid/content/ClipData;->newPlainText(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Landroid/content/ClipData;

    move-result-object v1

    .line 5
    invoke-virtual {v0, v1}, Landroid/content/ClipboardManager;->setPrimaryClip(Landroid/content/ClipData;)V

    const-string v0, "\u590d\u5236\u6210\u529f\uff01"

    .line 6
    invoke-static {v0}, Lcn/mucang/android/core/utils/u;->h(Ljava/lang/String;)V

    return-void
.end method
