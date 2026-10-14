.class public Lcn/mucang/jiakaoyi/uilib/socket/z/u;
.super Lcn/mucang/jiakaoyi/uilib/socket/z/t;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcn/mucang/jiakaoyi/uilib/socket/z/t<",
        "Lcn/mucang/jiakaoyi/uilib/socket/model/ReLoginModel;",
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
    invoke-virtual {p0, p1, p2}, Lcn/mucang/jiakaoyi/uilib/socket/z/u;->b(ILjava/nio/ByteBuffer;)Lcn/mucang/jiakaoyi/uilib/socket/model/ReLoginModel;

    move-result-object p1

    return-object p1
.end method

.method public b(ILjava/nio/ByteBuffer;)Lcn/mucang/jiakaoyi/uilib/socket/model/ReLoginModel;
    .locals 1

    .line 1
    new-instance v0, Lcn/mucang/jiakaoyi/uilib/socket/model/ReLoginModel;

    invoke-direct {v0, p1}, Lcn/mucang/jiakaoyi/uilib/socket/model/ReLoginModel;-><init>(I)V

    .line 2
    invoke-virtual {p2}, Ljava/nio/ByteBuffer;->getShort()S

    move-result p1

    iput p1, v0, Lcn/mucang/jiakaoyi/uilib/socket/model/ReLoginModel;->port:I

    .line 3
    invoke-virtual {p2}, Ljava/nio/ByteBuffer;->remaining()I

    move-result p1

    new-array p1, p1, [B

    .line 4
    invoke-virtual {p2, p1}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    .line 5
    new-instance p2, Ljava/lang/String;

    invoke-direct {p2, p1}, Ljava/lang/String;-><init>([B)V

    iput-object p2, v0, Lcn/mucang/jiakaoyi/uilib/socket/model/ReLoginModel;->host:Ljava/lang/String;

    .line 6
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "\u6536\u5230\u5207\u6362socket\u7684\u6307\u4ee4:"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p2, v0, Lcn/mucang/jiakaoyi/uilib/socket/model/ReLoginModel;->host:Ljava/lang/String;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, ", "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p2, v0, Lcn/mucang/jiakaoyi/uilib/socket/model/ReLoginModel;->port:I

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "MCSocketManager"

    invoke-static {p2, p1}, Lcn/mucang/android/core/utils/t;->h(Ljava/lang/String;Ljava/lang/String;)I

    return-object v0
.end method
