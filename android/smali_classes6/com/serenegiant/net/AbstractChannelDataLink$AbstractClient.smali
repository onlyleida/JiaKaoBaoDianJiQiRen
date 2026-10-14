.class public abstract Lcom/serenegiant/net/AbstractChannelDataLink$AbstractClient;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;
.implements Landroid/os/Handler$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/serenegiant/net/AbstractChannelDataLink;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "AbstractClient"
.end annotation


# instance fields
.field protected mChannel:Ljava/nio/channels/ByteChannel;

.field private volatile mIsInit:Z

.field private volatile mIsRunning:Z

.field private mSenderHandler:Landroid/os/Handler;

.field private final mWeakParent:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lcom/serenegiant/net/AbstractChannelDataLink;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/serenegiant/net/AbstractChannelDataLink;Ljava/nio/channels/ByteChannel;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Lcom/serenegiant/net/AbstractChannelDataLink$AbstractClient;->mIsRunning:Z

    .line 3
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/serenegiant/net/AbstractChannelDataLink$AbstractClient;->mWeakParent:Ljava/lang/ref/WeakReference;

    .line 4
    invoke-static {p0}, Lcom/serenegiant/utils/HandlerThreadHandler;->createHandler(Landroid/os/Handler$Callback;)Lcom/serenegiant/utils/HandlerThreadHandler;

    move-result-object p1

    iput-object p1, p0, Lcom/serenegiant/net/AbstractChannelDataLink$AbstractClient;->mSenderHandler:Landroid/os/Handler;

    .line 5
    iput-object p2, p0, Lcom/serenegiant/net/AbstractChannelDataLink$AbstractClient;->mChannel:Ljava/nio/channels/ByteChannel;

    return-void
.end method

