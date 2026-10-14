.class Lcom/mobile/auth/gatewayauth/d$7;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mobile/auth/gatewayauth/d;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Ljava/lang/String;

.field final synthetic c:Ljava/lang/String;

.field final synthetic d:Lcom/mobile/auth/gatewayauth/d;


# direct methods
.method constructor <init>(Lcom/mobile/auth/gatewayauth/d;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/mobile/auth/gatewayauth/d$7;->d:Lcom/mobile/auth/gatewayauth/d;

    iput-object p2, p0, Lcom/mobile/auth/gatewayauth/d$7;->a:Ljava/lang/String;

    iput-object p3, p0, Lcom/mobile/auth/gatewayauth/d$7;->b:Ljava/lang/String;

    iput-object p4, p0, Lcom/mobile/auth/gatewayauth/d$7;->c:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    :try_start_0
    iget-object v0, p0, Lcom/mobile/auth/gatewayauth/d$7;->d:Lcom/mobile/auth/gatewayauth/d;

    invoke-static {v0}, Lcom/mobile/auth/gatewayauth/d;->d(Lcom/mobile/auth/gatewayauth/d;)Lcom/mobile/auth/o/a;

    move-result-object v0

    iget-object v1, p0, Lcom/mobile/auth/gatewayauth/d$7;->d:Lcom/mobile/auth/gatewayauth/d;

    invoke-static {v1}, Lcom/mobile/auth/gatewayauth/d;->h(Lcom/mobile/auth/gatewayauth/d;)Lcom/mobile/auth/gatewayauth/manager/d;

    move-result-object v1

    iget-object v2, p0, Lcom/mobile/auth/gatewayauth/d$7;->a:Ljava/lang/String;

    iget-object v3, p0, Lcom/mobile/auth/gatewayauth/d$7;->b:Ljava/lang/String;

    invoke-static {}, Lcom/mobile/auth/gatewayauth/model/UStruct;->newUStruct()Lcom/mobile/auth/gatewayauth/model/UStruct$Builder;

    move-result-object v4

    iget-object v5, p0, Lcom/mobile/auth/gatewayauth/d$7;->d:Lcom/mobile/auth/gatewayauth/d;

    invoke-static {v5}, Lcom/mobile/auth/gatewayauth/d;->j(Lcom/mobile/auth/gatewayauth/d;)J

    move-result-wide v5

    invoke-virtual {v4, v5, v6}, Lcom/mobile/auth/gatewayauth/model/UStruct$Builder;->startTime(J)Lcom/mobile/auth/gatewayauth/model/UStruct$Builder;

    move-result-object v4

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    invoke-virtual {v4, v5, v6}, Lcom/mobile/auth/gatewayauth/model/UStruct$Builder;->endTime(J)Lcom/mobile/auth/gatewayauth/model/UStruct$Builder;

    move-result-object v4

    iget-object v5, p0, Lcom/mobile/auth/gatewayauth/d$7;->d:Lcom/mobile/auth/gatewayauth/d;

    invoke-static {v5}, Lcom/mobile/auth/gatewayauth/d;->h(Lcom/mobile/auth/gatewayauth/d;)Lcom/mobile/auth/gatewayauth/manager/d;

    move-result-object v5

    invoke-virtual {v5}, Lcom/mobile/auth/gatewayauth/manager/d;->f()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/mobile/auth/gatewayauth/model/UStruct$Builder;->requestId(Ljava/lang/String;)Lcom/mobile/auth/gatewayauth/model/UStruct$Builder;

    move-result-object v4

    iget-object v5, p0, Lcom/mobile/auth/gatewayauth/d$7;->d:Lcom/mobile/auth/gatewayauth/d;

    invoke-static {v5}, Lcom/mobile/auth/gatewayauth/d;->h(Lcom/mobile/auth/gatewayauth/d;)Lcom/mobile/auth/gatewayauth/manager/d;

    move-result-object v5

    invoke-virtual {v5}, Lcom/mobile/auth/gatewayauth/manager/d;->d()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/mobile/auth/gatewayauth/model/UStruct$Builder;->sessionId(Ljava/lang/String;)Lcom/mobile/auth/gatewayauth/model/UStruct$Builder;

    move-result-object v4

    iget-object v5, p0, Lcom/mobile/auth/gatewayauth/d$7;->d:Lcom/mobile/auth/gatewayauth/d;

    invoke-static {v5}, Lcom/mobile/auth/gatewayauth/d;->i(Lcom/mobile/auth/gatewayauth/d;)Lcom/mobile/auth/gatewayauth/manager/compat/ResultCodeProcessor;

    move-result-object v5

    iget-object v6, p0, Lcom/mobile/auth/gatewayauth/d$7;->c:Ljava/lang/String;

    invoke-interface {v5, v6}, Lcom/mobile/auth/gatewayauth/manager/compat/ResultCodeProcessor;->convertCode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/mobile/auth/gatewayauth/model/UStruct$Builder;->authSdkCode(Ljava/lang/String;)Lcom/mobile/auth/gatewayauth/model/UStruct$Builder;

    move-result-object v4

    invoke-virtual {v4}, Lcom/mobile/auth/gatewayauth/model/UStruct$Builder;->build()Lcom/mobile/auth/gatewayauth/model/UStruct;

    move-result-object v4

    const-string v5, ""

    invoke-virtual {v1, v2, v3, v4, v5}, Lcom/mobile/auth/gatewayauth/manager/d;->b(Ljava/lang/String;Ljava/lang/String;Lcom/mobile/auth/gatewayauth/model/UStruct;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x2

    invoke-virtual {v0, v1, v2}, Lcom/mobile/auth/o/a;->a(Ljava/lang/String;I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    invoke-static {v0}, Lcom/mobile/auth/gatewayauth/a;->a(Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method
