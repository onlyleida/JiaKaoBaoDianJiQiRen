.class Lcn/mucang/jiakaoyi/uilib/socket/MCSocketManager$b;
.super Landroid/os/Handler;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/mucang/jiakaoyi/uilib/socket/MCSocketManager;->l()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcn/mucang/jiakaoyi/uilib/socket/MCSocketManager;


# direct methods
.method constructor <init>(Lcn/mucang/jiakaoyi/uilib/socket/MCSocketManager;Landroid/os/Looper;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcn/mucang/jiakaoyi/uilib/socket/MCSocketManager$b;->a:Lcn/mucang/jiakaoyi/uilib/socket/MCSocketManager;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 4

    .line 1
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x6

    if-eq v0, v1, :cond_0

    .line 2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcn/mucang/jiakaoyi/uilib/socket/MCSocketManager$b;->a:Lcn/mucang/jiakaoyi/uilib/socket/MCSocketManager;

    invoke-static {v2}, Lcn/mucang/jiakaoyi/uilib/socket/MCSocketManager;->e(Lcn/mucang/jiakaoyi/uilib/socket/MCSocketManager;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "\u5f00\u59cb\u6267\u884c\uff1a"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p1, Landroid/os/Message;->what:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcn/mucang/android/jiakaoyi/framework/log/f;->f(Ljava/lang/Object;)V

    .line 3
    :cond_0
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    instance-of v0, v0, Ljava/lang/Runnable;

    if-eqz v0, :cond_1

    .line 4
    iget-object v0, p0, Lcn/mucang/jiakaoyi/uilib/socket/MCSocketManager$b;->a:Lcn/mucang/jiakaoyi/uilib/socket/MCSocketManager;

    const/4 v2, 0x1

    invoke-static {v0, v2}, Lcn/mucang/jiakaoyi/uilib/socket/MCSocketManager;->f(Lcn/mucang/jiakaoyi/uilib/socket/MCSocketManager;Z)Z

    .line 5
    :try_start_0
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    .line 6
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcn/mucang/jiakaoyi/uilib/socket/MCSocketManager$b;->a:Lcn/mucang/jiakaoyi/uilib/socket/MCSocketManager;

    invoke-static {v3}, Lcn/mucang/jiakaoyi/uilib/socket/MCSocketManager;->e(Lcn/mucang/jiakaoyi/uilib/socket/MCSocketManager;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "socket\u6267\u884c\u5931\u8d25\uff1a"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ", action = "

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p1, Landroid/os/Message;->what:I

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcn/mucang/android/jiakaoyi/framework/log/f;->f(Ljava/lang/Object;)V

    .line 7
    :goto_0
    iget-object v0, p0, Lcn/mucang/jiakaoyi/uilib/socket/MCSocketManager$b;->a:Lcn/mucang/jiakaoyi/uilib/socket/MCSocketManager;

    const/4 v2, 0x0

    invoke-static {v0, v2}, Lcn/mucang/jiakaoyi/uilib/socket/MCSocketManager;->f(Lcn/mucang/jiakaoyi/uilib/socket/MCSocketManager;Z)Z

    .line 8
    :cond_1
    iget v0, p1, Landroid/os/Message;->what:I

    if-eq v0, v1, :cond_2

    .line 9
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcn/mucang/jiakaoyi/uilib/socket/MCSocketManager$b;->a:Lcn/mucang/jiakaoyi/uilib/socket/MCSocketManager;

    invoke-static {v1}, Lcn/mucang/jiakaoyi/uilib/socket/MCSocketManager;->e(Lcn/mucang/jiakaoyi/uilib/socket/MCSocketManager;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\u7ed3\u675f\u6267\u884c\uff1a"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p1, p1, Landroid/os/Message;->what:I

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcn/mucang/android/jiakaoyi/framework/log/f;->f(Ljava/lang/Object;)V

    :cond_2
    return-void
.end method
