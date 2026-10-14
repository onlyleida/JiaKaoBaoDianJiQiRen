.class public Lcn/mucang/android/core/api/cache/impl/DbCacheEntity;
.super Lcn/mucang/android/core/db/IdEntity;
.source "SourceFile"


# instance fields
.field private cacheKey:Ljava/lang/String;

.field private cacheTimestampMs:J
    .annotation runtime Lcn/mucang/android/core/db/a$d;
        value = "cacheTime"
    .end annotation
.end field

.field private cacheValue:Ljava/lang/String;

.field private checkTimestampMs:J
    .annotation runtime Lcn/mucang/android/core/db/a$d;
        value = "checkTime"
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcn/mucang/android/core/db/IdEntity;-><init>()V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lcn/mucang/android/core/api/cache/a;)V
    .locals 2

    .line 2
    invoke-direct {p0}, Lcn/mucang/android/core/db/IdEntity;-><init>()V

    .line 3
    iput-object p1, p0, Lcn/mucang/android/core/api/cache/impl/DbCacheEntity;->cacheKey:Ljava/lang/String;

    .line 4
    invoke-virtual {p2}, Lcn/mucang/android/core/api/cache/a;->b()J

    move-result-wide v0

    iput-wide v0, p0, Lcn/mucang/android/core/api/cache/impl/DbCacheEntity;->cacheTimestampMs:J

    .line 5
    invoke-virtual {p2}, Lcn/mucang/android/core/api/cache/a;->c()J

    move-result-wide v0

    iput-wide v0, p0, Lcn/mucang/android/core/api/cache/impl/DbCacheEntity;->checkTimestampMs:J

    .line 6
    invoke-static {p2}, Lcn/mucang/android/core/api/cache/impl/DbCacheEntity;->getCacheValue(Lcn/mucang/android/core/api/cache/a;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcn/mucang/android/core/api/cache/impl/DbCacheEntity;->cacheValue:Ljava/lang/String;

    return-void
.end method

.method public static getCacheValue(Lcn/mucang/android/core/api/cache/a;)Ljava/lang/String;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcn/mucang/android/core/api/cache/a;->a()Lcn/mucang/android/core/api/ApiResponse;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {p0}, Lcn/mucang/android/core/api/cache/a;->a()Lcn/mucang/android/core/api/ApiResponse;

    move-result-object p0

    invoke-virtual {p0}, Lcn/mucang/android/core/api/ApiResponse;->getRawString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_0
    const-string p0, ""

    return-object p0
.end method


# virtual methods
.method public getCacheKey()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcn/mucang/android/core/api/cache/impl/DbCacheEntity;->cacheKey:Ljava/lang/String;

    return-object v0
.end method

.method public getCacheTime()J
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    iget-wide v0, p0, Lcn/mucang/android/core/api/cache/impl/DbCacheEntity;->cacheTimestampMs:J

    return-wide v0
.end method

.method public getCacheTimestampMs()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcn/mucang/android/core/api/cache/impl/DbCacheEntity;->cacheTimestampMs:J

    return-wide v0
.end method

.method public getCacheValue()Ljava/lang/String;
    .locals 1

    .line 3
    iget-object v0, p0, Lcn/mucang/android/core/api/cache/impl/DbCacheEntity;->cacheValue:Ljava/lang/String;

    return-object v0
.end method

.method public getCheckTime()J
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    iget-wide v0, p0, Lcn/mucang/android/core/api/cache/impl/DbCacheEntity;->checkTimestampMs:J

    return-wide v0
.end method

.method public getCheckTimestampMs()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcn/mucang/android/core/api/cache/impl/DbCacheEntity;->checkTimestampMs:J

    return-wide v0
.end method

.method public setCacheKey(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcn/mucang/android/core/api/cache/impl/DbCacheEntity;->cacheKey:Ljava/lang/String;

    return-void
.end method

.method public setCacheTime(J)V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    iput-wide p1, p0, Lcn/mucang/android/core/api/cache/impl/DbCacheEntity;->cacheTimestampMs:J

    return-void
.end method

.method public setCacheTimestampMs(J)V
    .locals 0

    .line 1
    iput-wide p1, p0, Lcn/mucang/android/core/api/cache/impl/DbCacheEntity;->cacheTimestampMs:J

    return-void
.end method

.method public setCacheValue(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcn/mucang/android/core/api/cache/impl/DbCacheEntity;->cacheValue:Ljava/lang/String;

    return-void
.end method

.method public setCheckTime(J)V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    iput-wide p1, p0, Lcn/mucang/android/core/api/cache/impl/DbCacheEntity;->checkTimestampMs:J

    return-void
.end method

.method public setCheckTimestampMs(J)V
    .locals 0

    .line 1
    iput-wide p1, p0, Lcn/mucang/android/core/api/cache/impl/DbCacheEntity;->checkTimestampMs:J

    return-void
.end method

.method public toCacheApiResponse()Lcn/mucang/android/core/api/cache/a;
    .locals 5

    .line 1
    iget-object v0, p0, Lcn/mucang/android/core/api/cache/impl/DbCacheEntity;->cacheValue:Ljava/lang/String;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 2
    :try_start_0
    invoke-static {v0}, Lcom/alibaba/fastjson/JSON;->parseObject(Ljava/lang/String;)Lcom/alibaba/fastjson/JSONObject;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 3
    new-instance v2, Lcn/mucang/android/core/api/ApiResponse;

    invoke-direct {v2, v0}, Lcn/mucang/android/core/api/ApiResponse;-><init>(Lcom/alibaba/fastjson/JSONObject;)V
    :try_end_0
    .catch Lcn/mucang/android/core/api/exception/InternalException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v2, "\u9ed8\u8ba4\u66ff\u6362"

    .line 4
    invoke-static {v2, v0}, Lcn/mucang/android/core/utils/t;->c(Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    move-object v2, v1

    :goto_0
    if-nez v2, :cond_1

    .line 5
    :try_start_1
    new-instance v0, Lcn/mucang/android/core/api/ApiResponse;

    iget-object v3, p0, Lcn/mucang/android/core/api/cache/impl/DbCacheEntity;->cacheValue:Ljava/lang/String;

    invoke-direct {v0, v1, v3}, Lcn/mucang/android/core/api/ApiResponse;-><init>(Lcom/alibaba/fastjson/JSONObject;Ljava/lang/String;)V
    :try_end_1
    .catch Lcn/mucang/android/core/api/exception/InternalException; {:try_start_1 .. :try_end_1} :catch_1

    move-object v2, v0

    goto :goto_1

    :catch_1
    move-exception v0

    .line 6
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1

    .line 7
    :cond_1
    iget-object v0, p0, Lcn/mucang/android/core/api/cache/impl/DbCacheEntity;->cacheValue:Ljava/lang/String;

    invoke-virtual {v2, v0}, Lcn/mucang/android/core/api/ApiResponse;->setRawString(Ljava/lang/String;)V

    :goto_1
    if-eqz v2, :cond_3

    .line 8
    invoke-virtual {v2}, Lcn/mucang/android/core/api/ApiResponse;->getRawString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcn/mucang/android/core/utils/n0;->e(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    goto :goto_2

    .line 9
    :cond_2
    new-instance v0, Lcn/mucang/android/core/api/cache/a;

    invoke-direct {v0}, Lcn/mucang/android/core/api/cache/a;-><init>()V

    .line 10
    iget-wide v3, p0, Lcn/mucang/android/core/api/cache/impl/DbCacheEntity;->cacheTimestampMs:J

    invoke-virtual {v0, v3, v4}, Lcn/mucang/android/core/api/cache/a;->f(J)V

    .line 11
    iget-wide v3, p0, Lcn/mucang/android/core/api/cache/impl/DbCacheEntity;->checkTimestampMs:J

    invoke-virtual {v0, v3, v4}, Lcn/mucang/android/core/api/cache/a;->g(J)V

    .line 12
    invoke-virtual {v0, v2}, Lcn/mucang/android/core/api/cache/a;->e(Lcn/mucang/android/core/api/ApiResponse;)V

    return-object v0

    :cond_3
    :goto_2
    return-object v1
.end method
