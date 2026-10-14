.class public Lcn/mucang/jiakaoyi/uilib/socket/model/AutoShuttleStartModel;
.super Lcn/mucang/jiakaoyi/uilib/socket/SocketModel;
.source "SourceFile"


# instance fields
.field public final areaId:J

.field public final shuttleId:J


# direct methods
.method public constructor <init>(JJ)V
    .locals 1

    const/16 v0, 0x51

    .line 1
    invoke-direct {p0, v0}, Lcn/mucang/jiakaoyi/uilib/socket/SocketModel;-><init>(I)V

    .line 2
    iput-wide p1, p0, Lcn/mucang/jiakaoyi/uilib/socket/model/AutoShuttleStartModel;->shuttleId:J

    .line 3
    iput-wide p3, p0, Lcn/mucang/jiakaoyi/uilib/socket/model/AutoShuttleStartModel;->areaId:J

    return-void
.end method
