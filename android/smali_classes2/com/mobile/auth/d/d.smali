.class public Lcom/mobile/auth/d/d;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final a:Ljava/lang/String; = "d"


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Landroid/content/Context;Ljava/lang/String;Landroid/net/Network;)Ljava/lang/String;
    .locals 16

    move-object/from16 v0, p2

    const-string v1, "UTF-8"

    const-string v2, "Accept-Charset"

    const-string v3, "GET"

    const-string v4, "Keep-Alive"

    const-string v5, "connection"

    const-string v6, "*/*"

    const-string v7, "accept"

    sget v8, Landroid/os/Build$VERSION;->SDK_INT:I

    :try_start_0
    const-string v10, ""

    sget v11, Lcom/mobile/auth/a/a;->d:I

    const/16 v12, 0xbb8

    if-gtz v11, :cond_0

    const/16 v11, 0xbb8

    :cond_0
    sget v13, Lcom/mobile/auth/a/a;->e:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_5

    if-gtz v13, :cond_1

    goto :goto_0

    :cond_1
    move v12, v13

    :goto_0
    :try_start_1
    new-instance v13, Ljava/net/URL;

    move-object/from16 v14, p1

    invoke-direct {v13, v14}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    const/16 v14, 0x15

    if-eqz v0, :cond_2

    if-lt v8, v14, :cond_2

    invoke-virtual {v0, v13}, Landroid/net/Network;->openConnection(Ljava/net/URL;)Ljava/net/URLConnection;

    move-result-object v13

    :goto_1
    check-cast v13, Ljavax/net/ssl/HttpsURLConnection;

    goto :goto_2

    :cond_2
    invoke-virtual {v13}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v13

    goto :goto_1

    :goto_2
    invoke-virtual {v13, v7, v6}, Ljavax/net/ssl/HttpsURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v13, v5, v4}, Ljavax/net/ssl/HttpsURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v13, v3}, Ljavax/net/ssl/HttpsURLConnection;->setRequestMethod(Ljava/lang/String;)V

    const/4 v15, 0x0

    invoke-virtual {v13, v15}, Ljavax/net/ssl/HttpsURLConnection;->setDoOutput(Z)V

    const/4 v9, 0x1

    invoke-virtual {v13, v9}, Ljavax/net/ssl/HttpsURLConnection;->setDoInput(Z)V

    invoke-virtual {v13, v11}, Ljavax/net/ssl/HttpsURLConnection;->setConnectTimeout(I)V

    invoke-virtual {v13, v12}, Ljavax/net/ssl/HttpsURLConnection;->setReadTimeout(I)V

    invoke-virtual {v13, v15}, Ljavax/net/ssl/HttpsURLConnection;->setUseCaches(Z)V

    invoke-virtual {v13, v2, v1}, Ljavax/net/ssl/HttpsURLConnection;->addRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v13}, Ljavax/net/ssl/HttpsURLConnection;->connect()V

    invoke-virtual {v13}, Ljavax/net/ssl/HttpsURLConnection;->getResponseCode()I

    move-result v9

    const/16 v15, 0x12e

    if-ne v9, v15, :cond_4

    const-string v9, "Location"

    invoke-virtual {v13, v9}, Ljavax/net/ssl/HttpsURLConnection;->getHeaderField(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    new-instance v13, Ljava/net/URL;

    invoke-direct {v13, v9}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    if-eqz v0, :cond_3

    if-lt v8, v14, :cond_3

    invoke-virtual {v0, v13}, Landroid/net/Network;->openConnection(Ljava/net/URL;)Ljava/net/URLConnection;

    move-result-object v0

    goto :goto_3

    :cond_3
    invoke-virtual {v13}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v0

    :goto_3
    check-cast v0, Ljavax/net/ssl/HttpsURLConnection;

    move-object v13, v0

    invoke-virtual {v13, v7, v6}, Ljavax/net/ssl/HttpsURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v13, v5, v4}, Ljavax/net/ssl/HttpsURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v13, v3}, Ljavax/net/ssl/HttpsURLConnection;->setRequestMethod(Ljava/lang/String;)V

    const/4 v0, 0x0

    invoke-virtual {v13, v0}, Ljavax/net/ssl/HttpsURLConnection;->setDoOutput(Z)V

    const/4 v3, 0x1

    invoke-virtual {v13, v3}, Ljavax/net/ssl/HttpsURLConnection;->setDoInput(Z)V

    invoke-virtual {v13, v11}, Ljavax/net/ssl/HttpsURLConnection;->setConnectTimeout(I)V

    invoke-virtual {v13, v12}, Ljavax/net/ssl/HttpsURLConnection;->setReadTimeout(I)V

    invoke-virtual {v13, v0}, Ljavax/net/ssl/HttpsURLConnection;->setUseCaches(Z)V

    invoke-virtual {v13, v2, v1}, Ljavax/net/ssl/HttpsURLConnection;->addRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v13}, Ljavax/net/ssl/HttpsURLConnection;->connect()V

    :cond_4
    invoke-virtual {v13}, Ljavax/net/ssl/HttpsURLConnection;->getResponseCode()I

    move-result v0

    const/16 v1, 0xc8

    if-ne v0, v1, :cond_5

    invoke-virtual {v13}, Ljavax/net/ssl/HttpsURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_3

    :try_start_2
    new-instance v2, Ljava/io/InputStreamReader;

    invoke-direct {v2, v1}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    :try_start_3
    new-instance v3, Ljava/io/BufferedReader;

    invoke-direct {v3, v2}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :goto_4
    :try_start_4
    invoke-virtual {v3}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_6

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_4

    :catchall_0
    move-exception v0

    goto :goto_9

    :catchall_1
    move-exception v0

    goto :goto_8

    :catchall_2
    move-exception v0

    goto :goto_7

    :cond_5
    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    :cond_6
    if-eqz v3, :cond_7

    :try_start_5
    invoke-virtual {v3}, Ljava/io/BufferedReader;->close()V

    goto :goto_5

    :catch_0
    move-exception v0

    goto :goto_6

    :cond_7
    :goto_5
    if-eqz v2, :cond_8

    invoke-virtual {v2}, Ljava/io/InputStreamReader;->close()V

    :cond_8
    if-eqz v1, :cond_b

    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_0
    .catchall {:try_start_5 .. :try_end_5} :catchall_5

    goto :goto_b

    :goto_6
    :try_start_6
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_5

    goto :goto_b

    :catchall_3
    move-exception v0

    const/4 v1, 0x0

    :goto_7
    const/4 v2, 0x0

    :goto_8
    const/4 v3, 0x0

    :goto_9
    :try_start_7
    sget-object v4, Lcom/mobile/auth/d/d;->a:Ljava/lang/String;

    const-string v5, "doGet error"

    invoke-static {v4, v5, v0}, Lcom/mobile/auth/a/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_4

    if-eqz v3, :cond_9

    :try_start_8
    invoke-virtual {v3}, Ljava/io/BufferedReader;->close()V

    goto :goto_a

    :catch_1
    move-exception v0

    goto :goto_6

    :cond_9
    :goto_a
    if-eqz v2, :cond_a

    invoke-virtual {v2}, Ljava/io/InputStreamReader;->close()V

    :cond_a
    if-eqz v1, :cond_b

    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_1
    .catchall {:try_start_8 .. :try_end_8} :catchall_5

    :cond_b
    :goto_b
    return-object v10

    :catchall_4
    move-exception v0

    move-object v4, v0

    if-eqz v3, :cond_c

    :try_start_9
    invoke-virtual {v3}, Ljava/io/BufferedReader;->close()V

    goto :goto_c

    :catch_2
    move-exception v0

    goto :goto_d

    :cond_c
    :goto_c
    if-eqz v2, :cond_d

    invoke-virtual {v2}, Ljava/io/InputStreamReader;->close()V

    :cond_d
    if-eqz v1, :cond_e

    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_2
    .catchall {:try_start_9 .. :try_end_9} :catchall_5

    goto :goto_e

    :goto_d
    :try_start_a
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_e
    :goto_e
    throw v4
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_5

    :catchall_5
    move-exception v0

    :try_start_b
    invoke-static {v0}, Lcom/mobile/auth/gatewayauth/a;->a(Ljava/lang/Throwable;)V
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_6

    const/4 v1, 0x0

    return-object v1

    :catchall_6
    move-exception v0

    const/4 v1, 0x0

    move-object v2, v0

    invoke-static {v2}, Lcom/mobile/auth/gatewayauth/a;->a(Ljava/lang/Throwable;)V

    return-object v1
