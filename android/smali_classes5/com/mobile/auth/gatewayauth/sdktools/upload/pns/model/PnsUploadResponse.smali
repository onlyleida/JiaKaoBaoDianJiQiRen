.class public Lcom/mobile/auth/gatewayauth/sdktools/upload/pns/model/PnsUploadResponse;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private response:Lcom/mobile/auth/gatewayauth/sdktools/upload/pns/model/PnsResponse;
    .annotation runtime Lcom/nirvana/tools/jsoner/JsonerTag;
        keyName = "alibaba_aliqin_pns_info_upload_response"
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getResponse()Lcom/mobile/auth/gatewayauth/sdktools/upload/pns/model/PnsResponse;
    .locals 2

    :try_start_0
    iget-object v0, p0, Lcom/mobile/auth/gatewayauth/sdktools/upload/pns/model/PnsUploadResponse;->response:Lcom/mobile/auth/gatewayauth/sdktools/upload/pns/model/PnsResponse;
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

.method public setResponse(Lcom/mobile/auth/gatewayauth/sdktools/upload/pns/model/PnsResponse;)V
    .locals 0

    :try_start_0
    iput-object p1, p0, Lcom/mobile/auth/gatewayauth/sdktools/upload/pns/model/PnsUploadResponse;->response:Lcom/mobile/auth/gatewayauth/sdktools/upload/pns/model/PnsResponse;
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
