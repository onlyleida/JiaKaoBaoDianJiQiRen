.class Lcom/mobile/auth/q/a$3$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/mobile/auth/e/g;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mobile/auth/q/a$3;->a()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/mobile/auth/q/a$3;


# direct methods
.method constructor <init>(Lcom/mobile/auth/q/a$3;)V
    .locals 0

    iput-object p1, p0, Lcom/mobile/auth/q/a$3$1;->a:Lcom/mobile/auth/q/a$3;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;Ljava/lang/String;Lcom/cmic/sso/sdk/a;Lorg/json/JSONObject;)V
    .locals 1

    :try_start_0
    const-string v0, "103000"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p2, p0, Lcom/mobile/auth/q/a$3$1;->a:Lcom/mobile/auth/q/a$3;

    iget-object p4, p2, Lcom/mobile/auth/q/a$3;->a:Lcom/mobile/auth/e/f;

    iget-object p2, p2, Lcom/mobile/auth/q/a$3;->b:Lcom/mobile/auth/q/a;

    invoke-static {p2}, Lcom/mobile/auth/q/a;->d(Lcom/mobile/auth/q/a;)Lcom/cmic/sso/sdk/a;

    move-result-object p2

    new-instance v0, Lcom/mobile/auth/q/a$3$1$1;

    invoke-direct {v0, p0, p3, p1}, Lcom/mobile/auth/q/a$3$1$1;-><init>(Lcom/mobile/auth/q/a$3$1;Lcom/cmic/sso/sdk/a;Ljava/lang/String;)V

    invoke-virtual {p4, p2, v0}, Lcom/mobile/auth/e/f;->a(Lcom/cmic/sso/sdk/a;Lcom/mobile/auth/e/g;)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/mobile/auth/q/a$3$1;->a:Lcom/mobile/auth/q/a$3;

    iget-object v0, v0, Lcom/mobile/auth/q/a$3;->b:Lcom/mobile/auth/q/a;

    invoke-static {v0, p1, p2, p3, p4}, Lcom/mobile/auth/q/a;->a(Lcom/mobile/auth/q/a;Ljava/lang/String;Ljava/lang/String;Lcom/cmic/sso/sdk/a;Lorg/json/JSONObject;)V

    iget-object p1, p0, Lcom/mobile/auth/q/a$3$1;->a:Lcom/mobile/auth/q/a$3;

    iget-object p1, p1, Lcom/mobile/auth/q/a$3;->b:Lcom/mobile/auth/q/a;

    invoke-static {p1}, Lcom/mobile/auth/q/a;->e(Lcom/mobile/auth/q/a;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/mobile/auth/k/i;->b(Ljava/lang/String;)V
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
