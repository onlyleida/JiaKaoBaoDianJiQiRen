.class public Lcom/mobile/auth/gatewayauth/network/a;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "TT;)TT;"
        }
    .end annotation

    :try_start_0
    invoke-static {p0, p1, p2}, Lcom/mobile/auth/gatewayauth/network/a;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p0

    const-string p1, ""

    invoke-interface {p0, p2, p1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/nirvana/tools/core/EncodeUtil;->decode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    instance-of p1, p3, Ljava/lang/Integer;

    if-eqz p1, :cond_0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object p0

    return-object p0

    :cond_0
    instance-of p1, p3, Ljava/lang/Boolean;

    if-eqz p1, :cond_1

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0

    :cond_1
    instance-of p1, p3, Ljava/lang/Long;

    if-eqz p1, :cond_2

    invoke-static {p0}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object p0

    return-object p0

    :cond_2
    instance-of p1, p3, Ljava/lang/String;

    if-eqz p1, :cond_3

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_3
    new-instance p0, Ljava/lang/Exception;

    const-string p1, "unsupported type"

    invoke-direct {p0, p1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_4
    return-object p3

    :catchall_0
    move-exception p0

    const/4 p1, 0x0

    :try_start_1
    invoke-static {p0}, Lcom/mobile/auth/gatewayauth/a;->a(Ljava/lang/Throwable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    return-object p1

    :catchall_1
    move-exception p0

    invoke-static {p0}, Lcom/mobile/auth/gatewayauth/a;->a(Ljava/lang/Throwable;)V

    return-object p1

    :catch_0
    return-object p3
.end method

.method public static declared-synchronized a(Landroid/content/Context;)Ljava/lang/String;
    .locals 4

    const-class v0, Lcom/mobile/auth/gatewayauth/network/a;

    monitor-enter v0

    :try_start_0
    const-string v1, "AUTH_UT_DATA"

    const-string v2, "AUTH_FLAG_LIMIT_GET_CONFIG_KEY"

    const-string v3, ""

    invoke-static {p0, v1, v2, v3}, Lcom/mobile/auth/gatewayauth/network/a;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object p0

    :catchall_0
    move-exception p0

    const/4 v1, 0x0

    :try_start_1
    invoke-static {p0}, Lcom/mobile/auth/gatewayauth/a;->a(Ljava/lang/Throwable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    monitor-exit v0

    return-object v1

    :catchall_1
    move-exception p0

    :try_start_2
    invoke-static {p0}, Lcom/mobile/auth/gatewayauth/a;->a(Ljava/lang/Throwable;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    monitor-exit v0

    return-object v1

    :catchall_2
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method public static declared-synchronized a(Landroid/content/Context;Ljava/lang/String;)V
    .locals 3

    const-class v0, Lcom/mobile/auth/gatewayauth/network/a;

    monitor-enter v0

    :try_start_0
    const-string v1, "AUTH_UT_DATA"

    const-string v2, "AUTH_FLAG_LIMIT_GET_CONFIG_KEY"

    invoke-static {p0, v1, v2, p1}, Lcom/mobile/auth/gatewayauth/network/a;->b(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p0

    :try_start_1
    invoke-static {p0}, Lcom/mobile/auth/gatewayauth/a;->a(Ljava/lang/Throwable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_0

    :catchall_1
    move-exception p0

    :try_start_2
    invoke-static {p0}, Lcom/mobile/auth/gatewayauth/a;->a(Ljava/lang/Throwable;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    :goto_0
    monitor-exit v0

    return-void

    :catchall_2
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method public static declared-synchronized a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Object;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "TT;)V"
        }
    .end annotation

    const-class v0, Lcom/mobile/auth/gatewayauth/network/a;

    monitor-enter v0

    :try_start_0
    const-string v1, "AUTH_APP_INFO"

    invoke-static {p0, v1, p1, p2}, Lcom/mobile/auth/gatewayauth/network/a;->b(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p0

    :try_start_1
    invoke-static {p0}, Lcom/mobile/auth/gatewayauth/a;->a(Ljava/lang/Throwable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_0

    :catchall_1
    move-exception p0

    :try_start_2
    invoke-static {p0}, Lcom/mobile/auth/gatewayauth/a;->a(Ljava/lang/Throwable;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    :goto_0
    monitor-exit v0

    return-void

    :catchall_2
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method public static declared-synchronized a(Landroid/content/Context;Z)V
    .locals 3

    const-class v0, Lcom/mobile/auth/gatewayauth/network/a;

    monitor-enter v0

    :try_start_0
    const-string v1, "AUTH_UT_DATA"

    const-string v2, "AUTH_FLAG_CLOSE_GET_CONFIG_KEY"

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    invoke-static {p0, v1, v2, p1}, Lcom/mobile/auth/gatewayauth/network/a;->b(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p0

    :try_start_1
    invoke-static {p0}, Lcom/mobile/auth/gatewayauth/a;->a(Ljava/lang/Throwable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_0

    :catchall_1
    move-exception p0

    :try_start_2
    invoke-static {p0}, Lcom/mobile/auth/gatewayauth/a;->a(Ljava/lang/Throwable;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    :goto_0
    monitor-exit v0

    return-void

    :catchall_2
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method public static a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 1

    const/4 v0, 0x0

    :try_start_0
    invoke-virtual {p0, p1, v0}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p0

    invoke-interface {p0, p2}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return p0

    :catchall_0
    move-exception p0

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

.method public static declared-synchronized b(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "TT;)TT;"
        }
    .end annotation

    const-class v0, Lcom/mobile/auth/gatewayauth/network/a;

    monitor-enter v0

    :try_start_0
    const-string v1, "AUTH_APP_INFO"

    invoke-static {p0, v1, p1, p2}, Lcom/mobile/auth/gatewayauth/network/a;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object p0

    :catchall_0
    move-exception p0

    const/4 p1, 0x0

    :try_start_1
    invoke-static {p0}, Lcom/mobile/auth/gatewayauth/a;->a(Ljava/lang/Throwable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    monitor-exit v0

    return-object p1

    :catchall_1
    move-exception p0

    :try_start_2
    invoke-static {p0}, Lcom/mobile/auth/gatewayauth/a;->a(Ljava/lang/Throwable;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    monitor-exit v0

    return-object p1

    :catchall_2
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method public static declared-synchronized b(Landroid/content/Context;Ljava/lang/String;)V
    .locals 3

    const-class v0, Lcom/mobile/auth/gatewayauth/network/a;

    monitor-enter v0

    :try_start_0
    const-string v1, "AUTH_UT_DATA"

    const-string v2, "AUTH_SDK_CONFIG_KEY"

    invoke-static {p0, v1, v2, p1}, Lcom/mobile/auth/gatewayauth/network/a;->b(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p0

    :try_start_1
    invoke-static {p0}, Lcom/mobile/auth/gatewayauth/a;->a(Ljava/lang/Throwable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_0

    :catchall_1
    move-exception p0

    :try_start_2
    invoke-static {p0}, Lcom/mobile/auth/gatewayauth/a;->a(Ljava/lang/Throwable;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    :goto_0
    monitor-exit v0

    return-void

    :catchall_2
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method public static declared-synchronized b(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 4

    const-class v0, Lcom/mobile/auth/gatewayauth/network/a;

    monitor-enter v0

    :try_start_0
    const-string v1, "AUTH_UT_DATA"

    const-string v2, ""

    invoke-static {p0, v1, p1, v2}, Lcom/mobile/auth/gatewayauth/network/a;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    const/4 v2, 0x0

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    invoke-static {v1}, Lcom/nirvana/tools/jsoner/JSONUtils;->json2MapForStringInteger(Ljava/lang/String;)Ljava/util/Map;

    move-result-object v2

    :cond_0
    const/4 v1, 0x1

    if-eqz v2, :cond_1

    invoke-interface {v2}, Ljava/util/Map;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_1

    invoke-interface {v2, p2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    add-int/2addr v3, v1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    :goto_0
    invoke-interface {v2, p2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    :cond_1
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    goto :goto_0

    :goto_1
    const-string p2, "AUTH_UT_DATA"

    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, v2}, Lorg/json/JSONObject;-><init>(Ljava/util/Map;)V

    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, p2, p1, v1}, Lcom/mobile/auth/gatewayauth/network/a;->b(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_2

    :catchall_0
    move-exception p0

    :try_start_1
    invoke-static {p0}, Lcom/mobile/auth/gatewayauth/a;->a(Ljava/lang/Throwable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_2

    :catchall_1
    move-exception p0

    :try_start_2
    invoke-static {p0}, Lcom/mobile/auth/gatewayauth/a;->a(Ljava/lang/Throwable;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    :goto_2
    monitor-exit v0

    return-void

    :catchall_2
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method public static b(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "TT;)V"
        }
    .end annotation

    const/4 v0, 0x0

    :try_start_0
    invoke-virtual {p0, p1, v0}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p0

    invoke-interface {p0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    invoke-virtual {p3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/nirvana/tools/core/EncodeUtil;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-interface {p0, p2, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->commit()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception p0

    goto :goto_0

    :catch_0
    move-exception p0

    :try_start_1
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    :goto_0
    :try_start_2
    invoke-static {p0}, Lcom/mobile/auth/gatewayauth/a;->a(Ljava/lang/Throwable;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    goto :goto_1

    :catchall_1
    move-exception p0

    invoke-static {p0}, Lcom/mobile/auth/gatewayauth/a;->a(Ljava/lang/Throwable;)V

    :goto_1
    return-void
.end method

.method public static declared-synchronized b(Landroid/content/Context;)Z
    .locals 4

    const-class v0, Lcom/mobile/auth/gatewayauth/network/a;

    monitor-enter v0

    :try_start_0
    const-string v1, "AUTH_UT_DATA"

    const-string v2, "AUTH_FLAG_CLOSE_GET_CONFIG_KEY"

    sget-object v3, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-static {p0, v1, v2, v3}, Lcom/mobile/auth/gatewayauth/network/a;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return p0

    :catchall_0
    move-exception p0

    const/4 v1, 0x0

    :try_start_1
    invoke-static {p0}, Lcom/mobile/auth/gatewayauth/a;->a(Ljava/lang/Throwable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    monitor-exit v0

    return v1

    :catchall_1
    move-exception p0

    :try_start_2
    invoke-static {p0}, Lcom/mobile/auth/gatewayauth/a;->a(Ljava/lang/Throwable;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    monitor-exit v0

    return v1

    :catchall_2
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method public static declared-synchronized c(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I
    .locals 3

    const-class v0, Lcom/mobile/auth/gatewayauth/network/a;

    monitor-enter v0

    :try_start_0
    const-string v1, "AUTH_UT_DATA"

    const-string v2, ""

    invoke-static {p0, v1, p1, v2}, Lcom/mobile/auth/gatewayauth/network/a;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    const/4 p1, 0x0

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-static {p0}, Lcom/nirvana/tools/jsoner/JSONUtils;->json2MapForStringInteger(Ljava/lang/String;)Ljava/util/Map;

    move-result-object p1

    :cond_0
    if-eqz p1, :cond_1

    invoke-interface {p1}, Ljava/util/Map;->isEmpty()Z

    move-result p0

    if-nez p0, :cond_1

    invoke-interface {p1, p2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_1

    invoke-interface {p1, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return p0

    :cond_1
    const/4 p0, 0x0

    monitor-exit v0

    return p0

    :catchall_0
    move-exception p0

    const/4 p1, -0x1

    :try_start_1
    invoke-static {p0}, Lcom/mobile/auth/gatewayauth/a;->a(Ljava/lang/Throwable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    monitor-exit v0

    return p1

    :catchall_1
    move-exception p0

    :try_start_2
    invoke-static {p0}, Lcom/mobile/auth/gatewayauth/a;->a(Ljava/lang/Throwable;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    monitor-exit v0

    return p1

    :catchall_2
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method public static declared-synchronized c(Landroid/content/Context;)Lcom/mobile/auth/gatewayauth/model/ConfigRule;
    .locals 5

    const-class v0, Lcom/mobile/auth/gatewayauth/network/a;

    monitor-enter v0

    const/4 v1, 0x0

    :try_start_0
    const-string v2, "AUTH_UT_DATA"

    const-string v3, "AUTH_SDK_CONFIG_KEY"

    const-string v4, ""

    invoke-static {p0, v2, v3, v4}, Lcom/mobile/auth/gatewayauth/network/a;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v2, :cond_0

    :try_start_1
    invoke-static {p0}, Lcom/mobile/auth/gatewayauth/model/ConfigRule;->fromJson(Ljava/lang/String;)Lcom/mobile/auth/gatewayauth/model/ConfigRule;

    move-result-object v1
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catch_0
    monitor-exit v0

    return-object v1

    :cond_0
    :goto_0
    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception p0

    :try_start_2
    invoke-static {p0}, Lcom/mobile/auth/gatewayauth/a;->a(Ljava/lang/Throwable;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    monitor-exit v0

    return-object v1

    :catchall_1
    move-exception p0

    :try_start_3
    invoke-static {p0}, Lcom/mobile/auth/gatewayauth/a;->a(Ljava/lang/Throwable;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    monitor-exit v0

    return-object v1

    :catchall_2
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method public static declared-synchronized c(Landroid/content/Context;Ljava/lang/String;)V
    .locals 2

    const-class v0, Lcom/mobile/auth/gatewayauth/network/a;

    monitor-enter v0

    :try_start_0
    const-string v1, "AUTH_LIMIT_SLS_KEY"

    invoke-static {p0, v1, p1}, Lcom/mobile/auth/gatewayauth/network/a;->b(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p0

    :try_start_1
    invoke-static {p0}, Lcom/mobile/auth/gatewayauth/a;->a(Ljava/lang/Throwable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_0

    :catchall_1
    move-exception p0

    :try_start_2
    invoke-static {p0}, Lcom/mobile/auth/gatewayauth/a;->a(Ljava/lang/Throwable;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    :goto_0
    monitor-exit v0

    return-void

    :catchall_2
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method public static declared-synchronized d(Landroid/content/Context;Ljava/lang/String;)I
    .locals 2

    const-class v0, Lcom/mobile/auth/gatewayauth/network/a;

    monitor-enter v0

    :try_start_0
    const-string v1, "AUTH_LIMIT_SLS_KEY"

    invoke-static {p0, v1, p1}, Lcom/mobile/auth/gatewayauth/network/a;->c(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return p0

    :catchall_0
    move-exception p0

    const/4 p1, -0x1

    :try_start_1
    invoke-static {p0}, Lcom/mobile/auth/gatewayauth/a;->a(Ljava/lang/Throwable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    monitor-exit v0

    return p1

    :catchall_1
    move-exception p0

    :try_start_2
    invoke-static {p0}, Lcom/mobile/auth/gatewayauth/a;->a(Ljava/lang/Throwable;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    monitor-exit v0

    return p1

    :catchall_2
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method public static declared-synchronized d(Landroid/content/Context;)V
    .locals 4

    const-class v0, Lcom/mobile/auth/gatewayauth/network/a;

    monitor-enter v0

    :try_start_0
    const-string v1, "AUTH_UT_DATA"

    const-string v2, "AUTH_LIMIT_SLS_KEY"

    const-string v3, ""

    invoke-static {p0, v1, v2, v3}, Lcom/mobile/auth/gatewayauth/network/a;->b(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    const-string v1, "AUTH_UT_DATA"

    const-string v2, "AUTH_LIMIT_VENDOR_LIST_KEY"

    const-string v3, ""

    invoke-static {p0, v1, v2, v3}, Lcom/mobile/auth/gatewayauth/network/a;->b(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    const-string v1, "AUTH_UT_DATA"

    const-string v2, "AUTH_LIMIT_GET_CONFIG_KEY"

    const-string v3, ""

    invoke-static {p0, v1, v2, v3}, Lcom/mobile/auth/gatewayauth/network/a;->b(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    const-string v1, "AUTH_UT_DATA"

    const-string v2, "AUTH_LIMIT_AUTH_TOKEN_KEY"

    const-string v3, ""

    invoke-static {p0, v1, v2, v3}, Lcom/mobile/auth/gatewayauth/network/a;->b(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    const-string v1, "AUTH_UT_DATA"

    const-string v2, "AUTH_LIMIT_LOGIN_TOKEN_KEY"

    const-string v3, ""

    invoke-static {p0, v1, v2, v3}, Lcom/mobile/auth/gatewayauth/network/a;->b(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    const-string v1, "AUTH_UT_DATA"

    const-string v2, "AUTH_LIMIT_LOGIN_PHONE_KEY"

    const-string v3, ""

    invoke-static {p0, v1, v2, v3}, Lcom/mobile/auth/gatewayauth/network/a;->b(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    const-string v1, "AUTH_UT_DATA"

    const-string v2, "AUTH_LIMIT_LOGIN_PAGE_KEY"

    const-string v3, ""

    invoke-static {p0, v1, v2, v3}, Lcom/mobile/auth/gatewayauth/network/a;->b(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p0

    :try_start_1
    invoke-static {p0}, Lcom/mobile/auth/gatewayauth/a;->a(Ljava/lang/Throwable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_0

    :catchall_1
    move-exception p0

    :try_start_2
    invoke-static {p0}, Lcom/mobile/auth/gatewayauth/a;->a(Ljava/lang/Throwable;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    :goto_0
    monitor-exit v0

    return-void

    :catchall_2
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method public static declared-synchronized d(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    const-class v0, Lcom/mobile/auth/gatewayauth/network/a;

    monitor-enter v0

    const/4 v1, 0x0

    :try_start_0
    invoke-virtual {p0, p1, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p0

    invoke-interface {p0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    invoke-interface {p0, p2}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->commit()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p0

    :try_start_1
    invoke-static {p0}, Lcom/mobile/auth/gatewayauth/a;->a(Ljava/lang/Throwable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_0

    :catchall_1
    move-exception p0

    :try_start_2
    invoke-static {p0}, Lcom/mobile/auth/gatewayauth/a;->a(Ljava/lang/Throwable;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    goto :goto_0

    :catchall_2
    move-exception p0

    monitor-exit v0

    throw p0

    :catch_0
    :goto_0
    monitor-exit v0

    return-void
.end method

.method public static declared-synchronized e(Landroid/content/Context;Ljava/lang/String;)V
    .locals 2

    const-class v0, Lcom/mobile/auth/gatewayauth/network/a;

    monitor-enter v0

    :try_start_0
    const-string v1, "AUTH_LIMIT_VENDOR_LIST_KEY"

    invoke-static {p0, v1, p1}, Lcom/mobile/auth/gatewayauth/network/a;->b(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p0

    :try_start_1
    invoke-static {p0}, Lcom/mobile/auth/gatewayauth/a;->a(Ljava/lang/Throwable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_0

    :catchall_1
    move-exception p0

    :try_start_2
    invoke-static {p0}, Lcom/mobile/auth/gatewayauth/a;->a(Ljava/lang/Throwable;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    :goto_0
    monitor-exit v0

    return-void

    :catchall_2
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method public static declared-synchronized f(Landroid/content/Context;Ljava/lang/String;)I
    .locals 2

    const-class v0, Lcom/mobile/auth/gatewayauth/network/a;

    monitor-enter v0

    :try_start_0
    const-string v1, "AUTH_LIMIT_VENDOR_LIST_KEY"

    invoke-static {p0, v1, p1}, Lcom/mobile/auth/gatewayauth/network/a;->c(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return p0

    :catchall_0
    move-exception p0

    const/4 p1, -0x1

    :try_start_1
    invoke-static {p0}, Lcom/mobile/auth/gatewayauth/a;->a(Ljava/lang/Throwable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    monitor-exit v0

    return p1

    :catchall_1
    move-exception p0

    :try_start_2
    invoke-static {p0}, Lcom/mobile/auth/gatewayauth/a;->a(Ljava/lang/Throwable;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    monitor-exit v0

    return p1

    :catchall_2
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method public static declared-synchronized g(Landroid/content/Context;Ljava/lang/String;)V
    .locals 2

    const-class v0, Lcom/mobile/auth/gatewayauth/network/a;

    monitor-enter v0

    :try_start_0
    const-string v1, "AUTH_LIMIT_GET_CONFIG_KEY"

    invoke-static {p0, v1, p1}, Lcom/mobile/auth/gatewayauth/network/a;->b(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p0

    :try_start_1
    invoke-static {p0}, Lcom/mobile/auth/gatewayauth/a;->a(Ljava/lang/Throwable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_0

    :catchall_1
    move-exception p0

    :try_start_2
    invoke-static {p0}, Lcom/mobile/auth/gatewayauth/a;->a(Ljava/lang/Throwable;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    :goto_0
    monitor-exit v0

    return-void

    :catchall_2
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method public static declared-synchronized h(Landroid/content/Context;Ljava/lang/String;)I
    .locals 2

    const-class v0, Lcom/mobile/auth/gatewayauth/network/a;

    monitor-enter v0

    :try_start_0
    const-string v1, "AUTH_LIMIT_GET_CONFIG_KEY"

    invoke-static {p0, v1, p1}, Lcom/mobile/auth/gatewayauth/network/a;->c(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return p0

    :catchall_0
    move-exception p0

    const/4 p1, -0x1

    :try_start_1
    invoke-static {p0}, Lcom/mobile/auth/gatewayauth/a;->a(Ljava/lang/Throwable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    monitor-exit v0

    return p1

    :catchall_1
    move-exception p0

    :try_start_2
    invoke-static {p0}, Lcom/mobile/auth/gatewayauth/a;->a(Ljava/lang/Throwable;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    monitor-exit v0

    return p1

    :catchall_2
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method public static declared-synchronized i(Landroid/content/Context;Ljava/lang/String;)V
    .locals 2

    const-class v0, Lcom/mobile/auth/gatewayauth/network/a;

    monitor-enter v0

    :try_start_0
    const-string v1, "AUTH_LIMIT_AUTH_TOKEN_KEY"

    invoke-static {p0, v1, p1}, Lcom/mobile/auth/gatewayauth/network/a;->b(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p0

    :try_start_1
    invoke-static {p0}, Lcom/mobile/auth/gatewayauth/a;->a(Ljava/lang/Throwable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_0

    :catchall_1
    move-exception p0

    :try_start_2
    invoke-static {p0}, Lcom/mobile/auth/gatewayauth/a;->a(Ljava/lang/Throwable;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    :goto_0
    monitor-exit v0

    return-void

    :catchall_2
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method public static declared-synchronized j(Landroid/content/Context;Ljava/lang/String;)I
    .locals 2

    const-class v0, Lcom/mobile/auth/gatewayauth/network/a;

    monitor-enter v0

    :try_start_0
    const-string v1, "AUTH_LIMIT_AUTH_TOKEN_KEY"

    invoke-static {p0, v1, p1}, Lcom/mobile/auth/gatewayauth/network/a;->c(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return p0

    :catchall_0
    move-exception p0

    const/4 p1, -0x1

    :try_start_1
    invoke-static {p0}, Lcom/mobile/auth/gatewayauth/a;->a(Ljava/lang/Throwable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    monitor-exit v0

    return p1

    :catchall_1
    move-exception p0

    :try_start_2
    invoke-static {p0}, Lcom/mobile/auth/gatewayauth/a;->a(Ljava/lang/Throwable;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    monitor-exit v0

    return p1

    :catchall_2
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method public static declared-synchronized k(Landroid/content/Context;Ljava/lang/String;)V
    .locals 2

    const-class v0, Lcom/mobile/auth/gatewayauth/network/a;

    monitor-enter v0

    :try_start_0
    const-string v1, "AUTH_LIMIT_LOGIN_TOKEN_KEY"

    invoke-static {p0, v1, p1}, Lcom/mobile/auth/gatewayauth/network/a;->b(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p0

    :try_start_1
    invoke-static {p0}, Lcom/mobile/auth/gatewayauth/a;->a(Ljava/lang/Throwable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_0

    :catchall_1
    move-exception p0

    :try_start_2
    invoke-static {p0}, Lcom/mobile/auth/gatewayauth/a;->a(Ljava/lang/Throwable;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    :goto_0
    monitor-exit v0

    return-void

    :catchall_2
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method public static declared-synchronized l(Landroid/content/Context;Ljava/lang/String;)I
    .locals 2

    const-class v0, Lcom/mobile/auth/gatewayauth/network/a;

    monitor-enter v0

    :try_start_0
    const-string v1, "AUTH_LIMIT_LOGIN_TOKEN_KEY"

    invoke-static {p0, v1, p1}, Lcom/mobile/auth/gatewayauth/network/a;->c(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return p0

    :catchall_0
    move-exception p0

    const/4 p1, -0x1

    :try_start_1
    invoke-static {p0}, Lcom/mobile/auth/gatewayauth/a;->a(Ljava/lang/Throwable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    monitor-exit v0

    return p1

    :catchall_1
    move-exception p0

    :try_start_2
    invoke-static {p0}, Lcom/mobile/auth/gatewayauth/a;->a(Ljava/lang/Throwable;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    monitor-exit v0

    return p1

    :catchall_2
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method public static declared-synchronized m(Landroid/content/Context;Ljava/lang/String;)V
    .locals 2

    const-class v0, Lcom/mobile/auth/gatewayauth/network/a;

    monitor-enter v0

    :try_start_0
    const-string v1, "AUTH_LIMIT_LOGIN_PHONE_KEY"

    invoke-static {p0, v1, p1}, Lcom/mobile/auth/gatewayauth/network/a;->b(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p0

    :try_start_1
    invoke-static {p0}, Lcom/mobile/auth/gatewayauth/a;->a(Ljava/lang/Throwable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_0

    :catchall_1
    move-exception p0

    :try_start_2
    invoke-static {p0}, Lcom/mobile/auth/gatewayauth/a;->a(Ljava/lang/Throwable;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    :goto_0
    monitor-exit v0

    return-void

    :catchall_2
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method public static declared-synchronized n(Landroid/content/Context;Ljava/lang/String;)I
    .locals 2

    const-class v0, Lcom/mobile/auth/gatewayauth/network/a;

    monitor-enter v0

    :try_start_0
    const-string v1, "AUTH_LIMIT_LOGIN_PHONE_KEY"

    invoke-static {p0, v1, p1}, Lcom/mobile/auth/gatewayauth/network/a;->c(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return p0

    :catchall_0
    move-exception p0

    const/4 p1, -0x1

    :try_start_1
    invoke-static {p0}, Lcom/mobile/auth/gatewayauth/a;->a(Ljava/lang/Throwable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    monitor-exit v0

    return p1

    :catchall_1
    move-exception p0

    :try_start_2
    invoke-static {p0}, Lcom/mobile/auth/gatewayauth/a;->a(Ljava/lang/Throwable;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    monitor-exit v0

    return p1

    :catchall_2
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method public static declared-synchronized o(Landroid/content/Context;Ljava/lang/String;)V
    .locals 2

    const-class v0, Lcom/mobile/auth/gatewayauth/network/a;

    monitor-enter v0

    :try_start_0
    const-string v1, "AUTH_LIMIT_LOGIN_PAGE_KEY"

    invoke-static {p0, v1, p1}, Lcom/mobile/auth/gatewayauth/network/a;->b(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p0

    :try_start_1
    invoke-static {p0}, Lcom/mobile/auth/gatewayauth/a;->a(Ljava/lang/Throwable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_0

    :catchall_1
    move-exception p0

    :try_start_2
    invoke-static {p0}, Lcom/mobile/auth/gatewayauth/a;->a(Ljava/lang/Throwable;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    :goto_0
    monitor-exit v0

    return-void

    :catchall_2
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method public static declared-synchronized p(Landroid/content/Context;Ljava/lang/String;)I
    .locals 2

    const-class v0, Lcom/mobile/auth/gatewayauth/network/a;

    monitor-enter v0

    :try_start_0
    const-string v1, "AUTH_LIMIT_LOGIN_PAGE_KEY"

    invoke-static {p0, v1, p1}, Lcom/mobile/auth/gatewayauth/network/a;->c(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return p0

    :catchall_0
    move-exception p0

    const/4 p1, -0x1

    :try_start_1
    invoke-static {p0}, Lcom/mobile/auth/gatewayauth/a;->a(Ljava/lang/Throwable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    monitor-exit v0

    return p1

    :catchall_1
    move-exception p0

    :try_start_2
    invoke-static {p0}, Lcom/mobile/auth/gatewayauth/a;->a(Ljava/lang/Throwable;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    monitor-exit v0

    return p1

    :catchall_2
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method public static declared-synchronized q(Landroid/content/Context;Ljava/lang/String;)V
    .locals 2

    const-class v0, Lcom/mobile/auth/gatewayauth/network/a;

    monitor-enter v0

    :try_start_0
    const-string v1, "AUTH_APP_INFO"

    invoke-static {p0, v1, p1}, Lcom/mobile/auth/gatewayauth/network/a;->d(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p0

    :try_start_1
    invoke-static {p0}, Lcom/mobile/auth/gatewayauth/a;->a(Ljava/lang/Throwable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_0

    :catchall_1
    move-exception p0

    :try_start_2
    invoke-static {p0}, Lcom/mobile/auth/gatewayauth/a;->a(Ljava/lang/Throwable;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    :goto_0
    monitor-exit v0

    return-void

    :catchall_2
    move-exception p0

    monitor-exit v0

    throw p0
.end method
