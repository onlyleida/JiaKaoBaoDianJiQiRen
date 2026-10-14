.class public Lcn/mucang/jiakaoyi/uilib/socket/model/PushSwitchModel;
.super Lcn/mucang/jiakaoyi/uilib/socket/SocketModel;
.source "SourceFile"


# instance fields
.field public isEnable:Z


# direct methods
.method public constructor <init>(Z)V
    .locals 1

    const/16 v0, 0xb8

    .line 1
    invoke-direct {p0, v0}, Lcn/mucang/jiakaoyi/uilib/socket/SocketModel;-><init>(I)V

    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Lcn/mucang/jiakaoyi/uilib/socket/model/PushSwitchModel;->isEnable:Z

    .line 3
    iput-boolean p1, p0, Lcn/mucang/jiakaoyi/uilib/socket/model/PushSwitchModel;->isEnable:Z

    return-void
.end method