.end method

.method public static a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Landroid/net/Network;Ljava/lang/String;)Ljava/lang/String;
    .locals 23

    move-object/from16 v1, p0

    move-object/from16 v2, p3

    const-string v3, "POST"

    sget v4, Landroid/os/Build$VERSION;->SDK_INT:I

    const-string v5, "Accept-Charset"

    const-string v6, "*/*"

    const-string v7, "accept"

    const-string v8, "UTF-8"

    :try_start_0
    sget v10, Lcom/mobile/auth/a/a;->d:I

    const/16 v11, 0xbb8

    if-gtz v10, :cond_0

    const/16 v10, 0xbb8

    :cond_0
    sget v12, Lcom/mobile/auth/a/a;->e:I

    if-gtz v12, :cond_1

    goto :goto_0

    :cond_1
    move v11, v12

    :goto_0
    const-string v12, ""
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_6

    :try_start_1
    new-instance v13, Ljava/net/URL;

    move-object/from16 v14, p1

    invoke-direct {v13, v14}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    const/16 v14, 0x15

    if-eqz v2, :cond_2

    if-lt v4, v14, :cond_2

    invoke-virtual {v2, v13}, Landroid/net/Network;->openConnection(Ljava/net/URL;)Ljava/net/URLConnection;

    move-result-object v13

    :goto_1
    check-cast v13, Ljavax/net/ssl/HttpsURLConnection;

    goto :goto_2

    :cond_2
    invoke-virtual {v13}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v13

    goto :goto_1

    :goto_2
    invoke-virtual {v13, v7, v6}, Ljavax/net/ssl/HttpsURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v13, v3}, Ljavax/net/ssl/HttpsURLConnection;->setRequestMethod(Ljava/lang/String;)V

    const/4 v15, 0x1

    invoke-virtual {v13, v15}, Ljavax/net/ssl/HttpsURLConnection;->setDoOutput(Z)V

    invoke-virtual {v13, v15}, Ljavax/net/ssl/HttpsURLConnection;->setDoInput(Z)V

    invoke-virtual {v13, v10}, Ljavax/net/ssl/HttpsURLConnection;->setConnectTimeout(I)V

    invoke-virtual {v13, v11}, Ljavax/net/ssl/HttpsURLConnection;->setReadTimeout(I)V

    const/4 v9, 0x0

    invoke-virtual {v13, v9}, Ljavax/net/ssl/HttpsURLConnection;->setUseCaches(Z)V

    invoke-static {}, Lcom/mobile/auth/d/d;->a()Ljavax/net/ssl/HostnameVerifier;

    move-result-object v15

    invoke-virtual {v13, v15}, Ljavax/net/ssl/HttpsURLConnection;->setHostnameVerifier(Ljavax/net/ssl/HostnameVerifier;)V

    if-ge v4, v14, :cond_3

    invoke-virtual {v13, v9}, Ljavax/net/ssl/HttpsURLConnection;->setInstanceFollowRedirects(Z)V

    :cond_3
    invoke-virtual {v13, v5, v8}, Ljavax/net/ssl/HttpsURLConnection;->addRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static/range {p2 .. p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v15

    if-nez v15, :cond_4

    new-instance v15, Ljava/io/DataOutputStream;

    new-instance v9, Ljava/io/BufferedOutputStream;

    invoke-virtual {v13}, Ljavax/net/ssl/HttpsURLConnection;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v14

    invoke-direct {v9, v14}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V

    invoke-direct {v15, v9}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    move-object/from16 v9, p2

    invoke-virtual {v9, v8}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v9

    invoke-virtual {v15, v9}, Ljava/io/DataOutputStream;->write([B)V

    invoke-virtual {v15}, Ljava/io/DataOutputStream;->flush()V

    invoke-virtual {v15}, Ljava/io/DataOutputStream;->close()V

    goto :goto_3

    :cond_4
    invoke-virtual {v13}, Ljavax/net/ssl/HttpsURLConnection;->connect()V
    :try_end_1
    .catch Ljava/net/SocketTimeoutException; {:try_start_1 .. :try_end_1} :catch_b
    .catch Ljava/net/UnknownHostException; {:try_start_1 .. :try_end_1} :catch_a
    .catch Ljavax/net/ssl/SSLPeerUnverifiedException; {:try_start_1 .. :try_end_1} :catch_9
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_8
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    :goto_3
    const-string v9, "Location"

    const/16 v14, 0x12e

    const/16 v15, 0x15

    if-ge v4, v15, :cond_8

    :try_start_2
    invoke-virtual {v13}, Ljavax/net/ssl/HttpsURLConnection;->getResponseCode()I

    move-result v15

    if-ne v15, v14, :cond_8

    invoke-virtual {v13, v9}, Ljavax/net/ssl/HttpsURLConnection;->getHeaderField(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    invoke-static {v13}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v15

    if-nez v15, :cond_6

    const-string v15, "connectivity"

    invoke-virtual {v1, v15}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Landroid/net/ConnectivityManager;

    const/4 v14, 0x5

    invoke-virtual {v15, v14}, Landroid/net/ConnectivityManager;->getNetworkInfo(I)Landroid/net/NetworkInfo;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Landroid/net/NetworkInfo;->getState()Landroid/net/NetworkInfo$State;

    move-result-object v14

    move-object/from16 v18, v12

    sget-object v12, Landroid/net/NetworkInfo$State;->CONNECTED:Landroid/net/NetworkInfo$State;

    invoke-virtual {v14, v12}, Landroid/net/NetworkInfo$State;->compareTo(Ljava/lang/Enum;)I

    move-result v12

    if-nez v12, :cond_5

    invoke-static {v13}, Lcom/mobile/auth/d/e;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    invoke-static {v12}, Lcom/mobile/auth/d/e;->a(Ljava/lang/String;)I

    move-result v12

    const-string v14, "android.net.ConnectivityManager"

    invoke-static {v14}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v14

    const-string v1, "requestRouteToHost"

    move-object/from16 v19, v9

    const/4 v9, 0x2

    move-object/from16 v20, v5

    new-array v5, v9, [Ljava/lang/Class;

    sget-object v21, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const/16 v17, 0x0

    aput-object v21, v5, v17

    const/16 v22, 0x1

    aput-object v21, v5, v22

    invoke-virtual {v14, v1, v5}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    new-array v5, v9, [Ljava/lang/Object;

    const/4 v9, 0x5

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v5, v17

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    const/4 v12, 0x1

    aput-object v9, v5, v12

    invoke-virtual {v1, v15, v5}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_4

    :cond_5
    move-object/from16 v20, v5

    move-object/from16 v19, v9

    goto :goto_4

    :cond_6
    move-object/from16 v20, v5

    move-object/from16 v19, v9

    move-object/from16 v18, v12

    :goto_4
    new-instance v1, Ljava/net/URL;

    invoke-direct {v1, v13}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    if-eqz v2, :cond_7

    const/16 v5, 0x15

    if-lt v4, v5, :cond_7

    invoke-virtual {v2, v1}, Landroid/net/Network;->openConnection(Ljava/net/URL;)Ljava/net/URLConnection;

    move-result-object v1

    goto :goto_5

    :cond_7
    invoke-virtual {v1}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v1

    :goto_5
    check-cast v1, Ljavax/net/ssl/HttpsURLConnection;

    move-object v13, v1

    invoke-virtual {v13, v7, v6}, Ljavax/net/ssl/HttpsURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v13, v3}, Ljavax/net/ssl/HttpsURLConnection;->setRequestMethod(Ljava/lang/String;)V

    const/4 v1, 0x1

    invoke-virtual {v13, v1}, Ljavax/net/ssl/HttpsURLConnection;->setDoOutput(Z)V

    invoke-virtual {v13, v1}, Ljavax/net/ssl/HttpsURLConnection;->setDoInput(Z)V

    invoke-virtual {v13, v10}, Ljavax/net/ssl/HttpsURLConnection;->setConnectTimeout(I)V

    invoke-virtual {v13, v11}, Ljavax/net/ssl/HttpsURLConnection;->setReadTimeout(I)V

    const/4 v1, 0x0

    invoke-virtual {v13, v1}, Ljavax/net/ssl/HttpsURLConnection;->setUseCaches(Z)V

    move-object/from16 v1, v20

    invoke-virtual {v13, v1, v8}, Ljavax/net/ssl/HttpsURLConnection;->addRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v13}, Ljavax/net/ssl/HttpsURLConnection;->connect()V

    goto :goto_6

    :cond_8
    move-object v1, v5

    move-object/from16 v19, v9

    move-object/from16 v18, v12

    :goto_6
    invoke-virtual {v13}, Ljavax/net/ssl/HttpsURLConnection;->getResponseCode()I

    move-result v3

    const/16 v5, 0x12e

    if-ne v3, v5, :cond_a

    move-object/from16 v3, v19

    invoke-virtual {v13, v3}, Ljavax/net/ssl/HttpsURLConnection;->getHeaderField(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    new-instance v5, Ljava/net/URL;

    invoke-direct {v5, v3}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    if-eqz v2, :cond_9

    const/16 v3, 0x15

    if-lt v4, v3, :cond_9

    invoke-virtual {v2, v5}, Landroid/net/Network;->openConnection(Ljava/net/URL;)Ljava/net/URLConnection;

    move-result-object v2

    goto :goto_7

    :cond_9
    invoke-virtual {v5}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v2

    :goto_7
    check-cast v2, Ljavax/net/ssl/HttpsURLConnection;

    move-object v13, v2

    invoke-virtual {v13, v7, v6}, Ljavax/net/ssl/HttpsURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "GET"

    invoke-virtual {v13, v2}, Ljavax/net/ssl/HttpsURLConnection;->setRequestMethod(Ljava/lang/String;)V

    invoke-virtual {v13, v10}, Ljavax/net/ssl/HttpsURLConnection;->setConnectTimeout(I)V

    invoke-virtual {v13, v11}, Ljavax/net/ssl/HttpsURLConnection;->setReadTimeout(I)V

    const/4 v2, 0x0

    invoke-virtual {v13, v2}, Ljavax/net/ssl/HttpsURLConnection;->setUseCaches(Z)V

    invoke-virtual {v13, v1, v8}, Ljavax/net/ssl/HttpsURLConnection;->addRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v13}, Ljavax/net/ssl/HttpsURLConnection;->connect()V

    :cond_a
    invoke-virtual {v13}, Ljavax/net/ssl/HttpsURLConnection;->getResponseCode()I

    move-result v1

    const/16 v2, 0xc8

    if-ne v1, v2, :cond_c

    invoke-virtual {v13}, Ljavax/net/ssl/HttpsURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v1
    :try_end_2
    .catch Ljava/net/SocketTimeoutException; {:try_start_2 .. :try_end_2} :catch_b
    .catch Ljava/net/UnknownHostException; {:try_start_2 .. :try_end_2} :catch_a
    .catch Ljavax/net/ssl/SSLPeerUnverifiedException; {:try_start_2 .. :try_end_2} :catch_9
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_8
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    :try_start_3
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    new-instance v3, Ljava/io/BufferedReader;

    new-instance v4, Ljava/io/InputStreamReader;

    invoke-direct {v4, v1}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v3, v4}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_3
    .catch Ljava/net/SocketTimeoutException; {:try_start_3 .. :try_end_3} :catch_7
    .catch Ljava/net/UnknownHostException; {:try_start_3 .. :try_end_3} :catch_6
    .catch Ljavax/net/ssl/SSLPeerUnverifiedException; {:try_start_3 .. :try_end_3} :catch_5
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_4
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :goto_8
    :try_start_4
    invoke-virtual {v3}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_b

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "\n"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_8

    :cond_b
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    move-object/from16 v2, p0

    invoke-static {v2, v13}, Lcom/mobile/auth/d/d;->a(Landroid/content/Context;Ljavax/net/ssl/HttpsURLConnection;)Ljava/lang/String;

    move-result-object v2

    invoke-static/range {p4 .. p4}, Lcom/mobile/auth/c/e;->a(Ljava/lang/String;)Lcom/mobile/auth/c/b;

    move-result-object v4

    invoke-virtual {v4, v2}, Lcom/mobile/auth/c/b;->g(Ljava/lang/String;)Lcom/mobile/auth/c/b;
    :try_end_4
    .catch Ljava/net/SocketTimeoutException; {:try_start_4 .. :try_end_4} :catch_3
    .catch Ljava/net/UnknownHostException; {:try_start_4 .. :try_end_4} :catch_2
    .catch Ljavax/net/ssl/SSLPeerUnverifiedException; {:try_start_4 .. :try_end_4} :catch_1
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    move-object/from16 v16, v1

    move-object v9, v3

    goto :goto_9

    :catchall_0
    move-exception v0

    move-object v2, v0

    goto :goto_b

    :catch_0
    move-exception v0

    move-object v2, v0

    goto/16 :goto_e

    :catch_1
    move-exception v0

    move-object v2, v0

    goto/16 :goto_10

    :catch_2
    move-exception v0

    move-object v2, v0

    goto/16 :goto_12

    :catch_3
    move-exception v0

    move-object v2, v0

    goto/16 :goto_14

    :catchall_1
    move-exception v0

    move-object v2, v0

    goto :goto_a

    :catch_4
    move-exception v0

    move-object v2, v0

    goto :goto_d

    :catch_5
    move-exception v0

    move-object v2, v0

    goto/16 :goto_f

    :catch_6
    move-exception v0

    move-object v2, v0

    goto/16 :goto_11

    :catch_7
    move-exception v0

    move-object v2, v0

    goto/16 :goto_13

    :cond_c
    move-object/from16 v12, v18

    const/4 v9, 0x0

    const/16 v16, 0x0

    :goto_9
    if-eqz v9, :cond_d

    :try_start_5
    invoke-virtual {v9}, Ljava/io/BufferedReader;->close()V

    :cond_d
    if-eqz v16, :cond_13

    invoke-virtual/range {v16 .. v16}, Ljava/io/InputStream;->close()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_3

    goto/16 :goto_15

    :catchall_2
    move-exception v0

    move-object v2, v0

    const/4 v1, 0x0

    :goto_a
    const/4 v3, 0x0

    :goto_b
    :try_start_6
    const-string v12, "{\"result\":80001,\"msg\":\"\u8bf7\u6c42\u5f02\u5e38\"}"

    sget-object v4, Lcom/mobile/auth/d/d;->a:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "sendRequest Throwable-preauth-"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5, v2}, Lcom/mobile/auth/a/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    invoke-static/range {p4 .. p4}, Lcom/mobile/auth/c/e;->a(Ljava/lang/String;)Lcom/mobile/auth/c/b;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "doPost Throwable -- "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v2}, Lcom/mobile/auth/c/b;->h(Ljava/lang/String;)Lcom/mobile/auth/c/b;
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_4

    if-eqz v3, :cond_e

    :try_start_7
    invoke-virtual {v3}, Ljava/io/BufferedReader;->close()V

    :cond_e
    if-eqz v1, :cond_13

    :goto_c
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_3

    goto/16 :goto_15

    :catch_8
    move-exception v0

    move-object v2, v0

    const/4 v1, 0x0

    :goto_d
    const/4 v3, 0x0

    :goto_e
    :try_start_8
    const-string v12, "{\"result\":80007,\"msg\":\"IO\u5f02\u5e38\"}"

    sget-object v4, Lcom/mobile/auth/d/d;->a:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "sendRequest IOException-preauth-"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5, v2}, Lcom/mobile/auth/a/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    invoke-static/range {p4 .. p4}, Lcom/mobile/auth/c/e;->a(Ljava/lang/String;)Lcom/mobile/auth/c/b;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "doPost IOException -- "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v2}, Lcom/mobile/auth/c/b;->h(Ljava/lang/String;)Lcom/mobile/auth/c/b;
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_4

    if-eqz v3, :cond_f

    :try_start_9
    invoke-virtual {v3}, Ljava/io/BufferedReader;->close()V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_3

    :cond_f
    if-eqz v1, :cond_13

    goto :goto_c

    :catch_9
    move-exception v0

    move-object v2, v0

    const/4 v1, 0x0

    :goto_f
    const/4 v3, 0x0

    :goto_10
    :try_start_a
    const-string v12, "{\"result\":80013,\"msg\":\"\u57df\u540d\u6821\u9a8c\u672a\u901a\u8fc7\"}"

    sget-object v4, Lcom/mobile/auth/d/d;->a:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "sendRequest SSLPeerUnverifiedException-preauth-"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljavax/net/ssl/SSLPeerUnverifiedException;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5, v2}, Lcom/mobile/auth/a/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    invoke-static/range {p4 .. p4}, Lcom/mobile/auth/c/e;->a(Ljava/lang/String;)Lcom/mobile/auth/c/b;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "doPost SSLPeerUnverifiedException -- "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljavax/net/ssl/SSLPeerUnverifiedException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v2}, Lcom/mobile/auth/c/b;->h(Ljava/lang/String;)Lcom/mobile/auth/c/b;
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_4

    if-eqz v3, :cond_10

    :try_start_b
    invoke-virtual {v3}, Ljava/io/BufferedReader;->close()V
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_3

    :cond_10
    if-eqz v1, :cond_13

    goto/16 :goto_c

    :catch_a
    move-exception v0

    move-object v2, v0

    const/4 v1, 0x0

    :goto_11
    const/4 v3, 0x0

    :goto_12
    :try_start_c
    const-string v12, "{\"result\":80006,\"msg\":\"\u57df\u540d\u89e3\u6790\u5f02\u5e38\"}"

    sget-object v4, Lcom/mobile/auth/d/d;->a:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "sendRequest UnknownHostException-preauth-"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/net/UnknownHostException;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5, v2}, Lcom/mobile/auth/a/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    invoke-static/range {p4 .. p4}, Lcom/mobile/auth/c/e;->a(Ljava/lang/String;)Lcom/mobile/auth/c/b;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "doPost UnknownHostException -- "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/net/UnknownHostException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v2}, Lcom/mobile/auth/c/b;->h(Ljava/lang/String;)Lcom/mobile/auth/c/b;
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_4

    if-eqz v3, :cond_11

    :try_start_d
    invoke-virtual {v3}, Ljava/io/BufferedReader;->close()V
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_3

    :cond_11
    if-eqz v1, :cond_13

    goto/16 :goto_c

    :catch_b
    move-exception v0

    move-object v2, v0

    const/4 v1, 0x0

    :goto_13
    const/4 v3, 0x0

    :goto_14
    :try_start_e
    const-string v12, "{\"result\":80005,\"msg\":\"Socket\u8d85\u65f6\u5f02\u5e38\"}"

    sget-object v4, Lcom/mobile/auth/d/d;->a:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "sendRequest SocketTimeoutException-preauth-"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/net/SocketTimeoutException;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5, v2}, Lcom/mobile/auth/a/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    invoke-static/range {p4 .. p4}, Lcom/mobile/auth/c/e;->a(Ljava/lang/String;)Lcom/mobile/auth/c/b;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "doPost SocketTimeoutException -- "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/net/SocketTimeoutException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v2}, Lcom/mobile/auth/c/b;->h(Ljava/lang/String;)Lcom/mobile/auth/c/b;
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_4

    if-eqz v3, :cond_12

    :try_start_f
    invoke-virtual {v3}, Ljava/io/BufferedReader;->close()V
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_3

    :cond_12
    if-eqz v1, :cond_13

    goto/16 :goto_c

    :catchall_3
    :cond_13
    :goto_15
    return-object v12

    :catchall_4
    move-exception v0

    move-object v2, v0

    if-eqz v3, :cond_14

    :try_start_10
    invoke-virtual {v3}, Ljava/io/BufferedReader;->close()V

    :cond_14
    if-eqz v1, :cond_15

    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_10
    .catchall {:try_start_10 .. :try_end_10} :catchall_5

    :catchall_5
    :cond_15
    :try_start_11
    throw v2
    :try_end_11
    .catchall {:try_start_11 .. :try_end_11} :catchall_6

    :catchall_6
    move-exception v0

    move-object v1, v0

    :try_start_12
    invoke-static {v1}, Lcom/mobile/auth/gatewayauth/a;->a(Ljava/lang/Throwable;)V
    :try_end_12
    .catchall {:try_start_12 .. :try_end_12} :catchall_7

    const/4 v1, 0x0

    return-object v1

    :catchall_7
    move-exception v0

    const/4 v1, 0x0

    move-object v2, v0

    invoke-static {v2}, Lcom/mobile/auth/gatewayauth/a;->a(Ljava/lang/Throwable;)V

    return-object v1
