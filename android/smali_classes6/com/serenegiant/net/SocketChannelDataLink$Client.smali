.class public Lcom/serenegiant/net/SocketChannelDataLink$Client;
.super Lcom/serenegiant/net/AbstractChannelDataLink$AbstractClient;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/serenegiant/net/SocketChannelDataLink;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Client"
.end annotation


# instance fields
.field private mAddr:Ljava/lang/String;

.field private mPort:I


# direct methods
.method public constructor <init>(Lcom/serenegiant/net/SocketChannelDataLink;Ljava/lang/String;I)V
    .locals 1

    const/4 v0, 0x0

    .line 3
    invoke-direct {p0, p1, v0}, Lcom/serenegiant/net/AbstractChannelDataLink$AbstractClient;-><init>(Lcom/serenegiant/net/AbstractChannelDataLink;Ljava/nio/channels/ByteChannel;)V

    .line 4
    iput-object p2, p0, Lcom/serenegiant/net/SocketChannelDataLink$Client;->mAddr:Ljava/lang/String;

    .line 5
    iput p3, p0, Lcom/serenegiant/net/SocketChannelDataLink$Client;->mPort:I

    .line 6
    invoke-virtual {p0}, Lcom/serenegiant/net/AbstractChannelDataLink$AbstractClient;->internalStart()V

    return-void
.end method

.method public constructor <init>(Lcom/serenegiant/net/SocketChannelDataLink;Ljava/nio/channels/ByteChannel;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/serenegiant/net/AbstractChannelDataLink$AbstractClient;-><init>(Lcom/serenegiant/net/AbstractChannelDataLink;Ljava/nio/channels/ByteChannel;)V

    .line 2
    invoke-virtual {p0}, Lcom/serenegiant/net/AbstractChannelDataLink$AbstractClient;->internalStart()V

    return-void
.end method


# virtual methods
.method public declared-synchronized getAddress()Ljava/lang/String;
    .locals 3

    monitor-enter p0

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/serenegiant/net/AbstractChannelDataLink$AbstractClient;->mChannel:Ljava/nio/channels/ByteChannel;

    instance-of v1, v0, Ljava/nio/channels/SocketChannel;

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    check-cast v0, Ljava/nio/channels/SocketChannel;

    .line 2
    invoke-virtual {v0}, Ljava/nio/channels/SocketChannel;->socket()Ljava/net/Socket;

    move-result-object v0

    goto :goto_0

    :cond_0
    move-object v0, v2

    :goto_0
    if-eqz v0, :cond_1

    .line 3
    invoke-virtual {v0}, Ljava/net/Socket;->getInetAddress()Ljava/net/InetAddress;

    move-result-object v0

    goto :goto_1

    :cond_1
    move-object v0, v2

    :goto_1
    if-eqz v0, :cond_2

    .line 4
    invoke-virtual {v0}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_2
    monitor-exit p0

    return-object v2

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getPort()I
    .locals 2

    monitor-enter p0

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/serenegiant/net/AbstractChannelDataLink$AbstractClient;->mChannel:Ljava/nio/channels/ByteChannel;

    instance-of v1, v0, Ljava/nio/channels/SocketChannel;

    if-eqz v1, :cond_0

    check-cast v0, Ljava/nio/channels/SocketChannel;

    .line 2
    invoke-virtual {v0}, Ljava/nio/channels/SocketChannel;->socket()Ljava/net/Socket;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_1

    .line 3
    invoke-virtual {v0}, Ljava/net/Socket;->getPort()I

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :cond_1
    const/4 v0, 0x0

    :goto_1
    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method protected declared-synchronized init()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    monitor-enter p0

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/serenegiant/net/AbstractChannelDataLink$AbstractClient;->mChannel:Ljava/nio/channels/ByteChannel;

    if-nez v0, :cond_0

    .line 2
    new-instance v0, Ljava/net/InetSocketAddress;

    iget-object v1, p0, Lcom/serenegiant/net/SocketChannelDataLink$Client;->mAddr:Ljava/lang/String;

    iget v2, p0, Lcom/serenegiant/net/SocketChannelDataLink$Client;->mPort:I

    invoke-direct {v0, v1, v2}, Ljava/net/InetSocketAddress;-><init>(Ljava/lang/String;I)V

    .line 3
    invoke-static {v0}, Ljava/nio/channels/SocketChannel;->open(Ljava/net/SocketAddress;)Ljava/nio/channels/SocketChannel;

    move-result-object v0

    iput-object v0, p0, Lcom/serenegiant/net/AbstractChannelDataLink$AbstractClient;->mChannel:Ljava/nio/channels/ByteChannel;

    :cond_0
    const/4 v0, 0x1

    .line 4
    invoke-virtual {p0, v0}, Lcom/serenegiant/net/AbstractChannelDataLink$AbstractClient;->setInit(Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 5
    :try_start_1
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 6
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    .line 7
    :try_start_2
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V

    throw v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :catchall_1
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized isConnected()Z
    .locals 2

    monitor-enter p0

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/serenegiant/net/AbstractChannelDataLink$AbstractClient;->mChannel:Ljava/nio/channels/ByteChannel;

    instance-of v1, v0, Ljava/nio/channels/SocketChannel;

    if-eqz v1, :cond_0

    check-cast v0, Ljava/nio/channels/SocketChannel;

    .line 2
    invoke-virtual {v0}, Ljava/nio/channels/SocketChannel;->isConnected()Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 3
    :goto_0
    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
