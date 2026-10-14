.class public Lcn/mucang/jiakaoyi/uilib/socket/y/o;
.super Lcn/mucang/jiakaoyi/uilib/socket/y/w;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcn/mucang/jiakaoyi/uilib/socket/y/w<",
        "Lcn/mucang/jiakaoyi/uilib/socket/model/ReLoginModel;",
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

.method static synthetic c(Lcn/mucang/jiakaoyi/uilib/socket/model/ReLoginModel;)V
    .locals 2

    .line 1
    invoke-static {}, Lcn/mucang/jiakaoyi/uilib/socket/t;->b()Lcn/mucang/jiakaoyi/uilib/socket/MCSocketManager;

    move-result-object v0

    iget-object v1, p0, Lcn/mucang/jiakaoyi/uilib/socket/model/ReLoginModel;->host:Ljava/lang/String;

    iget p0, p0, Lcn/mucang/jiakaoyi/uilib/socket/model/ReLoginModel;->port:I

    invoke-virtual {v0, v1, p0}, Lcn/mucang/jiakaoyi/uilib/socket/MCSocketManager;->E(Ljava/lang/String;I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic a(Lcn/mucang/jiakaoyi/uilib/socket/SocketModel;)Z
    .locals 0

    .line 1
    check-cast p1, Lcn/mucang/jiakaoyi/uilib/socket/model/ReLoginModel;

    invoke-virtual {p0, p1}, Lcn/mucang/jiakaoyi/uilib/socket/y/o;->b(Lcn/mucang/jiakaoyi/uilib/socket/model/ReLoginModel;)Z

    move-result p1

    return p1
.end method

.method public b(Lcn/mucang/jiakaoyi/uilib/socket/model/ReLoginModel;)Z
    .locals 3

    const-string v0, "MCSocketManager"

    const-string v1, "\u6536\u5230gps\u670d\u52a1\u5668\u91cd\u8fde\u6d88\u606f"

    .line 1
    invoke-static {v0, v1}, Lcn/mucang/android/core/utils/t;->h(Ljava/lang/String;Ljava/lang/String;)I

    .line 2
    new-instance v0, Lcn/mucang/jiakaoyi/uilib/socket/y/a;

    invoke-direct {v0, p1}, Lcn/mucang/jiakaoyi/uilib/socket/y/a;-><init>(Lcn/mucang/jiakaoyi/uilib/socket/model/ReLoginModel;)V

    const-wide/16 v1, 0x3e8

    invoke-static {v0, v1, v2}, Lcn/mucang/android/core/utils/u;->d(Ljava/lang/Runnable;J)V

    const/4 p1, 0x1

    return p1
.end method
