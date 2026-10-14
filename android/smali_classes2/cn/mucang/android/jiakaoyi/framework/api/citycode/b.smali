.class public Lcn/mucang/android/jiakaoyi/framework/api/citycode/b;
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
.method public m()Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcn/mucang/android/core/api/exception/InternalException;,
            Lcn/mucang/android/core/api/exception/ApiException;,
            Lcn/mucang/android/core/api/exception/HttpException;
        }
    .end annotation

    const-string v0, "/api/open/route/get-area-code.htm"

    .line 1
    invoke-virtual {p0, v0}, Lcn/mucang/android/jiakaoyi/framework/e/n;->httpGet(Ljava/lang/String;)Lcn/mucang/android/core/api/ApiResponse;

    move-result-object v0

    const-class v1, Lcn/mucang/android/jiakaoyi/framework/api/citycode/CityCodeModel;

    invoke-virtual {v0, v1}, Lcn/mucang/android/core/api/ApiResponse;->getData(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcn/mucang/android/jiakaoyi/framework/api/citycode/CityCodeModel;

    iget-object v0, v0, Lcn/mucang/android/jiakaoyi/framework/api/citycode/CityCodeModel;->areaCode:Ljava/lang/String;

    return-object v0
.end method
