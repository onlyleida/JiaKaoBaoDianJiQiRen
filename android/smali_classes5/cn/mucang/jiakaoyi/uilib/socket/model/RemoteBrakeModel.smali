.class public Lcn/mucang/jiakaoyi/uilib/socket/model/RemoteBrakeModel;
.super Lcn/mucang/jiakaoyi/uilib/socket/SocketModel;
.source "SourceFile"


# instance fields
.field public final cmd:B


# direct methods
.method public constructor <init>(B)V
    .locals 1

    const/16 v0, 0x91

    .line 1
    invoke-direct {p0, v0}, Lcn/mucang/jiakaoyi/uilib/socket/SocketModel;-><init>(I)V

    .line 2
    iput-byte p1, p0, Lcn/mucang/jiakaoyi/uilib/socket/model/RemoteBrakeModel;->cmd:B

    return-void
.end method
