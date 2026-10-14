.class Lcn/mucang/android/core/webview/e$f;
.super Landroid/content/BroadcastReceiver;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/mucang/android/core/webview/e;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "f"
.end annotation


# instance fields
.field final synthetic a:Lcn/mucang/android/core/webview/e;


# direct methods
.method private constructor <init>(Lcn/mucang/android/core/webview/e;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcn/mucang/android/core/webview/e$f;->a:Lcn/mucang/android/core/webview/e;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcn/mucang/android/core/webview/e;Lcn/mucang/android/core/webview/e$a;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1}, Lcn/mucang/android/core/webview/e$f;-><init>(Lcn/mucang/android/core/webview/e;)V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3

    .line 1
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    .line 2
    iget-object v0, p0, Lcn/mucang/android/core/webview/e$f;->a:Lcn/mucang/android/core/webview/e;

    invoke-static {v0}, Lcn/mucang/android/core/webview/e;->w(Lcn/mucang/android/core/webview/e;)Lcn/mucang/android/core/webview/core/g;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 3
    :cond_0
    iget-object v0, p0, Lcn/mucang/android/core/webview/e$f;->a:Lcn/mucang/android/core/webview/e;

    invoke-static {v0}, Lcn/mucang/android/core/webview/e;->y(Lcn/mucang/android/core/webview/e;)Lcn/mucang/android/core/webview/core/MucangWebView;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    const/4 v1, 0x0

    const-string v2, "__extra_current_webivew_id"

    invoke-virtual {p2, v2, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    if-eq v0, v1, :cond_1

    return-void

    :cond_1
    const-string v0, "cn.mucang.android.web.SHOW_MENU_DIALOG"

    .line 4
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 5
    iget-object p1, p0, Lcn/mucang/android/core/webview/e$f;->a:Lcn/mucang/android/core/webview/e;

    invoke-static {p1}, Lcn/mucang/android/core/webview/e;->x(Lcn/mucang/android/core/webview/e;)V

    goto :goto_0

    :cond_2
    const-string v0, "cn.mucang.android.web.WEB_SETTING"

    .line 6
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3

    const-string p1, "__core__extra_html__"

    .line 7
    invoke-virtual {p2, p1}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object p1

    check-cast p1, Lcn/mucang/android/core/webview/HtmlExtra;

    if-eqz p1, :cond_3

    .line 8
    iget-object p2, p0, Lcn/mucang/android/core/webview/e$f;->a:Lcn/mucang/android/core/webview/e;

    invoke-static {p2}, Lcn/mucang/android/core/webview/e;->z(Lcn/mucang/android/core/webview/e;)Lcn/mucang/android/core/webview/m/a;

    move-result-object p2

    invoke-virtual {p1}, Lcn/mucang/android/core/webview/HtmlExtra;->getTitle()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Lcn/mucang/android/core/webview/m/a;->y(Ljava/lang/CharSequence;)V

    .line 9
    iget-object p2, p0, Lcn/mucang/android/core/webview/e$f;->a:Lcn/mucang/android/core/webview/e;

    invoke-static {p2}, Lcn/mucang/android/core/webview/e;->z(Lcn/mucang/android/core/webview/e;)Lcn/mucang/android/core/webview/m/a;

    move-result-object p2

    invoke-virtual {p1}, Lcn/mucang/android/core/webview/HtmlExtra;->isShowTitleBar()Z

    move-result v0

    invoke-virtual {p2, v0}, Lcn/mucang/android/core/webview/m/a;->p(Z)V

    .line 10
    iget-object p2, p0, Lcn/mucang/android/core/webview/e$f;->a:Lcn/mucang/android/core/webview/e;

    invoke-static {p2}, Lcn/mucang/android/core/webview/e;->z(Lcn/mucang/android/core/webview/e;)Lcn/mucang/android/core/webview/m/a;

    move-result-object p2

    invoke-virtual {p1}, Lcn/mucang/android/core/webview/HtmlExtra;->isShowOptionButton()Z

    move-result v0

    invoke-virtual {p2, v0}, Lcn/mucang/android/core/webview/m/a;->o(Z)V

    .line 11
    iget-object p2, p0, Lcn/mucang/android/core/webview/e$f;->a:Lcn/mucang/android/core/webview/e;

    invoke-static {p2}, Lcn/mucang/android/core/webview/e;->A(Lcn/mucang/android/core/webview/e;)Lcn/mucang/android/core/webview/HtmlExtra;

    move-result-object p2

    invoke-virtual {p1}, Lcn/mucang/android/core/webview/HtmlExtra;->getMenuOptions()Lcn/mucang/android/core/webview/MenuOptions;

    move-result-object v0

    invoke-virtual {p2, v0}, Lcn/mucang/android/core/webview/HtmlExtra;->updateMenuOptions(Lcn/mucang/android/core/webview/MenuOptions;)V

    .line 12
    iget-object p2, p0, Lcn/mucang/android/core/webview/e$f;->a:Lcn/mucang/android/core/webview/e;

    invoke-static {p2, p1}, Lcn/mucang/android/core/webview/e;->B(Lcn/mucang/android/core/webview/e;Lcn/mucang/android/core/webview/HtmlExtra;)V

    .line 13
    iget-object p2, p0, Lcn/mucang/android/core/webview/e$f;->a:Lcn/mucang/android/core/webview/e;

    invoke-virtual {p1}, Lcn/mucang/android/core/webview/HtmlExtra;->getOrientation()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Lcn/mucang/android/core/webview/e;->C(Lcn/mucang/android/core/webview/e;Ljava/lang/String;)V

    :cond_3
    :goto_0
    return-void
.end method
