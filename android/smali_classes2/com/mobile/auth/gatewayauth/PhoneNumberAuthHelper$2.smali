.class Lcom/mobile/auth/gatewayauth/PhoneNumberAuthHelper$2;
.super Lcom/mobile/auth/gatewayauth/utils/b$b;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mobile/auth/gatewayauth/PhoneNumberAuthHelper;->getLoginToken(Landroid/content/Context;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/content/Context;

.field final synthetic b:I

.field final synthetic c:Lcom/mobile/auth/gatewayauth/PhoneNumberAuthHelper;


# direct methods
.method constructor <init>(Lcom/mobile/auth/gatewayauth/PhoneNumberAuthHelper;Landroid/content/Context;I)V
    .locals 0

    iput-object p1, p0, Lcom/mobile/auth/gatewayauth/PhoneNumberAuthHelper$2;->c:Lcom/mobile/auth/gatewayauth/PhoneNumberAuthHelper;

    iput-object p2, p0, Lcom/mobile/auth/gatewayauth/PhoneNumberAuthHelper$2;->a:Landroid/content/Context;

    iput p3, p0, Lcom/mobile/auth/gatewayauth/PhoneNumberAuthHelper$2;->b:I

    invoke-direct {p0}, Lcom/mobile/auth/gatewayauth/utils/b$b;-><init>()V

    return-void
.end method


# virtual methods
.method protected a()V
    .locals 8

    :try_start_0
    iget-object v0, p0, Lcom/mobile/auth/gatewayauth/PhoneNumberAuthHelper$2;->a:Landroid/content/Context;

    instance-of v0, v0, Landroid/app/Activity;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/mobile/auth/gatewayauth/PhoneNumberAuthHelper$2;->c:Lcom/mobile/auth/gatewayauth/PhoneNumberAuthHelper;

    invoke-static {v0}, Lcom/mobile/auth/gatewayauth/PhoneNumberAuthHelper;->c(Lcom/mobile/auth/gatewayauth/PhoneNumberAuthHelper;)Lcom/mobile/auth/gatewayauth/d;

    move-result-object v0

    iget-object v1, p0, Lcom/mobile/auth/gatewayauth/PhoneNumberAuthHelper$2;->a:Landroid/content/Context;

    check-cast v1, Landroid/app/Activity;

    invoke-virtual {v0, v1}, Lcom/mobile/auth/gatewayauth/d;->a(Landroid/app/Activity;)V

    :cond_0
    iget-object v0, p0, Lcom/mobile/auth/gatewayauth/PhoneNumberAuthHelper$2;->c:Lcom/mobile/auth/gatewayauth/PhoneNumberAuthHelper;

    invoke-static {v0}, Lcom/mobile/auth/gatewayauth/PhoneNumberAuthHelper;->b(Lcom/mobile/auth/gatewayauth/PhoneNumberAuthHelper;)Lcom/mobile/auth/gatewayauth/PhoneNumberAuthHelperProxy;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mobile/auth/gatewayauth/PhoneNumberAuthHelperProxy;->a()Lcom/mobile/auth/gatewayauth/manager/SystemManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mobile/auth/gatewayauth/manager/SystemManager;->c()Ljava/lang/String;

    move-result-object v3

    iget-object v0, p0, Lcom/mobile/auth/gatewayauth/PhoneNumberAuthHelper$2;->c:Lcom/mobile/auth/gatewayauth/PhoneNumberAuthHelper;

    invoke-static {v0}, Lcom/mobile/auth/gatewayauth/PhoneNumberAuthHelper;->b(Lcom/mobile/auth/gatewayauth/PhoneNumberAuthHelper;)Lcom/mobile/auth/gatewayauth/PhoneNumberAuthHelperProxy;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mobile/auth/gatewayauth/PhoneNumberAuthHelperProxy;->b()Lcom/mobile/auth/gatewayauth/manager/d;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mobile/auth/gatewayauth/manager/d;->k()Ljava/lang/String;

    move-result-object v7

    iget-object v0, p0, Lcom/mobile/auth/gatewayauth/PhoneNumberAuthHelper$2;->c:Lcom/mobile/auth/gatewayauth/PhoneNumberAuthHelper;

    invoke-static {v0}, Lcom/mobile/auth/gatewayauth/PhoneNumberAuthHelper;->b(Lcom/mobile/auth/gatewayauth/PhoneNumberAuthHelper;)Lcom/mobile/auth/gatewayauth/PhoneNumberAuthHelperProxy;

    move-result-object v1

    iget v2, p0, Lcom/mobile/auth/gatewayauth/PhoneNumberAuthHelper$2;->b:I

    new-instance v4, Lcom/mobile/auth/gatewayauth/PhoneNumberAuthHelper$2$1;

    invoke-direct {v4, p0, v3, v7}, Lcom/mobile/auth/gatewayauth/PhoneNumberAuthHelper$2$1;-><init>(Lcom/mobile/auth/gatewayauth/PhoneNumberAuthHelper$2;Ljava/lang/String;Ljava/lang/String;)V

    const/4 v5, 0x0

    const/4 v6, 0x1

    invoke-virtual/range {v1 .. v7}, Lcom/mobile/auth/gatewayauth/PhoneNumberAuthHelperProxy;->getLoginMaskPhone(ILjava/lang/String;Lcom/mobile/auth/gatewayauth/OnLoginPhoneListener;ZZLjava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    invoke-static {v0}, Lcom/mobile/auth/gatewayauth/a;->a(Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method
