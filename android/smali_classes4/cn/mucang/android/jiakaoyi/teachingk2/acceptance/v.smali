.class public final Lcn/mucang/android/jiakaoyi/teachingk2/acceptance/v;
.super Lcn/mucang/android/jiakaoyi/framework/e/l;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00006\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\t\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0006\u0018\u00002\u00020\u0001B\u0005\u00a2\u0006\u0002\u0010\u0002J\u0014\u0010\u0003\u001a\u0008\u0012\u0004\u0012\u00020\u00050\u00042\u0006\u0010\u0006\u001a\u00020\u0007J\u001c\u0010\u0008\u001a\u0008\u0012\u0004\u0012\u00020\t0\u00042\u0006\u0010\n\u001a\u00020\u000b2\u0006\u0010\u0006\u001a\u00020\u0007J\u000c\u0010\u000c\u001a\u0008\u0012\u0004\u0012\u00020\r0\u0004J@\u0010\u000e\u001a\u00020\u000f2\u0006\u0010\n\u001a\u00020\u000b2\u0008\u0010\u0010\u001a\u0004\u0018\u00010\u000f2\u0006\u0010\u0011\u001a\u00020\u000f2\u0006\u0010\u0012\u001a\u00020\u00072\u0006\u0010\u0013\u001a\u00020\u00072\u0006\u0010\u0014\u001a\u00020\u000f2\u0006\u0010\u0006\u001a\u00020\u0007\u00a8\u0006\u0015"
    }
    d2 = {
        "Lcn/mucang/android/jiakaoyi/teachingk2/acceptance/AcceptanceApi;",
        "Lcn/mucang/android/jiakaoyi/framework/api/BaseWorkOrderApi;",
        "()V",
        "getAcceptanceList",
        "",
        "Lcn/mucang/android/jiakaoyi/teachingk2/acceptance/AcceptanceModel;",
        "workOrderId",
        "",
        "getChildList",
        "Lcn/mucang/android/jiakaoyi/teachingk2/acceptance/AcceptanceChildModel;",
        "module",
        "Lcn/mucang/android/jiakaoyi/teachingk2/acceptance/AcceptanceModule;",
        "getWorkOrderList",
        "Lcn/mucang/android/jiakaoyi/teachingk2/acceptance/WorkOrderModel;",
        "submitAcceptance",
        "",
        "subType",
        "content",
        "startTime",
        "endTime",
        "trackId",
        "TeachingK2_release"
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
    .locals 4

    .line 1
    invoke-direct {p0}, Lcn/mucang/android/jiakaoyi/framework/e/l;-><init>()V

    .line 2
    invoke-virtual {p0}, Lcn/mucang/android/jiakaoyi/framework/e/n;->b()V

    .line 3
    invoke-virtual {p0}, Lcn/mucang/android/jiakaoyi/framework/e/n;->getExtraParams()Ljava/util/Map;

    move-result-object v0

    const-string v1, "extraParams"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/r;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const-wide/16 v2, 0x0

    invoke-static {v2, v3}, Lcn/mucang/jiakaoyi/uilib/s/j;->e(J)J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    const-string v3, "examSiteId"

    invoke-interface {v0, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    invoke-virtual {p0}, Lcn/mucang/android/jiakaoyi/framework/e/n;->getExtraParams()Ljava/util/Map;

    move-result-object v0

    invoke-static {v0, v1}, Lkotlin/jvm/internal/r;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {}, Lcn/mucang/android/jiakaoyi/signal/utils/f;->a()I

    move-result v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    const-string v3, "gearType"

    invoke-interface {v0, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 5
    invoke-virtual {p0}, Lcn/mucang/android/jiakaoyi/framework/e/n;->getExtraParams()Ljava/util/Map;

    move-result-object v0

    invoke-static {v0, v1}, Lkotlin/jvm/internal/r;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {}, Lcn/mucang/android/jiakaoyi/signal/car/d;->g()Ljava/lang/String;

    move-result-object v1

    const-string v2, "carCode"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final m(J)Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J)",
            "Ljava/util/List<",
            "Lcn/mucang/android/jiakaoyi/teachingk2/acceptance/AcceptanceModel;",
            ">;"
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lcn/mucang/android/jiakaoyi/framework/e/n;->getExtraParams()Ljava/util/Map;

    move-result-object v0

    const-string v1, "extraParams"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/r;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object p1

    const-string p2, "workOrderId"

    invoke-interface {v0, p2, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p1, "/api/admin/acceptance-result/get-project-list.htm"

    .line 2
    invoke-virtual {p0, p1}, Lcn/mucang/android/jiakaoyi/framework/e/n;->httpGet(Ljava/lang/String;)Lcn/mucang/android/core/api/ApiResponse;

    move-result-object p1

    const-class p2, Lcn/mucang/android/jiakaoyi/teachingk2/acceptance/AcceptanceModel;

    invoke-virtual {p1, p2}, Lcn/mucang/android/core/api/ApiResponse;->getDataArray(Ljava/lang/Class;)Ljava/util/List;

    move-result-object p1

    const-string p2, "httpGet(\"/api/admin/acce\u2026del::class.java\n        )"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/r;->d(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p1
.end method

.method public final n(Lcn/mucang/android/jiakaoyi/teachingk2/acceptance/AcceptanceModule;J)Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcn/mucang/android/jiakaoyi/teachingk2/acceptance/AcceptanceModule;",
            "J)",
            "Ljava/util/List<",
            "Lcn/mucang/android/jiakaoyi/teachingk2/acceptance/AcceptanceChildModel;",
            ">;"
        }
    .end annotation

    const-string v0, "module"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-virtual {p0}, Lcn/mucang/android/jiakaoyi/framework/e/n;->getExtraParams()Ljava/util/Map;

    move-result-object v0

    const-string v1, "extraParams"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/r;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p2, p3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object p2

    const-string p3, "workOrderId"

    invoke-interface {v0, p3, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    invoke-virtual {p1}, Lcn/mucang/android/jiakaoyi/teachingk2/acceptance/AcceptanceModule;->getType()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const-string p2, "/api/admin/acceptance-result/find-by-type.htm?type="

    invoke-static {p2, p1}, Lkotlin/jvm/internal/r;->m(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcn/mucang/android/jiakaoyi/framework/e/n;->httpGet(Ljava/lang/String;)Lcn/mucang/android/core/api/ApiResponse;

    move-result-object p1

    const-class p2, Lcn/mucang/android/jiakaoyi/teachingk2/acceptance/AcceptanceChildModel;

    invoke-virtual {p1, p2}, Lcn/mucang/android/core/api/ApiResponse;->getDataArray(Ljava/lang/Class;)Ljava/util/List;

    move-result-object p1

    const-string p2, "httpGet(\"/api/admin/acce\u2026del::class.java\n        )"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/r;->d(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p1
.end method

.method public final o()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcn/mucang/android/jiakaoyi/teachingk2/acceptance/WorkOrderModel;",
            ">;"
        }
    .end annotation

    const-string v0, "/api/admin/acceptance-result/get-acceptance-work-order-list.htm"

    .line 1
    invoke-virtual {p0, v0}, Lcn/mucang/android/jiakaoyi/framework/e/n;->httpGet(Ljava/lang/String;)Lcn/mucang/android/core/api/ApiResponse;

    move-result-object v0

    const-class v1, Lcn/mucang/android/jiakaoyi/teachingk2/acceptance/WorkOrderModel;

    invoke-virtual {v0, v1}, Lcn/mucang/android/core/api/ApiResponse;->getDataArray(Ljava/lang/Class;)Ljava/util/List;

    move-result-object v0

    const-string v1, "httpGet(\"/api/admin/acce\u2026del::class.java\n        )"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/r;->d(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v0
.end method

.method public final p(Lcn/mucang/android/jiakaoyi/teachingk2/acceptance/AcceptanceModule;Ljava/lang/String;Ljava/lang/String;JJLjava/lang/String;J)Ljava/lang/String;
    .locals 4

    const-string v0, "module"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "content"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "trackId"

    invoke-static {p8, v1}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-virtual {p0}, Lcn/mucang/android/jiakaoyi/framework/e/n;->getExtraParams()Ljava/util/Map;

    move-result-object v2

    const-string v3, "extraParams"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/r;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p9, p10}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object p9

    const-string p10, "workOrderId"

    invoke-interface {v2, p10, p9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    new-instance p9, Ljava/util/ArrayList;

    invoke-direct {p9}, Ljava/util/ArrayList;-><init>()V

    .line 3
    new-instance p10, Lcn/mucang/android/core/http/MucangNameValuePair;

    invoke-direct {p10, v0, p3}, Lcn/mucang/android/core/http/MucangNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {p9, p10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 4
    new-instance p3, Lcn/mucang/android/core/http/MucangNameValuePair;

    invoke-direct {p3, v1, p8}, Lcn/mucang/android/core/http/MucangNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {p9, p3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 5
    new-instance p3, Lcn/mucang/android/core/http/MucangNameValuePair;

    invoke-static {p4, p5}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object p4

    const-string p5, "startTime"

    invoke-direct {p3, p5, p4}, Lcn/mucang/android/core/http/MucangNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {p9, p3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 6
    new-instance p3, Lcn/mucang/android/core/http/MucangNameValuePair;

    invoke-static {p6, p7}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object p4

    const-string p5, "endTime"

    invoke-direct {p3, p5, p4}, Lcn/mucang/android/core/http/MucangNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {p9, p3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 7
    new-instance p3, Lcn/mucang/android/core/http/MucangNameValuePair;

    sget-object p4, Lcn/mucang/android/jiakaoyi/engine/model/KeMu;->K2:Lcn/mucang/android/jiakaoyi/engine/model/KeMu;

    const-wide/16 p5, 0x0

    const/4 p7, 0x2

    const/4 p8, 0x0

    invoke-static {p4, p5, p6, p7, p8}, Lcn/mucang/jiakaoyi/uilib/s/j;->o(Lcn/mucang/android/jiakaoyi/engine/model/KeMu;JILjava/lang/Object;)J

    move-result-wide p4

    invoke-static {p4, p5}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object p4

    const-string p5, "ruleId"

    invoke-direct {p3, p5, p4}, Lcn/mucang/android/core/http/MucangNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {p9, p3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 8
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string p4, "/api/admin/acceptance-result/submit.htm?type="

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcn/mucang/android/jiakaoyi/teachingk2/acceptance/AcceptanceModule;->getType()I

    move-result p1

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, "&subType="

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 9
    invoke-virtual {p0, p1, p9}, Lcn/mucang/android/jiakaoyi/framework/e/n;->httpPost(Ljava/lang/String;Ljava/util/List;)Lcn/mucang/android/core/api/ApiResponse;

    move-result-object p1

    .line 10
    invoke-virtual {p1}, Lcn/mucang/android/core/api/ApiResponse;->isSuccess()Z

    move-result p2

    if-eqz p2, :cond_0

    .line 11
    invoke-virtual {p1}, Lcn/mucang/android/core/api/ApiResponse;->getData()Lcom/alibaba/fastjson/JSONObject;

    move-result-object p1

    const-string p2, "reportUrl"

    invoke-virtual {p1, p2}, Lcom/alibaba/fastjson/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string p2, "response.data.getString(\"reportUrl\")"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/r;->d(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p1

    :cond_0
    const-string p1, ""

    return-object p1
.end method
