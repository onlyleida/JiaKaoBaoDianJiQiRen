.class Lcom/mobile/auth/gatewayauth/LoginAuthActivity$9;
.super Landroid/text/style/ClickableSpan;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mobile/auth/gatewayauth/LoginAuthActivity;->getProtocol(Ljava/lang/String;Ljava/lang/String;I)Landroid/text/style/ClickableSpan;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Ljava/lang/String;

.field final synthetic c:I

.field final synthetic d:Lcom/mobile/auth/gatewayauth/LoginAuthActivity;


# direct methods
.method constructor <init>(Lcom/mobile/auth/gatewayauth/LoginAuthActivity;Ljava/lang/String;Ljava/lang/String;I)V
    .locals 0

    iput-object p1, p0, Lcom/mobile/auth/gatewayauth/LoginAuthActivity$9;->d:Lcom/mobile/auth/gatewayauth/LoginAuthActivity;

    iput-object p2, p0, Lcom/mobile/auth/gatewayauth/LoginAuthActivity$9;->a:Ljava/lang/String;

    iput-object p3, p0, Lcom/mobile/auth/gatewayauth/LoginAuthActivity$9;->b:Ljava/lang/String;

    iput p4, p0, Lcom/mobile/auth/gatewayauth/LoginAuthActivity$9;->c:I

    invoke-direct {p0}, Landroid/text/style/ClickableSpan;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4

    :try_start_0
    iget-object p1, p0, Lcom/mobile/auth/gatewayauth/LoginAuthActivity$9;->d:Lcom/mobile/auth/gatewayauth/LoginAuthActivity;

    invoke-static {p1}, Lcom/mobile/auth/gatewayauth/LoginAuthActivity;->access$200(Lcom/mobile/auth/gatewayauth/LoginAuthActivity;)Lcom/mobile/auth/gatewayauth/d;

    move-result-object p1

    iget-object v0, p0, Lcom/mobile/auth/gatewayauth/LoginAuthActivity$9;->d:Lcom/mobile/auth/gatewayauth/LoginAuthActivity;

    invoke-static {v0}, Lcom/mobile/auth/gatewayauth/LoginAuthActivity;->access$100(Lcom/mobile/auth/gatewayauth/LoginAuthActivity;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/mobile/auth/gatewayauth/LoginAuthActivity$9;->a:Ljava/lang/String;

    iget-object v2, p0, Lcom/mobile/auth/gatewayauth/LoginAuthActivity$9;->b:Ljava/lang/String;

    const/4 v3, 0x0

    invoke-virtual {p1, v0, v1, v2, v3}, Lcom/mobile/auth/gatewayauth/d;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    iget-object p1, p0, Lcom/mobile/auth/gatewayauth/LoginAuthActivity$9;->d:Lcom/mobile/auth/gatewayauth/LoginAuthActivity;

    invoke-static {p1}, Lcom/mobile/auth/gatewayauth/LoginAuthActivity;->access$200(Lcom/mobile/auth/gatewayauth/LoginAuthActivity;)Lcom/mobile/auth/gatewayauth/d;

    move-result-object p1

    iget-object v0, p0, Lcom/mobile/auth/gatewayauth/LoginAuthActivity$9;->a:Ljava/lang/String;

    iget-object v1, p0, Lcom/mobile/auth/gatewayauth/LoginAuthActivity$9;->b:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/mobile/auth/gatewayauth/d;->a(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    invoke-static {p1}, Lcom/mobile/auth/gatewayauth/a;->a(Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method

.method public updateDrawState(Landroid/text/TextPaint;)V
    .locals 1

    :try_start_0
    invoke-super {p0, p1}, Landroid/text/style/ClickableSpan;->updateDrawState(Landroid/text/TextPaint;)V

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/text/TextPaint;->setUnderlineText(Z)V

    iget v0, p0, Lcom/mobile/auth/gatewayauth/LoginAuthActivity$9;->c:I

    invoke-virtual {p1, v0}, Landroid/text/TextPaint;->setColor(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    invoke-static {p1}, Lcom/mobile/auth/gatewayauth/a;->a(Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method
