.class public Lcn/mucang/jiakaoyi/uilib/socket/model/SafeModel;
.super Lcn/mucang/jiakaoyi/uilib/socket/SocketModel;
.source "SourceFile"


# instance fields
.field public final cmd:B

.field public final operation:B


# direct methods
.method public constructor <init>(BB)V
    .locals 1

    const/16 v0, 0x93

    .line 1
    invoke-direct {p0, v0}, Lcn/mucang/jiakaoyi/uilib/socket/SocketModel;-><init>(I)V

    .line 2
    iput-byte p1, p0, Lcn/mucang/jiakaoyi/uilib/socket/model/SafeModel;->cmd:B

    .line 3
    iput-byte p2, p0, Lcn/mucang/jiakaoyi/uilib/socket/model/SafeModel;->operation:B

    return-void
.end method
