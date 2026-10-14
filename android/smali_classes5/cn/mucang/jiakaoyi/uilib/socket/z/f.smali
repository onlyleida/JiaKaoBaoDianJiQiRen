.class public Lcn/mucang/jiakaoyi/uilib/socket/z/f;
.super Lcn/mucang/jiakaoyi/uilib/socket/z/t;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcn/mucang/jiakaoyi/uilib/socket/z/t<",
        "Lcn/mucang/jiakaoyi/uilib/socket/model/GearSetModel;",
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
    invoke-virtual {p0, p1, p2}, Lcn/mucang/jiakaoyi/uilib/socket/z/f;->b(ILjava/nio/ByteBuffer;)Lcn/mucang/jiakaoyi/uilib/socket/model/GearSetModel;

    move-result-object p1

    return-object p1
.end method

.method public b(ILjava/nio/ByteBuffer;)Lcn/mucang/jiakaoyi/uilib/socket/model/GearSetModel;
    .locals 2

    .line 1
    invoke-virtual {p2}, Ljava/nio/ByteBuffer;->getShort()S

    move-result p1

    .line 2
    invoke-virtual {p2}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v0

    .line 3
    new-array v0, v0, [B

    .line 4
    invoke-virtual {p2, v0}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    .line 5
    invoke-virtual {p2}, Ljava/nio/ByteBuffer;->get()B

    move-result p2

    .line 6
    new-instance v1, Lcn/mucang/jiakaoyi/uilib/socket/model/GearSetModel;

    invoke-direct {v1, p1, p2, v0}, Lcn/mucang/jiakaoyi/uilib/socket/model/GearSetModel;-><init>(II[B)V

    return-object v1
.end method
