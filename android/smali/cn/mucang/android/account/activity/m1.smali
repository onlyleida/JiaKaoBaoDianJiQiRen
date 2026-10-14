.class public Lcn/mucang/android/account/activity/m1;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method static a(Landroid/app/Activity;)V
    .locals 2

    .line 1
    new-instance v0, Lcn/mucang/android/core/webview/HtmlExtra$b;

    invoke-direct {v0}, Lcn/mucang/android/core/webview/HtmlExtra$b;-><init>()V

    const-string v1, "https://laofuzi.kakamobi.com/jiakaobaodian-newH5/verified.html"

    invoke-virtual {v0, v1}, Lcn/mucang/android/core/webview/HtmlExtra$b;->J(Ljava/lang/String;)Lcn/mucang/android/core/webview/HtmlExtra$b;

    .line 2
    invoke-virtual {v0}, Lcn/mucang/android/core/webview/HtmlExtra$b;->y()Lcn/mucang/android/core/webview/HtmlExtra;

    move-result-object v0

    const/4 v1, 0x0

    .line 3
    invoke-static {p0, v1, v0}, Lcn/mucang/android/account/activity/LoginHtml5Activity;->m(Landroid/app/Activity;ILcn/mucang/android/core/webview/HtmlExtra;)V

    return-void
.end method

.method static b(Landroid/app/Activity;IZ)V
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "https://laofuzi.kakamobi.com/jiakaobaodian-newH5/?isEdit="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .line 2
    new-instance v0, Lcn/mucang/android/core/webview/HtmlExtra$b;

    invoke-direct {v0}, Lcn/mucang/android/core/webview/HtmlExtra$b;-><init>()V

    invoke-virtual {v0, p2}, Lcn/mucang/android/core/webview/HtmlExtra$b;->J(Ljava/lang/String;)Lcn/mucang/android/core/webview/HtmlExtra$b;

    invoke-virtual {v0}, Lcn/mucang/android/core/webview/HtmlExtra$b;->y()Lcn/mucang/android/core/webview/HtmlExtra;

    move-result-object p2

    .line 3
    invoke-static {p0, p1, p2}, Lcn/mucang/android/account/activity/LoginHtml5Activity;->m(Landroid/app/Activity;ILcn/mucang/android/core/webview/HtmlExtra;)V

    return-void
.end method

.method static c(Landroid/app/Activity;I)V
    .locals 2

    .line 1
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcn/mucang/android/account/activity/ChangePasswordActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 2
    invoke-virtual {p0, v0, p1}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    return-void
.end method

.method static d(Landroid/app/Activity;)V
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "https://laofuzi.kakamobi.com/jiakaobaodian-newH5/tickling.html?category="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "account"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 2
    new-instance v1, Lcn/mucang/android/core/webview/HtmlExtra$b;

    invoke-direct {v1}, Lcn/mucang/android/core/webview/HtmlExtra$b;-><init>()V

    invoke-virtual {v1, v0}, Lcn/mucang/android/core/webview/HtmlExtra$b;->J(Ljava/lang/String;)Lcn/mucang/android/core/webview/HtmlExtra$b;

    invoke-virtual {v1}, Lcn/mucang/android/core/webview/HtmlExtra$b;->y()Lcn/mucang/android/core/webview/HtmlExtra;

    move-result-object v0

    const/4 v1, 0x0

    .line 3
    invoke-static {p0, v1, v0}, Lcn/mucang/android/account/activity/LoginHtml5Activity;->m(Landroid/app/Activity;ILcn/mucang/android/core/webview/HtmlExtra;)V

    return-void
.end method

.method public static e(Landroid/app/Activity;ILjava/lang/String;)V
    .locals 2

    .line 1
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcn/mucang/android/account/activity/ForgotPasswordActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v1, "__extra_phone_number__"

    .line 2
    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 3
    invoke-virtual {p0, v0, p1}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    return-void
.end method

