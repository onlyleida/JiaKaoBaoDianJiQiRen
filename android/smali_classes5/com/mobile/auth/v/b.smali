.class public Lcom/mobile/auth/v/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/mobile/auth/gatewayauth/b;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;)Z
    .locals 5

    const/4 v0, 0x0

    :try_start_0
    invoke-static {}, Lcom/mobile/auth/gatewayauth/utils/f;->b()Z

    move-result v1

    const/4 v2, 0x1

    if-nez v1, :cond_0

    return v2

    :cond_0
    new-instance v1, Lcom/mobile/auth/gatewayauth/sdktools/upload/pns/model/PnsUploadRequest;

    invoke-direct {v1}, Lcom/mobile/auth/gatewayauth/sdktools/upload/pns/model/PnsUploadRequest;-><init>()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    new-instance v3, Lcom/mobile/auth/v/b$1;

    invoke-direct {v3, p0}, Lcom/mobile/auth/v/b$1;-><init>(Lcom/mobile/auth/v/b;)V

    invoke-static {p1, v3}, Lcom/nirvana/tools/jsoner/JSONUtils;->parseJsonArray2JsonerList(Ljava/lang/String;Lcom/nirvana/tools/jsoner/JsonType;)Ljava/util/List;

    move-result-object p1

    invoke-virtual {v1, p1}, Lcom/mobile/auth/gatewayauth/sdktools/upload/pns/model/PnsUploadRequest;->setUploadLogDTOList(Ljava/util/List;)Lcom/mobile/auth/gatewayauth/sdktools/upload/pns/model/PnsUploadRequest;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "upload log request = "

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Lcom/mobile/auth/gatewayauth/sdktools/upload/pns/model/PnsUploadRequest;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/mobile/auth/gatewayauth/utils/f;->a(Ljava/lang/String;)V

    invoke-virtual {v1}, Lcom/mobile/auth/gatewayauth/sdktools/upload/pns/model/PnsUploadRequest;->toJson()Lorg/json/JSONObject;

    move-result-object p1

    invoke-virtual {p1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/mobile/auth/gatewayauth/network/TopRequestUtils;->uploadUserTrackInfo(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/mobile/auth/gatewayauth/model/pns_vendor_query/UploadRB;->fromJson(Ljava/lang/String;)Lcom/mobile/auth/gatewayauth/model/pns_vendor_query/UploadRB;

    move-result-object v1

    const/4 v3, 0x0

    invoke-static {v3}, Lcom/mobile/auth/o/a;->a(Landroid/content/Context;)Lcom/mobile/auth/o/a;

    move-result-object v3

    if-eqz v3, :cond_1

    invoke-virtual {v3, v1}, Lcom/mobile/auth/o/a;->a(Lcom/mobile/auth/gatewayauth/model/pns_vendor_query/UploadRB;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_1
    const-string v3, "uploadResult2_0"

    if-eqz v1, :cond_2

    :try_start_2
    invoke-virtual {v1}, Lcom/mobile/auth/gatewayauth/model/pns_vendor_query/UploadRB;->getAlibaba_aliqin_psc_info_upload_response()Lcom/mobile/auth/gatewayauth/model/pns_vendor_query/PscInfoUploadResponse;

    move-result-object v4

    if-eqz v4, :cond_2

    invoke-virtual {v1}, Lcom/mobile/auth/gatewayauth/model/pns_vendor_query/UploadRB;->getAlibaba_aliqin_psc_info_upload_response()Lcom/mobile/auth/gatewayauth/model/pns_vendor_query/PscInfoUploadResponse;

    move-result-object v4

    invoke-virtual {v4}, Lcom/mobile/auth/gatewayauth/model/pns_vendor_query/PscInfoUploadResponse;->getResult()Lcom/mobile/auth/gatewayauth/model/pns_vendor_query/Result;

    move-result-object v4

    if-eqz v4, :cond_2

    const-string v4, "OK"

    invoke-virtual {v1}, Lcom/mobile/auth/gatewayauth/model/pns_vendor_query/UploadRB;->getAlibaba_aliqin_psc_info_upload_response()Lcom/mobile/auth/gatewayauth/model/pns_vendor_query/PscInfoUploadResponse;

    move-result-object v1

    invoke-virtual {v1}, Lcom/mobile/auth/gatewayauth/model/pns_vendor_query/PscInfoUploadResponse;->getResult()Lcom/mobile/auth/gatewayauth/model/pns_vendor_query/Result;

    move-result-object v1

    invoke-virtual {v1}, Lcom/mobile/auth/gatewayauth/model/pns_vendor_query/Result;->getCode()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    const-string v1, "success"

    invoke-virtual {p1, v3, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    invoke-virtual {p1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/mobile/auth/gatewayauth/utils/f;->a(Ljava/lang/String;)V

    return v2

    :cond_2
    const-string v1, "failed"

    invoke-virtual {p1, v3, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    invoke-virtual {p1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/mobile/auth/gatewayauth/utils/f;->a(Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    return v0

    :catch_0
    move-exception p1

    :try_start_3
    invoke-static {p1}, Lcom/mobile/auth/gatewayauth/utils/b;->b(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/mobile/auth/gatewayauth/utils/f;->c(Ljava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    return v0

    :catchall_0
    move-exception p1

    :try_start_4
    invoke-static {p1}, Lcom/mobile/auth/gatewayauth/a;->a(Ljava/lang/Throwable;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    return v0

    :catchall_1
    move-exception p1

    invoke-static {p1}, Lcom/mobile/auth/gatewayauth/a;->a(Ljava/lang/Throwable;)V

    return v0
.end method

.method public b(Ljava/lang/String;)Z
    .locals 5

    const/4 v0, 0x0

    :try_start_0
    invoke-static {}, Lcom/mobile/auth/gatewayauth/utils/f;->b()Z

    move-result v1

    const/4 v2, 0x1

    if-nez v1, :cond_0

    return v2

    :cond_0
    new-instance v1, Lcom/mobile/auth/gatewayauth/sdktools/upload/pns/model/PnsUploadRequest;

    invoke-direct {v1}, Lcom/mobile/auth/gatewayauth/sdktools/upload/pns/model/PnsUploadRequest;-><init>()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    new-instance v3, Lcom/mobile/auth/v/b$2;

    invoke-direct {v3, p0}, Lcom/mobile/auth/v/b$2;-><init>(Lcom/mobile/auth/v/b;)V

    invoke-static {p1, v3}, Lcom/nirvana/tools/jsoner/JSONUtils;->parseJsonArray2JsonerList(Ljava/lang/String;Lcom/nirvana/tools/jsoner/JsonType;)Ljava/util/List;

    move-result-object p1

    invoke-virtual {v1, p1}, Lcom/mobile/auth/gatewayauth/sdktools/upload/pns/model/PnsUploadRequest;->setUploadMonitorDTOList(Ljava/util/List;)Lcom/mobile/auth/gatewayauth/sdktools/upload/pns/model/PnsUploadRequest;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "upload monitor request = "

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Lcom/mobile/auth/gatewayauth/sdktools/upload/pns/model/PnsUploadRequest;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/mobile/auth/gatewayauth/utils/f;->a(Ljava/lang/String;)V

    invoke-virtual {v1}, Lcom/mobile/auth/gatewayauth/sdktools/upload/pns/model/PnsUploadRequest;->toJson()Lorg/json/JSONObject;

    move-result-object p1

    invoke-virtual {p1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/mobile/auth/gatewayauth/network/TopRequestUtils;->uploadUserTrackInfo(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/mobile/auth/gatewayauth/model/pns_vendor_query/UploadRB;->fromJson(Ljava/lang/String;)Lcom/mobile/auth/gatewayauth/model/pns_vendor_query/UploadRB;

    move-result-object v1

    const/4 v3, 0x0

    invoke-static {v3}, Lcom/mobile/auth/o/a;->a(Landroid/content/Context;)Lcom/mobile/auth/o/a;

    move-result-object v3

    if-eqz v3, :cond_1

    invoke-virtual {v3, v1}, Lcom/mobile/auth/o/a;->a(Lcom/mobile/auth/gatewayauth/model/pns_vendor_query/UploadRB;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_1
    const-string v3, "uploadResult2_0"

    if-eqz v1, :cond_2

    :try_start_2
    invoke-virtual {v1}, Lcom/mobile/auth/gatewayauth/model/pns_vendor_query/UploadRB;->getAlibaba_aliqin_psc_info_upload_response()Lcom/mobile/auth/gatewayauth/model/pns_vendor_query/PscInfoUploadResponse;

    move-result-object v4

    if-eqz v4, :cond_2

    invoke-virtual {v1}, Lcom/mobile/auth/gatewayauth/model/pns_vendor_query/UploadRB;->getAlibaba_aliqin_psc_info_upload_response()Lcom/mobile/auth/gatewayauth/model/pns_vendor_query/PscInfoUploadResponse;

    move-result-object v4

    invoke-virtual {v4}, Lcom/mobile/auth/gatewayauth/model/pns_vendor_query/PscInfoUploadResponse;->getResult()Lcom/mobile/auth/gatewayauth/model/pns_vendor_query/Result;

    move-result-object v4

    if-eqz v4, :cond_2

    const-string v4, "OK"

    invoke-virtual {v1}, Lcom/mobile/auth/gatewayauth/model/pns_vendor_query/UploadRB;->getAlibaba_aliqin_psc_info_upload_response()Lcom/mobile/auth/gatewayauth/model/pns_vendor_query/PscInfoUploadResponse;

    move-result-object v1

    invoke-virtual {v1}, Lcom/mobile/auth/gatewayauth/model/pns_vendor_query/PscInfoUploadResponse;->getResult()Lcom/mobile/auth/gatewayauth/model/pns_vendor_query/Result;

    move-result-object v1

    invoke-virtual {v1}, Lcom/mobile/auth/gatewayauth/model/pns_vendor_query/Result;->getCode()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    const-string v1, "success"

    invoke-virtual {p1, v3, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    invoke-virtual {p1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/mobile/auth/gatewayauth/utils/f;->a(Ljava/lang/String;)V

    return v2

    :cond_2
    const-string v1, "failed"

    invoke-virtual {p1, v3, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    invoke-virtual {p1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/mobile/auth/gatewayauth/utils/f;->a(Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    return v0

    :catch_0
    move-exception p1

    :try_start_3
    invoke-static {p1}, Lcom/mobile/auth/gatewayauth/utils/b;->b(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/mobile/auth/gatewayauth/utils/f;->c(Ljava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    return v0

    :catchall_0
    move-exception p1

    :try_start_4
    invoke-static {p1}, Lcom/mobile/auth/gatewayauth/a;->a(Ljava/lang/Throwable;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    return v0

    :catchall_1
    move-exception p1

    invoke-static {p1}, Lcom/mobile/auth/gatewayauth/a;->a(Ljava/lang/Throwable;)V

    return v0
.end method
