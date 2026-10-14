.class Lcn/mucang/jiakaoyi/uilib/socket/r$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcn/mucang/android/jiakaoyi/signal/com/heartbeat/a$b;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/mucang/jiakaoyi/uilib/socket/r;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcn/mucang/jiakaoyi/uilib/socket/r;


# direct methods
.method constructor <init>(Lcn/mucang/jiakaoyi/uilib/socket/r;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcn/mucang/jiakaoyi/uilib/socket/r$a;->a:Lcn/mucang/jiakaoyi/uilib/socket/r;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(I)V
    .locals 2

    .line 1
    iget-object p1, p0, Lcn/mucang/jiakaoyi/uilib/socket/r$a;->a:Lcn/mucang/jiakaoyi/uilib/socket/r;

    invoke-static {p1}, Lcn/mucang/jiakaoyi/uilib/socket/r;->a(Lcn/mucang/jiakaoyi/uilib/socket/r;)Z

    move-result p1

    const-wide/16 v0, 0x3e8

    if-eqz p1, :cond_0

    .line 2
    invoke-static {}, Lcn/mucang/jiakaoyi/uilib/socket/t;->b()Lcn/mucang/jiakaoyi/uilib/socket/MCSocketManager;

    move-result-object p1

    invoke-virtual {p1, v0, v1}, Lcn/mucang/jiakaoyi/uilib/socket/MCSocketManager;->I(J)V

    goto :goto_0

    .line 3
    :cond_0
    invoke-static {}, Lcn/mucang/jiakaoyi/uilib/socket/t;->a()Lcn/mucang/jiakaoyi/uilib/socket/MCSocketManager;

    move-result-object p1

    invoke-virtual {p1, v0, v1}, Lcn/mucang/jiakaoyi/uilib/socket/MCSocketManager;->I(J)V

    :goto_0
    return-void
.end method

.method public synthetic b()Z
    .locals 1

    invoke-static {p0}, Lcn/mucang/android/jiakaoyi/signal/com/heartbeat/b;->a(Lcn/mucang/android/jiakaoyi/signal/com/heartbeat/a$b;)Z

    move-result v0

    return v0
.end method

.method public c(I)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcn/mucang/jiakaoyi/uilib/socket/r$a;->a:Lcn/mucang/jiakaoyi/uilib/socket/r;

    invoke-static {v0}, Lcn/mucang/jiakaoyi/uilib/socket/r;->a(Lcn/mucang/jiakaoyi/uilib/socket/r;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 2
    invoke-static {}, Lcn/mucang/jiakaoyi/uilib/socket/t;->b()Lcn/mucang/jiakaoyi/uilib/socket/MCSocketManager;

    move-result-object v0

    invoke-virtual {v0, p1, v1}, Lcn/mucang/jiakaoyi/uilib/socket/MCSocketManager;->M(IZ)Z

    goto :goto_0

    .line 3
    :cond_0
    invoke-static {}, Lcn/mucang/jiakaoyi/uilib/socket/t;->a()Lcn/mucang/jiakaoyi/uilib/socket/MCSocketManager;

    move-result-object v0

    invoke-virtual {v0, p1, v1}, Lcn/mucang/jiakaoyi/uilib/socket/MCSocketManager;->M(IZ)Z

    :goto_0
    return-void
.end method

.method public name()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcn/mucang/jiakaoyi/uilib/socket/r$a;->a:Lcn/mucang/jiakaoyi/uilib/socket/r;

    invoke-static {v0}, Lcn/mucang/jiakaoyi/uilib/socket/r;->a(Lcn/mucang/jiakaoyi/uilib/socket/r;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "GpsService"

    goto :goto_0

    :cond_0
    const-string v0, "BusinessService"

    :goto_0
    return-object v0
.end method
