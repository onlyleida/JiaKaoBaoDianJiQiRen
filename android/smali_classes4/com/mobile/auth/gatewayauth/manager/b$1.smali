.class Lcom/mobile/auth/gatewayauth/manager/b$1;
.super Lcom/nirvana/tools/requestqueue/Callback;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mobile/auth/gatewayauth/manager/b;->a(Lcom/mobile/auth/gatewayauth/manager/RequestCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/nirvana/tools/requestqueue/Callback<",
        "Lcom/mobile/auth/u/c;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/mobile/auth/gatewayauth/manager/RequestCallback;

.field final synthetic b:Lcom/mobile/auth/gatewayauth/manager/b;


# direct methods
.method constructor <init>(Lcom/mobile/auth/gatewayauth/manager/b;Lcom/nirvana/tools/requestqueue/strategy/ThreadStrategy;JLcom/mobile/auth/gatewayauth/manager/RequestCallback;)V
    .locals 0

    iput-object p1, p0, Lcom/mobile/auth/gatewayauth/manager/b$1;->b:Lcom/mobile/auth/gatewayauth/manager/b;

    iput-object p5, p0, Lcom/mobile/auth/gatewayauth/manager/b$1;->a:Lcom/mobile/auth/gatewayauth/manager/RequestCallback;

    invoke-direct {p0, p2, p3, p4}, Lcom/nirvana/tools/requestqueue/Callback;-><init>(Lcom/nirvana/tools/requestqueue/strategy/ThreadStrategy;J)V

    return-void
.end method


# virtual methods
.method public a(Lcom/mobile/auth/u/c;)V
    .locals 2

    :try_start_0
    invoke-virtual {p1}, Lcom/mobile/auth/u/c;->a()Lcom/mobile/auth/gatewayauth/model/ConfigRule;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-virtual {p1}, Lcom/mobile/auth/u/c;->a()Lcom/mobile/auth/gatewayauth/model/ConfigRule;

    move-result-object p1

    iget-object v0, p0, Lcom/mobile/auth/gatewayauth/manager/b$1;->b:Lcom/mobile/auth/gatewayauth/manager/b;

    invoke-static {v0}, Lcom/mobile/auth/gatewayauth/manager/b;->a(Lcom/mobile/auth/gatewayauth/manager/b;)Lcom/mobile/auth/gatewayauth/model/ConfigRule;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/mobile/auth/gatewayauth/manager/b$1;->b:Lcom/mobile/auth/gatewayauth/manager/b;

    invoke-static {v0}, Lcom/mobile/auth/gatewayauth/manager/b;->a(Lcom/mobile/auth/gatewayauth/manager/b;)Lcom/mobile/auth/gatewayauth/model/ConfigRule;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mobile/auth/gatewayauth/model/ConfigRule;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lcom/mobile/auth/gatewayauth/model/ConfigRule;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    iget-object v0, p0, Lcom/mobile/auth/gatewayauth/manager/b$1;->b:Lcom/mobile/auth/gatewayauth/manager/b;

    invoke-static {v0, p1}, Lcom/mobile/auth/gatewayauth/manager/b;->a(Lcom/mobile/auth/gatewayauth/manager/b;Lcom/mobile/auth/gatewayauth/model/ConfigRule;)Lcom/mobile/auth/gatewayauth/model/ConfigRule;

    iget-object p1, p0, Lcom/mobile/auth/gatewayauth/manager/b$1;->b:Lcom/mobile/auth/gatewayauth/manager/b;

    invoke-static {p1}, Lcom/mobile/auth/gatewayauth/manager/b;->b(Lcom/mobile/auth/gatewayauth/manager/b;)Lcom/mobile/auth/o/a;

    move-result-object p1

    iget-object v0, p0, Lcom/mobile/auth/gatewayauth/manager/b$1;->b:Lcom/mobile/auth/gatewayauth/manager/b;

    invoke-static {v0}, Lcom/mobile/auth/gatewayauth/manager/b;->a(Lcom/mobile/auth/gatewayauth/manager/b;)Lcom/mobile/auth/gatewayauth/model/ConfigRule;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/mobile/auth/o/a;->a(Lcom/mobile/auth/gatewayauth/model/ConfigRule;)V

    iget-object p1, p0, Lcom/mobile/auth/gatewayauth/manager/b$1;->b:Lcom/mobile/auth/gatewayauth/manager/b;

    invoke-static {p1}, Lcom/mobile/auth/gatewayauth/manager/b;->c(Lcom/mobile/auth/gatewayauth/manager/b;)Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/mobile/auth/gatewayauth/network/a;->d(Landroid/content/Context;)V

    iget-object p1, p0, Lcom/mobile/auth/gatewayauth/manager/b$1;->b:Lcom/mobile/auth/gatewayauth/manager/b;

    invoke-static {p1}, Lcom/mobile/auth/gatewayauth/manager/b;->c(Lcom/mobile/auth/gatewayauth/manager/b;)Landroid/content/Context;

    move-result-object p1

    iget-object v0, p0, Lcom/mobile/auth/gatewayauth/manager/b$1;->b:Lcom/mobile/auth/gatewayauth/manager/b;

    invoke-static {v0}, Lcom/mobile/auth/gatewayauth/manager/b;->a(Lcom/mobile/auth/gatewayauth/manager/b;)Lcom/mobile/auth/gatewayauth/model/ConfigRule;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mobile/auth/gatewayauth/model/ConfigRule;->toJsonString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/mobile/auth/gatewayauth/network/a;->b(Landroid/content/Context;Ljava/lang/String;)V

    :cond_1
    iget-object p1, p0, Lcom/mobile/auth/gatewayauth/manager/b$1;->a:Lcom/mobile/auth/gatewayauth/manager/RequestCallback;

    iget-object v0, p0, Lcom/mobile/auth/gatewayauth/manager/b$1;->b:Lcom/mobile/auth/gatewayauth/manager/b;

    invoke-static {v0}, Lcom/mobile/auth/gatewayauth/manager/b;->a(Lcom/mobile/auth/gatewayauth/manager/b;)Lcom/mobile/auth/gatewayauth/model/ConfigRule;

    move-result-object v0

    invoke-interface {p1, v0}, Lcom/mobile/auth/gatewayauth/manager/RequestCallback;->onSuccess(Ljava/lang/Object;)V

    goto :goto_0

    :cond_2
    iget-object p1, p0, Lcom/mobile/auth/gatewayauth/manager/b$1;->a:Lcom/mobile/auth/gatewayauth/manager/RequestCallback;

    const/4 v0, 0x0

    invoke-interface {p1, v0}, Lcom/mobile/auth/gatewayauth/manager/RequestCallback;->onError(Ljava/lang/Object;)V
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
    check-cast p1, Lcom/mobile/auth/u/c;

    invoke-virtual {p0, p1}, Lcom/mobile/auth/gatewayauth/manager/b$1;->a(Lcom/mobile/auth/u/c;)V
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
