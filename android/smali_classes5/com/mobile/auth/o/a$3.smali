.class Lcom/mobile/auth/o/a$3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mobile/auth/o/a;->a(Lcom/mobile/auth/gatewayauth/model/ConfigRule;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/mobile/auth/gatewayauth/model/ConfigRule;

.field final synthetic b:Lcom/mobile/auth/o/a;


# direct methods
.method constructor <init>(Lcom/mobile/auth/o/a;Lcom/mobile/auth/gatewayauth/model/ConfigRule;)V
    .locals 0

    iput-object p1, p0, Lcom/mobile/auth/o/a$3;->b:Lcom/mobile/auth/o/a;

    iput-object p2, p0, Lcom/mobile/auth/o/a$3;->a:Lcom/mobile/auth/gatewayauth/model/ConfigRule;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    const-string v0, "true"

    :try_start_0
    iget-object v1, p0, Lcom/mobile/auth/o/a$3;->a:Lcom/mobile/auth/gatewayauth/model/ConfigRule;

    if-eqz v1, :cond_4

    invoke-virtual {v1}, Lcom/mobile/auth/gatewayauth/model/ConfigRule;->getSls()Lcom/mobile/auth/gatewayauth/model/LimitConfig;

    move-result-object v1

    if-nez v1, :cond_0

    goto/16 :goto_3

    :cond_0
    invoke-static {}, Lcom/nirvana/tools/logger/model/ACMLimitConfig;->newACMLimitConfig()Lcom/nirvana/tools/logger/model/ACMLimitConfig$Builder;

    move-result-object v1

    iget-object v2, p0, Lcom/mobile/auth/o/a$3;->a:Lcom/mobile/auth/gatewayauth/model/ConfigRule;

    invoke-virtual {v2}, Lcom/mobile/auth/gatewayauth/model/ConfigRule;->getSls()Lcom/mobile/auth/gatewayauth/model/LimitConfig;

    move-result-object v2

    invoke-virtual {v2}, Lcom/mobile/auth/gatewayauth/model/LimitConfig;->getIs_limited()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    invoke-virtual {v1, v2}, Lcom/nirvana/tools/logger/model/ACMLimitConfig$Builder;->isLimited(Z)Lcom/nirvana/tools/logger/model/ACMLimitConfig$Builder;

    move-result-object v1

    iget-object v2, p0, Lcom/mobile/auth/o/a$3;->a:Lcom/mobile/auth/gatewayauth/model/ConfigRule;

    invoke-virtual {v2}, Lcom/mobile/auth/gatewayauth/model/ConfigRule;->getSls()Lcom/mobile/auth/gatewayauth/model/LimitConfig;

    move-result-object v2

    invoke-virtual {v2}, Lcom/mobile/auth/gatewayauth/model/LimitConfig;->getLimit_count()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/nirvana/tools/logger/model/ACMLimitConfig$Builder;->limitCount(I)Lcom/nirvana/tools/logger/model/ACMLimitConfig$Builder;

    move-result-object v1

    iget-object v2, p0, Lcom/mobile/auth/o/a$3;->a:Lcom/mobile/auth/gatewayauth/model/ConfigRule;

    invoke-virtual {v2}, Lcom/mobile/auth/gatewayauth/model/ConfigRule;->getSls()Lcom/mobile/auth/gatewayauth/model/LimitConfig;

    move-result-object v2

    invoke-virtual {v2}, Lcom/mobile/auth/gatewayauth/model/LimitConfig;->getLimit_time_hour()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/nirvana/tools/logger/model/ACMLimitConfig$Builder;->limitHours(I)Lcom/nirvana/tools/logger/model/ACMLimitConfig$Builder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/nirvana/tools/logger/model/ACMLimitConfig$Builder;->build()Lcom/nirvana/tools/logger/model/ACMLimitConfig;

    move-result-object v1

    iget-object v2, p0, Lcom/mobile/auth/o/a$3;->a:Lcom/mobile/auth/gatewayauth/model/ConfigRule;

    invoke-virtual {v2}, Lcom/mobile/auth/gatewayauth/model/ConfigRule;->getIs_sls_demoted()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-nez v2, :cond_2

    iget-object v2, p0, Lcom/mobile/auth/o/a$3;->a:Lcom/mobile/auth/gatewayauth/model/ConfigRule;

    invoke-virtual {v2}, Lcom/mobile/auth/gatewayauth/model/ConfigRule;->getIs_demoted()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/mobile/auth/o/a$3;->b:Lcom/mobile/auth/o/a;

    invoke-static {v0, v3}, Lcom/mobile/auth/o/a;->a(Lcom/mobile/auth/o/a;Z)Z

    goto :goto_1

    :cond_2
    :goto_0
    iget-object v0, p0, Lcom/mobile/auth/o/a$3;->b:Lcom/mobile/auth/o/a;

    invoke-static {v0, v4}, Lcom/mobile/auth/o/a;->a(Lcom/mobile/auth/o/a;Z)Z

    :goto_1
    iget-object v0, p0, Lcom/mobile/auth/o/a$3;->b:Lcom/mobile/auth/o/a;

    invoke-static {v0}, Lcom/mobile/auth/o/a;->d(Lcom/mobile/auth/o/a;)Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/mobile/auth/o/a$3;->b:Lcom/mobile/auth/o/a;

    invoke-static {v0}, Lcom/mobile/auth/o/a;->c(Lcom/mobile/auth/o/a;)Lcom/nirvana/tools/logger/ACMMonitor;

    move-result-object v0

    invoke-virtual {v0, v3}, Lcom/nirvana/tools/logger/ACMMonitor;->setUploadEnabled(Z)V

    iget-object v0, p0, Lcom/mobile/auth/o/a$3;->b:Lcom/mobile/auth/o/a;

    invoke-static {v0}, Lcom/mobile/auth/o/a;->f(Lcom/mobile/auth/o/a;)Lcom/nirvana/tools/logger/ACMLogger;

    move-result-object v0

    invoke-virtual {v0, v3}, Lcom/nirvana/tools/logger/ACMLogger;->setUploadEnabled(Z)V

    goto :goto_2

    :cond_3
    iget-object v0, p0, Lcom/mobile/auth/o/a$3;->b:Lcom/mobile/auth/o/a;

    invoke-static {v0}, Lcom/mobile/auth/o/a;->c(Lcom/mobile/auth/o/a;)Lcom/nirvana/tools/logger/ACMMonitor;

    move-result-object v0

    invoke-virtual {v0, v4}, Lcom/nirvana/tools/logger/ACMMonitor;->setUploadEnabled(Z)V

    iget-object v0, p0, Lcom/mobile/auth/o/a$3;->b:Lcom/mobile/auth/o/a;

    invoke-static {v0}, Lcom/mobile/auth/o/a;->f(Lcom/mobile/auth/o/a;)Lcom/nirvana/tools/logger/ACMLogger;

    move-result-object v0

    invoke-virtual {v0, v4}, Lcom/nirvana/tools/logger/ACMLogger;->setUploadEnabled(Z)V

    :goto_2
    iget-object v0, p0, Lcom/mobile/auth/o/a$3;->b:Lcom/mobile/auth/o/a;

    invoke-static {v0}, Lcom/mobile/auth/o/a;->c(Lcom/mobile/auth/o/a;)Lcom/nirvana/tools/logger/ACMMonitor;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/nirvana/tools/logger/ACMMonitor;->setLimitConfig(Lcom/nirvana/tools/logger/model/ACMLimitConfig;)V

    iget-object v0, p0, Lcom/mobile/auth/o/a$3;->b:Lcom/mobile/auth/o/a;

    invoke-static {v0}, Lcom/mobile/auth/o/a;->f(Lcom/mobile/auth/o/a;)Lcom/nirvana/tools/logger/ACMLogger;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/nirvana/tools/logger/ACMLogger;->setLimitConfig(Lcom/nirvana/tools/logger/model/ACMLimitConfig;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_4

    :cond_4
    :goto_3
    return-void

    :catchall_0
    move-exception v0

    :try_start_1
    invoke-static {v0}, Lcom/mobile/auth/gatewayauth/a;->a(Ljava/lang/Throwable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_4

    :catchall_1
    move-exception v0

    invoke-static {v0}, Lcom/mobile/auth/gatewayauth/a;->a(Ljava/lang/Throwable;)V

    :goto_4
    return-void
.end method
