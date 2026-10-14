.class Lcn/mucang/jiakaoyi/uilib/socket/MCSocketManager$c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcn/mucang/jiakaoyi/uilib/socket/p$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/mucang/jiakaoyi/uilib/socket/MCSocketManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcn/mucang/jiakaoyi/uilib/socket/MCSocketManager;


# direct methods
.method constructor <init>(Lcn/mucang/jiakaoyi/uilib/socket/MCSocketManager;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcn/mucang/jiakaoyi/uilib/socket/MCSocketManager$c;->a:Lcn/mucang/jiakaoyi/uilib/socket/MCSocketManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private synthetic d(Lcn/mucang/jiakaoyi/uilib/socket/SocketModel;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcn/mucang/jiakaoyi/uilib/socket/MCSocketManager$c;->a:Lcn/mucang/jiakaoyi/uilib/socket/MCSocketManager;

    invoke-virtual {v0, p1}, Lcn/mucang/jiakaoyi/uilib/socket/MCSocketManager;->c(Lcn/mucang/jiakaoyi/uilib/socket/SocketModel;)V

    return-void
.end method


# virtual methods
.method public a(Lcn/mucang/jiakaoyi/uilib/socket/parser/excption/MCException;)V
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "\u5e27\u89e3\u6790\u5f02\u5e38:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcn/mucang/jiakaoyi/uilib/socket/parser/excption/MCException;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "MCSocketManager"

    invoke-static {v0, p1}, Lcn/mucang/android/core/utils/t;->a(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public b(Lcn/mucang/jiakaoyi/uilib/socket/SocketModel;)V
    .locals 1

    .line 1
    new-instance v0, Lcn/mucang/jiakaoyi/uilib/socket/a;

    invoke-direct {v0, p0, p1}, Lcn/mucang/jiakaoyi/uilib/socket/a;-><init>(Lcn/mucang/jiakaoyi/uilib/socket/MCSocketManager$c;Lcn/mucang/jiakaoyi/uilib/socket/SocketModel;)V

    invoke-static {v0}, Lcn/mucang/android/core/utils/u;->c(Ljava/lang/Runnable;)V

    return-void
.end method

.method public c(Ljava/lang/String;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcn/mucang/jiakaoyi/uilib/socket/MCSocketManager$c;->a:Lcn/mucang/jiakaoyi/uilib/socket/MCSocketManager;

    new-instance v1, Lcn/mucang/jiakaoyi/uilib/socket/n;

    invoke-direct {v1, v0}, Lcn/mucang/jiakaoyi/uilib/socket/n;-><init>(Lcn/mucang/jiakaoyi/uilib/socket/MCSocketManager;)V

    invoke-static {v1}, Lcn/mucang/android/core/utils/u;->c(Ljava/lang/Runnable;)V

    .line 2
    iget-object v0, p0, Lcn/mucang/jiakaoyi/uilib/socket/MCSocketManager$c;->a:Lcn/mucang/jiakaoyi/uilib/socket/MCSocketManager;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onConnectException:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcn/mucang/jiakaoyi/uilib/socket/MCSocketManager;->i(Ljava/lang/String;)V

    .line 3
    iget-object p1, p0, Lcn/mucang/jiakaoyi/uilib/socket/MCSocketManager$c;->a:Lcn/mucang/jiakaoyi/uilib/socket/MCSocketManager;

    const-wide/16 v0, 0x3e8

    invoke-virtual {p1, v0, v1}, Lcn/mucang/jiakaoyi/uilib/socket/MCSocketManager;->I(J)V

    return-void
.end method

.method public synthetic e(Lcn/mucang/jiakaoyi/uilib/socket/SocketModel;)V
    .locals 0

    invoke-direct {p0, p1}, Lcn/mucang/jiakaoyi/uilib/socket/MCSocketManager$c;->d(Lcn/mucang/jiakaoyi/uilib/socket/SocketModel;)V

    return-void
.end method
