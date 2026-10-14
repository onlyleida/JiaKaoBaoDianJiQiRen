.class public Lcn/mucang/jiakaoyi/uilib/socket/z/e0;
.super Lcn/mucang/jiakaoyi/uilib/socket/z/t;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcn/mucang/jiakaoyi/uilib/socket/z/t<",
        "Lcn/mucang/jiakaoyi/uilib/socket/model/UdpResponse;",
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
    invoke-virtual {p0, p1, p2}, Lcn/mucang/jiakaoyi/uilib/socket/z/e0;->b(ILjava/nio/ByteBuffer;)Lcn/mucang/jiakaoyi/uilib/socket/model/UdpResponse;

    move-result-object p1

    return-object p1
.end method

.method public b(ILjava/nio/ByteBuffer;)Lcn/mucang/jiakaoyi/uilib/socket/model/UdpResponse;
    .locals 2

    .line 1
    invoke-virtual {p2}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object p1

    .line 2
    new-instance p2, Ljava/lang/String;

    invoke-direct {p2, p1}, Ljava/lang/String;-><init>([B)V

    .line 3
    new-instance v0, Lcn/mucang/jiakaoyi/uilib/socket/model/UdpResponse;

    const/16 v1, 0x13

    invoke-direct {v0, v1}, Lcn/mucang/jiakaoyi/uilib/socket/model/UdpResponse;-><init>(I)V

    .line 4
    iput-object p2, v0, Lcn/mucang/jiakaoyi/uilib/socket/model/UdpResponse;->t:Ljava/lang/String;

    .line 5
    iput-object p1, v0, Lcn/mucang/jiakaoyi/uilib/socket/model/UdpResponse;->token:[B

    .line 6
    const-class p1, Lcn/mucang/jiakaoyi/uilib/socket/model/UdpResponse;

    invoke-static {p1}, Lcn/mucang/android/jiakaoyi/framework/bus/LiveBus;->d(Ljava/lang/Class;)Landroidx/lifecycle/c;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroidx/lifecycle/z;->l(Ljava/lang/Object;)V

    return-object v0
.end method
