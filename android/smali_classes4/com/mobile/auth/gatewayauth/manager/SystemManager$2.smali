.class Lcom/mobile/auth/gatewayauth/manager/SystemManager$2;
.super Lcom/nirvana/tools/requestqueue/Callback;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mobile/auth/gatewayauth/manager/SystemManager;->requestCellularIp()Ljava/lang/String;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/nirvana/tools/requestqueue/Callback<",
        "Lcom/mobile/auth/u/d;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/StringBuffer;

.field final synthetic b:Ljava/util/concurrent/CountDownLatch;

.field final synthetic c:Lcom/mobile/auth/gatewayauth/manager/SystemManager;


# direct methods
.method constructor <init>(Lcom/mobile/auth/gatewayauth/manager/SystemManager;Lcom/nirvana/tools/requestqueue/strategy/ThreadStrategy;JLjava/lang/StringBuffer;Ljava/util/concurrent/CountDownLatch;)V
    .locals 0

    iput-object p1, p0, Lcom/mobile/auth/gatewayauth/manager/SystemManager$2;->c:Lcom/mobile/auth/gatewayauth/manager/SystemManager;

    iput-object p5, p0, Lcom/mobile/auth/gatewayauth/manager/SystemManager$2;->a:Ljava/lang/StringBuffer;

    iput-object p6, p0, Lcom/mobile/auth/gatewayauth/manager/SystemManager$2;->b:Ljava/util/concurrent/CountDownLatch;

    invoke-direct {p0, p2, p3, p4}, Lcom/nirvana/tools/requestqueue/Callback;-><init>(Lcom/nirvana/tools/requestqueue/strategy/ThreadStrategy;J)V

    return-void
.end method


# virtual methods
.method public a(Lcom/mobile/auth/u/d;)V
    .locals 1

    :try_start_0
    invoke-virtual {p1}, Lcom/mobile/auth/u/d;->a()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/mobile/auth/gatewayauth/manager/SystemManager$2;->a:Ljava/lang/StringBuffer;

    invoke-virtual {p1}, Lcom/mobile/auth/u/d;->a()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_0
    iget-object p1, p0, Lcom/mobile/auth/gatewayauth/manager/SystemManager$2;->b:Ljava/util/concurrent/CountDownLatch;

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

.method public synthetic onResult(Lcom/nirvana/tools/requestqueue/Response;)V
    .locals 0

    :try_start_0
    check-cast p1, Lcom/mobile/auth/u/d;

    invoke-virtual {p0, p1}, Lcom/mobile/auth/gatewayauth/manager/SystemManager$2;->a(Lcom/mobile/auth/u/d;)V
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
