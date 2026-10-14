.class public final Lcom/tencent/bugly/proguard/s;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static b:Lcom/tencent/bugly/proguard/s;


# instance fields
.field public a:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private c:Landroid/content/Context;


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput-object v0, p0, Lcom/tencent/bugly/proguard/s;->a:Ljava/util/Map;

    .line 3
    iput-object p1, p0, Lcom/tencent/bugly/proguard/s;->c:Landroid/content/Context;

    return-void
.end method

.method public static a(Landroid/content/Context;)Lcom/tencent/bugly/proguard/s;
    .locals 1

    .line 1
    sget-object v0, Lcom/tencent/bugly/proguard/s;->b:Lcom/tencent/bugly/proguard/s;

    if-nez v0, :cond_0

    .line 2
    new-instance v0, Lcom/tencent/bugly/proguard/s;

    invoke-direct {v0, p0}, Lcom/tencent/bugly/proguard/s;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/tencent/bugly/proguard/s;->b:Lcom/tencent/bugly/proguard/s;

    .line 3
    :cond_0
    sget-object p0, Lcom/tencent/bugly/proguard/s;->b:Lcom/tencent/bugly/proguard/s;

    return-object p0
.end method

.method private static a(Ljava/lang/String;Ljava/lang/String;)Ljava/net/HttpURLConnection;
    .locals 2

    .line 73
    :try_start_0
    new-instance v0, Ljava/net/URL;

    invoke-direct {v0, p1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 74
    invoke-static {}, Lcom/tencent/bugly/proguard/a;->b()Ljava/net/Proxy;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 75
    invoke-static {}, Lcom/tencent/bugly/proguard/a;->b()Ljava/net/Proxy;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/net/URL;->openConnection(Ljava/net/Proxy;)Ljava/net/URLConnection;

    move-result-object p0

    check-cast p0, Ljava/net/HttpURLConnection;

    goto :goto_0

    :cond_0
    if-eqz p0, :cond_1

    .line 76
    sget-object p1, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {p0, p1}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object p0

    const-string p1, "wap"

    invoke-virtual {p0, p1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p0

    if-eqz p0, :cond_1

    const-string p0, "http.proxyHost"

    .line 77
    invoke-static {p0}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    const-string p1, "http.proxyPort"

    .line 78
    invoke-static {p1}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 79
    new-instance v1, Ljava/net/InetSocketAddress;

    .line 80
    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1

    invoke-direct {v1, p0, p1}, Ljava/net/InetSocketAddress;-><init>(Ljava/lang/String;I)V

    .line 81
    new-instance p0, Ljava/net/Proxy;

    sget-object p1, Ljava/net/Proxy$Type;->HTTP:Ljava/net/Proxy$Type;

    invoke-direct {p0, p1, v1}, Ljava/net/Proxy;-><init>(Ljava/net/Proxy$Type;Ljava/net/SocketAddress;)V

    .line 82
    invoke-virtual {v0, p0}, Ljava/net/URL;->openConnection(Ljava/net/Proxy;)Ljava/net/URLConnection;

    move-result-object p0

    check-cast p0, Ljava/net/HttpURLConnection;

    goto :goto_0

    .line 83
    :cond_1
    invoke-virtual {v0}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object p0

    check-cast p0, Ljava/net/HttpURLConnection;

    :goto_0
    const/16 p1, 0x7530

    .line 84
    invoke-virtual {p0, p1}, Ljava/net/HttpURLConnection;->setConnectTimeout(I)V

    const/16 p1, 0x2710

    .line 85
    invoke-virtual {p0, p1}, Ljava/net/HttpURLConnection;->setReadTimeout(I)V

    const/4 p1, 0x1

    .line 86
    invoke-virtual {p0, p1}, Ljava/net/HttpURLConnection;->setDoOutput(Z)V

    .line 87
    invoke-virtual {p0, p1}, Ljava/net/HttpURLConnection;->setDoInput(Z)V

    const-string p1, "POST"

    .line 88
    invoke-virtual {p0, p1}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    const/4 p1, 0x0

    .line 89
    invoke-virtual {p0, p1}, Ljava/net/HttpURLConnection;->setUseCaches(Z)V

    .line 90
    invoke-virtual {p0, p1}, Ljava/net/HttpURLConnection;->setInstanceFollowRedirects(Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object p0

    :catchall_0
    move-exception p0

    .line 91
    invoke-static {p0}, Lcom/tencent/bugly/proguard/y;->a(Ljava/lang/Throwable;)Z

    move-result p1

    if-nez p1, :cond_2

    .line 92
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_2
    const/4 p0, 0x0

    return-object p0
.end method

.method private a(Ljava/lang/String;[BLjava/lang/String;Ljava/util/Map;)Ljava/net/HttpURLConnection;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "[B",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/net/HttpURLConnection;"
        }
    .end annotation

    const/4 v0, 0x0

    const/4 v1, 0x0

    if-nez p1, :cond_0

    new-array p1, v1, [Ljava/lang/Object;

    const-string p2, "destUrl is null."

    .line 53
    invoke-static {p2, p1}, Lcom/tencent/bugly/proguard/y;->e(Ljava/lang/String;[Ljava/lang/Object;)Z

    return-object v0

    :cond_0
    const/4 v2, 0x1

    new-array v2, v2, [Ljavax/net/ssl/TrustManager;

    .line 54
    new-instance v3, Lcom/tencent/bugly/proguard/s$1;

    invoke-direct {v3}, Lcom/tencent/bugly/proguard/s$1;-><init>()V

    aput-object v3, v2, v1

    :try_start_0
    const-string v3, "TLS"

    invoke-static {v3}, Ljavax/net/ssl/SSLContext;->getInstance(Ljava/lang/String;)Ljavax/net/ssl/SSLContext;

    move-result-object v3

    new-instance v4, Ljava/security/SecureRandom;

    invoke-direct {v4}, Ljava/security/SecureRandom;-><init>()V

    invoke-virtual {v3, v0, v2, v4}, Ljavax/net/ssl/SSLContext;->init([Ljavax/net/ssl/KeyManager;[Ljavax/net/ssl/TrustManager;Ljava/security/SecureRandom;)V

    invoke-virtual {v3}, Ljavax/net/ssl/SSLContext;->getSocketFactory()Ljavax/net/ssl/SSLSocketFactory;

    move-result-object v2

    invoke-static {v2}, Ljavax/net/ssl/HttpsURLConnection;->setDefaultSSLSocketFactory(Ljavax/net/ssl/SSLSocketFactory;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v2

    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    .line 55
    :goto_0
    invoke-static {p3, p1}, Lcom/tencent/bugly/proguard/s;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/net/HttpURLConnection;

    move-result-object p1

    if-nez p1, :cond_1

    new-array p1, v1, [Ljava/lang/Object;

    const-string p2, "Failed to get HttpURLConnection object."

    .line 56
    invoke-static {p2, p1}, Lcom/tencent/bugly/proguard/y;->e(Ljava/lang/String;[Ljava/lang/Object;)Z

    return-object v0

    :cond_1
    :try_start_1
    const-string v2, "wup_version"

    const-string v3, "3.0"

    .line 57
    invoke-virtual {p1, v2, v3}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    const-string v2, "utf-8"

    if-eqz p4, :cond_2

    .line 58
    :try_start_2
    invoke-interface {p4}, Ljava/util/Map;->size()I

    move-result v3

    if-lez v3, :cond_2

    .line 59
    invoke-interface {p4}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p4

    invoke-interface {p4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p4

    :goto_1
    invoke-interface {p4}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {p4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map$Entry;

    .line 60
    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 61
    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-static {v3, v2}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 62
    invoke-virtual {p1, v4, v3}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    :cond_2
    const-string p4, "A37"

    .line 63
    invoke-static {p3, v2}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 64
    invoke-virtual {p1, p4, v3}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    const-string p4, "A38"

    .line 65
    invoke-static {p3, v2}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    .line 66
    invoke-virtual {p1, p4, p3}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 67
    invoke-virtual {p1}, Ljava/net/HttpURLConnection;->getOutputStream()Ljava/io/OutputStream;

    move-result-object p3

    if-nez p2, :cond_3

    .line 68
    invoke-virtual {p3, v1}, Ljava/io/OutputStream;->write(I)V

    goto :goto_2

    .line 69
    :cond_3
    invoke-virtual {p3, p2}, Ljava/io/OutputStream;->write([B)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :goto_2
    return-object p1

    :catchall_0
    move-exception p1

    .line 70
    invoke-static {p1}, Lcom/tencent/bugly/proguard/y;->a(Ljava/lang/Throwable;)Z

    move-result p2

    if-nez p2, :cond_4

    .line 71
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_4
    new-array p1, v1, [Ljava/lang/Object;

    const-string p2, "Failed to upload, please check your network."

    .line 72
    invoke-static {p2, p1}, Lcom/tencent/bugly/proguard/y;->e(Ljava/lang/String;[Ljava/lang/Object;)Z

    return-object v0
.end method

.method private static a(Ljava/net/HttpURLConnection;)Ljava/util/Map;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/net/HttpURLConnection;",
            ")",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 46
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 47
    invoke-virtual {p0}, Ljava/net/HttpURLConnection;->getHeaderFields()Ljava/util/Map;

    move-result-object p0

    if-eqz p0, :cond_3

    .line 48
    invoke-interface {p0}, Ljava/util/Map;->size()I

    move-result v1

    if-nez v1, :cond_0

    goto :goto_1

    .line 49
    :cond_0
    invoke-interface {p0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_1
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 50
    invoke-interface {p0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    .line 51
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v4

    if-lez v4, :cond_1

    const/4 v4, 0x0

    .line 52
    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_2
    return-object v0

    :cond_3
    :goto_1
    const/4 p0, 0x0

    return-object p0
.end method

.method private static b(Ljava/net/HttpURLConnection;)[B
    .locals 5

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return-object v0

    .line 1
    :cond_0
    :try_start_0
    new-instance v1, Ljava/io/BufferedInputStream;

    invoke-virtual {p0}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object p0

    invoke-direct {v1, p0}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    .line 2
    :try_start_1
    new-instance p0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {p0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    const/16 v2, 0x400

    new-array v2, v2, [B

    .line 3
    :goto_0
    invoke-virtual {v1, v2}, Ljava/io/BufferedInputStream;->read([B)I

    move-result v3

    if-lez v3, :cond_1

    const/4 v4, 0x0

    .line 4
    invoke-virtual {p0, v2, v4, v3}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    goto :goto_0

    .line 5
    :cond_1
    invoke-virtual {p0}, Ljava/io/ByteArrayOutputStream;->flush()V

    .line 6
    invoke-virtual {p0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 7
    :try_start_2
    invoke-virtual {v1}, Ljava/io/BufferedInputStream;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception v0

    .line 8
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_1
    return-object p0

    :catchall_1
    move-exception p0

    goto :goto_2

    :catchall_2
    move-exception p0

    move-object v1, v0

    .line 9
    :goto_2
    :try_start_3
    invoke-static {p0}, Lcom/tencent/bugly/proguard/y;->a(Ljava/lang/Throwable;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 10
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_4

    :cond_2
    if-eqz v1, :cond_3

    .line 11
    :try_start_4
    invoke-virtual {v1}, Ljava/io/BufferedInputStream;->close()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_3

    goto :goto_3

    :catchall_3
    move-exception p0

    .line 12
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_3
    :goto_3
    return-object v0

    :catchall_4
    move-exception p0

    if-eqz v1, :cond_4

    .line 13
    :try_start_5
    invoke-virtual {v1}, Ljava/io/BufferedInputStream;->close()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_5

    goto :goto_4

    :catchall_5
    move-exception v0

    .line 14
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 15
    :cond_4
    :goto_4
    throw p0
.end method


# virtual methods
.method public final a(Ljava/lang/String;[BLcom/tencent/bugly/proguard/w;Ljava/util/Map;)[B
    .locals 20
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "[B",
            "Lcom/tencent/bugly/proguard/w;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)[B"
        }
    .end annotation

    move-object/from16 v1, p0

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    const/4 v4, 0x0

    const/4 v5, 0x0

    if-nez p1, :cond_0

    new-array v0, v5, [Ljava/lang/Object;

    const-string v2, "Failed for no URL."

    .line 4
    invoke-static {v2, v0}, Lcom/tencent/bugly/proguard/y;->e(Ljava/lang/String;[Ljava/lang/Object;)Z

    return-object v4

    :cond_0
    if-nez v2, :cond_1

    const-wide/16 v8, 0x0

    goto :goto_0

    .line 5
    :cond_1
    array-length v0, v2

    int-to-long v8, v0

    :goto_0
    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/Object;

    aput-object p1, v0, v5

    .line 6
    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v10

    const/4 v11, 0x1

    aput-object v10, v0, v11

    .line 7
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v10

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    const/4 v12, 0x2

    aput-object v10, v0, v12

    const/4 v10, 0x3

    invoke-static {}, Landroid/os/Process;->myTid()I

    move-result v13

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    aput-object v13, v0, v10

    const-string v10, "request: %s, send: %d (pid=%d | tid=%d)"

    .line 8
    invoke-static {v10, v0}, Lcom/tencent/bugly/proguard/y;->c(Ljava/lang/String;[Ljava/lang/Object;)Z

    move-object/from16 v10, p1

    const/4 v0, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    :goto_1
    if-gtz v0, :cond_12

    if-gtz v13, :cond_12

    if-eqz v14, :cond_2

    move v6, v0

    const/4 v14, 0x0

    goto :goto_2

    :cond_2
    add-int/lit8 v0, v0, 0x1

    if-le v0, v11, :cond_3

    .line 9
    new-instance v15, Ljava/lang/StringBuilder;

    const-string v6, "try time: "

    invoke-direct {v15, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    new-array v7, v5, [Ljava/lang/Object;

    invoke-static {v6, v7}, Lcom/tencent/bugly/proguard/y;->c(Ljava/lang/String;[Ljava/lang/Object;)Z

    .line 10
    new-instance v6, Ljava/util/Random;

    .line 11
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v11

    invoke-direct {v6, v11, v12}, Ljava/util/Random;-><init>(J)V

    const/16 v11, 0x2710

    invoke-virtual {v6, v11}, Ljava/util/Random;->nextInt(I)I

    move-result v6

    int-to-long v11, v6

    const-wide/16 v18, 0x2710

    add-long v11, v11, v18

    .line 12
    invoke-static {v11, v12}, Landroid/os/SystemClock;->sleep(J)V

    :cond_3
    move v6, v0

    .line 13
    :goto_2
    iget-object v0, v1, Lcom/tencent/bugly/proguard/s;->c:Landroid/content/Context;

    invoke-static {v0}, Lcom/tencent/bugly/crashreport/common/info/b;->b(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_4

    new-array v0, v5, [Ljava/lang/Object;

    const-string v11, "Failed to request for network not avail"

    .line 14
    invoke-static {v11, v0}, Lcom/tencent/bugly/proguard/y;->d(Ljava/lang/String;[Ljava/lang/Object;)Z

    move v0, v6

    :goto_3
    const/4 v11, 0x1

    const/4 v12, 0x2

    goto :goto_1

    .line 15
    :cond_4
    invoke-virtual {v3, v8, v9}, Lcom/tencent/bugly/proguard/w;->a(J)V

    move-object/from16 v11, p4

    .line 16
    invoke-direct {v1, v10, v2, v0, v11}, Lcom/tencent/bugly/proguard/s;->a(Ljava/lang/String;[BLjava/lang/String;Ljava/util/Map;)Ljava/net/HttpURLConnection;

    move-result-object v12

    if-eqz v12, :cond_11

    .line 17
    :try_start_0
    invoke-virtual {v12}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v0

    .line 18
    new-instance v7, Ljava/lang/StringBuilder;

    const-string v15, "response code "

    invoke-direct {v7, v15}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    new-array v15, v5, [Ljava/lang/Object;

    invoke-static {v7, v15}, Lcom/tencent/bugly/proguard/y;->c(Ljava/lang/String;[Ljava/lang/Object;)Z

    const/16 v7, 0xc8

    if-ne v0, v7, :cond_7

    .line 19
    invoke-static {v12}, Lcom/tencent/bugly/proguard/s;->a(Ljava/net/HttpURLConnection;)Ljava/util/Map;

    move-result-object v0

    iput-object v0, v1, Lcom/tencent/bugly/proguard/s;->a:Ljava/util/Map;

    .line 20
    invoke-static {v12}, Lcom/tencent/bugly/proguard/s;->b(Ljava/net/HttpURLConnection;)[B

    move-result-object v7

    if-nez v7, :cond_5

    const-wide/16 v4, 0x0

    goto :goto_4

    .line 21
    :cond_5
    array-length v0, v7

    int-to-long v4, v0

    :goto_4
    invoke-virtual {v3, v4, v5}, Lcom/tencent/bugly/proguard/w;->b(J)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_6
    .catchall {:try_start_0 .. :try_end_0} :catchall_3

    .line 22
    :try_start_1
    invoke-virtual {v12}, Ljava/net/HttpURLConnection;->disconnect()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_5

    :catchall_0
    move-exception v0

    move-object v2, v0

    .line 23
    invoke-static {v2}, Lcom/tencent/bugly/proguard/y;->a(Ljava/lang/Throwable;)Z

    move-result v0

    if-nez v0, :cond_6

    .line 24
    invoke-virtual {v2}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_6
    :goto_5
    return-object v7

    :cond_7
    const/16 v4, 0x12d

    if-eq v0, v4, :cond_9

    const/16 v4, 0x12e

    if-eq v0, v4, :cond_9

    const/16 v4, 0x12f

    if-eq v0, v4, :cond_9

    const/16 v4, 0x133

    if-ne v0, v4, :cond_8

    goto :goto_6

    :cond_8
    const/4 v4, 0x0

    goto :goto_7

    :cond_9
    :goto_6
    const/4 v4, 0x1

    :goto_7
    if-eqz v4, :cond_c

    :try_start_2
    const-string v4, "Location"

    .line 25
    invoke-virtual {v12, v4}, Ljava/net/HttpURLConnection;->getHeaderField(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_4
    .catchall {:try_start_2 .. :try_end_2} :catchall_3

    if-nez v4, :cond_b

    .line 26
    :try_start_3
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "Failed to redirect: %d"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v4, 0x0

    new-array v5, v4, [Ljava/lang/Object;

    invoke-static {v0, v5}, Lcom/tencent/bugly/proguard/y;->e(Ljava/lang/String;[Ljava/lang/Object;)Z
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    .line 27
    :try_start_4
    invoke-virtual {v12}, Ljava/net/HttpURLConnection;->disconnect()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    :cond_a
    :goto_8
    const/4 v2, 0x0

    goto :goto_9

    :catchall_1
    move-exception v0

    move-object v2, v0

    .line 28
    invoke-static {v2}, Lcom/tencent/bugly/proguard/y;->a(Ljava/lang/Throwable;)Z

    move-result v0

    if-nez v0, :cond_a

    .line 29
    invoke-virtual {v2}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_8

    :goto_9
    return-object v2

    :catch_0
    move-exception v0

    const/4 v7, 0x2

    const/4 v14, 0x1

    goto :goto_e

    :cond_b
    add-int/lit8 v13, v13, 0x1

    :try_start_5
    const-string v5, "redirect code: %d ,to:%s"
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_3
    .catchall {:try_start_5 .. :try_end_5} :catchall_3

    const/4 v7, 0x2

    :try_start_6
    new-array v6, v7, [Ljava/lang/Object;

    .line 30
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const/4 v10, 0x0

    aput-object v0, v6, v10
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_2
    .catchall {:try_start_6 .. :try_end_6} :catchall_3

    const/16 v18, 0x1

    :try_start_7
    aput-object v4, v6, v18

    invoke-static {v5, v6}, Lcom/tencent/bugly/proguard/y;->c(Ljava/lang/String;[Ljava/lang/Object;)Z
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_1
    .catchall {:try_start_7 .. :try_end_7} :catchall_3

    move-object v10, v4

    const/4 v6, 0x0

    const/4 v14, 0x1

    goto :goto_d

    :catch_1
    move-exception v0

    goto :goto_b

    :catch_2
    move-exception v0

    goto :goto_a

    :catch_3
    move-exception v0

    const/4 v7, 0x2

    :goto_a
    const/16 v18, 0x1

    :goto_b
    move-object v10, v4

    const/4 v6, 0x0

    goto :goto_c

    :catch_4
    move-exception v0

    const/4 v7, 0x2

    const/16 v18, 0x1

    :goto_c
    const/4 v14, 0x1

    goto :goto_f

    :cond_c
    const/4 v7, 0x2

    const/16 v18, 0x1

    .line 31
    :goto_d
    :try_start_8
    invoke-virtual {v12}, Ljava/net/HttpURLConnection;->getContentLength()I

    move-result v0

    int-to-long v4, v0

    const-wide/16 v16, 0x0

    cmp-long v0, v4, v16

    if-gez v0, :cond_d

    const-wide/16 v4, 0x0

    .line 32
    :cond_d
    invoke-virtual {v3, v4, v5}, Lcom/tencent/bugly/proguard/w;->b(J)V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_5
    .catchall {:try_start_8 .. :try_end_8} :catchall_3

    .line 33
    :try_start_9
    invoke-virtual {v12}, Ljava/net/HttpURLConnection;->disconnect()V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_2

    goto :goto_11

    :catchall_2
    move-exception v0

    move-object v4, v0

    .line 34
    invoke-static {v4}, Lcom/tencent/bugly/proguard/y;->a(Ljava/lang/Throwable;)Z

    move-result v0

    if-nez v0, :cond_f

    goto :goto_10

    :catch_5
    move-exception v0

    goto :goto_f

    :catchall_3
    move-exception v0

    move-object v2, v0

    goto :goto_12

    :catch_6
    move-exception v0

    const/4 v7, 0x2

    :goto_e
    const/16 v18, 0x1

    .line 35
    :goto_f
    :try_start_a
    invoke-static {v0}, Lcom/tencent/bugly/proguard/y;->a(Ljava/lang/Throwable;)Z

    move-result v4

    if-nez v4, :cond_e

    .line 36
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_3

    .line 37
    :cond_e
    :try_start_b
    invoke-virtual {v12}, Ljava/net/HttpURLConnection;->disconnect()V
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_4

    goto :goto_11

    :catchall_4
    move-exception v0

    move-object v4, v0

    .line 38
    invoke-static {v4}, Lcom/tencent/bugly/proguard/y;->a(Ljava/lang/Throwable;)Z

    move-result v0

    if-nez v0, :cond_f

    .line 39
    :goto_10
    invoke-virtual {v4}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_f
    :goto_11
    move v0, v6

    const-wide/16 v4, 0x0

    goto :goto_14

    .line 40
    :goto_12
    :try_start_c
    invoke-virtual {v12}, Ljava/net/HttpURLConnection;->disconnect()V
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_5

    goto :goto_13

    :catchall_5
    move-exception v0

    move-object v3, v0

    .line 41
    invoke-static {v3}, Lcom/tencent/bugly/proguard/y;->a(Ljava/lang/Throwable;)Z

    move-result v0

    if-nez v0, :cond_10

    .line 42
    invoke-virtual {v3}, Ljava/lang/Throwable;->printStackTrace()V

    .line 43
    :cond_10
    :goto_13
    throw v2

    :cond_11
    const/4 v4, 0x0

    const/4 v7, 0x2

    const/16 v18, 0x1

    new-array v0, v4, [Ljava/lang/Object;

    const-string v5, "Failed to execute post."

    .line 44
    invoke-static {v5, v0}, Lcom/tencent/bugly/proguard/y;->c(Ljava/lang/String;[Ljava/lang/Object;)Z

    const-wide/16 v4, 0x0

    .line 45
    invoke-virtual {v3, v4, v5}, Lcom/tencent/bugly/proguard/w;->b(J)V

    move v0, v6

    :goto_14
    const/4 v4, 0x0

    const/4 v5, 0x0

    goto/16 :goto_3

    :cond_12
    move-object v2, v4

    return-object v2
.end method
