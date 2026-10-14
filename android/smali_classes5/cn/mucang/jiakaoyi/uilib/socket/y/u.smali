.class public Lcn/mucang/jiakaoyi/uilib/socket/y/u;
.super Lcn/mucang/jiakaoyi/uilib/socket/y/w;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcn/mucang/jiakaoyi/uilib/socket/y/w<",
        "Lcn/mucang/jiakaoyi/uilib/socket/model/LoginRespModel;",
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
    check-cast p1, Lcn/mucang/jiakaoyi/uilib/socket/model/LoginRespModel;

    invoke-virtual {p0, p1}, Lcn/mucang/jiakaoyi/uilib/socket/y/u;->b(Lcn/mucang/jiakaoyi/uilib/socket/model/LoginRespModel;)Z

    move-result p1

    return p1
.end method

.method public b(Lcn/mucang/jiakaoyi/uilib/socket/model/LoginRespModel;)Z
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "\u6536\u5230\u767b\u9646\u6807\u8bb0\uff1a"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcn/mucang/jiakaoyi/uilib/socket/model/LoginRespModel;->isSuccess()Z

    move-result p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "MCLoginRespMsgHandler"

    invoke-static {v0, p1}, Lcn/mucang/android/core/utils/t;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p1, 0x1

    return p1
.end method
