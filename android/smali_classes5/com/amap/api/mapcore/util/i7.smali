.class public Lcom/amap/api/mapcore/util/i7;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/amap/api/mapcore/util/i7$c;,
        Lcom/amap/api/mapcore/util/i7$d;,
        Lcom/amap/api/mapcore/util/i7$b;
    }
.end annotation


# instance fields
.field private a:I

.field private b:I

.field private c:Z

.field private d:Ljavax/net/ssl/SSLContext;

.field private e:Ljava/net/Proxy;

.field private volatile f:Z

.field private g:J

.field private h:J

.field private i:Ljava/lang/String;

.field private j:Lcom/amap/api/mapcore/util/i7$c;

.field private k:Lcom/amap/api/mapcore/util/f7$a;


# direct methods
.method constructor <init>(IILjava/net/Proxy;Z)V
    .locals 6

    const/4 v5, 0x0

    move-object v0, p0

    move v1, p1

    move v2, p2

    move-object v3, p3

    move v4, p4

    .line 1
    invoke-direct/range {v0 .. v5}, Lcom/amap/api/mapcore/util/i7;-><init>(IILjava/net/Proxy;ZLcom/amap/api/mapcore/util/f7$a;)V

    return-void
.end method

.method constructor <init>(IILjava/net/Proxy;ZLcom/amap/api/mapcore/util/f7$a;)V
    .locals 3

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 3
    iput-boolean v0, p0, Lcom/amap/api/mapcore/util/i7;->f:Z

    const-wide/16 v1, -0x1

    .line 4
    iput-wide v1, p0, Lcom/amap/api/mapcore/util/i7;->g:J

    const-wide/16 v1, 0x0

    .line 5
    iput-wide v1, p0, Lcom/amap/api/mapcore/util/i7;->h:J

    .line 6
    iput p1, p0, Lcom/amap/api/mapcore/util/i7;->a:I

    .line 7
    iput p2, p0, Lcom/amap/api/mapcore/util/i7;->b:I

    .line 8
    iput-object p3, p0, Lcom/amap/api/mapcore/util/i7;->e:Ljava/net/Proxy;

    .line 9
    invoke-static {}, Lcom/amap/api/mapcore/util/i5;->a()Lcom/amap/api/mapcore/util/i5;

    move-result-object p1

    invoke-virtual {p1, p4}, Lcom/amap/api/mapcore/util/i5;->i(Z)Z

    move-result p1

    iput-boolean p1, p0, Lcom/amap/api/mapcore/util/i7;->c:Z

    .line 10
    invoke-static {}, Lcom/amap/api/mapcore/util/i5;->j()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 11
    iput-boolean v0, p0, Lcom/amap/api/mapcore/util/i7;->c:Z

    .line 12
    :cond_0
    iput-object p5, p0, Lcom/amap/api/mapcore/util/i7;->k:Lcom/amap/api/mapcore/util/f7$a;

    .line 13
    invoke-direct {p0}, Lcom/amap/api/mapcore/util/i7;->t()V

    .line 14
    iget-boolean p1, p0, Lcom/amap/api/mapcore/util/i7;->c:Z

    const/4 p2, 0x0

    if-eqz p1, :cond_1

    :try_start_0
    const-string p1, "TLS"

    .line 15
    invoke-static {p1}, Ljavax/net/ssl/SSLContext;->getInstance(Ljava/lang/String;)Ljavax/net/ssl/SSLContext;

    move-result-object p1

    .line 16
    invoke-virtual {p1, p2, p2, p2}, Ljavax/net/ssl/SSLContext;->init([Ljavax/net/ssl/KeyManager;[Ljavax/net/ssl/TrustManager;Ljava/security/SecureRandom;)V

    .line 17
    iput-object p1, p0, Lcom/amap/api/mapcore/util/i7;->d:Ljavax/net/ssl/SSLContext;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    const-string p3, "ht"

    const-string p4, "ne"

    .line 18
    invoke-static {p1, p3, p4}, Lcom/amap/api/mapcore/util/b6;->e(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    .line 19
    :cond_1
    :goto_0
    new-instance p1, Lcom/amap/api/mapcore/util/i7$c;

    invoke-direct {p1, p2}, Lcom/amap/api/mapcore/util/i7$c;-><init>(Lcom/amap/api/mapcore/util/i7$a;)V

    iput-object p1, p0, Lcom/amap/api/mapcore/util/i7;->j:Lcom/amap/api/mapcore/util/i7$c;

    return-void
.end method

.method public static a(ILcom/amap/api/mapcore/util/k7;)I
    .locals 2

    const/4 v0, 0x1

    .line 1
    :try_start_0
    invoke-static {}, Lcom/amap/api/mapcore/util/d5;->D()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 p0, 0x4

    return p0

    :cond_0
    if-eqz p1, :cond_1

    .line 2
    invoke-virtual {p1}, Lcom/amap/api/mapcore/util/k7;->isSupportIPV6()Z

    move-result p1

    if-nez p1, :cond_1

    return v0

    :cond_1
    const/4 p1, 0x2

    if-ne p0, p1, :cond_2

    .line 3
    invoke-static {p0}, Lcom/amap/api/mapcore/util/i7;->r(I)I

    move-result v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-ne p0, v1, :cond_2

    return p1

    :catchall_0
    move-exception p0

    const-string p1, "htu"

    const-string v1, "gt"

    .line 4
    invoke-static {p0, p1, v1}, Lcom/amap/api/mapcore/util/e6;->r(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    return v0
.end method

.method private c(Lcom/amap/api/mapcore/util/i7$b;Z)Lcom/amap/api/mapcore/util/m7;
    .locals 16
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amap/api/mapcore/util/gb;,
            Ljava/io/IOException;
        }
    .end annotation

    move-object/from16 v8, p0

    const-string v9, "par"

    const-string v10, "ht"

    const-string v0, ""

    const/4 v11, 0x0

    .line 1
    :try_start_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    move-object/from16 v2, p1

    .line 2
    iget-object v12, v2, Lcom/amap/api/mapcore/util/i7$b;->a:Ljava/net/HttpURLConnection;

    .line 3
    invoke-virtual {v12}, Ljava/net/HttpURLConnection;->connect()V

    .line 4
    invoke-virtual {v12}, Ljava/net/HttpURLConnection;->getHeaderFields()Ljava/util/Map;

    move-result-object v13

    .line 5
    invoke-virtual {v12}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v1

    const/4 v14, 0x0

    if-eqz v13, :cond_0

    const-string v3, "gsid"

    .line 6
    invoke-interface {v13, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    if-eqz v3, :cond_0

    .line 7
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v6

    if-lez v6, :cond_0

    .line 8
    invoke-interface {v3, v14}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    move-object v0, v3

    :cond_0
    const/16 v3, 0xc8

    if-ne v1, v3, :cond_4

    .line 9
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    const/4 v3, 0x0

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    .line 10
    invoke-direct/range {v1 .. v7}, Lcom/amap/api/mapcore/util/i7;->n(Lcom/amap/api/mapcore/util/i7$b;ZJJ)V

    .line 11
    new-instance v1, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v1}, Ljava/io/ByteArrayOutputStream;-><init>()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_3
    .catchall {:try_start_0 .. :try_end_0} :catchall_7

    .line 12
    :try_start_1
    invoke-virtual {v12}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v2
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_2
    .catchall {:try_start_1 .. :try_end_1} :catchall_6

    .line 13
    :try_start_2
    new-instance v3, Ljava/io/PushbackInputStream;

    const/4 v4, 0x2

    invoke-direct {v3, v2, v4}, Ljava/io/PushbackInputStream;-><init>(Ljava/io/InputStream;I)V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_5

    :try_start_3
    new-array v4, v4, [B

    .line 14
    invoke-virtual {v3, v4}, Ljava/io/PushbackInputStream;->read([B)I

    .line 15
    invoke-virtual {v3, v4}, Ljava/io/PushbackInputStream;->unread([B)V

    .line 16
    aget-byte v5, v4, v14

    const/16 v6, 0x1f

    if-ne v5, v6, :cond_1

    const/4 v5, 0x1

    aget-byte v4, v4, v5

    const/16 v5, -0x75

    if-ne v4, v5, :cond_1

    if-nez p2, :cond_1

    .line 17
    new-instance v4, Ljava/util/zip/GZIPInputStream;

    invoke-direct {v4, v3}, Ljava/util/zip/GZIPInputStream;-><init>(Ljava/io/InputStream;)V

    move-object v11, v4

    goto :goto_0

    :cond_1
    move-object v11, v3

    :goto_0
    const/16 v4, 0x400

    new-array v4, v4, [B

    .line 18
    :goto_1
    invoke-virtual {v11, v4}, Ljava/io/InputStream;->read([B)I

    move-result v5

    const/4 v6, -0x1

    if-eq v5, v6, :cond_2

    .line 19
    invoke-virtual {v1, v4, v14, v5}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    goto :goto_1

    .line 20
    :cond_2
    invoke-static {}, Lcom/amap/api/mapcore/util/e6;->q()V

    .line 21
    new-instance v4, Lcom/amap/api/mapcore/util/m7;

    invoke-direct {v4}, Lcom/amap/api/mapcore/util/m7;-><init>()V

    .line 22
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v5

    iput-object v5, v4, Lcom/amap/api/mapcore/util/m7;->a:[B

    .line 23
    iput-object v13, v4, Lcom/amap/api/mapcore/util/m7;->b:Ljava/util/Map;

    .line 24
    iget-object v5, v8, Lcom/amap/api/mapcore/util/i7;->i:Ljava/lang/String;

    iput-object v5, v4, Lcom/amap/api/mapcore/util/m7;->c:Ljava/lang/String;

    .line 25
    iput-object v0, v4, Lcom/amap/api/mapcore/util/m7;->d:Ljava/lang/String;
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_4

    .line 26
    :try_start_4
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_2

    :catchall_0
    move-exception v0

    move-object v1, v0

    .line 27
    invoke-static {v1, v10, v9}, Lcom/amap/api/mapcore/util/b6;->e(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    :goto_2
    if-eqz v2, :cond_3

    .line 28
    :try_start_5
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    goto :goto_3

    :catchall_1
    move-exception v0

    move-object v1, v0

    .line 29
    invoke-static {v1, v10, v9}, Lcom/amap/api/mapcore/util/b6;->e(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    .line 30
    :cond_3
    :goto_3
    :try_start_6
    invoke-virtual {v3}, Ljava/io/PushbackInputStream;->close()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    goto :goto_4

    :catchall_2
    move-exception v0

    move-object v1, v0

    .line 31
    invoke-static {v1, v10, v9}, Lcom/amap/api/mapcore/util/b6;->e(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    .line 32
    :goto_4
    :try_start_7
    invoke-virtual {v11}, Ljava/io/InputStream;->close()V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_3

    goto :goto_5

    :catchall_3
    move-exception v0

    move-object v1, v0

    .line 33
    invoke-static {v1, v10, v9}, Lcom/amap/api/mapcore/util/b6;->e(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    :goto_5
    return-object v4

    :catchall_4
    move-exception v0

    move-object v4, v0

    move-object v15, v11

    move-object v11, v1

    move-object v1, v15

    goto/16 :goto_9

    :catch_0
    move-object v15, v11

    move-object v11, v1

    move-object v1, v15

    goto/16 :goto_8

    :catchall_5
    move-exception v0

    move-object v4, v0

    move-object v3, v11

    goto :goto_6

    :catch_1
    move-object v3, v11

    goto :goto_7

    :catchall_6
    move-exception v0

    move-object v4, v0

    move-object v2, v11

    move-object v3, v2

    :goto_6
    move-object v11, v1

    move-object v1, v3

    goto :goto_9

    :catch_2
    move-object v2, v11

    move-object v3, v2

    :goto_7
    move-object v11, v1

    move-object v1, v3

    goto :goto_8

    .line 34
    :cond_4
    :try_start_8
    new-instance v2, Lcom/amap/api/mapcore/util/gb;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "\u7f51\u7edc\u5f02\u5e38\u539f\u56e0\uff1a"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 35
    invoke-virtual {v12}, Ljava/net/HttpURLConnection;->getResponseMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " \u7f51\u7edc\u5f02\u5e38\u72b6\u6001\u7801\uff1a"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, "  "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, v8, Lcom/amap/api/mapcore/util/i7;->i:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    iget-object v4, v8, Lcom/amap/api/mapcore/util/i7;->i:Ljava/lang/String;

    invoke-direct {v2, v3, v0, v4}, Lcom/amap/api/mapcore/util/gb;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 36
    invoke-virtual {v2, v1}, Lcom/amap/api/mapcore/util/gb;->a(I)V

    .line 37
    throw v2
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_3
    .catchall {:try_start_8 .. :try_end_8} :catchall_7

    :catchall_7
    move-exception v0

    move-object v4, v0

    move-object v1, v11

    move-object v2, v1

    move-object v3, v2

    goto :goto_9

    :catch_3
    move-object v1, v11

    move-object v2, v1

    move-object v3, v2

    .line 38
    :goto_8
    :try_start_9
    new-instance v4, Lcom/amap/api/mapcore/util/gb;

    const-string v5, "IO \u64cd\u4f5c\u5f02\u5e38 - IOException"

    iget-object v6, v8, Lcom/amap/api/mapcore/util/i7;->i:Ljava/lang/String;

    invoke-direct {v4, v5, v0, v6}, Lcom/amap/api/mapcore/util/gb;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    throw v4
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_8

    :catchall_8
    move-exception v0

    move-object v4, v0

    :goto_9
    if-eqz v11, :cond_5

    .line 39
    :try_start_a
    invoke-virtual {v11}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_9

    goto :goto_a

    :catchall_9
    move-exception v0

    move-object v5, v0

    .line 40
    invoke-static {v5, v10, v9}, Lcom/amap/api/mapcore/util/b6;->e(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    :cond_5
    :goto_a
    if-eqz v2, :cond_6

    .line 41
    :try_start_b
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_a

    goto :goto_b

    :catchall_a
    move-exception v0

    move-object v2, v0

    .line 42
    invoke-static {v2, v10, v9}, Lcom/amap/api/mapcore/util/b6;->e(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    :cond_6
    :goto_b
    if-eqz v3, :cond_7

    .line 43
    :try_start_c
    invoke-virtual {v3}, Ljava/io/PushbackInputStream;->close()V
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_b

    goto :goto_c

    :catchall_b
    move-exception v0

    move-object v2, v0

    .line 44
    invoke-static {v2, v10, v9}, Lcom/amap/api/mapcore/util/b6;->e(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    :cond_7
    :goto_c
    if-eqz v1, :cond_8

    .line 45
    :try_start_d
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_c

    goto :goto_d

    :catchall_c
    move-exception v0

    move-object v1, v0

    .line 46
    invoke-static {v1, v10, v9}, Lcom/amap/api/mapcore/util/b6;->e(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    .line 47
    :cond_8
    :goto_d
    throw v4
.end method

.method private e(ILjava/lang/String;Ljava/util/Map;)Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    const/4 v0, 0x1

    if-eq p1, v0, :cond_0

    const-string p1, ""

    goto :goto_0

    .line 1
    :cond_0
    sget-object p1, Lcom/amap/api/mapcore/util/f7;->b:Ljava/lang/String;

    .line 2
    :goto_0
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    return-object p2

    .line 3
    :cond_1
    invoke-static {p2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p2

    .line 4
    invoke-virtual {p2}, Landroid/net/Uri;->getHost()Ljava/lang/String;

    move-result-object v0

    .line 5
    invoke-virtual {p2}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object p2

    invoke-virtual {p2, p1}, Landroid/net/Uri$Builder;->encodedAuthority(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object p2

    invoke-virtual {p2}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object p2

    .line 6
    invoke-virtual {p2}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object p2

    if-eqz p3, :cond_2

    const-string v1, "targetHost"

    .line 7
    invoke-interface {p3, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 8
    :cond_2
    iget-boolean p3, p0, Lcom/amap/api/mapcore/util/i7;->c:Z

    if-eqz p3, :cond_3

    .line 9
    iget-object p3, p0, Lcom/amap/api/mapcore/util/i7;->j:Lcom/amap/api/mapcore/util/i7$c;

    invoke-virtual {p3, p1}, Lcom/amap/api/mapcore/util/i7$c;->c(Ljava/lang/String;)V

    :cond_3
    return-object p2
.end method

.method private f(Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;
    .locals 1

    const/4 v0, 0x2

    if-eq p3, v0, :cond_1

    const/4 v0, 0x4

    if-ne p3, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p3, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p3, 0x1

    :goto_1
    if-eqz p3, :cond_2

    .line 1
    :try_start_0
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez p3, :cond_2

    return-object p2

    :catchall_0
    :cond_2
    return-object p1
.end method

.method private g(Ljava/lang/String;Ljava/util/Map;)Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .line 1
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-object p1

    .line 2
    :cond_0
    invoke-static {p2}, Lcom/amap/api/mapcore/util/i7;->i(Ljava/util/Map;)Ljava/lang/String;

    move-result-object p2

    .line 3
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 4
    invoke-virtual {v0, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    if-eqz p2, :cond_1

    const-string p1, "?"

    .line 5
    invoke-virtual {v0, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 6
    :cond_1
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method private h(Ljava/net/HttpURLConnection;)Ljava/lang/String;
    .locals 2

    const-string v0, ""

    if-nez p1, :cond_0

    return-object v0

    .line 1
    :cond_0
    :try_start_0
    invoke-virtual {p1}, Ljava/net/HttpURLConnection;->getHeaderFields()Ljava/util/Map;

    move-result-object p1

    if-nez p1, :cond_1

    return-object v0

    :cond_1
    const-string v1, "gsid"

    .line 2
    invoke-interface {p1, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/List;

    if-eqz p1, :cond_2

    .line 3
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_2

    const/4 v1, 0x0

    .line 4
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object p1

    :catchall_0
    :cond_2
    return-object v0
.end method

.method static i(Ljava/util/Map;)Ljava/lang/String;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    if-eqz p0, :cond_3

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 2
    invoke-interface {p0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 3
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 4
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    if-nez v1, :cond_0

    const-string v1, ""

    .line 5
    :cond_0
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v3

    if-lez v3, :cond_1

    const-string v3, "&"

    .line 6
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 7
    :cond_1
    invoke-static {v2}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "="

    .line 8
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 9
    invoke-static {v1}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 10
    :cond_2
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_3
    const/4 p0, 0x0

    return-object p0
.end method

.method private m(Lcom/amap/api/mapcore/util/i7$b;)V
    .locals 0

    if-nez p1, :cond_0

    return-void

    .line 1
    :cond_0
    iget p1, p1, Lcom/amap/api/mapcore/util/i7$b;->b:I

    invoke-static {p1}, Lcom/amap/api/mapcore/util/d5;->g(I)V

    return-void
.end method

.method private n(Lcom/amap/api/mapcore/util/i7$b;ZJJ)V
    .locals 8

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 1
    :try_start_0
    iget-object v2, p1, Lcom/amap/api/mapcore/util/i7$b;->a:Ljava/net/HttpURLConnection;

    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->getURL()Ljava/net/URL;

    move-result-object v2

    invoke-virtual {v2}, Ljava/net/URL;->toString()Ljava/lang/String;

    move-result-object v1

    .line 2
    iget p1, p1, Lcom/amap/api/mapcore/util/i7$b;->b:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v2, 0x3

    const/4 v3, 0x1

    if-ne p1, v2, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    const/4 v4, 0x2

    if-eq p1, v4, :cond_1

    const/4 v4, 0x4

    if-ne p1, v4, :cond_2

    :cond_1
    const/4 v0, 0x1

    :cond_2
    move v3, v0

    move v4, v2

    move-object v2, v1

    goto :goto_1

    :catchall_0
    move-object v2, v1

    const/4 v3, 0x0

    const/4 v4, 0x0

    .line 3
    :goto_1
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_3

    return-void

    :cond_3
    const-wide/16 v0, 0x0

    sub-long/2addr p5, p3

    .line 4
    invoke-static {v0, v1, p5, p6}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v6

    move v5, p2

    .line 5
    invoke-static/range {v2 .. v7}, Lcom/amap/api/mapcore/util/d5;->q(Ljava/lang/String;ZZZJ)V

    return-void
.end method

.method private p(Ljava/util/Map;Ljava/net/HttpURLConnection;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/net/HttpURLConnection;",
            ")V"
        }
    .end annotation

    if-eqz p1, :cond_0

    .line 1
    invoke-interface {p1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 2
    invoke-interface {p1, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 3
    invoke-virtual {p2, v1, v2}, Ljava/net/HttpURLConnection;->addRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    :try_start_0
    const-string p1, "csid"

    .line 4
    iget-object v0, p0, Lcom/amap/api/mapcore/util/i7;->i:Ljava/lang/String;

    invoke-virtual {p2, p1, v0}, Ljava/net/HttpURLConnection;->addRequestProperty(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception p1

    const-string v0, "ht"

    const-string v1, "adh"

    .line 5
    invoke-static {p1, v0, v1}, Lcom/amap/api/mapcore/util/b6;->e(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    .line 6
    :goto_1
    iget p1, p0, Lcom/amap/api/mapcore/util/i7;->a:I

    invoke-virtual {p2, p1}, Ljava/net/HttpURLConnection;->setConnectTimeout(I)V

    .line 7
    iget p1, p0, Lcom/amap/api/mapcore/util/i7;->b:I

    invoke-virtual {p2, p1}, Ljava/net/HttpURLConnection;->setReadTimeout(I)V

    return-void
.end method

.method public static q(I)Z
    .locals 1

    const/4 v0, 0x2

    if-ne p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static r(I)I
    .locals 1

    const/4 v0, 0x2

    if-ne p0, v0, :cond_0

    .line 1
    invoke-static {}, Lcom/amap/api/mapcore/util/d5;->w()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 p0, 0x1

    :cond_0
    return p0
.end method

.method private t()V
    .locals 3

    .line 1
    :try_start_0
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v0

    .line 2
    invoke-virtual {v0}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "-"

    const-string v2, ""

    .line 3
    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/amap/api/mapcore/util/i7;->i:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    const-string v1, "ht"

    const-string v2, "ic"

    .line 4
    invoke-static {v0, v1, v2}, Lcom/amap/api/mapcore/util/b6;->e(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method private v(Lcom/amap/api/mapcore/util/i7$b;)V
    .locals 7

    const/4 v2, 0x1

    const-wide/16 v3, 0x0

    const-wide/16 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    .line 1
    invoke-direct/range {v0 .. v6}, Lcom/amap/api/mapcore/util/i7;->n(Lcom/amap/api/mapcore/util/i7$b;ZJJ)V

    return-void
.end method

.method private w(I)V
    .locals 2

    const/4 v0, 0x2

    const/16 v1, 0x1388

    if-eq p1, v0, :cond_1

    const/4 v0, 0x3

    if-eq p1, v0, :cond_0

    goto :goto_0

    .line 1
    :cond_0
    :try_start_0
    iput v1, p0, Lcom/amap/api/mapcore/util/i7;->a:I

    .line 2
    iput v1, p0, Lcom/amap/api/mapcore/util/i7;->b:I

    goto :goto_0

    .line 3
    :cond_1
    iget p1, p0, Lcom/amap/api/mapcore/util/i7;->a:I

    sub-int/2addr p1, v1

    invoke-static {p1, v1}, Ljava/lang/Math;->max(II)I

    move-result p1

    iput p1, p0, Lcom/amap/api/mapcore/util/i7;->a:I

    .line 4
    iget p1, p0, Lcom/amap/api/mapcore/util/i7;->b:I

    sub-int/2addr p1, v1

    invoke-static {p1, v1}, Ljava/lang/Math;->max(II)I

    move-result p1

    iput p1, p0, Lcom/amap/api/mapcore/util/i7;->b:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    :goto_0
    return-void
.end method


# virtual methods
.method b(Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;Ljava/util/Map;ZI)Lcom/amap/api/mapcore/util/i7$b;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Z",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;ZI)",
            "Lcom/amap/api/mapcore/util/i7$b;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    invoke-static {}, Lcom/amap/api/mapcore/util/g5;->D()V

    .line 2
    invoke-direct {p0, p1, p2, p7}, Lcom/amap/api/mapcore/util/i7;->f(Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p1

    .line 3
    invoke-direct {p0, p7}, Lcom/amap/api/mapcore/util/i7;->w(I)V

    if-nez p5, :cond_0

    .line 4
    new-instance p5, Ljava/util/HashMap;

    invoke-direct {p5}, Ljava/util/HashMap;-><init>()V

    .line 5
    :cond_0
    iget-object p2, p0, Lcom/amap/api/mapcore/util/i7;->j:Lcom/amap/api/mapcore/util/i7$c;

    invoke-virtual {p2}, Lcom/amap/api/mapcore/util/i7$c;->a()Lcom/amap/api/mapcore/util/i7$d;

    move-result-object p2

    if-eqz p3, :cond_1

    .line 6
    invoke-static {p4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p3

    if-nez p3, :cond_1

    .line 7
    iget-object p2, p0, Lcom/amap/api/mapcore/util/i7;->j:Lcom/amap/api/mapcore/util/i7$c;

    invoke-virtual {p2, p4}, Lcom/amap/api/mapcore/util/i7$c;->b(Ljava/lang/String;)Lcom/amap/api/mapcore/util/i7$d;

    move-result-object p2

    .line 8
    :cond_1
    sget p3, Lcom/amap/api/mapcore/util/f7;->a:I

    invoke-direct {p0, p3, p1, p5}, Lcom/amap/api/mapcore/util/i7;->e(ILjava/lang/String;Ljava/util/Map;)Ljava/lang/String;

    move-result-object p1

    .line 9
    iget-boolean p3, p0, Lcom/amap/api/mapcore/util/i7;->c:Z

    if-eqz p3, :cond_2

    .line 10
    invoke-static {p1}, Lcom/amap/api/mapcore/util/i5;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 11
    :cond_2
    new-instance p3, Ljava/net/URL;

    invoke-direct {p3, p1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 12
    iget-object p1, p0, Lcom/amap/api/mapcore/util/i7;->k:Lcom/amap/api/mapcore/util/f7$a;

    if-eqz p1, :cond_3

    .line 13
    iget-object p4, p0, Lcom/amap/api/mapcore/util/i7;->e:Ljava/net/Proxy;

    invoke-interface {p1, p4, p3}, Lcom/amap/api/mapcore/util/f7$a;->a(Ljava/net/Proxy;Ljava/net/URL;)Ljava/net/URLConnection;

    move-result-object p1

    goto :goto_0

    :cond_3
    const/4 p1, 0x0

    :goto_0
    if-nez p1, :cond_5

    .line 14
    iget-object p1, p0, Lcom/amap/api/mapcore/util/i7;->e:Ljava/net/Proxy;

    if-eqz p1, :cond_4

    .line 15
    invoke-virtual {p3, p1}, Ljava/net/URL;->openConnection(Ljava/net/Proxy;)Ljava/net/URLConnection;

    move-result-object p1

    goto :goto_1

    .line 16
    :cond_4
    invoke-virtual {p3}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object p1

    .line 17
    :cond_5
    :goto_1
    iget-boolean p3, p0, Lcom/amap/api/mapcore/util/i7;->c:Z

    if-eqz p3, :cond_6

    .line 18
    check-cast p1, Ljavax/net/ssl/HttpsURLConnection;

    .line 19
    iget-object p3, p0, Lcom/amap/api/mapcore/util/i7;->d:Ljavax/net/ssl/SSLContext;

    .line 20
    invoke-virtual {p3}, Ljavax/net/ssl/SSLContext;->getSocketFactory()Ljavax/net/ssl/SSLSocketFactory;

    move-result-object p3

    invoke-virtual {p1, p3}, Ljavax/net/ssl/HttpsURLConnection;->setSSLSocketFactory(Ljavax/net/ssl/SSLSocketFactory;)V

    .line 21
    invoke-virtual {p1, p2}, Ljavax/net/ssl/HttpsURLConnection;->setHostnameVerifier(Ljavax/net/ssl/HostnameVerifier;)V

    goto :goto_2

    .line 22
    :cond_6
    check-cast p1, Ljava/net/HttpURLConnection;

    .line 23
    :goto_2
    sget-object p2, Landroid/os/Build$VERSION;->SDK:Ljava/lang/String;

    if-eqz p2, :cond_7

    sget p2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 p3, 0xd

    if-le p2, p3, :cond_7

    const-string p2, "Connection"

    const-string p3, "close"

    .line 24
    invoke-virtual {p1, p2, p3}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 25
    :cond_7
    invoke-direct {p0, p5, p1}, Lcom/amap/api/mapcore/util/i7;->p(Ljava/util/Map;Ljava/net/HttpURLConnection;)V

    const/4 p2, 0x1

    if-eqz p6, :cond_8

    const-string p3, "POST"

    .line 26
    invoke-virtual {p1, p3}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    const/4 p3, 0x0

    .line 27
    invoke-virtual {p1, p3}, Ljava/net/HttpURLConnection;->setUseCaches(Z)V

    .line 28
    invoke-virtual {p1, p2}, Ljava/net/HttpURLConnection;->setDoInput(Z)V

    .line 29
    invoke-virtual {p1, p2}, Ljava/net/HttpURLConnection;->setDoOutput(Z)V

    goto :goto_3

    :cond_8
    const-string p3, "GET"

    .line 30
    invoke-virtual {p1, p3}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    .line 31
    invoke-virtual {p1, p2}, Ljava/net/HttpURLConnection;->setDoInput(Z)V

    .line 32
    :goto_3
    new-instance p2, Lcom/amap/api/mapcore/util/i7$b;

    invoke-direct {p2, p1, p7}, Lcom/amap/api/mapcore/util/i7$b;-><init>(Ljava/net/HttpURLConnection;I)V

    return-object p2
.end method

.method d(Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;Ljava/util/Map;[BZI)Lcom/amap/api/mapcore/util/m7;
    .locals 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Z",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;[BZI)",
            "Lcom/amap/api/mapcore/util/m7;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amap/api/mapcore/util/gb;
        }
    .end annotation

    move-object v9, p0

    move-object/from16 v0, p6

    const-string v10, "\u672a\u77e5\u7684\u9519\u8bef"

    const-string v11, "mPt"

    const-string v12, "ht"

    const/4 v7, 0x1

    const/4 v13, 0x0

    move-object v1, p0

    move-object v2, p1

    move-object/from16 v3, p2

    move/from16 v4, p3

    move-object/from16 v5, p4

    move-object/from16 v6, p5

    move/from16 v8, p8

    .line 1
    :try_start_0
    invoke-virtual/range {v1 .. v8}, Lcom/amap/api/mapcore/util/i7;->b(Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;Ljava/util/Map;ZI)Lcom/amap/api/mapcore/util/i7$b;

    move-result-object v1
    :try_end_0
    .catch Ljava/net/ConnectException; {:try_start_0 .. :try_end_0} :catch_f
    .catch Ljava/net/MalformedURLException; {:try_start_0 .. :try_end_0} :catch_e
    .catch Ljava/net/UnknownHostException; {:try_start_0 .. :try_end_0} :catch_d
    .catch Ljava/net/SocketException; {:try_start_0 .. :try_end_0} :catch_c
    .catch Ljava/net/SocketTimeoutException; {:try_start_0 .. :try_end_0} :catch_b
    .catch Ljava/io/InterruptedIOException; {:try_start_0 .. :try_end_0} :catch_9
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_8
    .catch Lcom/amap/api/mapcore/util/gb; {:try_start_0 .. :try_end_0} :catch_7
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    .line 2
    :try_start_1
    iget-object v13, v1, Lcom/amap/api/mapcore/util/i7$b;->a:Ljava/net/HttpURLConnection;

    if-eqz v0, :cond_0

    .line 3
    array-length v2, v0

    if-lez v2, :cond_0

    .line 4
    new-instance v2, Ljava/io/DataOutputStream;

    .line 5
    invoke-virtual {v13}, Ljava/net/HttpURLConnection;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 6
    invoke-virtual {v2, v0}, Ljava/io/DataOutputStream;->write([B)V

    .line 7
    invoke-virtual {v2}, Ljava/io/DataOutputStream;->close()V

    :cond_0
    move/from16 v0, p7

    .line 8
    invoke-direct {p0, v1, v0}, Lcom/amap/api/mapcore/util/i7;->c(Lcom/amap/api/mapcore/util/i7$b;Z)Lcom/amap/api/mapcore/util/m7;

    move-result-object v1
    :try_end_1
    .catch Ljava/net/ConnectException; {:try_start_1 .. :try_end_1} :catch_6
    .catch Ljava/net/MalformedURLException; {:try_start_1 .. :try_end_1} :catch_5
    .catch Ljava/net/UnknownHostException; {:try_start_1 .. :try_end_1} :catch_4
    .catch Ljava/net/SocketException; {:try_start_1 .. :try_end_1} :catch_3
    .catch Ljava/net/SocketTimeoutException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/io/InterruptedIOException; {:try_start_1 .. :try_end_1} :catch_a
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Lcom/amap/api/mapcore/util/gb; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    if-eqz v13, :cond_1

    .line 9
    :try_start_2
    invoke-virtual {v13}, Ljava/net/HttpURLConnection;->disconnect()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    move-object v2, v0

    .line 10
    invoke-static {v2, v12, v11}, Lcom/amap/api/mapcore/util/b6;->e(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    :goto_0
    return-object v1

    :catchall_1
    move-exception v0

    goto :goto_1

    :catch_0
    move-exception v0

    goto :goto_2

    :catch_1
    move-exception v0

    goto :goto_3

    :catch_2
    move-exception v0

    goto :goto_4

    :catch_3
    move-exception v0

    goto :goto_5

    :catch_4
    move-exception v0

    goto :goto_6

    :catch_5
    move-exception v0

    goto :goto_7

    :catch_6
    move-exception v0

    goto :goto_8

    :catchall_2
    move-exception v0

    move-object v1, v13

    .line 11
    :goto_1
    :try_start_3
    invoke-static {v0, v12, v11}, Lcom/amap/api/mapcore/util/b6;->e(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    .line 12
    new-instance v0, Lcom/amap/api/mapcore/util/gb;

    invoke-direct {v0, v10}, Lcom/amap/api/mapcore/util/gb;-><init>(Ljava/lang/String;)V

    throw v0

    :catch_7
    move-exception v0

    move-object v1, v13

    .line 13
    :goto_2
    invoke-static {v0, v12, v11}, Lcom/amap/api/mapcore/util/b6;->e(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    .line 14
    throw v0

    :catch_8
    move-exception v0

    move-object v1, v13

    .line 15
    :goto_3
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    .line 16
    new-instance v0, Lcom/amap/api/mapcore/util/gb;

    const-string v2, "IO \u64cd\u4f5c\u5f02\u5e38 - IOException"

    invoke-direct {v0, v2}, Lcom/amap/api/mapcore/util/gb;-><init>(Ljava/lang/String;)V

    throw v0

    :catch_9
    move-object v1, v13

    .line 17
    :catch_a
    new-instance v0, Lcom/amap/api/mapcore/util/gb;

    invoke-direct {v0, v10}, Lcom/amap/api/mapcore/util/gb;-><init>(Ljava/lang/String;)V

    throw v0

    :catch_b
    move-exception v0

    move-object v1, v13

    .line 18
    :goto_4
    invoke-virtual {v0}, Ljava/net/SocketTimeoutException;->printStackTrace()V

    .line 19
    new-instance v0, Lcom/amap/api/mapcore/util/gb;

    const-string v2, "socket \u8fde\u63a5\u8d85\u65f6 - SocketTimeoutException"

    invoke-direct {v0, v2}, Lcom/amap/api/mapcore/util/gb;-><init>(Ljava/lang/String;)V

    throw v0

    :catch_c
    move-exception v0

    move-object v1, v13

    .line 20
    :goto_5
    invoke-virtual {v0}, Ljava/net/SocketException;->printStackTrace()V

    .line 21
    new-instance v0, Lcom/amap/api/mapcore/util/gb;

    const-string v2, "socket \u8fde\u63a5\u5f02\u5e38 - SocketException"

    invoke-direct {v0, v2}, Lcom/amap/api/mapcore/util/gb;-><init>(Ljava/lang/String;)V

    throw v0

    :catch_d
    move-exception v0

    move-object v1, v13

    .line 22
    :goto_6
    invoke-virtual {v0}, Ljava/net/UnknownHostException;->printStackTrace()V

    .line 23
    new-instance v0, Lcom/amap/api/mapcore/util/gb;

    const-string v2, "\u672a\u77e5\u4e3b\u673a - UnKnowHostException"

    invoke-direct {v0, v2}, Lcom/amap/api/mapcore/util/gb;-><init>(Ljava/lang/String;)V

    throw v0

    :catch_e
    move-exception v0

    move-object v1, v13

    .line 24
    :goto_7
    invoke-virtual {v0}, Ljava/net/MalformedURLException;->printStackTrace()V

    .line 25
    new-instance v0, Lcom/amap/api/mapcore/util/gb;

    const-string v2, "url\u5f02\u5e38 - MalformedURLException"

    invoke-direct {v0, v2}, Lcom/amap/api/mapcore/util/gb;-><init>(Ljava/lang/String;)V

    throw v0

    :catch_f
    move-exception v0

    move-object v1, v13

    .line 26
    :goto_8
    invoke-virtual {v0}, Ljava/net/ConnectException;->printStackTrace()V

    .line 27
    new-instance v0, Lcom/amap/api/mapcore/util/gb;

    const-string v2, "http\u8fde\u63a5\u5931\u8d25 - ConnectionException"

    invoke-direct {v0, v2}, Lcom/amap/api/mapcore/util/gb;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    :catchall_3
    move-exception v0

    move-object v2, v0

    .line 28
    :try_start_4
    invoke-static/range {p8 .. p8}, Lcom/amap/api/mapcore/util/d5;->g(I)V

    .line 29
    invoke-direct {p0, v1}, Lcom/amap/api/mapcore/util/i7;->v(Lcom/amap/api/mapcore/util/i7$b;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_4

    goto :goto_9

    :catchall_4
    nop

    :goto_9
    if-eqz v13, :cond_2

    .line 30
    :try_start_5
    invoke-virtual {v13}, Ljava/net/HttpURLConnection;->disconnect()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_5

    goto :goto_a

    :catchall_5
    move-exception v0

    move-object v1, v0

    .line 31
    invoke-static {v1, v12, v11}, Lcom/amap/api/mapcore/util/b6;->e(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    .line 32
    :cond_2
    :goto_a
    throw v2
.end method

.method j(Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;Ljava/util/Map;Ljava/util/Map;ZI)Ljava/util/Map;
    .locals 19
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Z",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;ZI)",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amap/api/mapcore/util/gb;
        }
    .end annotation

    move-object/from16 v9, p0

    move-object/from16 v0, p6

    const-string v10, "mgr"

    const-string v11, "hth"

    const-string v12, "\u672a\u77e5\u7684\u9519\u8bef"

    const/4 v13, 0x1

    const/4 v14, 0x0

    const/4 v15, 0x0

    move-object/from16 v1, p1

    .line 1
    :try_start_0
    invoke-direct {v9, v1, v0}, Lcom/amap/api/mapcore/util/i7;->g(Ljava/lang/String;Ljava/util/Map;)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v1, p2

    .line 2
    invoke-direct {v9, v1, v0}, Lcom/amap/api/mapcore/util/i7;->g(Ljava/lang/String;Ljava/util/Map;)Ljava/lang/String;

    move-result-object v3
    :try_end_0
    .catch Ljava/net/ConnectException; {:try_start_0 .. :try_end_0} :catch_1f
    .catch Ljava/net/MalformedURLException; {:try_start_0 .. :try_end_0} :catch_1e
    .catch Ljava/net/UnknownHostException; {:try_start_0 .. :try_end_0} :catch_1d
    .catch Ljava/net/SocketException; {:try_start_0 .. :try_end_0} :catch_1c
    .catch Ljava/net/SocketTimeoutException; {:try_start_0 .. :try_end_0} :catch_1b
    .catch Ljava/io/InterruptedIOException; {:try_start_0 .. :try_end_0} :catch_1a
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_19
    .catch Lcom/amap/api/mapcore/util/gb; {:try_start_0 .. :try_end_0} :catch_18
    .catchall {:try_start_0 .. :try_end_0} :catchall_4

    .line 3
    :try_start_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v16

    const/4 v7, 0x0

    move-object/from16 v1, p0

    move/from16 v4, p3

    move-object/from16 v5, p4

    move-object/from16 v6, p5

    move/from16 v8, p8

    .line 4
    invoke-virtual/range {v1 .. v8}, Lcom/amap/api/mapcore/util/i7;->b(Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;Ljava/util/Map;ZI)Lcom/amap/api/mapcore/util/i7$b;

    move-result-object v1
    :try_end_1
    .catch Ljava/net/ConnectException; {:try_start_1 .. :try_end_1} :catch_17
    .catch Ljava/net/MalformedURLException; {:try_start_1 .. :try_end_1} :catch_16
    .catch Ljava/net/UnknownHostException; {:try_start_1 .. :try_end_1} :catch_15
    .catch Ljava/net/SocketException; {:try_start_1 .. :try_end_1} :catch_14
    .catch Ljava/net/SocketTimeoutException; {:try_start_1 .. :try_end_1} :catch_13
    .catch Ljava/io/InterruptedIOException; {:try_start_1 .. :try_end_1} :catch_12
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_11
    .catch Lcom/amap/api/mapcore/util/gb; {:try_start_1 .. :try_end_1} :catch_10
    .catchall {:try_start_1 .. :try_end_1} :catchall_3

    .line 5
    :try_start_2
    iget-object v14, v1, Lcom/amap/api/mapcore/util/i7$b;->a:Ljava/net/HttpURLConnection;

    .line 6
    invoke-virtual {v14}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v0

    const/16 v2, 0x190

    if-ge v0, v2, :cond_3

    .line 7
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2
    :try_end_2
    .catch Ljava/net/ConnectException; {:try_start_2 .. :try_end_2} :catch_f
    .catch Ljava/net/MalformedURLException; {:try_start_2 .. :try_end_2} :catch_e
    .catch Ljava/net/UnknownHostException; {:try_start_2 .. :try_end_2} :catch_d
    .catch Ljava/net/SocketException; {:try_start_2 .. :try_end_2} :catch_c
    .catch Ljava/net/SocketTimeoutException; {:try_start_2 .. :try_end_2} :catch_b
    .catch Ljava/io/InterruptedIOException; {:try_start_2 .. :try_end_2} :catch_a
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_9
    .catch Lcom/amap/api/mapcore/util/gb; {:try_start_2 .. :try_end_2} :catch_8
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    const/4 v0, 0x0

    move-object/from16 p1, p0

    move-object/from16 p2, v1

    move/from16 p3, v0

    move-wide/from16 p4, v16

    move-wide/from16 p6, v2

    .line 8
    :try_start_3
    invoke-direct/range {p1 .. p7}, Lcom/amap/api/mapcore/util/i7;->n(Lcom/amap/api/mapcore/util/i7$b;ZJJ)V

    .line 9
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    const/4 v0, 0x0

    :goto_0
    const/16 v3, 0x32

    if-ge v0, v3, :cond_1

    .line 10
    invoke-virtual {v14, v0}, Ljava/net/HttpURLConnection;->getHeaderFieldKey(I)Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_0

    goto :goto_1

    .line 11
    :cond_0
    invoke-virtual {v14, v3}, Ljava/net/HttpURLConnection;->getHeaderField(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 12
    invoke-virtual {v3}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_3
    .catch Ljava/net/ConnectException; {:try_start_3 .. :try_end_3} :catch_7
    .catch Ljava/net/MalformedURLException; {:try_start_3 .. :try_end_3} :catch_6
    .catch Ljava/net/UnknownHostException; {:try_start_3 .. :try_end_3} :catch_5
    .catch Ljava/net/SocketException; {:try_start_3 .. :try_end_3} :catch_4
    .catch Ljava/net/SocketTimeoutException; {:try_start_3 .. :try_end_3} :catch_3
    .catch Ljava/io/InterruptedIOException; {:try_start_3 .. :try_end_3} :catch_2
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1
    .catch Lcom/amap/api/mapcore/util/gb; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    :goto_1
    if-eqz v14, :cond_2

    .line 13
    :try_start_4
    invoke-virtual {v14}, Ljava/net/HttpURLConnection;->disconnect()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_2

    :catchall_0
    move-exception v0

    move-object v1, v0

    .line 14
    invoke-static {v1, v11, v10}, Lcom/amap/api/mapcore/util/b6;->e(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    :goto_2
    return-object v2

    :catchall_1
    move-exception v0

    const/4 v13, 0x0

    goto :goto_3

    :catch_0
    move-exception v0

    const/4 v13, 0x0

    goto :goto_4

    :catch_1
    const/4 v13, 0x0

    goto :goto_5

    :catch_2
    const/4 v13, 0x0

    goto :goto_6

    :catch_3
    const/4 v13, 0x0

    goto :goto_7

    :catch_4
    const/4 v13, 0x0

    goto :goto_8

    :catch_5
    const/4 v13, 0x0

    goto :goto_9

    :catch_6
    const/4 v13, 0x0

    goto :goto_a

    :catch_7
    const/4 v13, 0x0

    goto :goto_b

    .line 15
    :cond_3
    :try_start_5
    new-instance v0, Lcom/amap/api/mapcore/util/gb;

    const-string v2, "http\u8bfb\u53d6header\u5931\u8d25"

    invoke-direct {v0, v2}, Lcom/amap/api/mapcore/util/gb;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_5
    .catch Ljava/net/ConnectException; {:try_start_5 .. :try_end_5} :catch_f
    .catch Ljava/net/MalformedURLException; {:try_start_5 .. :try_end_5} :catch_e
    .catch Ljava/net/UnknownHostException; {:try_start_5 .. :try_end_5} :catch_d
    .catch Ljava/net/SocketException; {:try_start_5 .. :try_end_5} :catch_c
    .catch Ljava/net/SocketTimeoutException; {:try_start_5 .. :try_end_5} :catch_b
    .catch Ljava/io/InterruptedIOException; {:try_start_5 .. :try_end_5} :catch_a
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_9
    .catch Lcom/amap/api/mapcore/util/gb; {:try_start_5 .. :try_end_5} :catch_8
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    :catchall_2
    move-exception v0

    :goto_3
    move-object/from16 v18, v14

    move-object v14, v1

    move-object/from16 v1, v18

    goto/16 :goto_c

    :catch_8
    move-exception v0

    :goto_4
    move-object/from16 v18, v14

    move-object v14, v1

    move-object/from16 v1, v18

    goto/16 :goto_d

    :catch_9
    :goto_5
    move-object/from16 v18, v14

    move-object v14, v1

    move-object/from16 v1, v18

    goto/16 :goto_e

    :catch_a
    :goto_6
    move-object/from16 v18, v14

    move-object v14, v1

    move-object/from16 v1, v18

    goto/16 :goto_f

    :catch_b
    :goto_7
    move-object/from16 v18, v14

    move-object v14, v1

    move-object/from16 v1, v18

    goto/16 :goto_10

    :catch_c
    :goto_8
    move-object/from16 v18, v14

    move-object v14, v1

    move-object/from16 v1, v18

    goto/16 :goto_11

    :catch_d
    :goto_9
    move-object/from16 v18, v14

    move-object v14, v1

    move-object/from16 v1, v18

    goto/16 :goto_12

    :catch_e
    :goto_a
    move-object/from16 v18, v14

    move-object v14, v1

    move-object/from16 v1, v18

    goto/16 :goto_13

    :catch_f
    :goto_b
    move-object/from16 v18, v14

    move-object v14, v1

    move-object/from16 v1, v18

    goto/16 :goto_14

    :catchall_3
    move-exception v0

    move-object v1, v14

    goto :goto_c

    :catch_10
    move-exception v0

    move-object v1, v14

    goto :goto_d

    :catch_11
    move-object v1, v14

    goto :goto_e

    :catch_12
    move-object v1, v14

    goto :goto_f

    :catch_13
    move-object v1, v14

    goto :goto_10

    :catch_14
    move-object v1, v14

    goto :goto_11

    :catch_15
    move-object v1, v14

    goto :goto_12

    :catch_16
    move-object v1, v14

    goto :goto_13

    :catch_17
    move-object v1, v14

    goto :goto_14

    :catchall_4
    move-exception v0

    move-object v1, v14

    const/4 v13, 0x0

    .line 16
    :goto_c
    :try_start_6
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 17
    new-instance v0, Lcom/amap/api/mapcore/util/gb;

    invoke-direct {v0, v12}, Lcom/amap/api/mapcore/util/gb;-><init>(Ljava/lang/String;)V

    throw v0

    :catch_18
    move-exception v0

    move-object v1, v14

    const/4 v13, 0x0

    .line 18
    :goto_d
    throw v0

    :catch_19
    move-object v1, v14

    const/4 v13, 0x0

    .line 19
    :goto_e
    new-instance v0, Lcom/amap/api/mapcore/util/gb;

    const-string v2, "IO \u64cd\u4f5c\u5f02\u5e38 - IOException"

    invoke-direct {v0, v2}, Lcom/amap/api/mapcore/util/gb;-><init>(Ljava/lang/String;)V

    throw v0

    :catch_1a
    move-object v1, v14

    const/4 v13, 0x0

    .line 20
    :goto_f
    new-instance v0, Lcom/amap/api/mapcore/util/gb;

    invoke-direct {v0, v12}, Lcom/amap/api/mapcore/util/gb;-><init>(Ljava/lang/String;)V

    throw v0

    :catch_1b
    move-object v1, v14

    const/4 v13, 0x0

    .line 21
    :goto_10
    new-instance v0, Lcom/amap/api/mapcore/util/gb;

    const-string v2, "socket \u8fde\u63a5\u8d85\u65f6 - SocketTimeoutException"

    invoke-direct {v0, v2}, Lcom/amap/api/mapcore/util/gb;-><init>(Ljava/lang/String;)V

    throw v0

    :catch_1c
    move-object v1, v14

    const/4 v13, 0x0

    .line 22
    :goto_11
    new-instance v0, Lcom/amap/api/mapcore/util/gb;

    const-string v2, "socket \u8fde\u63a5\u5f02\u5e38 - SocketException"

    invoke-direct {v0, v2}, Lcom/amap/api/mapcore/util/gb;-><init>(Ljava/lang/String;)V

    throw v0

    :catch_1d
    move-object v1, v14

    const/4 v13, 0x0

    .line 23
    :goto_12
    new-instance v0, Lcom/amap/api/mapcore/util/gb;

    const-string v2, "\u672a\u77e5\u4e3b\u673a - UnKnowHostException"

    invoke-direct {v0, v2}, Lcom/amap/api/mapcore/util/gb;-><init>(Ljava/lang/String;)V

    throw v0

    :catch_1e
    move-object v1, v14

    const/4 v13, 0x0

    .line 24
    :goto_13
    new-instance v0, Lcom/amap/api/mapcore/util/gb;

    const-string v2, "url\u5f02\u5e38 - MalformedURLException"

    invoke-direct {v0, v2}, Lcom/amap/api/mapcore/util/gb;-><init>(Ljava/lang/String;)V

    throw v0

    :catch_1f
    move-object v1, v14

    const/4 v13, 0x0

    .line 25
    :goto_14
    new-instance v0, Lcom/amap/api/mapcore/util/gb;

    const-string v2, "http\u8fde\u63a5\u5931\u8d25 - ConnectionException"

    invoke-direct {v0, v2}, Lcom/amap/api/mapcore/util/gb;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_5

    :catchall_5
    move-exception v0

    move-object v2, v0

    if-eqz v13, :cond_4

    .line 26
    :try_start_7
    invoke-direct {v9, v14}, Lcom/amap/api/mapcore/util/i7;->m(Lcom/amap/api/mapcore/util/i7$b;)V

    .line 27
    invoke-direct {v9, v14}, Lcom/amap/api/mapcore/util/i7;->v(Lcom/amap/api/mapcore/util/i7$b;)V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_6

    goto :goto_15

    :catchall_6
    nop

    :cond_4
    :goto_15
    if-eqz v1, :cond_5

    .line 28
    :try_start_8
    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->disconnect()V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_7

    goto :goto_16

    :catchall_7
    move-exception v0

    move-object v1, v0

    .line 29
    invoke-static {v1, v11, v10}, Lcom/amap/api/mapcore/util/b6;->e(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    .line 30
    :cond_5
    :goto_16
    throw v2
.end method

.method k()V
    .locals 1

    const/4 v0, 0x1

    .line 1
    iput-boolean v0, p0, Lcom/amap/api/mapcore/util/i7;->f:Z

    return-void
.end method

.method l(J)V
    .locals 0

    .line 1
    iput-wide p1, p0, Lcom/amap/api/mapcore/util/i7;->h:J

    return-void
.end method

.method o(Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;Ljava/util/Map;Ljava/util/Map;[BLcom/amap/api/mapcore/util/h7$a;I)V
    .locals 19
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Z",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;[B",
            "Lcom/amap/api/mapcore/util/h7$a;",
            "I)V"
        }
    .end annotation

    move-object/from16 v9, p0

    move-object/from16 v0, p6

    move-object/from16 v10, p7

    move-object/from16 v11, p8

    const-string v12, "mdr"

    const-string v13, "ht"

    if-nez v11, :cond_0

    return-void

    :cond_0
    const/4 v15, 0x0

    const/4 v8, 0x0

    move-object/from16 v1, p1

    .line 1
    :try_start_0
    invoke-direct {v9, v1, v0}, Lcom/amap/api/mapcore/util/i7;->g(Ljava/lang/String;Ljava/util/Map;)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v1, p2

    .line 2
    invoke-direct {v9, v1, v0}, Lcom/amap/api/mapcore/util/i7;->g(Ljava/lang/String;Ljava/util/Map;)Ljava/lang/String;

    move-result-object v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_e

    if-eqz v10, :cond_1

    .line 3
    :try_start_1
    array-length v0, v10
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-lez v0, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :catchall_0
    move-exception v0

    goto/16 :goto_f

    :cond_1
    const/4 v0, 0x0

    .line 4
    :goto_0
    :try_start_2
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v16
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_e

    move-object/from16 v1, p0

    move/from16 v4, p3

    move-object/from16 v5, p4

    move-object/from16 v6, p5

    move v7, v0

    const/4 v14, 0x0

    move/from16 v8, p9

    .line 5
    :try_start_3
    invoke-virtual/range {v1 .. v8}, Lcom/amap/api/mapcore/util/i7;->b(Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;Ljava/util/Map;ZI)Lcom/amap/api/mapcore/util/i7$b;

    move-result-object v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_d

    .line 6
    :try_start_4
    iget-object v2, v1, Lcom/amap/api/mapcore/util/i7$b;->a:Ljava/net/HttpURLConnection;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_c

    .line 7
    :try_start_5
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "bytes="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v4, v9, Lcom/amap/api/mapcore/util/i7;->h:J

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v4, "-"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "RANGE"

    .line 8
    invoke-virtual {v2, v4, v3}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz v0, :cond_2

    .line 9
    new-instance v3, Ljava/io/DataOutputStream;

    .line 10
    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v0

    invoke-direct {v3, v0}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_b

    .line 11
    :try_start_6
    invoke-virtual {v3, v10}, Ljava/io/DataOutputStream;->write([B)V

    .line 12
    invoke-virtual {v3}, Ljava/io/DataOutputStream;->close()V

    goto :goto_1

    :cond_2
    move-object v3, v15

    .line 13
    :goto_1
    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->connect()V

    .line 14
    invoke-direct {v9, v2}, Lcom/amap/api/mapcore/util/i7;->h(Ljava/net/HttpURLConnection;)Ljava/lang/String;

    move-result-object v0

    .line 15
    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v4

    const/16 v5, 0xc8

    if-eq v4, v5, :cond_3

    const/4 v8, 0x1

    goto :goto_2

    :cond_3
    const/4 v8, 0x0

    :goto_2
    const/16 v5, 0xce

    if-eq v4, v5, :cond_4

    const/4 v5, 0x1

    goto :goto_3

    :cond_4
    const/4 v5, 0x0

    :goto_3
    and-int/2addr v5, v8

    if-eqz v5, :cond_7

    .line 16
    new-instance v5, Lcom/amap/api/mapcore/util/gb;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "\u7f51\u7edc\u5f02\u5e38\u539f\u56e0\uff1a"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 17
    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->getResponseMessage()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, " \u7f51\u7edc\u5f02\u5e38\u72b6\u6001\u7801\uff1a"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    iget-object v6, v9, Lcom/amap/api/mapcore/util/i7;->i:Ljava/lang/String;

    invoke-direct {v5, v4, v0, v6}, Lcom/amap/api/mapcore/util/gb;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 18
    invoke-interface {v11, v5}, Lcom/amap/api/mapcore/util/h7$a;->onException(Ljava/lang/Throwable;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_a

    .line 19
    :try_start_7
    invoke-direct {v9, v1}, Lcom/amap/api/mapcore/util/i7;->m(Lcom/amap/api/mapcore/util/i7$b;)V

    .line 20
    invoke-direct {v9, v1}, Lcom/amap/api/mapcore/util/i7;->v(Lcom/amap/api/mapcore/util/i7$b;)V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    :catchall_1
    if-eqz v2, :cond_5

    .line 21
    :try_start_8
    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->disconnect()V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_2

    goto :goto_4

    :catchall_2
    move-exception v0

    move-object v1, v0

    .line 22
    invoke-static {v1, v13, v12}, Lcom/amap/api/mapcore/util/b6;->e(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    :cond_5
    :goto_4
    if-eqz v3, :cond_6

    .line 23
    :try_start_9
    invoke-virtual {v3}, Ljava/io/DataOutputStream;->close()V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_3

    goto :goto_5

    :catchall_3
    move-exception v0

    move-object v1, v0

    .line 24
    invoke-static {v1, v13, v12}, Lcom/amap/api/mapcore/util/b6;->e(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    :cond_6
    :goto_5
    return-void

    .line 25
    :cond_7
    :try_start_a
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    const/4 v0, 0x0

    move-object/from16 p1, p0

    move-object/from16 p2, v1

    move/from16 p3, v0

    move-wide/from16 p4, v16

    move-wide/from16 p6, v4

    .line 26
    invoke-direct/range {p1 .. p7}, Lcom/amap/api/mapcore/util/i7;->n(Lcom/amap/api/mapcore/util/i7$b;ZJJ)V

    .line 27
    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v15
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_a

    const/16 v0, 0x400

    :try_start_b
    new-array v4, v0, [B

    .line 28
    :goto_6
    invoke-static {}, Ljava/lang/Thread;->interrupted()Z

    move-result v5

    if-nez v5, :cond_a

    iget-boolean v5, v9, Lcom/amap/api/mapcore/util/i7;->f:Z

    if-nez v5, :cond_a

    invoke-virtual {v15, v4, v14, v0}, Ljava/io/InputStream;->read([BII)I

    move-result v5

    if-lez v5, :cond_a

    iget-wide v6, v9, Lcom/amap/api/mapcore/util/i7;->g:J
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_9

    const-wide/16 v16, -0x1

    cmp-long v8, v6, v16

    if-eqz v8, :cond_8

    move-object/from16 p1, v15

    :try_start_c
    iget-wide v14, v9, Lcom/amap/api/mapcore/util/i7;->h:J

    cmp-long v10, v14, v6

    if-gez v10, :cond_b

    goto :goto_7

    :catchall_4
    move-exception v0

    goto/16 :goto_c

    :cond_8
    move-object/from16 p1, v15

    :goto_7
    if-ne v5, v0, :cond_9

    .line 29
    iget-wide v6, v9, Lcom/amap/api/mapcore/util/i7;->h:J

    invoke-interface {v11, v4, v6, v7}, Lcom/amap/api/mapcore/util/h7$a;->onDownload([BJ)V

    const/4 v7, 0x0

    goto :goto_8

    .line 30
    :cond_9
    new-array v6, v5, [B

    const/4 v7, 0x0

    .line 31
    invoke-static {v4, v7, v6, v7, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 32
    iget-wide v14, v9, Lcom/amap/api/mapcore/util/i7;->h:J

    invoke-interface {v11, v6, v14, v15}, Lcom/amap/api/mapcore/util/h7$a;->onDownload([BJ)V

    .line 33
    :goto_8
    iget-wide v14, v9, Lcom/amap/api/mapcore/util/i7;->h:J

    int-to-long v5, v5

    add-long/2addr v14, v5

    iput-wide v14, v9, Lcom/amap/api/mapcore/util/i7;->h:J
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_4

    move-object/from16 v15, p1

    const/4 v14, 0x0

    goto :goto_6

    :cond_a
    move-object/from16 p1, v15

    :cond_b
    const/4 v7, 0x0

    .line 34
    :try_start_d
    iget-boolean v0, v9, Lcom/amap/api/mapcore/util/i7;->f:Z

    if-eqz v0, :cond_c

    .line 35
    invoke-interface/range {p8 .. p8}, Lcom/amap/api/mapcore/util/h7$a;->onStop()V

    goto :goto_9

    .line 36
    :cond_c
    invoke-interface/range {p8 .. p8}, Lcom/amap/api/mapcore/util/h7$a;->onFinish()V
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_8

    :goto_9
    if-eqz p1, :cond_d

    .line 37
    :try_start_e
    invoke-virtual/range {p1 .. p1}, Ljava/io/InputStream;->close()V
    :try_end_e
    .catch Ljava/io/IOException; {:try_start_e .. :try_end_e} :catch_0
    .catchall {:try_start_e .. :try_end_e} :catchall_5

    goto :goto_a

    :catchall_5
    move-exception v0

    move-object v1, v0

    .line 38
    invoke-static {v1, v13, v12}, Lcom/amap/api/mapcore/util/b6;->e(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_a

    :catch_0
    move-exception v0

    move-object v1, v0

    .line 39
    invoke-static {v1, v13, v12}, Lcom/amap/api/mapcore/util/b6;->e(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    :cond_d
    :goto_a
    if-eqz v2, :cond_e

    .line 40
    :try_start_f
    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->disconnect()V
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_6

    goto :goto_b

    :catchall_6
    move-exception v0

    move-object v1, v0

    .line 41
    invoke-static {v1, v13, v12}, Lcom/amap/api/mapcore/util/b6;->e(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    :cond_e
    :goto_b
    if-eqz v3, :cond_12

    .line 42
    :try_start_10
    invoke-virtual {v3}, Ljava/io/DataOutputStream;->close()V
    :try_end_10
    .catchall {:try_start_10 .. :try_end_10} :catchall_7

    goto/16 :goto_14

    :catchall_7
    move-exception v0

    move-object v1, v0

    .line 43
    invoke-static {v1, v13, v12}, Lcom/amap/api/mapcore/util/b6;->e(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_14

    :catchall_8
    move-exception v0

    move-object v15, v1

    const/4 v14, 0x0

    goto :goto_d

    :catchall_9
    move-exception v0

    move-object/from16 p1, v15

    :goto_c
    move-object v15, v1

    const/4 v14, 0x1

    :goto_d
    move-object/from16 v1, p1

    goto :goto_10

    :catchall_a
    move-exception v0

    const/4 v14, 0x1

    move-object/from16 v18, v15

    move-object v15, v1

    move-object/from16 v1, v18

    goto :goto_10

    :catchall_b
    move-exception v0

    move-object v3, v15

    goto :goto_e

    :catchall_c
    move-exception v0

    move-object v2, v15

    move-object v3, v2

    :goto_e
    const/4 v14, 0x1

    move-object v15, v1

    move-object v1, v3

    goto :goto_10

    :catchall_d
    move-exception v0

    move-object v1, v15

    move-object v2, v1

    move-object v3, v2

    const/4 v14, 0x1

    goto :goto_10

    :catchall_e
    move-exception v0

    const/4 v7, 0x0

    :goto_f
    move-object v1, v15

    move-object v2, v1

    move-object v3, v2

    const/4 v14, 0x0

    .line 44
    :goto_10
    :try_start_11
    invoke-interface {v11, v0}, Lcom/amap/api/mapcore/util/h7$a;->onException(Ljava/lang/Throwable;)V
    :try_end_11
    .catchall {:try_start_11 .. :try_end_11} :catchall_12

    if-eqz v14, :cond_f

    .line 45
    :try_start_12
    invoke-direct {v9, v15}, Lcom/amap/api/mapcore/util/i7;->m(Lcom/amap/api/mapcore/util/i7$b;)V

    .line 46
    invoke-direct {v9, v15}, Lcom/amap/api/mapcore/util/i7;->v(Lcom/amap/api/mapcore/util/i7$b;)V
    :try_end_12
    .catchall {:try_start_12 .. :try_end_12} :catchall_f

    goto :goto_11

    :catchall_f
    nop

    :cond_f
    :goto_11
    if-eqz v1, :cond_10

    .line 47
    :try_start_13
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_13
    .catch Ljava/io/IOException; {:try_start_13 .. :try_end_13} :catch_1
    .catchall {:try_start_13 .. :try_end_13} :catchall_10

    goto :goto_12

    :catchall_10
    move-exception v0

    move-object v1, v0

    .line 48
    invoke-static {v1, v13, v12}, Lcom/amap/api/mapcore/util/b6;->e(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_12

    :catch_1
    move-exception v0

    move-object v1, v0

    .line 49
    invoke-static {v1, v13, v12}, Lcom/amap/api/mapcore/util/b6;->e(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    :cond_10
    :goto_12
    if-eqz v2, :cond_11

    .line 50
    :try_start_14
    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->disconnect()V
    :try_end_14
    .catchall {:try_start_14 .. :try_end_14} :catchall_11

    goto :goto_13

    :catchall_11
    move-exception v0

    move-object v1, v0

    .line 51
    invoke-static {v1, v13, v12}, Lcom/amap/api/mapcore/util/b6;->e(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    :cond_11
    :goto_13
    if-eqz v3, :cond_12

    .line 52
    :try_start_15
    invoke-virtual {v3}, Ljava/io/DataOutputStream;->close()V
    :try_end_15
    .catchall {:try_start_15 .. :try_end_15} :catchall_7

    :cond_12
    :goto_14
    return-void

    :catchall_12
    move-exception v0

    move-object v4, v0

    if-eqz v14, :cond_13

    .line 53
    :try_start_16
    invoke-direct {v9, v15}, Lcom/amap/api/mapcore/util/i7;->m(Lcom/amap/api/mapcore/util/i7$b;)V

    .line 54
    invoke-direct {v9, v15}, Lcom/amap/api/mapcore/util/i7;->v(Lcom/amap/api/mapcore/util/i7$b;)V
    :try_end_16
    .catchall {:try_start_16 .. :try_end_16} :catchall_13

    goto :goto_15

    :catchall_13
    nop

    :cond_13
    :goto_15
    if-eqz v1, :cond_14

    .line 55
    :try_start_17
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_17
    .catch Ljava/io/IOException; {:try_start_17 .. :try_end_17} :catch_2
    .catchall {:try_start_17 .. :try_end_17} :catchall_14

    goto :goto_16

    :catchall_14
    move-exception v0

    move-object v1, v0

    .line 56
    invoke-static {v1, v13, v12}, Lcom/amap/api/mapcore/util/b6;->e(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_16

    :catch_2
    move-exception v0

    move-object v1, v0

    .line 57
    invoke-static {v1, v13, v12}, Lcom/amap/api/mapcore/util/b6;->e(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    :cond_14
    :goto_16
    if-eqz v2, :cond_15

    .line 58
    :try_start_18
    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->disconnect()V
    :try_end_18
    .catchall {:try_start_18 .. :try_end_18} :catchall_15

    goto :goto_17

    :catchall_15
    move-exception v0

    move-object v1, v0

    .line 59
    invoke-static {v1, v13, v12}, Lcom/amap/api/mapcore/util/b6;->e(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    :cond_15
    :goto_17
    if-eqz v3, :cond_16

    .line 60
    :try_start_19
    invoke-virtual {v3}, Ljava/io/DataOutputStream;->close()V
    :try_end_19
    .catchall {:try_start_19 .. :try_end_19} :catchall_16

    goto :goto_18

    :catchall_16
    move-exception v0

    move-object v1, v0

    .line 61
    invoke-static {v1, v13, v12}, Lcom/amap/api/mapcore/util/b6;->e(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    .line 62
    :cond_16
    :goto_18
    throw v4
.end method

.method s(Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;Ljava/util/Map;Ljava/util/Map;ZI)Lcom/amap/api/mapcore/util/m7;
    .locals 15
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Z",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;ZI)",
            "Lcom/amap/api/mapcore/util/m7;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amap/api/mapcore/util/gb;
        }
    .end annotation

    move-object v9, p0

    move-object/from16 v0, p6

    const-string v10, "mgr"

    const-string v11, "ht"

    const-string v12, "\u672a\u77e5\u7684\u9519\u8bef"

    const/4 v13, 0x0

    move-object/from16 v1, p1

    .line 1
    :try_start_0
    invoke-direct {p0, v1, v0}, Lcom/amap/api/mapcore/util/i7;->g(Ljava/lang/String;Ljava/util/Map;)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v1, p2

    .line 2
    invoke-direct {p0, v1, v0}, Lcom/amap/api/mapcore/util/i7;->g(Ljava/lang/String;Ljava/util/Map;)Ljava/lang/String;

    move-result-object v3

    const/4 v7, 0x0

    move-object v1, p0

    move/from16 v4, p3

    move-object/from16 v5, p4

    move-object/from16 v6, p5

    move/from16 v8, p8

    .line 3
    invoke-virtual/range {v1 .. v8}, Lcom/amap/api/mapcore/util/i7;->b(Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;Ljava/util/Map;ZI)Lcom/amap/api/mapcore/util/i7$b;

    move-result-object v1
    :try_end_0
    .catch Ljava/net/ConnectException; {:try_start_0 .. :try_end_0} :catch_f
    .catch Ljava/net/MalformedURLException; {:try_start_0 .. :try_end_0} :catch_e
    .catch Ljava/net/UnknownHostException; {:try_start_0 .. :try_end_0} :catch_d
    .catch Ljava/net/SocketException; {:try_start_0 .. :try_end_0} :catch_c
    .catch Ljava/net/SocketTimeoutException; {:try_start_0 .. :try_end_0} :catch_b
    .catch Ljava/io/InterruptedIOException; {:try_start_0 .. :try_end_0} :catch_a
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_9
    .catch Lcom/amap/api/mapcore/util/gb; {:try_start_0 .. :try_end_0} :catch_8
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    .line 4
    :try_start_1
    iget-object v13, v1, Lcom/amap/api/mapcore/util/i7$b;->a:Ljava/net/HttpURLConnection;

    move/from16 v0, p7

    .line 5
    invoke-direct {p0, v1, v0}, Lcom/amap/api/mapcore/util/i7;->c(Lcom/amap/api/mapcore/util/i7$b;Z)Lcom/amap/api/mapcore/util/m7;

    move-result-object v1
    :try_end_1
    .catch Ljava/net/ConnectException; {:try_start_1 .. :try_end_1} :catch_7
    .catch Ljava/net/MalformedURLException; {:try_start_1 .. :try_end_1} :catch_6
    .catch Ljava/net/UnknownHostException; {:try_start_1 .. :try_end_1} :catch_5
    .catch Ljava/net/SocketException; {:try_start_1 .. :try_end_1} :catch_4
    .catch Ljava/net/SocketTimeoutException; {:try_start_1 .. :try_end_1} :catch_3
    .catch Ljava/io/InterruptedIOException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Lcom/amap/api/mapcore/util/gb; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    if-eqz v13, :cond_0

    .line 6
    :try_start_2
    invoke-virtual {v13}, Ljava/net/HttpURLConnection;->disconnect()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    move-object v2, v0

    .line 7
    invoke-static {v2, v11, v10}, Lcom/amap/api/mapcore/util/b6;->e(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    :goto_0
    return-object v1

    :catchall_1
    move-exception v0

    move-object v14, v13

    move-object v13, v1

    move-object v1, v14

    goto :goto_1

    :catch_0
    move-exception v0

    move-object v14, v13

    move-object v13, v1

    move-object v1, v14

    goto :goto_2

    :catch_1
    move-object v14, v13

    move-object v13, v1

    move-object v1, v14

    goto :goto_3

    :catch_2
    move-object v14, v13

    move-object v13, v1

    move-object v1, v14

    goto :goto_4

    :catch_3
    move-object v14, v13

    move-object v13, v1

    move-object v1, v14

    goto :goto_5

    :catch_4
    move-object v14, v13

    move-object v13, v1

    move-object v1, v14

    goto :goto_6

    :catch_5
    move-object v14, v13

    move-object v13, v1

    move-object v1, v14

    goto :goto_7

    :catch_6
    move-object v14, v13

    move-object v13, v1

    move-object v1, v14

    goto :goto_8

    :catch_7
    move-object v14, v13

    move-object v13, v1

    move-object v1, v14

    goto :goto_9

    :catchall_2
    move-exception v0

    move-object v1, v13

    .line 8
    :goto_1
    :try_start_3
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 9
    new-instance v0, Lcom/amap/api/mapcore/util/gb;

    invoke-direct {v0, v12}, Lcom/amap/api/mapcore/util/gb;-><init>(Ljava/lang/String;)V

    throw v0

    :catch_8
    move-exception v0

    move-object v1, v13

    .line 10
    :goto_2
    throw v0

    :catch_9
    move-object v1, v13

    .line 11
    :goto_3
    new-instance v0, Lcom/amap/api/mapcore/util/gb;

    const-string v2, "IO \u64cd\u4f5c\u5f02\u5e38 - IOException"

    invoke-direct {v0, v2}, Lcom/amap/api/mapcore/util/gb;-><init>(Ljava/lang/String;)V

    throw v0

    :catch_a
    move-object v1, v13

    .line 12
    :goto_4
    new-instance v0, Lcom/amap/api/mapcore/util/gb;

    invoke-direct {v0, v12}, Lcom/amap/api/mapcore/util/gb;-><init>(Ljava/lang/String;)V

    throw v0

    :catch_b
    move-object v1, v13

    .line 13
    :goto_5
    new-instance v0, Lcom/amap/api/mapcore/util/gb;

    const-string v2, "socket \u8fde\u63a5\u8d85\u65f6 - SocketTimeoutException"

    invoke-direct {v0, v2}, Lcom/amap/api/mapcore/util/gb;-><init>(Ljava/lang/String;)V

    throw v0

    :catch_c
    move-object v1, v13

    .line 14
    :goto_6
    new-instance v0, Lcom/amap/api/mapcore/util/gb;

    const-string v2, "socket \u8fde\u63a5\u5f02\u5e38 - SocketException"

    invoke-direct {v0, v2}, Lcom/amap/api/mapcore/util/gb;-><init>(Ljava/lang/String;)V

    throw v0

    :catch_d
    move-object v1, v13

    .line 15
    :goto_7
    new-instance v0, Lcom/amap/api/mapcore/util/gb;

    const-string v2, "\u672a\u77e5\u4e3b\u673a - UnKnowHostException"

    invoke-direct {v0, v2}, Lcom/amap/api/mapcore/util/gb;-><init>(Ljava/lang/String;)V

    throw v0

    :catch_e
    move-object v1, v13

    .line 16
    :goto_8
    new-instance v0, Lcom/amap/api/mapcore/util/gb;

    const-string v2, "url\u5f02\u5e38 - MalformedURLException"

    invoke-direct {v0, v2}, Lcom/amap/api/mapcore/util/gb;-><init>(Ljava/lang/String;)V

    throw v0

    :catch_f
    move-object v1, v13

    .line 17
    :goto_9
    new-instance v0, Lcom/amap/api/mapcore/util/gb;

    const-string v2, "http\u8fde\u63a5\u5931\u8d25 - ConnectionException"

    invoke-direct {v0, v2}, Lcom/amap/api/mapcore/util/gb;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    :catchall_3
    move-exception v0

    move-object v2, v0

    .line 18
    :try_start_4
    invoke-static/range {p8 .. p8}, Lcom/amap/api/mapcore/util/d5;->g(I)V

    .line 19
    invoke-direct {p0, v13}, Lcom/amap/api/mapcore/util/i7;->v(Lcom/amap/api/mapcore/util/i7$b;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_4

    goto :goto_a

    :catchall_4
    nop

    :goto_a
    if-eqz v1, :cond_1

    .line 20
    :try_start_5
    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->disconnect()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_5

    goto :goto_b

    :catchall_5
    move-exception v0

    move-object v1, v0

    .line 21
    invoke-static {v1, v11, v10}, Lcom/amap/api/mapcore/util/b6;->e(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    .line 22
    :cond_1
    :goto_b
    throw v2
.end method

.method u(J)V
    .locals 0

    .line 1
    iput-wide p1, p0, Lcom/amap/api/mapcore/util/i7;->g:J

    return-void
.end method
