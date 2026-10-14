.class Lcom/mobile/auth/q/c$2$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/mobile/auth/e/e;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mobile/auth/q/c$2;->a()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/mobile/auth/gatewayauth/model/MonitorStruct;

.field final synthetic b:Lcom/mobile/auth/q/c$2;


# direct methods
.method constructor <init>(Lcom/mobile/auth/q/c$2;Lcom/mobile/auth/gatewayauth/model/MonitorStruct;)V
    .locals 0

    iput-object p1, p0, Lcom/mobile/auth/q/c$2$1;->b:Lcom/mobile/auth/q/c$2;

    iput-object p2, p0, Lcom/mobile/auth/q/c$2$1;->a:Lcom/mobile/auth/gatewayauth/model/MonitorStruct;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(ILorg/json/JSONObject;)V
    .locals 10

    const-string p1, "resultString"

    const-string v0, "desc"

    const-string v1, "resultDesc"

    const-string v2, "token"

    if-nez p2, :cond_0

    :try_start_0
    new-instance p2, Lorg/json/JSONObject;

    invoke-direct {p2}, Lorg/json/JSONObject;-><init>()V

    :cond_0
    const-string v3, "resultCode"

    invoke-virtual {p2, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p2, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const-string v4, ""

    if-eqz v3, :cond_1

    :try_start_1
    invoke-virtual {p2, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    :goto_0
    move-object v7, p1

    goto :goto_1

    :cond_1
    invoke-virtual {p2, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-virtual {p2, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_2
    invoke-virtual {p2, p1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-virtual {p2, p1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_3
    move-object v7, v4

    :goto_1
    const-string p1, "traceId"

    invoke-virtual {p2, p1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/mobile/auth/q/c$2$1;->a:Lcom/mobile/auth/gatewayauth/model/MonitorStruct;

    invoke-virtual {v1, p1}, Lcom/mobile/auth/gatewayauth/model/MonitorStruct;->setCarrierTraceId(Ljava/lang/String;)V

    iget-object p1, p0, Lcom/mobile/auth/q/c$2$1;->b:Lcom/mobile/auth/q/c$2;

    iget-object p1, p1, Lcom/mobile/auth/q/c$2;->c:Lcom/mobile/auth/q/c;

    invoke-static {p1}, Lcom/mobile/auth/q/c;->a(Lcom/mobile/auth/q/c;)Lcom/mobile/auth/o/a;

    move-result-object p1

    const/4 v1, 0x7

    new-array v1, v1, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v5, "cmcc\uff1a"

    aput-object v5, v1, v3

    const/4 v3, 0x1

    const-string v5, "getLoginToken:code="

    aput-object v5, v1, v3

    const/4 v3, 0x2

    aput-object v6, v1, v3

    const/4 v3, 0x3

    const-string v5, ",msg="

    aput-object v5, v1, v3

    const/4 v3, 0x4

    aput-object v7, v1, v3

    const/4 v3, 0x5

    const-string v5, ",json="

    aput-object v5, v1, v3

    const/4 v3, 0x6

    if-nez p2, :cond_4

    goto :goto_2

    :cond_4
    invoke-virtual {p2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v4

    :goto_2
    aput-object v4, v1, v3

    invoke-virtual {p1, v1}, Lcom/mobile/auth/o/a;->a([Ljava/lang/String;)V

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_5

    iget-object p1, p0, Lcom/mobile/auth/q/c$2$1;->a:Lcom/mobile/auth/gatewayauth/model/MonitorStruct;

    invoke-virtual {p2, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/mobile/auth/gatewayauth/model/MonitorStruct;->setAccessCode(Ljava/lang/String;)V

    iget-object p1, p0, Lcom/mobile/auth/q/c$2$1;->b:Lcom/mobile/auth/q/c$2;

    iget-object v4, p1, Lcom/mobile/auth/q/c$2;->c:Lcom/mobile/auth/q/c;

    const-string p1, ""

    const-string v7, ""

    const/4 v8, 0x1

    iget-object v9, p0, Lcom/mobile/auth/q/c$2$1;->a:Lcom/mobile/auth/gatewayauth/model/MonitorStruct;

    move-object v5, v6

    move-object v6, p1

    invoke-static/range {v4 .. v9}, Lcom/mobile/auth/q/c;->a(Lcom/mobile/auth/q/c;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLcom/mobile/auth/gatewayauth/model/MonitorStruct;)V

    iget-object p1, p0, Lcom/mobile/auth/q/c$2$1;->b:Lcom/mobile/auth/q/c$2;

    iget-object p1, p1, Lcom/mobile/auth/q/c$2;->b:Lcom/mobile/auth/gatewayauth/manager/RequestCallback;

    invoke-static {}, Lcom/mobile/auth/gatewayauth/manager/a$a;->a()Lcom/mobile/auth/gatewayauth/manager/a$a$a;

    move-result-object v0

    invoke-virtual {p2, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Lcom/mobile/auth/gatewayauth/manager/a$a$a;->b(Ljava/lang/String;)Lcom/mobile/auth/gatewayauth/manager/a$a$a;

    move-result-object p2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    const-wide/32 v2, 0x1d4c0

    add-long/2addr v0, v2

    invoke-virtual {p2, v0, v1}, Lcom/mobile/auth/gatewayauth/manager/a$a$a;->a(J)Lcom/mobile/auth/gatewayauth/manager/a$a$a;

    move-result-object p2

    invoke-virtual {p2}, Lcom/mobile/auth/gatewayauth/manager/a$a$a;->a()Lcom/mobile/auth/gatewayauth/manager/a$a;

    move-result-object p2

    invoke-interface {p1, p2}, Lcom/mobile/auth/gatewayauth/manager/RequestCallback;->onSuccess(Ljava/lang/Object;)V

    goto :goto_3

    :cond_5
    iget-object p1, p0, Lcom/mobile/auth/q/c$2$1;->b:Lcom/mobile/auth/q/c$2;

    iget-object v4, p1, Lcom/mobile/auth/q/c$2;->c:Lcom/mobile/auth/q/c;

    iget-object v5, p1, Lcom/mobile/auth/q/c$2;->b:Lcom/mobile/auth/gatewayauth/manager/RequestCallback;

    invoke-virtual {p2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v8

    iget-object v9, p0, Lcom/mobile/auth/q/c$2$1;->a:Lcom/mobile/auth/gatewayauth/model/MonitorStruct;

    invoke-static/range {v4 .. v9}, Lcom/mobile/auth/q/c;->b(Lcom/mobile/auth/q/c;Lcom/mobile/auth/gatewayauth/manager/RequestCallback;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/mobile/auth/gatewayauth/model/MonitorStruct;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_3

    :catchall_0
    move-exception p1

    :try_start_2
    invoke-static {p1}, Lcom/mobile/auth/gatewayauth/a;->a(Ljava/lang/Throwable;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    goto :goto_3

    :catchall_1
    move-exception p1

    invoke-static {p1}, Lcom/mobile/auth/gatewayauth/a;->a(Ljava/lang/Throwable;)V

    :goto_3
    return-void
.end method
