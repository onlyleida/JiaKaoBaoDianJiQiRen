.class public Lcom/mobile/auth/p/c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/nirvana/tools/requestqueue/TimeoutCallable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/nirvana/tools/requestqueue/TimeoutCallable<",
        "Lcom/mobile/auth/u/c;",
        ">;"
    }
.end annotation


# instance fields
.field private a:Landroid/content/Context;

.field private b:Lcom/mobile/auth/o/a;

.field private c:Lcom/mobile/auth/gatewayauth/manager/VendorSdkInfoManager;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/mobile/auth/gatewayauth/manager/VendorSdkInfoManager;Lcom/mobile/auth/o/a;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/mobile/auth/p/c;->a:Landroid/content/Context;

    iput-object p3, p0, Lcom/mobile/auth/p/c;->b:Lcom/mobile/auth/o/a;

    iput-object p2, p0, Lcom/mobile/auth/p/c;->c:Lcom/mobile/auth/gatewayauth/manager/VendorSdkInfoManager;

    return-void
.end method


# virtual methods
.method public a()Lcom/mobile/auth/u/c;
    .locals 2

    :try_start_0
    new-instance v0, Lcom/mobile/auth/u/c;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/mobile/auth/u/c;-><init>(Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object v0

    :catchall_0
    move-exception v0

    const/4 v1, 0x0

    :try_start_1
    invoke-static {v0}, Lcom/mobile/auth/gatewayauth/a;->a(Ljava/lang/Throwable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    return-object v1

    :catchall_1
    move-exception v0

    invoke-static {v0}, Lcom/mobile/auth/gatewayauth/a;->a(Ljava/lang/Throwable;)V

    return-object v1
.end method

.method public b()Lcom/mobile/auth/u/c;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    const/4 v0, 0x0

    :try_start_0
    iget-object v1, p0, Lcom/mobile/auth/p/c;->a:Landroid/content/Context;

    iget-object v2, p0, Lcom/mobile/auth/p/c;->c:Lcom/mobile/auth/gatewayauth/manager/VendorSdkInfoManager;

    invoke-virtual {v2}, Lcom/mobile/auth/gatewayauth/manager/VendorSdkInfoManager;->c()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/mobile/auth/p/c;->a:Landroid/content/Context;

    invoke-static {v3}, Lcom/mobile/auth/gatewayauth/utils/c;->b(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v2, v3}, Lcom/mobile/auth/gatewayauth/utils/EncryptUtils;->noEncryptTinfo(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/mobile/auth/gatewayauth/network/TopRequestUtils;->getSDKConfig(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/mobile/auth/p/c;->b:Lcom/mobile/auth/o/a;

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/String;

    const-string v4, "getSdkConfig Ret:"

    aput-object v4, v3, v0

    const/4 v4, 0x1

    aput-object v1, v3, v4

    invoke-virtual {v2, v3}, Lcom/mobile/auth/o/a;->a([Ljava/lang/String;)V

    invoke-static {v1}, Lcom/mobile/auth/gatewayauth/model/psc_sdk_config/ConfigRB;->fromJson(Ljava/lang/String;)Lcom/mobile/auth/gatewayauth/model/psc_sdk_config/ConfigRB;

    move-result-object v1

    if-eqz v1, :cond_2

    invoke-virtual {v1}, Lcom/mobile/auth/gatewayauth/model/psc_sdk_config/ConfigRB;->getResponse()Lcom/mobile/auth/gatewayauth/model/psc_sdk_config/PscQueryConfigResponse;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-virtual {v1}, Lcom/mobile/auth/gatewayauth/model/psc_sdk_config/ConfigRB;->getResponse()Lcom/mobile/auth/gatewayauth/model/psc_sdk_config/PscQueryConfigResponse;

    move-result-object v2

    invoke-virtual {v2}, Lcom/mobile/auth/gatewayauth/model/psc_sdk_config/PscQueryConfigResponse;->getResult()Lcom/mobile/auth/gatewayauth/model/psc_sdk_config/Result;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-virtual {v1}, Lcom/mobile/auth/gatewayauth/model/psc_sdk_config/ConfigRB;->getResponse()Lcom/mobile/auth/gatewayauth/model/psc_sdk_config/PscQueryConfigResponse;

    move-result-object v2

    invoke-virtual {v2}, Lcom/mobile/auth/gatewayauth/model/psc_sdk_config/PscQueryConfigResponse;->getResult()Lcom/mobile/auth/gatewayauth/model/psc_sdk_config/Result;

    move-result-object v2

    invoke-virtual {v2}, Lcom/mobile/auth/gatewayauth/model/psc_sdk_config/Result;->getModel()Lcom/mobile/auth/gatewayauth/model/ConfigRule;

    move-result-object v2

    if-eqz v2, :cond_2

    const-string v2, "OK"

    invoke-virtual {v1}, Lcom/mobile/auth/gatewayauth/model/psc_sdk_config/ConfigRB;->getResponse()Lcom/mobile/auth/gatewayauth/model/psc_sdk_config/PscQueryConfigResponse;

    move-result-object v3

    invoke-virtual {v3}, Lcom/mobile/auth/gatewayauth/model/psc_sdk_config/PscQueryConfigResponse;->getResult()Lcom/mobile/auth/gatewayauth/model/psc_sdk_config/Result;

    move-result-object v3

    invoke-virtual {v3}, Lcom/mobile/auth/gatewayauth/model/psc_sdk_config/Result;->getCode()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    new-instance v2, Lcom/mobile/auth/u/c;

    invoke-virtual {v1}, Lcom/mobile/auth/gatewayauth/model/psc_sdk_config/ConfigRB;->getResponse()Lcom/mobile/auth/gatewayauth/model/psc_sdk_config/PscQueryConfigResponse;

    move-result-object v1

    invoke-virtual {v1}, Lcom/mobile/auth/gatewayauth/model/psc_sdk_config/PscQueryConfigResponse;->getResult()Lcom/mobile/auth/gatewayauth/model/psc_sdk_config/Result;

    move-result-object v1

    invoke-virtual {v1}, Lcom/mobile/auth/gatewayauth/model/psc_sdk_config/Result;->getModel()Lcom/mobile/auth/gatewayauth/model/ConfigRule;

    move-result-object v1

    invoke-direct {v2, v0, v1}, Lcom/mobile/auth/u/c;-><init>(ZLcom/mobile/auth/gatewayauth/model/ConfigRule;)V

    return-object v2

    :cond_0
    invoke-virtual {v1}, Lcom/mobile/auth/gatewayauth/model/psc_sdk_config/ConfigRB;->getErrorResponse()Lcom/mobile/auth/gatewayauth/model/TopErrorResponse;

    move-result-object v2

    if-eqz v2, :cond_2

    invoke-virtual {v1}, Lcom/mobile/auth/gatewayauth/model/psc_sdk_config/ConfigRB;->getErrorResponse()Lcom/mobile/auth/gatewayauth/model/TopErrorResponse;

    move-result-object v2

    invoke-virtual {v2}, Lcom/mobile/auth/gatewayauth/model/TopErrorResponse;->getCode()I

    move-result v2

    const/16 v3, 0x16

    if-ne v2, v3, :cond_1

    iget-object v1, p0, Lcom/mobile/auth/p/c;->a:Landroid/content/Context;

    invoke-static {v1, v4}, Lcom/mobile/auth/gatewayauth/network/a;->a(Landroid/content/Context;Z)V

    goto :goto_0

    :cond_1
    invoke-virtual {v1}, Lcom/mobile/auth/gatewayauth/model/psc_sdk_config/ConfigRB;->getErrorResponse()Lcom/mobile/auth/gatewayauth/model/TopErrorResponse;

    move-result-object v1

    invoke-virtual {v1}, Lcom/mobile/auth/gatewayauth/model/TopErrorResponse;->getCode()I

    move-result v1

    const/4 v2, 0x7

    if-ne v1, v2, :cond_2

    iget-object v1, p0, Lcom/mobile/auth/p/c;->a:Landroid/content/Context;

    invoke-static {}, Lcom/mobile/auth/gatewayauth/utils/a;->a()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/mobile/auth/gatewayauth/network/a;->a(Landroid/content/Context;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    goto :goto_1

    :catch_0
    move-exception v1

    :try_start_1
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    :cond_2
    :goto_0
    new-instance v1, Lcom/mobile/auth/u/c;

    invoke-direct {v1, v0}, Lcom/mobile/auth/u/c;-><init>(Z)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    return-object v1

    :goto_1
    const/4 v1, 0x0

    :try_start_2
    invoke-static {v0}, Lcom/mobile/auth/gatewayauth/a;->a(Ljava/lang/Throwable;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    return-object v1

    :catchall_1
    move-exception v0

    invoke-static {v0}, Lcom/mobile/auth/gatewayauth/a;->a(Ljava/lang/Throwable;)V

    return-object v1
.end method

.method public synthetic call()Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    :try_start_0
    invoke-virtual {p0}, Lcom/mobile/auth/p/c;->b()Lcom/mobile/auth/u/c;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object v0

    :catchall_0
    move-exception v0

    const/4 v1, 0x0

    :try_start_1
    invoke-static {v0}, Lcom/mobile/auth/gatewayauth/a;->a(Ljava/lang/Throwable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    return-object v1

    :catchall_1
    move-exception v0

    invoke-static {v0}, Lcom/mobile/auth/gatewayauth/a;->a(Ljava/lang/Throwable;)V

    return-object v1
.end method

.method public synthetic onTimeout()Ljava/lang/Object;
    .locals 2

    :try_start_0
    invoke-virtual {p0}, Lcom/mobile/auth/p/c;->a()Lcom/mobile/auth/u/c;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object v0

    :catchall_0
    move-exception v0

    const/4 v1, 0x0

    :try_start_1
    invoke-static {v0}, Lcom/mobile/auth/gatewayauth/a;->a(Ljava/lang/Throwable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    return-object v1

    :catchall_1
    move-exception v0

    invoke-static {v0}, Lcom/mobile/auth/gatewayauth/a;->a(Ljava/lang/Throwable;)V

    return-object v1
.end method
