.class public Lcom/iflytek/idata/extension/b;
.super Ljava/lang/Thread;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/iflytek/idata/extension/b$a;
    }
.end annotation


# instance fields
.field private a:I

.field private b:Lcom/iflytek/idata/extension/b$a;

.field private volatile c:Z

.field private d:Ljava/net/URL;

.field private e:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "[B>;"
        }
    .end annotation
.end field

.field private f:Ljava/lang/Object;

.field private g:I


# direct methods
.method public constructor <init>()V
    .locals 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    const/16 v0, 0x4e20

    .line 2
    iput v0, p0, Lcom/iflytek/idata/extension/b;->a:I

    const/4 v0, 0x0

    .line 3
    iput-object v0, p0, Lcom/iflytek/idata/extension/b;->b:Lcom/iflytek/idata/extension/b$a;

    const/4 v1, 0x0

    .line 4
    iput-boolean v1, p0, Lcom/iflytek/idata/extension/b;->c:Z

    .line 5
    iput-object v0, p0, Lcom/iflytek/idata/extension/b;->d:Ljava/net/URL;

    .line 6
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lcom/iflytek/idata/extension/b;->e:Ljava/util/ArrayList;

    .line 7
    iput-object v0, p0, Lcom/iflytek/idata/extension/b;->f:Ljava/lang/Object;

    .line 8
    iput v1, p0, Lcom/iflytek/idata/extension/b;->g:I

    return-void
.end method

