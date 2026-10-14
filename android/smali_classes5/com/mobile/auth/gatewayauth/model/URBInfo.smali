.class public Lcom/mobile/auth/gatewayauth/model/URBInfo;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mobile/auth/gatewayauth/model/URBInfo$AlibabaAliqinPnsInfoUploadResponse;
    }
.end annotation


# instance fields
.field private alibaba_aliqin_pns_info_upload_response:Lcom/mobile/auth/gatewayauth/model/URBInfo$AlibabaAliqinPnsInfoUploadResponse;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getAlibaba_aliqin_pns_info_upload_response()Lcom/mobile/auth/gatewayauth/model/URBInfo$AlibabaAliqinPnsInfoUploadResponse;
    .locals 2

    :try_start_0
    iget-object v0, p0, Lcom/mobile/auth/gatewayauth/model/URBInfo;->alibaba_aliqin_pns_info_upload_response:Lcom/mobile/auth/gatewayauth/model/URBInfo$AlibabaAliqinPnsInfoUploadResponse;
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

.method public setAlibaba_aliqin_pns_info_upload_response(Lcom/mobile/auth/gatewayauth/model/URBInfo$AlibabaAliqinPnsInfoUploadResponse;)V
    .locals 0

    :try_start_0
    iput-object p1, p0, Lcom/mobile/auth/gatewayauth/model/URBInfo;->alibaba_aliqin_pns_info_upload_response:Lcom/mobile/auth/gatewayauth/model/URBInfo$AlibabaAliqinPnsInfoUploadResponse;
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
