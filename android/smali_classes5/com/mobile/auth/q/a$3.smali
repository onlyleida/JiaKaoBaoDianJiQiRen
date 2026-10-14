.class Lcom/mobile/auth/q/a$3;
.super Lcom/mobile/auth/k/u$a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mobile/auth/q/a;->a(Lcom/mobile/auth/e/e;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/mobile/auth/e/f;

.field final synthetic b:Lcom/mobile/auth/q/a;


# direct methods
.method constructor <init>(Lcom/mobile/auth/q/a;Lcom/mobile/auth/e/f;)V
    .locals 0

    iput-object p1, p0, Lcom/mobile/auth/q/a$3;->b:Lcom/mobile/auth/q/a;

    iput-object p2, p0, Lcom/mobile/auth/q/a$3;->a:Lcom/mobile/auth/e/f;

    invoke-direct {p0}, Lcom/mobile/auth/k/u$a;-><init>()V

    return-void
.end method


# virtual methods
.method protected a()V
    .locals 4

    :try_start_0
    iget-object v0, p0, Lcom/mobile/auth/q/a$3;->b:Lcom/mobile/auth/q/a;

    invoke-static {v0}, Lcom/mobile/auth/q/a;->d(Lcom/mobile/auth/q/a;)Lcom/cmic/sso/sdk/a;

    move-result-object v0

    const-string v1, "caller"

    const-string v2, "com.cmic.sso.sdk.activity.LoginAuthActivity;"

    invoke-virtual {v0, v1, v2}, Lcom/cmic/sso/sdk/a;->b(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/mobile/auth/q/a$3;->a:Lcom/mobile/auth/e/f;

    iget-object v1, p0, Lcom/mobile/auth/q/a$3;->b:Lcom/mobile/auth/q/a;

    invoke-static {v1}, Lcom/mobile/auth/q/a;->d(Lcom/mobile/auth/q/a;)Lcom/cmic/sso/sdk/a;

    move-result-object v1

    const/4 v2, 0x3

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lcom/mobile/auth/q/a$3$1;

    invoke-direct {v3, p0}, Lcom/mobile/auth/q/a$3$1;-><init>(Lcom/mobile/auth/q/a$3;)V

    invoke-virtual {v0, v1, v2, v3}, Lcom/mobile/auth/e/f;->a(Lcom/cmic/sso/sdk/a;Ljava/lang/String;Lcom/mobile/auth/e/g;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    :try_start_1
    invoke-static {v0}, Lcom/mobile/auth/gatewayauth/a;->a(Ljava/lang/Throwable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_0

    :catchall_1
    move-exception v0

    invoke-static {v0}, Lcom/mobile/auth/gatewayauth/a;->a(Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method
