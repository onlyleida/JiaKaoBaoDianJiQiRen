.class Lcom/mobile/auth/gatewayauth/manager/TokenMaskManager$2;
.super Lcom/nirvana/tools/requestqueue/Callback;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mobile/auth/gatewayauth/manager/TokenMaskManager;->b(JLjava/lang/String;Lcom/mobile/auth/gatewayauth/manager/RequestCallback;Lcom/mobile/auth/gatewayauth/manager/base/CacheKey;JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/nirvana/tools/requestqueue/Callback<",
        "Lcom/mobile/auth/u/f;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Ljava/lang/String;

.field final synthetic c:Lcom/mobile/auth/gatewayauth/manager/base/CacheKey;

.field final synthetic d:Lcom/mobile/auth/gatewayauth/manager/RequestCallback;

.field final synthetic e:Lcom/mobile/auth/gatewayauth/manager/TokenMaskManager;


# direct methods
.method constructor <init>(Lcom/mobile/auth/gatewayauth/manager/TokenMaskManager;Lcom/nirvana/tools/requestqueue/strategy/ThreadStrategy;JLjava/lang/String;Ljava/lang/String;Lcom/mobile/auth/gatewayauth/manager/base/CacheKey;Lcom/mobile/auth/gatewayauth/manager/RequestCallback;)V
    .locals 0

    iput-object p1, p0, Lcom/mobile/auth/gatewayauth/manager/TokenMaskManager$2;->e:Lcom/mobile/auth/gatewayauth/manager/TokenMaskManager;

    iput-object p5, p0, Lcom/mobile/auth/gatewayauth/manager/TokenMaskManager$2;->a:Ljava/lang/String;

    iput-object p6, p0, Lcom/mobile/auth/gatewayauth/manager/TokenMaskManager$2;->b:Ljava/lang/String;

    iput-object p7, p0, Lcom/mobile/auth/gatewayauth/manager/TokenMaskManager$2;->c:Lcom/mobile/auth/gatewayauth/manager/base/CacheKey;

    iput-object p8, p0, Lcom/mobile/auth/gatewayauth/manager/TokenMaskManager$2;->d:Lcom/mobile/auth/gatewayauth/manager/RequestCallback;

    invoke-direct {p0, p2, p3, p4}, Lcom/nirvana/tools/requestqueue/Callback;-><init>(Lcom/nirvana/tools/requestqueue/strategy/ThreadStrategy;J)V

    return-void
.end method


# virtual methods
.method public a(Lcom/mobile/auth/u/f;)V
    .locals 10

    :try_start_0
    iget-object v0, p0, Lcom/mobile/auth/gatewayauth/manager/TokenMaskManager$2;->e:Lcom/mobile/auth/gatewayauth/manager/TokenMaskManager;

    invoke-static {v0}, Lcom/mobile/auth/gatewayauth/manager/TokenMaskManager;->d(Lcom/mobile/auth/gatewayauth/manager/TokenMaskManager;)Lcom/mobile/auth/o/a;

    move-result-object v0

    const-string v1, "Update VerifyToken from network!"

    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/mobile/auth/o/a;->a([Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/mobile/auth/u/f;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lcom/mobile/auth/u/f;->b()Lcom/mobile/auth/gatewayauth/manager/base/c;

    move-result-object v0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    const-wide/32 v3, 0x5265c00

    add-long/2addr v1, v3

    invoke-virtual {p1}, Lcom/mobile/auth/u/f;->b()Lcom/mobile/auth/gatewayauth/manager/base/c;

    move-result-object v3

    invoke-virtual {v3}, Lcom/mobile/auth/gatewayauth/manager/base/c;->f()J

    move-result-wide v3

    invoke-static {v1, v2, v3, v4}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/mobile/auth/gatewayauth/manager/base/c;->a(J)V

    iget-object v3, p0, Lcom/mobile/auth/gatewayauth/manager/TokenMaskManager$2;->e:Lcom/mobile/auth/gatewayauth/manager/TokenMaskManager;

    iget-object v4, p0, Lcom/mobile/auth/gatewayauth/manager/TokenMaskManager$2;->a:Ljava/lang/String;

    iget-object v5, p0, Lcom/mobile/auth/gatewayauth/manager/TokenMaskManager$2;->b:Ljava/lang/String;

    iget-object v6, p0, Lcom/mobile/auth/gatewayauth/manager/TokenMaskManager$2;->c:Lcom/mobile/auth/gatewayauth/manager/base/CacheKey;

    invoke-virtual {p1}, Lcom/mobile/auth/u/f;->b()Lcom/mobile/auth/gatewayauth/manager/base/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mobile/auth/gatewayauth/manager/base/c;->d()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p1}, Lcom/mobile/auth/u/f;->b()Lcom/mobile/auth/gatewayauth/manager/base/c;

    move-result-object p1

    invoke-virtual {p1}, Lcom/mobile/auth/gatewayauth/manager/base/c;->f()J

    move-result-wide v8

    invoke-static/range {v3 .. v9}, Lcom/mobile/auth/gatewayauth/manager/TokenMaskManager;->b(Lcom/mobile/auth/gatewayauth/manager/TokenMaskManager;Ljava/lang/String;Ljava/lang/String;Lcom/mobile/auth/gatewayauth/manager/base/CacheKey;Ljava/lang/String;J)V

    iget-object p1, p0, Lcom/mobile/auth/gatewayauth/manager/TokenMaskManager$2;->d:Lcom/mobile/auth/gatewayauth/manager/RequestCallback;

    const-string v0, "false"

    invoke-interface {p1, v0}, Lcom/mobile/auth/gatewayauth/manager/RequestCallback;->onSuccess(Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Lcom/mobile/auth/u/f;->b()Lcom/mobile/auth/gatewayauth/manager/base/c;

    move-result-object p1

    if-nez p1, :cond_1

    const-string p1, "600010"

    const-string v0, "\u672a\u77e5\u5f02\u5e38"

    invoke-static {p1, v0}, Lcom/mobile/auth/gatewayauth/manager/base/c;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/mobile/auth/gatewayauth/manager/base/c;

    move-result-object p1

    :cond_1
    iget-object v0, p0, Lcom/mobile/auth/gatewayauth/manager/TokenMaskManager$2;->d:Lcom/mobile/auth/gatewayauth/manager/RequestCallback;

    invoke-interface {v0, p1}, Lcom/mobile/auth/gatewayauth/manager/RequestCallback;->onError(Ljava/lang/Object;)V
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
    check-cast p1, Lcom/mobile/auth/u/f;

    invoke-virtual {p0, p1}, Lcom/mobile/auth/gatewayauth/manager/TokenMaskManager$2;->a(Lcom/mobile/auth/u/f;)V
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
