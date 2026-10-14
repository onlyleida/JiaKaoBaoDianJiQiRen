.class public Lcn/mucang/android/core/webview/tracker/d/a;
.super Lcn/mucang/android/core/api/cache/b;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcn/mucang/android/core/api/cache/b;-><init>()V

    return-void
.end method


# virtual methods
.method public b()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    :try_start_0
    const-string v0, "/api/open/v3/stat/url-list.htm"

    .line 1
    invoke-virtual {p0, v0}, Lcn/mucang/android/core/api/cache/b;->httpGet(Ljava/lang/String;)Lcn/mucang/android/core/api/ApiResponse;

    move-result-object v0

    .line 2
    const-class v1, Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcn/mucang/android/core/api/ApiResponse;->getDataArray(Ljava/lang/Class;)Ljava/util/List;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    const-string v1, "e"

    .line 3
    invoke-static {v1, v0}, Lcn/mucang/android/core/utils/t;->c(Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 v0, 0x0

    return-object v0
.end method

.method protected getApiHost()Ljava/lang/String;
    .locals 1

    const-string v0, "https://789.kakamobi.cn"

    return-object v0
.end method

.method protected getSignKey()Ljava/lang/String;
    .locals 1

    const-string v0, "advert.mucang.tech"

    return-object v0
.end method
