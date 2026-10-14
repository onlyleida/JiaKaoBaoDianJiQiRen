.class Lcom/mobile/auth/q/a$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mobile/auth/q/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "a"
.end annotation


# instance fields
.field final synthetic a:Lcom/mobile/auth/q/a;

.field private b:Lcom/cmic/sso/sdk/a;

.field private volatile c:Z


# direct methods
.method constructor <init>(Lcom/mobile/auth/q/a;Lcom/cmic/sso/sdk/a;)V
    .locals 0

    iput-object p1, p0, Lcom/mobile/auth/q/a$a;->a:Lcom/mobile/auth/q/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/mobile/auth/q/a$a;->c:Z

    iput-object p2, p0, Lcom/mobile/auth/q/a$a;->b:Lcom/cmic/sso/sdk/a;

    return-void
.end method

.method private declared-synchronized a()Z
    .locals 2

    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/mobile/auth/q/a$a;->c:Z

    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/mobile/auth/q/a$a;->c:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    xor-int/2addr v0, v1

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    const/4 v1, 0x0

    :try_start_1
    invoke-static {v0}, Lcom/mobile/auth/gatewayauth/a;->a(Ljava/lang/Throwable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    monitor-exit p0

    return v1

    :catchall_1
    move-exception v0

    :try_start_2
    invoke-static {v0}, Lcom/mobile/auth/gatewayauth/a;->a(Ljava/lang/Throwable;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    monitor-exit p0

    return v1

    :catchall_2
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method static synthetic a(Lcom/mobile/auth/q/a$a;)Z
    .locals 1

    :try_start_0
    invoke-direct {p0}, Lcom/mobile/auth/q/a$a;->a()Z

    move-result p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return p0

    :catchall_0
    move-exception p0

    const/4 v0, 0x0

    :try_start_1
    invoke-static {p0}, Lcom/mobile/auth/gatewayauth/a;->a(Ljava/lang/Throwable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    return v0

    :catchall_1
    move-exception p0

    invoke-static {p0}, Lcom/mobile/auth/gatewayauth/a;->a(Ljava/lang/Throwable;)V

    return v0
.end method


# virtual methods
.method public run()V
    .locals 7

    :try_start_0
    invoke-direct {p0}, Lcom/mobile/auth/q/a$a;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v5, Lorg/json/JSONObject;

    invoke-direct {v5}, Lorg/json/JSONObject;-><init>()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    const-string v0, "resultCode"

    const-string v1, "200023"

    invoke-virtual {v5, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v0, "resultString"

    const-string v1, "\u767b\u5f55\u8d85\u65f6"

    invoke-virtual {v5, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catch_0
    move-exception v0

    :try_start_2
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    :goto_0
    iget-object v4, p0, Lcom/mobile/auth/q/a$a;->b:Lcom/cmic/sso/sdk/a;

    iget-object v0, p0, Lcom/mobile/auth/q/a$a;->a:Lcom/mobile/auth/q/a;

    invoke-static {v0}, Lcom/mobile/auth/q/a;->a(Lcom/mobile/auth/q/a;)Lcom/mobile/auth/e/a;

    move-result-object v1

    const-string v2, "200023"

    const-string v3, "\u767b\u5f55\u8d85\u65f6"

    const/4 v6, 0x0

    invoke-virtual/range {v1 .. v6}, Lcom/mobile/auth/e/a;->a(Ljava/lang/String;Ljava/lang/String;Lcom/cmic/sso/sdk/a;Lorg/json/JSONObject;Ljava/lang/Throwable;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception v0

    :try_start_3
    invoke-static {v0}, Lcom/mobile/auth/gatewayauth/a;->a(Ljava/lang/Throwable;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_1

    :catchall_1
    move-exception v0

    invoke-static {v0}, Lcom/mobile/auth/gatewayauth/a;->a(Ljava/lang/Throwable;)V

    :cond_0
    :goto_1
    return-void
.end method
