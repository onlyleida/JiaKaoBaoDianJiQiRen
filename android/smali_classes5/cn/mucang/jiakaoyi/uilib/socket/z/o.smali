.class public Lcn/mucang/jiakaoyi/uilib/socket/z/o;
.super Lcn/mucang/jiakaoyi/uilib/socket/z/t;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcn/mucang/jiakaoyi/uilib/socket/z/t<",
        "Lcn/mucang/jiakaoyi/uilib/socket/model/GpsBaseModel;",
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
    invoke-virtual {p0, p1, p2}, Lcn/mucang/jiakaoyi/uilib/socket/z/o;->b(ILjava/nio/ByteBuffer;)Lcn/mucang/jiakaoyi/uilib/socket/model/GpsBaseModel;

    move-result-object p1

    return-object p1
.end method

.method public b(ILjava/nio/ByteBuffer;)Lcn/mucang/jiakaoyi/uilib/socket/model/GpsBaseModel;
    .locals 1

    .line 1
    new-instance p1, Ljava/lang/String;

    invoke-virtual {p2}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/String;-><init>([B)V

    .line 2
    sput-object p1, Lcn/mucang/jiakaoyi/uilib/rtmc/e;->b:Ljava/lang/String;

    .line 3
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "\u6536\u52300x43\u6d88\u606f\uff0c\u8bbe\u7f6e\u57fa\u7ad9\u540d\u79f0:"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v0, Lcn/mucang/jiakaoyi/uilib/rtmc/e;->b:Ljava/lang/String;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Lcn/mucang/android/jiakaoyi/framework/log/f;->f(Ljava/lang/Object;)V

    .line 4
    new-instance p2, Lcn/mucang/jiakaoyi/uilib/socket/model/GpsBaseModel;

    invoke-direct {p2, p1}, Lcn/mucang/jiakaoyi/uilib/socket/model/GpsBaseModel;-><init>(Ljava/lang/String;)V

    .line 5
    const-class p1, Lcn/mucang/jiakaoyi/uilib/socket/model/GpsBaseModel;

    invoke-static {p1}, Lcn/mucang/android/jiakaoyi/framework/bus/LiveBus;->d(Ljava/lang/Class;)Landroidx/lifecycle/c;

    move-result-object p1

    invoke-virtual {p1, p2}, Landroidx/lifecycle/z;->l(Ljava/lang/Object;)V

    return-object p2
.end method
