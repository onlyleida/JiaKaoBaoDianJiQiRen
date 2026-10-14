.class Lcn/mucang/jiakaoyi/uilib/socket/a0/k$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/lifecycle/a0;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/mucang/jiakaoyi/uilib/socket/a0/k;
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
.field final synthetic a:Lcn/mucang/jiakaoyi/uilib/socket/a0/k;


# direct methods
.method constructor <init>(Lcn/mucang/jiakaoyi/uilib/socket/a0/k;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcn/mucang/jiakaoyi/uilib/socket/a0/k$a;->a:Lcn/mucang/jiakaoyi/uilib/socket/a0/k;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcn/mucang/jiakaoyi/uilib/socket/model/UdpResponse;)V
    .locals 2

    .line 1
    invoke-virtual {p1}, Lcn/mucang/jiakaoyi/uilib/socket/SocketModel;->getType()I

    move-result v0

    const/16 v1, 0x15

    if-eq v0, v1, :cond_0

    return-void

    .line 2
    :cond_0
    iget-object v0, p0, Lcn/mucang/jiakaoyi/uilib/socket/a0/k$a;->a:Lcn/mucang/jiakaoyi/uilib/socket/a0/k;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcn/mucang/jiakaoyi/uilib/socket/a0/k;->a(Lcn/mucang/jiakaoyi/uilib/socket/a0/k;I)I

    .line 3
    iget-object v0, p0, Lcn/mucang/jiakaoyi/uilib/socket/a0/k$a;->a:Lcn/mucang/jiakaoyi/uilib/socket/a0/k;

    invoke-static {v0, v1}, Lcn/mucang/jiakaoyi/uilib/socket/a0/k;->b(Lcn/mucang/jiakaoyi/uilib/socket/a0/k;I)I

    .line 4
    iget-object v0, p0, Lcn/mucang/jiakaoyi/uilib/socket/a0/k$a;->a:Lcn/mucang/jiakaoyi/uilib/socket/a0/k;

    iget-object v1, p1, Lcn/mucang/jiakaoyi/uilib/socket/model/UdpResponse;->t:Ljava/lang/String;

    invoke-static {v0, v1}, Lcn/mucang/jiakaoyi/uilib/socket/a0/k;->c(Lcn/mucang/jiakaoyi/uilib/socket/a0/k;Ljava/lang/String;)Ljava/lang/String;

    .line 5
    iget-object v0, p0, Lcn/mucang/jiakaoyi/uilib/socket/a0/k$a;->a:Lcn/mucang/jiakaoyi/uilib/socket/a0/k;

    iget-object p1, p1, Lcn/mucang/jiakaoyi/uilib/socket/model/UdpResponse;->token:[B

    invoke-static {v0, p1}, Lcn/mucang/jiakaoyi/uilib/socket/a0/k;->d(Lcn/mucang/jiakaoyi/uilib/socket/a0/k;[B)[B

    const-string p1, "\u4e1a\u52a1udp:\u6536\u5230\u4e1a\u52a1token"

    .line 6
    invoke-static {p1}, Lcn/mucang/android/jiakaoyi/framework/log/f;->f(Ljava/lang/Object;)V

    .line 7
    iget-object p1, p0, Lcn/mucang/jiakaoyi/uilib/socket/a0/k$a;->a:Lcn/mucang/jiakaoyi/uilib/socket/a0/k;

    invoke-static {p1}, Lcn/mucang/jiakaoyi/uilib/socket/a0/k;->e(Lcn/mucang/jiakaoyi/uilib/socket/a0/k;)V

    return-void
.end method

.method public bridge synthetic onChanged(Ljava/lang/Object;)V
    .locals 0

    .line 1
    check-cast p1, Lcn/mucang/jiakaoyi/uilib/socket/model/UdpResponse;

    invoke-virtual {p0, p1}, Lcn/mucang/jiakaoyi/uilib/socket/a0/k$a;->a(Lcn/mucang/jiakaoyi/uilib/socket/model/UdpResponse;)V

    return-void
.end method
