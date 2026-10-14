.class public Lcn/mucang/android/account/g/n;
.super Lcn/mucang/android/account/g/a;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcn/mucang/android/account/g/a;-><init>()V

    return-void
.end method


# virtual methods
.method public f()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcn/mucang/android/account/api/data/ThirdBindResponse;",
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

    const-string v0, "/third/list-third-accounts.htm"

    .line 1
    invoke-virtual {p0, v0}, Lcn/mucang/android/core/api/a;->httpGet(Ljava/lang/String;)Lcn/mucang/android/core/api/ApiResponse;

    move-result-object v0

    .line 2
    const-class v1, Lcn/mucang/android/account/api/data/ThirdBindResponse;

    invoke-virtual {v0, v1}, Lcn/mucang/android/core/api/ApiResponse;->getDataArray(Ljava/lang/Class;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public g(Lcn/mucang/android/account/api/data/ThirdLoginRequest;)Lcn/mucang/android/account/api/data/ThirdLoginResponse;
    .locals 4
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

    invoke-virtual {p1}, Lcn/mucang/android/account/api/data/ThirdLoginRequest;->getAvatar()Ljava/lang/String;

    move-result-object v2

    const-string v3, "avatar"

    invoke-direct {v1, v3, v2}, Lcn/mucang/android/core/http/MucangNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 3
    new-instance v1, Lcn/mucang/android/core/http/MucangNameValuePair;

    invoke-virtual {p1}, Lcn/mucang/android/account/api/data/ThirdLoginRequest;->getBirthday()Ljava/lang/String;

    move-result-object v2

    const-string v3, "birthday"

    invoke-direct {v1, v3, v2}, Lcn/mucang/android/core/http/MucangNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 4
    new-instance v1, Lcn/mucang/android/core/http/MucangNameValuePair;

    invoke-virtual {p1}, Lcn/mucang/android/account/api/data/ThirdLoginRequest;->getDescription()Ljava/lang/String;

    move-result-object v2

    const-string v3, "description"

    invoke-direct {v1, v3, v2}, Lcn/mucang/android/core/http/MucangNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 5
    new-instance v1, Lcn/mucang/android/core/http/MucangNameValuePair;

    invoke-virtual {p1}, Lcn/mucang/android/account/api/data/ThirdLoginRequest;->getGender()Ljava/lang/String;

    move-result-object v2

    const-string v3, "gender"

    invoke-direct {v1, v3, v2}, Lcn/mucang/android/core/http/MucangNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 6
    new-instance v1, Lcn/mucang/android/core/http/MucangNameValuePair;

    invoke-virtual {p1}, Lcn/mucang/android/account/api/data/ThirdLoginRequest;->getHomePage()Ljava/lang/String;

    move-result-object v2

    const-string v3, "homePage"

    invoke-direct {v1, v3, v2}, Lcn/mucang/android/core/http/MucangNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 7
    new-instance v1, Lcn/mucang/android/core/http/MucangNameValuePair;

    invoke-virtual {p1}, Lcn/mucang/android/account/api/data/ThirdLoginRequest;->getNickname()Ljava/lang/String;

    move-result-object v2

    const-string v3, "nickname"

    invoke-direct {v1, v3, v2}, Lcn/mucang/android/core/http/MucangNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 8
    new-instance v1, Lcn/mucang/android/core/http/MucangNameValuePair;

    invoke-virtual {p1}, Lcn/mucang/android/account/api/data/ThirdLoginRequest;->getOpenId()Ljava/lang/String;

    move-result-object v2

    const-string v3, "openId"

    invoke-direct {v1, v3, v2}, Lcn/mucang/android/core/http/MucangNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 9
    new-instance v1, Lcn/mucang/android/core/http/MucangNameValuePair;

    invoke-virtual {p1}, Lcn/mucang/android/account/api/data/ThirdLoginRequest;->getUnionId()Ljava/lang/String;

    move-result-object v2

    const-string v3, "unionId"

    invoke-direct {v1, v3, v2}, Lcn/mucang/android/core/http/MucangNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 10
    new-instance v1, Lcn/mucang/android/core/http/MucangNameValuePair;

    invoke-virtual {p1}, Lcn/mucang/android/account/api/data/ThirdLoginRequest;->getThirdParty()Ljava/lang/String;

    move-result-object v2

    const-string v3, "thirdParty"

    invoke-direct {v1, v3, v2}, Lcn/mucang/android/core/http/MucangNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 11
    new-instance v1, Lcn/mucang/android/core/http/MucangNameValuePair;

    invoke-virtual {p1}, Lcn/mucang/android/account/api/data/ThirdLoginRequest;->getAppId()Ljava/lang/String;

    move-result-object v2

    const-string v3, "appId"

    invoke-direct {v1, v3, v2}, Lcn/mucang/android/core/http/MucangNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 12
    invoke-virtual {p1}, Lcn/mucang/android/account/api/data/ThirdLoginRequest;->getFrom()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcn/mucang/android/core/utils/n0;->g(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 13
    new-instance v1, Lcn/mucang/android/core/http/MucangNameValuePair;

    invoke-virtual {p1}, Lcn/mucang/android/account/api/data/ThirdLoginRequest;->getFrom()Ljava/lang/String;

    move-result-object v2

    const-string v3, "from"

    invoke-direct {v1, v3, v2}, Lcn/mucang/android/core/http/MucangNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 14
    :cond_0
    sget-object v1, Lcn/mucang/android/account/third/v;->a:Lcn/mucang/android/account/third/v;

    invoke-virtual {p1}, Lcn/mucang/android/account/api/data/ThirdLoginRequest;->getThirdParty()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Lcn/mucang/android/account/third/v;->a(Ljava/lang/String;)Lcn/mucang/android/account/third/u;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 15
    invoke-interface {p1}, Lcn/mucang/android/account/third/u;->e()Ljava/util/Map;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 16
    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 17
    new-instance v2, Lcn/mucang/android/core/http/MucangNameValuePair;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-direct {v2, v3, v1}, Lcn/mucang/android/core/http/MucangNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    const-string p1, "/third/login.htm"

    .line 18
    invoke-virtual {p0, p1, v0}, Lcn/mucang/android/core/api/a;->httpPost(Ljava/lang/String;Ljava/util/List;)Lcn/mucang/android/core/api/ApiResponse;

    move-result-object p1

    .line 19
    const-class v0, Lcn/mucang/android/account/api/data/ThirdLoginResponse;

    invoke-virtual {p1, v0}, Lcn/mucang/android/core/api/ApiResponse;->getData(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcn/mucang/android/account/api/data/ThirdLoginResponse;

    return-object p1
.end method

.method public h(Ljava/lang/String;)Z
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

    const-string v2, "thirdParty"

    invoke-direct {v1, v2, p1}, Lcn/mucang/android/core/http/MucangNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string p1, "/third/unbind.htm"

    .line 3
    invoke-virtual {p0, p1, v0}, Lcn/mucang/android/core/api/a;->httpPost(Ljava/lang/String;Ljava/util/List;)Lcn/mucang/android/core/api/ApiResponse;

    move-result-object p1

    .line 4
    invoke-virtual {p1}, Lcn/mucang/android/core/api/ApiResponse;->isSuccess()Z

    move-result p1

    return p1
.end method