.end method

.method public static a(Landroid/content/Context;Ljavax/net/ssl/HttpsURLConnection;)Ljava/lang/String;
    .locals 6

    const/4 v0, 0x0

    :try_start_0
    invoke-virtual {p1}, Ljavax/net/ssl/HttpsURLConnection;->getHeaderFields()Ljava/util/Map;

    move-result-object p1

    const-string v1, "Log-Level"

    invoke-interface {p1, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_1

    const/4 v3, 0x0

    :goto_0
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v4

    if-ge v3, v4, :cond_1

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_0

    invoke-static {p0, v4}, Lcom/mobile/auth/c/e;->b(Landroid/content/Context;Ljava/lang/String;)V

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    const-string p0, "p-ikgx"

    invoke-interface {p1, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/List;

    if-eqz p0, :cond_2

    invoke-interface {p0}, Ljava/util/List;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_2

    invoke-interface {p0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez p1, :cond_2

    return-object p0

    :catchall_0
    move-exception p0

    :try_start_1
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :cond_2
    return-object v0

    :catchall_1
    move-exception p0

    :try_start_2
    invoke-static {p0}, Lcom/mobile/auth/gatewayauth/a;->a(Ljava/lang/Throwable;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    return-object v0

    :catchall_2
    move-exception p0

    invoke-static {p0}, Lcom/mobile/auth/gatewayauth/a;->a(Ljava/lang/Throwable;)V

    return-object v0
.end method

.method public static final a()Ljavax/net/ssl/HostnameVerifier;
    .locals 2

    :try_start_0
    new-instance v0, Lcom/mobile/auth/d/d$1;

    invoke-direct {v0}, Lcom/mobile/auth/d/d$1;-><init>()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object v0

    :catchall_0
    move-exception v0

    const/4 v1, 0x0

    :try_start_1
    invoke-static {v0}, Lcom/mobile/auth/gatewayauth/a;->a(Ljava/lang/Throwable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    return-object v1

    :catchall_1
    move-exception v0

    invoke-static {v0}, Lcom/mobile/auth/gatewayauth/a;->a(Ljava/lang/Throwable;)V

    return-object v1
.end method
