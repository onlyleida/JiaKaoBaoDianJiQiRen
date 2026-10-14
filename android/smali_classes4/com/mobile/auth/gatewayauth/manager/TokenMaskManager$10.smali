.class Lcom/mobile/auth/gatewayauth/manager/TokenMaskManager$10;
.super Lcom/mobile/auth/p/e;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mobile/auth/gatewayauth/manager/TokenMaskManager;->requestMask(JLjava/lang/String;Lcom/mobile/auth/gatewayauth/manager/RequestCallback;Lcom/mobile/auth/gatewayauth/manager/base/CacheKey;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Ljava/lang/String;

.field final synthetic c:Lcom/mobile/auth/gatewayauth/manager/TokenMaskManager;


# direct methods
.method constructor <init>(Lcom/mobile/auth/gatewayauth/manager/TokenMaskManager;Lcom/mobile/auth/gatewayauth/manager/f;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/mobile/auth/gatewayauth/manager/TokenMaskManager$10;->c:Lcom/mobile/auth/gatewayauth/manager/TokenMaskManager;

    iput-object p4, p0, Lcom/mobile/auth/gatewayauth/manager/TokenMaskManager$10;->a:Ljava/lang/String;

    iput-object p5, p0, Lcom/mobile/auth/gatewayauth/manager/TokenMaskManager$10;->b:Ljava/lang/String;

    invoke-direct {p0, p2, p3}, Lcom/mobile/auth/p/e;-><init>(Lcom/mobile/auth/gatewayauth/manager/f;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public a(Lcom/mobile/auth/gatewayauth/manager/RequestCallback;Lcom/mobile/auth/gatewayauth/manager/a;)V
    .locals 2

    :try_start_0
    invoke-static {}, Lcom/mobile/auth/gatewayauth/manager/a$b;->a()Lcom/mobile/auth/gatewayauth/manager/a$b$a;

    move-result-object v0

    iget-object v1, p0, Lcom/mobile/auth/gatewayauth/manager/TokenMaskManager$10;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/mobile/auth/gatewayauth/manager/a$b$a;->a(Ljava/lang/String;)Lcom/mobile/auth/gatewayauth/manager/a$b$a;

    move-result-object v0

    iget-object v1, p0, Lcom/mobile/auth/gatewayauth/manager/TokenMaskManager$10;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/mobile/auth/gatewayauth/manager/a$b$a;->b(Ljava/lang/String;)Lcom/mobile/auth/gatewayauth/manager/a$b$a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mobile/auth/gatewayauth/manager/a$b$a;->a()Lcom/mobile/auth/gatewayauth/manager/a$b;

    move-result-object v0

    invoke-virtual {p2, p1, v0}, Lcom/mobile/auth/gatewayauth/manager/a;->a(Lcom/mobile/auth/gatewayauth/manager/RequestCallback;Lcom/mobile/auth/gatewayauth/manager/a$b;)V
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
