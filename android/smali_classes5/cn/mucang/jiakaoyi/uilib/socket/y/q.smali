.class public Lcn/mucang/jiakaoyi/uilib/socket/y/q;
.super Lcn/mucang/jiakaoyi/uilib/socket/y/w;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcn/mucang/jiakaoyi/uilib/socket/y/w<",
        "Lcn/mucang/jiakaoyi/uilib/socket/model/HeartModel;",
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
    check-cast p1, Lcn/mucang/jiakaoyi/uilib/socket/model/HeartModel;

    invoke-virtual {p0, p1}, Lcn/mucang/jiakaoyi/uilib/socket/y/q;->b(Lcn/mucang/jiakaoyi/uilib/socket/model/HeartModel;)Z

    move-result p1

    return p1
.end method

.method public b(Lcn/mucang/jiakaoyi/uilib/socket/model/HeartModel;)Z
    .locals 2

    .line 1
    invoke-static {}, Lcn/mucang/jiakaoyi/uilib/socket/t;->a()Lcn/mucang/jiakaoyi/uilib/socket/MCSocketManager;

    move-result-object v0

    iget p1, p1, Lcn/mucang/jiakaoyi/uilib/socket/model/HeartModel;->index:I

    const/4 v1, 0x1

    invoke-virtual {v0, p1, v1}, Lcn/mucang/jiakaoyi/uilib/socket/MCSocketManager;->M(IZ)Z

    return v1
.end method
