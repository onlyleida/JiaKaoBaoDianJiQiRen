.class public Lcom/iflytek/cloud/a/f/c;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field a:Lorg/json/JSONObject;

.field b:J

.field c:J


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    iput-object v0, p0, Lcom/iflytek/cloud/a/f/c;->a:Lorg/json/JSONObject;

    const-wide/16 v0, 0x0

    .line 3
    iput-wide v0, p0, Lcom/iflytek/cloud/a/f/c;->b:J

    .line 4
    iput-wide v0, p0, Lcom/iflytek/cloud/a/f/c;->c:J

    return-void
.end method


# virtual methods
.method public declared-synchronized a()Ljava/lang/String;
    .locals 1

    monitor-enter p0

    .line 26
    :try_start_0
    iget-object v0, p0, Lcom/iflytek/cloud/a/f/c;->a:Lorg/json/JSONObject;

    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public a(Lcom/iflytek/cloud/b/a;)V
    .locals 3

    .line 1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/iflytek/cloud/a/f/c;->c:J

    .line 2
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/iflytek/cloud/a/f/c;->b:J

    .line 3
    iget-wide v0, p0, Lcom/iflytek/cloud/a/f/c;->c:J

    invoke-static {v0, v1}, Lcom/iflytek/cloud/msc/util/d;->a(J)Ljava/lang/String;

    move-result-object v0

    const-string v1, "app_start"

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v0, v2}, Lcom/iflytek/cloud/a/f/c;->a(Ljava/lang/String;Ljava/lang/String;Z)V

    const-string v0, "caller.appid"

    .line 4
    invoke-virtual {p1, v0}, Lcom/iflytek/cloud/b/a;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 5
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "app_caller_appid"

    .line 6
    invoke-virtual {p0, v0, p1, v2}, Lcom/iflytek/cloud/a/f/c;->a(Ljava/lang/String;Ljava/lang/String;Z)V

    :cond_0
    const/4 p1, 0x0

    .line 7
    invoke-static {p1}, Lcom/iflytek/cloud/msc/util/a;->b(Landroid/content/Context;)Lcom/iflytek/cloud/b/a;

    move-result-object p1

    const-string v0, "app.ver.code"

    .line 8
    invoke-virtual {p1, v0}, Lcom/iflytek/cloud/b/a;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 9
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "app_cver"

    .line 10
    invoke-virtual {p0, v0, p1, v2}, Lcom/iflytek/cloud/a/f/c;->a(Ljava/lang/String;Ljava/lang/String;Z)V

    :cond_1
    return-void
.end method

.method public declared-synchronized a(Ljava/lang/String;)V
    .locals 4

    monitor-enter p0

    .line 11
    :try_start_0
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/iflytek/cloud/a/f/c;->b:J

    sub-long/2addr v0, v2

    const/4 v2, 0x0

    invoke-virtual {p0, p1, v0, v1, v2}, Lcom/iflytek/cloud/a/f/c;->a(Ljava/lang/String;JZ)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized a(Ljava/lang/String;JZ)V
    .locals 1

    monitor-enter p0

    .line 12
    :try_start_0
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    monitor-exit p0

    return-void

    :cond_0
    if-nez p4, :cond_1

    .line 13
    :try_start_1
    iget-object p4, p0, Lcom/iflytek/cloud/a/f/c;->a:Lorg/json/JSONObject;

    invoke-virtual {p4, p1, p2, p3}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    goto :goto_0

    .line 14
    :cond_1
    iget-object p4, p0, Lcom/iflytek/cloud/a/f/c;->a:Lorg/json/JSONObject;

    invoke-virtual {p4, p1}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object p4

    if-nez p4, :cond_2

    .line 15
    new-instance p4, Lorg/json/JSONArray;

    invoke-direct {p4}, Lorg/json/JSONArray;-><init>()V

    .line 16
    iget-object v0, p0, Lcom/iflytek/cloud/a/f/c;->a:Lorg/json/JSONObject;

    invoke-virtual {v0, p1, p4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :cond_2
    if-eqz p4, :cond_3

    .line 17
    invoke-virtual {p4, p2, p3}, Lorg/json/JSONArray;->put(J)Lorg/json/JSONArray;
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 18
    :try_start_2
    invoke-static {p1}, Lcom/iflytek/cloud/msc/util/log/DebugLog;->LogE(Ljava/lang/Throwable;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :cond_3
    :goto_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized a(Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 1

    monitor-enter p0

    .line 19
    :try_start_0
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_4

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    goto :goto_1

    :cond_0
    if-nez p3, :cond_1

    .line 20
    :try_start_1
    iget-object p3, p0, Lcom/iflytek/cloud/a/f/c;->a:Lorg/json/JSONObject;

    invoke-virtual {p3, p1, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto :goto_0

    .line 21
    :cond_1
    iget-object p3, p0, Lcom/iflytek/cloud/a/f/c;->a:Lorg/json/JSONObject;

    invoke-virtual {p3, p1}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object p3

    if-nez p3, :cond_2

    .line 22
    new-instance p3, Lorg/json/JSONArray;

    invoke-direct {p3}, Lorg/json/JSONArray;-><init>()V

    .line 23
    iget-object v0, p0, Lcom/iflytek/cloud/a/f/c;->a:Lorg/json/JSONObject;

    invoke-virtual {v0, p1, p3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :cond_2
    if-eqz p3, :cond_3

    .line 24
    invoke-virtual {p3, p2}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 25
    :try_start_2
    invoke-static {p1}, Lcom/iflytek/cloud/msc/util/log/DebugLog;->LogE(Ljava/lang/Throwable;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :cond_3
    :goto_0
    monitor-exit p0

    return-void

    :cond_4
    :goto_1
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method
