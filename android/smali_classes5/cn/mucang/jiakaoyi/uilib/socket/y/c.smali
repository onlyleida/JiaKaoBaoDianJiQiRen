.class public Lcn/mucang/jiakaoyi/uilib/socket/y/c;
.super Lcn/mucang/jiakaoyi/uilib/socket/y/w;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcn/mucang/jiakaoyi/uilib/socket/y/w<",
        "Lcn/mucang/jiakaoyi/uilib/socket/model/AutoShuttleCancelModel;",
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
    check-cast p1, Lcn/mucang/jiakaoyi/uilib/socket/model/AutoShuttleCancelModel;

    invoke-virtual {p0, p1}, Lcn/mucang/jiakaoyi/uilib/socket/y/c;->b(Lcn/mucang/jiakaoyi/uilib/socket/model/AutoShuttleCancelModel;)Z

    move-result p1

    return p1
.end method

.method public b(Lcn/mucang/jiakaoyi/uilib/socket/model/AutoShuttleCancelModel;)Z
    .locals 1

    const-string v0, "\u6536\u5230\u201c\u53d6\u6d88\u81ea\u52a8\u63a5\u9a73\u8f66\u201d\u6307\u4ee4"

    .line 1
    invoke-static {v0}, Lcn/mucang/android/jiakaoyi/framework/log/f;->o(Ljava/lang/Object;)V

    .line 2
    invoke-static {p1}, Lcn/mucang/android/jiakaoyi/framework/bus/LiveBus;->c(Ljava/lang/Object;)V

    const/4 p1, 0x1

    return p1
.end method
