.class Lcom/mobile/auth/q/a$4;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/mobile/auth/e/g;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mobile/auth/q/a;->a(Ljava/lang/String;Lcom/cmic/sso/sdk/a;Lcom/mobile/auth/q/b;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/mobile/auth/q/a$a;

.field final synthetic b:Lcom/mobile/auth/q/b;

.field final synthetic c:Lcom/mobile/auth/q/a;


# direct methods
.method constructor <init>(Lcom/mobile/auth/q/a;Lcom/mobile/auth/q/a$a;Lcom/mobile/auth/q/b;)V
    .locals 0

    iput-object p1, p0, Lcom/mobile/auth/q/a$4;->c:Lcom/mobile/auth/q/a;

    iput-object p2, p0, Lcom/mobile/auth/q/a$4;->a:Lcom/mobile/auth/q/a$a;

    iput-object p3, p0, Lcom/mobile/auth/q/a$4;->b:Lcom/mobile/auth/q/b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;Ljava/lang/String;Lcom/cmic/sso/sdk/a;Lorg/json/JSONObject;)V
    .locals 9

    const-string v0, "token"

    const-string v1, "openId"

    const-string v2, "authTypeDes"

    const-string v3, "authType"

    const-string v4, "securityphone"

    const-string v5, "traceId"

    const-string v6, ""

    :try_start_0
    iget-object v7, p0, Lcom/mobile/auth/q/a$4;->a:Lcom/mobile/auth/q/a$a;

    invoke-static {v7}, Lcom/mobile/auth/q/a$a;->a(Lcom/mobile/auth/q/a$a;)Z

    move-result v7

    if-eqz v7, :cond_2

    iget-object v7, p0, Lcom/mobile/auth/q/a$4;->c:Lcom/mobile/auth/q/a;

    invoke-static {v7}, Lcom/mobile/auth/q/a;->f(Lcom/mobile/auth/q/a;)Landroid/os/Handler;

    move-result-object v7

    iget-object v8, p0, Lcom/mobile/auth/q/a$4;->a:Lcom/mobile/auth/q/a$a;

    invoke-virtual {v7, v8}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    iget-object v7, p0, Lcom/mobile/auth/q/a$4;->b:Lcom/mobile/auth/q/b;

    invoke-virtual {v7}, Lcom/mobile/auth/q/b;->a()Ljava/util/Map;

    move-result-object v7

    invoke-virtual {p3, v4, v6}, Lcom/cmic/sso/sdk/a;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-interface {v7, v4, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v4, 0x1

    const-string v7, "logintype"

    invoke-virtual {p3, v7}, Lcom/cmic/sso/sdk/a;->a(Ljava/lang/String;)I

    move-result v7

    if-ne v4, v7, :cond_1

    const-string v4, "\u663e\u793a\u767b\u5f55\u53d6\u53f7\u6210\u529f"

    invoke-virtual {v4, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-virtual {p3, v5}, Lcom/cmic/sso/sdk/a;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/mobile/auth/k/i;->a(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_1

    invoke-virtual {p3, v5}, Lcom/cmic/sso/sdk/a;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    iget-object p4, p0, Lcom/mobile/auth/q/a$4;->c:Lcom/mobile/auth/q/a;

    invoke-static {p4, p2}, Lcom/mobile/auth/q/a;->a(Lcom/mobile/auth/q/a;Ljava/lang/String;)Ljava/lang/String;

    invoke-static {p2, p3}, Lcom/mobile/auth/k/i;->a(Ljava/lang/String;Lcom/cmic/sso/sdk/a;)V

    new-instance p4, Lorg/json/JSONObject;

    invoke-direct {p4}, Lorg/json/JSONObject;-><init>()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    const-string v4, "resultCode"

    invoke-virtual {p4, v4, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    invoke-virtual {p3, v3, v6}, Lcom/cmic/sso/sdk/a;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p4, v3, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    invoke-virtual {p3, v2, v6}, Lcom/cmic/sso/sdk/a;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p4, v2, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    invoke-virtual {p3, v1, v6}, Lcom/cmic/sso/sdk/a;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p4, v1, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    invoke-virtual {p3, v0, v6}, Lcom/cmic/sso/sdk/a;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p4, v0, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    invoke-virtual {p3, v5, v6}, Lcom/cmic/sso/sdk/a;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p4, v5, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catch_0
    move-exception p1

    :try_start_2
    invoke-virtual {p1}, Lorg/json/JSONException;->printStackTrace()V

    :goto_0
    invoke-static {p2}, Lcom/mobile/auth/k/i;->c(Ljava/lang/String;)Lcom/mobile/auth/e/e;

    move-result-object p1

    if-eqz p1, :cond_0

    const-string p2, "SDKRequestCode"

    invoke-virtual {p3, p2}, Lcom/cmic/sso/sdk/a;->a(Ljava/lang/String;)I

    move-result p2

    invoke-interface {p1, p2, p4}, Lcom/mobile/auth/e/e;->a(ILorg/json/JSONObject;)V

    :cond_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/mobile/auth/q/a$4;->c:Lcom/mobile/auth/q/a;

    invoke-static {v0}, Lcom/mobile/auth/q/a;->a(Lcom/mobile/auth/q/a;)Lcom/mobile/auth/e/a;

    move-result-object v1

    const/4 v6, 0x0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    invoke-virtual/range {v1 .. v6}, Lcom/mobile/auth/e/a;->a(Ljava/lang/String;Ljava/lang/String;Lcom/cmic/sso/sdk/a;Lorg/json/JSONObject;Ljava/lang/Throwable;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception p1

    :try_start_3
    invoke-static {p1}, Lcom/mobile/auth/gatewayauth/a;->a(Ljava/lang/Throwable;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_1

    :catchall_1
    move-exception p1

    invoke-static {p1}, Lcom/mobile/auth/gatewayauth/a;->a(Ljava/lang/Throwable;)V

    :cond_2
    :goto_1
    return-void
.end method
