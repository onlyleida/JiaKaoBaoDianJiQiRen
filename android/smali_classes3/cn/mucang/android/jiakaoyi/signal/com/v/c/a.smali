.class public final Lcn/mucang/android/jiakaoyi/signal/com/v/c/a;
.super Lcn/mucang/android/jiakaoyi/signal/com/v/a;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000,\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0003\u0018\u0000 \u000e2\u00020\u0001:\u0001\u000eB\r\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0002\u0010\u0004J\u0008\u0010\u0007\u001a\u00020\u0008H\u0016J\u0008\u0010\t\u001a\u00020\nH\u0016J\u0008\u0010\u000b\u001a\u00020\u000cH\u0016J\u0008\u0010\r\u001a\u00020\nH\u0016R\u0010\u0010\u0005\u001a\u0004\u0018\u00010\u0006X\u0082\u000e\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u000f"
    }
    d2 = {
        "Lcn/mucang/android/jiakaoyi/signal/com/init/impl/BltSerialInitialization;",
        "Lcn/mucang/android/jiakaoyi/signal/com/init/BaseInitialization;",
        "comName",
        "Lcn/mucang/android/jiakaoyi/signal/communicate/restruct/channel/provider/names/ComName;",
        "(Lcn/mucang/android/jiakaoyi/signal/communicate/restruct/channel/provider/names/ComName;)V",
        "socket",
        "Landroid/bluetooth/BluetoothSocket;",
        "bandwidth",
        "",
        "close",
        "",
        "desc",
        "",
        "init",
        "Companion",
        "signal_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x5,
        0x1
    }
    xi = 0x30
.end annotation


# instance fields
.field private e:Landroid/bluetooth/BluetoothSocket;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Lcn/mucang/android/jiakaoyi/signal/communicate/restruct/channel/provider/names/ComName;)V
    .locals 1

    const-string v0, "comName"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0, p1}, Lcn/mucang/android/jiakaoyi/signal/com/v/a;-><init>(Lcn/mucang/android/jiakaoyi/signal/communicate/restruct/channel/provider/names/ComName;)V

    return-void
.end method


# virtual methods
.method public close()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    invoke-super {p0}, Lcn/mucang/android/jiakaoyi/signal/com/v/a;->close()V

    .line 2
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/signal/com/v/c/a;->e:Landroid/bluetooth/BluetoothSocket;

    if-eqz v0, :cond_0

    .line 3
    invoke-static {v0}, Lcn/mucang/android/core/utils/o;->a(Ljava/io/Closeable;)V

    const/4 v0, 0x0

    .line 4
    iput-object v0, p0, Lcn/mucang/android/jiakaoyi/signal/com/v/c/a;->e:Landroid/bluetooth/BluetoothSocket;

    :cond_0
    return-void
.end method

