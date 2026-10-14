.class public Lcn/mucang/jiakaoyi/uilib/socket/z/l;
.super Lcn/mucang/jiakaoyi/uilib/socket/z/t;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcn/mucang/jiakaoyi/uilib/socket/z/t<",
        "Lcn/mucang/jiakaoyi/uilib/socket/model/LogDebugRequest;",
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
    invoke-virtual {p0, p1, p2}, Lcn/mucang/jiakaoyi/uilib/socket/z/l;->b(ILjava/nio/ByteBuffer;)Lcn/mucang/jiakaoyi/uilib/socket/model/LogDebugRequest;

    move-result-object p1

    return-object p1
.end method

.method public b(ILjava/nio/ByteBuffer;)Lcn/mucang/jiakaoyi/uilib/socket/model/LogDebugRequest;
    .locals 0

    .line 1
    new-instance p1, Lcn/mucang/jiakaoyi/uilib/socket/model/LogDebugRequest;

    invoke-direct {p1}, Lcn/mucang/jiakaoyi/uilib/socket/model/LogDebugRequest;-><init>()V

    .line 2
    invoke-virtual {p2}, Ljava/nio/ByteBuffer;->get()B

    move-result p2

    iput-byte p2, p1, Lcn/mucang/jiakaoyi/uilib/socket/model/LogDebugRequest;->cmd:B

    return-object p1
.end method
