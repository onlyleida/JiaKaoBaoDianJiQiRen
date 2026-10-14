.class Lcom/mobile/auth/o/a$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mobile/auth/o/a;->a(Lcom/mobile/auth/gatewayauth/model/pns_vendor_query/UploadRB;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/mobile/auth/gatewayauth/model/pns_vendor_query/UploadRB;

.field final synthetic b:Lcom/mobile/auth/o/a;


# direct methods
.method constructor <init>(Lcom/mobile/auth/o/a;Lcom/mobile/auth/gatewayauth/model/pns_vendor_query/UploadRB;)V
    .locals 0

    iput-object p1, p0, Lcom/mobile/auth/o/a$2;->b:Lcom/mobile/auth/o/a;

    iput-object p2, p0, Lcom/mobile/auth/o/a$2;->a:Lcom/mobile/auth/gatewayauth/model/pns_vendor_query/UploadRB;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    :try_start_0
    iget-object v0, p0, Lcom/mobile/auth/o/a$2;->a:Lcom/mobile/auth/gatewayauth/model/pns_vendor_query/UploadRB;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/mobile/auth/gatewayauth/model/pns_vendor_query/UploadRB;->getAlibaba_aliqin_psc_info_upload_response()Lcom/mobile/auth/gatewayauth/model/pns_vendor_query/PscInfoUploadResponse;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/mobile/auth/o/a$2;->a:Lcom/mobile/auth/gatewayauth/model/pns_vendor_query/UploadRB;

    invoke-virtual {v0}, Lcom/mobile/auth/gatewayauth/model/pns_vendor_query/UploadRB;->getAlibaba_aliqin_psc_info_upload_response()Lcom/mobile/auth/gatewayauth/model/pns_vendor_query/PscInfoUploadResponse;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mobile/auth/gatewayauth/model/pns_vendor_query/PscInfoUploadResponse;->getResult()Lcom/mobile/auth/gatewayauth/model/pns_vendor_query/Result;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/mobile/auth/o/a$2;->a:Lcom/mobile/auth/gatewayauth/model/pns_vendor_query/UploadRB;

    invoke-virtual {v0}, Lcom/mobile/auth/gatewayauth/model/pns_vendor_query/UploadRB;->getAlibaba_aliqin_psc_info_upload_response()Lcom/mobile/auth/gatewayauth/model/pns_vendor_query/PscInfoUploadResponse;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mobile/auth/gatewayauth/model/pns_vendor_query/PscInfoUploadResponse;->getResult()Lcom/mobile/auth/gatewayauth/model/pns_vendor_query/Result;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mobile/auth/gatewayauth/model/pns_vendor_query/Result;->getModule()Lcom/mobile/auth/gatewayauth/model/pns_vendor_query/Module;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/mobile/auth/o/a$2;->a:Lcom/mobile/auth/gatewayauth/model/pns_vendor_query/UploadRB;

    invoke-virtual {v0}, Lcom/mobile/auth/gatewayauth/model/pns_vendor_query/UploadRB;->getAlibaba_aliqin_psc_info_upload_response()Lcom/mobile/auth/gatewayauth/model/pns_vendor_query/PscInfoUploadResponse;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mobile/auth/gatewayauth/model/pns_vendor_query/PscInfoUploadResponse;->getResult()Lcom/mobile/auth/gatewayauth/model/pns_vendor_query/Result;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mobile/auth/gatewayauth/model/pns_vendor_query/Result;->getModule()Lcom/mobile/auth/gatewayauth/model/pns_vendor_query/Module;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mobile/auth/gatewayauth/model/pns_vendor_query/Module;->getLimited_info()Lcom/mobile/auth/gatewayauth/model/pns_vendor_query/LimitedInfo;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/mobile/auth/o/a$2;->a:Lcom/mobile/auth/gatewayauth/model/pns_vendor_query/UploadRB;

    invoke-virtual {v0}, Lcom/mobile/auth/gatewayauth/model/pns_vendor_query/UploadRB;->getAlibaba_aliqin_psc_info_upload_response()Lcom/mobile/auth/gatewayauth/model/pns_vendor_query/PscInfoUploadResponse;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mobile/auth/gatewayauth/model/pns_vendor_query/PscInfoUploadResponse;->getResult()Lcom/mobile/auth/gatewayauth/model/pns_vendor_query/Result;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mobile/auth/gatewayauth/model/pns_vendor_query/Result;->getModule()Lcom/mobile/auth/gatewayauth/model/pns_vendor_query/Module;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mobile/auth/gatewayauth/model/pns_vendor_query/Module;->getLimited_info()Lcom/mobile/auth/gatewayauth/model/pns_vendor_query/LimitedInfo;

    move-result-object v0

    invoke-static {}, Lcom/nirvana/tools/logger/model/ACMLimitConfig;->newACMLimitConfig()Lcom/nirvana/tools/logger/model/ACMLimitConfig$Builder;

    move-result-object v1

    const-string v2, "true"

    invoke-virtual {v0}, Lcom/mobile/auth/gatewayauth/model/pns_vendor_query/LimitedInfo;->getIs_limited()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    invoke-virtual {v1, v2}, Lcom/nirvana/tools/logger/model/ACMLimitConfig$Builder;->isLimited(Z)Lcom/nirvana/tools/logger/model/ACMLimitConfig$Builder;

    move-result-object v1

    invoke-virtual {v0}, Lcom/mobile/auth/gatewayauth/model/pns_vendor_query/LimitedInfo;->getLimit_count()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/nirvana/tools/logger/model/ACMLimitConfig$Builder;->limitCount(I)Lcom/nirvana/tools/logger/model/ACMLimitConfig$Builder;

    move-result-object v1

    invoke-virtual {v0}, Lcom/mobile/auth/gatewayauth/model/pns_vendor_query/LimitedInfo;->getLimit_time_hour()I

    move-result v0

    invoke-virtual {v1, v0}, Lcom/nirvana/tools/logger/model/ACMLimitConfig$Builder;->limitHours(I)Lcom/nirvana/tools/logger/model/ACMLimitConfig$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/nirvana/tools/logger/model/ACMLimitConfig$Builder;->build()Lcom/nirvana/tools/logger/model/ACMLimitConfig;

    move-result-object v0

    iget-object v1, p0, Lcom/mobile/auth/o/a$2;->b:Lcom/mobile/auth/o/a;

    invoke-static {v1}, Lcom/mobile/auth/o/a;->c(Lcom/mobile/auth/o/a;)Lcom/nirvana/tools/logger/ACMMonitor;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/nirvana/tools/logger/ACMMonitor;->setLimitConfig(Lcom/nirvana/tools/logger/model/ACMLimitConfig;)V

    iget-object v1, p0, Lcom/mobile/auth/o/a$2;->b:Lcom/mobile/auth/o/a;

    invoke-static {v1}, Lcom/mobile/auth/o/a;->f(Lcom/mobile/auth/o/a;)Lcom/nirvana/tools/logger/ACMLogger;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/nirvana/tools/logger/ACMLogger;->setLimitConfig(Lcom/nirvana/tools/logger/model/ACMLimitConfig;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :cond_1
    :goto_0
    return-void

    :catchall_0
    move-exception v0

    :try_start_1
    invoke-static {v0}, Lcom/mobile/auth/gatewayauth/a;->a(Ljava/lang/Throwable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_1

    :catchall_1
    move-exception v0

    invoke-static {v0}, Lcom/mobile/auth/gatewayauth/a;->a(Ljava/lang/Throwable;)V

    :goto_1
    return-void
.end method
