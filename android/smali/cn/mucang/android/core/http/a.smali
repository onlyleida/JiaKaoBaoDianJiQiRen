.class public Lcn/mucang/android/core/http/a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/mucang/android/core/http/a$b;,
        Lcn/mucang/android/core/http/a$c;
    }
.end annotation


# static fields
.field private static c:Lcn/mucang/android/core/http/a;

.field private static volatile d:Lokhttp3/OkHttpClient;


# instance fields
.field private final a:Lokhttp3/OkHttpClient;

.field private b:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lcn/mucang/android/core/http/a$b;

    invoke-direct {v0}, Lcn/mucang/android/core/http/a$b;-><init>()V

    invoke-virtual {v0}, Lcn/mucang/android/core/http/a$b;->i()Lcn/mucang/android/core/http/a;

    move-result-object v0

    sput-object v0, Lcn/mucang/android/core/http/a;->c:Lcn/mucang/android/core/http/a;

    return-void
.end method

.method private constructor <init>(Lcn/mucang/android/core/http/a$b;)V
    .locals 8

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "Mozilla/4.0 (compatible; MSIE 6.0; Windows NT 5.1; SV1; .NET CLR 3.5.21022;)"

    .line 3
    iput-object v0, p0, Lcn/mucang/android/core/http/a;->b:Ljava/lang/String;

    .line 4
    invoke-static {}, Lcn/mucang/android/core/http/a;->r()Lokhttp3/OkHttpClient;

    move-result-object v0

    invoke-virtual {v0}, Lokhttp3/OkHttpClient;->newBuilder()Lokhttp3/OkHttpClient$Builder;

    move-result-object v0

    .line 5
    invoke-static {p1}, Lcn/mucang/android/core/http/a$b;->a(Lcn/mucang/android/core/http/a$b;)J

    move-result-wide v1

    const-wide/16 v3, 0x2710

    const-wide/16 v5, 0x0

    cmp-long v7, v1, v5

    if-lez v7, :cond_0

    .line 6
    invoke-static {p1}, Lcn/mucang/android/core/http/a$b;->a(Lcn/mucang/android/core/http/a$b;)J

    move-result-wide v1

    sget-object v7, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v0, v1, v2, v7}, Lokhttp3/OkHttpClient$Builder;->connectTimeout(JLjava/util/concurrent/TimeUnit;)Lokhttp3/OkHttpClient$Builder;

    goto :goto_0

    .line 7
    :cond_0
    sget-object v1, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v0, v3, v4, v1}, Lokhttp3/OkHttpClient$Builder;->connectTimeout(JLjava/util/concurrent/TimeUnit;)Lokhttp3/OkHttpClient$Builder;

    .line 8
    :goto_0
    invoke-static {p1}, Lcn/mucang/android/core/http/a$b;->b(Lcn/mucang/android/core/http/a$b;)J

    move-result-wide v1

    cmp-long v7, v1, v5

    if-lez v7, :cond_1

    .line 9
    invoke-static {p1}, Lcn/mucang/android/core/http/a$b;->b(Lcn/mucang/android/core/http/a$b;)J

    move-result-wide v1

    sget-object v7, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v0, v1, v2, v7}, Lokhttp3/OkHttpClient$Builder;->readTimeout(JLjava/util/concurrent/TimeUnit;)Lokhttp3/OkHttpClient$Builder;

    goto :goto_1

    .line 10
    :cond_1
    sget-object v1, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v0, v3, v4, v1}, Lokhttp3/OkHttpClient$Builder;->readTimeout(JLjava/util/concurrent/TimeUnit;)Lokhttp3/OkHttpClient$Builder;

    .line 11
    :goto_1
    invoke-static {p1}, Lcn/mucang/android/core/http/a$b;->c(Lcn/mucang/android/core/http/a$b;)J

    move-result-wide v1

    cmp-long v7, v1, v5

    if-lez v7, :cond_2

    .line 12
    invoke-static {p1}, Lcn/mucang/android/core/http/a$b;->c(Lcn/mucang/android/core/http/a$b;)J

    move-result-wide v1

    sget-object v3, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v0, v1, v2, v3}, Lokhttp3/OkHttpClient$Builder;->writeTimeout(JLjava/util/concurrent/TimeUnit;)Lokhttp3/OkHttpClient$Builder;

    goto :goto_2

    .line 13
    :cond_2
    sget-object v1, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v0, v3, v4, v1}, Lokhttp3/OkHttpClient$Builder;->writeTimeout(JLjava/util/concurrent/TimeUnit;)Lokhttp3/OkHttpClient$Builder;

    .line 14
    :goto_2
    invoke-static {p1}, Lcn/mucang/android/core/http/a$b;->d(Lcn/mucang/android/core/http/a$b;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcn/mucang/android/core/utils/n0;->g(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 15
    invoke-static {p1}, Lcn/mucang/android/core/http/a$b;->d(Lcn/mucang/android/core/http/a$b;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcn/mucang/android/core/http/a;->b:Ljava/lang/String;

    .line 16
    :cond_3
    invoke-static {p1}, Lcn/mucang/android/core/http/a$b;->e(Lcn/mucang/android/core/http/a$b;)Ljava/net/Proxy;

    move-result-object v1

    if-eqz v1, :cond_4

    .line 17
    invoke-static {p1}, Lcn/mucang/android/core/http/a$b;->e(Lcn/mucang/android/core/http/a$b;)Ljava/net/Proxy;

    move-result-object v1

    invoke-virtual {v0, v1}, Lokhttp3/OkHttpClient$Builder;->proxy(Ljava/net/Proxy;)Lokhttp3/OkHttpClient$Builder;

    .line 18
    :cond_4
    invoke-static {p1}, Lcn/mucang/android/core/http/a$b;->f(Lcn/mucang/android/core/http/a$b;)Lokhttp3/Authenticator;

    move-result-object v1

    if-eqz v1, :cond_5

    .line 19
    invoke-static {p1}, Lcn/mucang/android/core/http/a$b;->f(Lcn/mucang/android/core/http/a$b;)Lokhttp3/Authenticator;

    move-result-object v1

    invoke-virtual {v0, v1}, Lokhttp3/OkHttpClient$Builder;->authenticator(Lokhttp3/Authenticator;)Lokhttp3/OkHttpClient$Builder;

    .line 20
    :cond_5
    invoke-static {p1}, Lcn/mucang/android/core/http/a$b;->g(Lcn/mucang/android/core/http/a$b;)Lokhttp3/Authenticator;

    move-result-object v1

    if-eqz v1, :cond_6

    .line 21
    invoke-static {p1}, Lcn/mucang/android/core/http/a$b;->g(Lcn/mucang/android/core/http/a$b;)Lokhttp3/Authenticator;

    move-result-object v1

    invoke-virtual {v0, v1}, Lokhttp3/OkHttpClient$Builder;->proxyAuthenticator(Lokhttp3/Authenticator;)Lokhttp3/OkHttpClient$Builder;

    .line 22
    :cond_6
    invoke-static {p1}, Lcn/mucang/android/core/http/a$b;->h(Lcn/mucang/android/core/http/a$b;)Lcn/mucang/android/core/http/a$c;

    move-result-object v1

    if-eqz v1, :cond_7

    .line 23
    invoke-static {p1}, Lcn/mucang/android/core/http/a$b;->h(Lcn/mucang/android/core/http/a$b;)Lcn/mucang/android/core/http/a$c;

    move-result-object p1

    invoke-interface {p1, v0}, Lcn/mucang/android/core/http/a$c;->a(Lokhttp3/OkHttpClient$Builder;)V

    .line 24
    :cond_7
    new-instance p1, Lcn/mucang/android/core/http/a$a;

    invoke-direct {p1, p0}, Lcn/mucang/android/core/http/a$a;-><init>(Lcn/mucang/android/core/http/a;)V

    invoke-virtual {v0, p1}, Lokhttp3/OkHttpClient$Builder;->addNetworkInterceptor(Lokhttp3/Interceptor;)Lokhttp3/OkHttpClient$Builder;

    .line 25
    invoke-virtual {v0}, Lokhttp3/OkHttpClient$Builder;->build()Lokhttp3/OkHttpClient;

    move-result-object p1

    iput-object p1, p0, Lcn/mucang/android/core/http/a;->a:Lokhttp3/OkHttpClient;

    return-void
.end method

.method synthetic constructor <init>(Lcn/mucang/android/core/http/a$b;Lcn/mucang/android/core/http/a$a;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcn/mucang/android/core/http/a;-><init>(Lcn/mucang/android/core/http/a$b;)V

    return-void
.end method

.method private static C(Ljava/lang/String;)[B
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/NoSuchAlgorithmException;,
            Ljava/io/UnsupportedEncodingException;
        }
    .end annotation

    const-string v0, "SHA-1"

    .line 1
    invoke-static {v0}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v0

    const-string v1, "UTF-8"

    invoke-virtual {p0, v1}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/security/MessageDigest;->digest([B)[B

    move-result-object p0

    return-object p0
.end method

.method private D(Lokhttp3/Request;)[B
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcn/mucang/android/core/api/exception/HttpException;
        }
    .end annotation

    .line 1
    :try_start_0
    iget-object v0, p0, Lcn/mucang/android/core/http/a;->a:Lokhttp3/OkHttpClient;

    invoke-virtual {v0, p1}, Lokhttp3/OkHttpClient;->newCall(Lokhttp3/Request;)Lokhttp3/Call;

    move-result-object p1

    invoke-interface {p1}, Lokhttp3/Call;->execute()Lokhttp3/Response;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 2
    invoke-virtual {p1}, Lokhttp3/Response;->code()I

    move-result v0

    const/16 v1, 0xc8

    if-lt v0, v1, :cond_0

    invoke-virtual {p1}, Lokhttp3/Response;->code()I

    move-result v0

    const/16 v1, 0x12c

    if-ge v0, v1, :cond_0

    .line 3
    :try_start_1
    invoke-static {p1}, Lcn/mucang/android/core/http/a;->h(Lokhttp3/Response;)[B

    move-result-object v0
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 4
    invoke-direct {p0, p1}, Lcn/mucang/android/core/http/a;->f(Lokhttp3/Response;)V

    return-object v0

    :catchall_0
    move-exception v0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 5
    :try_start_2
    new-instance v1, Ljava/io/IOException;

    invoke-direct {v1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/Throwable;)V

    throw v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 6
    :goto_0
    invoke-direct {p0, p1}, Lcn/mucang/android/core/http/a;->f(Lokhttp3/Response;)V

    .line 7
    throw v0

    .line 8
    :cond_0
    invoke-direct {p0, p1}, Lcn/mucang/android/core/http/a;->f(Lokhttp3/Response;)V

    .line 9
    new-instance v0, Lcn/mucang/android/core/api/exception/HttpException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "http code is not 2XX , code is = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lokhttp3/Response;->code()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lokhttp3/Response;->code()I

    move-result p1

    invoke-direct {v0, v1, p1}, Lcn/mucang/android/core/api/exception/HttpException;-><init>(Ljava/lang/String;I)V

    throw v0

    :catch_1
    move-exception p1

    .line 10
    invoke-direct {p0, p1}, Lcn/mucang/android/core/http/a;->l(Ljava/lang/Exception;)V

    .line 11
    throw p1
.end method

.method private E(Lokhttp3/Request;Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcn/mucang/android/core/api/exception/HttpException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcn/mucang/android/core/http/a;->a:Lokhttp3/OkHttpClient;

    invoke-virtual {v0, p1}, Lokhttp3/OkHttpClient;->newCall(Lokhttp3/Request;)Lokhttp3/Call;

    move-result-object p1

    invoke-interface {p1}, Lokhttp3/Call;->execute()Lokhttp3/Response;

    move-result-object p1

    .line 2
    invoke-virtual {p1}, Lokhttp3/Response;->code()I

    move-result v0

    .line 3
    :try_start_0
    invoke-static {p1}, Lcn/mucang/android/core/http/a;->h(Lokhttp3/Response;)[B

    move-result-object v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 4
    invoke-direct {p0, p1}, Lcn/mucang/android/core/http/a;->f(Lokhttp3/Response;)V

    .line 5
    new-instance p1, Ljava/lang/String;

    if-eqz p2, :cond_0

    goto :goto_0

    :cond_0
    const-string p2, "UTF-8"

    :goto_0
    invoke-direct {p1, v1, p2}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    const/16 p2, 0xc8

    if-lt v0, p2, :cond_1

    const/16 p2, 0x12c

    if-ge v0, p2, :cond_1

    return-object p1

    .line 6
    :cond_1
    new-instance p2, Lcn/mucang/android/core/api/exception/HttpException;

    invoke-direct {p2, p1, v0}, Lcn/mucang/android/core/api/exception/HttpException;-><init>(Ljava/lang/String;I)V

    throw p2

    :catchall_0
    move-exception p2

    goto :goto_1

    :catch_0
    move-exception p2

    .line 7
    :try_start_1
    new-instance v0, Ljava/io/IOException;

    invoke-direct {v0, p2}, Ljava/io/IOException;-><init>(Ljava/lang/Throwable;)V

    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 8
    :goto_1
    invoke-direct {p0, p1}, Lcn/mucang/android/core/http/a;->f(Lokhttp3/Response;)V

    .line 9
    throw p2
.end method

.method static synthetic a(Lcn/mucang/android/core/http/a;Ljava/lang/Exception;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcn/mucang/android/core/http/a;->l(Ljava/lang/Exception;)V

    return-void
.end method

.method static synthetic b(Lcn/mucang/android/core/http/a;)Lokhttp3/OkHttpClient;
    .locals 0

    .line 1
    iget-object p0, p0, Lcn/mucang/android/core/http/a;->a:Lokhttp3/OkHttpClient;

    return-object p0
.end method

.method private c(Ljava/lang/String;Lokhttp3/Request$Builder;Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lokhttp3/Request$Builder;",
            "Ljava/util/List<",
            "Lcn/mucang/android/core/api/request/e/a;",
            ">;)V"
        }
    .end annotation

    if-eqz p2, :cond_4

    .line 1
    invoke-static {p3}, Lcn/mucang/android/core/utils/g;->b(Ljava/util/Collection;)Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_1

    .line 2
    :cond_0
    invoke-interface {p3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_1
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p3

    if-eqz p3, :cond_4

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcn/mucang/android/core/api/request/e/a;

    .line 3
    invoke-virtual {p3}, Lcn/mucang/android/core/api/request/e/a;->a()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcn/mucang/android/core/utils/n0;->e(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p3}, Lcn/mucang/android/core/api/request/e/a;->b()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcn/mucang/android/core/utils/n0;->e(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    goto :goto_0

    .line 4
    :cond_2
    invoke-virtual {p3}, Lcn/mucang/android/core/api/request/e/a;->c()Z

    move-result v0

    if-nez v0, :cond_3

    .line 5
    invoke-virtual {p3}, Lcn/mucang/android/core/api/request/e/a;->a()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3}, Lcn/mucang/android/core/api/request/e/a;->b()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, v0, p3}, Lokhttp3/Request$Builder;->header(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/Request$Builder;

    goto :goto_0

    .line 6
    :cond_3
    invoke-virtual {p3}, Lcn/mucang/android/core/api/request/e/a;->a()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3}, Lcn/mucang/android/core/api/request/e/a;->b()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, v0, p3}, Lokhttp3/Request$Builder;->addHeader(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/Request$Builder;

    goto :goto_0

    :cond_4
    :goto_1
    return-void
.end method

.method private d(Lokhttp3/Request$Builder;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/RuntimeException;
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1}, Lcn/mucang/android/core/http/a;->e(Lokhttp3/Request$Builder;)V

    const-string v0, "Accept-Encoding"

    const-string v1, "gzip"

    .line 2
    invoke-virtual {p1, v0, v1}, Lokhttp3/Request$Builder;->header(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/Request$Builder;

    const-string v1, "tnpn4"

    .line 3
    invoke-virtual {p1, v0, v1}, Lokhttp3/Request$Builder;->addHeader(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/Request$Builder;

    return-void
.end method

.method private e(Lokhttp3/Request$Builder;)V
    .locals 2

    .line 1
    invoke-static {}, Lf/a/a/a/s/e;->d()Z

    move-result v0

    if-eqz v0, :cond_1

    :try_start_0
    const-string v0, "Mozilla/4.0 (compatible; MSIE 6.0; Windows NT 5.1; SV1; .NET CLR 3.5.21022;)"

    .line 2
    iget-object v1, p0, Lcn/mucang/android/core/http/a;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3
    invoke-static {}, Lcn/mucang/android/core/http/a;->s()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcn/mucang/android/core/http/a;->b:Ljava/lang/String;

    :cond_0
    const-string v0, "User-Agent"

    .line 4
    iget-object v1, p0, Lcn/mucang/android/core/http/a;->b:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lokhttp3/Request$Builder;->header(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/Request$Builder;
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    const-string v0, "\u9ed8\u8ba4\u66ff\u6362"

    .line 5
    invoke-static {v0, p1}, Lcn/mucang/android/core/utils/t;->c(Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    return-void

    :cond_1
    const-string p1, "appendUserAgentHeader"

    .line 6
    invoke-static {p1}, Lf/a/a/a/s/e;->c(Ljava/lang/String;)V

    .line 7
    new-instance p1, Ljava/lang/RuntimeException;

    const-string v0, "Get userAgent not permitted."

    invoke-direct {p1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private f(Lokhttp3/Response;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    invoke-virtual {p1}, Lokhttp3/Response;->body()Lokhttp3/ResponseBody;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 2
    invoke-virtual {p1}, Lokhttp3/ResponseBody;->close()V

    :cond_0
    return-void
.end method

.method private static g(Ljava/lang/String;)Ljavax/crypto/Cipher;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1
    invoke-static {p0}, Lcn/mucang/android/core/http/a;->y(Ljava/lang/String;)[B

    move-result-object v0

    .line 2
    invoke-static {p0}, Lcn/mucang/android/core/http/a;->C(Ljava/lang/String;)[B

    move-result-object p0

    const/16 v1, 0x18

    new-array v1, v1, [B

    const/4 v2, 0x0

    const/16 v3, 0x10

    .line 3
    invoke-static {v0, v2, v1, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    const/16 v0, 0x8

    .line 4
    invoke-static {p0, v2, v1, v3, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 5
    new-instance p0, Ljavax/crypto/spec/DESedeKeySpec;

    invoke-direct {p0, v1}, Ljavax/crypto/spec/DESedeKeySpec;-><init>([B)V

    const-string v0, "DESede"

    .line 6
    invoke-static {v0}, Ljavax/crypto/SecretKeyFactory;->getInstance(Ljava/lang/String;)Ljavax/crypto/SecretKeyFactory;

    move-result-object v0

    .line 7
    invoke-virtual {v0, p0}, Ljavax/crypto/SecretKeyFactory;->generateSecret(Ljava/security/spec/KeySpec;)Ljavax/crypto/SecretKey;

    move-result-object p0

    const-string v0, "DESede/ECB/PKCS5Padding"

    .line 8
    invoke-static {v0}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object v0

    const/4 v1, 0x2

    .line 9
    invoke-virtual {v0, v1, p0}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;)V

    return-object v0
.end method

.method public static h(Lokhttp3/Response;)[B
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lokhttp3/Response;->body()Lokhttp3/ResponseBody;

    move-result-object v0

    invoke-virtual {v0}, Lokhttp3/ResponseBody;->bytes()[B

    move-result-object v0

    invoke-virtual {p0}, Lokhttp3/Response;->headers()Lokhttp3/Headers;

    move-result-object p0

    invoke-virtual {p0}, Lokhttp3/Headers;->toMultimap()Ljava/util/Map;

    move-result-object p0

    invoke-static {v0, p0}, Lcn/mucang/android/core/http/a;->i([BLjava/util/Map;)[B

    move-result-object p0

    return-object p0
.end method

.method public static i([BLjava/util/Map;)[B
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([B",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;>;)[B"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1
    invoke-static {p1}, Lcn/mucang/android/core/utils/g;->c(Ljava/util/Map;)Z

    move-result v0

    if-nez v0, :cond_6

    if-nez p0, :cond_0

    goto :goto_3

    :cond_0
    const-string v0, "Content-Type"

    .line 2
    invoke-static {v0, p1}, Lcn/mucang/android/core/http/a;->t(Ljava/lang/String;Ljava/util/Map;)Ljava/util/List;

    move-result-object v0

    const-string v1, "Content-Encoding"

    .line 3
    invoke-static {v1, p1}, Lcn/mucang/android/core/http/a;->t(Ljava/lang/String;Ljava/util/Map;)Ljava/util/List;

    move-result-object v1

    const-string v2, "X-Simple-Token"

    .line 4
    invoke-static {v2, p1}, Lcn/mucang/android/core/http/a;->t(Ljava/lang/String;Ljava/util/Map;)Ljava/util/List;

    move-result-object p1

    .line 5
    invoke-static {v0}, Lcn/mucang/android/core/utils/g;->b(Ljava/util/Collection;)Z

    move-result v2

    const/4 v3, 0x0

    if-nez v2, :cond_1

    .line 6
    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    goto :goto_0

    :cond_1
    const-string v0, "text/plain"

    .line 7
    :goto_0
    invoke-static {v1}, Lcn/mucang/android/core/utils/g;->b(Ljava/util/Collection;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 8
    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    goto :goto_1

    :cond_2
    const-string v1, "default"

    .line 9
    :goto_1
    invoke-static {p1}, Lcn/mucang/android/core/utils/g;->b(Ljava/util/Collection;)Z

    move-result v2

    if-nez v2, :cond_3

    .line 10
    invoke-interface {p1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    goto :goto_2

    :cond_3
    const/4 p1, 0x0

    :goto_2
    const-string v2, "application/gzip-enc-stream"

    .line 11
    invoke-virtual {v0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 12
    invoke-static {p0, p1}, Lcn/mucang/android/core/http/a;->k([BLjava/lang/String;)[B

    move-result-object p0

    .line 13
    invoke-static {p0}, Lcn/mucang/android/core/http/a;->j([B)[B

    move-result-object p0

    goto :goto_3

    :cond_4
    const-string v2, "application/enc-stream"

    .line 14
    invoke-virtual {v0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 15
    invoke-static {p0, p1}, Lcn/mucang/android/core/http/a;->k([BLjava/lang/String;)[B

    move-result-object p0

    goto :goto_3

    :cond_5
    const-string p1, "gzip"

    .line 16
    invoke-virtual {v1, p1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_6

    .line 17
    invoke-static {p0}, Lcn/mucang/android/core/http/a;->j([B)[B

    move-result-object p0

    :cond_6
    :goto_3
    return-object p0
.end method

.method private static j([B)[B
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    const/4 v0, 0x0

    .line 1
    :try_start_0
    new-instance v1, Ljava/util/zip/GZIPInputStream;

    new-instance v2, Ljava/io/ByteArrayInputStream;

    invoke-direct {v2, p0}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    invoke-direct {v1, v2}, Ljava/util/zip/GZIPInputStream;-><init>(Ljava/io/InputStream;)V

    .line 2
    new-instance p0, Ljava/io/BufferedInputStream;

    invoke-direct {p0, v1}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    .line 3
    :try_start_1
    new-instance v1, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v1}, Ljava/io/ByteArrayOutputStream;-><init>()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 4
    :try_start_2
    invoke-static {p0, v1}, Lcn/mucang/android/core/utils/j;->d(Ljava/io/InputStream;Ljava/io/OutputStream;)V

    .line 5
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 6
    invoke-static {v1}, Lcn/mucang/android/core/utils/o;->a(Ljava/io/Closeable;)V

    .line 7
    invoke-static {p0}, Lcn/mucang/android/core/utils/o;->a(Ljava/io/Closeable;)V

    return-object v0

    :catchall_0
    move-exception v0

    goto :goto_0

    :catchall_1
    move-exception v1

    move-object v3, v1

    move-object v1, v0

    move-object v0, v3

    goto :goto_0

    :catchall_2
    move-exception p0

    move-object v1, v0

    move-object v0, p0

    move-object p0, v1

    .line 8
    :goto_0
    invoke-static {v1}, Lcn/mucang/android/core/utils/o;->a(Ljava/io/Closeable;)V

    .line 9
    invoke-static {p0}, Lcn/mucang/android/core/utils/o;->a(Ljava/io/Closeable;)V

    .line 10
    throw v0
.end method

.method private static k([BLjava/lang/String;)[B
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1
    invoke-static {p1}, Lcn/mucang/android/core/utils/n0;->g(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2
    invoke-static {p1}, Lcn/mucang/android/core/http/a;->g(Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 3
    array-length v0, p0

    rem-int/lit8 v0, v0, 0x8

    if-nez v0, :cond_0

    .line 4
    invoke-virtual {p1, p0}, Ljavax/crypto/Cipher;->doFinal([B)[B

    move-result-object p0

    :cond_0
    return-object p0

    :cond_1
    const-string p1, ""

    .line 5
    invoke-static {p0, p1}, Lcn/mucang/android/core/jni/Riddle;->d([BLjava/lang/String;)[B

    move-result-object p0

    return-object p0
.end method

.method private l(Ljava/lang/Exception;)V
    .locals 2

    .line 1
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    .line 2
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Gai"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    instance-of v0, p1, Ljava/net/SocketTimeoutException;

    if-nez v0, :cond_0

    instance-of p1, p1, Ljava/net/UnknownHostException;

    if-eqz p1, :cond_1

    .line 3
    :cond_0
    :try_start_0
    iget-object p1, p0, Lcn/mucang/android/core/http/a;->a:Lokhttp3/OkHttpClient;

    invoke-virtual {p1}, Lokhttp3/OkHttpClient;->connectionPool()Lokhttp3/ConnectionPool;

    move-result-object p1

    invoke-virtual {p1}, Lokhttp3/ConnectionPool;->evictAll()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 4
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :cond_1
    :goto_0
    return-void
.end method

.method private m(Lokhttp3/Request;)Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcn/mucang/android/core/api/exception/HttpException;
        }
    .end annotation

    const-string v0, "UTF-8"

    .line 1
    invoke-direct {p0, p1, v0}, Lcn/mucang/android/core/http/a;->n(Lokhttp3/Request;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method private n(Lokhttp3/Request;Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcn/mucang/android/core/api/exception/HttpException;
        }
    .end annotation

    .line 1
    :try_start_0
    invoke-direct {p0, p1, p2}, Lcn/mucang/android/core/http/a;->E(Lokhttp3/Request;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    const-string v0, "hadeslee"

    .line 2
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lokhttp3/Request;->method()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " , url = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lokhttp3/Request;->url()Lokhttp3/HttpUrl;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, " , content = "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcn/mucang/android/core/utils/t;->a(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Lcn/mucang/android/core/api/exception/HttpException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p2

    :catch_0
    move-exception p1

    .line 3
    invoke-direct {p0, p1}, Lcn/mucang/android/core/http/a;->l(Ljava/lang/Exception;)V

    const-string p2, "\u9ed8\u8ba4\u66ff\u6362"

    .line 4
    invoke-static {p2, p1}, Lcn/mucang/android/core/utils/t;->c(Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 5
    new-instance p2, Ljava/io/IOException;

    const-string v0, "\u7f51\u7edc\u8fde\u63a5\u5931\u8d25"

    invoke-direct {p2, v0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p2

    :catch_1
    move-exception p1

    .line 6
    invoke-direct {p0, p1}, Lcn/mucang/android/core/http/a;->l(Ljava/lang/Exception;)V

    .line 7
    throw p1
.end method

.method public static q()Lcn/mucang/android/core/http/a;
    .locals 1

    .line 1
    sget-object v0, Lcn/mucang/android/core/http/a;->c:Lcn/mucang/android/core/http/a;

    return-object v0
.end method

.method public static r()Lokhttp3/OkHttpClient;
    .locals 2

    .line 1
    sget-object v0, Lcn/mucang/android/core/http/a;->d:Lokhttp3/OkHttpClient;

    if-nez v0, :cond_1

    .line 2
    const-class v0, Lcn/mucang/android/core/http/a;

    monitor-enter v0

    .line 3
    :try_start_0
    sget-object v1, Lcn/mucang/android/core/http/a;->d:Lokhttp3/OkHttpClient;

    if-nez v1, :cond_0

    .line 4
    new-instance v1, Lokhttp3/OkHttpClient;

    invoke-direct {v1}, Lokhttp3/OkHttpClient;-><init>()V

    sput-object v1, Lcn/mucang/android/core/http/a;->d:Lokhttp3/OkHttpClient;

    .line 5
    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 6
    :cond_1
    :goto_0
    sget-object v0, Lcn/mucang/android/core/http/a;->d:Lokhttp3/OkHttpClient;

    return-object v0
.end method

.method public static s()Ljava/lang/String;
    .locals 4

    const-string v0, "Mucang-UA"

    const-string v1, "userAgent"

    const/4 v2, 0x0

    .line 1
    invoke-static {v0, v1, v2}, Lcn/mucang/android/core/utils/j0;->f(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 2
    invoke-static {v2}, Lcn/mucang/android/core/utils/n0;->g(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    return-object v2

    .line 3
    :cond_0
    invoke-static {}, Lcn/mucang/android/core/config/MucangConfig;->getContext()Landroid/app/Application;

    move-result-object v2

    invoke-static {v2}, Landroid/webkit/WebSettings;->getDefaultUserAgent(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    .line 4
    invoke-static {v2}, Lcn/mucang/android/core/utils/n0;->e(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    const-string v2, "Mozilla/4.0 (compatible; MSIE 6.0; Windows NT 5.1; SV1; .NET CLR 3.5.21022;)"

    .line 5
    :cond_1
    invoke-static {v0, v1, v2}, Lcn/mucang/android/core/utils/j0;->k(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-object v2
.end method

.method private static t(Ljava/lang/String;Ljava/util/Map;)Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;>;)",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1
    invoke-static {p1}, Lcn/mucang/android/core/utils/g;->c(Ljava/util/Map;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_2

    invoke-static {p0}, Lcn/mucang/android/core/utils/n0;->e(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 3
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {p0, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 4
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object p0

    invoke-interface {p1, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/List;

    return-object p0

    :cond_2
    :goto_0
    return-object v1
.end method

.method private static y(Ljava/lang/String;)[B
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/NoSuchAlgorithmException;,
            Ljava/io/UnsupportedEncodingException;
        }
    .end annotation

    const-string v0, "MD5"

    .line 1
    invoke-static {v0}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v0

    const-string v1, "UTF-8"

    invoke-virtual {p0, v1}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/security/MessageDigest;->digest([B)[B

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public A(Ljava/lang/String;Lcn/mucang/android/core/api/request/e/b;Ljava/util/List;Lcn/mucang/android/core/http/c/b;)Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcn/mucang/android/core/api/request/e/b;",
            "Ljava/util/List<",
            "Lcn/mucang/android/core/api/request/e/a;",
            ">;",
            "Lcn/mucang/android/core/http/c/b;",
            ")",
            "Ljava/lang/String;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcn/mucang/android/core/api/exception/HttpException;
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lcn/mucang/android/core/http/a;->B()Lokhttp3/Request$Builder;

    move-result-object v0

    .line 2
    invoke-virtual {v0, p1}, Lokhttp3/Request$Builder;->url(Ljava/lang/String;)Lokhttp3/Request$Builder;

    .line 3
    invoke-static {p3, p2}, Lcn/mucang/android/core/api/request/f/a;->f(Ljava/util/List;Lcn/mucang/android/core/api/request/e/b;)Ljava/util/List;

    move-result-object p3

    invoke-direct {p0, p1, v0, p3}, Lcn/mucang/android/core/http/a;->c(Ljava/lang/String;Lokhttp3/Request$Builder;Ljava/util/List;)V

    if-eqz p2, :cond_3

    .line 4
    invoke-virtual {p2}, Lcn/mucang/android/core/api/request/e/b;->p()Ljava/util/List;

    move-result-object p1

    invoke-static {p1}, Lcn/mucang/android/core/api/request/f/a;->d(Ljava/util/List;)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 5
    invoke-static {p1}, Lokhttp3/MediaType;->parse(Ljava/lang/String;)Lokhttp3/MediaType;

    move-result-object p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 6
    :goto_0
    invoke-virtual {p2}, Lcn/mucang/android/core/api/request/e/b;->s()Z

    move-result p3

    if-eqz p3, :cond_1

    .line 7
    invoke-virtual {p2}, Lcn/mucang/android/core/api/request/e/b;->n()Ljava/io/File;

    move-result-object p2

    invoke-static {p1, p2, p4}, Lcn/mucang/android/core/http/c/a;->b(Lokhttp3/MediaType;Ljava/io/File;Lcn/mucang/android/core/http/c/b;)Lokhttp3/RequestBody;

    move-result-object p1

    goto :goto_1

    .line 8
    :cond_1
    invoke-virtual {p2}, Lcn/mucang/android/core/api/request/e/b;->r()Z

    move-result p3

    if-eqz p3, :cond_2

    .line 9
    new-instance p3, Lokhttp3/MultipartBody$Builder;

    invoke-direct {p3}, Lokhttp3/MultipartBody$Builder;-><init>()V

    .line 10
    invoke-virtual {p3, p1}, Lokhttp3/MultipartBody$Builder;->setType(Lokhttp3/MediaType;)Lokhttp3/MultipartBody$Builder;

    move-result-object p3

    .line 11
    invoke-virtual {p2}, Lcn/mucang/android/core/api/request/e/b;->q()Ljava/lang/String;

    move-result-object p4

    invoke-virtual {p2}, Lcn/mucang/android/core/api/request/e/b;->o()Ljava/lang/String;

    move-result-object v1

    .line 12
    invoke-virtual {p2}, Lcn/mucang/android/core/api/request/e/b;->m()[B

    move-result-object p2

    .line 13
    invoke-static {p1, p2}, Lokhttp3/RequestBody;->create(Lokhttp3/MediaType;[B)Lokhttp3/RequestBody;

    move-result-object p1

    invoke-virtual {p3, p4, v1, p1}, Lokhttp3/MultipartBody$Builder;->addFormDataPart(Ljava/lang/String;Ljava/lang/String;Lokhttp3/RequestBody;)Lokhttp3/MultipartBody$Builder;

    move-result-object p1

    .line 14
    invoke-virtual {p1}, Lokhttp3/MultipartBody$Builder;->build()Lokhttp3/MultipartBody;

    move-result-object p1

    goto :goto_1

    .line 15
    :cond_2
    invoke-virtual {p2}, Lcn/mucang/android/core/api/request/e/b;->m()[B

    move-result-object p2

    invoke-static {p1, p2}, Lokhttp3/RequestBody;->create(Lokhttp3/MediaType;[B)Lokhttp3/RequestBody;

    move-result-object p1

    .line 16
    :goto_1
    invoke-virtual {v0, p1}, Lokhttp3/Request$Builder;->post(Lokhttp3/RequestBody;)Lokhttp3/Request$Builder;

    .line 17
    :cond_3
    invoke-virtual {v0}, Lokhttp3/Request$Builder;->build()Lokhttp3/Request;

    move-result-object p1

    invoke-direct {p0, p1}, Lcn/mucang/android/core/http/a;->m(Lokhttp3/Request;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public B()Lokhttp3/Request$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/RuntimeException;
        }
    .end annotation

    .line 1
    new-instance v0, Lokhttp3/Request$Builder;

    invoke-direct {v0}, Lokhttp3/Request$Builder;-><init>()V

    .line 2
    invoke-direct {p0, v0}, Lcn/mucang/android/core/http/a;->d(Lokhttp3/Request$Builder;)V

    return-object v0
.end method

.method public o(Ljava/lang/String;Ljava/util/List;)Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lcn/mucang/android/core/api/request/e/a;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcn/mucang/android/core/api/exception/HttpException;
        }
    .end annotation

    const-string v0, "UTF-8"

    .line 1
    invoke-virtual {p0, p1, p2, v0}, Lcn/mucang/android/core/http/a;->p(Ljava/lang/String;Ljava/util/List;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public p(Ljava/lang/String;Ljava/util/List;Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lcn/mucang/android/core/api/request/e/a;",
            ">;",
            "Ljava/lang/String;",
            ")",
            "Ljava/lang/String;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcn/mucang/android/core/api/exception/HttpException;
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lcn/mucang/android/core/http/a;->B()Lokhttp3/Request$Builder;

    move-result-object v0

    .line 2
    invoke-virtual {v0, p1}, Lokhttp3/Request$Builder;->url(Ljava/lang/String;)Lokhttp3/Request$Builder;

    .line 3
    invoke-direct {p0, p1, v0, p2}, Lcn/mucang/android/core/http/a;->c(Ljava/lang/String;Lokhttp3/Request$Builder;Ljava/util/List;)V

    .line 4
    invoke-virtual {v0}, Lokhttp3/Request$Builder;->build()Lokhttp3/Request;

    move-result-object p1

    invoke-direct {p0, p1, p3}, Lcn/mucang/android/core/http/a;->n(Lokhttp3/Request;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public u(Ljava/lang/String;)[B
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcn/mucang/android/core/api/exception/HttpException;
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lcn/mucang/android/core/http/a;->B()Lokhttp3/Request$Builder;

    move-result-object v0

    .line 2
    invoke-virtual {v0, p1}, Lokhttp3/Request$Builder;->url(Ljava/lang/String;)Lokhttp3/Request$Builder;

    .line 3
    :try_start_0
    invoke-virtual {v0}, Lokhttp3/Request$Builder;->build()Lokhttp3/Request;

    move-result-object p1

    invoke-direct {p0, p1}, Lcn/mucang/android/core/http/a;->D(Lokhttp3/Request;)[B

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    const-string v0, "\u9ed8\u8ba4\u66ff\u6362"

    .line 4
    invoke-static {v0, p1}, Lcn/mucang/android/core/utils/t;->c(Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 5
    new-instance p1, Ljava/io/IOException;

    const-string v0, "\u7f51\u7edc\u8fde\u63a5\u5931\u8d25"

    invoke-direct {p1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public v(Ljava/lang/String;)Ljava/io/InputStream;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcn/mucang/android/core/api/exception/HttpException;
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lcn/mucang/android/core/http/a;->B()Lokhttp3/Request$Builder;

    move-result-object v0

    const-string v1, "Accept-Encoding"

    .line 2
    invoke-virtual {v0, v1}, Lokhttp3/Request$Builder;->removeHeader(Ljava/lang/String;)Lokhttp3/Request$Builder;

    const-string v1, "Content-Encoding"

    .line 3
    invoke-virtual {v0, v1}, Lokhttp3/Request$Builder;->removeHeader(Ljava/lang/String;)Lokhttp3/Request$Builder;

    .line 4
    invoke-virtual {v0, p1}, Lokhttp3/Request$Builder;->url(Ljava/lang/String;)Lokhttp3/Request$Builder;

    .line 5
    :try_start_0
    iget-object p1, p0, Lcn/mucang/android/core/http/a;->a:Lokhttp3/OkHttpClient;

    invoke-virtual {v0}, Lokhttp3/Request$Builder;->build()Lokhttp3/Request;

    move-result-object v0

    invoke-virtual {p1, v0}, Lokhttp3/OkHttpClient;->newCall(Lokhttp3/Request;)Lokhttp3/Call;

    move-result-object p1

    invoke-interface {p1}, Lokhttp3/Call;->execute()Lokhttp3/Response;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    if-eqz p1, :cond_1

    .line 6
    invoke-virtual {p1}, Lokhttp3/Response;->code()I

    move-result v0

    const/16 v1, 0xc8

    if-lt v0, v1, :cond_0

    invoke-virtual {p1}, Lokhttp3/Response;->code()I

    move-result v0

    const/16 v1, 0x12c

    if-ge v0, v1, :cond_0

    .line 7
    :try_start_1
    invoke-virtual {p1}, Lokhttp3/Response;->body()Lokhttp3/ResponseBody;

    move-result-object p1

    invoke-virtual {p1}, Lokhttp3/ResponseBody;->byteStream()Ljava/io/InputStream;

    move-result-object p1
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    .line 8
    new-instance v0, Ljava/io/IOException;

    invoke-direct {v0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/Throwable;)V

    throw v0

    .line 9
    :cond_0
    new-instance v0, Lcn/mucang/android/core/api/exception/HttpException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "http code is not 2XX , code is = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lokhttp3/Response;->code()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lokhttp3/Response;->code()I

    move-result p1

    invoke-direct {v0, v1, p1}, Lcn/mucang/android/core/api/exception/HttpException;-><init>(Ljava/lang/String;I)V

    throw v0

    .line 10
    :cond_1
    new-instance p1, Ljava/io/IOException;

    const-string v0, "response is null"

    invoke-direct {p1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1

    :catch_1
    move-exception p1

    .line 11
    invoke-direct {p0, p1}, Lcn/mucang/android/core/http/a;->l(Ljava/lang/Exception;)V

    .line 12
    throw p1
.end method

.method public w(Ljava/lang/String;)Lcn/mucang/android/core/http/b;
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcn/mucang/android/core/api/exception/HttpException;
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lcn/mucang/android/core/http/a;->B()Lokhttp3/Request$Builder;

    move-result-object v0

    const-string v1, "Accept-Encoding"

    .line 2
    invoke-virtual {v0, v1}, Lokhttp3/Request$Builder;->removeHeader(Ljava/lang/String;)Lokhttp3/Request$Builder;

    const-string v1, "Content-Encoding"

    .line 3
    invoke-virtual {v0, v1}, Lokhttp3/Request$Builder;->removeHeader(Ljava/lang/String;)Lokhttp3/Request$Builder;

    .line 4
    invoke-virtual {v0, p1}, Lokhttp3/Request$Builder;->url(Ljava/lang/String;)Lokhttp3/Request$Builder;

    .line 5
    :try_start_0
    iget-object p1, p0, Lcn/mucang/android/core/http/a;->a:Lokhttp3/OkHttpClient;

    invoke-virtual {v0}, Lokhttp3/Request$Builder;->build()Lokhttp3/Request;

    move-result-object v0

    invoke-virtual {p1, v0}, Lokhttp3/OkHttpClient;->newCall(Lokhttp3/Request;)Lokhttp3/Call;

    move-result-object p1

    invoke-interface {p1}, Lokhttp3/Call;->execute()Lokhttp3/Response;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 6
    invoke-virtual {p1}, Lokhttp3/Response;->body()Lokhttp3/ResponseBody;

    move-result-object v0

    invoke-virtual {v0}, Lokhttp3/ResponseBody;->contentLength()J

    move-result-wide v2

    .line 7
    invoke-virtual {p1}, Lokhttp3/Response;->body()Lokhttp3/ResponseBody;

    move-result-object v0

    invoke-virtual {v0}, Lokhttp3/ResponseBody;->byteStream()Ljava/io/InputStream;

    move-result-object v4

    .line 8
    new-instance v0, Lcn/mucang/android/core/http/b;

    invoke-virtual {p1}, Lokhttp3/Response;->code()I

    move-result v5

    invoke-virtual {p1}, Lokhttp3/Response;->headers()Lokhttp3/Headers;

    move-result-object p1

    invoke-virtual {p1}, Lokhttp3/Headers;->toMultimap()Ljava/util/Map;

    move-result-object v6

    move-object v1, v0

    invoke-direct/range {v1 .. v6}, Lcn/mucang/android/core/http/b;-><init>(JLjava/io/InputStream;ILjava/util/Map;)V

    return-object v0

    :catch_0
    move-exception p1

    .line 9
    invoke-direct {p0, p1}, Lcn/mucang/android/core/http/a;->l(Ljava/lang/Exception;)V

    .line 10
    throw p1
.end method

.method public x(Ljava/lang/String;)Ljava/io/InputStream;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcn/mucang/android/core/api/exception/HttpException;
        }
    .end annotation

    .line 1
    invoke-virtual {p0, p1}, Lcn/mucang/android/core/http/a;->u(Ljava/lang/String;)[B

    move-result-object p1

    if-eqz p1, :cond_1

    .line 2
    array-length v0, p1

    if-nez v0, :cond_0

    goto :goto_0

    .line 3
    :cond_0
    new-instance v0, Ljava/io/ByteArrayInputStream;

    invoke-direct {v0, p1}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    return-object v0

    :cond_1
    :goto_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public z(Ljava/lang/String;Lcn/mucang/android/core/api/request/e/b;Ljava/util/List;)Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcn/mucang/android/core/api/request/e/b;",
            "Ljava/util/List<",
            "Lcn/mucang/android/core/api/request/e/a;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcn/mucang/android/core/api/exception/HttpException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 1
    invoke-virtual {p0, p1, p2, p3, v0}, Lcn/mucang/android/core/http/a;->A(Ljava/lang/String;Lcn/mucang/android/core/api/request/e/b;Ljava/util/List;Lcn/mucang/android/core/http/c/b;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method
