.class public Lcom/mobile/auth/n/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/mobile/auth/gatewayauth/PnsReporter;


# instance fields
.field private a:Lcom/mobile/auth/o/a;

.field private b:Lcom/mobile/auth/gatewayauth/manager/d;

.field private c:Lcom/mobile/auth/gatewayauth/manager/f;


# direct methods
.method public constructor <init>(Lcom/mobile/auth/o/a;Lcom/mobile/auth/gatewayauth/manager/d;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/mobile/auth/n/a;->a:Lcom/mobile/auth/o/a;

    iput-object p2, p0, Lcom/mobile/auth/n/a;->b:Lcom/mobile/auth/gatewayauth/manager/d;

    return-void
.end method

.method static synthetic a(Lcom/mobile/auth/n/a;)Lcom/mobile/auth/gatewayauth/manager/d;
    .locals 1

    :try_start_0
    iget-object p0, p0, Lcom/mobile/auth/n/a;->b:Lcom/mobile/auth/gatewayauth/manager/d;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object p0

    :catchall_0
    move-exception p0

    const/4 v0, 0x0

    :try_start_1
    invoke-static {p0}, Lcom/mobile/auth/gatewayauth/a;->a(Ljava/lang/Throwable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    return-object v0

    :catchall_1
    move-exception p0

    invoke-static {p0}, Lcom/mobile/auth/gatewayauth/a;->a(Ljava/lang/Throwable;)V

    return-object v0
.end method

.method static synthetic b(Lcom/mobile/auth/n/a;)Lcom/mobile/auth/o/a;
    .locals 1

    :try_start_0
    iget-object p0, p0, Lcom/mobile/auth/n/a;->a:Lcom/mobile/auth/o/a;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object p0

    :catchall_0
    move-exception p0

    const/4 v0, 0x0

    :try_start_1
    invoke-static {p0}, Lcom/mobile/auth/gatewayauth/a;->a(Ljava/lang/Throwable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    return-object v0

    :catchall_1
    move-exception p0

    invoke-static {p0}, Lcom/mobile/auth/gatewayauth/a;->a(Ljava/lang/Throwable;)V

    return-object v0
.end method


# virtual methods
.method public a(Lcom/mobile/auth/gatewayauth/manager/f;)V
    .locals 0

    :try_start_0
    iput-object p1, p0, Lcom/mobile/auth/n/a;->c:Lcom/mobile/auth/gatewayauth/manager/f;
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

.method public setLoggerEnable(Z)V
    .locals 8

    :try_start_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    invoke-static {p1}, Lcom/mobile/auth/gatewayauth/utils/f;->a(Z)V

    iget-object v0, p0, Lcom/mobile/auth/n/a;->c:Lcom/mobile/auth/gatewayauth/manager/f;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/mobile/auth/gatewayauth/manager/f;->a()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/mobile/auth/gatewayauth/manager/a;

    if-eqz v1, :cond_0

    invoke-virtual {v1, p1}, Lcom/mobile/auth/gatewayauth/manager/a;->a(Z)V

    goto :goto_0

    :cond_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    new-instance v7, Lcom/mobile/auth/n/a$1;

    move-object v0, v7

    move-object v1, p0

    move v2, p1

    invoke-direct/range {v0 .. v6}, Lcom/mobile/auth/n/a$1;-><init>(Lcom/mobile/auth/n/a;ZJJ)V

    invoke-static {v7}, Lcom/mobile/auth/gatewayauth/utils/b;->a(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception p1

    :try_start_1
    invoke-static {p1}, Lcom/mobile/auth/gatewayauth/a;->a(Ljava/lang/Throwable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_1

    :catchall_1
    move-exception p1

    invoke-static {p1}, Lcom/mobile/auth/gatewayauth/a;->a(Ljava/lang/Throwable;)V

    :goto_1
    return-void
.end method

.method public setUploadEnable(Z)V
    .locals 10

    :try_start_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-static {p1}, Lcom/mobile/auth/gatewayauth/utils/f;->b(Z)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iget-object v4, p0, Lcom/mobile/auth/n/a;->a:Lcom/mobile/auth/o/a;

    iget-object v5, p0, Lcom/mobile/auth/n/a;->b:Lcom/mobile/auth/gatewayauth/manager/d;

    const-string v6, ""

    const-string v7, "sdk.upload.enable"

    invoke-static {}, Lcom/mobile/auth/gatewayauth/model/UStruct;->newUStruct()Lcom/mobile/auth/gatewayauth/model/UStruct$Builder;

    move-result-object v8

    const-string v9, "isEnable"

    invoke-static {p1}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v8, v9, p1}, Lcom/mobile/auth/gatewayauth/model/UStruct$Builder;->putApiParams(Ljava/lang/String;Ljava/lang/String;)Lcom/mobile/auth/gatewayauth/model/UStruct$Builder;

    move-result-object p1

    invoke-virtual {p1, v0, v1}, Lcom/mobile/auth/gatewayauth/model/UStruct$Builder;->startTime(J)Lcom/mobile/auth/gatewayauth/model/UStruct$Builder;

    move-result-object p1

    invoke-virtual {p1, v2, v3}, Lcom/mobile/auth/gatewayauth/model/UStruct$Builder;->endTime(J)Lcom/mobile/auth/gatewayauth/model/UStruct$Builder;

    move-result-object p1

    invoke-virtual {p1}, Lcom/mobile/auth/gatewayauth/model/UStruct$Builder;->build()Lcom/mobile/auth/gatewayauth/model/UStruct;

    move-result-object p1

    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v6, v7, p1, v0}, Lcom/mobile/auth/gatewayauth/manager/d;->b(Ljava/lang/String;Ljava/lang/String;Lcom/mobile/auth/gatewayauth/model/UStruct;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x2

    invoke-virtual {v4, p1, v0}, Lcom/mobile/auth/o/a;->a(Ljava/lang/String;I)V
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
