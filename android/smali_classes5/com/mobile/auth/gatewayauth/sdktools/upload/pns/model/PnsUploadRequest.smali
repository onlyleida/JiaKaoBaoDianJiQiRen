.class public Lcom/mobile/auth/gatewayauth/sdktools/upload/pns/model/PnsUploadRequest;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/nirvana/tools/jsoner/Jsoner;
.implements Ljava/io/Serializable;


# static fields
.field private static final serialVersionUID:J = -0x6cc7346f0f90791fL


# instance fields
.field private uploadLogDTOList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/mobile/auth/gatewayauth/sdktools/upload/pns/model/UploadLogDTO;",
            ">;"
        }
    .end annotation
.end field

.field private uploadMonitorDTOList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/mobile/auth/gatewayauth/sdktools/upload/pns/model/UploadMonitorDTO;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public fromJson(Lorg/json/JSONObject;)V
    .locals 2

    :try_start_0
    const-string v0, "uploadLogDTOList"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v0

    new-instance v1, Lcom/mobile/auth/gatewayauth/sdktools/upload/pns/model/PnsUploadRequest$1;

    invoke-direct {v1, p0}, Lcom/mobile/auth/gatewayauth/sdktools/upload/pns/model/PnsUploadRequest$1;-><init>(Lcom/mobile/auth/gatewayauth/sdktools/upload/pns/model/PnsUploadRequest;)V

    invoke-static {v0, v1}, Lcom/nirvana/tools/jsoner/JSONUtils;->parseJsonArray2JsonerList(Lorg/json/JSONArray;Lcom/nirvana/tools/jsoner/JsonType;)Ljava/util/List;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/mobile/auth/gatewayauth/sdktools/upload/pns/model/PnsUploadRequest;->setUploadLogDTOList(Ljava/util/List;)Lcom/mobile/auth/gatewayauth/sdktools/upload/pns/model/PnsUploadRequest;

    const-string v0, "uploadMonitorDTOList"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object p1

    new-instance v0, Lcom/mobile/auth/gatewayauth/sdktools/upload/pns/model/PnsUploadRequest$2;

    invoke-direct {v0, p0}, Lcom/mobile/auth/gatewayauth/sdktools/upload/pns/model/PnsUploadRequest$2;-><init>(Lcom/mobile/auth/gatewayauth/sdktools/upload/pns/model/PnsUploadRequest;)V

    invoke-static {p1, v0}, Lcom/nirvana/tools/jsoner/JSONUtils;->parseJsonArray2JsonerList(Lorg/json/JSONArray;Lcom/nirvana/tools/jsoner/JsonType;)Ljava/util/List;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/mobile/auth/gatewayauth/sdktools/upload/pns/model/PnsUploadRequest;->setUploadMonitorDTOList(Ljava/util/List;)Lcom/mobile/auth/gatewayauth/sdktools/upload/pns/model/PnsUploadRequest;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    :try_start_1
    invoke-static {p1}, Lcom/mobile/auth/gatewayauth/a;->a(Ljava/lang/Throwable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_0

    :catchall_1
    move-exception p1

    invoke-static {p1}, Lcom/mobile/auth/gatewayauth/a;->a(Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method

.method public getUploadLogDTOList()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/mobile/auth/gatewayauth/sdktools/upload/pns/model/UploadLogDTO;",
            ">;"
        }
    .end annotation

    :try_start_0
    iget-object v0, p0, Lcom/mobile/auth/gatewayauth/sdktools/upload/pns/model/PnsUploadRequest;->uploadLogDTOList:Ljava/util/List;
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

.method public getUploadMonitorDTOList()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/mobile/auth/gatewayauth/sdktools/upload/pns/model/UploadMonitorDTO;",
            ">;"
        }
    .end annotation

    :try_start_0
    iget-object v0, p0, Lcom/mobile/auth/gatewayauth/sdktools/upload/pns/model/PnsUploadRequest;->uploadMonitorDTOList:Ljava/util/List;
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

.method public setUploadLogDTOList(Ljava/util/List;)Lcom/mobile/auth/gatewayauth/sdktools/upload/pns/model/PnsUploadRequest;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/mobile/auth/gatewayauth/sdktools/upload/pns/model/UploadLogDTO;",
            ">;)",
            "Lcom/mobile/auth/gatewayauth/sdktools/upload/pns/model/PnsUploadRequest;"
        }
    .end annotation

    :try_start_0
    iput-object p1, p0, Lcom/mobile/auth/gatewayauth/sdktools/upload/pns/model/PnsUploadRequest;->uploadLogDTOList:Ljava/util/List;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object p0

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

.method public setUploadMonitorDTOList(Ljava/util/List;)Lcom/mobile/auth/gatewayauth/sdktools/upload/pns/model/PnsUploadRequest;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/mobile/auth/gatewayauth/sdktools/upload/pns/model/UploadMonitorDTO;",
            ">;)",
            "Lcom/mobile/auth/gatewayauth/sdktools/upload/pns/model/PnsUploadRequest;"
        }
    .end annotation

    :try_start_0
    iput-object p1, p0, Lcom/mobile/auth/gatewayauth/sdktools/upload/pns/model/PnsUploadRequest;->uploadMonitorDTOList:Ljava/util/List;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object p0

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

.method public toJson()Lorg/json/JSONObject;
    .locals 3

    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    const-string v1, "uploadLogDTOList"

    iget-object v2, p0, Lcom/mobile/auth/gatewayauth/sdktools/upload/pns/model/PnsUploadRequest;->uploadLogDTOList:Ljava/util/List;

    invoke-static {v2}, Lcom/nirvana/tools/jsoner/JSONUtils;->jsonerList2JsonArray(Ljava/util/List;)Lorg/json/JSONArray;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "uploadMonitorDTOList"

    iget-object v2, p0, Lcom/mobile/auth/gatewayauth/sdktools/upload/pns/model/PnsUploadRequest;->uploadMonitorDTOList:Ljava/util/List;

    invoke-static {v2}, Lcom/nirvana/tools/jsoner/JSONUtils;->jsonerList2JsonArray(Ljava/util/List;)Lorg/json/JSONArray;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catch_0
    move-exception v1

    :try_start_2
    invoke-virtual {v1}, Lorg/json/JSONException;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :goto_0
    return-object v0

    :catchall_0
    move-exception v0

    const/4 v1, 0x0

    :try_start_3
    invoke-static {v0}, Lcom/mobile/auth/gatewayauth/a;->a(Ljava/lang/Throwable;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    return-object v1

    :catchall_1
    move-exception v0

    invoke-static {v0}, Lcom/mobile/auth/gatewayauth/a;->a(Ljava/lang/Throwable;)V

    return-object v1
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "PnsUploadRequest{uploadLogDTOList="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/mobile/auth/gatewayauth/sdktools/upload/pns/model/PnsUploadRequest;->uploadLogDTOList:Ljava/util/List;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", uploadMonitorDTOList="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/mobile/auth/gatewayauth/sdktools/upload/pns/model/PnsUploadRequest;->uploadMonitorDTOList:Ljava/util/List;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

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
