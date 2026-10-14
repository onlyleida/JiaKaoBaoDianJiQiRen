.class public Lcn/mucang/android/jiakaoyi/mapcollect/collect/w0/a;
.super Lcn/mucang/android/jiakaoyi/framework/e/d;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcn/mucang/android/jiakaoyi/framework/e/d;-><init>()V

    return-void
.end method


# virtual methods
.method public m(I)Z
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcn/mucang/android/core/api/exception/InternalException;,
            Lcn/mucang/android/core/api/exception/ApiException;,
            Lcn/mucang/android/core/api/exception/HttpException;
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "/api/open/car-body/add-to-my-car.htm?id="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcn/mucang/android/jiakaoyi/framework/e/n;->httpGet(Ljava/lang/String;)Lcn/mucang/android/core/api/ApiResponse;

    move-result-object p1

    invoke-virtual {p1}, Lcn/mucang/android/core/api/ApiResponse;->isSuccess()Z

    move-result p1

    return p1
.end method

.method public n(Lcn/mucang/android/jiakaoyi/mapcollect/collect/model/HpCarMapModel;)Z
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcn/mucang/android/core/api/exception/InternalException;,
            Lcn/mucang/android/core/api/exception/ApiException;,
            Lcn/mucang/android/core/api/exception/HttpException;
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 2
    new-instance v1, Lcn/mucang/android/core/http/MucangNameValuePair;

    iget-object v2, p1, Lcn/mucang/android/jiakaoyi/mapcollect/collect/model/HpCarMapModel;->bodyData:Ljava/lang/String;

    const-string v3, "bodyData"

    invoke-direct {v1, v3, v2}, Lcn/mucang/android/core/http/MucangNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 3
    new-instance v1, Lcn/mucang/android/core/http/MucangNameValuePair;

    iget-object v2, p1, Lcn/mucang/android/jiakaoyi/mapcollect/collect/model/HpCarMapModel;->modelCode:Ljava/lang/String;

    const-string v3, "modelCode"

    invoke-direct {v1, v3, v2}, Lcn/mucang/android/core/http/MucangNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 4
    new-instance v1, Lcn/mucang/android/core/http/MucangNameValuePair;

    const-string v2, "isProxy"

    const-string v3, "true"

    invoke-direct {v1, v2, v3}, Lcn/mucang/android/core/http/MucangNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 5
    new-instance v1, Lcn/mucang/android/core/http/MucangNameValuePair;

    iget-object v2, p1, Lcn/mucang/android/jiakaoyi/mapcollect/collect/model/HpCarMapModel;->describe:Ljava/lang/String;

    const-string v3, "describe"

    invoke-direct {v1, v3, v2}, Lcn/mucang/android/core/http/MucangNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 6
    iget-wide v1, p1, Lcn/mucang/android/jiakaoyi/mapcollect/collect/model/HpCarMapModel;->id:J

    const-wide/16 v3, 0x0

    cmp-long p1, v1, v3

    if-lez p1, :cond_0

    .line 7
    new-instance p1, Lcn/mucang/android/core/http/MucangNameValuePair;

    invoke-static {v1, v2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    const-string v2, "id"

    invoke-direct {p1, v2, v1}, Lcn/mucang/android/core/http/MucangNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    const-string p1, "/api/open/owner/car-body/save.htm"

    .line 8
    invoke-virtual {p0, p1, v0}, Lcn/mucang/android/jiakaoyi/framework/e/n;->httpPost(Ljava/lang/String;Ljava/util/List;)Lcn/mucang/android/core/api/ApiResponse;

    move-result-object p1

    invoke-virtual {p1}, Lcn/mucang/android/core/api/ApiResponse;->isSuccess()Z

    move-result p1

    return p1
.end method

.method public o(Ljava/lang/String;)Z
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcn/mucang/android/core/api/exception/InternalException;,
            Lcn/mucang/android/core/api/exception/ApiException;,
            Lcn/mucang/android/core/api/exception/HttpException;
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 2
    new-instance v1, Lcn/mucang/android/core/http/MucangNameValuePair;

    const-string v2, "id"

    invoke-direct {v1, v2, p1}, Lcn/mucang/android/core/http/MucangNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string p1, "/api/open/owner/car-body/delete-by-id.htm"

    .line 3
    invoke-virtual {p0, p1, v0}, Lcn/mucang/android/jiakaoyi/framework/e/n;->httpPost(Ljava/lang/String;Ljava/util/List;)Lcn/mucang/android/core/api/ApiResponse;

    move-result-object p1

    invoke-virtual {p1}, Lcn/mucang/android/core/api/ApiResponse;->isSuccess()Z

    move-result p1

    return p1
.end method

.method public p(Ljava/lang/String;)Z
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcn/mucang/android/core/api/exception/InternalException;,
            Lcn/mucang/android/core/api/exception/ApiException;,
            Lcn/mucang/android/core/api/exception/HttpException;
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 2
    new-instance v1, Lcn/mucang/android/core/http/MucangNameValuePair;

    const-string v2, "id"

    invoke-direct {v1, v2, p1}, Lcn/mucang/android/core/http/MucangNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string p1, "/api/open/car-body/delete.htm"

    .line 3
    invoke-virtual {p0, p1, v0}, Lcn/mucang/android/jiakaoyi/framework/e/n;->httpPost(Ljava/lang/String;Ljava/util/List;)Lcn/mucang/android/core/api/ApiResponse;

    move-result-object p1

    invoke-virtual {p1}, Lcn/mucang/android/core/api/ApiResponse;->isSuccess()Z

    move-result p1

    return p1
.end method

.method public q(I)Z
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcn/mucang/android/core/api/exception/InternalException;,
            Lcn/mucang/android/core/api/exception/ApiException;,
            Lcn/mucang/android/core/api/exception/HttpException;
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "/api/open/owner/car-body/add-to-my-car.htm?id="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcn/mucang/android/jiakaoyi/framework/e/n;->httpGet(Ljava/lang/String;)Lcn/mucang/android/core/api/ApiResponse;

    move-result-object p1

    invoke-virtual {p1}, Lcn/mucang/android/core/api/ApiResponse;->isSuccess()Z

    move-result p1

    return p1
.end method

.method public r(Ljava/lang/String;I)Lcn/mucang/android/core/api/d/b;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I)",
            "Lcn/mucang/android/core/api/d/b<",
            "Lcn/mucang/android/jiakaoyi/mapcollect/collect/model/HpCarMapModel;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcn/mucang/android/core/api/exception/InternalException;,
            Lcn/mucang/android/core/api/exception/ApiException;,
            Lcn/mucang/android/core/api/exception/HttpException;
        }
    .end annotation

    .line 1
    new-instance v0, Lcn/mucang/android/core/api/d/a;

    invoke-direct {v0}, Lcn/mucang/android/core/api/d/a;-><init>()V

    .line 2
    invoke-virtual {v0, p1}, Lcn/mucang/android/core/api/d/a;->c(Ljava/lang/String;)V

    .line 3
    new-instance p1, Ljava/lang/StringBuilder;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "/api/open/owner/car-body/list.htm?status="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-class p2, Lcn/mucang/android/jiakaoyi/mapcollect/collect/model/HpCarMapModel;

    invoke-virtual {p0, p1, v0, p2}, Lcn/mucang/android/jiakaoyi/framework/e/n;->httpGetFetchMoreResponse(Ljava/lang/StringBuilder;Lcn/mucang/android/core/api/d/a;Ljava/lang/Class;)Lcn/mucang/android/core/api/d/b;

    move-result-object p1

    return-object p1
