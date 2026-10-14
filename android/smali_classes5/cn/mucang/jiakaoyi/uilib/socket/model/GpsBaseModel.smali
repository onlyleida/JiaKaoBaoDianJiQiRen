.class public Lcn/mucang/jiakaoyi/uilib/socket/model/GpsBaseModel;
.super Lcn/mucang/jiakaoyi/uilib/socket/SocketModel;
.source "SourceFile"


# instance fields
.field private final gpsBaseName:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 1

    const/16 v0, 0x43

    .line 1
    invoke-direct {p0, v0}, Lcn/mucang/jiakaoyi/uilib/socket/SocketModel;-><init>(I)V

    .line 2
    iput-object p1, p0, Lcn/mucang/jiakaoyi/uilib/socket/model/GpsBaseModel;->gpsBaseName:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getGpsBaseName()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcn/mucang/jiakaoyi/uilib/socket/model/GpsBaseModel;->gpsBaseName:Ljava/lang/String;

    return-object v0
.end method
