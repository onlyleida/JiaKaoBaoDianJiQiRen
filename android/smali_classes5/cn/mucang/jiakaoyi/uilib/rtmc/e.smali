.class public Lcn/mucang/jiakaoyi/uilib/rtmc/e;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final a:Lcn/mucang/android/jiakaoyi/framework/utils/r0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcn/mucang/android/jiakaoyi/framework/utils/r0<",
            "Lcn/mucang/jiakaoyi/uilib/socket/model/GpsStationInfoModel;",
            ">;"
        }
    .end annotation
.end field

.field public static b:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 1
    const-class v0, Lcn/mucang/jiakaoyi/uilib/socket/model/GpsStationInfoModel;

    const-string v1, "gps__station__info"

    const/4 v2, 0x0

    invoke-static {v1, v2, v0}, Lcn/mucang/android/jiakaoyi/framework/utils/r0;->h(Ljava/lang/String;Ljava/io/Serializable;Ljava/lang/Class;)Lcn/mucang/android/jiakaoyi/framework/utils/r0;

    move-result-object v0

    sput-object v0, Lcn/mucang/jiakaoyi/uilib/rtmc/e;->a:Lcn/mucang/android/jiakaoyi/framework/utils/r0;

    const-string v1, ""

    .line 2
    sput-object v1, Lcn/mucang/jiakaoyi/uilib/rtmc/e;->b:Ljava/lang/String;

    .line 3
    invoke-virtual {v0}, Lcn/mucang/android/jiakaoyi/framework/utils/r0;->b()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcn/mucang/jiakaoyi/uilib/socket/model/GpsStationInfoModel;

    if-eqz v0, :cond_0

    .line 4
    sget-object v1, Lcn/mucang/jiakaoyi/uilib/rtmc/e;->b:Ljava/lang/String;

    invoke-static {v1}, Lcn/mucang/android/core/utils/n0;->e(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 5
    iget-object v1, v0, Lcn/mucang/jiakaoyi/uilib/socket/model/GpsStationInfoModel;->name:Ljava/lang/String;

    sput-object v1, Lcn/mucang/jiakaoyi/uilib/rtmc/e;->b:Ljava/lang/String;

    .line 6
    new-instance v1, Lcn/mucang/jiakaoyi/uilib/rtmc/a;

    invoke-direct {v1, v0}, Lcn/mucang/jiakaoyi/uilib/rtmc/a;-><init>(Lcn/mucang/jiakaoyi/uilib/socket/model/GpsStationInfoModel;)V

    const-wide/16 v2, 0xbb8

    invoke-static {v1, v2, v3}, Lcn/mucang/android/core/utils/u;->d(Ljava/lang/Runnable;J)V

    :cond_0
    return-void
.end method

.method static synthetic a(Lcn/mucang/jiakaoyi/uilib/socket/model/GpsStationInfoModel;)V
    .locals 6

    .line 1
    invoke-static {}, Lcn/mucang/android/jiakaoyi/signal/gps/GpsAnalysis;->f()Lcn/mucang/android/jiakaoyi/signal/gps/GpsAnalysis;

    move-result-object v0

    new-instance v1, Lcn/mucang/android/jiakaoyi/signal/pos/Gps;

    iget-wide v2, p0, Lcn/mucang/jiakaoyi/uilib/socket/model/GpsStationInfoModel;->lat:D

    iget-wide v4, p0, Lcn/mucang/jiakaoyi/uilib/socket/model/GpsStationInfoModel;->lon:D

    invoke-direct {v1, v2, v3, v4, v5}, Lcn/mucang/android/jiakaoyi/signal/pos/Gps;-><init>(DD)V

    invoke-virtual {v0, v1}, Lcn/mucang/android/jiakaoyi/signal/gps/GpsAnalysis;->r(Lcn/mucang/android/jiakaoyi/signal/pos/Gps;)V

    .line 2
    invoke-static {}, Lcn/mucang/android/jiakaoyi/signal/gps/GpsAnalysis;->f()Lcn/mucang/android/jiakaoyi/signal/gps/GpsAnalysis;

    move-result-object v0

    iget-object p0, p0, Lcn/mucang/jiakaoyi/uilib/socket/model/GpsStationInfoModel;->name:Ljava/lang/String;

    invoke-virtual {v0, p0}, Lcn/mucang/android/jiakaoyi/signal/gps/GpsAnalysis;->s(Ljava/lang/String;)V

    return-void
.end method

.method public static b(Lcn/mucang/jiakaoyi/uilib/socket/model/GpsStationInfoModel;)V
    .locals 6

    if-eqz p0, :cond_1

    .line 1
    sget-object v0, Lcn/mucang/jiakaoyi/uilib/rtmc/e;->a:Lcn/mucang/android/jiakaoyi/framework/utils/r0;

    invoke-virtual {v0}, Lcn/mucang/android/jiakaoyi/framework/utils/r0;->b()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcn/mucang/jiakaoyi/uilib/socket/model/GpsStationInfoModel;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 2
    invoke-virtual {v0, p0}, Lcn/mucang/android/jiakaoyi/framework/utils/r0;->j(Ljava/lang/Object;)V

    .line 3
    :cond_0
    iget-object v0, p0, Lcn/mucang/jiakaoyi/uilib/socket/model/GpsStationInfoModel;->name:Ljava/lang/String;

    sput-object v0, Lcn/mucang/jiakaoyi/uilib/rtmc/e;->b:Ljava/lang/String;

    .line 4
    invoke-static {}, Lcn/mucang/android/jiakaoyi/signal/gps/GpsAnalysis;->f()Lcn/mucang/android/jiakaoyi/signal/gps/GpsAnalysis;

    move-result-object v0

    new-instance v1, Lcn/mucang/android/jiakaoyi/signal/pos/Gps;

    iget-wide v2, p0, Lcn/mucang/jiakaoyi/uilib/socket/model/GpsStationInfoModel;->lat:D

    iget-wide v4, p0, Lcn/mucang/jiakaoyi/uilib/socket/model/GpsStationInfoModel;->lon:D

    invoke-direct {v1, v2, v3, v4, v5}, Lcn/mucang/android/jiakaoyi/signal/pos/Gps;-><init>(DD)V

    invoke-virtual {v0, v1}, Lcn/mucang/android/jiakaoyi/signal/gps/GpsAnalysis;->r(Lcn/mucang/android/jiakaoyi/signal/pos/Gps;)V

    .line 5
    invoke-static {}, Lcn/mucang/android/jiakaoyi/signal/gps/GpsAnalysis;->f()Lcn/mucang/android/jiakaoyi/signal/gps/GpsAnalysis;

    move-result-object v0

    iget-object p0, p0, Lcn/mucang/jiakaoyi/uilib/socket/model/GpsStationInfoModel;->name:Ljava/lang/String;

    invoke-virtual {v0, p0}, Lcn/mucang/android/jiakaoyi/signal/gps/GpsAnalysis;->s(Ljava/lang/String;)V

    :cond_1
    return-void
.end method
