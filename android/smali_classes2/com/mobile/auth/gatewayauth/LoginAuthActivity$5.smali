.class Lcom/mobile/auth/gatewayauth/LoginAuthActivity$5;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mobile/auth/gatewayauth/LoginAuthActivity;->initLoginRL()Landroid/widget/RelativeLayout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/mobile/auth/gatewayauth/LoginAuthActivity;


# direct methods
.method constructor <init>(Lcom/mobile/auth/gatewayauth/LoginAuthActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/mobile/auth/gatewayauth/LoginAuthActivity$5;->a:Lcom/mobile/auth/gatewayauth/LoginAuthActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 5

    :try_start_0
    iget-object p1, p0, Lcom/mobile/auth/gatewayauth/LoginAuthActivity$5;->a:Lcom/mobile/auth/gatewayauth/LoginAuthActivity;

    invoke-static {p1}, Lcom/mobile/auth/gatewayauth/LoginAuthActivity;->access$000(Lcom/mobile/auth/gatewayauth/LoginAuthActivity;)Landroid/widget/RelativeLayout;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/widget/RelativeLayout;->setClickable(Z)V

    iget-object p1, p0, Lcom/mobile/auth/gatewayauth/LoginAuthActivity$5;->a:Lcom/mobile/auth/gatewayauth/LoginAuthActivity;

    invoke-static {p1}, Lcom/mobile/auth/gatewayauth/LoginAuthActivity;->access$400(Lcom/mobile/auth/gatewayauth/LoginAuthActivity;)Z

    move-result p1

    iget-object v1, p0, Lcom/mobile/auth/gatewayauth/LoginAuthActivity$5;->a:Lcom/mobile/auth/gatewayauth/LoginAuthActivity;

    invoke-static {v1}, Lcom/mobile/auth/gatewayauth/LoginAuthActivity;->access$500(Lcom/mobile/auth/gatewayauth/LoginAuthActivity;)Lcom/mobile/auth/gatewayauth/AuthUIConfig;

    move-result-object v1

    invoke-virtual {v1}, Lcom/mobile/auth/gatewayauth/AuthUIConfig;->isCheckboxHidden()Z

    move-result v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const-string v2, "LoginAuthActivity errorCode = "

    const/4 v3, 0x1

    if-nez v1, :cond_1

    :try_start_1
    iget-object v1, p0, Lcom/mobile/auth/gatewayauth/LoginAuthActivity$5;->a:Lcom/mobile/auth/gatewayauth/LoginAuthActivity;

    invoke-static {v1}, Lcom/mobile/auth/gatewayauth/LoginAuthActivity;->access$600(Lcom/mobile/auth/gatewayauth/LoginAuthActivity;)Landroid/widget/CheckBox;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v1

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/mobile/auth/gatewayauth/LoginAuthActivity$5;->a:Lcom/mobile/auth/gatewayauth/LoginAuthActivity;

    invoke-static {v1}, Lcom/mobile/auth/gatewayauth/LoginAuthActivity;->access$200(Lcom/mobile/auth/gatewayauth/LoginAuthActivity;)Lcom/mobile/auth/gatewayauth/d;

    move-result-object v1

    iget-object v4, p0, Lcom/mobile/auth/gatewayauth/LoginAuthActivity$5;->a:Lcom/mobile/auth/gatewayauth/LoginAuthActivity;

    invoke-static {v4}, Lcom/mobile/auth/gatewayauth/LoginAuthActivity;->access$100(Lcom/mobile/auth/gatewayauth/LoginAuthActivity;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4, v0, p1}, Lcom/mobile/auth/gatewayauth/d;->a(Ljava/lang/String;ZZ)V

    iget-object p1, p0, Lcom/mobile/auth/gatewayauth/LoginAuthActivity$5;->a:Lcom/mobile/auth/gatewayauth/LoginAuthActivity;

    invoke-static {p1}, Lcom/mobile/auth/gatewayauth/LoginAuthActivity;->access$700(Lcom/mobile/auth/gatewayauth/LoginAuthActivity;)Lcom/mobile/auth/o/a;

    move-result-object p1

    const-string v0, "700003"

    const-string v1, "; errorMsg = \u8bf7\u540c\u610f\u670d\u52a1\u6761\u6b3e"

    filled-new-array {v2, v0, v1}, [Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/mobile/auth/o/a;->d([Ljava/lang/String;)V

    iget-object p1, p0, Lcom/mobile/auth/gatewayauth/LoginAuthActivity$5;->a:Lcom/mobile/auth/gatewayauth/LoginAuthActivity;

    invoke-static {p1}, Lcom/mobile/auth/gatewayauth/LoginAuthActivity;->access$500(Lcom/mobile/auth/gatewayauth/LoginAuthActivity;)Lcom/mobile/auth/gatewayauth/AuthUIConfig;

    move-result-object p1

    invoke-virtual {p1}, Lcom/mobile/auth/gatewayauth/AuthUIConfig;->isLogBtnToastHidden()Z

    move-result p1

    if-nez p1, :cond_0

    iget-object p1, p0, Lcom/mobile/auth/gatewayauth/LoginAuthActivity$5;->a:Lcom/mobile/auth/gatewayauth/LoginAuthActivity;

    invoke-virtual {p1}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    const-string v0, "\u8bf7\u540c\u610f\u670d\u52a1\u6761\u6b3e"

    invoke-static {p1, v0, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    :cond_0
    iget-object p1, p0, Lcom/mobile/auth/gatewayauth/LoginAuthActivity$5;->a:Lcom/mobile/auth/gatewayauth/LoginAuthActivity;

    invoke-static {p1}, Lcom/mobile/auth/gatewayauth/LoginAuthActivity;->access$000(Lcom/mobile/auth/gatewayauth/LoginAuthActivity;)Landroid/widget/RelativeLayout;

    move-result-object p1

    invoke-virtual {p1, v3}, Landroid/widget/RelativeLayout;->setClickable(Z)V

    return-void

    :cond_1
    iget-object v1, p0, Lcom/mobile/auth/gatewayauth/LoginAuthActivity$5;->a:Lcom/mobile/auth/gatewayauth/LoginAuthActivity;

    invoke-static {v1}, Lcom/mobile/auth/gatewayauth/LoginAuthActivity;->access$200(Lcom/mobile/auth/gatewayauth/LoginAuthActivity;)Lcom/mobile/auth/gatewayauth/d;

    move-result-object v1

    iget-object v4, p0, Lcom/mobile/auth/gatewayauth/LoginAuthActivity$5;->a:Lcom/mobile/auth/gatewayauth/LoginAuthActivity;

    invoke-static {v4}, Lcom/mobile/auth/gatewayauth/LoginAuthActivity;->access$100(Lcom/mobile/auth/gatewayauth/LoginAuthActivity;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4, v3, p1}, Lcom/mobile/auth/gatewayauth/d;->a(Ljava/lang/String;ZZ)V

    if-nez p1, :cond_2

    iget-object p1, p0, Lcom/mobile/auth/gatewayauth/LoginAuthActivity$5;->a:Lcom/mobile/auth/gatewayauth/LoginAuthActivity;

    invoke-static {p1}, Lcom/mobile/auth/gatewayauth/LoginAuthActivity;->access$700(Lcom/mobile/auth/gatewayauth/LoginAuthActivity;)Lcom/mobile/auth/o/a;

    move-result-object p1

    const-string v1, "600005"

    const-string v4, "; errorMsg = \u9875\u9762\u975e\u6cd5\u4fee\u6539"

    filled-new-array {v2, v1, v4}, [Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/mobile/auth/o/a;->d([Ljava/lang/String;)V

    iget-object p1, p0, Lcom/mobile/auth/gatewayauth/LoginAuthActivity$5;->a:Lcom/mobile/auth/gatewayauth/LoginAuthActivity;

    invoke-static {p1}, Lcom/mobile/auth/gatewayauth/LoginAuthActivity;->access$000(Lcom/mobile/auth/gatewayauth/LoginAuthActivity;)Landroid/widget/RelativeLayout;

    move-result-object p1

    invoke-virtual {p1, v3}, Landroid/widget/RelativeLayout;->setClickable(Z)V

    iget-object p1, p0, Lcom/mobile/auth/gatewayauth/LoginAuthActivity$5;->a:Lcom/mobile/auth/gatewayauth/LoginAuthActivity;

    invoke-virtual {p1}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/mobile/auth/gatewayauth/utils/h;->a(Landroid/content/Context;)Z

    move-result p1

    if-eqz p1, :cond_2

    iget-object p1, p0, Lcom/mobile/auth/gatewayauth/LoginAuthActivity$5;->a:Lcom/mobile/auth/gatewayauth/LoginAuthActivity;

    invoke-virtual {p1}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    const-string v0, "\u9875\u9762\u975e\u6cd5\u4fee\u6539\uff01"

    invoke-static {p1, v0, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    return-void

    :cond_2
    iget-object p1, p0, Lcom/mobile/auth/gatewayauth/LoginAuthActivity$5;->a:Lcom/mobile/auth/gatewayauth/LoginAuthActivity;

    invoke-virtual {p1}, Lcom/mobile/auth/gatewayauth/LoginAuthActivity;->showLoadingDialog()V

    iget-object p1, p0, Lcom/mobile/auth/gatewayauth/LoginAuthActivity$5;->a:Lcom/mobile/auth/gatewayauth/LoginAuthActivity;

    invoke-static {p1}, Lcom/mobile/auth/gatewayauth/LoginAuthActivity;->access$700(Lcom/mobile/auth/gatewayauth/LoginAuthActivity;)Lcom/mobile/auth/o/a;

    move-result-object p1

    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/String;

    const-string v2, "LoginAuthActivity"

    aput-object v2, v1, v0

    const-string v0, "; PhoneNumberAuthHelper2 = "

    aput-object v0, v1, v3

    const/4 v0, 0x2

    iget-object v2, p0, Lcom/mobile/auth/gatewayauth/LoginAuthActivity$5;->a:Lcom/mobile/auth/gatewayauth/LoginAuthActivity;

    invoke-static {v2}, Lcom/mobile/auth/gatewayauth/LoginAuthActivity;->access$200(Lcom/mobile/auth/gatewayauth/LoginAuthActivity;)Lcom/mobile/auth/gatewayauth/d;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v0

    invoke-virtual {p1, v1}, Lcom/mobile/auth/o/a;->a([Ljava/lang/String;)V

    iget-object p1, p0, Lcom/mobile/auth/gatewayauth/LoginAuthActivity$5;->a:Lcom/mobile/auth/gatewayauth/LoginAuthActivity;

    invoke-static {p1}, Lcom/mobile/auth/gatewayauth/LoginAuthActivity;->access$200(Lcom/mobile/auth/gatewayauth/LoginAuthActivity;)Lcom/mobile/auth/gatewayauth/d;

    move-result-object p1

    iget-object v0, p0, Lcom/mobile/auth/gatewayauth/LoginAuthActivity$5;->a:Lcom/mobile/auth/gatewayauth/LoginAuthActivity;

    invoke-static {v0}, Lcom/mobile/auth/gatewayauth/LoginAuthActivity;->access$200(Lcom/mobile/auth/gatewayauth/LoginAuthActivity;)Lcom/mobile/auth/gatewayauth/d;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mobile/auth/gatewayauth/d;->a()Lcom/mobile/auth/gatewayauth/manager/compat/ResultCodeProcessor;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/mobile/auth/gatewayauth/d;->b(Lcom/mobile/auth/gatewayauth/manager/compat/ResultCodeProcessor;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    invoke-static {p1}, Lcom/mobile/auth/gatewayauth/a;->a(Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method
