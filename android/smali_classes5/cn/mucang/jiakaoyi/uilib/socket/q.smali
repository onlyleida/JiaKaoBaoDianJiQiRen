.class public Lcn/mucang/jiakaoyi/uilib/socket/q;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static a:J


# direct methods
.method public static a(Z)Lcn/mucang/jiakaoyi/uilib/socket/model/SocketInfo;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcn/mucang/android/core/api/exception/InternalException;,
            Lcn/mucang/android/core/api/exception/ApiException;,
            Lcn/mucang/android/core/api/exception/HttpException;
        }
    .end annotation

    .line 1
    new-instance v0, Lcn/mucang/jiakaoyi/uilib/socket/model/SocketLoginRequestModel;

    invoke-direct {v0}, Lcn/mucang/jiakaoyi/uilib/socket/model/SocketLoginRequestModel;-><init>()V

    .line 2
    invoke-static {}, Lcn/mucang/android/jiakaoyi/framework/utils/r;->c()Ljava/lang/String;

    move-result-object v1

    .line 3
    invoke-static {v1}, Lcn/mucang/android/core/utils/n0;->e(Ljava/lang/String;)Z

    move-result v2

    const/4 v3, 0x0

    if-eqz v2, :cond_0

    invoke-static {}, Lcn/mucang/android/jiakaoyi/framework/utils/m;->j()Z

    move-result v2

    if-nez v2, :cond_0

    invoke-static {}, Lcn/mucang/android/jiakaoyi/framework/utils/m;->e()Z

    move-result v2

    if-nez v2, :cond_0

    const-string p0, "\u672a\u53d6\u5230\u8bbe\u5907\u7f16\u53f7"

    .line 4
    invoke-static {p0}, Lcn/mucang/android/core/utils/u;->h(Ljava/lang/String;)V

    return-object v3

    .line 5
    :cond_0
    invoke-static {}, Lcn/mucang/android/jiakaoyi/framework/utils/m;->j()Z

    move-result v2

    if-nez v2, :cond_1

    invoke-static {}, Lcn/mucang/android/jiakaoyi/framework/utils/m;->e()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 6
    :cond_1
    sget-object v2, Lcn/mucang/android/jiakaoyi/framework/dataprovider/b;->a:Lcn/mucang/android/jiakaoyi/framework/dataprovider/b;

    const-class v4, Lcn/mucang/android/jiakaoyi/framework/dataprovider/AppDataProvider;

    invoke-virtual {v2, v4, v3}, Lcn/mucang/android/jiakaoyi/framework/dataprovider/b;->a(Ljava/lang/Class;Landroid/os/Bundle;)Lcn/mucang/android/jiakaoyi/framework/dataprovider/a;

    move-result-object v2

    check-cast v2, Lcn/mucang/android/jiakaoyi/framework/dataprovider/AppDataProvider;

    if-eqz v2, :cond_2

    .line 7
    invoke-virtual {v2}, Lcn/mucang/android/jiakaoyi/framework/dataprovider/AppDataProvider;->getLogDeviceNum()Ljava/lang/String;

    move-result-object v1

    .line 8
    :cond_2
    iput-object v1, v0, Lcn/mucang/jiakaoyi/uilib/socket/model/SocketLoginRequestModel;->deviceNo:Ljava/lang/String;

    .line 9
    sget-wide v1, Lcn/mucang/jiakaoyi/uilib/socket/q;->a:J

    const-wide/16 v3, 0x0

    cmp-long v5, v1, v3

    if-gtz v5, :cond_3

    .line 10
    invoke-static {v3, v4}, Lcn/mucang/jiakaoyi/uilib/s/j;->e(J)J

    move-result-wide v1

    sput-wide v1, Lcn/mucang/jiakaoyi/uilib/socket/q;->a:J

    .line 11
    :cond_3
    sget-wide v1, Lcn/mucang/jiakaoyi/uilib/socket/q;->a:J

    iput-wide v1, v0, Lcn/mucang/jiakaoyi/uilib/socket/model/SocketLoginRequestModel;->sid:J

    .line 12
    sget-object v1, Lcn/mucang/android/jiakaoyi/signal/handle/gps/j;->a:Lcn/mucang/android/jiakaoyi/signal/handle/gps/j;

    invoke-virtual {v1}, Lcn/mucang/android/jiakaoyi/signal/handle/gps/j;->e()Landroid/location/Location;

    move-result-object v1

    .line 13
    invoke-virtual {v1}, Landroid/location/Location;->getLatitude()D

    move-result-wide v2

    iput-wide v2, v0, Lcn/mucang/jiakaoyi/uilib/socket/model/SocketLoginRequestModel;->latitude:D

    .line 14
    invoke-virtual {v1}, Landroid/location/Location;->getLongitude()D

    move-result-wide v1

    iput-wide v1, v0, Lcn/mucang/jiakaoyi/uilib/socket/model/SocketLoginRequestModel;->longitude:D

    .line 15
    iput-boolean p0, v0, Lcn/mucang/jiakaoyi/uilib/socket/model/SocketLoginRequestModel;->isForGps:Z

    .line 16
    invoke-static {}, Lcn/mucang/android/jiakaoyi/framework/api/citycode/c;->d()Ljava/lang/String;

    move-result-object p0

    .line 17
    invoke-static {p0}, Lcn/mucang/android/core/utils/n0;->g(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 18
    iput-object p0, v0, Lcn/mucang/jiakaoyi/uilib/socket/model/SocketLoginRequestModel;->areaCode:Ljava/lang/String;

    .line 19
    :cond_4
    new-instance p0, Lcn/mucang/jiakaoyi/uilib/socket/v/a;

    invoke-direct {p0}, Lcn/mucang/jiakaoyi/uilib/socket/v/a;-><init>()V

    invoke-virtual {p0, v0}, Lcn/mucang/jiakaoyi/uilib/socket/v/a;->m(Lcn/mucang/jiakaoyi/uilib/socket/model/SocketLoginRequestModel;)Lcn/mucang/jiakaoyi/uilib/socket/model/SocketInfo;

    move-result-object p0

    return-object p0
.end method
