.class public Lcn/mucang/sundial/android/log/upload/UploadLogApi;
.super Lcn/mucang/android/core/api/upload/FileUploadApi;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 1

    const-string v0, ""

    .line 1
    invoke-direct {p0, v0, v0, v0}, Lcn/mucang/sundial/android/log/upload/UploadLogApi;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1, p2, p3}, Lcn/mucang/android/core/api/upload/FileUploadApi;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static upload(Lcn/mucang/sundial/android/log/LogType;Lcn/mucang/sundial/android/log/db/LogEntity;)Z
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcn/mucang/android/core/api/exception/InternalException;,
            Lcn/mucang/android/core/api/exception/HttpException;,
            Lcn/mucang/android/core/api/exception/ApiException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    invoke-virtual {p1}, Lcn/mucang/sundial/android/log/db/LogEntity;->getFile()Ljava/lang/String;

    move-result-object p0

    .line 2
    invoke-static {p0}, Lcn/mucang/android/core/utils/n0;->e(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    .line 3
    :cond_0
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 4
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_8

    invoke-virtual {v0}, Ljava/io/File;->length()J

    move-result-wide v2

    const-wide/16 v4, 0x0

    cmp-long v6, v2, v4

    if-gtz v6, :cond_1

    goto/16 :goto_3

    .line 5
    :cond_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {p1}, Lcn/mucang/sundial/android/log/db/LogEntity;->getStartTime()J

    move-result-wide v6

    sub-long/2addr v2, v6

    const/4 v6, 0x1

    cmp-long v7, v2, v4

    if-ltz v7, :cond_2

    const-wide/32 v4, 0x240c8400

    cmp-long v7, v2, v4

    if-gez v7, :cond_2

    const/4 v2, 0x1

    goto :goto_0

    :cond_2
    const/4 v2, 0x0

    :goto_0
    if-nez v2, :cond_3

    .line 6
    new-instance p0, Ljava/io/File;

    invoke-virtual {p1}, Lcn/mucang/sundial/android/log/db/LogEntity;->getFile()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/io/File;->delete()Z

    .line 7
    invoke-static {p1}, Lcn/mucang/sundial/android/log/db/LogDb;->delete(Lcn/mucang/sundial/android/log/db/LogEntity;)V

    return v6

    .line 8
    :cond_3
    invoke-virtual {p1}, Lcn/mucang/sundial/android/log/db/LogEntity;->getFile()Ljava/lang/String;

    move-result-object v2

    const-string v3, ".zip"

    invoke-virtual {v2, v3}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 9
    new-instance p0, Lcn/mucang/sundial/android/log/upload/UploadLogApi;

    invoke-direct {p0}, Lcn/mucang/sundial/android/log/upload/UploadLogApi;-><init>()V

    invoke-direct {p0, p1}, Lcn/mucang/sundial/android/log/upload/UploadLogApi;->upload(Lcn/mucang/sundial/android/log/db/LogEntity;)Z

    move-result p0

    goto :goto_2

    .line 10
    :cond_4
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 11
    invoke-static {p0, v2}, Lcn/mucang/sundial/android/log/LUtils;->compressFile(Ljava/lang/String;Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_6

    .line 12
    invoke-virtual {p1, v2}, Lcn/mucang/sundial/android/log/db/LogEntity;->setFile(Ljava/lang/String;)V

    .line 13
    new-instance p0, Ljava/io/File;

    invoke-direct {p0, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/io/File;->length()J

    move-result-wide v2

    invoke-virtual {p1, v2, v3}, Lcn/mucang/sundial/android/log/db/LogEntity;->setSize(J)V

    .line 14
    :try_start_0
    new-instance p0, Lcn/mucang/sundial/android/log/upload/UploadLogApi;

    invoke-direct {p0}, Lcn/mucang/sundial/android/log/upload/UploadLogApi;-><init>()V

    invoke-direct {p0, p1}, Lcn/mucang/sundial/android/log/upload/UploadLogApi;->upload(Lcn/mucang/sundial/android/log/db/LogEntity;)Z

    move-result p0

    if-eqz p0, :cond_5

    .line 15
    invoke-virtual {v0}, Ljava/io/File;->delete()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :cond_5
    const/4 v6, 0x0

    :goto_1
    move p0, v6

    goto :goto_2

    :catchall_0
    move-exception p0

    .line 16
    invoke-static {p1}, Lcn/mucang/sundial/android/log/db/LogDb;->update(Lcn/mucang/sundial/android/log/db/LogEntity;)V

    .line 17
    throw p0

    .line 18
    :cond_6
    new-instance p0, Lcn/mucang/sundial/android/log/upload/UploadLogApi;

    invoke-direct {p0}, Lcn/mucang/sundial/android/log/upload/UploadLogApi;-><init>()V

    invoke-direct {p0, p1}, Lcn/mucang/sundial/android/log/upload/UploadLogApi;->upload(Lcn/mucang/sundial/android/log/db/LogEntity;)Z

    move-result p0

    :goto_2
    if-eqz p0, :cond_7

    .line 19
    new-instance p0, Ljava/io/File;

    invoke-virtual {p1}, Lcn/mucang/sundial/android/log/db/LogEntity;->getFile()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/io/File;->delete()Z

    .line 20
    invoke-static {p1}, Lcn/mucang/sundial/android/log/db/LogDb;->delete(Lcn/mucang/sundial/android/log/db/LogEntity;)V

    :cond_7
    return v1

    .line 21
    :cond_8
    :goto_3
    invoke-static {p1}, Lcn/mucang/sundial/android/log/db/LogDb;->delete(Lcn/mucang/sundial/android/log/db/LogEntity;)V

    .line 22
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    return v1
.end method

.method private upload(Lcn/mucang/sundial/android/log/db/LogEntity;)Z
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcn/mucang/android/core/api/exception/InternalException;,
            Lcn/mucang/android/core/api/exception/HttpException;,
            Lcn/mucang/android/core/api/exception/ApiException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 23
    new-instance v0, Ljava/io/File;

    invoke-virtual {p1}, Lcn/mucang/sundial/android/log/db/LogEntity;->getFile()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 24
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 25
    invoke-virtual {p0}, Lcn/mucang/sundial/android/log/upload/UploadLogApi;->getExtraParams()Ljava/util/Map;

    move-result-object v1

    .line 26
    invoke-virtual {p1}, Lcn/mucang/sundial/android/log/db/LogEntity;->getStartTime()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    const-string v3, "startTime"

    invoke-interface {v1, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 27
    invoke-virtual {p1}, Lcn/mucang/sundial/android/log/db/LogEntity;->getEndTime()J

    move-result-wide v2

    const-wide/16 v4, 0x0

    cmp-long v6, v2, v4

    if-lez v6, :cond_0

    .line 28
    invoke-virtual {p1}, Lcn/mucang/sundial/android/log/db/LogEntity;->getEndTime()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    const-string v3, "endTime"

    invoke-interface {v1, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 29
    :cond_0
    invoke-virtual {v0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v0

    const-string v2, "fileName"

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 30
    invoke-virtual {p1}, Lcn/mucang/sundial/android/log/db/LogEntity;->getType()I

    move-result v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    const-string v2, "logType"

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 31
    invoke-virtual {p1}, Lcn/mucang/sundial/android/log/db/LogEntity;->getTypeName()Ljava/lang/String;

    move-result-object v0

    const-string v2, "logTypeName"

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 32
    new-instance v0, Ljava/io/File;

    invoke-virtual {p1}, Lcn/mucang/sundial/android/log/db/LogEntity;->getFile()Ljava/lang/String;

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
    .locals 3
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
    invoke-static {}, Lcn/mucang/sundial/android/tcp/data/DataManager;->getInstance()Lcn/mucang/sundial/android/tcp/data/DataManager;

    move-result-object v1

    invoke-virtual {v1}, Lcn/mucang/sundial/android/tcp/data/DataManager;->getDeviceInfo()Lcn/mucang/sundial/android/db/entity/DeviceInfo;

    move-result-object v1

    invoke-virtual {v1}, Lcn/mucang/sundial/android/db/entity/DeviceInfo;->getImei()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    .line 3
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, "deviceNum"

    .line 4
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