.method public init()V
    .locals 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcn/mucang/android/jiakaoyi/signal/com/exception/ComException;
        }
    .end annotation

    .line 1
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v0

    .line 2
    invoke-virtual {v0}, Landroid/bluetooth/BluetoothAdapter;->getBondedDevices()Ljava/util/Set;

    move-result-object v1

    .line 3
    sget-object v2, Lcn/mucang/android/jiakaoyi/framework/dataprovider/b;->a:Lcn/mucang/android/jiakaoyi/framework/dataprovider/b;

    const-class v3, Lcn/mucang/android/jiakaoyi/signal/communicate/AbsSignalProvider;

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Lcn/mucang/android/jiakaoyi/framework/dataprovider/b;->a(Ljava/lang/Class;Landroid/os/Bundle;)Lcn/mucang/android/jiakaoyi/framework/dataprovider/a;

    move-result-object v2

    check-cast v2, Lcn/mucang/android/jiakaoyi/signal/communicate/AbsSignalProvider;

    if-nez v2, :cond_0

    move-object v2, v4

    goto :goto_0

    :cond_0
    invoke-virtual {v2}, Lcn/mucang/android/jiakaoyi/signal/communicate/AbsSignalProvider;->getBluetoothName()Ljava/util/List;

    move-result-object v2

    :goto_0
    if-nez v1, :cond_1

    :goto_1
    move-object v2, v4

    goto :goto_5

    .line 4
    :cond_1
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_8

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    move-object v6, v5

    check-cast v6, Landroid/bluetooth/BluetoothDevice;

    const/4 v7, 0x1

    const/4 v8, 0x0

    if-nez v2, :cond_4

    :cond_3
    const/4 v7, 0x0

    goto :goto_3

    .line 5
    :cond_4
    instance-of v9, v2, Ljava/util/Collection;

    if-eqz v9, :cond_6

    invoke-interface {v2}, Ljava/util/Collection;->isEmpty()Z

    move-result v9

    if-eqz v9, :cond_6

    :cond_5
    const/4 v6, 0x0

    goto :goto_2

    .line 6
    :cond_6
    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :cond_7
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_5

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/String;

    .line 7
    invoke-virtual {v6}, Landroid/bluetooth/BluetoothDevice;->getName()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Lkotlin/jvm/internal/r;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_7

    const/4 v6, 0x1

    :goto_2
    if-ne v6, v7, :cond_3

    :goto_3
    if-eqz v7, :cond_2

    goto :goto_4

    :cond_8
    move-object v5, v4

    :goto_4
    check-cast v5, Landroid/bluetooth/BluetoothDevice;

    if-nez v5, :cond_9

    goto :goto_1

    :cond_9
    invoke-virtual {v5}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v2

    .line 8
    :goto_5
    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_6
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    const-string v5, "debugBlt"

    if-eqz v3, :cond_a

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/bluetooth/BluetoothDevice;

    .line 9
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3}, Landroid/bluetooth/BluetoothDevice;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, ", "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v5, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_6

    :cond_a
    const-string v1, "\u5f00\u59cb\u8fde\u63a5mac\u5730\u5740:"

    .line 10
    invoke-static {v1, v2}, Lkotlin/jvm/internal/r;->m(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v5, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 11
    invoke-static {v2}, Lcn/mucang/android/core/utils/n0;->g(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_e

    .line 12
    invoke-virtual {v0, v2}, Landroid/bluetooth/BluetoothAdapter;->getRemoteDevice(Ljava/lang/String;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v0

    :try_start_0
    const-string v1, "00001101-0000-1000-8000-00805F9B34FB"

    .line 13
    invoke-static {v1}, Ljava/util/UUID;->fromString(Ljava/lang/String;)Ljava/util/UUID;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/bluetooth/BluetoothDevice;->createRfcommSocketToServiceRecord(Ljava/util/UUID;)Landroid/bluetooth/BluetoothSocket;

    move-result-object v0

    iput-object v0, p0, Lcn/mucang/android/jiakaoyi/signal/com/v/c/a;->e:Landroid/bluetooth/BluetoothSocket;

    const-string v0, "\u5f00\u59cb\u8fde\u63a5"

    .line 14
    invoke-static {v5, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 15
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/signal/com/v/c/a;->e:Landroid/bluetooth/BluetoothSocket;

    if-nez v0, :cond_b

    goto :goto_7

    :cond_b
    invoke-virtual {v0}, Landroid/bluetooth/BluetoothSocket;->connect()V

    :goto_7
    const-string v0, "\u8fde\u63a5\u6210\u529f"

    .line 16
    invoke-static {v5, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 17
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/signal/com/v/c/a;->e:Landroid/bluetooth/BluetoothSocket;

    if-nez v0, :cond_c

    move-object v0, v4

    goto :goto_8

    :cond_c
    invoke-virtual {v0}, Landroid/bluetooth/BluetoothSocket;->getInputStream()Ljava/io/InputStream;

    move-result-object v0

    :goto_8
    iput-object v0, p0, Lcn/mucang/android/jiakaoyi/signal/com/v/a;->a:Ljava/io/InputStream;

    .line 18
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/signal/com/v/c/a;->e:Landroid/bluetooth/BluetoothSocket;

    if-nez v0, :cond_d

    goto :goto_9

    :cond_d
    invoke-virtual {v0}, Landroid/bluetooth/BluetoothSocket;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v4

    :goto_9
    iput-object v4, p0, Lcn/mucang/android/jiakaoyi/signal/com/v/a;->b:Ljava/io/OutputStream;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    .line 19
    new-instance v1, Lcn/mucang/android/jiakaoyi/signal/com/exception/ComException;

    iget-object v2, p0, Lcn/mucang/android/jiakaoyi/signal/com/v/a;->d:Lcn/mucang/android/jiakaoyi/signal/communicate/restruct/channel/provider/names/ComName;

    sget-object v3, Lcn/mucang/android/jiakaoyi/signal/com/ComState;->ErrorInitial:Lcn/mucang/android/jiakaoyi/signal/com/ComState;

    invoke-direct {v1, v2, v3, v0}, Lcn/mucang/android/jiakaoyi/signal/com/exception/ComException;-><init>(Lcn/mucang/android/jiakaoyi/signal/communicate/restruct/channel/provider/names/ComName;Lcn/mucang/android/jiakaoyi/signal/com/ComState;Ljava/lang/Throwable;)V

    throw v1

    :cond_e
    const-string v0, "\u672a\u641c\u7d22\u5230\u8bbe\u5907"

    .line 20
    invoke-static {v5, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "\u84dd\u7259\u6a21\u5757\u8fde\u63a5\u5931\u8d25,\u8bf7\u786e\u8ba4\u8bbe\u5907\u662f\u5426\u6b63\u5e38\u914d\u5bf9"

    .line 21
    invoke-static {v0}, Lcn/mucang/android/core/utils/u;->h(Ljava/lang/String;)V

    .line 22
    new-instance v0, Lcn/mucang/android/jiakaoyi/signal/com/exception/ComException;

    iget-object v1, p0, Lcn/mucang/android/jiakaoyi/signal/com/v/a;->d:Lcn/mucang/android/jiakaoyi/signal/communicate/restruct/channel/provider/names/ComName;

    sget-object v2, Lcn/mucang/android/jiakaoyi/signal/com/ComState;->ErrorInitial:Lcn/mucang/android/jiakaoyi/signal/com/ComState;

    new-instance v3, Ljava/lang/Exception;

    const-string v4, "\u84dd\u7259\u8fde\u63a5\u5931\u8d25"

    invoke-direct {v3, v4}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    invoke-direct {v0, v1, v2, v3}, Lcn/mucang/android/jiakaoyi/signal/com/exception/ComException;-><init>(Lcn/mucang/android/jiakaoyi/signal/communicate/restruct/channel/provider/names/ComName;Lcn/mucang/android/jiakaoyi/signal/com/ComState;Ljava/lang/Throwable;)V

    throw v0
.end method

.method public v()I
    .locals 1

    const/high16 v0, 0x100000

    return v0
.end method

.method public w()Ljava/lang/String;
    .locals 1

    const-string v0, "\u84dd\u7259"

    return-object v0
.end method
