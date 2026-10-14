.class public Lcn/mucang/android/core/api/cache/impl/d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcn/mucang/android/core/api/cache/e;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/mucang/android/core/api/cache/impl/d$b;
    }
.end annotation


# instance fields
.field private a:Ljava/lang/String;

.field private b:Lcn/mucang/android/core/api/cache/j/a;

.field private c:I

.field private d:I

.field private e:J


# direct methods
.method private constructor <init>()V
    .locals 2

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    .line 3
    iput v0, p0, Lcn/mucang/android/core/api/cache/impl/d;->c:I

    .line 4
    iput v0, p0, Lcn/mucang/android/core/api/cache/impl/d;->d:I

    const-wide/32 v0, 0x2000000

    .line 5
    iput-wide v0, p0, Lcn/mucang/android/core/api/cache/impl/d;->e:J

    return-void
.end method

.method synthetic constructor <init>(Lcn/mucang/android/core/api/cache/impl/d$a;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcn/mucang/android/core/api/cache/impl/d;-><init>()V

    return-void
.end method

.method static synthetic c(Lcn/mucang/android/core/api/cache/impl/d;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 1
    iput-object p1, p0, Lcn/mucang/android/core/api/cache/impl/d;->a:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic d(Lcn/mucang/android/core/api/cache/impl/d;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Lcn/mucang/android/core/api/cache/impl/d;->g()V

    return-void
.end method

.method private e()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcn/mucang/android/core/api/cache/impl/d;->b:Lcn/mucang/android/core/api/cache/j/a;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcn/mucang/android/core/api/cache/j/a;->isClosed()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2
    :cond_0
    :try_start_0
    invoke-direct {p0}, Lcn/mucang/android/core/api/cache/impl/d;->g()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "\u9ed8\u8ba4\u66ff\u6362"

    .line 3
    invoke-static {v1, v0}, Lcn/mucang/android/core/utils/t;->c(Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_1
    :goto_0
    return-void
.end method

.method private g()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/io/File;

    invoke-virtual {p0}, Lcn/mucang/android/core/api/cache/impl/d;->f()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    iget v1, p0, Lcn/mucang/android/core/api/cache/impl/d;->c:I

    iget v2, p0, Lcn/mucang/android/core/api/cache/impl/d;->d:I

    iget-wide v3, p0, Lcn/mucang/android/core/api/cache/impl/d;->e:J

    invoke-static {v0, v1, v2, v3, v4}, Lcn/mucang/android/core/api/cache/j/a;->A(Ljava/io/File;IIJ)Lcn/mucang/android/core/api/cache/j/a;

    move-result-object v0

    iput-object v0, p0, Lcn/mucang/android/core/api/cache/impl/d;->b:Lcn/mucang/android/core/api/cache/j/a;

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;)Lcn/mucang/android/core/api/cache/a;
    .locals 9

    .line 1
    invoke-direct {p0}, Lcn/mucang/android/core/api/cache/impl/d;->e()V

    .line 2
    :try_start_0
    iget-object v0, p0, Lcn/mucang/android/core/api/cache/impl/d;->b:Lcn/mucang/android/core/api/cache/j/a;

    invoke-virtual {v0, p1}, Lcn/mucang/android/core/api/cache/j/a;->x(Ljava/lang/String;)Lcn/mucang/android/core/api/cache/j/a$e;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    .line 3
    invoke-virtual {v0, v1}, Lcn/mucang/android/core/api/cache/j/a$e;->getString(I)Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 4
    :try_start_1
    invoke-static {v0}, Lcom/alibaba/fastjson/JSON;->parseObject(Ljava/lang/String;)Lcom/alibaba/fastjson/JSONObject;

    move-result-object v0

    const-string v1, "apiResponse"

    .line 5
    invoke-virtual {v0, v1}, Lcom/alibaba/fastjson/JSONObject;->getJSONObject(Ljava/lang/String;)Lcom/alibaba/fastjson/JSONObject;

    move-result-object v1

    const-string v2, "rawString"

    .line 6
    invoke-virtual {v0, v2}, Lcom/alibaba/fastjson/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 7
    new-instance v4, Lcn/mucang/android/core/api/ApiResponse;

    invoke-direct {v4, v1, v2}, Lcn/mucang/android/core/api/ApiResponse;-><init>(Lcom/alibaba/fastjson/JSONObject;Ljava/lang/String;)V

    const-string v1, "cacheTime"

    .line 8
    invoke-virtual {v0, v1}, Lcom/alibaba/fastjson/JSONObject;->getLongValue(Ljava/lang/String;)J

    move-result-wide v7

    const-string v1, "checkTime"

    .line 9
    invoke-virtual {v0, v1}, Lcom/alibaba/fastjson/JSONObject;->getLongValue(Ljava/lang/String;)J

    move-result-wide v5

    .line 10
    new-instance v0, Lcn/mucang/android/core/api/cache/a;

    move-object v3, v0

    invoke-direct/range {v3 .. v8}, Lcn/mucang/android/core/api/cache/a;-><init>(Lcn/mucang/android/core/api/ApiResponse;JJ)V
    :try_end_1
    .catch Lcom/alibaba/fastjson/JSONException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    return-object v0

    :catch_0
    move-exception v0

    :try_start_2
    const-string v1, "jin"

    .line 11
    invoke-virtual {v0}, Ljava/lang/RuntimeException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcn/mucang/android/core/utils/t;->m(Ljava/lang/String;Ljava/lang/String;)I

    .line 12
    invoke-virtual {p0, p1}, Lcn/mucang/android/core/api/cache/impl/d;->remove(Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_0

    :catch_1
    move-exception p1

    const-string v0, "\u9ed8\u8ba4\u66ff\u6362"

    .line 13
    invoke-static {v0, p1}, Lcn/mucang/android/core/utils/t;->c(Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    :goto_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public declared-synchronized b(Ljava/lang/String;Lcn/mucang/android/core/api/cache/a;)V
    .locals 6

    monitor-enter p0

    .line 1
    :try_start_0
    invoke-direct {p0}, Lcn/mucang/android/core/api/cache/impl/d;->e()V

    .line 2
    iget-object v0, p0, Lcn/mucang/android/core/api/cache/impl/d;->b:Lcn/mucang/android/core/api/cache/j/a;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_4

    if-eqz v0, :cond_1

    const/4 v1, 0x0

    .line 3
    :try_start_1
    invoke-virtual {v0, p1}, Lcn/mucang/android/core/api/cache/j/a;->s(Ljava/lang/String;)Lcn/mucang/android/core/api/cache/j/a$c;

    move-result-object p1

    if-eqz p1, :cond_0

    const/4 v0, 0x0

    .line 4
    invoke-virtual {p1, v0}, Lcn/mucang/android/core/api/cache/j/a$c;->f(I)Ljava/io/OutputStream;

    move-result-object v0
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_2
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    .line 5
    :try_start_2
    invoke-virtual {p2}, Lcn/mucang/android/core/api/cache/a;->a()Lcn/mucang/android/core/api/ApiResponse;

    move-result-object v2

    invoke-virtual {v2}, Lcn/mucang/android/core/api/ApiResponse;->getJsonObject()Lcom/alibaba/fastjson/JSONObject;

    move-result-object v2

    .line 6
    new-instance v3, Lcom/alibaba/fastjson/JSONObject;

    invoke-direct {v3}, Lcom/alibaba/fastjson/JSONObject;-><init>()V

    const-string v4, "apiResponse"

    .line 7
    invoke-virtual {v3, v4, v2}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "cacheTime"

    .line 8
    invoke-virtual {p2}, Lcn/mucang/android/core/api/cache/a;->b()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v3, v2, v4}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "checkTime"

    .line 9
    invoke-virtual {p2}, Lcn/mucang/android/core/api/cache/a;->c()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v3, v2, v4}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "rawString"

    .line 10
    invoke-virtual {p2}, Lcn/mucang/android/core/api/cache/a;->a()Lcn/mucang/android/core/api/ApiResponse;

    move-result-object p2

    invoke-virtual {p2}, Lcn/mucang/android/core/api/ApiResponse;->getRawString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v3, v2, p2}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 11
    new-instance p2, Ljava/io/ByteArrayInputStream;

    invoke-virtual {v3}, Lcom/alibaba/fastjson/JSON;->toJSONString()Ljava/lang/String;

    move-result-object v2

    sget-object v3, Lkotlin/text/d;->a:Ljava/nio/charset/Charset;

    invoke-virtual {v3}, Ljava/nio/charset/Charset;->name()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v2

    invoke-direct {p2, v2}, Ljava/io/ByteArrayInputStream;-><init>([B)V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 12
    :try_start_3
    invoke-static {p2, v0}, Lcn/mucang/android/core/utils/j;->d(Ljava/io/InputStream;Ljava/io/OutputStream;)V

    .line 13
    invoke-virtual {p1}, Lcn/mucang/android/core/api/cache/j/a$c;->e()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    move-object v1, v0

    goto :goto_2

    :catchall_0
    move-exception p1

    goto :goto_0

    :catch_0
    move-exception p1

    goto :goto_1

    :catchall_1
    move-exception p1

    move-object p2, v1

    :goto_0
    move-object v1, v0

    goto :goto_5

    :catch_1
    move-exception p1

    move-object p2, v1

    :goto_1
    move-object v1, v0

    goto :goto_4

    :cond_0
    move-object p2, v1

    .line 14
    :goto_2
    :try_start_4
    invoke-static {v1}, Lcn/mucang/android/core/utils/o;->a(Ljava/io/Closeable;)V

    .line 15
    :goto_3
    invoke-static {p2}, Lcn/mucang/android/core/utils/o;->a(Ljava/io/Closeable;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_4

    goto :goto_6

    :catchall_2
    move-exception p1

    move-object p2, v1

    goto :goto_5

    :catch_2
    move-exception p1

    move-object p2, v1

    :goto_4
    :try_start_5
    const-string v0, "\u9ed8\u8ba4\u66ff\u6362"

    .line 16
    invoke-static {v0, p1}, Lcn/mucang/android/core/utils/t;->c(Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_3

    .line 17
    :try_start_6
    invoke-static {v1}, Lcn/mucang/android/core/utils/o;->a(Ljava/io/Closeable;)V

    goto :goto_3

    :catchall_3
    move-exception p1

    :goto_5
    invoke-static {v1}, Lcn/mucang/android/core/utils/o;->a(Ljava/io/Closeable;)V

    .line 18
    invoke-static {p2}, Lcn/mucang/android/core/utils/o;->a(Ljava/io/Closeable;)V

    .line 19
    throw p1
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_4

    .line 20
    :cond_1
    :goto_6
    monitor-exit p0

    return-void

    :catchall_4
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public f()Ljava/lang/String;
    .locals 3

    .line 1
    iget-object v0, p0, Lcn/mucang/android/core/api/cache/impl/d;->a:Ljava/lang/String;

    invoke-static {v0}, Lcn/mucang/android/core/utils/n0;->e(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    invoke-static {}, Lcn/mucang/android/core/config/MucangConfig;->getContext()Landroid/app/Application;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 3
    invoke-static {}, Lcn/mucang/android/core/config/MucangConfig;->getContext()Landroid/app/Application;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Application;->getCacheDir()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcn/mucang/android/core/api/cache/impl/d;->a:Ljava/lang/String;

    .line 4
    :cond_0
    iget-object v0, p0, Lcn/mucang/android/core/api/cache/impl/d;->a:Ljava/lang/String;

    invoke-static {v0}, Lcn/mucang/android/core/utils/n0;->e(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 5
    iget-object v0, p0, Lcn/mucang/android/core/api/cache/impl/d;->a:Ljava/lang/String;

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 6
    iget-object v0, p0, Lcn/mucang/android/core/api/cache/impl/d;->a:Ljava/lang/String;

    const/4 v1, 0x0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 7
    :cond_1
    iget-object v0, p0, Lcn/mucang/android/core/api/cache/impl/d;->a:Ljava/lang/String;

    return-object v0

    .line 8
    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "\u7f13\u5b58\u76ee\u5f55\u4e0d\u80fd\u4e3a\u7a7a"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public declared-synchronized remove(Ljava/lang/String;)V
    .locals 1

    monitor-enter p0

    .line 1
    :try_start_0
    invoke-direct {p0}, Lcn/mucang/android/core/api/cache/impl/d;->e()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2
    :try_start_1
    iget-object v0, p0, Lcn/mucang/android/core/api/cache/impl/d;->b:Lcn/mucang/android/core/api/cache/j/a;

    invoke-virtual {v0, p1}, Lcn/mucang/android/core/api/cache/j/a;->F(Ljava/lang/String;)Z
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catch_0
    move-exception p1

    :try_start_2
    const-string v0, "\u9ed8\u8ba4\u66ff\u6362"

    .line 3
    invoke-static {v0, p1}, Lcn/mucang/android/core/utils/t;->c(Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 4
    :goto_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method
