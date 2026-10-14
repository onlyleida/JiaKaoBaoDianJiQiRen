.class public final Lcn/mucang/jiakaoyi/uilib/i/j;
.super Lcn/mucang/android/jiakaoyi/framework/e/n;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00006\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0002\n\u0002\u0010 \n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0005\u0018\u00002\u00020\u0001B\u0005\u00a2\u0006\u0002\u0010\u0002J\u0008\u0010\u0003\u001a\u00020\u0004H\u0014J\u0008\u0010\u0005\u001a\u0004\u0018\u00010\u0006J\u0018\u0010\u0007\u001a\u0004\u0018\u00010\u00082\u0006\u0010\t\u001a\u00020\n2\u0006\u0010\u000b\u001a\u00020\nJ2\u0010\u000c\u001a\u0008\u0012\u0004\u0012\u00020\u00080\r2\u0008\u0010\u000e\u001a\u0004\u0018\u00010\u00082\u0006\u0010\u000f\u001a\u00020\u00102\u0008\u0008\u0002\u0010\u0011\u001a\u00020\u00062\u0008\u0008\u0002\u0010\u0012\u001a\u00020\nJ\u000e\u0010\u0013\u001a\u00020\u00042\u0006\u0010\u0014\u001a\u00020\u0004\u00a8\u0006\u0015"
    }
    d2 = {
        "Lcn/mucang/jiakaoyi/uilib/api/OnlyJkyApi;",
        "Lcn/mucang/android/jiakaoyi/framework/api/JBaseApi;",
        "()V",
        "forceUseJkyHost",
        "",
        "getAreaCode",
        "",
        "getRobotUpgradeInfo",
        "Lcn/mucang/android/jiakaoyi/signal/upgrade/model/UpgradeInfoModel;",
        "type",
        "",
        "localVersion",
        "reportUpgradeResult",
        "",
        "info",
        "extraInfo",
        "Lcn/mucang/android/jiakaoyi/signal/upgrade/model/UpgradeUploadModel;",
        "uuid",
        "updateProgress",
        "setHighGps",
        "isHighGps",
        "uilib_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x5,
        0x1
    }
    xi = 0x30
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcn/mucang/android/jiakaoyi/framework/e/n;-><init>()V

    return-void
.end method


