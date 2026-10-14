.class public abstract Lcom/mobile/auth/p/e;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/nirvana/tools/requestqueue/TimeoutCallable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/nirvana/tools/requestqueue/TimeoutCallable<",
        "Lcom/mobile/auth/u/e;",
        ">;"
    }
.end annotation


# instance fields
.field private a:Lcom/mobile/auth/gatewayauth/manager/f;

.field private b:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/mobile/auth/gatewayauth/manager/f;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/mobile/auth/p/e;->a:Lcom/mobile/auth/gatewayauth/manager/f;

    iput-object p2, p0, Lcom/mobile/auth/p/e;->b:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public a()Lcom/mobile/auth/u/e;
    .locals 3

    :try_start_0
    new-instance v0, Lcom/mobile/auth/u/e;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/mobile/auth/u/e;-><init>(Z)V

    const-string v1, "600015"

    const-string v2, "\u8bf7\u6c42\u8d85\u65f6"

    invoke-static {v1, v2}, Lcom/mobile/auth/gatewayauth/manager/base/c;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/mobile/auth/gatewayauth/manager/base/c;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/mobile/auth/u/e;->a(Lcom/mobile/auth/gatewayauth/manager/base/c;)V
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

.method public abstract a(Lcom/mobile/auth/gatewayauth/manager/RequestCallback;Lcom/mobile/auth/gatewayauth/manager/a;)V
.end method

.method public b()Lcom/mobile/auth/u/e;
    .locals 5

    :try_start_0
    iget-object v0, p0, Lcom/mobile/auth/p/e;->a:Lcom/mobile/auth/gatewayauth/manager/f;

    iget-object v1, p0, Lcom/mobile/auth/p/e;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/mobile/auth/gatewayauth/manager/f;->a(Ljava/lang/String;)Lcom/mobile/auth/gatewayauth/manager/a;

    move-result-object v0

    new-instance v1, Ljava/util/concurrent/CountDownLatch;

    const/4 v2, 0x1

    invoke-direct {v1, v2}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    new-instance v2, Lcom/mobile/auth/u/e;

    const/4 v3, 0x0

    invoke-direct {v2, v3}, Lcom/mobile/auth/u/e;-><init>(Z)V

    new-instance v3, Lcom/mobile/auth/p/e$1;

    invoke-direct {v3, p0, v2, v1}, Lcom/mobile/auth/p/e$1;-><init>(Lcom/mobile/auth/p/e;Lcom/mobile/auth/u/e;Ljava/util/concurrent/CountDownLatch;)V

    invoke-virtual {p0, v3, v0}, Lcom/mobile/auth/p/e;->a(Lcom/mobile/auth/gatewayauth/manager/RequestCallback;Lcom/mobile/auth/gatewayauth/manager/a;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const-wide/16 v3, 0x1388

    :try_start_1
    sget-object v0, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v1, v3, v4, v0}, Ljava/util/concurrent/CountDownLatch;->await(JLjava/util/concurrent/TimeUnit;)Z
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catch_0
    move-exception v0

    :try_start_2
    const-string v1, "-10008"

    invoke-static {v0}, Lcom/mobile/auth/gatewayauth/utils/b;->b(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/mobile/auth/gatewayauth/manager/base/c;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/mobile/auth/gatewayauth/manager/base/c;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/mobile/auth/u/e;->a(Lcom/mobile/auth/gatewayauth/manager/base/c;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :goto_0
    return-object v2

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

.method public synthetic call()Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    :try_start_0
    invoke-virtual {p0}, Lcom/mobile/auth/p/e;->b()Lcom/mobile/auth/u/e;

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

.method public synthetic onTimeout()Ljava/lang/Object;
    .locals 2

    :try_start_0
    invoke-virtual {p0}, Lcom/mobile/auth/p/e;->a()Lcom/mobile/auth/u/e;

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
