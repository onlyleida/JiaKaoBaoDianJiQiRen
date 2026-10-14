.class public final Lcn/mucang/android/jiakaoyi/k3setting/order/z1;
.super Lcn/mucang/android/jiakaoyi/framework/e/d;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\\\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\t\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0007\u0018\u00002\u00020\u0001B\u0005\u00a2\u0006\u0002\u0010\u0002J\u0016\u0010\u0005\u001a\u00020\u00062\u0006\u0010\u0007\u001a\u00020\u00082\u0006\u0010\t\u001a\u00020\u0008J\u000e\u0010\n\u001a\u00020\u00062\u0006\u0010\u000b\u001a\u00020\u000cJ\u0016\u0010\r\u001a\u00020\u00082\u000c\u0010\u000e\u001a\u0008\u0012\u0004\u0012\u00020\u00100\u000fH\u0002J\u0016\u0010\u0011\u001a\u0008\u0012\u0004\u0012\u00020\u00120\u000f2\u0006\u0010\u000b\u001a\u00020\u000cH\u0002J\u000e\u0010\u0013\u001a\u00020\u00062\u0006\u0010\u0014\u001a\u00020\u0015J\u000e\u0010\u0016\u001a\u00020\u00062\u0006\u0010\u0014\u001a\u00020\u0017J\u001e\u0010\u0018\u001a\u00020\u00062\u0006\u0010\u0019\u001a\u00020\u00152\u0006\u0010\u0007\u001a\u00020\u00082\u0006\u0010\t\u001a\u00020\u0008J\u000e\u0010\u001a\u001a\u00020\u00062\u0006\u0010\u000b\u001a\u00020\u000cJ\u0014\u0010\u001b\u001a\u0008\u0012\u0004\u0012\u00020\u000c0\u000f2\u0006\u0010\u0019\u001a\u00020\u0015J\u0014\u0010\u001c\u001a\u0008\u0012\u0004\u0012\u00020\u001e0\u001d2\u0006\u0010\u001f\u001a\u00020\u0008J\u000c\u0010 \u001a\u0008\u0012\u0004\u0012\u00020!0\u000fJ\u001d\u0010\"\u001a\u0008\u0012\u0004\u0012\u00020\u000c0\u000f2\n\u0008\u0002\u0010\u0019\u001a\u0004\u0018\u00010\u0015\u00a2\u0006\u0002\u0010#J\u000c\u0010$\u001a\u0008\u0012\u0004\u0012\u00020\u001e0\u000fJ\u000e\u0010%\u001a\u00020\u00062\u0006\u0010\t\u001a\u00020\u0008J\u0006\u0010&\u001a\u00020\u0006J\u000e\u0010\'\u001a\u00020\u00062\u0006\u0010\t\u001a\u00020\u0008R\u0010\u0010\u0003\u001a\u0004\u0018\u00010\u0004X\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006("
    }
    d2 = {
        "Lcn/mucang/android/jiakaoyi/k3setting/order/LightApi;",
        "Lcn/mucang/android/jiakaoyi/framework/api/BaseDeviceManagerApi;",
        "()V",
        "examSite",
        "Lcn/mucang/jiakaoyi/uilib/model/ExamSiteModel;",
        "addAssemble",
        "",
        "name",
        "",
        "ids",
        "addLightOrder",
        "model",
        "Lcn/mucang/android/jiakaoyi/exam/k3/light/LightExamModel;",
        "buildLightIds",
        "lights",
        "",
        "Lcn/mucang/android/jiakaoyi/signal/center/model/Light;",
        "buildParams",
        "Lcn/mucang/android/core/http/MucangNameValuePair;",
        "deleteAssemble",
        "id",
        "",
        "deleteLight",
        "",
        "editAssemble",
        "assembleId",
        "editLight",
        "getAssembleOrders",
        "getAssembles",
        "Lcn/mucang/android/core/api/fetch/FetchMoreResponse;",
        "Lcn/mucang/android/jiakaoyi/exam/k3/light/LightAssembleModel;",
        "cursor",
        "getLightOrderStandards",
        "Lcn/mucang/android/jiakaoyi/exam/k3/light/LightOrderStandard;",
        "getLights",
        "(Ljava/lang/Long;)Ljava/util/List;",
        "getTestAssembles",
        "orderAssembles",
        "resetAssemblesAndLights",
        "saveLightsSort",
        "k3setting_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x5,
        0x1
    }
    xi = 0x30