# virtual methods
.method protected c()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public final m(Lcn/mucang/android/jiakaoyi/signal/upgrade/model/UpgradeInfoModel;Lcn/mucang/android/jiakaoyi/signal/upgrade/model/UpgradeUploadModel;Ljava/lang/String;I)Ljava/util/List;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcn/mucang/android/jiakaoyi/signal/upgrade/model/UpgradeInfoModel;",
            "Lcn/mucang/android/jiakaoyi/signal/upgrade/model/UpgradeUploadModel;",
            "Ljava/lang/String;",
            "I)",
            "Ljava/util/List<",
            "Lcn/mucang/android/jiakaoyi/signal/upgrade/model/UpgradeInfoModel;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcn/mucang/android/core/api/exception/ApiException;,
            Lcn/mucang/android/core/api/exception/HttpException;,
            Lcn/mucang/android/core/api/exception/InternalException;
        }
    .end annotation

    const-string v0, "extraInfo"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "uuid"

    invoke-static {p3, v1}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const/16 v2, 0x8

    new-array v2, v2, [Lcn/mucang/android/core/http/MucangNameValuePair;

    .line 1
    new-instance v3, Lcn/mucang/android/core/http/MucangNameValuePair;

    const/4 v4, 0x0

    if-nez p1, :cond_0

    move-object v5, v4

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Lcn/mucang/android/jiakaoyi/signal/upgrade/model/UpgradeInfoModel;->getId()J

    move-result-wide v5

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    :goto_0
    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    const-string v6, "id"

    invoke-direct {v3, v6, v5}, Lcn/mucang/android/core/http/MucangNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v5, 0x0

    aput-object v3, v2, v5

    const/4 v3, 0x1

    .line 2
    new-instance v5, Lcn/mucang/android/core/http/MucangNameValuePair;

    if-nez p1, :cond_1

    move-object v6, v4

    goto :goto_1

    :cond_1
    invoke-virtual {p1}, Lcn/mucang/android/jiakaoyi/signal/upgrade/model/UpgradeInfoModel;->getHardwareVer()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    :goto_1
    invoke-static {v6}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    const-string v7, "hardwareVer"

    invoke-direct {v5, v7, v6}, Lcn/mucang/android/core/http/MucangNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v5, v2, v3

    const/4 v3, 0x2

    .line 3
    new-instance v5, Lcn/mucang/android/core/http/MucangNameValuePair;

    if-nez p1, :cond_2

    move-object v6, v4

    goto :goto_2

    :cond_2
    invoke-virtual {p1}, Lcn/mucang/android/jiakaoyi/signal/upgrade/model/UpgradeInfoModel;->getType()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    :goto_2
    invoke-static {v6}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    const-string v7, "type"

    invoke-direct {v5, v7, v6}, Lcn/mucang/android/core/http/MucangNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v5, v2, v3

    const/4 v3, 0x3

    .line 4
    new-instance v5, Lcn/mucang/android/core/http/MucangNameValuePair;

    if-nez p1, :cond_3

    move-object v6, v4

    goto :goto_3

    :cond_3
    invoke-virtual {p1}, Lcn/mucang/android/jiakaoyi/signal/upgrade/model/UpgradeInfoModel;->getVersion()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    :goto_3
    invoke-static {v6}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    const-string v7, "version"

    invoke-direct {v5, v7, v6}, Lcn/mucang/android/core/http/MucangNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v5, v2, v3

    const/4 v3, 0x4

    .line 5
    new-instance v5, Lcn/mucang/android/core/http/MucangNameValuePair;

    if-nez p1, :cond_4

    goto :goto_4

    :cond_4
    invoke-virtual {p1}, Lcn/mucang/android/jiakaoyi/signal/upgrade/model/UpgradeInfoModel;->getModelCode()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    :goto_4
    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const-string v4, "modelCode"

    invoke-direct {v5, v4, p1}, Lcn/mucang/android/core/http/MucangNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v5, v2, v3

    const/4 p1, 0x5

    .line 6
    new-instance v3, Lcn/mucang/android/core/http/MucangNameValuePair;

    invoke-static {p2}, Lcom/alibaba/fastjson/JSON;->toJSONString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-direct {v3, v0, p2}, Lcn/mucang/android/core/http/MucangNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v3, v2, p1

    const/4 p1, 0x6

    .line 7
    new-instance p2, Lcn/mucang/android/core/http/MucangNameValuePair;

    invoke-direct {p2, v1, p3}, Lcn/mucang/android/core/http/MucangNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object p2, v2, p1

    const/4 p1, 0x7

    .line 8
    new-instance p2, Lcn/mucang/android/core/http/MucangNameValuePair;

    invoke-static {p4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p3

    const-string p4, "updateProgress"

    invoke-direct {p2, p4, p3}, Lcn/mucang/android/core/http/MucangNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object p2, v2, p1

    .line 9
    invoke-static {v2}, Lkotlin/collections/s;->m([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    const-string p2, "/api/open/update/sync-result-or-rollback.htm"

    .line 10
    invoke-virtual {p0, p2, p1}, Lcn/mucang/android/jiakaoyi/framework/e/n;->httpPost(Ljava/lang/String;Ljava/util/List;)Lcn/mucang/android/core/api/ApiResponse;

    move-result-object p1

    const-class p2, Lcn/mucang/android/jiakaoyi/signal/upgrade/model/UpgradeInfoModel;

    .line 11
    invoke-virtual {p1, p2}, Lcn/mucang/android/core/api/ApiResponse;->getDataArray(Ljava/lang/Class;)Ljava/util/List;

    move-result-object p1

    const-string p2, "httpPost(\n            \"/\u2026adeInfoModel::class.java)"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/r;->d(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p1
.end method