.method static f(Landroid/app/Activity;ILjava/lang/String;I)V
    .locals 3

    .line 1
    new-instance v0, Lcn/mucang/android/account/activity/ValidationActivity$a;

    invoke-direct {v0, p0}, Lcn/mucang/android/account/activity/ValidationActivity$a;-><init>(Landroid/content/Context;)V

    .line 2
    new-instance v1, Lcn/mucang/android/account/api/data/CheckSmsResponse;

    invoke-direct {v1}, Lcn/mucang/android/account/api/data/CheckSmsResponse;-><init>()V

    .line 3
    sget-object v2, Lcn/mucang/android/account/api/data/CheckType;->FALSE:Lcn/mucang/android/account/api/data/CheckType;

    invoke-virtual {v1, v2}, Lcn/mucang/android/account/api/data/CheckSmsResponse;->setCheckType(Lcn/mucang/android/account/api/data/CheckType;)V

    .line 4
    invoke-virtual {v0, v1}, Lcn/mucang/android/account/activity/ValidationActivity$a;->b(Lcn/mucang/android/account/api/data/CheckSmsResponse;)Lcn/mucang/android/account/activity/ValidationActivity$a;

    const-string v1, "\u7ed1\u5b9a\u624b\u673a\u53f7\uff0c\u60a8\u7684\u65b0\u53f7\u7801\u5c06\u6b63\u5f0f\u542f\u7528"

    .line 5
    invoke-virtual {v0, v1}, Lcn/mucang/android/account/activity/ValidationActivity$a;->c(Ljava/lang/String;)Lcn/mucang/android/account/activity/ValidationActivity$a;

    const-string v1, "\u7ed1\u5b9a\u624b\u673a"

    .line 6
    invoke-virtual {v0, v1}, Lcn/mucang/android/account/activity/ValidationActivity$a;->f(Ljava/lang/String;)Lcn/mucang/android/account/activity/ValidationActivity$a;

    const/4 v1, 0x3

    .line 7
    invoke-virtual {v0, v1}, Lcn/mucang/android/account/activity/ValidationActivity$a;->d(I)Lcn/mucang/android/account/activity/ValidationActivity$a;

    .line 8
    invoke-virtual {v0}, Lcn/mucang/android/account/activity/ValidationActivity$a;->a()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "__change_phone_session_id__"

    .line 9
    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string p2, "__change_phone_type__"

    .line 10
    invoke-virtual {v0, p2, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 11
    invoke-virtual {p0, v0, p1}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    return-void
.end method

.method public static g(Landroid/app/Activity;I)V
    .locals 3

    .line 1
    new-instance v0, Lcn/mucang/android/account/activity/ValidationActivity$a;

    invoke-direct {v0, p0}, Lcn/mucang/android/account/activity/ValidationActivity$a;-><init>(Landroid/content/Context;)V

    const-string v1, "\u9a8c\u8bc1\u624b\u673a\u540e\uff0c\u4f60\u53ef\u4ee5\u76f4\u63a5\u8bbe\u7f6e\u5bc6\u7801"

    .line 2
    invoke-virtual {v0, v1}, Lcn/mucang/android/account/activity/ValidationActivity$a;->c(Ljava/lang/String;)Lcn/mucang/android/account/activity/ValidationActivity$a;

    const-string v1, "\u9a8c\u8bc1\u624b\u673a"

    .line 3
    invoke-virtual {v0, v1}, Lcn/mucang/android/account/activity/ValidationActivity$a;->f(Ljava/lang/String;)Lcn/mucang/android/account/activity/ValidationActivity$a;

    .line 4
    invoke-static {}, Lcn/mucang/android/account/AccountManager;->h()Lcn/mucang/android/account/AccountManager;

    move-result-object v1

    invoke-virtual {v1}, Lcn/mucang/android/account/AccountManager;->g()Lcn/mucang/android/account/data/AuthUser;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 5
    invoke-virtual {v1}, Lcn/mucang/android/account/data/AuthUser;->getPhone()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcn/mucang/android/account/activity/ValidationActivity$a;->e(Ljava/lang/String;)Lcn/mucang/android/account/activity/ValidationActivity$a;

    .line 6
    :cond_0
    new-instance v1, Lcn/mucang/android/account/api/data/CheckSmsResponse;

    invoke-direct {v1}, Lcn/mucang/android/account/api/data/CheckSmsResponse;-><init>()V

    .line 7
    sget-object v2, Lcn/mucang/android/account/api/data/CheckType;->TRUE:Lcn/mucang/android/account/api/data/CheckType;

    invoke-virtual {v1, v2}, Lcn/mucang/android/account/api/data/CheckSmsResponse;->setCheckType(Lcn/mucang/android/account/api/data/CheckType;)V

    .line 8
    invoke-virtual {v0, v1}, Lcn/mucang/android/account/activity/ValidationActivity$a;->b(Lcn/mucang/android/account/api/data/CheckSmsResponse;)Lcn/mucang/android/account/activity/ValidationActivity$a;

    const/4 v1, 0x5

    .line 9
    invoke-virtual {v0, v1}, Lcn/mucang/android/account/activity/ValidationActivity$a;->d(I)Lcn/mucang/android/account/activity/ValidationActivity$a;

    .line 10
    invoke-virtual {v0}, Lcn/mucang/android/account/activity/ValidationActivity$a;->a()Landroid/content/Intent;

    move-result-object v0

    .line 11
    invoke-virtual {p0, v0, p1}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    return-void
.end method

.method static h(Landroid/app/Activity;I)V
    .locals 3

    .line 1
    new-instance v0, Lcn/mucang/android/account/activity/ValidationActivity$a;

    invoke-direct {v0, p0}, Lcn/mucang/android/account/activity/ValidationActivity$a;-><init>(Landroid/content/Context;)V

    const-string v1, ""

    .line 2
    invoke-virtual {v0, v1}, Lcn/mucang/android/account/activity/ValidationActivity$a;->c(Ljava/lang/String;)Lcn/mucang/android/account/activity/ValidationActivity$a;

    const-string v1, "\u9a8c\u8bc1\u624b\u673a"

    .line 3
    invoke-virtual {v0, v1}, Lcn/mucang/android/account/activity/ValidationActivity$a;->f(Ljava/lang/String;)Lcn/mucang/android/account/activity/ValidationActivity$a;

    .line 4
    invoke-static {}, Lcn/mucang/android/account/AccountManager;->h()Lcn/mucang/android/account/AccountManager;

    move-result-object v1

    invoke-virtual {v1}, Lcn/mucang/android/account/AccountManager;->g()Lcn/mucang/android/account/data/AuthUser;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 5
    invoke-virtual {v1}, Lcn/mucang/android/account/data/AuthUser;->getPhone()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcn/mucang/android/account/activity/ValidationActivity$a;->e(Ljava/lang/String;)Lcn/mucang/android/account/activity/ValidationActivity$a;

    .line 6
    :cond_0
    new-instance v1, Lcn/mucang/android/account/api/data/CheckSmsResponse;

    invoke-direct {v1}, Lcn/mucang/android/account/api/data/CheckSmsResponse;-><init>()V

    .line 7
    sget-object v2, Lcn/mucang/android/account/api/data/CheckType;->FALSE:Lcn/mucang/android/account/api/data/CheckType;

    invoke-virtual {v1, v2}, Lcn/mucang/android/account/api/data/CheckSmsResponse;->setCheckType(Lcn/mucang/android/account/api/data/CheckType;)V

    .line 8
    invoke-virtual {v0, v1}, Lcn/mucang/android/account/activity/ValidationActivity$a;->b(Lcn/mucang/android/account/api/data/CheckSmsResponse;)Lcn/mucang/android/account/activity/ValidationActivity$a;

    const/4 v1, 0x7

    .line 9
    invoke-virtual {v0, v1}, Lcn/mucang/android/account/activity/ValidationActivity$a;->d(I)Lcn/mucang/android/account/activity/ValidationActivity$a;

    .line 10
    invoke-virtual {v0}, Lcn/mucang/android/account/activity/ValidationActivity$a;->a()Landroid/content/Intent;

    move-result-object v0

    .line 11
    invoke-virtual {p0, v0, p1}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    return-void
.end method