.end annotation


# instance fields
.field private final e:Lcn/mucang/jiakaoyi/uilib/model/ExamSiteModel;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcn/mucang/android/jiakaoyi/framework/e/d;-><init>()V

    .line 2
    invoke-static {}, Lcn/mucang/jiakaoyi/uilib/s/j;->d()Lcn/mucang/jiakaoyi/uilib/model/ExamSiteModel;

    move-result-object v0

    iput-object v0, p0, Lcn/mucang/android/jiakaoyi/k3setting/order/z1;->e:Lcn/mucang/jiakaoyi/uilib/model/ExamSiteModel;

    return-void
.end method

.method private final o(Ljava/util/List;)Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "+",
            "Lcn/mucang/android/jiakaoyi/signal/center/model/Light;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 2
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcn/mucang/android/jiakaoyi/signal/center/model/Light;

    .line 3
    iget v1, v1, Lcn/mucang/android/jiakaoyi/signal/center/model/Light;->lightId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ","

    .line 4
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 5
    :cond_0
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "sb.toString()"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->d(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p1
.end method

.method private final p(Lcn/mucang/android/jiakaoyi/exam/k3/light/LightExamModel;)Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcn/mucang/android/jiakaoyi/exam/k3/light/LightExamModel;",
            ")",
            "Ljava/util/List<",
            "Lcn/mucang/android/core/http/MucangNameValuePair;",
            ">;"
        }
    .end annotation

    const/16 v0, 0xc

    new-array v0, v0, [Lcn/mucang/android/core/http/MucangNameValuePair;

    .line 1
    new-instance v1, Lcn/mucang/android/core/http/MucangNameValuePair;

    iget v2, p1, Lcn/mucang/android/jiakaoyi/exam/k3/light/LightExamModel;->examProgramId:I

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    const-string v3, "examProgramId"

    invoke-direct {v1, v3, v2}, Lcn/mucang/android/core/http/MucangNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v2, 0x0

    aput-object v1, v0, v2

    .line 2
    new-instance v1, Lcn/mucang/android/core/http/MucangNameValuePair;

    iget v2, p1, Lcn/mucang/android/jiakaoyi/exam/k3/light/LightExamModel;->configId:I

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    const-string v3, "lightConfigId"

    invoke-direct {v1, v3, v2}, Lcn/mucang/android/core/http/MucangNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v2, 0x1

    aput-object v1, v0, v2

    .line 3
    new-instance v1, Lcn/mucang/android/core/http/MucangNameValuePair;

    iget v2, p1, Lcn/mucang/android/jiakaoyi/exam/k3/light/LightExamModel;->deductId:I

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    const-string v3, "deductId"

    invoke-direct {v1, v3, v2}, Lcn/mucang/android/core/http/MucangNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v2, 0x2

    aput-object v1, v0, v2

    .line 4
    new-instance v1, Lcn/mucang/android/core/http/MucangNameValuePair;

    iget-object v2, p1, Lcn/mucang/android/jiakaoyi/exam/k3/light/LightExamModel;->desc:Ljava/lang/String;

    const-string v3, "desc"

    invoke-direct {v1, v3, v2}, Lcn/mucang/android/core/http/MucangNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v2, 0x3

    aput-object v1, v0, v2

    .line 5
    new-instance v1, Lcn/mucang/android/core/http/MucangNameValuePair;

    iget-object v2, p1, Lcn/mucang/android/jiakaoyi/exam/k3/light/LightExamModel;->standard:Ljava/lang/String;

    const-string v3, "standard"

    invoke-direct {v1, v3, v2}, Lcn/mucang/android/core/http/MucangNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v2, 0x4

    aput-object v1, v0, v2

    .line 6
    new-instance v1, Lcn/mucang/android/core/http/MucangNameValuePair;

    iget-object v2, p1, Lcn/mucang/android/jiakaoyi/exam/k3/light/LightExamModel;->lights:Ljava/util/List;

    const-string v3, "model.lights"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/r;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, v2}, Lcn/mucang/android/jiakaoyi/k3setting/order/z1;->o(Ljava/util/List;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "lights"

    invoke-direct {v1, v3, v2}, Lcn/mucang/android/core/http/MucangNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v2, 0x5

    aput-object v1, v0, v2

    .line 7
    new-instance v1, Lcn/mucang/android/core/http/MucangNameValuePair;

    iget-object v2, p1, Lcn/mucang/android/jiakaoyi/exam/k3/light/LightExamModel;->notAllowed:Ljava/util/List;

    const-string v3, "model.notAllowed"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/r;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, v2}, Lcn/mucang/android/jiakaoyi/k3setting/order/z1;->o(Ljava/util/List;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "notAllowed"

    invoke-direct {v1, v3, v2}, Lcn/mucang/android/core/http/MucangNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v2, 0x6

    aput-object v1, v0, v2

    .line 8
    new-instance v1, Lcn/mucang/android/core/http/MucangNameValuePair;

    iget-object v2, p1, Lcn/mucang/android/jiakaoyi/exam/k3/light/LightExamModel;->icon:Ljava/lang/String;

    const-string v3, "icon"

    invoke-direct {v1, v3, v2}, Lcn/mucang/android/core/http/MucangNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v2, 0x7

    aput-object v1, v0, v2

    .line 9
    new-instance v1, Lcn/mucang/android/core/http/MucangNameValuePair;

    iget v2, p1, Lcn/mucang/android/jiakaoyi/exam/k3/light/LightExamModel;->voiceCode:I

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    const-string v3, "voiceCode"

    invoke-direct {v1, v3, v2}, Lcn/mucang/android/core/http/MucangNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v2, 0x8

    aput-object v1, v0, v2

    .line 10
    new-instance v1, Lcn/mucang/android/core/http/MucangNameValuePair;

    iget v2, p1, Lcn/mucang/android/jiakaoyi/exam/k3/light/LightExamModel;->playOrder:I

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    const-string v3, "playOrder"

    invoke-direct {v1, v3, v2}, Lcn/mucang/android/core/http/MucangNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v2, 0x9

    aput-object v1, v0, v2

    .line 11
    new-instance v1, Lcn/mucang/android/core/http/MucangNameValuePair;

    iget p1, p1, Lcn/mucang/android/jiakaoyi/exam/k3/light/LightExamModel;->tag:I

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    const-string v2, "tag"

    invoke-direct {v1, v2, p1}, Lcn/mucang/android/core/http/MucangNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const/16 p1, 0xa

    aput-object v1, v0, p1

    .line 12
    new-instance p1, Lcn/mucang/android/core/http/MucangNameValuePair;

    const-wide/16 v1, 0x0

    invoke-static {v1, v2}, Lcn/mucang/jiakaoyi/uilib/s/j;->h(J)J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    const-string v2, "examSiteId"

    invoke-direct {p1, v2, v1}, Lcn/mucang/android/core/http/MucangNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v1, 0xb

    aput-object p1, v0, v1

    .line 13
    invoke-static {v0}, Lkotlin/collections/s;->m([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method public static synthetic y(Lcn/mucang/android/jiakaoyi/k3setting/order/z1;Ljava/lang/Long;ILjava/lang/Object;)Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcn/mucang/android/core/api/exception/ApiException;,
            Lcn/mucang/android/core/api/exception/HttpException;,
            Lcn/mucang/android/core/api/exception/InternalException;
        }
    .end annotation

    and-int/lit8 p2, p2, 0x1

    if-eqz p2, :cond_0

    const/4 p1, 0x0

    .line 1
    :cond_0
    invoke-virtual {p0, p1}, Lcn/mucang/android/jiakaoyi/k3setting/order/z1;->x(Ljava/lang/Long;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final A()Z
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcn/mucang/android/core/api/exception/ApiException;,
            Lcn/mucang/android/core/api/exception/HttpException;,
            Lcn/mucang/android/core/api/exception/InternalException;
        }
    .end annotation

    .line 1
    sget-object v0, Lcn/mucang/android/jiakaoyi/engine/model/KeMu;->K3:Lcn/mucang/android/jiakaoyi/engine/model/KeMu;

    iget-object v0, v0, Lcn/mucang/android/jiakaoyi/engine/model/KeMu;->serverKeMu:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcn/mucang/android/jiakaoyi/framework/e/n;->k(Ljava/lang/String;)V

    const/4 v0, 0x2

    new-array v0, v0, [Lcn/mucang/android/core/http/MucangNameValuePair;

    .line 2
    new-instance v1, Lcn/mucang/android/core/http/MucangNameValuePair;

    const-wide/16 v2, 0x0

    invoke-static {v2, v3}, Lcn/mucang/jiakaoyi/uilib/s/j;->h(J)J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    const-string v3, "examSiteId"

    invoke-direct {v1, v3, v2}, Lcn/mucang/android/core/http/MucangNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v2, 0x0

    aput-object v1, v0, v2

    .line 3
    new-instance v1, Lcn/mucang/android/core/http/MucangNameValuePair;

    .line 4
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v3, Lcn/mucang/jiakaoyi/uilib/diff/DataType;->LIGHT_MODEL:Lcn/mucang/jiakaoyi/uilib/diff/DataType;

    invoke-virtual {v3}, Lcn/mucang/jiakaoyi/uilib/diff/DataType;->getType()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/16 v3, 0x2c

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    sget-object v3, Lcn/mucang/jiakaoyi/uilib/diff/DataType;->LIGHT_GROUP:Lcn/mucang/jiakaoyi/uilib/diff/DataType;

    invoke-virtual {v3}, Lcn/mucang/jiakaoyi/uilib/diff/DataType;->getType()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "types"

    .line 5
    invoke-direct {v1, v3, v2}, Lcn/mucang/android/core/http/MucangNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v2, 0x1

    aput-object v1, v0, v2

    .line 6
    invoke-static {v0}, Lkotlin/collections/s;->m([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    const-string v1, "/api/open/owner/exam-site/reset.htm"

    .line 7
    invoke-virtual {p0, v1, v0}, Lcn/mucang/android/jiakaoyi/framework/e/n;->httpPost(Ljava/lang/String;Ljava/util/List;)Lcn/mucang/android/core/api/ApiResponse;

    move-result-object v0

    invoke-virtual {v0}, Lcn/mucang/android/core/api/ApiResponse;->isSuccess()Z

    move-result v0

    return v0
.end method

.method public final B(Ljava/lang/String;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcn/mucang/android/core/api/exception/ApiException;,
            Lcn/mucang/android/core/api/exception/HttpException;,
            Lcn/mucang/android/core/api/exception/InternalException;
        }
    .end annotation

    const-string v0, "ids"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    new-instance v0, Lcn/mucang/android/core/http/MucangNameValuePair;

    const-string v1, "examProgramIds"

    invoke-direct {v0, v1, p1}, Lcn/mucang/android/core/http/MucangNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    invoke-static {v0}, Lkotlin/collections/s;->d(Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    const-string v0, "/api/open/owner/light-exam-program/sort.htm"

    .line 3
    invoke-virtual {p0, v0, p1}, Lcn/mucang/android/jiakaoyi/framework/e/n;->httpPost(Ljava/lang/String;Ljava/util/List;)Lcn/mucang/android/core/api/ApiResponse;

    move-result-object p1

    .line 4
    invoke-virtual {p1}, Lcn/mucang/android/core/api/ApiResponse;->isSuccess()Z

    move-result p1

    return p1
.end method

.method public final m(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcn/mucang/android/core/api/exception/ApiException;,
            Lcn/mucang/android/core/api/exception/HttpException;,
            Lcn/mucang/android/core/api/exception/InternalException;
        }
    .end annotation

    const-string v0, "name"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "ids"

    invoke-static {p2, v1}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v1, 0x3

    new-array v1, v1, [Lcn/mucang/android/core/http/MucangNameValuePair;

    .line 1
    new-instance v2, Lcn/mucang/android/core/http/MucangNameValuePair;

    invoke-direct {v2, v0, p1}, Lcn/mucang/android/core/http/MucangNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p1, 0x0

    aput-object v2, v1, p1

    new-instance p1, Lcn/mucang/android/core/http/MucangNameValuePair;

    const-string v0, "lightJudges"

    invoke-direct {p1, v0, p2}, Lcn/mucang/android/core/http/MucangNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p2, 0x1

    aput-object p1, v1, p2

    .line 2
    new-instance p1, Lcn/mucang/android/core/http/MucangNameValuePair;

    const-wide/16 v2, 0x0

    invoke-static {v2, v3}, Lcn/mucang/jiakaoyi/uilib/s/j;->h(J)J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object p2

    const-string v0, "examSiteId"

    invoke-direct {p1, v0, p2}, Lcn/mucang/android/core/http/MucangNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p2, 0x2

    aput-object p1, v1, p2

    .line 3
    invoke-static {v1}, Lkotlin/collections/s;->m([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    const-string p2, "/api/open/owner/light-combination/add.htm"

    .line 4
    invoke-virtual {p0, p2, p1}, Lcn/mucang/android/jiakaoyi/framework/e/n;->httpPost(Ljava/lang/String;Ljava/util/List;)Lcn/mucang/android/core/api/ApiResponse;

    move-result-object p1

    .line 5
    invoke-virtual {p1}, Lcn/mucang/android/core/api/ApiResponse;->isSuccess()Z

    move-result p1

    return p1
.end method

.method public final n(Lcn/mucang/android/jiakaoyi/exam/k3/light/LightExamModel;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcn/mucang/android/core/api/exception/ApiException;,
            Lcn/mucang/android/core/api/exception/HttpException;,
            Lcn/mucang/android/core/api/exception/InternalException;
        }
    .end annotation

    const-string v0, "model"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0, p1}, Lcn/mucang/android/jiakaoyi/k3setting/order/z1;->p(Lcn/mucang/android/jiakaoyi/exam/k3/light/LightExamModel;)Ljava/util/List;

    move-result-object p1

    const-string v0, "/api/open/owner/light-exam-program/add.htm"

    .line 2
    invoke-virtual {p0, v0, p1}, Lcn/mucang/android/jiakaoyi/framework/e/n;->httpPost(Ljava/lang/String;Ljava/util/List;)Lcn/mucang/android/core/api/ApiResponse;

    move-result-object p1

    .line 3
    invoke-virtual {p1}, Lcn/mucang/android/core/api/ApiResponse;->isSuccess()Z

    move-result p1

    return p1
.end method

.method public final q(J)Z
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcn/mucang/android/core/api/exception/ApiException;,
            Lcn/mucang/android/core/api/exception/HttpException;,
            Lcn/mucang/android/core/api/exception/InternalException;
        }
    .end annotation

    const/4 v0, 0x2

    new-array v0, v0, [Lcn/mucang/android/core/http/MucangNameValuePair;

    .line 1
    new-instance v1, Lcn/mucang/android/core/http/MucangNameValuePair;

    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object p1

    const-string p2, "id"

    invoke-direct {v1, p2, p1}, Lcn/mucang/android/core/http/MucangNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p1, 0x0

    aput-object v1, v0, p1

    .line 2
    new-instance p1, Lcn/mucang/android/core/http/MucangNameValuePair;

    const-wide/16 v1, 0x0

    invoke-static {v1, v2}, Lcn/mucang/jiakaoyi/uilib/s/j;->h(J)J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object p2

    const-string v1, "examSiteId"

    invoke-direct {p1, v1, p2}, Lcn/mucang/android/core/http/MucangNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p2, 0x1

    aput-object p1, v0, p2

    .line 3
    invoke-static {v0}, Lkotlin/collections/s;->m([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    const-string p2, "/api/open/owner/light-combination/delete.htm"

    .line 4
    invoke-virtual {p0, p2, p1}, Lcn/mucang/android/jiakaoyi/framework/e/n;->httpPost(Ljava/lang/String;Ljava/util/List;)Lcn/mucang/android/core/api/ApiResponse;

    move-result-object p1

    .line 5
    invoke-virtual {p1}, Lcn/mucang/android/core/api/ApiResponse;->isSuccess()Z

    move-result p1

    return p1
.end method

.method public final r(I)Z
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcn/mucang/android/core/api/exception/ApiException;,
            Lcn/mucang/android/core/api/exception/HttpException;,
            Lcn/mucang/android/core/api/exception/InternalException;
        }
    .end annotation

    .line 1
    new-instance v0, Lcn/mucang/android/core/http/MucangNameValuePair;

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    const-string v1, "examProgramId"

    invoke-direct {v0, v1, p1}, Lcn/mucang/android/core/http/MucangNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    invoke-static {v0}, Lkotlin/collections/s;->d(Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    const-string v0, "/api/open/owner/light-exam-program/delete.htm"

    .line 3
    invoke-virtual {p0, v0, p1}, Lcn/mucang/android/jiakaoyi/framework/e/n;->httpPost(Ljava/lang/String;Ljava/util/List;)Lcn/mucang/android/core/api/ApiResponse;

    move-result-object p1

    .line 4
    invoke-virtual {p1}, Lcn/mucang/android/core/api/ApiResponse;->isSuccess()Z

    move-result p1

    return p1
.end method

.method public final s(JLjava/lang/String;Ljava/lang/String;)Z
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcn/mucang/android/core/api/exception/ApiException;,
            Lcn/mucang/android/core/api/exception/HttpException;,
            Lcn/mucang/android/core/api/exception/InternalException;
        }
    .end annotation

    const-string v0, "name"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "ids"

    invoke-static {p4, v1}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v1, 0x4

    new-array v1, v1, [Lcn/mucang/android/core/http/MucangNameValuePair;

    .line 1
    new-instance v2, Lcn/mucang/android/core/http/MucangNameValuePair;

    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object p1

    const-string p2, "id"

    invoke-direct {v2, p2, p1}, Lcn/mucang/android/core/http/MucangNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p1, 0x0

    aput-object v2, v1, p1

    .line 2
    new-instance p1, Lcn/mucang/android/core/http/MucangNameValuePair;

    invoke-direct {p1, v0, p3}, Lcn/mucang/android/core/http/MucangNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p2, 0x1

    aput-object p1, v1, p2

    .line 3
    new-instance p1, Lcn/mucang/android/core/http/MucangNameValuePair;

    const-string p2, "lightJudges"

    invoke-direct {p1, p2, p4}, Lcn/mucang/android/core/http/MucangNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p2, 0x2

    aput-object p1, v1, p2

    .line 4
    new-instance p1, Lcn/mucang/android/core/http/MucangNameValuePair;

    const-wide/16 p2, 0x0

    invoke-static {p2, p3}, Lcn/mucang/jiakaoyi/uilib/s/j;->h(J)J

    move-result-wide p2

    invoke-static {p2, p3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object p2

    const-string p3, "examSiteId"

    invoke-direct {p1, p3, p2}, Lcn/mucang/android/core/http/MucangNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p2, 0x3

    aput-object p1, v1, p2

    .line 5
    invoke-static {v1}, Lkotlin/collections/s;->m([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    const-string p2, "/api/open/owner/light-combination/edit.htm"

    .line 6
    invoke-virtual {p0, p2, p1}, Lcn/mucang/android/jiakaoyi/framework/e/n;->httpPost(Ljava/lang/String;Ljava/util/List;)Lcn/mucang/android/core/api/ApiResponse;

    move-result-object p1

    .line 7
    invoke-virtual {p1}, Lcn/mucang/android/core/api/ApiResponse;->isSuccess()Z

    move-result p1

    return p1
.end method

.method public final t(Lcn/mucang/android/jiakaoyi/exam/k3/light/LightExamModel;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcn/mucang/android/core/api/exception/ApiException;,
            Lcn/mucang/android/core/api/exception/HttpException;,
            Lcn/mucang/android/core/api/exception/InternalException;
        }
    .end annotation

    const-string v0, "model"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0, p1}, Lcn/mucang/android/jiakaoyi/k3setting/order/z1;->p(Lcn/mucang/android/jiakaoyi/exam/k3/light/LightExamModel;)Ljava/util/List;

    move-result-object p1

    const-string v0, "/api/open/owner/light-exam-program/edit.htm"

    .line 2
    invoke-virtual {p0, v0, p1}, Lcn/mucang/android/jiakaoyi/framework/e/n;->httpPost(Ljava/lang/String;Ljava/util/List;)Lcn/mucang/android/core/api/ApiResponse;

    move-result-object p1

    .line 3
    invoke-virtual {p1}, Lcn/mucang/android/core/api/ApiResponse;->isSuccess()Z

    move-result p1

    return p1
.end method

.method public final u(J)Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J)",
            "Ljava/util/List<",
            "Lcn/mucang/android/jiakaoyi/exam/k3/light/LightExamModel;",
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

    .line 1
    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcn/mucang/android/jiakaoyi/k3setting/order/z1;->x(Ljava/lang/Long;)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method public final v(Ljava/lang/String;)Lcn/mucang/android/core/api/d/b;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Lcn/mucang/android/core/api/d/b<",
            "Lcn/mucang/android/jiakaoyi/exam/k3/light/LightAssembleModel;",
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

    const-string v0, "cursor"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    new-instance v0, Lcn/mucang/android/core/api/d/a;

    invoke-direct {v0}, Lcn/mucang/android/core/api/d/a;-><init>()V

    .line 2
    invoke-virtual {v0, p1}, Lcn/mucang/android/core/api/d/a;->c(Ljava/lang/String;)V

    const/16 p1, 0x32

    .line 3
    invoke-virtual {v0, p1}, Lcn/mucang/android/core/api/d/a;->d(I)V

    const-wide/16 v1, 0x0

    .line 4
    invoke-static {v1, v2}, Lcn/mucang/jiakaoyi/uilib/s/j;->h(J)J

    move-result-wide v1

    .line 5
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const-string v2, "/api/open/owner/light-combination/list.htm?examSiteId="

    invoke-static {v2, v1}, Lkotlin/jvm/internal/r;->m(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p1, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 6
    const-class v1, Lcn/mucang/android/jiakaoyi/exam/k3/light/LightAssembleModel;

    .line 7
    invoke-virtual {p0, p1, v0, v1}, Lcn/mucang/android/jiakaoyi/framework/e/n;->httpGetFetchMoreResponse(Ljava/lang/StringBuilder;Lcn/mucang/android/core/api/d/a;Ljava/lang/Class;)Lcn/mucang/android/core/api/d/b;

    move-result-object p1

    const-string v0, "httpGetFetchMoreResponse\u2026del::class.java\n        )"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->d(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p1
.end method

.method public final w()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcn/mucang/android/jiakaoyi/exam/k3/light/LightOrderStandard;",
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

    .line 1
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/k3setting/order/z1;->e:Lcn/mucang/jiakaoyi/uilib/model/ExamSiteModel;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    iget-wide v0, v0, Lcn/mucang/jiakaoyi/uilib/model/ExamSiteModel;->examSiteId:J

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    :goto_0
    const-string v1, "/api/open/owner/light-exam-program/list-light-configs.htm?examSiteId="

    invoke-static {v1, v0}, Lkotlin/jvm/internal/r;->m(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-class v1, Lcn/mucang/android/jiakaoyi/exam/k3/light/LightOrderStandard;

    .line 2
    invoke-virtual {p0, v0, v1}, Lcn/mucang/android/jiakaoyi/framework/e/n;->httpGetDataList(Ljava/lang/String;Ljava/lang/Class;)Ljava/util/List;

    move-result-object v0

    const-string v1, "httpGetDataList(\n       \u2026ard::class.java\n        )"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/r;->d(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v0
.end method

.method public final x(Ljava/lang/Long;)Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Long;",
            ")",
            "Ljava/util/List<",
            "Lcn/mucang/android/jiakaoyi/exam/k3/light/LightExamModel;",
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

    const-wide/16 v0, 0x0

    .line 1
    invoke-static {v0, v1}, Lcn/mucang/jiakaoyi/uilib/s/j;->h(J)J

    move-result-wide v0

    .line 2
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    if-eqz p1, :cond_0

    .line 3
    new-instance v3, Lcn/mucang/android/core/http/MucangNameValuePair;

    invoke-virtual {p1}, Ljava/lang/Long;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v4, "lightCombinationId"

    invoke-direct {v3, v4, p1}, Lcn/mucang/android/core/http/MucangNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 4
    :cond_0
    new-instance p1, Lcn/mucang/android/core/http/MucangNameValuePair;

    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    const-string v1, "examSiteId"

    invoke-direct {p1, v1, v0}, Lcn/mucang/android/core/http/MucangNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v2, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string p1, "/api/open/owner/light-exam-program/get-light-exam-programs.htm"

    .line 5
    invoke-static {p1, v2}, Lcn/mucang/android/core/api/f/c;->c(Ljava/lang/String;Ljava/util/List;)Ljava/lang/String;

    move-result-object p1

    .line 6
    const-class v0, Lcn/mucang/android/jiakaoyi/exam/k3/light/LightExamModel;

    invoke-virtual {p0, p1, v0}, Lcn/mucang/android/jiakaoyi/framework/e/n;->httpGetDataList(Ljava/lang/String;Ljava/lang/Class;)Ljava/util/List;

    move-result-object p1

    const-string v0, "httpGetDataList(buildUrl\u2026ghtExamModel::class.java)"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->d(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p1
.end method

.method public final z(Ljava/lang/String;)Z
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcn/mucang/android/core/api/exception/ApiException;,
            Lcn/mucang/android/core/api/exception/HttpException;,
            Lcn/mucang/android/core/api/exception/InternalException;
        }
    .end annotation

    const-string v0, "ids"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v1, 0x2

    new-array v1, v1, [Lcn/mucang/android/core/http/MucangNameValuePair;

    .line 1
    new-instance v2, Lcn/mucang/android/core/http/MucangNameValuePair;

    invoke-direct {v2, v0, p1}, Lcn/mucang/android/core/http/MucangNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p1, 0x0

    aput-object v2, v1, p1

    .line 2
    new-instance p1, Lcn/mucang/android/core/http/MucangNameValuePair;

    const-wide/16 v2, 0x0

    invoke-static {v2, v3}, Lcn/mucang/jiakaoyi/uilib/s/j;->h(J)J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    const-string v2, "examSiteId"

    invoke-direct {p1, v2, v0}, Lcn/mucang/android/core/http/MucangNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x1

    aput-object p1, v1, v0

    .line 3
    invoke-static {v1}, Lkotlin/collections/s;->m([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    const-string v0, "/api/open/owner/light-combination/sort.htm"

    .line 4
    invoke-virtual {p0, v0, p1}, Lcn/mucang/android/jiakaoyi/framework/e/n;->httpPost(Ljava/lang/String;Ljava/util/List;)Lcn/mucang/android/core/api/ApiResponse;

    move-result-object p1

    .line 5
    invoke-virtual {p1}, Lcn/mucang/android/core/api/ApiResponse;->isSuccess()Z

    move-result p1

    return p1
.end method
