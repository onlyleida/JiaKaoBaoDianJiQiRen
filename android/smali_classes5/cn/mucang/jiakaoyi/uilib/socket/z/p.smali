.class public Lcn/mucang/jiakaoyi/uilib/socket/z/p;
.super Lcn/mucang/jiakaoyi/uilib/socket/z/t;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcn/mucang/jiakaoyi/uilib/socket/z/t<",
        "Lcn/mucang/jiakaoyi/uilib/socket/model/GpsStationInfoModel;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcn/mucang/jiakaoyi/uilib/socket/z/t;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic a(ILjava/nio/ByteBuffer;)Lcn/mucang/jiakaoyi/uilib/socket/SocketModel;
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2}, Lcn/mucang/jiakaoyi/uilib/socket/z/p;->b(ILjava/nio/ByteBuffer;)Lcn/mucang/jiakaoyi/uilib/socket/model/GpsStationInfoModel;

    move-result-object p1

    return-object p1
.end method

.method public b(ILjava/nio/ByteBuffer;)Lcn/mucang/jiakaoyi/uilib/socket/model/GpsStationInfoModel;
    .locals 4

    .line 1
    new-instance p1, Lcn/mucang/jiakaoyi/uilib/socket/model/GpsStationInfoModel;

    invoke-direct {p1}, Lcn/mucang/jiakaoyi/uilib/socket/model/GpsStationInfoModel;-><init>()V

    .line 2
    invoke-virtual {p2}, Ljava/nio/ByteBuffer;->getShort()S

    move-result v0

    .line 3
    new-array v0, v0, [B

    .line 4
    invoke-virtual {p2, v0}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    .line 5
    new-instance v1, Ljava/lang/String;

    invoke-direct {v1, v0}, Ljava/lang/String;-><init>([B)V

    iput-object v1, p1, Lcn/mucang/jiakaoyi/uilib/socket/model/GpsStationInfoModel;->name:Ljava/lang/String;

    .line 6
    invoke-virtual {p2}, Ljava/nio/ByteBuffer;->get()B

    move-result v0

    iput v0, p1, Lcn/mucang/jiakaoyi/uilib/socket/model/GpsStationInfoModel;->status:I

    .line 7
    invoke-virtual {p2}, Ljava/nio/ByteBuffer;->getDouble()D

    move-result-wide v0

    iput-wide v0, p1, Lcn/mucang/jiakaoyi/uilib/socket/model/GpsStationInfoModel;->lat:D

    .line 8
    invoke-virtual {p2}, Ljava/nio/ByteBuffer;->getDouble()D

    move-result-wide v0

    iput-wide v0, p1, Lcn/mucang/jiakaoyi/uilib/socket/model/GpsStationInfoModel;->lon:D

    .line 9
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "\u6536\u52300x46\u6d88\u606f\uff0c\u57fa\u7ad9\u4fe1\u606f:"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p1, Lcn/mucang/jiakaoyi/uilib/socket/model/GpsStationInfoModel;->name:Ljava/lang/String;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ","

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p1, Lcn/mucang/jiakaoyi/uilib/socket/model/GpsStationInfoModel;->status:I

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p1, Lcn/mucang/jiakaoyi/uilib/socket/model/GpsStationInfoModel;->lat:D

    invoke-virtual {p2, v1, v2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v0, p1, Lcn/mucang/jiakaoyi/uilib/socket/model/GpsStationInfoModel;->lon:D

    invoke-virtual {p2, v0, v1}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Lcn/mucang/android/jiakaoyi/framework/log/f;->f(Ljava/lang/Object;)V

    .line 10
    iget-wide v0, p1, Lcn/mucang/jiakaoyi/uilib/socket/model/GpsStationInfoModel;->lat:D

    const-wide v2, 0x3f847ae147ae147bL    # 0.01

    sub-double/2addr v0, v2

    iput-wide v0, p1, Lcn/mucang/jiakaoyi/uilib/socket/model/GpsStationInfoModel;->lat:D

    .line 11
    iget-wide v0, p1, Lcn/mucang/jiakaoyi/uilib/socket/model/GpsStationInfoModel;->lon:D

    sub-double/2addr v0, v2

    iput-wide v0, p1, Lcn/mucang/jiakaoyi/uilib/socket/model/GpsStationInfoModel;->lon:D

    return-object p1
.end method
