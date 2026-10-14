.class Lcom/mobile/auth/e/f$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/mobile/auth/i/b;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mobile/auth/e/f;->b(Lcom/cmic/sso/sdk/a;Lcom/mobile/auth/e/g;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/cmic/sso/sdk/a;

.field final synthetic b:Lcom/mobile/auth/e/g;

.field final synthetic c:Lcom/mobile/auth/e/f;


# direct methods
.method constructor <init>(Lcom/mobile/auth/e/f;Lcom/cmic/sso/sdk/a;Lcom/mobile/auth/e/g;)V
    .locals 0

    iput-object p1, p0, Lcom/mobile/auth/e/f$a;->c:Lcom/mobile/auth/e/f;

    iput-object p2, p0, Lcom/mobile/auth/e/f$a;->a:Lcom/cmic/sso/sdk/a;

    iput-object p3, p0, Lcom/mobile/auth/e/f$a;->b:Lcom/mobile/auth/e/g;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONObject;)V
    .locals 17

    move-object/from16 v1, p0

    move-object/from16 v0, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    const-string v4, "true"

    const-string v5, "openId"

    const-string v6, "sourceid"

    const-string v7, "phonescrip"

    const-string v8, "securityphone"

    iget-object v9, v1, Lcom/mobile/auth/e/f$a;->c:Lcom/mobile/auth/e/f;

    invoke-static {v9}, Lcom/mobile/auth/e/f;->a(Lcom/mobile/auth/e/f;)Landroid/content/Context;

    move-result-object v9

    invoke-static {v9}, Lcom/mobile/auth/k/z;->a(Landroid/content/Context;)Lcom/mobile/auth/k/z;

    move-result-object v9

    invoke-virtual {v9}, Lcom/mobile/auth/k/z;->a()V

    iget-object v9, v1, Lcom/mobile/auth/e/f$a;->a:Lcom/cmic/sso/sdk/a;

    const-string v10, "interfacecode"

    const-string v11, ""

    invoke-virtual {v9, v10, v11}, Lcom/cmic/sso/sdk/a;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    iget-object v12, v1, Lcom/mobile/auth/e/f$a;->a:Lcom/cmic/sso/sdk/a;

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v13, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v9, ";"

    invoke-virtual {v13, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v10, v13}, Lcom/cmic/sso/sdk/a;->b(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v12

    iget-object v10, v1, Lcom/mobile/auth/e/f$a;->a:Lcom/cmic/sso/sdk/a;

    const-string v14, "request_start_time"

    invoke-virtual {v10, v14}, Lcom/cmic/sso/sdk/a;->b(Ljava/lang/String;)J

    move-result-wide v14

    sub-long/2addr v12, v14

    iget-object v10, v1, Lcom/mobile/auth/e/f$a;->a:Lcom/cmic/sso/sdk/a;

    const-string v14, "interfaceelasped"

    invoke-virtual {v10, v14, v11}, Lcom/cmic/sso/sdk/a;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    iget-object v15, v1, Lcom/mobile/auth/e/f$a;->a:Lcom/cmic/sso/sdk/a;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v12, v13}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v15, v14, v2}, Lcom/cmic/sso/sdk/a;->b(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "downLoadConfig"

    invoke-virtual {v3, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v9

    const-string v10, "1"

    if-eqz v9, :cond_0

    iget-object v9, v1, Lcom/mobile/auth/e/f$a;->a:Lcom/cmic/sso/sdk/a;

    invoke-virtual {v3, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v10, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    invoke-virtual {v9, v2, v14}, Lcom/cmic/sso/sdk/a;->b(Ljava/lang/String;Z)V

    :cond_0
    const-string v2, "103000"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    const-string v14, "AuthBusiness"

    if-eqz v9, :cond_6

    const-string v0, "resultdata"

    invoke-virtual {v3, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-nez v9, :cond_2

    invoke-virtual {v0, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_1

    goto :goto_0

    :cond_1
    iget-object v3, v1, Lcom/mobile/auth/e/f$a;->a:Lcom/cmic/sso/sdk/a;

    sget-object v9, Lcom/cmic/sso/sdk/b;->a:Ljava/lang/String;

    invoke-virtual {v3, v9}, Lcom/cmic/sso/sdk/a;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3, v0}, Lcom/mobile/auth/k/a;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    :cond_2
    :goto_0
    invoke-virtual/range {p3 .. p3}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_1
    :try_start_0
    new-instance v9, Lorg/json/JSONObject;

    invoke-direct {v9, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9, v7}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_4

    :try_start_1
    invoke-static {v7, v10}, Lcom/mobile/auth/k/f;->b(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, v1, Lcom/mobile/auth/e/f$a;->c:Lcom/mobile/auth/e/f;

    iget-object v11, v1, Lcom/mobile/auth/e/f$a;->a:Lcom/cmic/sso/sdk/a;

    invoke-static {v0, v9, v10, v11}, Lcom/mobile/auth/e/f;->a(Lcom/mobile/auth/e/f;Lorg/json/JSONObject;Ljava/lang/String;Lcom/cmic/sso/sdk/a;)V

    invoke-virtual {v9, v8}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_3

    :try_start_2
    invoke-static {v8, v11}, Lcom/mobile/auth/k/p;->a(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v9, v5}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v16
    :try_end_2
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_2

    :try_start_3
    invoke-virtual {v9, v6}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3
    :try_end_3
    .catch Lorg/json/JSONException; {:try_start_3 .. :try_end_3} :catch_1

    :try_start_4
    invoke-static {v6, v3}, Lcom/mobile/auth/k/p;->a(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual/range {v16 .. v16}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_3

    const-string v0, "pcid"

    invoke-virtual {v9, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v16

    :cond_3
    const-string v0, "capaids"

    const-string v15, "acd"

    invoke-virtual {v9, v0, v15}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v9, "allcapaids"

    invoke-static {v9, v0}, Lcom/mobile/auth/k/p;->a(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "validated"

    const/4 v9, 0x1

    invoke-static {v0, v9}, Lcom/mobile/auth/k/p;->a(Ljava/lang/String;Z)V
    :try_end_4
    .catch Lorg/json/JSONException; {:try_start_4 .. :try_end_4} :catch_0

    goto :goto_5

    :catch_0
    move-exception v0

    goto :goto_4

    :catch_1
    move-exception v0

    const/4 v3, 0x0

    goto :goto_4

    :catch_2
    move-exception v0

    const/4 v3, 0x0

    goto :goto_3

    :catch_3
    move-exception v0

    const/4 v3, 0x0

    goto :goto_2

    :catch_4
    move-exception v0

    const/4 v3, 0x0

    const/4 v10, 0x0

    :goto_2
    const/4 v11, 0x0

    :goto_3
    const/16 v16, 0x0

    :goto_4
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    :goto_5
    move-object/from16 v0, v16

    iget-object v9, v1, Lcom/mobile/auth/e/f$a;->a:Lcom/cmic/sso/sdk/a;

    invoke-virtual {v9, v5, v0}, Lcom/cmic/sso/sdk/a;->b(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, v1, Lcom/mobile/auth/e/f$a;->a:Lcom/cmic/sso/sdk/a;

    invoke-virtual {v0, v7, v10}, Lcom/cmic/sso/sdk/a;->b(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, v1, Lcom/mobile/auth/e/f$a;->a:Lcom/cmic/sso/sdk/a;

    invoke-virtual {v0, v8, v11}, Lcom/cmic/sso/sdk/a;->b(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, v1, Lcom/mobile/auth/e/f$a;->a:Lcom/cmic/sso/sdk/a;

    invoke-virtual {v0, v6, v3}, Lcom/cmic/sso/sdk/a;->b(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v8, v11}, Lcom/mobile/auth/k/p;->a(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, v1, Lcom/mobile/auth/e/f$a;->a:Lcom/cmic/sso/sdk/a;

    const-string v3, "logintype"

    invoke-virtual {v0, v3}, Lcom/cmic/sso/sdk/a;->a(Ljava/lang/String;)I

    move-result v0

    const/4 v5, 0x3

    if-ne v0, v5, :cond_4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "displayTimes : "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v12, v13}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v14, v0}, Lcom/mobile/auth/k/f;->a(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3}, Lorg/json/JSONObject;-><init>()V

    :try_start_5
    const-string v0, "resultCode"

    invoke-virtual {v3, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v0, "desc"

    invoke-virtual {v3, v0, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_5
    .catch Lorg/json/JSONException; {:try_start_5 .. :try_end_5} :catch_5

    goto :goto_6

    :catch_5
    move-exception v0

    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    :goto_6
    iget-object v0, v1, Lcom/mobile/auth/e/f$a;->b:Lcom/mobile/auth/e/g;

    iget-object v5, v1, Lcom/mobile/auth/e/f$a;->a:Lcom/cmic/sso/sdk/a;

    invoke-interface {v0, v2, v4, v5, v3}, Lcom/mobile/auth/e/g;->a(Ljava/lang/String;Ljava/lang/String;Lcom/cmic/sso/sdk/a;Lorg/json/JSONObject;)V

    goto/16 :goto_9

    :cond_4
    iget-object v0, v1, Lcom/mobile/auth/e/f$a;->a:Lcom/cmic/sso/sdk/a;

    invoke-virtual {v0, v3}, Lcom/cmic/sso/sdk/a;->a(Ljava/lang/String;)I

    move-result v0

    const/4 v3, 0x1

    if-ne v3, v0, :cond_5

    iget-object v0, v1, Lcom/mobile/auth/e/f$a;->b:Lcom/mobile/auth/e/g;

    iget-object v3, v1, Lcom/mobile/auth/e/f$a;->a:Lcom/cmic/sso/sdk/a;

    const-string v4, "\u663e\u793a\u767b\u5f55\u53d6\u53f7\u6210\u529f"

    const/4 v5, 0x0

    invoke-interface {v0, v2, v4, v3, v5}, Lcom/mobile/auth/e/g;->a(Ljava/lang/String;Ljava/lang/String;Lcom/cmic/sso/sdk/a;Lorg/json/JSONObject;)V

    goto/16 :goto_9

    :cond_5
    iget-object v0, v1, Lcom/mobile/auth/e/f$a;->c:Lcom/mobile/auth/e/f;

    iget-object v2, v1, Lcom/mobile/auth/e/f$a;->a:Lcom/cmic/sso/sdk/a;

    iget-object v3, v1, Lcom/mobile/auth/e/f$a;->b:Lcom/mobile/auth/e/g;

    invoke-virtual {v0, v2, v3}, Lcom/mobile/auth/e/f;->a(Lcom/cmic/sso/sdk/a;Lcom/mobile/auth/e/g;)V

    goto :goto_9

    :cond_6
    iget-object v2, v1, Lcom/mobile/auth/e/f$a;->a:Lcom/cmic/sso/sdk/a;

    const-string v4, "use_http_get_phone_scrip"

    const/4 v5, 0x1

    invoke-virtual {v2, v4, v5}, Lcom/cmic/sso/sdk/a;->a(Ljava/lang/String;Z)Z

    move-result v2

    if-nez v2, :cond_9

    const-string v2, "retry"

    invoke-virtual {v3, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v10, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    const-string v5, "degrade"

    if-eqz v2, :cond_7

    const-string v2, "https\u53d6\u53f7\u89e6\u53d1\u670d\u52a1\u7aef\u964d\u7ea7\u7b56\u7565"

    invoke-static {v14, v2}, Lcom/mobile/auth/k/f;->a(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "retryUrl"

    invoke-virtual {v3, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_7

    iget-object v0, v1, Lcom/mobile/auth/e/f$a;->a:Lcom/cmic/sso/sdk/a;

    invoke-virtual {v0, v2, v6}, Lcom/cmic/sso/sdk/a;->b(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, v1, Lcom/mobile/auth/e/f$a;->a:Lcom/cmic/sso/sdk/a;

    const-string v2, "server"

    :goto_7
    invoke-virtual {v0, v5, v2}, Lcom/cmic/sso/sdk/a;->b(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, v1, Lcom/mobile/auth/e/f$a;->a:Lcom/cmic/sso/sdk/a;

    const/4 v2, 0x1

    invoke-virtual {v0, v4, v2}, Lcom/cmic/sso/sdk/a;->b(Ljava/lang/String;Z)V

    iget-object v0, v1, Lcom/mobile/auth/e/f$a;->c:Lcom/mobile/auth/e/f;

    iget-object v2, v1, Lcom/mobile/auth/e/f$a;->a:Lcom/cmic/sso/sdk/a;

    iget-object v3, v1, Lcom/mobile/auth/e/f$a;->b:Lcom/mobile/auth/e/g;

    invoke-static {v0, v2, v3}, Lcom/mobile/auth/e/f;->a(Lcom/mobile/auth/e/f;Lcom/cmic/sso/sdk/a;Lcom/mobile/auth/e/g;)V

    return-void

    :cond_7
    const-string v2, "200072"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_8

    const-string v0, "https\u53d6\u53f7\u89e6\u53d1\u672c\u5730\u964d\u7ea7\u7b56\u7565"

    invoke-static {v14, v0}, Lcom/mobile/auth/k/f;->a(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, v1, Lcom/mobile/auth/e/f$a;->a:Lcom/cmic/sso/sdk/a;

    const-string v2, "local"

    goto :goto_7

    :cond_8
    iget-object v2, v1, Lcom/mobile/auth/e/f$a;->b:Lcom/mobile/auth/e/g;

    iget-object v4, v1, Lcom/mobile/auth/e/f$a;->a:Lcom/cmic/sso/sdk/a;

    move-object/from16 v5, p2

    goto :goto_8

    :cond_9
    move-object/from16 v5, p2

    iget-object v2, v1, Lcom/mobile/auth/e/f$a;->b:Lcom/mobile/auth/e/g;

    iget-object v4, v1, Lcom/mobile/auth/e/f$a;->a:Lcom/cmic/sso/sdk/a;

    :goto_8
    invoke-interface {v2, v0, v5, v4, v3}, Lcom/mobile/auth/e/g;->a(Ljava/lang/String;Ljava/lang/String;Lcom/cmic/sso/sdk/a;Lorg/json/JSONObject;)V

    :goto_9
    return-void
.end method
