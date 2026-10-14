.class public Lcn/mucang/android/core/api/ApiResponse;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final TAG:Ljava/lang/String; = "ApiResponse"


# instance fields
.field private errorCode:I

.field private jsonObject:Lcom/alibaba/fastjson/JSONObject;

.field private message:Ljava/lang/String;

.field private rawString:Ljava/lang/String;

.field private success:Z


# direct methods
.method public constructor <init>(Lcom/alibaba/fastjson/JSONObject;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcn/mucang/android/core/api/exception/InternalException;
        }
    .end annotation

    .line 1
    invoke-static {p1}, Lcom/alibaba/fastjson/JSON;->toJSONString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcn/mucang/android/core/api/ApiResponse;-><init>(Lcom/alibaba/fastjson/JSONObject;Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Lcom/alibaba/fastjson/JSONObject;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcn/mucang/android/core/api/exception/InternalException;
        }
    .end annotation

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    :try_start_0
    iput-object p2, p0, Lcn/mucang/android/core/api/ApiResponse;->rawString:Ljava/lang/String;

    if-eqz p1, :cond_0

    .line 4
    iput-object p1, p0, Lcn/mucang/android/core/api/ApiResponse;->jsonObject:Lcom/alibaba/fastjson/JSONObject;

    const-string p2, "success"

    .line 5
    invoke-virtual {p1, p2}, Lcom/alibaba/fastjson/JSONObject;->getBooleanValue(Ljava/lang/String;)Z

    move-result p2

    iput-boolean p2, p0, Lcn/mucang/android/core/api/ApiResponse;->success:Z

    const-string p2, "errorCode"

    .line 6
    invoke-virtual {p1, p2}, Lcom/alibaba/fastjson/JSONObject;->getIntValue(Ljava/lang/String;)I

    move-result p2

    iput p2, p0, Lcn/mucang/android/core/api/ApiResponse;->errorCode:I

    const-string p2, "message"

    .line 7
    invoke-virtual {p1, p2}, Lcom/alibaba/fastjson/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcn/mucang/android/core/api/ApiResponse;->message:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    return-void

    :catch_0
    move-exception p1

    const-string p2, "ApiResponse"

    .line 8
    invoke-static {p2, p1}, Lcn/mucang/android/core/utils/t;->c(Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 9
    new-instance p2, Lcn/mucang/android/core/api/exception/InternalException;

    invoke-direct {p2, p1}, Lcn/mucang/android/core/api/exception/InternalException;-><init>(Ljava/lang/Throwable;)V

    throw p2
.end method

.method private tryGetDataValue(Ljava/lang/Class;)Ljava/lang/Object;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;)TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcn/mucang/android/core/api/exception/InternalException;
        }
    .end annotation

    const-string v0, "value"

    .line 1
    :try_start_0
    iget-object v1, p0, Lcn/mucang/android/core/api/ApiResponse;->jsonObject:Lcom/alibaba/fastjson/JSONObject;

    const-string v2, "data"

    invoke-virtual {v1, v2}, Lcom/alibaba/fastjson/JSONObject;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 2
    instance-of v2, v1, Lcom/alibaba/fastjson/JSONObject;

    const/4 v3, 0x0

    if-eqz v2, :cond_0

    .line 3
    check-cast v1, Lcom/alibaba/fastjson/JSONObject;

    .line 4
    invoke-virtual {v1, v0}, Lcom/alibaba/fastjson/JSONObject;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 5
    invoke-virtual {v1, v0, p1}, Lcom/alibaba/fastjson/JSONObject;->getObject(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :cond_0
    return-object v3

    :catch_0
    move-exception p1

    const-string v0, "ApiResponse"

    .line 6
    invoke-static {v0, p1}, Lcn/mucang/android/core/utils/t;->c(Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 7
    new-instance v0, Lcn/mucang/android/core/api/exception/InternalException;

    invoke-direct {v0, p1}, Lcn/mucang/android/core/api/exception/InternalException;-><init>(Ljava/lang/Throwable;)V

    throw v0
.end method


# virtual methods
.method public copyFromOtherResponse(Lcn/mucang/android/core/api/ApiResponse;)V
    .locals 1

    .line 1
    iget-object v0, p1, Lcn/mucang/android/core/api/ApiResponse;->jsonObject:Lcom/alibaba/fastjson/JSONObject;

    iput-object v0, p0, Lcn/mucang/android/core/api/ApiResponse;->jsonObject:Lcom/alibaba/fastjson/JSONObject;

    .line 2
    iget-boolean v0, p1, Lcn/mucang/android/core/api/ApiResponse;->success:Z

    iput-boolean v0, p0, Lcn/mucang/android/core/api/ApiResponse;->success:Z

    .line 3
    iget v0, p1, Lcn/mucang/android/core/api/ApiResponse;->errorCode:I

    iput v0, p0, Lcn/mucang/android/core/api/ApiResponse;->errorCode:I

    .line 4
    iget-object p1, p1, Lcn/mucang/android/core/api/ApiResponse;->message:Ljava/lang/String;

    iput-object p1, p0, Lcn/mucang/android/core/api/ApiResponse;->message:Ljava/lang/String;

    return-void
.end method

.method public getData(B)B
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcn/mucang/android/core/api/exception/InternalException;
        }
    .end annotation

    .line 2
    :try_start_0
    const-class v0, Ljava/lang/Byte;

    invoke-direct {p0, v0}, Lcn/mucang/android/core/api/ApiResponse;->tryGetDataValue(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Byte;

    if-nez v0, :cond_0

    .line 3
    iget-object v0, p0, Lcn/mucang/android/core/api/ApiResponse;->jsonObject:Lcom/alibaba/fastjson/JSONObject;

    const-string v1, "data"

    invoke-virtual {v0, v1}, Lcom/alibaba/fastjson/JSONObject;->getByte(Ljava/lang/String;)Ljava/lang/Byte;

    move-result-object v0

    :cond_0
    if-nez v0, :cond_1

    return p1

    .line 4
    :cond_1
    invoke-virtual {v0}, Ljava/lang/Byte;->byteValue()B

    move-result p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return p1

    :catch_0
    move-exception p1

    const-string v0, "ApiResponse"

    .line 5
    invoke-static {v0, p1}, Lcn/mucang/android/core/utils/t;->c(Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 6
    new-instance v0, Lcn/mucang/android/core/api/exception/InternalException;

    invoke-direct {v0, p1}, Lcn/mucang/android/core/api/exception/InternalException;-><init>(Ljava/lang/Throwable;)V

    throw v0
.end method

.method public getData(D)D
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcn/mucang/android/core/api/exception/InternalException;
        }
    .end annotation

    .line 22
    :try_start_0
    const-class v0, Ljava/lang/Double;

    invoke-direct {p0, v0}, Lcn/mucang/android/core/api/ApiResponse;->tryGetDataValue(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Double;

    if-nez v0, :cond_0

    .line 23
    iget-object v0, p0, Lcn/mucang/android/core/api/ApiResponse;->jsonObject:Lcom/alibaba/fastjson/JSONObject;

    const-string v1, "data"

    invoke-virtual {v0, v1}, Lcom/alibaba/fastjson/JSONObject;->getDouble(Ljava/lang/String;)Ljava/lang/Double;

    move-result-object v0

    :cond_0
    if-eqz v0, :cond_2

    .line 24
    invoke-virtual {v0}, Ljava/lang/Double;->isNaN()Z

    move-result v1

    if-eqz v1, :cond_1

    goto :goto_0

    .line 25
    :cond_1
    invoke-virtual {v0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_2
    :goto_0
    return-wide p1

    :catch_0
    move-exception p1

    const-string p2, "ApiResponse"

    .line 26
    invoke-static {p2, p1}, Lcn/mucang/android/core/utils/t;->c(Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 27
    new-instance p2, Lcn/mucang/android/core/api/exception/InternalException;

    invoke-direct {p2, p1}, Lcn/mucang/android/core/api/exception/InternalException;-><init>(Ljava/lang/Throwable;)V

    throw p2
.end method

.method public getData(F)F
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcn/mucang/android/core/api/exception/InternalException;
        }
    .end annotation

    .line 28
    :try_start_0
    const-class v0, Ljava/lang/Float;

    invoke-direct {p0, v0}, Lcn/mucang/android/core/api/ApiResponse;->tryGetDataValue(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Float;

    if-nez v0, :cond_0

    .line 29
    iget-object v0, p0, Lcn/mucang/android/core/api/ApiResponse;->jsonObject:Lcom/alibaba/fastjson/JSONObject;

    const-string v1, "data"

    invoke-virtual {v0, v1}, Lcom/alibaba/fastjson/JSONObject;->getFloat(Ljava/lang/String;)Ljava/lang/Float;

    move-result-object v0

    :cond_0
    if-nez v0, :cond_1

    return p1

    .line 30
    :cond_1
    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return p1

    :catch_0
    move-exception p1

    const-string v0, "ApiResponse"

    .line 31
    invoke-static {v0, p1}, Lcn/mucang/android/core/utils/t;->c(Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 32
    new-instance v0, Lcn/mucang/android/core/api/exception/InternalException;

    invoke-direct {v0, p1}, Lcn/mucang/android/core/api/exception/InternalException;-><init>(Ljava/lang/Throwable;)V

    throw v0
.end method

.method public getData(I)I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcn/mucang/android/core/api/exception/InternalException;
        }
    .end annotation

    .line 12
    :try_start_0
    const-class v0, Ljava/lang/Integer;

    invoke-direct {p0, v0}, Lcn/mucang/android/core/api/ApiResponse;->tryGetDataValue(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    if-nez v0, :cond_0

    .line 13
    iget-object v0, p0, Lcn/mucang/android/core/api/ApiResponse;->jsonObject:Lcom/alibaba/fastjson/JSONObject;

    const-string v1, "data"

    invoke-virtual {v0, v1}, Lcom/alibaba/fastjson/JSONObject;->getInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    :cond_0
    if-nez v0, :cond_1

    return p1

    .line 14
    :cond_1
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return p1

    :catch_0
    move-exception p1

    const-string v0, "ApiResponse"

    .line 15
    invoke-static {v0, p1}, Lcn/mucang/android/core/utils/t;->c(Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 16
    new-instance v0, Lcn/mucang/android/core/api/exception/InternalException;

    invoke-direct {v0, p1}, Lcn/mucang/android/core/api/exception/InternalException;-><init>(Ljava/lang/Throwable;)V

    throw v0
.end method

.method public getData(J)J
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcn/mucang/android/core/api/exception/InternalException;
        }
    .end annotation

    .line 17
    :try_start_0
    const-class v0, Ljava/lang/Long;

    invoke-direct {p0, v0}, Lcn/mucang/android/core/api/ApiResponse;->tryGetDataValue(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    if-nez v0, :cond_0

    .line 18
    iget-object v0, p0, Lcn/mucang/android/core/api/ApiResponse;->jsonObject:Lcom/alibaba/fastjson/JSONObject;

    const-string v1, "data"

    invoke-virtual {v0, v1}, Lcom/alibaba/fastjson/JSONObject;->getLong(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v0

    :cond_0
    if-nez v0, :cond_1

    return-wide p1

    .line 19
    :cond_1
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-wide p1

    :catch_0
    move-exception p1

    const-string p2, "ApiResponse"

    .line 20
    invoke-static {p2, p1}, Lcn/mucang/android/core/utils/t;->c(Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 21
    new-instance p2, Lcn/mucang/android/core/api/exception/InternalException;

    invoke-direct {p2, p1}, Lcn/mucang/android/core/api/exception/InternalException;-><init>(Ljava/lang/Throwable;)V

    throw p2
.end method

.method public getData()Lcom/alibaba/fastjson/JSONObject;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcn/mucang/android/core/api/exception/InternalException;
        }
    .end annotation

    .line 49
    :try_start_0
    iget-object v0, p0, Lcn/mucang/android/core/api/ApiResponse;->jsonObject:Lcom/alibaba/fastjson/JSONObject;

    const-string v1, "data"

    invoke-virtual {v0, v1}, Lcom/alibaba/fastjson/JSONObject;->getJSONObject(Ljava/lang/String;)Lcom/alibaba/fastjson/JSONObject;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    const-string v1, "ApiResponse"

    .line 50
    invoke-static {v1, v0}, Lcn/mucang/android/core/utils/t;->c(Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 51
    new-instance v1, Lcn/mucang/android/core/api/exception/InternalException;

    invoke-direct {v1, v0}, Lcn/mucang/android/core/api/exception/InternalException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public getData(Ljava/lang/Class;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;)TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcn/mucang/android/core/api/exception/InternalException;
        }
    .end annotation

    const-string v0, "data"

    .line 1
    invoke-virtual {p0, v0, p1}, Lcn/mucang/android/core/api/ApiResponse;->getData(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public getData(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            "Ljava/lang/Class<",
            "TT;>;)TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcn/mucang/android/core/api/exception/InternalException;
        }
    .end annotation

    :try_start_0
    const-string v0, "\\."

    .line 42
    invoke-virtual {p1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    .line 43
    iget-object v0, p0, Lcn/mucang/android/core/api/ApiResponse;->jsonObject:Lcom/alibaba/fastjson/JSONObject;

    .line 44
    array-length v1, p1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    aget-object v3, p1, v2

    .line 45
    invoke-virtual {v0, v3}, Lcom/alibaba/fastjson/JSONObject;->getJSONObject(Ljava/lang/String;)Lcom/alibaba/fastjson/JSONObject;

    move-result-object v0

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    if-nez v0, :cond_1

    const/4 p1, 0x0

    return-object p1

    .line 46
    :cond_1
    invoke-virtual {v0}, Lcom/alibaba/fastjson/JSON;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1, p2}, Lcom/alibaba/fastjson/JSON;->parseObject(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    const-string p2, "ApiResponse"

    .line 47
    invoke-static {p2, p1}, Lcn/mucang/android/core/utils/t;->c(Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 48
    new-instance p2, Lcn/mucang/android/core/api/exception/InternalException;

    invoke-direct {p2, p1}, Lcn/mucang/android/core/api/exception/InternalException;-><init>(Ljava/lang/Throwable;)V

    throw p2
.end method

.method public getData(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcn/mucang/android/core/api/exception/InternalException;
        }
    .end annotation

    .line 38
    :try_start_0
    const-class v0, Ljava/lang/String;

    invoke-direct {p0, v0}, Lcn/mucang/android/core/api/ApiResponse;->tryGetDataValue(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    if-nez v0, :cond_0

    .line 39
    iget-object v0, p0, Lcn/mucang/android/core/api/ApiResponse;->jsonObject:Lcom/alibaba/fastjson/JSONObject;

    const-string v1, "data"

    invoke-virtual {v0, v1}, Lcom/alibaba/fastjson/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    if-nez v0, :cond_1

    return-object p1

    :cond_1
    return-object v0

    :catch_0
    move-exception p1

    const-string v0, "ApiResponse"

    .line 40
    invoke-static {v0, p1}, Lcn/mucang/android/core/utils/t;->c(Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 41
    new-instance v0, Lcn/mucang/android/core/api/exception/InternalException;

    invoke-direct {v0, p1}, Lcn/mucang/android/core/api/exception/InternalException;-><init>(Ljava/lang/Throwable;)V

    throw v0
.end method

.method public getData(S)S
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcn/mucang/android/core/api/exception/InternalException;
        }
    .end annotation

    .line 7
    :try_start_0
    const-class v0, Ljava/lang/Short;

    invoke-direct {p0, v0}, Lcn/mucang/android/core/api/ApiResponse;->tryGetDataValue(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Short;

    if-nez v0, :cond_0

    .line 8
    iget-object v0, p0, Lcn/mucang/android/core/api/ApiResponse;->jsonObject:Lcom/alibaba/fastjson/JSONObject;

    const-string v1, "data"

    invoke-virtual {v0, v1}, Lcom/alibaba/fastjson/JSONObject;->getShort(Ljava/lang/String;)Ljava/lang/Short;

    move-result-object v0

    :cond_0
    if-nez v0, :cond_1

    return p1

    .line 9
    :cond_1
    invoke-virtual {v0}, Ljava/lang/Short;->shortValue()S

    move-result p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return p1

    :catch_0
    move-exception p1

    const-string v0, "ApiResponse"

    .line 10
    invoke-static {v0, p1}, Lcn/mucang/android/core/utils/t;->c(Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 11
    new-instance v0, Lcn/mucang/android/core/api/exception/InternalException;

    invoke-direct {v0, p1}, Lcn/mucang/android/core/api/exception/InternalException;-><init>(Ljava/lang/Throwable;)V

    throw v0
.end method

.method public getData(Z)Z
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcn/mucang/android/core/api/exception/InternalException;
        }
    .end annotation

    .line 33
    :try_start_0
    const-class v0, Ljava/lang/Boolean;

    invoke-direct {p0, v0}, Lcn/mucang/android/core/api/ApiResponse;->tryGetDataValue(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    if-nez v0, :cond_0

    .line 34
    iget-object v0, p0, Lcn/mucang/android/core/api/ApiResponse;->jsonObject:Lcom/alibaba/fastjson/JSONObject;

    const-string v1, "data"

    invoke-virtual {v0, v1}, Lcom/alibaba/fastjson/JSONObject;->getBoolean(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v0

    :cond_0
    if-nez v0, :cond_1

    return p1

    .line 35
    :cond_1
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return p1

    :catch_0
    move-exception p1

    const-string v0, "ApiResponse"

    .line 36
    invoke-static {v0, p1}, Lcn/mucang/android/core/utils/t;->c(Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 37
    new-instance v0, Lcn/mucang/android/core/api/exception/InternalException;

    invoke-direct {v0, p1}, Lcn/mucang/android/core/api/exception/InternalException;-><init>(Ljava/lang/Throwable;)V

    throw v0
.end method

.method public getDataArray(Ljava/lang/Class;)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;)",
            "Ljava/util/List<",
            "TT;>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcn/mucang/android/core/api/exception/InternalException;
        }
    .end annotation

    const-string v0, "data.itemList"

    .line 1
    invoke-virtual {p0, v0, p1}, Lcn/mucang/android/core/api/ApiResponse;->getDataArray(Ljava/lang/String;Ljava/lang/Class;)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method public getDataArray(Ljava/lang/String;Ljava/lang/Class;)Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            "Ljava/lang/Class<",
            "TT;>;)",
            "Ljava/util/List<",
            "TT;>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcn/mucang/android/core/api/exception/InternalException;
        }
    .end annotation

    .line 2
    :try_start_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const-string v1, "\\."

    .line 3
    invoke-virtual {p1, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    .line 4
    iget-object v1, p0, Lcn/mucang/android/core/api/ApiResponse;->jsonObject:Lcom/alibaba/fastjson/JSONObject;

    const/4 v2, 0x0

    const/4 v3, 0x0

    .line 5
    :goto_0
    array-length v4, p1

    add-int/lit8 v4, v4, -0x1

    if-ge v3, v4, :cond_0

    .line 6
    aget-object v4, p1, v3

    invoke-virtual {v1, v4}, Lcom/alibaba/fastjson/JSONObject;->getJSONObject(Ljava/lang/String;)Lcom/alibaba/fastjson/JSONObject;

    move-result-object v1

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 7
    :cond_0
    array-length v3, p1

    add-int/lit8 v3, v3, -0x1

    aget-object p1, p1, v3

    invoke-virtual {v1, p1}, Lcom/alibaba/fastjson/JSONObject;->getJSONArray(Ljava/lang/String;)Lcom/alibaba/fastjson/JSONArray;

    move-result-object p1

    .line 8
    :goto_1
    invoke-virtual {p1}, Lcom/alibaba/fastjson/JSONArray;->size()I

    move-result v1

    if-ge v2, v1, :cond_1

    .line 9
    invoke-virtual {p1, v2, p2}, Lcom/alibaba/fastjson/JSONArray;->getObject(ILjava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_1
    return-object v0

    :catch_0
    move-exception p1

    const-string p2, "ApiResponse"

    .line 10
    invoke-static {p2, p1}, Lcn/mucang/android/core/utils/t;->c(Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 11
    new-instance p2, Lcn/mucang/android/core/api/exception/InternalException;

    invoke-direct {p2, p1}, Lcn/mucang/android/core/api/exception/InternalException;-><init>(Ljava/lang/Throwable;)V

    throw p2
.end method

.method public getErrorCode()I
    .locals 1

    .line 1
    iget v0, p0, Lcn/mucang/android/core/api/ApiResponse;->errorCode:I

    return v0
.end method

.method public getJsonObject()Lcom/alibaba/fastjson/JSONObject;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    iget-object v0, p0, Lcn/mucang/android/core/api/ApiResponse;->jsonObject:Lcom/alibaba/fastjson/JSONObject;

    return-object v0
.end method

.method public getList(Ljava/lang/Class;)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;)",
            "Ljava/util/List<",
            "TT;>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcn/mucang/android/core/api/exception/InternalException;
        }
    .end annotation

    const-string v0, "data"

    .line 1
    invoke-virtual {p0, v0, p1}, Lcn/mucang/android/core/api/ApiResponse;->getDataArray(Ljava/lang/String;Ljava/lang/Class;)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method public getMessage()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcn/mucang/android/core/api/ApiResponse;->message:Ljava/lang/String;

    return-object v0
.end method

.method public getRawString()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcn/mucang/android/core/api/ApiResponse;->rawString:Ljava/lang/String;

    return-object v0
.end method

.method public isSuccess()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcn/mucang/android/core/api/ApiResponse;->success:Z

    return v0
.end method

.method public parseFetchMoreResponse(Ljava/lang/Class;)Lcn/mucang/android/core/api/d/b;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;)",
            "Lcn/mucang/android/core/api/d/b<",
            "TT;>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcn/mucang/android/core/api/exception/InternalException;
        }
    .end annotation

    .line 1
    :try_start_0
    new-instance v0, Lcn/mucang/android/core/api/d/b;

    invoke-direct {v0}, Lcn/mucang/android/core/api/d/b;-><init>()V

    .line 2
    iget-object v1, p0, Lcn/mucang/android/core/api/ApiResponse;->jsonObject:Lcom/alibaba/fastjson/JSONObject;

    const-string v2, "data"

    invoke-virtual {v1, v2}, Lcom/alibaba/fastjson/JSONObject;->getJSONObject(Ljava/lang/String;)Lcom/alibaba/fastjson/JSONObject;

    move-result-object v1

    const-string v2, "hasMore"

    .line 3
    invoke-virtual {v1, v2}, Lcom/alibaba/fastjson/JSONObject;->getBoolean(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v2

    if-nez v2, :cond_0

    .line 4
    sget-object v2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    :cond_0
    const-string v3, "data.itemList"

    .line 5
    invoke-virtual {p0, v3, p1}, Lcn/mucang/android/core/api/ApiResponse;->getDataArray(Ljava/lang/String;Ljava/lang/Class;)Ljava/util/List;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcn/mucang/android/core/api/d/b;->f(Ljava/util/List;)V

    const-string p1, "pageCount"

    .line 6
    invoke-virtual {v1, p1}, Lcom/alibaba/fastjson/JSONObject;->getIntValue(Ljava/lang/String;)I

    move-result p1

    invoke-virtual {v0, p1}, Lcn/mucang/android/core/api/d/b;->g(I)V

    const-string p1, "total"

    .line 7
    invoke-virtual {v1, p1}, Lcom/alibaba/fastjson/JSONObject;->getLongValue(Ljava/lang/String;)J

    move-result-wide v3

    invoke-virtual {v0, v3, v4}, Lcn/mucang/android/core/api/d/b;->h(J)V

    .line 8
    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    invoke-virtual {v0, p1}, Lcn/mucang/android/core/api/d/b;->e(Z)V

    const-string p1, "cursor"

    .line 9
    invoke-virtual {v1, p1}, Lcom/alibaba/fastjson/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcn/mucang/android/core/api/d/b;->d(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception p1

    const-string v0, "ApiResponse"

    .line 10
    invoke-static {v0, p1}, Lcn/mucang/android/core/utils/t;->c(Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 11
    instance-of v0, p1, Lcn/mucang/android/core/api/exception/InternalException;

    if-eqz v0, :cond_1

    .line 12
    throw p1

    .line 13
    :cond_1
    new-instance v0, Lcn/mucang/android/core/api/exception/InternalException;

    invoke-direct {v0, p1}, Lcn/mucang/android/core/api/exception/InternalException;-><init>(Ljava/lang/Throwable;)V

    throw v0
.end method

.method public setRawString(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcn/mucang/android/core/api/ApiResponse;->rawString:Ljava/lang/String;

    return-void
.end method
