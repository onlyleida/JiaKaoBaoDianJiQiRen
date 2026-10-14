.class public Lcn/mucang/android/jiakaoyi/framework/log/k/b;
.super Lcn/mucang/android/core/api/upload/FileUploadApi;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 1

    const-string v0, ""

    .line 1
    invoke-direct {p0, v0, v0, v0}, Lcn/mucang/android/jiakaoyi/framework/log/k/b;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1, p2, p3}, Lcn/mucang/android/core/api/upload/FileUploadApi;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static b(Lcn/mucang/android/jiakaoyi/framework/log/i;Lcn/mucang/android/jiakaoyi/framework/log/db/LogEntity;)Z
    .locals 13
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcn/mucang/android/core/api/exception/InternalException;,
            Lcn/mucang/android/core/api/exception/HttpException;,
            Lcn/mucang/android/core/api/exception/ApiException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    invoke-virtual {p1}, Lcn/mucang/android/jiakaoyi/framework/log/db/LogEntity;->getFile()Ljava/lang/String;

    move-result-object v0

    .line 2
    invoke-static {}, Lcn/mucang/android/core/config/MucangConfig;->v()Z

    move-result v1

    const-string v2, "LogTag"

    const-string v3, " , "

    if-eqz v1, :cond_0

    .line 3
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "\u4e0a\u4f20:"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcn/mucang/android/jiakaoyi/framework/log/i;->a:Ljava/lang/String;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 4
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "\u5f00\u59cb\u4e0a\u4f20\u65e5\u5fd7:"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcn/mucang/android/jiakaoyi/framework/log/f;->o(Ljava/lang/Object;)V

    .line 5
    :cond_0
    invoke-static {v0}, Lcn/mucang/android/core/utils/n0;->e(Ljava/lang/String;)Z

    move-result v1

    const/4 v4, 0x0

    if-eqz v1, :cond_1

    return v4

    .line 6
    :cond_1
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 7
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v5

    const/4 v6, 0x1

    if-eqz v5, :cond_e

    invoke-virtual {v1}, Ljava/io/File;->length()J

    move-result-wide v7

    const-wide/16 v9, 0x0

    cmp-long v5, v7, v9

    if-nez v5, :cond_2

    goto/16 :goto_4

    :cond_2
    const-string v5, ".zip"

    .line 8
    invoke-virtual {v0, v5}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_4

    invoke-static {v1}, Lcn/mucang/android/jiakaoyi/framework/log/g;->h(Ljava/io/File;)Z

    move-result v7

    if-nez v7, :cond_4

    .line 9
    invoke-static {p1}, Lcn/mucang/android/jiakaoyi/framework/log/db/a;->b(Lcn/mucang/android/jiakaoyi/framework/log/db/LogEntity;)I

    .line 10
    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    .line 11
    invoke-static {}, Lcn/mucang/android/core/config/MucangConfig;->v()Z

    move-result p1

    if-eqz p1, :cond_3

    .line 12
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "\u6587\u4ef6\u4e0d\u5408\u683c:"

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcn/mucang/android/jiakaoyi/framework/log/i;->a:Ljava/lang/String;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v2, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    return v4

    .line 13
    :cond_4
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v7

    invoke-virtual {p1}, Lcn/mucang/android/jiakaoyi/framework/log/db/LogEntity;->getStartTime()J

    move-result-wide v11

    sub-long/2addr v7, v11

    cmp-long v11, v7, v9

    if-ltz v11, :cond_5

    const-wide/32 v9, 0x240c8400

    cmp-long v11, v7, v9

    if-gez v11, :cond_5

    const/4 v7, 0x1

    goto :goto_0

    :cond_5
    const/4 v7, 0x0

    :goto_0
    if-nez v7, :cond_7

    .line 14
    invoke-static {p1}, Lcn/mucang/android/jiakaoyi/framework/log/db/a;->b(Lcn/mucang/android/jiakaoyi/framework/log/db/LogEntity;)I

    .line 15
    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    .line 16
    invoke-static {}, Lcn/mucang/android/core/config/MucangConfig;->v()Z

    move-result p1

    if-eqz p1, :cond_6

    .line 17
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "\u65f6\u95f4\u8d85\u8fc77\u586b\uff0c\u4e0d\u4e0a\u4f20:"

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcn/mucang/android/jiakaoyi/framework/log/i;->a:Ljava/lang/String;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v2, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_6
    return v6

    .line 18
    :cond_7
    invoke-virtual {p1}, Lcn/mucang/android/jiakaoyi/framework/log/db/LogEntity;->getFile()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_8

    .line 19
    new-instance v5, Lcn/mucang/android/jiakaoyi/framework/log/k/b;

    invoke-direct {v5}, Lcn/mucang/android/jiakaoyi/framework/log/k/b;-><init>()V

    invoke-direct {v5, p1}, Lcn/mucang/android/jiakaoyi/framework/log/k/b;->c(Lcn/mucang/android/jiakaoyi/framework/log/db/LogEntity;)Z

    move-result v5

    goto :goto_2

    .line 20
    :cond_8
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v8

    const-string v9, ".txt"

    const-string v10, ""

    invoke-virtual {v8, v9, v10}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 21
    invoke-static {v0, v5}, Lcn/mucang/android/jiakaoyi/framework/log/g;->b(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_a

    .line 22
    invoke-virtual {p1, v5}, Lcn/mucang/android/jiakaoyi/framework/log/db/LogEntity;->setFile(Ljava/lang/String;)V

    .line 23
    new-instance v7, Ljava/io/File;

    invoke-direct {v7, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 24
    invoke-virtual {v7}, Ljava/io/File;->length()J

    move-result-wide v8

    invoke-virtual {p1, v8, v9}, Lcn/mucang/android/jiakaoyi/framework/log/db/LogEntity;->setSize(J)V

    .line 25
    :try_start_0
    new-instance v5, Lcn/mucang/android/jiakaoyi/framework/log/k/b;

    invoke-direct {v5}, Lcn/mucang/android/jiakaoyi/framework/log/k/b;-><init>()V

    invoke-direct {v5, p1}, Lcn/mucang/android/jiakaoyi/framework/log/k/b;->c(Lcn/mucang/android/jiakaoyi/framework/log/db/LogEntity;)Z

    move-result v5

    if-eqz v5, :cond_9

    .line 26
    invoke-virtual {v7}, Ljava/io/File;->delete()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :cond_9
    const/4 v6, 0x0

    :goto_1
    move v5, v6

    goto :goto_2

    :catchall_0
    move-exception p0

    .line 27
    invoke-static {p1}, Lcn/mucang/android/jiakaoyi/framework/log/db/a;->f(Lcn/mucang/android/jiakaoyi/framework/log/db/LogEntity;)V

    .line 28
    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    .line 29
    throw p0

    .line 30
    :cond_a
    new-instance v5, Lcn/mucang/android/jiakaoyi/framework/log/k/b;

    invoke-direct {v5}, Lcn/mucang/android/jiakaoyi/framework/log/k/b;-><init>()V

    invoke-direct {v5, p1}, Lcn/mucang/android/jiakaoyi/framework/log/k/b;->c(Lcn/mucang/android/jiakaoyi/framework/log/db/LogEntity;)Z

    move-result v5

    :goto_2
    if-eqz v5, :cond_b

    .line 31
    invoke-static {p1}, Lcn/mucang/android/jiakaoyi/framework/log/db/a;->b(Lcn/mucang/android/jiakaoyi/framework/log/db/LogEntity;)I

    .line 32
    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    .line 33
    invoke-static {}, Lcn/mucang/android/core/config/MucangConfig;->v()Z

    move-result p1

    if-eqz p1, :cond_d

    .line 34
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "\u4e0a\u4f20\u6210\u529f:"

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcn/mucang/android/jiakaoyi/framework/log/i;->a:Ljava/lang/String;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v2, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3

    .line 35
    :cond_b
    invoke-static {}, Lcn/mucang/android/core/config/MucangConfig;->v()Z

    move-result p1

    const-string v1, "\u4e0a\u4f20\u5931\u8d25:"

    if-eqz p1, :cond_c

    .line 36
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcn/mucang/android/jiakaoyi/framework/log/i;->a:Ljava/lang/String;

    invoke-virtual {p1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 37
    :cond_c
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcn/mucang/android/jiakaoyi/framework/log/i;->a:Ljava/lang/String;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcn/mucang/android/jiakaoyi/framework/log/f;->o(Ljava/lang/Object;)V

    :cond_d
    :goto_3
    return v4

    .line 38
    :cond_e
    :goto_4
    invoke-static {p1}, Lcn/mucang/android/jiakaoyi/framework/log/db/a;->b(Lcn/mucang/android/jiakaoyi/framework/log/db/LogEntity;)I

    .line 39
    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    .line 40
    invoke-static {}, Lcn/mucang/android/core/config/MucangConfig;->v()Z

    move-result p1

    if-eqz p1, :cond_f

    .line 41
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "\u6587\u4ef6\u4e0d\u5b58\u5728\uff0c\u5220\u6389\u6570\u636e\u5e93\u8bb0\u5f55:"

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcn/mucang/android/jiakaoyi/framework/log/i;->a:Ljava/lang/String;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v2, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_f
    return v6
.end method

.method private c(Lcn/mucang/android/jiakaoyi/framework/log/db/LogEntity;)Z
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcn/mucang/android/core/api/exception/InternalException;,
            Lcn/mucang/android/core/api/exception/HttpException;,
            Lcn/mucang/android/core/api/exception/ApiException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/io/File;

    invoke-virtual {p1}, Lcn/mucang/android/jiakaoyi/framework/log/db/LogEntity;->getFile()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 2
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 3
    invoke-virtual {p0}, Lcn/mucang/android/jiakaoyi/framework/log/k/b;->getExtraParams()Ljava/util/Map;

    move-result-object v1

    .line 4
    invoke-virtual {p1}, Lcn/mucang/android/jiakaoyi/framework/log/db/LogEntity;->getStartTime()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    const-string v3, "startTime"

    invoke-interface {v1, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 5
    invoke-virtual {p1}, Lcn/mucang/android/jiakaoyi/framework/log/db/LogEntity;->getEndTime()J

    move-result-wide v2

    const-wide/16 v4, 0x0

    cmp-long v6, v2, v4

    if-lez v6, :cond_0

    .line 6
    invoke-virtual {p1}, Lcn/mucang/android/jiakaoyi/framework/log/db/LogEntity;->getEndTime()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    const-string v3, "endTime"

    invoke-interface {v1, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 7
    :cond_0
    invoke-virtual {v0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v0

    const-string v2, "fileName"

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 8
    invoke-virtual {p1}, Lcn/mucang/android/jiakaoyi/framework/log/db/LogEntity;->getType()I

    move-result v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    const-string v2, "logType"

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 9
    invoke-virtual {p1}, Lcn/mucang/android/jiakaoyi/framework/log/db/LogEntity;->getTypeName()Ljava/lang/String;

    move-result-object v0

    const-string v2, "logTypeName"

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 10
    new-instance v0, Ljava/io/File;

    invoke-virtual {p1}, Lcn/mucang/android/jiakaoyi/framework/log/db/LogEntity;->getFile()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcn/mucang/android/core/api/upload/FileUploadApi;->uploadFile(Ljava/io/File;)Lcn/mucang/android/core/api/upload/UploadResult;

    const/4 p1, 0x1

    return p1

    :cond_1
    const/4 p1, 0x0

    return p1
.end method


# virtual methods
.method protected getApiHost()Ljava/lang/String;
    .locals 1

    .line 1
    invoke-static {}, Lcn/mucang/android/core/config/MucangConfig;->v()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "https://app-log-statistics.ttt.mucang.cn"

    return-object v0

    :cond_0
    const-string v0, "https://app-log-statistics.kakamobi.cn"

    return-object v0
.end method

.method protected getExtraParams()Ljava/util/Map;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1
    invoke-super {p0}, Lcn/mucang/android/core/api/upload/FileUploadApi;->getExtraParams()Ljava/util/Map;

    move-result-object v0

    .line 2
    invoke-static {}, Lcn/mucang/android/jiakaoyi/framework/e/g;->b()Ljava/util/Map;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 3
    sget-object v1, Lcn/mucang/android/jiakaoyi/framework/dataprovider/b;->a:Lcn/mucang/android/jiakaoyi/framework/dataprovider/b;

    const-class v2, Lcn/mucang/android/jiakaoyi/framework/dataprovider/AppDataProvider;

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Lcn/mucang/android/jiakaoyi/framework/dataprovider/b;->a(Ljava/lang/Class;Landroid/os/Bundle;)Lcn/mucang/android/jiakaoyi/framework/dataprovider/a;

    move-result-object v1

    check-cast v1, Lcn/mucang/android/jiakaoyi/framework/dataprovider/AppDataProvider;

    if-eqz v1, :cond_0

    .line 4
    invoke-virtual {v1}, Lcn/mucang/android/jiakaoyi/framework/dataprovider/AppDataProvider;->getLogDeviceNum()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 5
    invoke-virtual {v1}, Lcn/mucang/android/jiakaoyi/framework/dataprovider/AppDataProvider;->getLogDeviceNum()Ljava/lang/String;

    move-result-object v1

    const-string v2, "deviceNum"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-object v0
.end method

.method public getSignKey()Ljava/lang/String;
    .locals 1

    const-string v0, "*#06#fJGHdpaHcWxrdUajnXpFcUaJ"

    return-object v0
.end method

.method protected path()Ljava/lang/String;
    .locals 1

    const-string v0, "/api/open/client-upload-log/upload-log.htm"

    return-object v0
.end method
