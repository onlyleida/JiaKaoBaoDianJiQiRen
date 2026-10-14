.class public Lcom/mobile/auth/p/b;
.super Lcom/mobile/auth/p/a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/mobile/auth/p/a<",
        "Lcom/mobile/auth/u/b;",
        ">;"
    }
.end annotation


# instance fields
.field private a:Lcom/mobile/auth/o/a;

.field private b:Lcom/mobile/auth/gatewayauth/manager/VendorSdkInfoManager;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/mobile/auth/gatewayauth/manager/VendorSdkInfoManager;Lcom/mobile/auth/gatewayauth/manager/b;Lcom/mobile/auth/o/a;)V
    .locals 0

    invoke-direct {p0, p1, p3}, Lcom/mobile/auth/p/a;-><init>(Landroid/content/Context;Lcom/mobile/auth/gatewayauth/manager/b;)V

    iput-object p4, p0, Lcom/mobile/auth/p/b;->a:Lcom/mobile/auth/o/a;

    iput-object p2, p0, Lcom/mobile/auth/p/b;->b:Lcom/mobile/auth/gatewayauth/manager/VendorSdkInfoManager;

    return-void
.end method


# virtual methods
.method public synthetic a()Lcom/mobile/auth/u/a;
    .locals 2

    :try_start_0
    invoke-virtual {p0}, Lcom/mobile/auth/p/b;->d()Lcom/mobile/auth/u/b;

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

.method public synthetic a(Ljava/lang/String;)Lcom/mobile/auth/u/a;
    .locals 1

    :try_start_0
    invoke-virtual {p0, p1}, Lcom/mobile/auth/p/b;->b(Ljava/lang/String;)Lcom/mobile/auth/u/b;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object p1

    :catchall_0
    move-exception p1

    const/4 v0, 0x0

    :try_start_1
    invoke-static {p1}, Lcom/mobile/auth/gatewayauth/a;->a(Ljava/lang/Throwable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    return-object v0

    :catchall_1
    move-exception p1

    invoke-static {p1}, Lcom/mobile/auth/gatewayauth/a;->a(Ljava/lang/Throwable;)V

    return-object v0
.end method

.method public b(Ljava/lang/String;)Lcom/mobile/auth/u/b;
    .locals 12

    :try_start_0
    const-string v0, ""
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v1, 0x0

    :try_start_1
    const-string v2, "alibaba.aliqin.pns.vendor.querylist"

    invoke-virtual {p0}, Lcom/mobile/auth/p/a;->c()Landroid/content/Context;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    iget-object v7, p0, Lcom/mobile/auth/p/b;->b:Lcom/mobile/auth/gatewayauth/manager/VendorSdkInfoManager;

    invoke-virtual {v7}, Lcom/mobile/auth/gatewayauth/manager/VendorSdkInfoManager;->c()Ljava/lang/String;

    move-result-object v7

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    move-object v8, p1

    invoke-static/range {v3 .. v11}, Lcom/mobile/auth/gatewayauth/utils/EncryptUtils;->encryptToken(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/mobile/auth/gatewayauth/network/TopRequestUtils;->getVendorList(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iget-object v2, p0, Lcom/mobile/auth/p/b;->a:Lcom/mobile/auth/o/a;

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "TopRequest-GetVendorList:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v1

    invoke-virtual {v2, v3}, Lcom/mobile/auth/o/a;->a([Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catch_0
    :try_start_2
    new-instance v2, Lcom/mobile/auth/u/b;

    invoke-direct {v2, v1, v0, p1}, Lcom/mobile/auth/u/b;-><init>(ZLjava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    return-object v2

    :catchall_0
    move-exception p1

    const/4 v0, 0x0

    :try_start_3
    invoke-static {p1}, Lcom/mobile/auth/gatewayauth/a;->a(Ljava/lang/Throwable;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    return-object v0

    :catchall_1
    move-exception p1

    invoke-static {p1}, Lcom/mobile/auth/gatewayauth/a;->a(Ljava/lang/Throwable;)V

    return-object v0
.end method

.method public d()Lcom/mobile/auth/u/b;
    .locals 4

    :try_start_0
    new-instance v0, Lcom/mobile/auth/gatewayauth/model/psc_info_upload/AllRBInfo;

    invoke-direct {v0}, Lcom/mobile/auth/gatewayauth/model/psc_info_upload/AllRBInfo;-><init>()V

    new-instance v1, Lcom/mobile/auth/gatewayauth/model/psc_info_upload/PnsVendorQueryResponse;

    invoke-direct {v1}, Lcom/mobile/auth/gatewayauth/model/psc_info_upload/PnsVendorQueryResponse;-><init>()V

    new-instance v2, Lcom/mobile/auth/gatewayauth/model/psc_info_upload/Result;

    invoke-direct {v2}, Lcom/mobile/auth/gatewayauth/model/psc_info_upload/Result;-><init>()V

    const-string v3, "600014"

    invoke-virtual {v2, v3}, Lcom/mobile/auth/gatewayauth/model/psc_info_upload/Result;->setCode(Ljava/lang/String;)V

    const-string v3, "GetVendorList Limited"

    invoke-virtual {v2, v3}, Lcom/mobile/auth/gatewayauth/model/psc_info_upload/Result;->setMessage(Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Lcom/mobile/auth/gatewayauth/model/psc_info_upload/PnsVendorQueryResponse;->setResult(Lcom/mobile/auth/gatewayauth/model/psc_info_upload/Result;)V

    invoke-virtual {v0, v1}, Lcom/mobile/auth/gatewayauth/model/psc_info_upload/AllRBInfo;->setResponse(Lcom/mobile/auth/gatewayauth/model/psc_info_upload/PnsVendorQueryResponse;)V

    new-instance v1, Lcom/mobile/auth/u/b;

    const/4 v2, 0x0

    invoke-virtual {v0}, Lcom/mobile/auth/gatewayauth/model/psc_info_upload/AllRBInfo;->toJson()Lorg/json/JSONObject;

    move-result-object v0

    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v3, ""

    invoke-direct {v1, v2, v0, v3}, Lcom/mobile/auth/u/b;-><init>(ZLjava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object v1

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

.method public e()Lcom/mobile/auth/u/a;
    .locals 4

    :try_start_0
    new-instance v0, Lcom/mobile/auth/u/b;

    const/4 v1, 0x1

    const-string v2, "{}"

    const-string v3, ""

    invoke-direct {v0, v1, v2, v3}, Lcom/mobile/auth/u/b;-><init>(ZLjava/lang/String;Ljava/lang/String;)V
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
    invoke-virtual {p0}, Lcom/mobile/auth/p/b;->e()Lcom/mobile/auth/u/a;

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
