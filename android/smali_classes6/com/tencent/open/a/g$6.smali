.class Lcom/tencent/open/a/g$6;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tencent/open/a/g;->a(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/os/Bundle;

.field final synthetic b:Ljava/lang/String;

.field final synthetic c:Z

.field final synthetic d:Ljava/lang/String;

.field final synthetic e:Lcom/tencent/open/a/g;


# direct methods
.method constructor <init>(Lcom/tencent/open/a/g;Landroid/os/Bundle;Ljava/lang/String;ZLjava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/tencent/open/a/g$6;->e:Lcom/tencent/open/a/g;

    iput-object p2, p0, Lcom/tencent/open/a/g$6;->a:Landroid/os/Bundle;

    iput-object p3, p0, Lcom/tencent/open/a/g$6;->b:Ljava/lang/String;

    iput-boolean p4, p0, Lcom/tencent/open/a/g$6;->c:Z

    iput-object p5, p0, Lcom/tencent/open/a/g$6;->d:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 13

    const-string v0, "-->ReportCenter httpRequest consumeContent Exception:"

    const-string v1, "openSDK_LOG.ReportManager"

    .line 1
    :try_start_0
    iget-object v2, p0, Lcom/tencent/open/a/g$6;->a:Landroid/os/Bundle;

    if-nez v2, :cond_0

    const-string v0, "-->httpRequest, params is null!"

    .line 2
    invoke-static {v1, v0}, Lcom/tencent/open/log/SLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 3
    :cond_0
    invoke-static {}, Lcom/tencent/open/a/e;->a()I

    move-result v2

    if-nez v2, :cond_1

    const/4 v2, 0x3

    .line 4
    :cond_1
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "-->httpRequest, retryCount: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Lcom/tencent/open/log/SLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 5
    invoke-static {}, Lcom/tencent/open/utils/f;->a()Landroid/content/Context;

    move-result-object v3

    iget-object v4, p0, Lcom/tencent/open/a/g$6;->b:Ljava/lang/String;

    const/4 v5, 0x0

    invoke-static {v3, v5, v4}, Lcom/tencent/open/utils/HttpUtils;->getHttpClient(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Lorg/apache/http/client/HttpClient;

    move-result-object v3

    .line 6
    iget-object v4, p0, Lcom/tencent/open/a/g$6;->a:Landroid/os/Bundle;

    invoke-static {v4}, Lcom/tencent/open/utils/HttpUtils;->encodeUrl(Landroid/os/Bundle;)Ljava/lang/String;

    move-result-object v4

    .line 7
    iget-boolean v6, p0, Lcom/tencent/open/a/g$6;->c:Z

    if-eqz v6, :cond_2

    .line 8
    invoke-static {v4}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 9
    :cond_2
    iget-object v6, p0, Lcom/tencent/open/a/g$6;->d:Ljava/lang/String;

    invoke-virtual {v6}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v6

    const-string v7, "GET"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 10
    new-instance v6, Ljava/lang/StringBuffer;

    iget-object v7, p0, Lcom/tencent/open/a/g$6;->b:Ljava/lang/String;

    invoke-direct {v6, v7}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    .line 11
    invoke-virtual {v6, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 12
    new-instance v4, Lorg/apache/http/client/methods/HttpGet;

    invoke-virtual {v6}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v4, v6}, Lorg/apache/http/client/methods/HttpGet;-><init>(Ljava/lang/String;)V

    goto :goto_0

    .line 13
    :cond_3
    iget-object v6, p0, Lcom/tencent/open/a/g$6;->d:Ljava/lang/String;

    invoke-virtual {v6}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v6

    const-string v7, "POST"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_a

    .line 14
    new-instance v6, Lorg/apache/http/client/methods/HttpPost;

    iget-object v7, p0, Lcom/tencent/open/a/g$6;->b:Ljava/lang/String;

    invoke-direct {v6, v7}, Lorg/apache/http/client/methods/HttpPost;-><init>(Ljava/lang/String;)V

    .line 15
    invoke-static {v4}, Lcom/tencent/open/utils/l;->i(Ljava/lang/String;)[B

    move-result-object v4

    .line 16
    new-instance v7, Lorg/apache/http/entity/ByteArrayEntity;

    invoke-direct {v7, v4}, Lorg/apache/http/entity/ByteArrayEntity;-><init>([B)V

    .line 17
    invoke-virtual {v6, v7}, Lorg/apache/http/client/methods/HttpPost;->setEntity(Lorg/apache/http/HttpEntity;)V

    move-object v4, v6

    :goto_0
    const-string v6, "Accept-Encoding"

    const-string v7, "gzip"

    .line 18
    invoke-interface {v4, v6, v7}, Lorg/apache/http/client/methods/HttpUriRequest;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    const-string v6, "Content-Type"

    const-string v7, "application/x-www-form-urlencoded"

    .line 19
    invoke-interface {v4, v6, v7}, Lorg/apache/http/client/methods/HttpUriRequest;->addHeader(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_e

    const/4 v6, 0x0

    const/4 v7, 0x0

    :cond_4
    const/4 v8, 0x1

    add-int/2addr v6, v8

    .line 20
    :try_start_1
    invoke-interface {v3, v4}, Lorg/apache/http/client/HttpClient;->execute(Lorg/apache/http/client/methods/HttpUriRequest;)Lorg/apache/http/HttpResponse;

    move-result-object v9
    :try_end_1
    .catch Lorg/apache/http/conn/ConnectTimeoutException; {:try_start_1 .. :try_end_1} :catch_b
    .catch Ljava/net/SocketTimeoutException; {:try_start_1 .. :try_end_1} :catch_9
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_7
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 21
    :try_start_2
    invoke-interface {v9}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v10

    .line 22
    invoke-interface {v10}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result v10

    .line 23
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "-->httpRequest, statusCode: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v1, v11}, Lcom/tencent/open/log/SLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v11, 0xc8

    if-eq v10, v11, :cond_5

    const-string v10, "-->ReportCenter httpRequest : HttpStatuscode != 200"

    .line 24
    invoke-static {v1, v10}, Lcom/tencent/open/log/SLog;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catch Lorg/apache/http/conn/ConnectTimeoutException; {:try_start_2 .. :try_end_2} :catch_6
    .catch Ljava/net/SocketTimeoutException; {:try_start_2 .. :try_end_2} :catch_5
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_4
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1

    :cond_5
    :try_start_3
    const-string v7, "-->ReportCenter httpRequest Thread success"

    .line 25
    invoke-static {v1, v7}, Lcom/tencent/open/log/SLog;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_3
    .catch Lorg/apache/http/conn/ConnectTimeoutException; {:try_start_3 .. :try_end_3} :catch_3
    .catch Ljava/net/SocketTimeoutException; {:try_start_3 .. :try_end_3} :catch_2
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    const/4 v7, 0x1

    :goto_1
    if-eqz v9, :cond_7

    .line 26
    :try_start_4
    invoke-interface {v9}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v2

    if-eqz v2, :cond_7

    .line 27
    invoke-interface {v2}, Lorg/apache/http/HttpEntity;->consumeContent()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    goto/16 :goto_8

    :catch_0
    move-exception v2

    .line 28
    :goto_2
    :try_start_5
    invoke-static {v1, v0, v2}, Lcom/tencent/open/log/SLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_e

    goto/16 :goto_8

    :catch_1
    move-exception v2

    move-object v5, v9

    const/4 v7, 0x1

    goto :goto_3

    :catch_2
    move-exception v10

    const/4 v7, 0x1

    goto :goto_4

    :catch_3
    move-exception v10

    const/4 v7, 0x1

    goto :goto_6

    :catchall_0
    move-exception v2

    move-object v5, v9

    goto/16 :goto_9

    :catch_4
    move-exception v2

    move-object v5, v9

    goto :goto_3

    :catch_5
    move-exception v10

    goto :goto_4

    :catch_6
    move-exception v10

    goto :goto_6

    :catchall_1
    move-exception v2

    goto :goto_9

    :catch_7
    move-exception v2

    :goto_3
    :try_start_6
    const-string v3, "-->ReportCenter httpRequest Exception:"

    .line 29
    invoke-static {v1, v3, v2}, Lcom/tencent/open/log/SLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    if-eqz v5, :cond_7

    .line 30
    :try_start_7
    invoke-interface {v5}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v2

    if-eqz v2, :cond_7

    .line 31
    invoke-interface {v2}, Lorg/apache/http/HttpEntity;->consumeContent()V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_8

    goto :goto_8

    :catch_8
    move-exception v2

    goto :goto_2

    :catch_9
    move-exception v10

    move-object v9, v5

    :goto_4
    :try_start_8
    const-string v11, "-->ReportCenter httpRequest SocketTimeoutException:"

    .line 32
    invoke-static {v1, v11, v10}, Lcom/tencent/open/log/SLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    if-eqz v9, :cond_6

    .line 33
    :try_start_9
    invoke-interface {v9}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v9

    if-eqz v9, :cond_6

    .line 34
    invoke-interface {v9}, Lorg/apache/http/HttpEntity;->consumeContent()V
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_a

    goto :goto_7

    :catch_a
    move-exception v9

    .line 35
    :goto_5
    :try_start_a
    invoke-static {v1, v0, v9}, Lcom/tencent/open/log/SLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_e

    goto :goto_7

    :catch_b
    move-exception v10

    move-object v9, v5

    :goto_6
    :try_start_b
    const-string v11, "-->ReportCenter httpRequest ConnectTimeoutException:"

    .line 36
    invoke-static {v1, v11, v10}, Lcom/tencent/open/log/SLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_0

    if-eqz v9, :cond_6

    .line 37
    :try_start_c
    invoke-interface {v9}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v9

    if-eqz v9, :cond_6

    .line 38
    invoke-interface {v9}, Lorg/apache/http/HttpEntity;->consumeContent()V
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_c} :catch_c

    goto :goto_7

    :catch_c
    move-exception v9

    goto :goto_5

    :cond_6
    :goto_7
    if-lt v6, v2, :cond_4

    :cond_7
    :goto_8
    if-ne v7, v8, :cond_8

    :try_start_d
    const-string v0, "-->ReportCenter httpRequest Thread request success"

    .line 39
    invoke-static {v1, v0}, Lcom/tencent/open/log/SLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_b

    :cond_8
    const-string v0, "-->ReportCenter httpRequest Thread request failed"

    .line 40
    invoke-static {v1, v0}, Lcom/tencent/open/log/SLog;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_d
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_d} :catch_e

    goto :goto_b

    :goto_9
    if-eqz v5, :cond_9

    .line 41
    :try_start_e
    invoke-interface {v5}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v3

    if-eqz v3, :cond_9

    .line 42
    invoke-interface {v3}, Lorg/apache/http/HttpEntity;->consumeContent()V
    :try_end_e
    .catch Ljava/lang/Exception; {:try_start_e .. :try_end_e} :catch_d

    goto :goto_a

    :catch_d
    move-exception v3

    .line 43
    :try_start_f
    invoke-static {v1, v0, v3}, Lcom/tencent/open/log/SLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 44
    :cond_9
    :goto_a
    throw v2

    :cond_a
    const-string v0, "-->httpRequest unkonw request method return."

    .line 45
    invoke-static {v1, v0}, Lcom/tencent/open/log/SLog;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_f
    .catch Ljava/lang/Exception; {:try_start_f .. :try_end_f} :catch_e

    return-void

    :catch_e
    move-exception v0

    const-string v2, "-->httpRequest, exception in serial executor:"

    .line 46
    invoke-static {v1, v2, v0}, Lcom/tencent/open/log/SLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_b
    return-void
.end method
