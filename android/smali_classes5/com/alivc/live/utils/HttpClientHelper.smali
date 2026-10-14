.class public Lcom/alivc/live/utils/HttpClientHelper;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final TAG:Ljava/lang/String; = "HttpClientHelper"

.field private static final TIMEOUT:I = 0x2710

.field private static sThreadCachePool:Ljava/util/concurrent/ExecutorService;


# instance fields
.field private mCustomHeaders:[Ljava/lang/String;

.field private mHttpProxy:Ljava/lang/String;

.field private mHttpResponse:Ljava/lang/String;

.field private mNetworkTimeout:I

.field private mReferer:Ljava/lang/String;

.field private mTrustAllCert:Z

.field private mUrl:Ljava/lang/String;

.field private mUserAgent:Ljava/lang/String;

.field private urlConnection:Ljava/net/URLConnection;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    invoke-static {}, Ljava/util/concurrent/Executors;->newCachedThreadPool()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    sput-object v0, Lcom/alivc/live/utils/HttpClientHelper;->sThreadCachePool:Ljava/util/concurrent/ExecutorService;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/alivc/live/utils/HttpClientHelper;->urlConnection:Ljava/net/URLConnection;

    iput-object v0, p0, Lcom/alivc/live/utils/HttpClientHelper;->mUrl:Ljava/lang/String;

    iput-object v0, p0, Lcom/alivc/live/utils/HttpClientHelper;->mReferer:Ljava/lang/String;

    const/16 v1, 0x2710

    iput v1, p0, Lcom/alivc/live/utils/HttpClientHelper;->mNetworkTimeout:I

    iput-object v0, p0, Lcom/alivc/live/utils/HttpClientHelper;->mHttpProxy:Ljava/lang/String;

    iput-object v0, p0, Lcom/alivc/live/utils/HttpClientHelper;->mUserAgent:Ljava/lang/String;

    iput-object v0, p0, Lcom/alivc/live/utils/HttpClientHelper;->mCustomHeaders:[Ljava/lang/String;

    iput-object v0, p0, Lcom/alivc/live/utils/HttpClientHelper;->mHttpResponse:Ljava/lang/String;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/alivc/live/utils/HttpClientHelper;->mTrustAllCert:Z

    iput-object p1, p0, Lcom/alivc/live/utils/HttpClientHelper;->mUrl:Ljava/lang/String;

    return-void
.end method

.method static synthetic access$000(Lcom/alivc/live/utils/HttpClientHelper;)Ljava/net/URLConnection;
    .locals 0

    iget-object p0, p0, Lcom/alivc/live/utils/HttpClientHelper;->urlConnection:Ljava/net/URLConnection;

    return-object p0
.end method

.method static synthetic access$100()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/alivc/live/utils/HttpClientHelper;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method private getErrorStream()Ljava/io/InputStream;
    .locals 2

    iget-object v0, p0, Lcom/alivc/live/utils/HttpClientHelper;->urlConnection:Ljava/net/URLConnection;

    instance-of v1, v0, Ljavax/net/ssl/HttpsURLConnection;

    if-eqz v1, :cond_0

    check-cast v0, Ljavax/net/ssl/HttpsURLConnection;

    invoke-virtual {v0}, Ljavax/net/ssl/HttpsURLConnection;->getErrorStream()Ljava/io/InputStream;

    move-result-object v0

    goto :goto_0

    :cond_0
    instance-of v1, v0, Ljava/net/HttpURLConnection;

    if-eqz v1, :cond_1

    check-cast v0, Ljava/net/HttpURLConnection;

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getErrorStream()Ljava/io/InputStream;

    move-result-object v0

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method public static getHostnameVerifier()Ljavax/net/ssl/HostnameVerifier;
    .locals 1

    new-instance v0, Lcom/alivc/live/utils/HttpClientHelper$3;

    invoke-direct {v0}, Lcom/alivc/live/utils/HttpClientHelper$3;-><init>()V

    return-object v0
.end method

.method private getHttpUrlConnection(Ljava/lang/String;Ljava/lang/String;[B)Ljava/net/URLConnection;
    .locals 4

    const/4 v0, 0x0

    :try_start_0
    iget-object v1, p0, Lcom/alivc/live/utils/HttpClientHelper;->mHttpProxy:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    if-eqz v1, :cond_0

    :try_start_1
    new-instance v1, Ljava/net/URL;

    iget-object v2, p0, Lcom/alivc/live/utils/HttpClientHelper;->mHttpProxy:Ljava/lang/String;

    invoke-direct {v1, v2}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    new-instance v2, Ljava/net/InetSocketAddress;

    invoke-virtual {v1}, Ljava/net/URL;->getHost()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1}, Ljava/net/URL;->getPort()I

    move-result v1

    invoke-direct {v2, v3, v1}, Ljava/net/InetSocketAddress;-><init>(Ljava/lang/String;I)V

    new-instance v1, Ljava/net/Proxy;

    sget-object v3, Ljava/net/Proxy$Type;->HTTP:Ljava/net/Proxy$Type;

    invoke-direct {v1, v3, v2}, Ljava/net/Proxy;-><init>(Ljava/net/Proxy$Type;Ljava/net/SocketAddress;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    :try_start_2
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    :cond_0
    move-object v1, v0

    :goto_0
    new-instance v2, Ljava/net/URL;

    invoke-direct {v2, p1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    if-eqz v1, :cond_1

    invoke-virtual {v2, v1}, Ljava/net/URL;->openConnection(Ljava/net/Proxy;)Ljava/net/URLConnection;

    move-result-object p1

    goto :goto_1

    :cond_1
    invoke-virtual {v2}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object p1
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    :goto_1
    :try_start_3
    instance-of v1, p1, Ljava/net/HttpURLConnection;

    if-nez v1, :cond_2

    return-object v0

    :cond_2
    move-object v0, p1

    check-cast v0, Ljava/net/HttpURLConnection;

    invoke-virtual {v0, p2}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    iget v1, p0, Lcom/alivc/live/utils/HttpClientHelper;->mNetworkTimeout:I

    invoke-virtual {v0, v1}, Ljava/net/HttpURLConnection;->setConnectTimeout(I)V

    iget v1, p0, Lcom/alivc/live/utils/HttpClientHelper;->mNetworkTimeout:I

    invoke-virtual {v0, v1}, Ljava/net/HttpURLConnection;->setReadTimeout(I)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    const-string v1, "POST"

    if-ne p2, v1, :cond_5

    const/4 p2, 0x1

    if-eqz p3, :cond_3

    const/4 v1, 0x1

    goto :goto_2

    :cond_3
    const/4 v1, 0x0

    :goto_2
    :try_start_4
    invoke-virtual {v0, v1}, Ljava/net/HttpURLConnection;->setDoOutput(Z)V

    invoke-virtual {v0, p2}, Ljava/net/HttpURLConnection;->setDoInput(Z)V

    if-eqz v1, :cond_4

    array-length p2, p3

    invoke-virtual {v0, p2}, Ljava/net/HttpURLConnection;->setFixedLengthStreamingMode(I)V

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->connect()V

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getOutputStream()Ljava/io/OutputStream;

    move-result-object p2

    invoke-virtual {p2, p3}, Ljava/io/OutputStream;->write([B)V

    invoke-virtual {p2}, Ljava/io/OutputStream;->close()V

    goto :goto_4

    :cond_4
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->connect()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1

    goto :goto_4

    :catch_1
    move-exception p2

    move-object v0, p1

    goto :goto_3

    :catch_2
    move-exception p1

    move-object p2, p1

    :goto_3
    invoke-virtual {p2}, Ljava/lang/Exception;->printStackTrace()V

    move-object p1, v0

    :cond_5
    :goto_4
    return-object p1
.end method

.method private getHttpsUrlConnection(Ljava/lang/String;Ljava/lang/String;[B)Ljava/net/URLConnection;
    .locals 4

    const/4 v0, 0x0

    :try_start_0
    iget-object v1, p0, Lcom/alivc/live/utils/HttpClientHelper;->mHttpProxy:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    if-eqz v1, :cond_0

    :try_start_1
    new-instance v1, Ljava/net/URL;

    iget-object v2, p0, Lcom/alivc/live/utils/HttpClientHelper;->mHttpProxy:Ljava/lang/String;

    invoke-direct {v1, v2}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    new-instance v2, Ljava/net/InetSocketAddress;

    invoke-virtual {v1}, Ljava/net/URL;->getHost()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1}, Ljava/net/URL;->getPort()I

    move-result v1

    invoke-direct {v2, v3, v1}, Ljava/net/InetSocketAddress;-><init>(Ljava/lang/String;I)V

    new-instance v1, Ljava/net/Proxy;

    sget-object v3, Ljava/net/Proxy$Type;->HTTP:Ljava/net/Proxy$Type;

    invoke-direct {v1, v3, v2}, Ljava/net/Proxy;-><init>(Ljava/net/Proxy$Type;Ljava/net/SocketAddress;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    :try_start_2
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    :cond_0
    move-object v1, v0

    :goto_0
    new-instance v2, Ljava/net/URL;

    invoke-direct {v2, p1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    if-eqz v1, :cond_1

    invoke-virtual {v2, v1}, Ljava/net/URL;->openConnection(Ljava/net/Proxy;)Ljava/net/URLConnection;

    move-result-object p1

    goto :goto_1

    :cond_1
    invoke-virtual {v2}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object p1
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    :goto_1
    :try_start_3
    instance-of v1, p1, Ljavax/net/ssl/HttpsURLConnection;

    if-nez v1, :cond_2

    return-object v0

    :cond_2
    move-object v0, p1

    check-cast v0, Ljavax/net/ssl/HttpsURLConnection;

    invoke-virtual {v0, p2}, Ljavax/net/ssl/HttpsURLConnection;->setRequestMethod(Ljava/lang/String;)V

    iget v1, p0, Lcom/alivc/live/utils/HttpClientHelper;->mNetworkTimeout:I

    invoke-virtual {v0, v1}, Ljavax/net/ssl/HttpsURLConnection;->setConnectTimeout(I)V

    iget v1, p0, Lcom/alivc/live/utils/HttpClientHelper;->mNetworkTimeout:I

    invoke-virtual {v0, v1}, Ljavax/net/ssl/HttpsURLConnection;->setReadTimeout(I)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    const-string v1, "POST"

    if-ne p2, v1, :cond_5

    const/4 p2, 0x1

    if-eqz p3, :cond_3

    const/4 v1, 0x1

    goto :goto_2

    :cond_3
    const/4 v1, 0x0

    :goto_2
    :try_start_4
    invoke-virtual {v0, v1}, Ljavax/net/ssl/HttpsURLConnection;->setDoOutput(Z)V

    invoke-virtual {v0, p2}, Ljavax/net/ssl/HttpsURLConnection;->setDoInput(Z)V

    if-eqz v1, :cond_4

    array-length p2, p3

    invoke-virtual {v0, p2}, Ljavax/net/ssl/HttpsURLConnection;->setFixedLengthStreamingMode(I)V

    invoke-virtual {v0}, Ljavax/net/ssl/HttpsURLConnection;->connect()V

    invoke-virtual {v0}, Ljavax/net/ssl/HttpsURLConnection;->getOutputStream()Ljava/io/OutputStream;

    move-result-object p2

    invoke-virtual {p2, p3}, Ljava/io/OutputStream;->write([B)V

    invoke-virtual {p2}, Ljava/io/OutputStream;->close()V

    goto :goto_3

    :cond_4
    invoke-virtual {v0}, Ljavax/net/ssl/HttpsURLConnection;->connect()V

    :cond_5
    :goto_3
    iget-boolean p2, p0, Lcom/alivc/live/utils/HttpClientHelper;->mTrustAllCert:Z

    if-eqz p2, :cond_7

    invoke-static {}, Lcom/alivc/live/utils/HttpClientHelper;->getSSLSocketFactory()Ljavax/net/ssl/SSLSocketFactory;

    move-result-object p2

    if-eqz p2, :cond_6

    invoke-virtual {v0, p2}, Ljavax/net/ssl/HttpsURLConnection;->setSSLSocketFactory(Ljavax/net/ssl/SSLSocketFactory;)V

    :cond_6
    invoke-static {}, Lcom/alivc/live/utils/HttpClientHelper;->getHostnameVerifier()Ljavax/net/ssl/HostnameVerifier;

    move-result-object p2

    if-eqz p2, :cond_7

    invoke-virtual {v0, p2}, Ljavax/net/ssl/HttpsURLConnection;->setHostnameVerifier(Ljavax/net/ssl/HostnameVerifier;)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1

    goto :goto_5

    :catch_1
    move-exception p2

    move-object v0, p1

    goto :goto_4

    :catch_2
    move-exception p1

    move-object p2, p1

    :goto_4
    invoke-virtual {p2}, Ljava/lang/Exception;->printStackTrace()V

    move-object p1, v0

    :cond_7
    :goto_5
    return-object p1
.end method

.method private getResponseCode()I
    .locals 2

    iget-object v0, p0, Lcom/alivc/live/utils/HttpClientHelper;->urlConnection:Ljava/net/URLConnection;

    instance-of v1, v0, Ljavax/net/ssl/HttpsURLConnection;

    if-eqz v1, :cond_0

    check-cast v0, Ljavax/net/ssl/HttpsURLConnection;

    invoke-virtual {v0}, Ljavax/net/ssl/HttpsURLConnection;->getResponseCode()I

    move-result v0

    goto :goto_0

    :cond_0
    instance-of v1, v0, Ljava/net/HttpURLConnection;

    if-eqz v1, :cond_1

    check-cast v0, Ljava/net/HttpURLConnection;

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v0

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static getSSLSocketFactory()Ljavax/net/ssl/SSLSocketFactory;
    .locals 4

    const/4 v0, 0x0

    :try_start_0
    const-string v1, "SSL"

    invoke-static {v1}, Ljavax/net/ssl/SSLContext;->getInstance(Ljava/lang/String;)Ljavax/net/ssl/SSLContext;

    move-result-object v1

    invoke-static {}, Lcom/alivc/live/utils/HttpClientHelper;->getTrustManager()[Ljavax/net/ssl/TrustManager;

    move-result-object v2

    new-instance v3, Ljava/security/SecureRandom;

    invoke-direct {v3}, Ljava/security/SecureRandom;-><init>()V

    invoke-virtual {v1, v0, v2, v3}, Ljavax/net/ssl/SSLContext;->init([Ljavax/net/ssl/KeyManager;[Ljavax/net/ssl/TrustManager;Ljava/security/SecureRandom;)V

    invoke-virtual {v1}, Ljavax/net/ssl/SSLContext;->getSocketFactory()Ljavax/net/ssl/SSLSocketFactory;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    return-object v0
.end method

.method private static getTrustManager()[Ljavax/net/ssl/TrustManager;
    .locals 3

    const/4 v0, 0x1

    new-array v0, v0, [Ljavax/net/ssl/TrustManager;

    new-instance v1, Lcom/alivc/live/utils/HttpClientHelper$2;

    invoke-direct {v1}, Lcom/alivc/live/utils/HttpClientHelper$2;-><init>()V

    const/4 v2, 0x0

    aput-object v1, v0, v2

    return-object v0
.end method


# virtual methods
.method public doGet()Z
    .locals 10

    iget-object v0, p0, Lcom/alivc/live/utils/HttpClientHelper;->mUrl:Ljava/lang/String;

    const-string v1, "https://"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    const-string v1, "GET"

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alivc/live/utils/HttpClientHelper;->mUrl:Ljava/lang/String;

    invoke-direct {p0, v0, v1, v2}, Lcom/alivc/live/utils/HttpClientHelper;->getHttpsUrlConnection(Ljava/lang/String;Ljava/lang/String;[B)Ljava/net/URLConnection;

    move-result-object v0

    :goto_0
    iput-object v0, p0, Lcom/alivc/live/utils/HttpClientHelper;->urlConnection:Ljava/net/URLConnection;

    goto :goto_1

    :cond_0
    iget-object v0, p0, Lcom/alivc/live/utils/HttpClientHelper;->mUrl:Ljava/lang/String;

    const-string v3, "http://"

    invoke-virtual {v0, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/alivc/live/utils/HttpClientHelper;->mUrl:Ljava/lang/String;

    invoke-direct {p0, v0, v1, v2}, Lcom/alivc/live/utils/HttpClientHelper;->getHttpUrlConnection(Ljava/lang/String;Ljava/lang/String;[B)Ljava/net/URLConnection;

    move-result-object v0

    goto :goto_0

    :cond_1
    iput-object v2, p0, Lcom/alivc/live/utils/HttpClientHelper;->urlConnection:Ljava/net/URLConnection;

    :goto_1
    iget-object v0, p0, Lcom/alivc/live/utils/HttpClientHelper;->urlConnection:Ljava/net/URLConnection;

    const/4 v1, 0x0

    if-nez v0, :cond_2

    return v1

    :cond_2
    iget-object v3, p0, Lcom/alivc/live/utils/HttpClientHelper;->mReferer:Ljava/lang/String;

    if-eqz v3, :cond_3

    const-string v4, "Referer"

    invoke-virtual {v0, v4, v3}, Ljava/net/URLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    :cond_3
    iget-object v0, p0, Lcom/alivc/live/utils/HttpClientHelper;->mUserAgent:Ljava/lang/String;

    if-eqz v0, :cond_4

    iget-object v3, p0, Lcom/alivc/live/utils/HttpClientHelper;->urlConnection:Ljava/net/URLConnection;

    const-string v4, "User-Agent"

    invoke-virtual {v3, v4, v0}, Ljava/net/URLConnection;->addRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    :cond_4
    iget-object v0, p0, Lcom/alivc/live/utils/HttpClientHelper;->mCustomHeaders:[Ljava/lang/String;

    const/4 v3, 0x1

    if-eqz v0, :cond_6

    array-length v4, v0

    const/4 v5, 0x0

    :goto_2
    if-ge v5, v4, :cond_6

    aget-object v6, v0, v5

    if-eqz v6, :cond_5

    const-string v7, ":"

    invoke-virtual {v6, v7}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v6

    array-length v7, v6

    const/4 v8, 0x2

    if-ne v7, v8, :cond_5

    iget-object v7, p0, Lcom/alivc/live/utils/HttpClientHelper;->urlConnection:Ljava/net/URLConnection;

    aget-object v8, v6, v1

    aget-object v6, v6, v3

    invoke-virtual {v7, v8, v6}, Ljava/net/URLConnection;->addRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    :cond_5
    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    :cond_6
    :try_start_0
    invoke-direct {p0}, Lcom/alivc/live/utils/HttpClientHelper;->getResponseCode()I

    move-result v0

    const/16 v4, 0xc8

    if-ne v0, v4, :cond_b

    iget-object v0, p0, Lcom/alivc/live/utils/HttpClientHelper;->urlConnection:Ljava/net/URLConnection;

    invoke-virtual {v0}, Ljava/net/URLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_8
    .catchall {:try_start_0 .. :try_end_0} :catchall_6

    :try_start_1
    new-instance v4, Ljava/io/InputStreamReader;

    invoke-direct {v4, v0}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_3
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    :try_start_2
    new-instance v5, Ljava/io/BufferedReader;

    invoke-direct {v5, v4}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :try_start_3
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    :goto_3
    invoke-virtual {v5}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v6

    if-eqz v6, :cond_7

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_3

    :cond_7
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/alivc/live/utils/HttpClientHelper;->mHttpResponse:Ljava/lang/String;
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    if-eqz v0, :cond_8

    :try_start_4
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    :cond_8
    invoke-virtual {v4}, Ljava/io/InputStreamReader;->close()V

    invoke-virtual {v5}, Ljava/io/BufferedReader;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0

    goto :goto_4

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    :goto_4
    iget-object v0, p0, Lcom/alivc/live/utils/HttpClientHelper;->urlConnection:Ljava/net/URLConnection;

    if-eqz v0, :cond_a

    instance-of v1, v0, Ljava/net/HttpURLConnection;

    if-eqz v1, :cond_9

    check-cast v0, Ljava/net/HttpURLConnection;

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->disconnect()V

    goto :goto_5

    :cond_9
    instance-of v1, v0, Ljavax/net/ssl/HttpsURLConnection;

    if-eqz v1, :cond_a

    check-cast v0, Ljavax/net/ssl/HttpsURLConnection;

    invoke-virtual {v0}, Ljavax/net/ssl/HttpsURLConnection;->disconnect()V

    :cond_a
    :goto_5
    return v3

    :catchall_0
    move-exception v1

    goto/16 :goto_14

    :catch_1
    move-exception v2

    goto/16 :goto_d

    :catchall_1
    move-exception v1

    goto/16 :goto_13

    :catch_2
    move-exception v3

    move-object v5, v2

    goto/16 :goto_c

    :catchall_2
    move-exception v1

    goto/16 :goto_a

    :catch_3
    move-exception v3

    goto/16 :goto_b

    :cond_b
    :try_start_5
    invoke-direct {p0}, Lcom/alivc/live/utils/HttpClientHelper;->getErrorStream()Ljava/io/InputStream;

    move-result-object v3
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_8
    .catchall {:try_start_5 .. :try_end_5} :catchall_6

    :try_start_6
    new-instance v4, Ljava/io/InputStreamReader;

    invoke-direct {v4, v3}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_7
    .catchall {:try_start_6 .. :try_end_6} :catchall_5

    :try_start_7
    new-instance v5, Ljava/io/BufferedReader;

    invoke-direct {v5, v4}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_6
    .catchall {:try_start_7 .. :try_end_7} :catchall_4

    :try_start_8
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    :goto_6
    invoke-virtual {v5}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v6

    if-eqz v6, :cond_c

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_6

    :cond_c
    new-instance v6, Lorg/json/JSONObject;

    invoke-direct {v6}, Lorg/json/JSONObject;-><init>()V

    const-string v7, "StatusCode"

    invoke-virtual {v6, v7, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_5
    .catchall {:try_start_8 .. :try_end_8} :catchall_3

    const-string v0, "ResponseStr"

    :try_start_9
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v6, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    invoke-virtual {v6}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alivc/live/utils/HttpClientHelper;->mHttpResponse:Ljava/lang/String;
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_5
    .catchall {:try_start_9 .. :try_end_9} :catchall_3

    if-eqz v3, :cond_d

    :try_start_a
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V

    :cond_d
    invoke-virtual {v4}, Ljava/io/InputStreamReader;->close()V

    invoke-virtual {v5}, Ljava/io/BufferedReader;->close()V
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_4

    goto :goto_7

    :catch_4
    move-exception v0

    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    :goto_7
    iget-object v0, p0, Lcom/alivc/live/utils/HttpClientHelper;->urlConnection:Ljava/net/URLConnection;

    if-eqz v0, :cond_f

    instance-of v2, v0, Ljava/net/HttpURLConnection;

    if-eqz v2, :cond_e

    check-cast v0, Ljava/net/HttpURLConnection;

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->disconnect()V

    goto :goto_8

    :cond_e
    instance-of v2, v0, Ljavax/net/ssl/HttpsURLConnection;

    if-eqz v2, :cond_f

    check-cast v0, Ljavax/net/ssl/HttpsURLConnection;

    invoke-virtual {v0}, Ljavax/net/ssl/HttpsURLConnection;->disconnect()V

    :cond_f
    :goto_8
    return v1

    :catchall_3
    move-exception v0

    move-object v1, v0

    move-object v0, v3

    goto/16 :goto_12

    :catch_5
    move-exception v0

    goto :goto_9

    :catchall_4
    move-exception v0

    move-object v1, v0

    move-object v5, v2

    move-object v0, v3

    goto/16 :goto_14

    :catch_6
    move-exception v0

    move-object v5, v2

    :goto_9
    move-object v2, v0

    move-object v0, v3

    goto :goto_d

    :catchall_5
    move-exception v0

    move-object v1, v0

    move-object v0, v3

    goto :goto_a

    :catch_7
    move-exception v0

    move-object v9, v3

    move-object v3, v0

    move-object v0, v9

    goto :goto_b

    :catchall_6
    move-exception v0

    move-object v1, v0

    move-object v0, v2

    :goto_a
    move-object v5, v2

    goto :goto_15

    :catch_8
    move-exception v0

    move-object v3, v0

    move-object v0, v2

    :goto_b
    move-object v4, v2

    move-object v5, v4

    :goto_c
    move-object v2, v3

    :goto_d
    :try_start_b
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_7

    if-eqz v0, :cond_10

    :try_start_c
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    goto :goto_e

    :catch_9
    move-exception v0

    goto :goto_f

    :cond_10
    :goto_e
    if-eqz v4, :cond_11

    invoke-virtual {v4}, Ljava/io/InputStreamReader;->close()V

    :cond_11
    if-eqz v5, :cond_12

    invoke-virtual {v5}, Ljava/io/BufferedReader;->close()V
    :try_end_c
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_c} :catch_9

    goto :goto_10

    :goto_f
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    :cond_12
    :goto_10
    iget-object v0, p0, Lcom/alivc/live/utils/HttpClientHelper;->urlConnection:Ljava/net/URLConnection;

    if-eqz v0, :cond_14

    instance-of v2, v0, Ljava/net/HttpURLConnection;

    if-eqz v2, :cond_13

    check-cast v0, Ljava/net/HttpURLConnection;

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->disconnect()V

    goto :goto_11

    :cond_13
    instance-of v2, v0, Ljavax/net/ssl/HttpsURLConnection;

    if-eqz v2, :cond_14

    check-cast v0, Ljavax/net/ssl/HttpsURLConnection;

    invoke-virtual {v0}, Ljavax/net/ssl/HttpsURLConnection;->disconnect()V

    :cond_14
    :goto_11
    return v1

    :catchall_7
    move-exception v1

    :goto_12
    move-object v2, v5

    :goto_13
    move-object v5, v2

    :goto_14
    move-object v2, v4

    :goto_15
    if-eqz v0, :cond_15

    :try_start_d
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    goto :goto_16

    :catch_a
    move-exception v0

    goto :goto_17

    :cond_15
    :goto_16
    if-eqz v2, :cond_16

    invoke-virtual {v2}, Ljava/io/InputStreamReader;->close()V

    :cond_16
    if-eqz v5, :cond_17

    invoke-virtual {v5}, Ljava/io/BufferedReader;->close()V
    :try_end_d
    .catch Ljava/io/IOException; {:try_start_d .. :try_end_d} :catch_a

    goto :goto_18

    :goto_17
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    :cond_17
    :goto_18
    iget-object v0, p0, Lcom/alivc/live/utils/HttpClientHelper;->urlConnection:Ljava/net/URLConnection;

    if-eqz v0, :cond_19

    instance-of v2, v0, Ljava/net/HttpURLConnection;

    if-nez v2, :cond_18

    instance-of v2, v0, Ljavax/net/ssl/HttpsURLConnection;

    if-eqz v2, :cond_19

    check-cast v0, Ljavax/net/ssl/HttpsURLConnection;

    invoke-virtual {v0}, Ljavax/net/ssl/HttpsURLConnection;->disconnect()V

    goto :goto_19

    :cond_18
    check-cast v0, Ljava/net/HttpURLConnection;

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->disconnect()V

    :cond_19
    :goto_19
    throw v1
.end method

.method public doPost([B)Z
    .locals 8

    iget-object v0, p0, Lcom/alivc/live/utils/HttpClientHelper;->mUrl:Ljava/lang/String;

    const-string v1, "https://"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    const-string v1, "POST"

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alivc/live/utils/HttpClientHelper;->mUrl:Ljava/lang/String;

    invoke-direct {p0, v0, v1, p1}, Lcom/alivc/live/utils/HttpClientHelper;->getHttpsUrlConnection(Ljava/lang/String;Ljava/lang/String;[B)Ljava/net/URLConnection;

    move-result-object p1

    :goto_0
    iput-object p1, p0, Lcom/alivc/live/utils/HttpClientHelper;->urlConnection:Ljava/net/URLConnection;

    goto :goto_1

    :cond_0
    iget-object v0, p0, Lcom/alivc/live/utils/HttpClientHelper;->mUrl:Ljava/lang/String;

    const-string v3, "http://"

    invoke-virtual {v0, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/alivc/live/utils/HttpClientHelper;->mUrl:Ljava/lang/String;

    invoke-direct {p0, v0, v1, p1}, Lcom/alivc/live/utils/HttpClientHelper;->getHttpUrlConnection(Ljava/lang/String;Ljava/lang/String;[B)Ljava/net/URLConnection;

    move-result-object p1

    goto :goto_0

    :cond_1
    iput-object v2, p0, Lcom/alivc/live/utils/HttpClientHelper;->urlConnection:Ljava/net/URLConnection;

    :goto_1
    iget-object p1, p0, Lcom/alivc/live/utils/HttpClientHelper;->urlConnection:Ljava/net/URLConnection;

    const/4 v0, 0x0

    if-nez p1, :cond_2

    return v0

    :cond_2
    iget-object v1, p0, Lcom/alivc/live/utils/HttpClientHelper;->mReferer:Ljava/lang/String;

    if-eqz v1, :cond_3

    const-string v3, "Referer"

    invoke-virtual {p1, v3, v1}, Ljava/net/URLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    :cond_3
    iget-object p1, p0, Lcom/alivc/live/utils/HttpClientHelper;->mUserAgent:Ljava/lang/String;

    if-eqz p1, :cond_4

    iget-object v1, p0, Lcom/alivc/live/utils/HttpClientHelper;->urlConnection:Ljava/net/URLConnection;

    const-string v3, "User-Agent"

    invoke-virtual {v1, v3, p1}, Ljava/net/URLConnection;->addRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    :cond_4
    iget-object p1, p0, Lcom/alivc/live/utils/HttpClientHelper;->mCustomHeaders:[Ljava/lang/String;

    const/4 v1, 0x1

    if-eqz p1, :cond_6

    array-length v3, p1

    const/4 v4, 0x0

    :goto_2
    if-ge v4, v3, :cond_6

    aget-object v5, p1, v4

    if-eqz v5, :cond_5

    const-string v6, ":"

    invoke-virtual {v5, v6}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    array-length v6, v5

    const/4 v7, 0x2

    if-ne v6, v7, :cond_5

    iget-object v6, p0, Lcom/alivc/live/utils/HttpClientHelper;->urlConnection:Ljava/net/URLConnection;

    aget-object v7, v5, v0

    aget-object v5, v5, v1

    invoke-virtual {v6, v7, v5}, Ljava/net/URLConnection;->addRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    :cond_5
    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    :cond_6
    :try_start_0
    invoke-direct {p0}, Lcom/alivc/live/utils/HttpClientHelper;->getResponseCode()I

    move-result p1

    const/16 v3, 0xc8

    if-ne p1, v3, :cond_b

    iget-object p1, p0, Lcom/alivc/live/utils/HttpClientHelper;->urlConnection:Ljava/net/URLConnection;

    invoke-virtual {p1}, Ljava/net/URLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_3
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    const/16 v3, 0x1000

    :try_start_1
    new-array v3, v3, [B

    new-instance v4, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v4}, Ljava/io/ByteArrayOutputStream;-><init>()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :goto_3
    :try_start_2
    invoke-virtual {p1, v3}, Ljava/io/InputStream;->read([B)I

    move-result v2

    const/4 v5, -0x1

    if-eq v2, v5, :cond_7

    invoke-virtual {v4, v3, v0, v2}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    goto :goto_3

    :cond_7
    invoke-virtual {v4}, Ljava/io/ByteArrayOutputStream;->toString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/alivc/live/utils/HttpClientHelper;->mHttpResponse:Ljava/lang/String;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-eqz p1, :cond_8

    :try_start_3
    invoke-virtual {p1}, Ljava/io/InputStream;->close()V

    :cond_8
    invoke-virtual {v4}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_4

    :catch_0
    move-exception p1

    invoke-virtual {p1}, Ljava/io/IOException;->printStackTrace()V

    :goto_4
    iget-object p1, p0, Lcom/alivc/live/utils/HttpClientHelper;->urlConnection:Ljava/net/URLConnection;

    if-eqz p1, :cond_a

    instance-of v0, p1, Ljava/net/HttpURLConnection;

    if-eqz v0, :cond_9

    check-cast p1, Ljava/net/HttpURLConnection;

    invoke-virtual {p1}, Ljava/net/HttpURLConnection;->disconnect()V

    goto :goto_5

    :cond_9
    instance-of v0, p1, Ljavax/net/ssl/HttpsURLConnection;

    if-eqz v0, :cond_a

    check-cast p1, Ljavax/net/ssl/HttpsURLConnection;

    invoke-virtual {p1}, Ljavax/net/ssl/HttpsURLConnection;->disconnect()V

    :cond_a
    :goto_5
    return v1

    :catchall_0
    move-exception v0

    move-object v2, v4

    goto :goto_d

    :catch_1
    move-exception v1

    move-object v2, v4

    goto :goto_6

    :catchall_1
    move-exception v0

    goto :goto_d

    :catch_2
    move-exception v1

    goto :goto_6

    :cond_b
    iget-object p1, p0, Lcom/alivc/live/utils/HttpClientHelper;->urlConnection:Ljava/net/URLConnection;

    if-eqz p1, :cond_10

    instance-of v1, p1, Ljava/net/HttpURLConnection;

    if-eqz v1, :cond_c

    goto :goto_a

    :cond_c
    instance-of v1, p1, Ljavax/net/ssl/HttpsURLConnection;

    if-eqz v1, :cond_10

    goto :goto_b

    :catchall_2
    move-exception p1

    move-object v0, p1

    move-object p1, v2

    goto :goto_d

    :catch_3
    move-exception p1

    move-object v1, p1

    move-object p1, v2

    :goto_6
    :try_start_4
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    if-eqz p1, :cond_d

    :try_start_5
    invoke-virtual {p1}, Ljava/io/InputStream;->close()V

    goto :goto_7

    :catch_4
    move-exception p1

    goto :goto_8

    :cond_d
    :goto_7
    if-eqz v2, :cond_e

    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_4

    goto :goto_9

    :goto_8
    invoke-virtual {p1}, Ljava/io/IOException;->printStackTrace()V

    :cond_e
    :goto_9
    iget-object p1, p0, Lcom/alivc/live/utils/HttpClientHelper;->urlConnection:Ljava/net/URLConnection;

    if-eqz p1, :cond_10

    instance-of v1, p1, Ljava/net/HttpURLConnection;

    if-eqz v1, :cond_f

    :goto_a
    check-cast p1, Ljava/net/HttpURLConnection;

    invoke-virtual {p1}, Ljava/net/HttpURLConnection;->disconnect()V

    goto :goto_c

    :cond_f
    instance-of v1, p1, Ljavax/net/ssl/HttpsURLConnection;

    if-eqz v1, :cond_10

    :goto_b
    check-cast p1, Ljavax/net/ssl/HttpsURLConnection;

    invoke-virtual {p1}, Ljavax/net/ssl/HttpsURLConnection;->disconnect()V

    :cond_10
    :goto_c
    return v0

    :goto_d
    if-eqz p1, :cond_11

    :try_start_6
    invoke-virtual {p1}, Ljava/io/InputStream;->close()V

    goto :goto_e

    :catch_5
    move-exception p1

    goto :goto_f

    :cond_11
    :goto_e
    if-eqz v2, :cond_12

    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_5

    goto :goto_10

    :goto_f
    invoke-virtual {p1}, Ljava/io/IOException;->printStackTrace()V

    :cond_12
    :goto_10
    iget-object p1, p0, Lcom/alivc/live/utils/HttpClientHelper;->urlConnection:Ljava/net/URLConnection;

    if-eqz p1, :cond_14

    instance-of v1, p1, Ljava/net/HttpURLConnection;

    if-nez v1, :cond_13

    instance-of v1, p1, Ljavax/net/ssl/HttpsURLConnection;

    if-eqz v1, :cond_14

    check-cast p1, Ljavax/net/ssl/HttpsURLConnection;

    invoke-virtual {p1}, Ljavax/net/ssl/HttpsURLConnection;->disconnect()V

    goto :goto_11

    :cond_13
    check-cast p1, Ljava/net/HttpURLConnection;

    invoke-virtual {p1}, Ljava/net/HttpURLConnection;->disconnect()V

    :cond_14
    :goto_11
    throw v0
.end method

.method public getResponse()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/alivc/live/utils/HttpClientHelper;->mHttpResponse:Ljava/lang/String;

    return-object v0
.end method

.method public setCustomHeaders([Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/alivc/live/utils/HttpClientHelper;->mCustomHeaders:[Ljava/lang/String;

    return-void
.end method

.method public setHttpProxy(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/alivc/live/utils/HttpClientHelper;->mHttpProxy:Ljava/lang/String;

    return-void
.end method

.method public setRefer(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/alivc/live/utils/HttpClientHelper;->mReferer:Ljava/lang/String;

    return-void
.end method

.method public setTimeout(I)V
    .locals 0

    iput p1, p0, Lcom/alivc/live/utils/HttpClientHelper;->mNetworkTimeout:I

    return-void
.end method

.method public setUerAgent(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/alivc/live/utils/HttpClientHelper;->mUserAgent:Ljava/lang/String;

    return-void
.end method

.method public setVerifyCert()V
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/alivc/live/utils/HttpClientHelper;->mTrustAllCert:Z

    return-void
.end method

.method public stop()V
    .locals 3

    sget-object v0, Lcom/alivc/live/utils/HttpClientHelper;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "HttpClientHelper stop().... urlConnection = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/alivc/live/utils/HttpClientHelper;->urlConnection:Ljava/net/URLConnection;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/alivc/live/pusher/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/alivc/live/utils/HttpClientHelper;->urlConnection:Ljava/net/URLConnection;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/alivc/live/utils/HttpClientHelper;->sThreadCachePool:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lcom/alivc/live/utils/HttpClientHelper$1;

    invoke-direct {v1, p0}, Lcom/alivc/live/utils/HttpClientHelper$1;-><init>(Lcom/alivc/live/utils/HttpClientHelper;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    :cond_0
    return-void
.end method
