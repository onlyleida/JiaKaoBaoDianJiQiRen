.class public Lcom/iflytek/idata/extension/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private a:Lcom/iflytek/idata/extension/b$a;

.field protected b:Landroid/content/Context;

.field private c:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Z)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Lcom/iflytek/idata/extension/a$a;

    invoke-direct {v0, p0}, Lcom/iflytek/idata/extension/a$a;-><init>(Lcom/iflytek/idata/extension/a;)V

    iput-object v0, p0, Lcom/iflytek/idata/extension/a;->a:Lcom/iflytek/idata/extension/b$a;

    .line 3
    iput-object p1, p0, Lcom/iflytek/idata/extension/a;->b:Landroid/content/Context;

    .line 4
    iput-boolean p2, p0, Lcom/iflytek/idata/extension/a;->c:Z

    return-void
.end method

.method private a()V
    .locals 5

    const-wide/16 v0, 0x2710

    .line 2
    :try_start_0
    invoke-static {v0, v1}, Landroid/os/SystemClock;->sleep(J)V

    .line 3
    invoke-direct {p0}, Lcom/iflytek/idata/extension/a;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/iflytek/idata/extension/a;->b:Landroid/content/Context;

    invoke-static {v0}, Lcom/iflytek/idata/extension/d/b;->a(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 4
    new-instance v0, Lcom/iflytek/idata/extension/b;

    invoke-direct {v0}, Lcom/iflytek/idata/extension/b;-><init>()V

    const/16 v1, 0x4e20

    .line 5
    invoke-virtual {v0, v1}, Lcom/iflytek/idata/extension/b;->b(I)V

    const/4 v1, 0x1

    .line 6
    invoke-virtual {v0, v1}, Lcom/iflytek/idata/extension/b;->a(I)V

    .line 7
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const-string v2, "appid"

    .line 8
    :try_start_1
    iget-object v3, p0, Lcom/iflytek/idata/extension/a;->b:Landroid/content/Context;

    invoke-static {v3}, Lcom/iflytek/idata/extension/IFlyCollectorExt;->getInstance(Landroid/content/Context;)Lcom/iflytek/idata/extension/IFlyCollectorExt;

    move-result-object v3

    invoke-virtual {v3}, Lcom/iflytek/idata/extension/IFlyCollectorExt;->getAppId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 9
    iget-object v2, p0, Lcom/iflytek/idata/extension/a;->b:Landroid/content/Context;

    invoke-static {v2}, Lcom/iflytek/idata/extension/IFlyCollectorExt;->getInstance(Landroid/content/Context;)Lcom/iflytek/idata/extension/IFlyCollectorExt;

    move-result-object v2

    invoke-virtual {v2}, Lcom/iflytek/idata/extension/IFlyCollectorExt;->a()Ljava/lang/String;

    move-result-object v2

    const-string v3, "ver"

    .line 10
    invoke-virtual {v1, v3, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v2, "impl"

    const/4 v3, 0x2

    .line 11
    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    const-string v2, "pkg"

    .line 12
    :try_start_2
    iget-object v3, p0, Lcom/iflytek/idata/extension/a;->b:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    const-string v2, "https://logconf.iflytek.com/hotupdate"

    const/4 v3, 0x0

    .line 13
    :try_start_3
    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v4, "utf-8"

    invoke-virtual {v1, v4}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v1

    invoke-virtual {v0, v2, v3, v1}, Lcom/iflytek/idata/extension/b;->a(Ljava/lang/String;Ljava/lang/String;[B)V

    .line 14
    iget-object v1, p0, Lcom/iflytek/idata/extension/a;->a:Lcom/iflytek/idata/extension/b$a;

    invoke-virtual {v0, v1}, Lcom/iflytek/idata/extension/b;->b(Lcom/iflytek/idata/extension/b$a;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    :catchall_0
    const-string v0, "Collector"

    const-string v1, "exception occur while update"

    .line 15
    invoke-static {v0, v1}, Lcom/iflytek/idata/extension/d/a;->c(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    :goto_0
    return-void
.end method

.method static synthetic a(Lcom/iflytek/idata/extension/a;Lorg/json/JSONObject;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/iflytek/idata/extension/a;->a(Lorg/json/JSONObject;)V

    return-void
.end method

.method private static a(Ljava/io/Closeable;)V
    .locals 0

    if-eqz p0, :cond_0

    .line 41
    :try_start_0
    invoke-interface {p0}, Ljava/io/Closeable;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_0
    return-void
.end method

.method private a(Lorg/json/JSONObject;)V
    .locals 3

    const-string v0, "update"

    .line 16
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "yes"

    .line 17
    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "msg"

    .line 18
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 19
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    const/4 v0, 0x0

    .line 20
    invoke-static {p1, v0}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object p1

    .line 21
    invoke-direct {p0, p1}, Lcom/iflytek/idata/extension/a;->a([B)V

    goto :goto_0

    :cond_0
    const-string p1, "Collector"

    const-string v0, "no need to update"

    .line 22
    invoke-static {p1, v0}, Lcom/iflytek/idata/extension/d/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 23
    :cond_1
    :goto_0
    iget-object p1, p0, Lcom/iflytek/idata/extension/a;->b:Landroid/content/Context;

    invoke-static {p1}, Lcom/iflytek/idata/extension/d/b;->b(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object p1

    .line 24
    invoke-interface {p1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    .line 25
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    const-string v2, "last_check_time"

    invoke-interface {p1, v2, v0, v1}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    .line 26
    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method private a([B)V
    .locals 3

    .line 27
    iget-object v0, p0, Lcom/iflytek/idata/extension/a;->b:Landroid/content/Context;

    invoke-static {v0}, Lcom/iflytek/idata/extension/IFlyCollectorExt;->getInstance(Landroid/content/Context;)Lcom/iflytek/idata/extension/IFlyCollectorExt;

    move-result-object v0

    .line 28
    invoke-virtual {v0}, Lcom/iflytek/idata/extension/IFlyCollectorExt;->c()V

    .line 29
    new-instance v1, Ljava/io/File;

    invoke-virtual {v0}, Lcom/iflytek/idata/extension/IFlyCollectorExt;->b()Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Lcom/iflytek/idata/extension/d/b;->a()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v0, v2}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 30
    :try_start_0
    new-instance v2, Ljava/io/FileOutputStream;

    invoke-direct {v2, v1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    .line 31
    :try_start_1
    new-instance v1, Ljava/io/BufferedOutputStream;

    invoke-direct {v1, v2}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 32
    :try_start_2
    invoke-virtual {v1, p1}, Ljava/io/BufferedOutputStream;->write([B)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 33
    invoke-static {v1}, Lcom/iflytek/idata/extension/a;->a(Ljava/io/Closeable;)V

    .line 34
    invoke-static {v2}, Lcom/iflytek/idata/extension/a;->a(Ljava/io/Closeable;)V

    goto :goto_2

    :catchall_0
    move-exception p1

    goto :goto_0

    :catchall_1
    move-exception p1

    move-object v1, v0

    :goto_0
    move-object v0, v2

    goto :goto_1

    :catchall_2
    move-exception p1

    move-object v1, v0

    .line 35
    :goto_1
    :try_start_3
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    .line 36
    invoke-static {v1}, Lcom/iflytek/idata/extension/a;->a(Ljava/io/Closeable;)V

    .line 37
    invoke-static {v0}, Lcom/iflytek/idata/extension/a;->a(Ljava/io/Closeable;)V

    :goto_2
    return-void

    :catchall_3
    move-exception p1

    .line 38
    invoke-static {v1}, Lcom/iflytek/idata/extension/a;->a(Ljava/io/Closeable;)V

    .line 39
    invoke-static {v0}, Lcom/iflytek/idata/extension/a;->a(Ljava/io/Closeable;)V

    .line 40
    throw p1
.end method

.method private b()Z
    .locals 6

    .line 1
    iget-boolean v0, p0, Lcom/iflytek/idata/extension/a;->c:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    return v1

    .line 2
    :cond_0
    iget-object v0, p0, Lcom/iflytek/idata/extension/a;->b:Landroid/content/Context;

    invoke-static {v0}, Lcom/iflytek/idata/extension/d/b;->b(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    if-eqz v0, :cond_2

    const-wide/16 v2, 0x0

    const-string v4, "last_check_time"

    .line 3
    invoke-interface {v0, v4, v2, v3}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v2

    .line 4
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    sub-long/2addr v4, v2

    const-wide/32 v2, 0x240c8400

    cmp-long v0, v4, v2

    if-lez v0, :cond_1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :cond_2
    :goto_0
    return v1
.end method


# virtual methods
.method public run()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/iflytek/idata/extension/a;->a()V

    return-void
.end method
