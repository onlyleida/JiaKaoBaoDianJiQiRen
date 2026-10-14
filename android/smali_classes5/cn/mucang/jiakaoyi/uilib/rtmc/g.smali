.class public final Lcn/mucang/jiakaoyi/uilib/rtmc/g;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u001e\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\u0018\u00002\u00020\u0001B\u0005\u00a2\u0006\u0002\u0010\u0002J\u0018\u0010\u0003\u001a\u00020\u00042\u0008\u0010\u0005\u001a\u0004\u0018\u00010\u00062\u0006\u0010\u0007\u001a\u00020\u0008\u00a8\u0006\t"
    }
    d2 = {
        "Lcn/mucang/jiakaoyi/uilib/rtmc/GpsStationFactory;",
        "",
        "()V",
        "newStation",
        "Lcn/mucang/jiakaoyi/uilib/rtmc/AbsGpsStation;",
        "listener",
        "Lcn/mucang/jiakaoyi/uilib/rtmc/DiffDataListener;",
        "stationModel",
        "Lcn/mucang/jiakaoyi/uilib/socket/model/GpsStationModel;",
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
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lcn/mucang/jiakaoyi/uilib/rtmc/f;Lcn/mucang/jiakaoyi/uilib/socket/model/GpsStationModel;)Lcn/mucang/jiakaoyi/uilib/rtmc/d;
    .locals 2

    const-string v0, "stationModel"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-byte v0, p2, Lcn/mucang/jiakaoyi/uilib/socket/model/GpsStationModel;->station:B

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 2
    new-instance v0, Lcn/mucang/jiakaoyi/uilib/rtmc/i/a;

    invoke-direct {v0, p1, p2}, Lcn/mucang/jiakaoyi/uilib/rtmc/i/a;-><init>(Lcn/mucang/jiakaoyi/uilib/rtmc/f;Lcn/mucang/jiakaoyi/uilib/socket/model/GpsStationModel;)V

    goto :goto_0

    :cond_0
    const/4 p2, 0x1

    if-ne v0, p2, :cond_1

    .line 3
    new-instance v0, Lcn/mucang/jiakaoyi/uilib/rtmc/j/a;

    invoke-direct {v0, p1}, Lcn/mucang/jiakaoyi/uilib/rtmc/j/a;-><init>(Lcn/mucang/jiakaoyi/uilib/rtmc/f;)V

    goto :goto_0

    .line 4
    :cond_1
    new-instance v0, Lcn/mucang/jiakaoyi/uilib/rtmc/j/a;

    invoke-direct {v0, p1}, Lcn/mucang/jiakaoyi/uilib/rtmc/j/a;-><init>(Lcn/mucang/jiakaoyi/uilib/rtmc/f;)V

    :goto_0
    return-object v0
.end method
