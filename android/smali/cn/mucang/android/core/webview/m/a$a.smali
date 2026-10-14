.class Lcn/mucang/android/core/webview/m/a$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/widget/TextView$OnEditorActionListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/mucang/android/core/webview/m/a;->m(Lcn/mucang/android/core/webview/model/TitleBarModel;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcn/mucang/android/core/webview/m/a;


# direct methods
.method constructor <init>(Lcn/mucang/android/core/webview/m/a;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcn/mucang/android/core/webview/m/a$a;->a:Lcn/mucang/android/core/webview/m/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onEditorAction(Landroid/widget/TextView;ILandroid/view/KeyEvent;)Z
    .locals 1

    .line 1
    iget-object p1, p0, Lcn/mucang/android/core/webview/m/a$a;->a:Lcn/mucang/android/core/webview/m/a;

    invoke-static {p1}, Lcn/mucang/android/core/webview/m/a;->h(Lcn/mucang/android/core/webview/m/a;)Lcn/mucang/android/ui/framework/mvp/b;

    move-result-object p1

    check-cast p1, Lcn/mucang/android/core/webview/view/TitleBarView;

    invoke-virtual {p1}, Lcn/mucang/android/core/webview/view/TitleBarView;->getUrlContentEditText()Landroid/widget/EditText;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    .line 2
    invoke-static {p1}, Lcn/mucang/android/core/utils/n0;->e(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p1, 0x1

    return p1

    .line 3
    :cond_0
    iget-object v0, p0, Lcn/mucang/android/core/webview/m/a$a;->a:Lcn/mucang/android/core/webview/m/a;

    invoke-static {v0, p2, p3}, Lcn/mucang/android/core/webview/m/a;->i(Lcn/mucang/android/core/webview/m/a;ILandroid/view/KeyEvent;)Z

    move-result p2

    if-eqz p2, :cond_3

    const-string p2, "file:///"

    .line 4
    invoke-virtual {p1, p2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p2

    if-nez p2, :cond_1

    invoke-static {p1}, Landroid/webkit/URLUtil;->isNetworkUrl(Ljava/lang/String;)Z

    move-result p2

    if-nez p2, :cond_1

    .line 5
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "http://"

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 6
    :cond_1
    iget-object p2, p0, Lcn/mucang/android/core/webview/m/a$a;->a:Lcn/mucang/android/core/webview/m/a;

    invoke-static {p2}, Lcn/mucang/android/core/webview/m/a;->j(Lcn/mucang/android/core/webview/m/a;)Lcn/mucang/android/core/webview/m/a$b;

    move-result-object p2

    if-eqz p2, :cond_2

    .line 7
    iget-object p2, p0, Lcn/mucang/android/core/webview/m/a$a;->a:Lcn/mucang/android/core/webview/m/a;

    invoke-static {p2}, Lcn/mucang/android/core/webview/m/a;->j(Lcn/mucang/android/core/webview/m/a;)Lcn/mucang/android/core/webview/m/a$b;

    move-result-object p2

    invoke-interface {p2, p1}, Lcn/mucang/android/core/webview/m/a$b;->a(Ljava/lang/String;)V

    .line 8
    :cond_2
    iget-object p1, p0, Lcn/mucang/android/core/webview/m/a$a;->a:Lcn/mucang/android/core/webview/m/a;

    invoke-static {p1}, Lcn/mucang/android/core/webview/m/a;->k(Lcn/mucang/android/core/webview/m/a;)V

    .line 9
    iget-object p1, p0, Lcn/mucang/android/core/webview/m/a$a;->a:Lcn/mucang/android/core/webview/m/a;

    invoke-static {p1}, Lcn/mucang/android/core/webview/m/a;->l(Lcn/mucang/android/core/webview/m/a;)V

    :cond_3
    const/4 p1, 0x0

    return p1
.end method
