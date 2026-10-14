.class Lcom/mobile/auth/gatewayauth/PhoneNumberAuthHelper$2$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/mobile/auth/gatewayauth/OnLoginPhoneListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mobile/auth/gatewayauth/PhoneNumberAuthHelper$2;->a()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Ljava/lang/String;

.field final synthetic c:Lcom/mobile/auth/gatewayauth/PhoneNumberAuthHelper$2;


# direct methods
.method constructor <init>(Lcom/mobile/auth/gatewayauth/PhoneNumberAuthHelper$2;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/mobile/auth/gatewayauth/PhoneNumberAuthHelper$2$1;->c:Lcom/mobile/auth/gatewayauth/PhoneNumberAuthHelper$2;

    iput-object p2, p0, Lcom/mobile/auth/gatewayauth/PhoneNumberAuthHelper$2$1;->a:Ljava/lang/String;

    iput-object p3, p0, Lcom/mobile/auth/gatewayauth/PhoneNumberAuthHelper$2$1;->b:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onGetFailed(Ljava/lang/String;)V
    .locals 1

    :try_start_0
    iget-object v0, p0, Lcom/mobile/auth/gatewayauth/PhoneNumberAuthHelper$2$1;->c:Lcom/mobile/auth/gatewayauth/PhoneNumberAuthHelper$2;

    iget-object v0, v0, Lcom/mobile/auth/gatewayauth/PhoneNumberAuthHelper$2;->c:Lcom/mobile/auth/gatewayauth/PhoneNumberAuthHelper;

    invoke-static {v0}, Lcom/mobile/auth/gatewayauth/PhoneNumberAuthHelper;->d(Lcom/mobile/auth/gatewayauth/PhoneNumberAuthHelper;)Lcom/mobile/auth/gatewayauth/TokenResultListener;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/mobile/auth/gatewayauth/PhoneNumberAuthHelper$2$1;->c:Lcom/mobile/auth/gatewayauth/PhoneNumberAuthHelper$2;

    iget-object v0, v0, Lcom/mobile/auth/gatewayauth/PhoneNumberAuthHelper$2;->c:Lcom/mobile/auth/gatewayauth/PhoneNumberAuthHelper;

    invoke-static {v0}, Lcom/mobile/auth/gatewayauth/PhoneNumberAuthHelper;->d(Lcom/mobile/auth/gatewayauth/PhoneNumberAuthHelper;)Lcom/mobile/auth/gatewayauth/TokenResultListener;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/mobile/auth/gatewayauth/TokenResultListener;->onTokenFailed(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    invoke-static {p1}, Lcom/mobile/auth/gatewayauth/a;->a(Ljava/lang/Throwable;)V

    :cond_0
    :goto_0
    return-void
.end method

.method public onGetLoginPhone(Lcom/mobile/auth/gatewayauth/model/LoginPhoneInfo;)V
    .locals 9

    :try_start_0
    iget-object v0, p0, Lcom/mobile/auth/gatewayauth/PhoneNumberAuthHelper$2$1;->c:Lcom/mobile/auth/gatewayauth/PhoneNumberAuthHelper$2;

    iget-object v1, v0, Lcom/mobile/auth/gatewayauth/PhoneNumberAuthHelper$2;->c:Lcom/mobile/auth/gatewayauth/PhoneNumberAuthHelper;

    iget v0, v0, Lcom/mobile/auth/gatewayauth/PhoneNumberAuthHelper$2;->b:I

    int-to-long v2, v0

    iget-object v4, p0, Lcom/mobile/auth/gatewayauth/PhoneNumberAuthHelper$2$1;->a:Ljava/lang/String;

    invoke-static {v1}, Lcom/mobile/auth/gatewayauth/PhoneNumberAuthHelper;->a(Lcom/mobile/auth/gatewayauth/PhoneNumberAuthHelper;)Lcom/mobile/auth/gatewayauth/manager/compat/ResultCodeProcessor;

    move-result-object v5

    iget-object v0, p0, Lcom/mobile/auth/gatewayauth/PhoneNumberAuthHelper$2$1;->c:Lcom/mobile/auth/gatewayauth/PhoneNumberAuthHelper$2;

    iget-object v0, v0, Lcom/mobile/auth/gatewayauth/PhoneNumberAuthHelper$2;->c:Lcom/mobile/auth/gatewayauth/PhoneNumberAuthHelper;

    invoke-static {v0}, Lcom/mobile/auth/gatewayauth/PhoneNumberAuthHelper;->d(Lcom/mobile/auth/gatewayauth/PhoneNumberAuthHelper;)Lcom/mobile/auth/gatewayauth/TokenResultListener;

    move-result-object v6

    iget-object v8, p0, Lcom/mobile/auth/gatewayauth/PhoneNumberAuthHelper$2$1;->b:Ljava/lang/String;

    move-object v7, p1

    invoke-static/range {v1 .. v8}, Lcom/mobile/auth/gatewayauth/PhoneNumberAuthHelper;->a(Lcom/mobile/auth/gatewayauth/PhoneNumberAuthHelper;JLjava/lang/String;Lcom/mobile/auth/gatewayauth/manager/compat/ResultCodeProcessor;Lcom/mobile/auth/gatewayauth/TokenResultListener;Lcom/mobile/auth/gatewayauth/model/LoginPhoneInfo;Ljava/lang/String;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    invoke-static {p1}, Lcom/mobile/auth/gatewayauth/a;->a(Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method
