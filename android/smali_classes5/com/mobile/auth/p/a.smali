.class public abstract Lcom/mobile/auth/p/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/nirvana/tools/requestqueue/TimeoutCallable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Lcom/mobile/auth/u/a;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/nirvana/tools/requestqueue/TimeoutCallable<",
        "Lcom/mobile/auth/u/a;",
        ">;"
    }
.end annotation


# instance fields
.field private a:Landroid/content/Context;

.field private b:Lcom/mobile/auth/gatewayauth/manager/b;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/mobile/auth/gatewayauth/manager/b;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Lcom/mobile/auth/p/a;->a:Landroid/content/Context;

    iput-object p2, p0, Lcom/mobile/auth/p/a;->b:Lcom/mobile/auth/gatewayauth/manager/b;

    return-void
.end method


# virtual methods
.method public abstract a()Lcom/mobile/auth/u/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation
.end method

.method public abstract a(Ljava/lang/String;)Lcom/mobile/auth/u/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")TT;"
        }
    .end annotation
.end method

.method public b()Lcom/mobile/auth/u/a;
    .locals 2

    :try_start_0
    iget-object v0, p0, Lcom/mobile/auth/p/a;->b:Lcom/mobile/auth/gatewayauth/manager/b;

    invoke-virtual {v0}, Lcom/mobile/auth/gatewayauth/manager/b;->k()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/mobile/auth/p/a;->a()Lcom/mobile/auth/u/a;

    move-result-object v0

    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/mobile/auth/p/a;->b:Lcom/mobile/auth/gatewayauth/manager/b;

    invoke-virtual {v0}, Lcom/mobile/auth/gatewayauth/manager/b;->l()V

    invoke-static {}, Lcom/mobile/auth/gatewayauth/utils/EncryptUtils;->generateAesKey()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/mobile/auth/p/a;->a(Ljava/lang/String;)Lcom/mobile/auth/u/a;

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

.method public c()Landroid/content/Context;
    .locals 2

    :try_start_0
    iget-object v0, p0, Lcom/mobile/auth/p/a;->a:Landroid/content/Context;
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

.method public synthetic call()Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    :try_start_0
    invoke-virtual {p0}, Lcom/mobile/auth/p/a;->b()Lcom/mobile/auth/u/a;

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
