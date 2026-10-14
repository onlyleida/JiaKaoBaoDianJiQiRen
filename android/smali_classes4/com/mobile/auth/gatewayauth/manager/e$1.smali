.class Lcom/mobile/auth/gatewayauth/manager/e$1;
.super Lcom/nirvana/tools/requestqueue/Callback;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mobile/auth/gatewayauth/manager/e;->a(Lcom/mobile/auth/gatewayauth/manager/e$a;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/nirvana/tools/requestqueue/Callback<",
        "Lcom/mobile/auth/u/a;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/mobile/auth/gatewayauth/manager/e$a;

.field final synthetic b:Lcom/mobile/auth/gatewayauth/manager/e;


# direct methods
.method constructor <init>(Lcom/mobile/auth/gatewayauth/manager/e;Lcom/nirvana/tools/requestqueue/strategy/ThreadStrategy;JLcom/mobile/auth/gatewayauth/manager/e$a;)V
    .locals 0

    iput-object p1, p0, Lcom/mobile/auth/gatewayauth/manager/e$1;->b:Lcom/mobile/auth/gatewayauth/manager/e;

    iput-object p5, p0, Lcom/mobile/auth/gatewayauth/manager/e$1;->a:Lcom/mobile/auth/gatewayauth/manager/e$a;

    invoke-direct {p0, p2, p3, p4}, Lcom/nirvana/tools/requestqueue/Callback;-><init>(Lcom/nirvana/tools/requestqueue/strategy/ThreadStrategy;J)V

    return-void
.end method


# virtual methods
.method public a(Lcom/mobile/auth/u/a;)V
    .locals 3

    :try_start_0
    iget-object v0, p0, Lcom/mobile/auth/gatewayauth/manager/e$1;->a:Lcom/mobile/auth/gatewayauth/manager/e$a;

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Lcom/mobile/auth/u/a;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/mobile/auth/gatewayauth/manager/e$1;->a:Lcom/mobile/auth/gatewayauth/manager/e$a;

    invoke-virtual {p1}, Lcom/mobile/auth/u/a;->c()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/mobile/auth/u/a;->b()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Lcom/mobile/auth/u/a;->e()Landroid/util/SparseArray;

    move-result-object p1

    invoke-interface {v0, v1, v2, p1}, Lcom/mobile/auth/gatewayauth/manager/e$a;->a(Ljava/lang/String;Ljava/lang/String;Landroid/util/SparseArray;)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/mobile/auth/gatewayauth/manager/e$1;->a:Lcom/mobile/auth/gatewayauth/manager/e$a;

    invoke-virtual {p1}, Lcom/mobile/auth/u/a;->c()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/mobile/auth/u/a;->b()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, v1, p1}, Lcom/mobile/auth/gatewayauth/manager/e$a;->a(Ljava/lang/String;Ljava/lang/String;)V
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

    :cond_1
    :goto_0
    return-void
.end method

.method public synthetic onResult(Lcom/nirvana/tools/requestqueue/Response;)V
    .locals 0

    :try_start_0
    check-cast p1, Lcom/mobile/auth/u/a;

    invoke-virtual {p0, p1}, Lcom/mobile/auth/gatewayauth/manager/e$1;->a(Lcom/mobile/auth/u/a;)V
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
