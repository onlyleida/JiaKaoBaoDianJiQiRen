.class public Lcn/mucang/android/core/webview/tracker/d/c;
.super Lcn/mucang/android/core/api/a;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcn/mucang/android/core/api/a;-><init>()V

    return-void
.end method


# virtual methods
.method public b(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcn/mucang/android/core/webview/tracker/http/model/Track;",
            ">;)V"
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
    new-instance v0, Lcn/mucang/android/core/webview/tracker/http/model/TrackerPostModel;

    invoke-direct {v0}, Lcn/mucang/android/core/webview/tracker/http/model/TrackerPostModel;-><init>()V

    .line 2
    invoke-virtual {v0, p1}, Lcn/mucang/android/core/webview/tracker/http/model/TrackerPostModel;->setData(Ljava/util/List;)V

    .line 3
    invoke-static {p1}, Lcom/alibaba/fastjson/JSON;->toJSONString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "/api/internal/click/statistics.htm"

    invoke-virtual {p0, v0, p1}, Lcn/mucang/android/core/api/a;->httpPostEncrypted(Ljava/lang/String;Ljava/lang/String;)Lcn/mucang/android/core/api/ApiResponse;

    return-void
.end method

.method protected getApiHost()Ljava/lang/String;
    .locals 1

    const-string v0, "https://open-res.kakamobi.cn"

    return-object v0
.end method

.method protected getSignKey()Ljava/lang/String;
    .locals 1

    const-string v0, "*#06#epVJa5N5iKN2dm6PeKN5g4Ju"

    return-object v0
.end method
