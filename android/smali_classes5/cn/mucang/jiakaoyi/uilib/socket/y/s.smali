.class public Lcn/mucang/jiakaoyi/uilib/socket/y/s;
.super Lcn/mucang/jiakaoyi/uilib/socket/y/w;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcn/mucang/jiakaoyi/uilib/socket/y/w<",
        "Lcn/mucang/jiakaoyi/uilib/socket/model/LogDebugRequest;",
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
    check-cast p1, Lcn/mucang/jiakaoyi/uilib/socket/model/LogDebugRequest;

    invoke-virtual {p0, p1}, Lcn/mucang/jiakaoyi/uilib/socket/y/s;->b(Lcn/mucang/jiakaoyi/uilib/socket/model/LogDebugRequest;)Z

    move-result p1

    return p1
.end method

.method public b(Lcn/mucang/jiakaoyi/uilib/socket/model/LogDebugRequest;)Z
    .locals 0

    const/4 p1, 0x1

    return p1
.end method
