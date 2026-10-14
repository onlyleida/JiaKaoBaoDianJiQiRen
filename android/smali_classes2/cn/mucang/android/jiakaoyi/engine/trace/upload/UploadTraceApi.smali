.class public Lcn/mucang/android/jiakaoyi/engine/trace/upload/UploadTraceApi;
.super Lcn/mucang/android/core/api/upload/FileUploadApi;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/mucang/android/jiakaoyi/engine/trace/upload/UploadTraceApi$UploadTraceResult;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 1

    const-string v0, ""

    .line 1
    invoke-direct {p0, v0, v0, v0}, Lcn/mucang/android/jiakaoyi/engine/trace/upload/UploadTraceApi;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1, p2, p3}, Lcn/mucang/android/core/api/upload/FileUploadApi;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 3
    invoke-super {p0}, Lcn/mucang/android/core/api/upload/FileUploadApi;->getExtraParams()Ljava/util/Map;

    move-result-object p1

    .line 4
    invoke-static {}, Lcn/mucang/android/jiakaoyi/framework/e/g;->b()Ljava/util/Map;

    move-result-object p2

    invoke-interface {p1, p2}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    return-void
.end method


# virtual methods
.method public b(Ljava/io/File;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcn/mucang/android/jiakaoyi/engine/trace/TraceExtraData;)Lcn/mucang/android/jiakaoyi/engine/trace/upload/UploadTraceApi$UploadTraceResult;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcn/mucang/android/core/api/exception/InternalException;,
            Lcn/mucang/android/core/api/exception/HttpException;,
            Lcn/mucang/android/core/api/exception/ApiException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lcn/mucang/android/core/api/upload/FileUploadApi;->getExtraParams()Ljava/util/Map;

    move-result-object v0

    .line 2
    invoke-static {}, Lcn/mucang/android/core/config/MucangConfig;->getContext()Landroid/app/Application;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Application;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcn/mucang/android/jiakaoyi/engine/R$string;->product:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "examSiteId"

    .line 3
    invoke-interface {v0, v2, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "mapDataMd5"

    .line 4
    invoke-interface {v0, v2, p3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "deviceNum"

    .line 5
    invoke-interface {v0, v2, p4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p4, "userId"

    .line 6
    invoke-interface {v0, p4, p5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p4, "time"

    .line 7
    invoke-interface {v0, p4, p6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p4, "endTime"

    .line 8
    invoke-interface {v0, p4, p7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p4, "product"

    .line 9
    invoke-interface {v0, p4, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p4, "trackVersion"

    const-string p7, "3"

    .line 10
    invoke-interface {v0, p4, p7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 11
    invoke-static {}, Lcn/mucang/android/account/AccountManager;->h()Lcn/mucang/android/account/AccountManager;

    move-result-object p4

    invoke-virtual {p4}, Lcn/mucang/android/account/AccountManager;->l()Z

    move-result p4

    const-string p7, "authToken"

    if-eqz p4, :cond_0

    .line 12
    invoke-static {}, Lcn/mucang/android/account/AccountManager;->h()Lcn/mucang/android/account/AccountManager;

    move-result-object p4

    invoke-virtual {p4}, Lcn/mucang/android/account/AccountManager;->g()Lcn/mucang/android/account/data/AuthUser;

    move-result-object p4

    invoke-virtual {p4}, Lcn/mucang/android/account/data/AuthUser;->getAuthToken()Ljava/lang/String;

    move-result-object p4

    invoke-interface {v0, p7, p4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 13
    :cond_0
    invoke-static {}, Lcn/mucang/android/jiakaoyi/framework/e/q;->a()Landroidx/lifecycle/z;

    move-result-object p4

    invoke-virtual {p4}, Landroidx/lifecycle/LiveData;->e()Ljava/lang/Object;

    move-result-object p4

    if-eqz p4, :cond_1

    .line 14
    invoke-static {}, Lcn/mucang/android/jiakaoyi/framework/e/q;->a()Landroidx/lifecycle/z;

    move-result-object p4

    invoke-virtual {p4}, Landroidx/lifecycle/LiveData;->e()Ljava/lang/Object;

    move-result-object p4

    invoke-interface {v0, p7, p4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    :goto_0
    const-string p4, "traceType"

    const-string p7, ""

    if-eqz p8, :cond_2

    .line 15
    iget-object p7, p8, Lcn/mucang/android/jiakaoyi/engine/trace/TraceExtraData;->xy:Ljava/lang/String;

    .line 16
    invoke-virtual {p8}, Lcn/mucang/android/jiakaoyi/engine/trace/TraceExtraData;->getType()I

    move-result p5

    invoke-static {p5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p5

    invoke-interface {v0, p4, p5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 17
    iget-object p4, p8, Lcn/mucang/android/jiakaoyi/engine/trace/TraceExtraData;->orderNo:Ljava/lang/String;

    const-string p5, "orderNo"

    invoke-interface {v0, p5, p4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 18
    iget-object p4, p8, Lcn/mucang/android/jiakaoyi/engine/trace/TraceExtraData;->costRecordId:Ljava/lang/String;

    const-string p5, "costRecordId"

    invoke-interface {v0, p5, p4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 19
    invoke-virtual {p8}, Lcn/mucang/android/jiakaoyi/engine/trace/TraceExtraData;->getPassScore()I

    move-result p4

    invoke-static {p4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p4

    const-string p5, "passScore"

    invoke-interface {v0, p5, p4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 20
    iget-object p4, p8, Lcn/mucang/android/jiakaoyi/engine/trace/TraceExtraData;->xy:Ljava/lang/String;

    const-string p5, "xy"

    invoke-interface {v0, p5, p4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 21
    iget-object p4, p8, Lcn/mucang/android/jiakaoyi/engine/trace/TraceExtraData;->studentId:Ljava/lang/String;

    const-string p5, "studentId"

    invoke-interface {v0, p5, p4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 22
    iget-object p4, p8, Lcn/mucang/android/jiakaoyi/engine/trace/TraceExtraData;->xyToken:Ljava/lang/String;

    const-string p5, "xyToken"

    invoke-interface {v0, p5, p4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 23
    iget-boolean p4, p8, Lcn/mucang/android/jiakaoyi/engine/trace/TraceExtraData;->valid:Z

    invoke-static {p4}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object p4

    const-string p5, "valid"

    invoke-interface {v0, p5, p4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 24
    iget-object p4, p8, Lcn/mucang/android/jiakaoyi/engine/trace/TraceExtraData;->posMapCode:Ljava/lang/String;

    const-string p5, "posCode"

    invoke-interface {v0, p5, p4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 25
    iget-object p4, p8, Lcn/mucang/android/jiakaoyi/engine/trace/TraceExtraData;->traceId:Ljava/lang/String;

    const-string p5, "clientContext"

    invoke-interface {v0, p5, p4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 26
    iget-object p4, p8, Lcn/mucang/android/jiakaoyi/engine/trace/TraceExtraData;->subCode:Ljava/lang/String;

    const-string p5, "loopTrainCode"

    invoke-interface {v0, p5, p4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 27
    iget-boolean p4, p8, Lcn/mucang/android/jiakaoyi/engine/trace/TraceExtraData;->guideMark:Z

    invoke-static {p4}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object p4

    const-string p5, "hasAiGuide"

    invoke-interface {v0, p5, p4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 28
    iget-object p4, p8, Lcn/mucang/android/jiakaoyi/engine/trace/TraceExtraData;->kemu:Ljava/lang/String;

    invoke-static {p4}, Lcn/mucang/android/core/utils/n0;->g(Ljava/lang/String;)Z

    move-result p4

    if-eqz p4, :cond_3

    .line 29
    iget-object p4, p8, Lcn/mucang/android/jiakaoyi/engine/trace/TraceExtraData;->kemu:Ljava/lang/String;

    const-string p5, "kemu"

    invoke-interface {v0, p5, p4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 30
    :cond_2
    new-instance p8, Ljava/lang/StringBuilder;

    invoke-direct {p8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\u8f68\u8ff9\u4e0a\u62a5 traceType \u7f3a\u5931\uff1a"

    invoke-virtual {p8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p8, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "-"

    invoke-virtual {p8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p8, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p8, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p8, p6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p5

    invoke-static {p5}, Lcn/mucang/android/jiakaoyi/framework/log/f;->o(Ljava/lang/Object;)V

    .line 31
    new-instance p5, Ljava/lang/StringBuilder;

    invoke-direct {p5}, Ljava/lang/StringBuilder;-><init>()V

    sget-object p6, Lcn/mucang/android/jiakaoyi/engine/trace/w;->r:Lcn/mucang/android/jiakaoyi/engine/trace/TraceExtraData;

    invoke-virtual {p6}, Lcn/mucang/android/jiakaoyi/engine/trace/TraceExtraData;->getType()I

    move-result p6

    invoke-virtual {p5, p6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p5, p7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p5

    invoke-interface {v0, p4, p5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 32
    :cond_3
    :goto_1
    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p4

    invoke-interface {p4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p4

    .line 33
    :cond_4
    :goto_2
    invoke-interface {p4}, Ljava/util/Iterator;->hasNext()Z

    move-result p5

    if-eqz p5, :cond_5

    .line 34
    invoke-interface {p4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p5

    check-cast p5, Ljava/util/Map$Entry;

    .line 35
    invoke-interface {p5}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p5

    check-cast p5, Ljava/lang/String;

    invoke-static {p5}, Lcn/mucang/android/core/utils/n0;->f(Ljava/lang/String;)Z

    move-result p5

    if-eqz p5, :cond_4

    .line 36
    invoke-interface {p4}, Ljava/util/Iterator;->remove()V

    goto :goto_2

    .line 37
    :cond_5
    invoke-static {p3}, Lcn/mucang/android/core/utils/n0;->e(Ljava/lang/String;)Z

    move-result p3

    if-eqz p3, :cond_6

    .line 38
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string p4, "\u5730\u56feMD5\u4e22\u5931\uff1a"

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, ",product:"

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, ",xy:"

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, ",version:"

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcn/mucang/android/core/utils/o0;->u()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Lcn/mucang/android/jiakaoyi/framework/log/f;->o(Ljava/lang/Object;)V

    .line 39
    :cond_6
    sget-object p2, Lcn/mucang/android/core/api/upload/FileUploadApi$FileType;->File:Lcn/mucang/android/core/api/upload/FileUploadApi$FileType;

    const-class p3, Lcn/mucang/android/jiakaoyi/engine/trace/upload/UploadTraceApi$UploadTraceResult;

    invoke-virtual {p0, p1, p2, p3}, Lcn/mucang/android/core/api/upload/FileUploadApi;->upload(Ljava/io/File;Lcn/mucang/android/core/api/upload/FileUploadApi$FileType;Ljava/lang/Class;)Lcn/mucang/android/core/api/upload/UploadResult;

    move-result-object p1

    check-cast p1, Lcn/mucang/android/jiakaoyi/engine/trace/upload/UploadTraceApi$UploadTraceResult;

    return-object p1
.end method

.method protected getApiHost()Ljava/lang/String;
    .locals 1

    .line 1
    invoke-static {}, Lcn/mucang/android/core/config/MucangConfig;->v()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "https://user-data-collection.ttt.mucang.cn"

    return-object v0

    :cond_0
    const-string v0, "https://udc.kakamobi.cn"

    return-object v0
.end method

.method public getSignKey()Ljava/lang/String;
    .locals 1

    const-string v0, "*#06#iXNqfHM9eJlxcJh9j316gqic"

    return-object v0
.end method

.method protected path()Ljava/lang/String;
    .locals 1

    const-string v0, "/api/open/track/upload"

    return-object v0
.end method
