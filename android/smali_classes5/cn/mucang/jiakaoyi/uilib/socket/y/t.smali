.class public Lcn/mucang/jiakaoyi/uilib/socket/y/t;
.super Lcn/mucang/jiakaoyi/uilib/socket/y/w;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcn/mucang/jiakaoyi/uilib/socket/y/w<",
        "Lcn/mucang/jiakaoyi/uilib/socket/model/LogUploadRequest;",
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
    check-cast p1, Lcn/mucang/jiakaoyi/uilib/socket/model/LogUploadRequest;

    invoke-virtual {p0, p1}, Lcn/mucang/jiakaoyi/uilib/socket/y/t;->b(Lcn/mucang/jiakaoyi/uilib/socket/model/LogUploadRequest;)Z

    move-result p1

    return p1
.end method

.method public b(Lcn/mucang/jiakaoyi/uilib/socket/model/LogUploadRequest;)Z
    .locals 4

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "\u6536\u5230\u670d\u52a1\u5668\u4e0a\u4f20\u65e5\u5fd7\u9700\u6c42,\u65f6\u95f4 startTime : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p1, Lcn/mucang/jiakaoyi/uilib/socket/model/LogUploadRequest;->startTime:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, " ; endTime "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p1, Lcn/mucang/jiakaoyi/uilib/socket/model/LogUploadRequest;->endTime:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcn/mucang/android/jiakaoyi/framework/log/f;->o(Ljava/lang/Object;)V

    .line 2
    iget-wide v0, p1, Lcn/mucang/jiakaoyi/uilib/socket/model/LogUploadRequest;->startTime:J

    iget-wide v2, p1, Lcn/mucang/jiakaoyi/uilib/socket/model/LogUploadRequest;->endTime:J

    invoke-static {v0, v1, v2, v3}, Lcn/mucang/android/jiakaoyi/framework/log/f;->u(JJ)V

    .line 3
    invoke-static {p1}, Lcn/mucang/android/jiakaoyi/framework/bus/LiveBus;->c(Ljava/lang/Object;)V

    const/4 p1, 0x1

    return p1
.end method
