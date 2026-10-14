.class public Lcn/mucang/jiakaoyi/uilib/socket/y/p;
.super Lcn/mucang/jiakaoyi/uilib/socket/y/w;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcn/mucang/jiakaoyi/uilib/socket/y/w<",
        "Lcn/mucang/jiakaoyi/uilib/socket/model/GpsStationInfoModel;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcn/mucang/jiakaoyi/uilib/socket/y/w;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic a(Lcn/mucang/jiakaoyi/uilib/socket/SocketModel;)Z
    .locals 0

    .line 1
    check-cast p1, Lcn/mucang/jiakaoyi/uilib/socket/model/GpsStationInfoModel;

    invoke-virtual {p0, p1}, Lcn/mucang/jiakaoyi/uilib/socket/y/p;->b(Lcn/mucang/jiakaoyi/uilib/socket/model/GpsStationInfoModel;)Z

    move-result p1

    return p1
.end method

.method public b(Lcn/mucang/jiakaoyi/uilib/socket/model/GpsStationInfoModel;)Z
    .locals 1

    .line 1
    invoke-static {p1}, Lcn/mucang/jiakaoyi/uilib/rtmc/e;->b(Lcn/mucang/jiakaoyi/uilib/socket/model/GpsStationInfoModel;)V

    .line 2
    const-class v0, Lcn/mucang/jiakaoyi/uilib/socket/model/GpsStationInfoModel;

    invoke-static {v0}, Lcn/mucang/android/jiakaoyi/framework/bus/LiveBus;->d(Ljava/lang/Class;)Landroidx/lifecycle/c;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroidx/lifecycle/z;->l(Ljava/lang/Object;)V

    const/4 p1, 0x1

    return p1
.end method