.method private doReceiveLoop()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    .line 1
    :goto_0
    iget-boolean v0, p0, Lcom/serenegiant/net/AbstractChannelDataLink$AbstractClient;->mIsRunning:Z

    if-eqz v0, :cond_7

    .line 2
    :try_start_0
    iget-object v0, p0, Lcom/serenegiant/net/AbstractChannelDataLink$AbstractClient;->mChannel:Ljava/nio/channels/ByteChannel;

    invoke-static {v0}, Lcom/serenegiant/io/ChannelHelper;->readInt(Ljava/nio/channels/ByteChannel;)I

    move-result v0

    if-eqz v0, :cond_6

    const/4 v1, 0x1

    if-eq v0, v1, :cond_5

    const/4 v1, 0x2

    if-eq v0, v1, :cond_4

    const/16 v1, 0x14

    if-eq v0, v1, :cond_3

    const/16 v1, 0x15

    if-eq v0, v1, :cond_2

    const/16 v1, 0x28

    if-eq v0, v1, :cond_1

    const/16 v1, 0x29

    if-eq v0, v1, :cond_0

    packed-switch v0, :pswitch_data_0

    packed-switch v0, :pswitch_data_1

    goto :goto_0

    .line 3
    :pswitch_0
    iget-object v0, p0, Lcom/serenegiant/net/AbstractChannelDataLink$AbstractClient;->mChannel:Ljava/nio/channels/ByteChannel;

    invoke-static {v0}, Lcom/serenegiant/io/ChannelHelper;->readLongArray(Ljava/nio/channels/ByteChannel;)[J

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/serenegiant/net/AbstractChannelDataLink$AbstractClient;->callOnReceive(Ljava/lang/Object;)V

    goto :goto_0

    .line 4
    :pswitch_1
    iget-object v0, p0, Lcom/serenegiant/net/AbstractChannelDataLink$AbstractClient;->mChannel:Ljava/nio/channels/ByteChannel;

    invoke-static {v0}, Lcom/serenegiant/io/ChannelHelper;->readIntArray(Ljava/nio/channels/ByteChannel;)[I

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/serenegiant/net/AbstractChannelDataLink$AbstractClient;->callOnReceive(Ljava/lang/Object;)V

    goto :goto_0

    .line 5
    :pswitch_2
    iget-object v0, p0, Lcom/serenegiant/net/AbstractChannelDataLink$AbstractClient;->mChannel:Ljava/nio/channels/ByteChannel;

    invoke-static {v0}, Lcom/serenegiant/io/ChannelHelper;->readBooleanArray(Ljava/nio/channels/ByteChannel;)[Z

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/serenegiant/net/AbstractChannelDataLink$AbstractClient;->callOnReceive(Ljava/lang/Object;)V

    goto :goto_0

    .line 6
    :pswitch_3
    iget-object v0, p0, Lcom/serenegiant/net/AbstractChannelDataLink$AbstractClient;->mChannel:Ljava/nio/channels/ByteChannel;

    invoke-static {v0}, Lcom/serenegiant/io/ChannelHelper;->readByteArray(Ljava/nio/channels/ByteChannel;)[B

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/serenegiant/net/AbstractChannelDataLink$AbstractClient;->callOnReceive(Ljava/lang/Object;)V

    goto :goto_0

    .line 7
    :pswitch_4
    iget-object v0, p0, Lcom/serenegiant/net/AbstractChannelDataLink$AbstractClient;->mChannel:Ljava/nio/channels/ByteChannel;

    invoke-static {v0}, Lcom/serenegiant/io/ChannelHelper;->readLong(Ljava/nio/channels/ByteChannel;)J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/serenegiant/net/AbstractChannelDataLink$AbstractClient;->callOnReceive(Ljava/lang/Object;)V

    goto :goto_0

    .line 8
    :pswitch_5
    iget-object v0, p0, Lcom/serenegiant/net/AbstractChannelDataLink$AbstractClient;->mChannel:Ljava/nio/channels/ByteChannel;

    invoke-static {v0}, Lcom/serenegiant/io/ChannelHelper;->readInt(Ljava/nio/channels/ByteChannel;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/serenegiant/net/AbstractChannelDataLink$AbstractClient;->callOnReceive(Ljava/lang/Object;)V

    goto :goto_0

    .line 9
    :pswitch_6
    iget-object v0, p0, Lcom/serenegiant/net/AbstractChannelDataLink$AbstractClient;->mChannel:Ljava/nio/channels/ByteChannel;

    invoke-static {v0}, Lcom/serenegiant/io/ChannelHelper;->readBoolean(Ljava/nio/channels/ByteChannel;)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/serenegiant/net/AbstractChannelDataLink$AbstractClient;->callOnReceive(Ljava/lang/Object;)V

    goto :goto_0

    .line 10
    :cond_0
    iget-object v0, p0, Lcom/serenegiant/net/AbstractChannelDataLink$AbstractClient;->mChannel:Ljava/nio/channels/ByteChannel;

    invoke-static {v0}, Lcom/serenegiant/io/ChannelHelper;->readDoubleArray(Ljava/nio/channels/ByteChannel;)[D

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/serenegiant/net/AbstractChannelDataLink$AbstractClient;->callOnReceive(Ljava/lang/Object;)V

    goto/16 :goto_0

    .line 11
    :cond_1
    iget-object v0, p0, Lcom/serenegiant/net/AbstractChannelDataLink$AbstractClient;->mChannel:Ljava/nio/channels/ByteChannel;

    invoke-static {v0}, Lcom/serenegiant/io/ChannelHelper;->readFloatArray(Ljava/nio/channels/ByteChannel;)[F

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/serenegiant/net/AbstractChannelDataLink$AbstractClient;->callOnReceive(Ljava/lang/Object;)V

    goto/16 :goto_0

    .line 12
    :cond_2
    iget-object v0, p0, Lcom/serenegiant/net/AbstractChannelDataLink$AbstractClient;->mChannel:Ljava/nio/channels/ByteChannel;

    invoke-static {v0}, Lcom/serenegiant/io/ChannelHelper;->readDouble(Ljava/nio/channels/ByteChannel;)D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/serenegiant/net/AbstractChannelDataLink$AbstractClient;->callOnReceive(Ljava/lang/Object;)V

    goto/16 :goto_0

    .line 13
    :cond_3
    iget-object v0, p0, Lcom/serenegiant/net/AbstractChannelDataLink$AbstractClient;->mChannel:Ljava/nio/channels/ByteChannel;

    invoke-static {v0}, Lcom/serenegiant/io/ChannelHelper;->readFloat(Ljava/nio/channels/ByteChannel;)F

    move-result v0

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/serenegiant/net/AbstractChannelDataLink$AbstractClient;->callOnReceive(Ljava/lang/Object;)V

    goto/16 :goto_0

    .line 14
    :cond_4
    iget-object v0, p0, Lcom/serenegiant/net/AbstractChannelDataLink$AbstractClient;->mChannel:Ljava/nio/channels/ByteChannel;

    invoke-static {v0}, Lcom/serenegiant/io/ChannelHelper;->readString(Ljava/nio/channels/ByteChannel;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/serenegiant/net/AbstractChannelDataLink$AbstractClient;->callOnReceive(Ljava/lang/Object;)V

    goto/16 :goto_0

    .line 15
    :cond_5
    iget-object v0, p0, Lcom/serenegiant/net/AbstractChannelDataLink$AbstractClient;->mChannel:Ljava/nio/channels/ByteChannel;

    invoke-static {v0}, Lcom/serenegiant/io/ChannelHelper;->readByteBuffer(Ljava/nio/channels/ByteChannel;)Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/serenegiant/net/AbstractChannelDataLink$AbstractClient;->callOnReceive(Ljava/lang/Object;)V

    goto/16 :goto_0

    :cond_6
    const/4 v0, 0x0

    .line 16
    invoke-virtual {p0, v0}, Lcom/serenegiant/net/AbstractChannelDataLink$AbstractClient;->callOnReceive(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/net/SocketException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/nio/channels/ClosedChannelException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    :catch_0
    :cond_7
    return-void

    :pswitch_data_0
    .packed-switch 0xa
        :pswitch_6
        :pswitch_5
        :pswitch_4
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x1e
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private internalRelease()V
    .locals 2

    const/4 v0, 0x0

    .line 1
    iput-boolean v0, p0, Lcom/serenegiant/net/AbstractChannelDataLink$AbstractClient;->mIsInit:Z

    iput-boolean v0, p0, Lcom/serenegiant/net/AbstractChannelDataLink$AbstractClient;->mIsRunning:Z

    .line 2
    monitor-enter p0

    .line 3
    :try_start_0
    iget-object v0, p0, Lcom/serenegiant/net/AbstractChannelDataLink$AbstractClient;->mChannel:Ljava/nio/channels/ByteChannel;

    const/4 v1, 0x0

    .line 4
    iput-object v1, p0, Lcom/serenegiant/net/AbstractChannelDataLink$AbstractClient;->mChannel:Ljava/nio/channels/ByteChannel;

    .line 5
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V

    .line 6
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    if-eqz v0, :cond_0

    .line 7
    :try_start_1
    invoke-interface {v0}, Ljava/nio/channels/ByteChannel;->close()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 8
    :catch_0
    :cond_0
    monitor-enter p0

    .line 9
    :try_start_2
    iget-object v0, p0, Lcom/serenegiant/net/AbstractChannelDataLink$AbstractClient;->mSenderHandler:Landroid/os/Handler;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-eqz v0, :cond_1

    .line 10
    :try_start_3
    invoke-virtual {v0}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Looper;->quit()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 11
    :catch_1
    :try_start_4
    iput-object v1, p0, Lcom/serenegiant/net/AbstractChannelDataLink$AbstractClient;->mSenderHandler:Landroid/os/Handler;

    .line 12
    :cond_1
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    throw v0

    :catchall_1
    move-exception v0

    .line 13
    :try_start_5
    monitor-exit p0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    throw v0
.end method

.method private declared-synchronized send(ILjava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    monitor-enter p0

    .line 44
    :try_start_0
    iget-object v0, p0, Lcom/serenegiant/net/AbstractChannelDataLink$AbstractClient;->mSenderHandler:Landroid/os/Handler;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/serenegiant/net/AbstractChannelDataLink$AbstractClient;->mIsRunning:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/serenegiant/net/AbstractChannelDataLink$AbstractClient;->mIsInit:Z

    if-eqz v0, :cond_0

    .line 45
    iget-object v0, p0, Lcom/serenegiant/net/AbstractChannelDataLink$AbstractClient;->mSenderHandler:Landroid/os/Handler;

    invoke-virtual {v0, p1, p2}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 46
    monitor-exit p0

    return-void

    .line 47
    :cond_0
    :try_start_1
    new-instance p1, Ljava/io/IOException;

    invoke-direct {p1}, Ljava/io/IOException;-><init>()V

    throw p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method


# virtual methods
.method protected callOnConnect()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/serenegiant/net/AbstractChannelDataLink$AbstractClient;->mWeakParent:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/serenegiant/net/AbstractChannelDataLink;

    if-eqz v0, :cond_0

    .line 2
    invoke-static {v0}, Lcom/serenegiant/net/AbstractChannelDataLink;->access$100(Lcom/serenegiant/net/AbstractChannelDataLink;)Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/serenegiant/net/AbstractChannelDataLink$Callback;

    .line 3
    :try_start_0
    invoke-interface {v2, p0}, Lcom/serenegiant/net/AbstractChannelDataLink$Callback;->onConnect(Lcom/serenegiant/net/AbstractChannelDataLink$AbstractClient;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 4
    :catch_0
    invoke-static {v0}, Lcom/serenegiant/net/AbstractChannelDataLink;->access$100(Lcom/serenegiant/net/AbstractChannelDataLink;)Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3, v2}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    return-void
.end method

.method protected callOnDisconnect()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/serenegiant/net/AbstractChannelDataLink$AbstractClient;->mWeakParent:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/serenegiant/net/AbstractChannelDataLink;

    if-eqz v0, :cond_0

    .line 2
    invoke-static {v0}, Lcom/serenegiant/net/AbstractChannelDataLink;->access$100(Lcom/serenegiant/net/AbstractChannelDataLink;)Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/serenegiant/net/AbstractChannelDataLink$Callback;

    .line 3
    :try_start_0
    invoke-interface {v2}, Lcom/serenegiant/net/AbstractChannelDataLink$Callback;->onDisconnect()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 4
    :catch_0
    invoke-static {v0}, Lcom/serenegiant/net/AbstractChannelDataLink;->access$100(Lcom/serenegiant/net/AbstractChannelDataLink;)Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3, v2}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    return-void
.end method

.method protected callOnError(Ljava/lang/Exception;)V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/serenegiant/net/AbstractChannelDataLink$AbstractClient;->mWeakParent:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/serenegiant/net/AbstractChannelDataLink;

    if-eqz v0, :cond_0

    .line 2
    invoke-static {v0}, Lcom/serenegiant/net/AbstractChannelDataLink;->access$100(Lcom/serenegiant/net/AbstractChannelDataLink;)Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/serenegiant/net/AbstractChannelDataLink$Callback;

    .line 3
    :try_start_0
    invoke-interface {v2, p0, p1}, Lcom/serenegiant/net/AbstractChannelDataLink$Callback;->onError(Lcom/serenegiant/net/AbstractChannelDataLink$AbstractClient;Ljava/lang/Exception;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 4
    :catch_0
    invoke-static {v0}, Lcom/serenegiant/net/AbstractChannelDataLink;->access$100(Lcom/serenegiant/net/AbstractChannelDataLink;)Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3, v2}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    return-void
.end method

.method protected callOnReceive(Ljava/lang/Object;)V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/serenegiant/net/AbstractChannelDataLink$AbstractClient;->mWeakParent:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/serenegiant/net/AbstractChannelDataLink;

    if-eqz v0, :cond_0

    .line 2
    invoke-static {v0}, Lcom/serenegiant/net/AbstractChannelDataLink;->access$100(Lcom/serenegiant/net/AbstractChannelDataLink;)Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/serenegiant/net/AbstractChannelDataLink$Callback;

    .line 3
    :try_start_0
    invoke-interface {v2, p0, p1}, Lcom/serenegiant/net/AbstractChannelDataLink$Callback;->onReceive(Lcom/serenegiant/net/AbstractChannelDataLink$AbstractClient;Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 4
    :catch_0
    invoke-static {v0}, Lcom/serenegiant/net/AbstractChannelDataLink;->access$100(Lcom/serenegiant/net/AbstractChannelDataLink;)Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3, v2}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    return-void
.end method

.method protected finalize()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    const-wide/16 v0, -0x1

    .line 1
    :try_start_0
    invoke-virtual {p0, v0, v1}, Lcom/serenegiant/net/AbstractChannelDataLink$AbstractClient;->release(J)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    return-void

    :catchall_0
    move-exception v0

    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    throw v0
.end method

.method public declared-synchronized handleMessage(Landroid/os/Message;)Z
    .locals 5

    monitor-enter p0

    .line 1
    :try_start_0
    iget-boolean v0, p0, Lcom/serenegiant/net/AbstractChannelDataLink$AbstractClient;->mIsRunning:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_b

    iget-object v0, p0, Lcom/serenegiant/net/AbstractChannelDataLink$AbstractClient;->mChannel:Ljava/nio/channels/ByteChannel;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    goto/16 :goto_1

    .line 2
    :cond_0
    :try_start_1
    iget v2, p1, Landroid/os/Message;->what:I

    const/16 v3, -0x9

    const/4 v4, 0x1

    if-eq v2, v3, :cond_9

    if-eqz v2, :cond_8

    if-eq v2, v4, :cond_6

    const/4 v3, 0x2

    if-eq v2, v3, :cond_5

    const/16 v3, 0x14

    if-eq v2, v3, :cond_4

    const/16 v3, 0x15

    if-eq v2, v3, :cond_3

    const/16 v3, 0x28

    if-eq v2, v3, :cond_2

    const/16 v3, 0x29

    if-eq v2, v3, :cond_1

    packed-switch v2, :pswitch_data_0

    packed-switch v2, :pswitch_data_1

    goto/16 :goto_0

    .line 3
    :pswitch_0
    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    instance-of v2, v2, [J

    if-eqz v2, :cond_a

    const/16 v2, 0x21

    .line 4
    invoke-static {v0, v2}, Lcom/serenegiant/io/ChannelHelper;->write(Ljava/nio/channels/ByteChannel;I)V

    .line 5
    iget-object v0, p0, Lcom/serenegiant/net/AbstractChannelDataLink$AbstractClient;->mChannel:Ljava/nio/channels/ByteChannel;

    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, [J

    invoke-static {v0, p1}, Lcom/serenegiant/io/ChannelHelper;->write(Ljava/nio/channels/ByteChannel;[J)V
    :try_end_1
    .catch Ljava/net/SocketException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 6
    monitor-exit p0

    return v4

    .line 7
    :pswitch_1
    :try_start_2
    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    instance-of v2, v2, [I

    if-eqz v2, :cond_a

    const/16 v2, 0x20

    .line 8
    invoke-static {v0, v2}, Lcom/serenegiant/io/ChannelHelper;->write(Ljava/nio/channels/ByteChannel;I)V

    .line 9
    iget-object v0, p0, Lcom/serenegiant/net/AbstractChannelDataLink$AbstractClient;->mChannel:Ljava/nio/channels/ByteChannel;

    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, [I

    invoke-static {v0, p1}, Lcom/serenegiant/io/ChannelHelper;->write(Ljava/nio/channels/ByteChannel;[I)V
    :try_end_2
    .catch Ljava/net/SocketException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 10
    monitor-exit p0

    return v4

    .line 11
    :pswitch_2
    :try_start_3
    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    instance-of v2, v2, [Z

    if-eqz v2, :cond_a

    const/16 v2, 0x1f

    .line 12
    invoke-static {v0, v2}, Lcom/serenegiant/io/ChannelHelper;->write(Ljava/nio/channels/ByteChannel;I)V

    .line 13
    iget-object v0, p0, Lcom/serenegiant/net/AbstractChannelDataLink$AbstractClient;->mChannel:Ljava/nio/channels/ByteChannel;

    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, [Z

    invoke-static {v0, p1}, Lcom/serenegiant/io/ChannelHelper;->write(Ljava/nio/channels/ByteChannel;[Z)V
    :try_end_3
    .catch Ljava/net/SocketException; {:try_start_3 .. :try_end_3} :catch_2
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 14
    monitor-exit p0

    return v4

    .line 15
    :pswitch_3
    :try_start_4
    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    instance-of v2, v2, [B

    if-eqz v2, :cond_a

    const/16 v2, 0x1e

    .line 16
    invoke-static {v0, v2}, Lcom/serenegiant/io/ChannelHelper;->write(Ljava/nio/channels/ByteChannel;I)V

    .line 17
    iget-object v0, p0, Lcom/serenegiant/net/AbstractChannelDataLink$AbstractClient;->mChannel:Ljava/nio/channels/ByteChannel;

    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, [B

    invoke-static {v0, p1}, Lcom/serenegiant/io/ChannelHelper;->write(Ljava/nio/channels/ByteChannel;[B)V
    :try_end_4
    .catch Ljava/net/SocketException; {:try_start_4 .. :try_end_4} :catch_2
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 18
    monitor-exit p0

    return v4

    .line 19
    :pswitch_4
    :try_start_5
    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    instance-of v2, v2, Ljava/lang/Long;

    if-eqz v2, :cond_a

    const/16 v2, 0xc

    .line 20
    invoke-static {v0, v2}, Lcom/serenegiant/io/ChannelHelper;->write(Ljava/nio/channels/ByteChannel;I)V

    .line 21
    iget-object v0, p0, Lcom/serenegiant/net/AbstractChannelDataLink$AbstractClient;->mChannel:Ljava/nio/channels/ByteChannel;

    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Ljava/lang/Long;

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-static {v0, v2, v3}, Lcom/serenegiant/io/ChannelHelper;->write(Ljava/nio/channels/ByteChannel;J)V
    :try_end_5
    .catch Ljava/net/SocketException; {:try_start_5 .. :try_end_5} :catch_2
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_1
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_0
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 22
    monitor-exit p0

    return v4

    .line 23
    :pswitch_5
    :try_start_6
    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    instance-of v2, v2, Ljava/lang/Integer;

    if-eqz v2, :cond_a

    const/16 v2, 0xb

    .line 24
    invoke-static {v0, v2}, Lcom/serenegiant/io/ChannelHelper;->write(Ljava/nio/channels/ByteChannel;I)V

    .line 25
    iget-object v0, p0, Lcom/serenegiant/net/AbstractChannelDataLink$AbstractClient;->mChannel:Ljava/nio/channels/ByteChannel;

    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-static {v0, p1}, Lcom/serenegiant/io/ChannelHelper;->write(Ljava/nio/channels/ByteChannel;I)V
    :try_end_6
    .catch Ljava/net/SocketException; {:try_start_6 .. :try_end_6} :catch_2
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_1
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_0
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 26
    monitor-exit p0

    return v4

    .line 27
    :pswitch_6
    :try_start_7
    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    instance-of v2, v2, Ljava/lang/Boolean;

    if-eqz v2, :cond_a

    const/16 v2, 0xa

    .line 28
    invoke-static {v0, v2}, Lcom/serenegiant/io/ChannelHelper;->write(Ljava/nio/channels/ByteChannel;I)V

    .line 29
    iget-object v0, p0, Lcom/serenegiant/net/AbstractChannelDataLink$AbstractClient;->mChannel:Ljava/nio/channels/ByteChannel;

    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    invoke-static {v0, p1}, Lcom/serenegiant/io/ChannelHelper;->write(Ljava/nio/channels/ByteChannel;Z)V
    :try_end_7
    .catch Ljava/net/SocketException; {:try_start_7 .. :try_end_7} :catch_2
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_1
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_0
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    .line 30
    monitor-exit p0

    return v4

    .line 31
    :cond_1
    :try_start_8
    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    instance-of v2, v2, [D

    if-eqz v2, :cond_a

    .line 32
    invoke-static {v0, v3}, Lcom/serenegiant/io/ChannelHelper;->write(Ljava/nio/channels/ByteChannel;I)V

    .line 33
    iget-object v0, p0, Lcom/serenegiant/net/AbstractChannelDataLink$AbstractClient;->mChannel:Ljava/nio/channels/ByteChannel;

    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, [D

    invoke-static {v0, p1}, Lcom/serenegiant/io/ChannelHelper;->write(Ljava/nio/channels/ByteChannel;[D)V
    :try_end_8
    .catch Ljava/net/SocketException; {:try_start_8 .. :try_end_8} :catch_2
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_1
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_0
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    .line 34
    monitor-exit p0

    return v4

    .line 35
    :cond_2
    :try_start_9
    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    instance-of v2, v2, [F

    if-eqz v2, :cond_a

    .line 36
    invoke-static {v0, v3}, Lcom/serenegiant/io/ChannelHelper;->write(Ljava/nio/channels/ByteChannel;I)V

    .line 37
    iget-object v0, p0, Lcom/serenegiant/net/AbstractChannelDataLink$AbstractClient;->mChannel:Ljava/nio/channels/ByteChannel;

    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, [F

    invoke-static {v0, p1}, Lcom/serenegiant/io/ChannelHelper;->write(Ljava/nio/channels/ByteChannel;[F)V
    :try_end_9
    .catch Ljava/net/SocketException; {:try_start_9 .. :try_end_9} :catch_2
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_1
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_0
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    .line 38
    monitor-exit p0

    return v4

    .line 39
    :cond_3
    :try_start_a
    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    instance-of v2, v2, Ljava/lang/Double;

    if-eqz v2, :cond_a

    .line 40
    invoke-static {v0, v3}, Lcom/serenegiant/io/ChannelHelper;->write(Ljava/nio/channels/ByteChannel;I)V

    .line 41
    iget-object v0, p0, Lcom/serenegiant/net/AbstractChannelDataLink$AbstractClient;->mChannel:Ljava/nio/channels/ByteChannel;

    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Ljava/lang/Double;

    invoke-virtual {p1}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v2

    invoke-static {v0, v2, v3}, Lcom/serenegiant/io/ChannelHelper;->write(Ljava/nio/channels/ByteChannel;D)V
    :try_end_a
    .catch Ljava/net/SocketException; {:try_start_a .. :try_end_a} :catch_2
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_1
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_0
    .catchall {:try_start_a .. :try_end_a} :catchall_0

    .line 42
    monitor-exit p0

    return v4

    .line 43
    :cond_4
    :try_start_b
    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    instance-of v2, v2, Ljava/lang/Float;

    if-eqz v2, :cond_a

    .line 44
    invoke-static {v0, v3}, Lcom/serenegiant/io/ChannelHelper;->write(Ljava/nio/channels/ByteChannel;I)V

    .line 45
    iget-object v0, p0, Lcom/serenegiant/net/AbstractChannelDataLink$AbstractClient;->mChannel:Ljava/nio/channels/ByteChannel;

    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    invoke-static {v0, p1}, Lcom/serenegiant/io/ChannelHelper;->write(Ljava/nio/channels/ByteChannel;F)V
    :try_end_b
    .catch Ljava/net/SocketException; {:try_start_b .. :try_end_b} :catch_2
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_b} :catch_1
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_b} :catch_0
    .catchall {:try_start_b .. :try_end_b} :catchall_0

    .line 46
    monitor-exit p0

    return v4

    .line 47
    :cond_5
    :try_start_c
    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    instance-of v2, v2, Ljava/lang/String;

    if-eqz v2, :cond_a

    .line 48
    invoke-static {v0, v3}, Lcom/serenegiant/io/ChannelHelper;->write(Ljava/nio/channels/ByteChannel;I)V

    .line 49
    iget-object v0, p0, Lcom/serenegiant/net/AbstractChannelDataLink$AbstractClient;->mChannel:Ljava/nio/channels/ByteChannel;

    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Ljava/lang/String;

    invoke-static {v0, p1}, Lcom/serenegiant/io/ChannelHelper;->write(Ljava/nio/channels/ByteChannel;Ljava/lang/String;)V
    :try_end_c
    .catch Ljava/net/SocketException; {:try_start_c .. :try_end_c} :catch_2
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_c} :catch_1
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_c} :catch_0
    .catchall {:try_start_c .. :try_end_c} :catchall_0

    .line 50
    monitor-exit p0

    return v4

    .line 51
    :cond_6
    :try_start_d
    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    instance-of v2, v2, Ljava/nio/ByteBuffer;

    if-eqz v2, :cond_7

    .line 52
    invoke-static {v0, v4}, Lcom/serenegiant/io/ChannelHelper;->write(Ljava/nio/channels/ByteChannel;I)V

    .line 53
    iget-object v0, p0, Lcom/serenegiant/net/AbstractChannelDataLink$AbstractClient;->mChannel:Ljava/nio/channels/ByteChannel;

    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Ljava/nio/ByteBuffer;

    invoke-static {v0, p1}, Lcom/serenegiant/io/ChannelHelper;->write(Ljava/nio/channels/ByteChannel;Ljava/nio/ByteBuffer;)V
    :try_end_d
    .catch Ljava/net/SocketException; {:try_start_d .. :try_end_d} :catch_2
    .catch Ljava/io/IOException; {:try_start_d .. :try_end_d} :catch_1
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_d} :catch_0
    .catchall {:try_start_d .. :try_end_d} :catchall_0

    .line 54
    :cond_7
    monitor-exit p0

    return v4

    .line 55
    :cond_8
    :try_start_e
    invoke-static {v0, v1}, Lcom/serenegiant/io/ChannelHelper;->write(Ljava/nio/channels/ByteChannel;I)V
    :try_end_e
    .catch Ljava/net/SocketException; {:try_start_e .. :try_end_e} :catch_2
    .catch Ljava/io/IOException; {:try_start_e .. :try_end_e} :catch_1
    .catch Ljava/lang/Exception; {:try_start_e .. :try_end_e} :catch_0
    .catchall {:try_start_e .. :try_end_e} :catchall_0

    .line 56
    monitor-exit p0

    return v4

    .line 57
    :cond_9
    :try_start_f
    invoke-direct {p0}, Lcom/serenegiant/net/AbstractChannelDataLink$AbstractClient;->internalRelease()V
    :try_end_f
    .catch Ljava/net/SocketException; {:try_start_f .. :try_end_f} :catch_2
    .catch Ljava/io/IOException; {:try_start_f .. :try_end_f} :catch_1
    .catch Ljava/lang/Exception; {:try_start_f .. :try_end_f} :catch_0
    .catchall {:try_start_f .. :try_end_f} :catchall_0

    .line 58
    monitor-exit p0

    return v4

    :catch_0
    move-exception p1

    .line 59
    :try_start_10
    invoke-static {}, Lcom/serenegiant/net/AbstractChannelDataLink;->access$200()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    :catch_1
    move-exception p1

    .line 60
    invoke-virtual {p0, p1}, Lcom/serenegiant/net/AbstractChannelDataLink$AbstractClient;->callOnError(Ljava/lang/Exception;)V
    :try_end_10
    .catchall {:try_start_10 .. :try_end_10} :catchall_0

    .line 61
    :catch_2
    :cond_a
    :goto_0
    monitor-exit p0

    return v1

    .line 62
    :cond_b
    :goto_1
    monitor-exit p0

    return v1

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1

    :pswitch_data_0
    .packed-switch 0xa
        :pswitch_6
        :pswitch_5
        :pswitch_4
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x1e
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method protected abstract init()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method protected internalStart()V
    .locals 2

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    new-instance v0, Ljava/lang/Thread;

    invoke-direct {v0, p0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 3
    :catch_0
    :goto_0
    iget-boolean v0, p0, Lcom/serenegiant/net/AbstractChannelDataLink$AbstractClient;->mIsRunning:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/serenegiant/net/AbstractChannelDataLink$AbstractClient;->mIsInit:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    const-wide/16 v0, 0x12c

    .line 4
    :try_start_1
    invoke-virtual {p0, v0, v1}, Ljava/lang/Object;->wait(J)V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 5
    :cond_0
    :try_start_2
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0
.end method

.method public release()V
    .locals 2

    const-wide/16 v0, 0x1f4

    .line 1
    invoke-virtual {p0, v0, v1}, Lcom/serenegiant/net/AbstractChannelDataLink$AbstractClient;->release(J)V

    return-void
.end method

.method public declared-synchronized release(J)V
    .locals 5

    monitor-enter p0

    .line 2
    :try_start_0
    iget-object v0, p0, Lcom/serenegiant/net/AbstractChannelDataLink$AbstractClient;->mSenderHandler:Landroid/os/Handler;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_1

    const-wide/16 v1, 0x0

    const/16 v3, -0x9

    cmp-long v4, p1, v1

    if-lez v4, :cond_0

    .line 3
    :try_start_1
    invoke-virtual {v0, v3, p1, p2}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_0

    .line 4
    :cond_0
    invoke-virtual {v0, v3}, Landroid/os/Handler;->sendEmptyMessage(I)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 5
    :catch_0
    :cond_1
    :goto_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public run()V
    .locals 4

    const-wide/16 v0, -0x1

    const/4 v2, 0x0

    .line 1
    :try_start_0
    invoke-virtual {p0}, Lcom/serenegiant/net/AbstractChannelDataLink$AbstractClient;->init()V

    .line 2
    invoke-virtual {p0}, Lcom/serenegiant/net/AbstractChannelDataLink$AbstractClient;->callOnConnect()V

    .line 3
    invoke-direct {p0}, Lcom/serenegiant/net/AbstractChannelDataLink$AbstractClient;->doReceiveLoop()V

    .line 4
    invoke-virtual {p0}, Lcom/serenegiant/net/AbstractChannelDataLink$AbstractClient;->callOnDisconnect()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 5
    iput-boolean v2, p0, Lcom/serenegiant/net/AbstractChannelDataLink$AbstractClient;->mIsRunning:Z

    .line 6
    iget-object v2, p0, Lcom/serenegiant/net/AbstractChannelDataLink$AbstractClient;->mWeakParent:Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/serenegiant/net/AbstractChannelDataLink;

    if-eqz v2, :cond_0

    goto :goto_0

    :catchall_0
    move-exception v3

    goto :goto_1

    :catch_0
    move-exception v3

    .line 7
    :try_start_1
    invoke-virtual {p0, v3}, Lcom/serenegiant/net/AbstractChannelDataLink$AbstractClient;->callOnError(Ljava/lang/Exception;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 8
    iput-boolean v2, p0, Lcom/serenegiant/net/AbstractChannelDataLink$AbstractClient;->mIsRunning:Z

    .line 9
    iget-object v2, p0, Lcom/serenegiant/net/AbstractChannelDataLink$AbstractClient;->mWeakParent:Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/serenegiant/net/AbstractChannelDataLink;

    if-eqz v2, :cond_0

    .line 10
    :goto_0
    invoke-static {v2}, Lcom/serenegiant/net/AbstractChannelDataLink;->access$000(Lcom/serenegiant/net/AbstractChannelDataLink;)Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2, p0}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 11
    :cond_0
    invoke-virtual {p0, v0, v1}, Lcom/serenegiant/net/AbstractChannelDataLink$AbstractClient;->release(J)V

    return-void

    .line 12
    :goto_1
    iput-boolean v2, p0, Lcom/serenegiant/net/AbstractChannelDataLink$AbstractClient;->mIsRunning:Z

    .line 13
    iget-object v2, p0, Lcom/serenegiant/net/AbstractChannelDataLink$AbstractClient;->mWeakParent:Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/serenegiant/net/AbstractChannelDataLink;

    if-eqz v2, :cond_1

    .line 14
    invoke-static {v2}, Lcom/serenegiant/net/AbstractChannelDataLink;->access$000(Lcom/serenegiant/net/AbstractChannelDataLink;)Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2, p0}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 15
    :cond_1
    invoke-virtual {p0, v0, v1}, Lcom/serenegiant/net/AbstractChannelDataLink$AbstractClient;->release(J)V

    .line 16
    throw v3
.end method

.method public send(D)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 6
    invoke-static {p1, p2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p1

    const/16 p2, 0x15

    invoke-direct {p0, p2, p1}, Lcom/serenegiant/net/AbstractChannelDataLink$AbstractClient;->send(ILjava/lang/Object;)V

    return-void
.end method

.method public send(F)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 5
    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    const/16 v0, 0x14

    invoke-direct {p0, v0, p1}, Lcom/serenegiant/net/AbstractChannelDataLink$AbstractClient;->send(ILjava/lang/Object;)V

    return-void
.end method

.method public declared-synchronized send(I)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    monitor-enter p0

    const/16 v0, 0xb

    .line 2
    :try_start_0
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-direct {p0, v0, p1}, Lcom/serenegiant/net/AbstractChannelDataLink$AbstractClient;->send(ILjava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public send(J)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 4
    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    const/16 p2, 0xc

    invoke-direct {p0, p2, p1}, Lcom/serenegiant/net/AbstractChannelDataLink$AbstractClient;->send(ILjava/lang/Object;)V

    return-void
.end method

.method public send(Ljava/lang/Object;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    if-nez p1, :cond_0

    const/4 p1, 0x0

    const/4 v0, 0x0

    .line 14
    invoke-direct {p0, p1, v0}, Lcom/serenegiant/net/AbstractChannelDataLink$AbstractClient;->send(ILjava/lang/Object;)V

    goto/16 :goto_0

    .line 15
    :cond_0
    instance-of v0, p1, Ljava/nio/ByteBuffer;

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    .line 16
    invoke-direct {p0, v0, p1}, Lcom/serenegiant/net/AbstractChannelDataLink$AbstractClient;->send(ILjava/lang/Object;)V

    goto/16 :goto_0

    .line 17
    :cond_1
    instance-of v0, p1, Ljava/lang/String;

    const/4 v1, 0x2

    if-eqz v0, :cond_2

    .line 18
    invoke-direct {p0, v1, p1}, Lcom/serenegiant/net/AbstractChannelDataLink$AbstractClient;->send(ILjava/lang/Object;)V

    goto/16 :goto_0

    .line 19
    :cond_2
    instance-of v0, p1, Ljava/lang/CharSequence;

    if-eqz v0, :cond_3

    .line 20
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, v1, p1}, Lcom/serenegiant/net/AbstractChannelDataLink$AbstractClient;->send(ILjava/lang/Object;)V

    goto/16 :goto_0

    .line 21
    :cond_3
    instance-of v0, p1, Ljava/lang/Boolean;

    if-eqz v0, :cond_4

    const/16 v0, 0xa

    .line 22
    invoke-direct {p0, v0, p1}, Lcom/serenegiant/net/AbstractChannelDataLink$AbstractClient;->send(ILjava/lang/Object;)V

    goto/16 :goto_0

    .line 23
    :cond_4
    instance-of v0, p1, Ljava/lang/Integer;

    if-eqz v0, :cond_5

    const/16 v0, 0xb

    .line 24
    invoke-direct {p0, v0, p1}, Lcom/serenegiant/net/AbstractChannelDataLink$AbstractClient;->send(ILjava/lang/Object;)V

    goto :goto_0

    .line 25
    :cond_5
    instance-of v0, p1, Ljava/lang/Long;

    if-eqz v0, :cond_6

    const/16 v0, 0xc

    .line 26
    invoke-direct {p0, v0, p1}, Lcom/serenegiant/net/AbstractChannelDataLink$AbstractClient;->send(ILjava/lang/Object;)V

    goto :goto_0

    .line 27
    :cond_6
    instance-of v0, p1, Ljava/lang/Float;

    if-eqz v0, :cond_7

    const/16 v0, 0x14

    .line 28
    invoke-direct {p0, v0, p1}, Lcom/serenegiant/net/AbstractChannelDataLink$AbstractClient;->send(ILjava/lang/Object;)V

    goto :goto_0

    .line 29
    :cond_7
    instance-of v0, p1, Ljava/lang/Double;

    if-eqz v0, :cond_8

    const/16 v0, 0x15

    .line 30
    invoke-direct {p0, v0, p1}, Lcom/serenegiant/net/AbstractChannelDataLink$AbstractClient;->send(ILjava/lang/Object;)V

    goto :goto_0

    .line 31
    :cond_8
    instance-of v0, p1, [B

    if-eqz v0, :cond_9

    const/16 v0, 0x1e

    .line 32
    invoke-direct {p0, v0, p1}, Lcom/serenegiant/net/AbstractChannelDataLink$AbstractClient;->send(ILjava/lang/Object;)V

    goto :goto_0

    .line 33
    :cond_9
    instance-of v0, p1, [Z

    if-eqz v0, :cond_a

    const/16 v0, 0x1f

    .line 34
    invoke-direct {p0, v0, p1}, Lcom/serenegiant/net/AbstractChannelDataLink$AbstractClient;->send(ILjava/lang/Object;)V

    goto :goto_0

    .line 35
    :cond_a
    instance-of v0, p1, [I

    if-eqz v0, :cond_b

    const/16 v0, 0x20

    .line 36
    invoke-direct {p0, v0, p1}, Lcom/serenegiant/net/AbstractChannelDataLink$AbstractClient;->send(ILjava/lang/Object;)V

    goto :goto_0

    .line 37
    :cond_b
    instance-of v0, p1, [J

    if-eqz v0, :cond_c

    const/16 v0, 0x21

    .line 38
    invoke-direct {p0, v0, p1}, Lcom/serenegiant/net/AbstractChannelDataLink$AbstractClient;->send(ILjava/lang/Object;)V

    goto :goto_0

    .line 39
    :cond_c
    instance-of v0, p1, [F

    if-eqz v0, :cond_d

    const/16 v0, 0x28

    .line 40
    invoke-direct {p0, v0, p1}, Lcom/serenegiant/net/AbstractChannelDataLink$AbstractClient;->send(ILjava/lang/Object;)V

    goto :goto_0

    .line 41
    :cond_d
    instance-of v0, p1, [D

    if-eqz v0, :cond_e

    const/16 v0, 0x29

    .line 42
    invoke-direct {p0, v0, p1}, Lcom/serenegiant/net/AbstractChannelDataLink$AbstractClient;->send(ILjava/lang/Object;)V

    :goto_0
    return-void

    .line 43
    :cond_e
    new-instance p1, Ljava/io/IOException;

    const-string v0, "unknown type of object"

    invoke-direct {p1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public send(Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x2

    .line 7
    invoke-direct {p0, v0, p1}, Lcom/serenegiant/net/AbstractChannelDataLink$AbstractClient;->send(ILjava/lang/Object;)V

    return-void
.end method

.method public send(Ljava/nio/ByteBuffer;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x1

    .line 13
    invoke-direct {p0, v0, p1}, Lcom/serenegiant/net/AbstractChannelDataLink$AbstractClient;->send(ILjava/lang/Object;)V

    return-void
.end method

.method public send(Z)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    const/16 v0, 0xa

    invoke-direct {p0, v0, p1}, Lcom/serenegiant/net/AbstractChannelDataLink$AbstractClient;->send(ILjava/lang/Object;)V

    return-void
.end method

.method public send([B)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/16 v0, 0x1e

    .line 8
    invoke-direct {p0, v0, p1}, Lcom/serenegiant/net/AbstractChannelDataLink$AbstractClient;->send(ILjava/lang/Object;)V

    return-void
.end method

.method public send([D)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/16 v0, 0x29

    .line 12
    invoke-direct {p0, v0, p1}, Lcom/serenegiant/net/AbstractChannelDataLink$AbstractClient;->send(ILjava/lang/Object;)V

    return-void
.end method

.method public send([F)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/16 v0, 0x28

    .line 11
    invoke-direct {p0, v0, p1}, Lcom/serenegiant/net/AbstractChannelDataLink$AbstractClient;->send(ILjava/lang/Object;)V

    return-void
.end method

.method public send([I)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/16 v0, 0x20

    .line 9
    invoke-direct {p0, v0, p1}, Lcom/serenegiant/net/AbstractChannelDataLink$AbstractClient;->send(ILjava/lang/Object;)V

    return-void
.end method

.method public send([J)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/16 v0, 0x21

    .line 10
    invoke-direct {p0, v0, p1}, Lcom/serenegiant/net/AbstractChannelDataLink$AbstractClient;->send(ILjava/lang/Object;)V

    return-void
.end method

.method public sent([Z)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/16 v0, 0x1f

    .line 1
    invoke-direct {p0, v0, p1}, Lcom/serenegiant/net/AbstractChannelDataLink$AbstractClient;->send(ILjava/lang/Object;)V

    return-void
.end method

.method protected setInit(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/serenegiant/net/AbstractChannelDataLink$AbstractClient;->mIsInit:Z

    return-void
.end method
