.class public Lcn/mucang/jiakaoyi/uilib/upgrade/c;
.super Lcn/mucang/android/jiakaoyi/framework/e/d;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcn/mucang/android/jiakaoyi/framework/e/d;-><init>()V

    return-void
.end method

.method private n(Ljava/util/List;)Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcn/mucang/jiakaoyi/uilib/upgrade/model/UpgradeParameter;",
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

    new-array v0, v0, [Lcom/alibaba/fastjson/serializer/SerializerFeature;

    .line 1
    sget-object v1, Lcom/alibaba/fastjson/serializer/SerializerFeature;->DisableCircularReferenceDetect:Lcom/alibaba/fastjson/serializer/SerializerFeature;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    invoke-static {p1, v0}, Lcom/alibaba/fastjson/JSON;->toJSONString(Ljava/lang/Object;[Lcom/alibaba/fastjson/serializer/SerializerFeature;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object p1

    const-string v0, "/api/open/upgrade/check-upgrade.htm"

    invoke-virtual {p0, v0, p1}, Lcn/mucang/android/core/api/a;->httpPost(Ljava/lang/String;[B)Lcn/mucang/android/core/api/ApiResponse;

    move-result-object p1

    .line 2
    const-class v0, Lcn/mucang/android/jiakaoyi/signal/upgrade/model/UpgradeInfoModel;

    invoke-virtual {p1, v0}, Lcn/mucang/android/core/api/ApiResponse;->getDataArray(Ljava/lang/Class;)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method


# virtual methods
.method public m(II)Lcn/mucang/android/jiakaoyi/signal/upgrade/model/UpgradeInfoModel;
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
    new-instance v1, Lcn/mucang/jiakaoyi/uilib/upgrade/model/UpgradeParameter;

    invoke-direct {v1}, Lcn/mucang/jiakaoyi/uilib/upgrade/model/UpgradeParameter;-><init>()V

    .line 3
    iput p1, v1, Lcn/mucang/jiakaoyi/uilib/upgrade/model/UpgradeParameter;->type:I

    .line 4
    iput p2, v1, Lcn/mucang/jiakaoyi/uilib/upgrade/model/UpgradeParameter;->version:I

    .line 5
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 6
    invoke-direct {p0, v0}, Lcn/mucang/jiakaoyi/uilib/upgrade/c;->n(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    .line 7
    invoke-static {v0}, Lcn/mucang/android/core/utils/g;->d(Ljava/util/Collection;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 8
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\u83b7\u53d6\u8d44\u6e90\u66f4\u65b0\u5305\uff0ctype\uff1a"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " version\uff1a"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " url\uff1a"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 p1, 0x0

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcn/mucang/android/jiakaoyi/signal/upgrade/model/UpgradeInfoModel;

    invoke-virtual {p2}, Lcn/mucang/android/jiakaoyi/signal/upgrade/model/UpgradeInfoModel;->getFilePath()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Lcn/mucang/android/jiakaoyi/framework/log/f;->o(Ljava/lang/Object;)V

    .line 9
    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcn/mucang/android/jiakaoyi/signal/upgrade/model/UpgradeInfoModel;

    return-object p1

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method
