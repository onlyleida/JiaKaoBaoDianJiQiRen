.class Lcom/mobile/auth/q/c$2;
.super Lcom/mobile/auth/gatewayauth/utils/b$b;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mobile/auth/q/c;->e(Lcom/mobile/auth/gatewayauth/manager/RequestCallback;Lcom/mobile/auth/gatewayauth/manager/a$b;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/mobile/auth/gatewayauth/manager/a$b;

.field final synthetic b:Lcom/mobile/auth/gatewayauth/manager/RequestCallback;

.field final synthetic c:Lcom/mobile/auth/q/c;


# direct methods
.method constructor <init>(Lcom/mobile/auth/q/c;Lcom/mobile/auth/gatewayauth/manager/a$b;Lcom/mobile/auth/gatewayauth/manager/RequestCallback;)V
    .locals 0

    iput-object p1, p0, Lcom/mobile/auth/q/c$2;->c:Lcom/mobile/auth/q/c;

    iput-object p2, p0, Lcom/mobile/auth/q/c$2;->a:Lcom/mobile/auth/gatewayauth/manager/a$b;

    iput-object p3, p0, Lcom/mobile/auth/q/c$2;->b:Lcom/mobile/auth/gatewayauth/manager/RequestCallback;

    invoke-direct {p0}, Lcom/mobile/auth/gatewayauth/utils/b$b;-><init>()V

    return-void
.end method


# virtual methods
.method protected a()V
    .locals 4

    :try_start_0
    new-instance v0, Lcom/mobile/auth/gatewayauth/model/MonitorStruct;

    invoke-direct {v0}, Lcom/mobile/auth/gatewayauth/model/MonitorStruct;-><init>()V

    const-string v1, "timeout"

    iget-object v2, p0, Lcom/mobile/auth/q/c$2;->c:Lcom/mobile/auth/q/c;

    invoke-static {v2}, Lcom/mobile/auth/q/c;->b(Lcom/mobile/auth/q/c;)J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/mobile/auth/gatewayauth/model/MonitorStruct;->putApiParam(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/mobile/auth/q/c$2;->a:Lcom/mobile/auth/gatewayauth/manager/a$b;

    invoke-virtual {v1}, Lcom/mobile/auth/gatewayauth/manager/a$b;->c()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/mobile/auth/gatewayauth/model/MonitorStruct;->setSessionId(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/mobile/auth/q/c$2;->a:Lcom/mobile/auth/gatewayauth/manager/a$b;

    invoke-virtual {v1}, Lcom/mobile/auth/gatewayauth/manager/a$b;->b()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/mobile/auth/gatewayauth/model/MonitorStruct;->setRequestId(Ljava/lang/String;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/mobile/auth/gatewayauth/model/MonitorStruct;->setStartTime(J)V

    const-string v1, "cmcc.get.logintoken"

    invoke-virtual {v0, v1}, Lcom/mobile/auth/gatewayauth/model/MonitorStruct;->setAction(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/mobile/auth/q/c$2;->c:Lcom/mobile/auth/q/c;

    invoke-static {v1}, Lcom/mobile/auth/q/c;->c(Lcom/mobile/auth/q/c;)Lcom/mobile/auth/q/a;

    move-result-object v1

    new-instance v2, Lcom/mobile/auth/q/c$2$1;

    invoke-direct {v2, p0, v0}, Lcom/mobile/auth/q/c$2$1;-><init>(Lcom/mobile/auth/q/c$2;Lcom/mobile/auth/gatewayauth/model/MonitorStruct;)V

    invoke-virtual {v1, v2}, Lcom/mobile/auth/q/a;->a(Lcom/mobile/auth/e/e;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    :try_start_1
    invoke-static {v0}, Lcom/mobile/auth/gatewayauth/a;->a(Ljava/lang/Throwable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_0

    :catchall_1
    move-exception v0

    invoke-static {v0}, Lcom/mobile/auth/gatewayauth/a;->a(Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method
