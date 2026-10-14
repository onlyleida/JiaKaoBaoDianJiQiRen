.class public Lcn/mucang/android/jiakaoyi/signal/com/v/c/d;
.super Lcn/mucang/android/jiakaoyi/signal/com/v/a;
.source "SourceFile"


# instance fields
.field private final e:Ljava/lang/String;

.field private final f:I

.field private g:Ljava/net/Socket;


# direct methods
.method public constructor <init>(Ljava/lang/String;ILcn/mucang/android/jiakaoyi/signal/communicate/restruct/channel/provider/names/ComName;)V
    .locals 0

    .line 1
    invoke-direct {p0, p3}, Lcn/mucang/android/jiakaoyi/signal/com/v/a;-><init>(Lcn/mucang/android/jiakaoyi/signal/communicate/restruct/channel/provider/names/ComName;)V

    .line 2
    iput-object p1, p0, Lcn/mucang/android/jiakaoyi/signal/com/v/c/d;->e:Ljava/lang/String;

    .line 3
    iput p2, p0, Lcn/mucang/android/jiakaoyi/signal/com/v/c/d;->f:I

    return-void
.end method


# virtual methods
.method public close()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/signal/com/v/c/d;->g:Ljava/net/Socket;

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    :try_start_0
    invoke-virtual {v0}, Ljava/net/Socket;->isInputShutdown()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/signal/com/v/c/d;->g:Ljava/net/Socket;

    invoke-virtual {v0}, Ljava/net/Socket;->isConnected()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 3
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/signal/com/v/c/d;->g:Ljava/net/Socket;

    invoke-virtual {v0}, Ljava/net/Socket;->shutdownInput()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    .line 4
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\u5173\u95edsocket\u8f93\u5165\u6d41\u5931\u8d25:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcn/mucang/android/jiakaoyi/framework/log/f;->f(Ljava/lang/Object;)V

    .line 5
    :cond_1
    :goto_0
    :try_start_1
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/signal/com/v/c/d;->g:Ljava/net/Socket;

    invoke-virtual {v0}, Ljava/net/Socket;->isOutputShutdown()Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/signal/com/v/c/d;->g:Ljava/net/Socket;

    invoke-virtual {v0}, Ljava/net/Socket;->isConnected()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 6
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/signal/com/v/c/d;->g:Ljava/net/Socket;

    invoke-virtual {v0}, Ljava/net/Socket;->shutdownOutput()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_1

    :catchall_1
    move-exception v0

    .line 7
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\u5173\u95edsocket\u8f93\u51fa\u6d41\u5931\u8d25"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcn/mucang/android/jiakaoyi/framework/log/f;->f(Ljava/lang/Object;)V

    .line 8
    :cond_2
    :goto_1
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/signal/com/v/c/d;->g:Ljava/net/Socket;

    invoke-static {v0}, Lcn/mucang/android/core/utils/o;->a(Ljava/io/Closeable;)V

    const/4 v0, 0x0

    .line 9
    iput-object v0, p0, Lcn/mucang/android/jiakaoyi/signal/com/v/c/d;->g:Ljava/net/Socket;

    .line 10
    invoke-super {p0}, Lcn/mucang/android/jiakaoyi/signal/com/v/a;->close()V

    return-void
.end method

.method public init()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcn/mucang/android/jiakaoyi/signal/com/exception/ComException;
        }
    .end annotation

    .line 1
    :try_start_0
    new-instance v0, Ljava/net/Socket;

    invoke-direct {v0}, Ljava/net/Socket;-><init>()V

    iput-object v0, p0, Lcn/mucang/android/jiakaoyi/signal/com/v/c/d;->g:Ljava/net/Socket;

    .line 2
    new-instance v1, Ljava/net/InetSocketAddress;

    iget-object v2, p0, Lcn/mucang/android/jiakaoyi/signal/com/v/c/d;->e:Ljava/lang/String;

    iget v3, p0, Lcn/mucang/android/jiakaoyi/signal/com/v/c/d;->f:I

    invoke-direct {v1, v2, v3}, Ljava/net/InetSocketAddress;-><init>(Ljava/lang/String;I)V

    const/16 v2, 0xbb8

    invoke-virtual {v0, v1, v2}, Ljava/net/Socket;->connect(Ljava/net/SocketAddress;I)V

    .line 3
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/signal/com/v/c/d;->g:Ljava/net/Socket;

    const v1, 0x2bf20

    invoke-virtual {v0, v1}, Ljava/net/Socket;->setSoTimeout(I)V

    .line 4
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/signal/com/v/c/d;->g:Ljava/net/Socket;

    invoke-virtual {v0}, Ljava/net/Socket;->getInputStream()Ljava/io/InputStream;

    move-result-object v0

    iput-object v0, p0, Lcn/mucang/android/jiakaoyi/signal/com/v/a;->a:Ljava/io/InputStream;

    .line 5
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/signal/com/v/c/d;->g:Ljava/net/Socket;

    invoke-virtual {v0}, Ljava/net/Socket;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v0

    iput-object v0, p0, Lcn/mucang/android/jiakaoyi/signal/com/v/a;->b:Ljava/io/OutputStream;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception v0

    .line 6
    instance-of v1, v0, Ljava/net/SocketTimeoutException;

    if-nez v1, :cond_2

    .line 7
    instance-of v1, v0, Ljava/lang/IllegalArgumentException;

    if-nez v1, :cond_1

    .line 8
    instance-of v1, v0, Ljava/net/SocketException;

    if-eqz v1, :cond_0

    .line 9
    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 10
    :cond_0
    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 11
    :cond_1
    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_2
    const-string v0, "\u8fde\u63a5\u8d85\u65f6\uff0c\u8bf7\u68c0\u67e5\u7f51\u7edc\u8fde\u63a5\u662f\u5426\u7545\u901a"

    .line 12
    :goto_0
    new-instance v1, Lcn/mucang/android/jiakaoyi/signal/com/exception/ComException;

    iget-object v2, p0, Lcn/mucang/android/jiakaoyi/signal/com/v/a;->d:Lcn/mucang/android/jiakaoyi/signal/communicate/restruct/channel/provider/names/ComName;

    sget-object v3, Lcn/mucang/android/jiakaoyi/signal/com/ComState;->ErrorInitial:Lcn/mucang/android/jiakaoyi/signal/com/ComState;

    invoke-direct {v1, v2, v3, v0}, Lcn/mucang/android/jiakaoyi/signal/com/exception/ComException;-><init>(Lcn/mucang/android/jiakaoyi/signal/communicate/restruct/channel/provider/names/ComName;Lcn/mucang/android/jiakaoyi/signal/com/ComState;Ljava/lang/String;)V

    throw v1
.end method

.method public v()I
    .locals 1

    const/high16 v0, 0xa00000

    return v0
.end method

.method public w()Ljava/lang/String;
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcn/mucang/android/jiakaoyi/signal/com/v/c/d;->e:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcn/mucang/android/jiakaoyi/signal/com/v/c/d;->f:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
