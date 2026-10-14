.class Lcom/mobile/auth/q/a$3$1$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/mobile/auth/e/g;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mobile/auth/q/a$3$1;->a(Ljava/lang/String;Ljava/lang/String;Lcom/cmic/sso/sdk/a;Lorg/json/JSONObject;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/cmic/sso/sdk/a;

.field final synthetic b:Ljava/lang/String;

.field final synthetic c:Lcom/mobile/auth/q/a$3$1;


# direct methods
.method constructor <init>(Lcom/mobile/auth/q/a$3$1;Lcom/cmic/sso/sdk/a;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/mobile/auth/q/a$3$1$1;->c:Lcom/mobile/auth/q/a$3$1;

    iput-object p2, p0, Lcom/mobile/auth/q/a$3$1$1;->a:Lcom/cmic/sso/sdk/a;

    iput-object p3, p0, Lcom/mobile/auth/q/a$3$1$1;->b:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;Ljava/lang/String;Lcom/cmic/sso/sdk/a;Lorg/json/JSONObject;)V
    .locals 6

    const-string v0, "loginTime"

    :try_start_0
    iget-object v1, p0, Lcom/mobile/auth/q/a$3$1$1;->a:Lcom/cmic/sso/sdk/a;

    invoke-virtual {v1, v0}, Lcom/cmic/sso/sdk/a;->b(Ljava/lang/String;)J

    move-result-wide v1

    const-wide/16 v3, 0x0

    cmp-long v5, v1, v3

    if-eqz v5, :cond_0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    sub-long/2addr v3, v1

    iget-object v1, p0, Lcom/mobile/auth/q/a$3$1$1;->a:Lcom/cmic/sso/sdk/a;

    invoke-virtual {v1, v0, v3, v4}, Lcom/cmic/sso/sdk/a;->b(Ljava/lang/String;J)V

    :cond_0
    iget-object v0, p0, Lcom/mobile/auth/q/a$3$1$1;->a:Lcom/cmic/sso/sdk/a;

    const-string v1, "phonescrip"

    invoke-virtual {v0, v1}, Lcom/cmic/sso/sdk/a;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "103000"

    iget-object v2, p0, Lcom/mobile/auth/q/a$3$1$1;->b:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "authClickSuccess"

    :goto_0
    invoke-static {v0}, Lcom/mobile/auth/k/c;->a(Ljava/lang/String;)V

    goto :goto_1

    :cond_1
    const-string v0, "authClickFailed"

    goto :goto_0

    :goto_1
    iget-object v0, p0, Lcom/mobile/auth/q/a$3$1$1;->c:Lcom/mobile/auth/q/a$3$1;

    iget-object v0, v0, Lcom/mobile/auth/q/a$3$1;->a:Lcom/mobile/auth/q/a$3;

    iget-object v0, v0, Lcom/mobile/auth/q/a$3;->b:Lcom/mobile/auth/q/a;

    invoke-static {v0, p1, p2, p3, p4}, Lcom/mobile/auth/q/a;->a(Lcom/mobile/auth/q/a;Ljava/lang/String;Ljava/lang/String;Lcom/cmic/sso/sdk/a;Lorg/json/JSONObject;)V

    iget-object p1, p0, Lcom/mobile/auth/q/a$3$1$1;->c:Lcom/mobile/auth/q/a$3$1;

    iget-object p1, p1, Lcom/mobile/auth/q/a$3$1;->a:Lcom/mobile/auth/q/a$3;

    iget-object p1, p1, Lcom/mobile/auth/q/a$3;->b:Lcom/mobile/auth/q/a;

    invoke-static {p1}, Lcom/mobile/auth/q/a;->e(Lcom/mobile/auth/q/a;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/mobile/auth/k/i;->b(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_2

    :catchall_0
    move-exception p1

    :try_start_1
    invoke-static {p1}, Lcom/mobile/auth/gatewayauth/a;->a(Ljava/lang/Throwable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_2

    :catchall_1
    move-exception p1

    invoke-static {p1}, Lcom/mobile/auth/gatewayauth/a;->a(Ljava/lang/Throwable;)V

    :goto_2
    return-void
.end method
