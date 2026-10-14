.class Lcn/mucang/jiakaoyi/uilib/socket/a0/l$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/lifecycle/a0;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/mucang/jiakaoyi/uilib/socket/a0/l;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroidx/lifecycle/a0<",
        "Lcn/mucang/jiakaoyi/uilib/socket/model/UdpResponse;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcn/mucang/jiakaoyi/uilib/socket/a0/l;


# direct methods
.method constructor <init>(Lcn/mucang/jiakaoyi/uilib/socket/a0/l;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcn/mucang/jiakaoyi/uilib/socket/a0/l$a;->a:Lcn/mucang/jiakaoyi/uilib/socket/a0/l;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private synthetic a()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcn/mucang/jiakaoyi/uilib/socket/a0/l$a;->a:Lcn/mucang/jiakaoyi/uilib/socket/a0/l;

    invoke-static {v0}, Lcn/mucang/jiakaoyi/uilib/socket/a0/l;->b(Lcn/mucang/jiakaoyi/uilib/socket/a0/l;)V

    return-void
.end method


# virtual methods
.method public synthetic b()V
    .locals 0

    invoke-direct {p0}, Lcn/mucang/jiakaoyi/uilib/socket/a0/l$a;->a()V

    return-void
.end method

.method public c(Lcn/mucang/jiakaoyi/uilib/socket/model/UdpResponse;)V
    .locals 2

    .line 1
    invoke-virtual {p1}, Lcn/mucang/jiakaoyi/uilib/socket/SocketModel;->getType()I

    move-result v0

    const/16 v1, 0x13

    if-eq v0, v1, :cond_0

    return-void

    .line 2
    :cond_0
    iget-object v0, p0, Lcn/mucang/jiakaoyi/uilib/socket/a0/l$a;->a:Lcn/mucang/jiakaoyi/uilib/socket/a0/l;

    iget-object p1, p1, Lcn/mucang/jiakaoyi/uilib/socket/model/UdpResponse;->t:Ljava/lang/String;

    invoke-static {v0, p1}, Lcn/mucang/jiakaoyi/uilib/socket/a0/l;->a(Lcn/mucang/jiakaoyi/uilib/socket/a0/l;Ljava/lang/String;)Ljava/lang/String;

    const-string p1, "\u6536\u5230udp token"

    .line 3
    invoke-static {p1}, Lcn/mucang/android/jiakaoyi/framework/log/f;->f(Ljava/lang/Object;)V

    .line 4
    new-instance p1, Ljava/lang/Thread;

    new-instance v0, Lcn/mucang/jiakaoyi/uilib/socket/a0/e;

    invoke-direct {v0, p0}, Lcn/mucang/jiakaoyi/uilib/socket/a0/e;-><init>(Lcn/mucang/jiakaoyi/uilib/socket/a0/l$a;)V

    invoke-direct {p1, v0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {p1}, Ljava/lang/Thread;->start()V

    return-void
.end method

.method public bridge synthetic onChanged(Ljava/lang/Object;)V
    .locals 0

    .line 1
    check-cast p1, Lcn/mucang/jiakaoyi/uilib/socket/model/UdpResponse;

    invoke-virtual {p0, p1}, Lcn/mucang/jiakaoyi/uilib/socket/a0/l$a;->c(Lcn/mucang/jiakaoyi/uilib/socket/model/UdpResponse;)V

    return-void
.end method