.method public static a(Ljava/lang/String;Ljava/lang/String;)Ljava/net/URL;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/MalformedURLException;
        }
    .end annotation

    .line 7
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "?"

    .line 8
    invoke-virtual {p0, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 9
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 10
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 11
    :cond_1
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "url:"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "Collector"

    invoke-static {v0, p1}, Lcom/iflytek/idata/extension/d/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 12
    new-instance p1, Ljava/net/URL;

    invoke-direct {p1, p0}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    return-object p1
.end method

.method private a(Ljava/lang/Exception;)V
    .locals 1

    .line 19
    iget-object v0, p0, Lcom/iflytek/idata/extension/b;->b:Lcom/iflytek/idata/extension/b$a;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/iflytek/idata/extension/b;->c:Z

    if-nez v0, :cond_0

    .line 20
    iget-object v0, p0, Lcom/iflytek/idata/extension/b;->b:Lcom/iflytek/idata/extension/b$a;

    invoke-interface {v0, p1}, Lcom/iflytek/idata/extension/b$a;->a(Ljava/lang/Exception;)V

    :cond_0
    return-void
.end method

.method public static a(Ljava/lang/String;)Z
    .locals 2

    const-string v0, "rsp"

    .line 50
    :try_start_0
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, p0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 51
    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_0

    .line 52
    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p0

    const-string v0, "code"

    .line 53
    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :catch_0
    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method private a(Ljava/io/InputStream;)[B
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 13
    new-instance v0, Ljava/io/BufferedInputStream;

    invoke-direct {v0, p1}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V

    .line 14
    new-instance p1, Ljava/io/ByteArrayOutputStream;

    const/16 v1, 0x400

    invoke-direct {p1, v1}, Ljava/io/ByteArrayOutputStream;-><init>(I)V

    new-array v2, v1, [B

    .line 15
    :goto_0
    iget-boolean v3, p0, Lcom/iflytek/idata/extension/b;->c:Z

    if-nez v3, :cond_0

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3, v1}, Ljava/io/BufferedInputStream;->read([BII)I

    move-result v4

    const/4 v5, -0x1

    if-eq v4, v5, :cond_0

    .line 16
    invoke-virtual {p1, v2, v3, v4}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    goto :goto_0

    .line 17
    :cond_0
    invoke-virtual {p1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object p1

    return-object p1
.end method

.method private b()V
    .locals 6

    const/4 v0, 0x0

    .line 4
    :try_start_0
    iget-object v1, p0, Lcom/iflytek/idata/extension/b;->d:Ljava/net/URL;

    invoke-virtual {v1}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v1

    check-cast v1, Ljava/net/HttpURLConnection;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 5
    :try_start_1
    iget v2, p0, Lcom/iflytek/idata/extension/b;->a:I

    invoke-virtual {v1, v2}, Ljava/net/HttpURLConnection;->setConnectTimeout(I)V

    .line 6
    iget v2, p0, Lcom/iflytek/idata/extension/b;->a:I

    invoke-virtual {v1, v2}, Ljava/net/HttpURLConnection;->setReadTimeout(I)V

    const-string v2, "GET"

    .line 7
    invoke-virtual {v1, v2}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    .line 8
    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v2

    const/16 v3, 0xc8

    if-ne v3, v2, :cond_0

    .line 9
    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v0

    .line 10
    invoke-direct {p0, v0}, Lcom/iflytek/idata/extension/b;->a(Ljava/io/InputStream;)[B

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/iflytek/idata/extension/b;->b([B)V

    goto :goto_0

    .line 11
    :cond_0
    new-instance v3, Ljava/lang/Exception;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "HttpRequest Failed: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v3, v2}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, v3}, Lcom/iflytek/idata/extension/b;->a(Ljava/lang/Exception;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :goto_0
    if-eqz v0, :cond_2

    .line 12
    :try_start_2
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_2

    :catch_0
    move-exception v2

    goto :goto_1

    :catchall_0
    move-exception v2

    move-object v1, v0

    goto :goto_3

    :catch_1
    move-exception v2

    move-object v1, v0

    .line 13
    :goto_1
    :try_start_3
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    .line 14
    invoke-direct {p0, v2}, Lcom/iflytek/idata/extension/b;->a(Ljava/lang/Exception;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    if-eqz v0, :cond_1

    .line 15
    :try_start_4
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    :cond_1
    if-eqz v1, :cond_3

    .line 16
    :cond_2
    :goto_2
    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->disconnect()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_2

    :catch_2
    :cond_3
    return-void

    :catchall_1
    move-exception v2

    :goto_3
    if-eqz v0, :cond_4

    .line 17
    :try_start_5
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    :cond_4
    if-eqz v1, :cond_5

    .line 18
    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->disconnect()V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_3

    .line 19
    :catch_3
    :cond_5
    throw v2
.end method

.method private b([B)V
    .locals 1

    .line 20
    iget-object v0, p0, Lcom/iflytek/idata/extension/b;->b:Lcom/iflytek/idata/extension/b$a;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/iflytek/idata/extension/b;->c:Z

    if-nez v0, :cond_0

    .line 21
    iget-object v0, p0, Lcom/iflytek/idata/extension/b;->b:Lcom/iflytek/idata/extension/b$a;

    invoke-interface {v0, p0, p1}, Lcom/iflytek/idata/extension/b$a;->a(Lcom/iflytek/idata/extension/b;[B)V

    :cond_0
    return-void
.end method

.method private c()I
    .locals 3

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 1
    :goto_0
    iget-object v2, p0, Lcom/iflytek/idata/extension/b;->e:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v0, v2, :cond_0

    .line 2
    iget-object v2, p0, Lcom/iflytek/idata/extension/b;->e:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [B

    array-length v2, v2

    add-int/2addr v1, v2

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return v1
.end method


# virtual methods
.method public a()V
    .locals 6

    const/4 v0, 0x0

    .line 21
    :try_start_0
    iget-object v1, p0, Lcom/iflytek/idata/extension/b;->d:Ljava/net/URL;

    invoke-virtual {v1}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v1

    check-cast v1, Ljava/net/HttpURLConnection;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v2, 0x1

    .line 22
    :try_start_1
    invoke-virtual {v1, v2}, Ljava/net/HttpURLConnection;->setDoOutput(Z)V

    .line 23
    invoke-virtual {v1, v2}, Ljava/net/HttpURLConnection;->setDoInput(Z)V

    const/4 v2, 0x0

    .line 24
    invoke-virtual {v1, v2}, Ljava/net/HttpURLConnection;->setUseCaches(Z)V

    const-string v2, "POST"

    .line 25
    invoke-virtual {v1, v2}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    .line 26
    iget v2, p0, Lcom/iflytek/idata/extension/b;->a:I

    invoke-virtual {v1, v2}, Ljava/net/HttpURLConnection;->setConnectTimeout(I)V

    .line 27
    iget v2, p0, Lcom/iflytek/idata/extension/b;->a:I

    invoke-virtual {v1, v2}, Ljava/net/HttpURLConnection;->setReadTimeout(I)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    const-string v2, "Content-length"

    .line 28
    :try_start_2
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, ""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0}, Lcom/iflytek/idata/extension/b;->c()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "Connection"

    const-string v3, "Keep-Alive"

    .line 29
    invoke-virtual {v1, v2, v3}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "Charset"

    const-string v3, "utf-8"

    .line 30
    invoke-virtual {v1, v2, v3}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "Content-Type"

    const-string v3, "application/x-gzip"

    .line 31
    invoke-virtual {v1, v2, v3}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 32
    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v2

    .line 33
    iget-object v3, p0, Lcom/iflytek/idata/extension/b;->e:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .line 34
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 35
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [B

    .line 36
    invoke-virtual {v2, v4}, Ljava/io/OutputStream;->write([B)V

    goto :goto_0

    .line 37
    :cond_0
    invoke-virtual {v2}, Ljava/io/OutputStream;->flush()V

    .line 38
    invoke-virtual {v2}, Ljava/io/OutputStream;->close()V

    .line 39
    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v2

    const/16 v3, 0xc8

    if-ne v3, v2, :cond_1

    .line 40
    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v0

    .line 41
    invoke-direct {p0, v0}, Lcom/iflytek/idata/extension/b;->a(Ljava/io/InputStream;)[B

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/iflytek/idata/extension/b;->b([B)V

    goto :goto_1

    .line 42
    :cond_1
    new-instance v3, Ljava/lang/Exception;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Http Request Failed: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v3, v2}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, v3}, Lcom/iflytek/idata/extension/b;->a(Ljava/lang/Exception;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :goto_1
    if-eqz v0, :cond_3

    .line 43
    :try_start_3
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2

    goto :goto_3

    :catch_0
    move-exception v2

    goto :goto_2

    :catchall_0
    move-exception v2

    move-object v1, v0

    goto :goto_4

    :catch_1
    move-exception v2

    move-object v1, v0

    .line 44
    :goto_2
    :try_start_4
    invoke-direct {p0, v2}, Lcom/iflytek/idata/extension/b;->a(Ljava/lang/Exception;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    if-eqz v0, :cond_2

    .line 45
    :try_start_5
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    :cond_2
    if-eqz v1, :cond_4

    .line 46
    :cond_3
    :goto_3
    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->disconnect()V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_2

    :catch_2
    :cond_4
    return-void

    :catchall_1
    move-exception v2

    :goto_4
    if-eqz v0, :cond_5

    .line 47
    :try_start_6
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    :cond_5
    if-eqz v1, :cond_6

    .line 48
    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->disconnect()V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_3

    .line 49
    :catch_3
    :cond_6
    throw v2
.end method

.method public a(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/iflytek/idata/extension/b;->g:I

    return-void
.end method

.method public a(Lcom/iflytek/idata/extension/b$a;)V
    .locals 0

    .line 6
    iput-object p1, p0, Lcom/iflytek/idata/extension/b;->b:Lcom/iflytek/idata/extension/b$a;

    return-void
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;[B)V
    .locals 1

    .line 2
    iget-object v0, p0, Lcom/iflytek/idata/extension/b;->e:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 3
    invoke-virtual {p0, p3}, Lcom/iflytek/idata/extension/b;->a([B)V

    .line 4
    :try_start_0
    invoke-static {p1, p2}, Lcom/iflytek/idata/extension/b;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/net/URL;

    move-result-object p1

    iput-object p1, p0, Lcom/iflytek/idata/extension/b;->d:Ljava/net/URL;
    :try_end_0
    .catch Ljava/net/MalformedURLException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 5
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "url error:"

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "Collector"

    invoke-static {p2, p1}, Lcom/iflytek/idata/extension/d/a;->c(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public a([B)V
    .locals 1

    if-eqz p1, :cond_0

    .line 18
    iget-object v0, p0, Lcom/iflytek/idata/extension/b;->e:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method

.method public b(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/iflytek/idata/extension/b;->a:I

    return-void
.end method

.method public b(Lcom/iflytek/idata/extension/b$a;)V
    .locals 0

    .line 2
    iput-object p1, p0, Lcom/iflytek/idata/extension/b;->b:Lcom/iflytek/idata/extension/b$a;

    .line 3
    invoke-virtual {p0}, Ljava/lang/Thread;->start()V

    return-void
.end method

.method public run()V
    .locals 2

    .line 1
    iget v0, p0, Lcom/iflytek/idata/extension/b;->g:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 2
    invoke-virtual {p0}, Lcom/iflytek/idata/extension/b;->a()V

    goto :goto_0

    .line 3
    :cond_0
    invoke-direct {p0}, Lcom/iflytek/idata/extension/b;->b()V

    :goto_0
    return-void
.end method
