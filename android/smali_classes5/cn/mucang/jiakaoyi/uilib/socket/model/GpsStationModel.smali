.class public Lcn/mucang/jiakaoyi/uilib/socket/model/GpsStationModel;
.super Lcn/mucang/jiakaoyi/uilib/socket/SocketModel;
.source "SourceFile"


# static fields
.field public static final LiuFenStation:B = 0x2t

.field public static final SelfStation:B = 0x1t


# instance fields
.field public baseId:Ljava/lang/String;

.field public baseName:Ljava/lang/String;

.field public key:Ljava/lang/String;

.field public secret:Ljava/lang/String;

.field public sn:Ljava/lang/String;

.field public station:B


# direct methods
.method public constructor <init>()V
    .locals 1

    const/16 v0, 0x24

    .line 1
    invoke-direct {p0, v0}, Lcn/mucang/jiakaoyi/uilib/socket/SocketModel;-><init>(I)V

    const/4 v0, 0x1

    .line 2
    iput-byte v0, p0, Lcn/mucang/jiakaoyi/uilib/socket/model/GpsStationModel;->station:B

    const-string v0, "\u672c\u5730\u57fa\u7ad9"

    .line 3
    iput-object v0, p0, Lcn/mucang/jiakaoyi/uilib/socket/model/GpsStationModel;->baseName:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public desc()Ljava/lang/String;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcn/mucang/jiakaoyi/uilib/socket/model/GpsStationModel;->isSelf()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "\u81ea\u5efa\u57fa\u7ad9"

    goto :goto_0

    :cond_0
    const-string v0, "\u4e91\u57fa\u7ad9"

    :goto_0
    return-object v0
.end method

.method public isLiuFen()Z
    .locals 2

    .line 1
    iget-byte v0, p0, Lcn/mucang/jiakaoyi/uilib/socket/model/GpsStationModel;->station:B

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isSelf()Z
    .locals 2

    .line 1
    iget-byte v0, p0, Lcn/mucang/jiakaoyi/uilib/socket/model/GpsStationModel;->station:B

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public set(Lcn/mucang/jiakaoyi/uilib/socket/model/GpsStationModel;)V
    .locals 1

    .line 1
    iget-byte v0, p1, Lcn/mucang/jiakaoyi/uilib/socket/model/GpsStationModel;->station:B

    iput-byte v0, p0, Lcn/mucang/jiakaoyi/uilib/socket/model/GpsStationModel;->station:B

    .line 2
    iget-object v0, p1, Lcn/mucang/jiakaoyi/uilib/socket/model/GpsStationModel;->sn:Ljava/lang/String;

    iput-object v0, p0, Lcn/mucang/jiakaoyi/uilib/socket/model/GpsStationModel;->sn:Ljava/lang/String;

    .line 3
    iget-object v0, p1, Lcn/mucang/jiakaoyi/uilib/socket/model/GpsStationModel;->key:Ljava/lang/String;

    iput-object v0, p0, Lcn/mucang/jiakaoyi/uilib/socket/model/GpsStationModel;->key:Ljava/lang/String;

    .line 4
    iget-object v0, p1, Lcn/mucang/jiakaoyi/uilib/socket/model/GpsStationModel;->secret:Ljava/lang/String;

    iput-object v0, p0, Lcn/mucang/jiakaoyi/uilib/socket/model/GpsStationModel;->secret:Ljava/lang/String;

    .line 5
    iget-object v0, p1, Lcn/mucang/jiakaoyi/uilib/socket/model/GpsStationModel;->baseId:Ljava/lang/String;

    iput-object v0, p0, Lcn/mucang/jiakaoyi/uilib/socket/model/GpsStationModel;->baseId:Ljava/lang/String;

    .line 6
    iget-object p1, p1, Lcn/mucang/jiakaoyi/uilib/socket/model/GpsStationModel;->baseName:Ljava/lang/String;

    iput-object p1, p0, Lcn/mucang/jiakaoyi/uilib/socket/model/GpsStationModel;->baseName:Ljava/lang/String;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "CBaseSnModel{station="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-byte v1, p0, Lcn/mucang/jiakaoyi/uilib/socket/model/GpsStationModel;->station:B

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", sn=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcn/mucang/jiakaoyi/uilib/socket/model/GpsStationModel;->sn:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", key=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcn/mucang/jiakaoyi/uilib/socket/model/GpsStationModel;->key:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", secret=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcn/mucang/jiakaoyi/uilib/socket/model/GpsStationModel;->secret:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
