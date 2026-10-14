.class Lcom/mobile/auth/q/c$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/mobile/auth/e/e;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mobile/auth/q/c;->d(Lcom/mobile/auth/gatewayauth/manager/RequestCallback;Lcom/mobile/auth/gatewayauth/manager/a$b;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/mobile/auth/gatewayauth/model/MonitorStruct;

.field final synthetic b:Lcom/mobile/auth/gatewayauth/manager/RequestCallback;

.field final synthetic c:Lcom/mobile/auth/q/c;


# direct methods
.method constructor <init>(Lcom/mobile/auth/q/c;Lcom/mobile/auth/gatewayauth/model/MonitorStruct;Lcom/mobile/auth/gatewayauth/manager/RequestCallback;)V
    .locals 0

    iput-object p1, p0, Lcom/mobile/auth/q/c$1;->c:Lcom/mobile/auth/q/c;

    iput-object p2, p0, Lcom/mobile/auth/q/c$1;->a:Lcom/mobile/auth/gatewayauth/model/MonitorStruct;

    iput-object p3, p0, Lcom/mobile/auth/q/c$1;->b:Lcom/mobile/auth/gatewayauth/manager/RequestCallback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(ILorg/json/JSONObject;)V
    .locals 9

    const-string p1, "resultString"

    const-string v0, "desc"

    const-string v1, "resultDesc"

    if-nez p2, :cond_0

    :try_start_0
    new-instance p2, Lorg/json/JSONObject;

    invoke-direct {p2}, Lorg/json/JSONObject;-><init>()V

    :cond_0
    const-string v2, "resultCode"

    invoke-virtual {p2, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p2, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const-string v3, ""

    if-eqz v2, :cond_1

    :try_start_1
    invoke-virtual {p2, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    :goto_0
    move-object v6, p1

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
    move-object v6, v3

    :goto_1
    const-string p1, "traceId"

    invoke-virtual {p2, p1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "securityphone"

    invoke-virtual {p2, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/mobile/auth/q/c$1;->c:Lcom/mobile/auth/q/c;

    invoke-static {v1}, Lcom/mobile/auth/q/c;->a(Lcom/mobile/auth/q/c;)Lcom/mobile/auth/o/a;

    move-result-object v1

    const/4 v2, 0x7

    new-array v2, v2, [Ljava/lang/String;

    const/4 v4, 0x0

    const-string v7, "cmcc\uff1a"

    aput-object v7, v2, v4

    const/4 v4, 0x1

    const-string v7, "getLoginInfo:code="

    aput-object v7, v2, v4

    const/4 v4, 0x2

    aput-object v5, v2, v4

    const/4 v4, 0x3

    const-string v7, ",msg="

    aput-object v7, v2, v4

    const/4 v4, 0x4

    aput-object v6, v2, v4

    const/4 v4, 0x5

    const-string v7, ",json="

    aput-object v7, v2, v4

    const/4 v4, 0x6

    if-nez p2, :cond_4

    goto :goto_2

    :cond_4
    invoke-virtual {p2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v3

    :goto_2
    aput-object v3, v2, v4

    invoke-virtual {v1, v2}, Lcom/mobile/auth/o/a;->a([Ljava/lang/String;)V

    iget-object v1, p0, Lcom/mobile/auth/q/c$1;->a:Lcom/mobile/auth/gatewayauth/model/MonitorStruct;

    invoke-virtual {v1, p1}, Lcom/mobile/auth/gatewayauth/model/MonitorStruct;->setCarrierTraceId(Ljava/lang/String;)V

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_5

    iget-object p1, p0, Lcom/mobile/auth/q/c$1;->b:Lcom/mobile/auth/gatewayauth/manager/RequestCallback;

    invoke-static {}, Lcom/mobile/auth/gatewayauth/manager/a$a;->a()Lcom/mobile/auth/gatewayauth/manager/a$a$a;

    move-result-object p2

    invoke-virtual {p2, v0}, Lcom/mobile/auth/gatewayauth/manager/a$a$a;->a(Ljava/lang/String;)Lcom/mobile/auth/gatewayauth/manager/a$a$a;

    move-result-object p2

    invoke-virtual {p2}, Lcom/mobile/auth/gatewayauth/manager/a$a$a;->a()Lcom/mobile/auth/gatewayauth/manager/a$a;

    move-result-object p2

    invoke-interface {p1, p2}, Lcom/mobile/auth/gatewayauth/manager/RequestCallback;->onSuccess(Ljava/lang/Object;)V

    iget-object p1, p0, Lcom/mobile/auth/q/c$1;->a:Lcom/mobile/auth/gatewayauth/model/MonitorStruct;

    invoke-virtual {p1, v0}, Lcom/mobile/auth/gatewayauth/model/MonitorStruct;->setPhoneNumber(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/mobile/auth/q/c$1;->c:Lcom/mobile/auth/q/c;

    const-string p1, ""

    const-string v6, ""

    const/4 v7, 0x1

    iget-object v8, p0, Lcom/mobile/auth/q/c$1;->a:Lcom/mobile/auth/gatewayauth/model/MonitorStruct;

    move-object v4, v5

    move-object v5, p1

    invoke-static/range {v3 .. v8}, Lcom/mobile/auth/q/c;->a(Lcom/mobile/auth/q/c;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLcom/mobile/auth/gatewayauth/model/MonitorStruct;)V

    goto :goto_3

    :cond_5
    iget-object v3, p0, Lcom/mobile/auth/q/c$1;->c:Lcom/mobile/auth/q/c;

    iget-object v4, p0, Lcom/mobile/auth/q/c$1;->b:Lcom/mobile/auth/gatewayauth/manager/RequestCallback;

    invoke-virtual {p2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v7

    iget-object v8, p0, Lcom/mobile/auth/q/c$1;->a:Lcom/mobile/auth/gatewayauth/model/MonitorStruct;

    invoke-static/range {v3 .. v8}, Lcom/mobile/auth/q/c;->a(Lcom/mobile/auth/q/c;Lcom/mobile/auth/gatewayauth/manager/RequestCallback;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/mobile/auth/gatewayauth/model/MonitorStruct;)V
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