.end method

.method public s()Lcn/mucang/android/jiakaoyi/mapcollect/collect/model/HpCarMapModel;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcn/mucang/android/core/api/exception/InternalException;,
            Lcn/mucang/android/core/api/exception/ApiException;,
            Lcn/mucang/android/core/api/exception/HttpException;
        }
    .end annotation

    .line 1
    const-class v0, Lcn/mucang/android/jiakaoyi/mapcollect/collect/model/HpCarMapModel;

    const-string v1, "/api/open/owner/car-body/my-car-data.htm"

    invoke-virtual {p0, v1, v0}, Lcn/mucang/android/jiakaoyi/framework/e/n;->httpGetData(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcn/mucang/android/jiakaoyi/mapcollect/collect/model/HpCarMapModel;

    return-object v0
.end method

.method public t(Ljava/lang/String;I)Lcn/mucang/android/core/api/d/b;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I)",
            "Lcn/mucang/android/core/api/d/b<",
            "Lcn/mucang/android/jiakaoyi/mapcollect/collect/model/HpCarMapModel;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcn/mucang/android/core/api/exception/InternalException;,
            Lcn/mucang/android/core/api/exception/ApiException;,
            Lcn/mucang/android/core/api/exception/HttpException;
        }
    .end annotation

    .line 1
    new-instance v0, Lcn/mucang/android/core/api/d/a;

    invoke-direct {v0}, Lcn/mucang/android/core/api/d/a;-><init>()V

    .line 2
    invoke-virtual {v0, p1}, Lcn/mucang/android/core/api/d/a;->c(Ljava/lang/String;)V

    .line 3
    new-instance p1, Ljava/lang/StringBuilder;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "/api/open/car-body/list.htm?status="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-class p2, Lcn/mucang/android/jiakaoyi/mapcollect/collect/model/HpCarMapModel;

    invoke-virtual {p0, p1, v0, p2}, Lcn/mucang/android/jiakaoyi/framework/e/n;->httpGetFetchMoreResponse(Ljava/lang/StringBuilder;Lcn/mucang/android/core/api/d/a;Ljava/lang/Class;)Lcn/mucang/android/core/api/d/b;

    move-result-object p1

    return-object p1
.end method

.method public u(II)Z
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcn/mucang/android/core/api/exception/InternalException;,
            Lcn/mucang/android/core/api/exception/ApiException;,
            Lcn/mucang/android/core/api/exception/HttpException;
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "/api/open/car-body/set-official-data.htm?id="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, "&status="

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcn/mucang/android/jiakaoyi/framework/e/n;->httpGet(Ljava/lang/String;)Lcn/mucang/android/core/api/ApiResponse;

    move-result-object p1

    invoke-virtual {p1}, Lcn/mucang/android/core/api/ApiResponse;->isSuccess()Z

    move-result p1

    return p1
.end method
