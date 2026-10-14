.class public Lcn/mucang/jiakaoyi/uilib/socket/model/LogDebugRequest;
.super Lcn/mucang/jiakaoyi/uilib/socket/SocketModel;
.source "SourceFile"


# instance fields
.field public cmd:B


# direct methods
.method public constructor <init>()V
    .locals 1

    const/16 v0, 0xb1

    .line 1
    invoke-direct {p0, v0}, Lcn/mucang/jiakaoyi/uilib/socket/SocketModel;-><init>(I)V

    return-void
.end method


# virtual methods
.method public isEnd()Z
    .locals 1

    .line 1
    iget-byte v0, p0, Lcn/mucang/jiakaoyi/uilib/socket/model/LogDebugRequest;->cmd:B

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isStart()Z
    .locals 2

    .line 1
    iget-byte v0, p0, Lcn/mucang/jiakaoyi/uilib/socket/model/LogDebugRequest;->cmd:B

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method
