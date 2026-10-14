.class Lcom/mobile/auth/z/a$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/mobile/auth/aa/c;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mobile/auth/z/a;->a(Landroid/content/Context;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/content/Context;

.field final synthetic b:Lcom/mobile/auth/z/a;


# direct methods
.method constructor <init>(Lcom/mobile/auth/z/a;Landroid/content/Context;)V
    .locals 0

    iput-object p1, p0, Lcom/mobile/auth/z/a$2;->b:Lcom/mobile/auth/z/a;

    iput-object p2, p0, Lcom/mobile/auth/z/a$2;->a:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(ILjava/lang/String;)V
    .locals 5

    :try_start_0
    iget-object v0, p0, Lcom/mobile/auth/z/a$2;->b:Lcom/mobile/auth/z/a;

    monitor-enter v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    iget-object v1, p0, Lcom/mobile/auth/z/a$2;->b:Lcom/mobile/auth/z/a;

    invoke-static {v1}, Lcom/mobile/auth/z/a;->a(Lcom/mobile/auth/z/a;)Lcom/mobile/auth/z/b;

    move-result-object v1

    if-nez v1, :cond_0

    monitor-exit v0

    return-void

    :cond_0
    iget-object v1, p0, Lcom/mobile/auth/z/a$2;->b:Lcom/mobile/auth/z/a;

    invoke-static {v1}, Lcom/mobile/auth/z/a;->b(Lcom/mobile/auth/z/a;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    const/4 v1, 0x1

    if-ne p1, v1, :cond_2

    :try_start_2
    new-instance p1, Lorg/json/JSONObject;

    invoke-direct {p1, p2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string v1, "code"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "msg"

    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "data"

    invoke-virtual {p1, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string v3, "0"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/mobile/auth/z/a$2;->b:Lcom/mobile/auth/z/a;

    invoke-static {v1}, Lcom/mobile/auth/z/a;->c(Lcom/mobile/auth/z/a;)Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v1}, Lcom/mobile/auth/y/a;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string v1, "UTF-8"

    invoke-static {p1, v1}, Ljava/net/URLDecoder;->decode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string v3, "accessCode"

    invoke-virtual {v1, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iget-object v3, p0, Lcom/mobile/auth/z/a$2;->a:Landroid/content/Context;

    const-string v4, "1003"

    invoke-static {v3, v4, v1}, Lcom/mobile/auth/ab/c;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/mobile/auth/z/a$2;->b:Lcom/mobile/auth/z/a;

    invoke-static {v1}, Lcom/mobile/auth/z/a;->a(Lcom/mobile/auth/z/a;)Lcom/mobile/auth/z/b;

    move-result-object v1

    invoke-virtual {v1, v2, p1}, Lcom/mobile/auth/z/b;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    :cond_1
    iget-object v1, p0, Lcom/mobile/auth/z/a$2;->a:Landroid/content/Context;

    const-string v3, "1004"

    const-string v4, ""

    invoke-static {v1, v3, v4}, Lcom/mobile/auth/ab/c;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/mobile/auth/z/a$2;->b:Lcom/mobile/auth/z/a;

    invoke-static {v1}, Lcom/mobile/auth/z/a;->a(Lcom/mobile/auth/z/a;)Lcom/mobile/auth/z/b;

    move-result-object v1

    invoke-virtual {v1, v2, p1}, Lcom/mobile/auth/z/b;->b(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1

    :catch_0
    :try_start_3
    iget-object p1, p0, Lcom/mobile/auth/z/a$2;->b:Lcom/mobile/auth/z/a;

    invoke-static {p1}, Lcom/mobile/auth/z/a;->a(Lcom/mobile/auth/z/a;)Lcom/mobile/auth/z/b;

    move-result-object p1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "PC\u6570\u636e\u89e3\u6790\u5f02\u5e38("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, ")"

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    :goto_0
    invoke-virtual {p1, p2}, Lcom/mobile/auth/z/b;->a(Ljava/lang/String;)V

    goto :goto_1

    :cond_2
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_3

    iget-object p1, p0, Lcom/mobile/auth/z/a$2;->b:Lcom/mobile/auth/z/a;

    invoke-static {p1}, Lcom/mobile/auth/z/a;->a(Lcom/mobile/auth/z/a;)Lcom/mobile/auth/z/b;

    move-result-object p1

    const-string p2, "\u7f51\u7edc\u8bf7\u6c42\u5931\u8d25"

    goto :goto_0

    :cond_3
    iget-object p1, p0, Lcom/mobile/auth/z/a$2;->b:Lcom/mobile/auth/z/a;

    invoke-static {p1}, Lcom/mobile/auth/z/a;->a(Lcom/mobile/auth/z/a;)Lcom/mobile/auth/z/b;

    move-result-object p1

    goto :goto_0

    :goto_1
    iget-object p1, p0, Lcom/mobile/auth/z/a$2;->b:Lcom/mobile/auth/z/a;

    const/4 p2, 0x0

    invoke-static {p1, p2}, Lcom/mobile/auth/z/a;->a(Lcom/mobile/auth/z/a;Lcom/mobile/auth/z/b;)Lcom/mobile/auth/z/b;

    monitor-exit v0

    goto :goto_2

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    throw p1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    :catchall_1
    move-exception p1

    :try_start_5
    invoke-static {p1}, Lcom/mobile/auth/gatewayauth/a;->a(Ljava/lang/Throwable;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    goto :goto_2

    :catchall_2
    move-exception p1

    invoke-static {p1}, Lcom/mobile/auth/gatewayauth/a;->a(Ljava/lang/Throwable;)V

    :goto_2
    return-void
.end method
