.class Lcom/mobile/auth/gatewayauth/d$8;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/mobile/auth/gatewayauth/TokenResultListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mobile/auth/gatewayauth/d;->b(Lcom/mobile/auth/gatewayauth/manager/compat/ResultCodeProcessor;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/mobile/auth/gatewayauth/d;


# direct methods
.method constructor <init>(Lcom/mobile/auth/gatewayauth/d;)V
    .locals 0

    iput-object p1, p0, Lcom/mobile/auth/gatewayauth/d$8;->a:Lcom/mobile/auth/gatewayauth/d;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTokenFailed(Ljava/lang/String;)V
    .locals 1

    :try_start_0
    iget-object v0, p0, Lcom/mobile/auth/gatewayauth/d$8;->a:Lcom/mobile/auth/gatewayauth/d;

    invoke-static {v0}, Lcom/mobile/auth/gatewayauth/d;->f(Lcom/mobile/auth/gatewayauth/d;)Lcom/mobile/auth/gatewayauth/TokenResultListener;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/mobile/auth/gatewayauth/d$8;->a:Lcom/mobile/auth/gatewayauth/d;

    invoke-static {v0}, Lcom/mobile/auth/gatewayauth/d;->f(Lcom/mobile/auth/gatewayauth/d;)Lcom/mobile/auth/gatewayauth/TokenResultListener;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/mobile/auth/gatewayauth/TokenResultListener;->onTokenFailed(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    invoke-static {p1}, Lcom/mobile/auth/gatewayauth/a;->a(Ljava/lang/Throwable;)V

    :cond_0
    :goto_0
    return-void
.end method

.method public onTokenSuccess(Ljava/lang/String;)V
    .locals 1

    :try_start_0
    iget-object v0, p0, Lcom/mobile/auth/gatewayauth/d$8;->a:Lcom/mobile/auth/gatewayauth/d;

    invoke-static {v0}, Lcom/mobile/auth/gatewayauth/d;->f(Lcom/mobile/auth/gatewayauth/d;)Lcom/mobile/auth/gatewayauth/TokenResultListener;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/mobile/auth/gatewayauth/d$8;->a:Lcom/mobile/auth/gatewayauth/d;

    invoke-static {v0}, Lcom/mobile/auth/gatewayauth/d;->f(Lcom/mobile/auth/gatewayauth/d;)Lcom/mobile/auth/gatewayauth/TokenResultListener;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/mobile/auth/gatewayauth/TokenResultListener;->onTokenSuccess(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    invoke-static {p1}, Lcom/mobile/auth/gatewayauth/a;->a(Ljava/lang/Throwable;)V

    :cond_0
    :goto_0
    return-void
.end method
