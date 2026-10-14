.class public Lcn/mucang/jiakaoyi/uilib/socket/z/x;
.super Lcn/mucang/jiakaoyi/uilib/socket/z/t;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcn/mucang/jiakaoyi/uilib/socket/z/t<",
        "Lcn/mucang/jiakaoyi/uilib/socket/model/LogUploadRequest;",
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
    invoke-virtual {p0, p1, p2}, Lcn/mucang/jiakaoyi/uilib/socket/z/x;->b(ILjava/nio/ByteBuffer;)Lcn/mucang/jiakaoyi/uilib/socket/model/LogUploadRequest;

    move-result-object p1

    return-object p1
.end method

.method public b(ILjava/nio/ByteBuffer;)Lcn/mucang/jiakaoyi/uilib/socket/model/LogUploadRequest;
    .locals 2

    .line 1
    new-instance p1, Lcn/mucang/jiakaoyi/uilib/socket/model/LogUploadRequest;

    invoke-direct {p1}, Lcn/mucang/jiakaoyi/uilib/socket/model/LogUploadRequest;-><init>()V

    .line 2
    invoke-virtual {p2}, Ljava/nio/ByteBuffer;->getLong()J

    move-result-wide v0

    iput-wide v0, p1, Lcn/mucang/jiakaoyi/uilib/socket/model/LogUploadRequest;->startTime:J

    .line 3
    invoke-virtual {p2}, Ljava/nio/ByteBuffer;->getLong()J

    move-result-wide v0

    iput-wide v0, p1, Lcn/mucang/jiakaoyi/uilib/socket/model/LogUploadRequest;->endTime:J

    .line 4
    invoke-virtual {p2}, Ljava/nio/ByteBuffer;->get()B

    move-result p2

    iput-byte p2, p1, Lcn/mucang/jiakaoyi/uilib/socket/model/LogUploadRequest;->cmdType:B

    return-object p1
.end method
