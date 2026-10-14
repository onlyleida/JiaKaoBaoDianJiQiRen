.class public Lcom/mobile/auth/t/e;
.super Lcom/nirvana/tools/requestqueue/Request;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/nirvana/tools/requestqueue/Request<",
        "Lcom/mobile/auth/u/f;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>(Lcom/mobile/auth/gatewayauth/manager/f;Lcom/nirvana/tools/requestqueue/Callback;JLjava/lang/String;Lcom/mobile/auth/gatewayauth/manager/a$b;)V
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/mobile/auth/gatewayauth/manager/f;",
            "Lcom/nirvana/tools/requestqueue/Callback<",
            "Lcom/mobile/auth/u/f;",
            ">;J",
            "Ljava/lang/String;",
            "Lcom/mobile/auth/gatewayauth/manager/a$b;",
            ")V"
        }
    .end annotation

    new-instance v2, Lcom/mobile/auth/p/f;

    invoke-direct {v2, p1, p5, p6}, Lcom/mobile/auth/p/f;-><init>(Lcom/mobile/auth/gatewayauth/manager/f;Ljava/lang/String;Lcom/mobile/auth/gatewayauth/manager/a$b;)V

    sget-object v3, Lcom/nirvana/tools/requestqueue/strategy/ThreadStrategy;->THREAD:Lcom/nirvana/tools/requestqueue/strategy/ThreadStrategy;

    sget-object v4, Lcom/nirvana/tools/requestqueue/strategy/ExecuteStrategy;->USE_PREV:Lcom/nirvana/tools/requestqueue/strategy/ExecuteStrategy;

    sget-object v5, Lcom/nirvana/tools/requestqueue/strategy/CallbackStrategy;->LIST:Lcom/nirvana/tools/requestqueue/strategy/CallbackStrategy;

    const-class v8, Lcom/mobile/auth/u/f;

    move-object v0, p0

    move-object v1, p2

    move-wide v6, p3

    invoke-direct/range {v0 .. v8}, Lcom/nirvana/tools/requestqueue/Request;-><init>(Lcom/nirvana/tools/requestqueue/Callback;Lcom/nirvana/tools/requestqueue/TimeoutCallable;Lcom/nirvana/tools/requestqueue/strategy/ThreadStrategy;Lcom/nirvana/tools/requestqueue/strategy/ExecuteStrategy;Lcom/nirvana/tools/requestqueue/strategy/CallbackStrategy;JLjava/lang/Class;)V

    return-void
.end method


# virtual methods
.method public getKey()Ljava/lang/String;
    .locals 2

    :try_start_0
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/UUID;->toString()Ljava/lang/String;

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
