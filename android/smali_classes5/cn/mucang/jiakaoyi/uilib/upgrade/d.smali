.class public Lcn/mucang/jiakaoyi/uilib/upgrade/d;
.super Lcn/mucang/android/jiakaoyi/framework/e/f;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcn/mucang/android/jiakaoyi/framework/e/f;-><init>()V

    return-void
.end method

.method private o(Ljava/util/List;ZZ)Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcn/mucang/jiakaoyi/uilib/upgrade/model/UpgradeParameterV2;",
            ">;ZZ)",
            "Ljava/util/List<",
            "Lcn/mucang/android/jiakaoyi/signal/upgrade/model/UpgradeInfoModel;",
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

    const-string v0, "/api/open/update/check-update.htm"

    if-eqz p2, :cond_0

    .line 1
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "?hardwareVersion="

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcn/mucang/android/jiakaoyi/framework/utils/r;->f()I

    move-result v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, "&modelCode="

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcn/mucang/android/jiakaoyi/signal/car/d;->g()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "&stable="

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_0
    const/4 p2, 0x1

    new-array p2, p2, [Lcom/alibaba/fastjson/serializer/SerializerFeature;

    const/4 p3, 0x0

    .line 2
    sget-object v1, Lcom/alibaba/fastjson/serializer/SerializerFeature;->DisableCircularReferenceDetect:Lcom/alibaba/fastjson/serializer/SerializerFeature;

    aput-object v1, p2, p3

    invoke-static {p1, p2}, Lcom/alibaba/fastjson/JSON;->toJSONString(Ljava/lang/Object;[Lcom/alibaba/fastjson/serializer/SerializerFeature;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object p1

    invoke-virtual {p0, v0, p1}, Lcn/mucang/android/core/api/a;->httpPost(Ljava/lang/String;[B)Lcn/mucang/android/core/api/ApiResponse;

    move-result-object p1

    .line 3
    const-class p2, Lcn/mucang/android/jiakaoyi/signal/upgrade/model/UpgradeInfoModel;

    invoke-virtual {p1, p2}, Lcn/mucang/android/core/api/ApiResponse;->getDataArray(Ljava/lang/Class;)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method


# virtual methods
.method public m(Ljava/util/List;)Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcn/mucang/jiakaoyi/uilib/upgrade/model/UpgradeParameterV2;",
            ">;)",
            "Ljava/util/List<",
            "Lcn/mucang/android/jiakaoyi/signal/upgrade/model/UpgradeInfoModel;",
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

    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 1
    invoke-direct {p0, p1, v0, v1}, Lcn/mucang/jiakaoyi/uilib/upgrade/d;->o(Ljava/util/List;ZZ)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method public n(Ljava/util/List;)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcn/mucang/jiakaoyi/uilib/upgrade/model/UpgradeParameterV2;",
            ">;)",
            "Ljava/util/List<",
            "Lcn/mucang/android/jiakaoyi/signal/upgrade/model/UpgradeInfoModel;",
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

    const/4 v0, 0x1

    .line 1
    invoke-direct {p0, p1, v0, v0}, Lcn/mucang/jiakaoyi/uilib/upgrade/d;->o(Ljava/util/List;ZZ)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method
