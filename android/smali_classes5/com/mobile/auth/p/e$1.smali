.class Lcom/mobile/auth/p/e$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/mobile/auth/gatewayauth/manager/RequestCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mobile/auth/p/e;->b()Lcom/mobile/auth/u/e;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/mobile/auth/gatewayauth/manager/RequestCallback<",
        "Lcom/mobile/auth/gatewayauth/manager/a$a;",
        "Lcom/mobile/auth/gatewayauth/manager/base/c;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/mobile/auth/u/e;

.field final synthetic b:Ljava/util/concurrent/CountDownLatch;

.field final synthetic c:Lcom/mobile/auth/p/e;


# direct methods
.method constructor <init>(Lcom/mobile/auth/p/e;Lcom/mobile/auth/u/e;Ljava/util/concurrent/CountDownLatch;)V
    .locals 0

    iput-object p1, p0, Lcom/mobile/auth/p/e$1;->c:Lcom/mobile/auth/p/e;

    iput-object p2, p0, Lcom/mobile/auth/p/e$1;->a:Lcom/mobile/auth/u/e;

    iput-object p3, p0, Lcom/mobile/auth/p/e$1;->b:Ljava/util/concurrent/CountDownLatch;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/mobile/auth/gatewayauth/manager/a$a;)V
    .locals 4

    :try_start_0
    iget-object v0, p0, Lcom/mobile/auth/p/e$1;->a:Lcom/mobile/auth/u/e;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/mobile/auth/u/e;->a(Z)V

    iget-object v0, p0, Lcom/mobile/auth/p/e$1;->a:Lcom/mobile/auth/u/e;

    invoke-virtual {v0, p1}, Lcom/mobile/auth/u/e;->a(Lcom/mobile/auth/gatewayauth/manager/a$a;)V

    iget-object v0, p0, Lcom/mobile/auth/p/e$1;->a:Lcom/mobile/auth/u/e;

    invoke-static {}, Lcom/mobile/auth/gatewayauth/manager/base/c;->a()Lcom/mobile/auth/gatewayauth/manager/base/c$a;

    move-result-object v1

    invoke-virtual {p1}, Lcom/mobile/auth/gatewayauth/manager/a$a;->c()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/mobile/auth/gatewayauth/manager/base/c$a;->c(Ljava/lang/String;)Lcom/mobile/auth/gatewayauth/manager/base/c$a;

    move-result-object v1

    invoke-virtual {p1}, Lcom/mobile/auth/gatewayauth/manager/a$a;->d()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Lcom/mobile/auth/gatewayauth/manager/base/c$a;->a(J)Lcom/mobile/auth/gatewayauth/manager/base/c$a;

    move-result-object p1

    invoke-virtual {p1}, Lcom/mobile/auth/gatewayauth/manager/base/c$a;->a()Lcom/mobile/auth/gatewayauth/manager/base/c;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/mobile/auth/u/e;->a(Lcom/mobile/auth/gatewayauth/manager/base/c;)V

    iget-object p1, p0, Lcom/mobile/auth/p/e$1;->b:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {p1}, Ljava/util/concurrent/CountDownLatch;->countDown()V
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

.method public a(Lcom/mobile/auth/gatewayauth/manager/base/c;)V
    .locals 1

    :try_start_0
    iget-object v0, p0, Lcom/mobile/auth/p/e$1;->a:Lcom/mobile/auth/u/e;

    invoke-virtual {v0, p1}, Lcom/mobile/auth/u/e;->a(Lcom/mobile/auth/gatewayauth/manager/base/c;)V

    iget-object p1, p0, Lcom/mobile/auth/p/e$1;->b:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {p1}, Ljava/util/concurrent/CountDownLatch;->countDown()V
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

.method public synthetic onError(Ljava/lang/Object;)V
    .locals 0

    :try_start_0
    check-cast p1, Lcom/mobile/auth/gatewayauth/manager/base/c;

    invoke-virtual {p0, p1}, Lcom/mobile/auth/p/e$1;->a(Lcom/mobile/auth/gatewayauth/manager/base/c;)V
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

.method public synthetic onSuccess(Ljava/lang/Object;)V
    .locals 0

    :try_start_0
    check-cast p1, Lcom/mobile/auth/gatewayauth/manager/a$a;

    invoke-virtual {p0, p1}, Lcom/mobile/auth/p/e$1;->a(Lcom/mobile/auth/gatewayauth/manager/a$a;)V
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
