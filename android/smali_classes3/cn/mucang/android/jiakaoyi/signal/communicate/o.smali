.class public Lcn/mucang/android/jiakaoyi/signal/communicate/o;
.super Landroid/content/BroadcastReceiver;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/mucang/android/jiakaoyi/signal/communicate/o$b;
    }
.end annotation


# instance fields
.field private a:Landroid/content/Context;

.field private b:Ljava/lang/Thread;

.field private volatile c:Z

.field private d:Z

.field private e:Z

.field private f:Landroid/bluetooth/BluetoothServerSocket;

.field private final g:Ljava/lang/Object;

.field private h:Lcn/mucang/android/jiakaoyi/signal/communicate/o$b;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcn/mucang/android/jiakaoyi/signal/communicate/o$b;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 2
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcn/mucang/android/jiakaoyi/signal/communicate/o;->g:Ljava/lang/Object;

    .line 3
    iput-object p1, p0, Lcn/mucang/android/jiakaoyi/signal/communicate/o;->a:Landroid/content/Context;

    .line 4
    iput-object p2, p0, Lcn/mucang/android/jiakaoyi/signal/communicate/o;->h:Lcn/mucang/android/jiakaoyi/signal/communicate/o$b;

    return-void
.end method

.method static synthetic a(Lcn/mucang/android/jiakaoyi/signal/communicate/o;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcn/mucang/android/jiakaoyi/signal/communicate/o;->d()V

    return-void
.end method

.method private b(Ljava/lang/CharSequence;)V
    .locals 1

    .line 1
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "BlueToothServer"

    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private d()V
    .locals 4

    .line 1
    :try_start_0
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v0

    .line 2
    invoke-virtual {v0}, Landroid/bluetooth/BluetoothAdapter;->isEnabled()Z

    move-result v1

    iput-boolean v1, p0, Lcn/mucang/android/jiakaoyi/signal/communicate/o;->e:Z

    .line 3
    invoke-virtual {v0}, Landroid/bluetooth/BluetoothAdapter;->isEnabled()Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    iput-boolean v1, p0, Lcn/mucang/android/jiakaoyi/signal/communicate/o;->d:Z

    .line 4
    iget-boolean v1, p0, Lcn/mucang/android/jiakaoyi/signal/communicate/o;->e:Z

    if-nez v1, :cond_3

    .line 5
    invoke-virtual {v0}, Landroid/bluetooth/BluetoothAdapter;->enable()Z

    move-result v1

    .line 6
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "\u8bf7\u6c42\u5f00\u542f\u84dd\u7259\u6210\u529f\u5417?"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcn/mucang/android/jiakaoyi/signal/communicate/o;->b(Ljava/lang/CharSequence;)V

    if-eqz v1, :cond_1

    const-string v1, "\u6b63\u5728\u7b49\u5f85\u84dd\u7259\u6253\u5f00..."

    .line 7
    invoke-direct {p0, v1}, Lcn/mucang/android/jiakaoyi/signal/communicate/o;->b(Ljava/lang/CharSequence;)V

    .line 8
    :cond_1
    iget-object v1, p0, Lcn/mucang/android/jiakaoyi/signal/communicate/o;->g:Ljava/lang/Object;

    monitor-enter v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 9
    :try_start_1
    iget-boolean v2, p0, Lcn/mucang/android/jiakaoyi/signal/communicate/o;->e:Z

    if-nez v2, :cond_2

    .line 10
    iget-object v2, p0, Lcn/mucang/android/jiakaoyi/signal/communicate/o;->g:Ljava/lang/Object;

    invoke-virtual {v2}, Ljava/lang/Object;->wait()V

    .line 11
    :cond_2
    monitor-exit v1

    goto :goto_1

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw v0

    :cond_3
    const-string v1, "\u5f53\u524d\u84dd\u7259\u5df2\u662f\u5f00\u542f\u72b6\u6001"

    .line 12
    invoke-direct {p0, v1}, Lcn/mucang/android/jiakaoyi/signal/communicate/o;->b(Ljava/lang/CharSequence;)V

    .line 13
    :goto_1
    invoke-virtual {v0}, Landroid/bluetooth/BluetoothAdapter;->getAddress()Ljava/lang/String;

    move-result-object v1

    .line 14
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "\u5f53\u524d\u84dd\u7259\u5730\u5740\u4e3a:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcn/mucang/android/jiakaoyi/signal/communicate/o;->b(Ljava/lang/CharSequence;)V

    const-string v1, "bleTest"

    const-string v2, "00001101-0000-1000-8000-00805F9B34FB"

    .line 15
    invoke-static {v2}, Ljava/util/UUID;->fromString(Ljava/lang/String;)Ljava/util/UUID;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/bluetooth/BluetoothAdapter;->listenUsingRfcommWithServiceRecord(Ljava/lang/String;Ljava/util/UUID;)Landroid/bluetooth/BluetoothServerSocket;

    move-result-object v0

    iput-object v0, p0, Lcn/mucang/android/jiakaoyi/signal/communicate/o;->f:Landroid/bluetooth/BluetoothServerSocket;

    const-string v0, "\u542f\u52a8\u84dd\u7259\u76d1\u542c\u670d\u52a1..."

    .line 16
    invoke-direct {p0, v0}, Lcn/mucang/android/jiakaoyi/signal/communicate/o;->b(Ljava/lang/CharSequence;)V

    .line 17
    :cond_4
    :goto_2
    iget-boolean v0, p0, Lcn/mucang/android/jiakaoyi/signal/communicate/o;->c:Z

    if-eqz v0, :cond_5

    .line 18
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/signal/communicate/o;->f:Landroid/bluetooth/BluetoothServerSocket;

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothServerSocket;->accept()Landroid/bluetooth/BluetoothSocket;

    move-result-object v0

    .line 19
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\u6536\u5230\u4e00\u4e2a\u8fde\u63a5...."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcn/mucang/android/jiakaoyi/signal/communicate/o;->b(Ljava/lang/CharSequence;)V

    .line 20
    iget-object v1, p0, Lcn/mucang/android/jiakaoyi/signal/communicate/o;->h:Lcn/mucang/android/jiakaoyi/signal/communicate/o$b;

    if-eqz v1, :cond_4

    .line 21
    invoke-virtual {v0}, Landroid/bluetooth/BluetoothSocket;->getInputStream()Ljava/io/InputStream;

    move-result-object v0

    .line 22
    iget-object v1, p0, Lcn/mucang/android/jiakaoyi/signal/communicate/o;->h:Lcn/mucang/android/jiakaoyi/signal/communicate/o$b;

    invoke-interface {v1, v0}, Lcn/mucang/android/jiakaoyi/signal/communicate/o$b;->a(Ljava/io/InputStream;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_2

    :catch_0
    move-exception v0

    .line 23
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 24
    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcn/mucang/android/jiakaoyi/signal/communicate/o;->b(Ljava/lang/CharSequence;)V

    :cond_5
    return-void
.end method


# virtual methods
.method public c()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/signal/communicate/o;->b:Ljava/lang/Thread;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcn/mucang/android/jiakaoyi/signal/communicate/o;->c:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Lcn/mucang/android/jiakaoyi/signal/communicate/o;->c:Z

    .line 3
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/signal/communicate/o;->b:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V

    .line 4
    :cond_0
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/signal/communicate/o;->f:Landroid/bluetooth/BluetoothServerSocket;

    invoke-static {v0}, Lcn/mucang/android/core/utils/o;->a(Ljava/io/Closeable;)V

    .line 5
    iget-boolean v0, p0, Lcn/mucang/android/jiakaoyi/signal/communicate/o;->d:Z

    if-eqz v0, :cond_1

    .line 6
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v0

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothAdapter;->disable()Z

    :cond_1
    return-void
.end method

.method public declared-synchronized e()V
    .locals 3

    monitor-enter p0

    .line 1
    :try_start_0
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/signal/communicate/o;->b:Ljava/lang/Thread;

    if-nez v0, :cond_0

    .line 2
    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "android.bluetooth.adapter.action.STATE_CHANGED"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 3
    iget-object v1, p0, Lcn/mucang/android/jiakaoyi/signal/communicate/o;->a:Landroid/content/Context;

    invoke-virtual {v1, p0, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    const/4 v0, 0x1

    .line 4
    iput-boolean v0, p0, Lcn/mucang/android/jiakaoyi/signal/communicate/o;->c:Z

    .line 5
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcn/mucang/android/jiakaoyi/signal/communicate/o$a;

    invoke-direct {v1, p0}, Lcn/mucang/android/jiakaoyi/signal/communicate/o$a;-><init>(Lcn/mucang/android/jiakaoyi/signal/communicate/o;)V

    const-string v2, "BlueToothServer"

    invoke-direct {v0, v1, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    iput-object v0, p0, Lcn/mucang/android/jiakaoyi/signal/communicate/o;->b:Ljava/lang/Thread;

    .line 6
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 7
    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 1

    const-string p1, "android.bluetooth.adapter.action.STATE_CHANGED"

    .line 1
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const-string p1, "android.bluetooth.adapter.extra.STATE"

    const/16 v0, 0xa

    .line 2
    invoke-virtual {p2, p1, v0}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p1

    const/16 p2, 0xc

    if-ne p1, p2, :cond_0

    .line 3
    iget-boolean p1, p0, Lcn/mucang/android/jiakaoyi/signal/communicate/o;->e:Z

    if-nez p1, :cond_0

    .line 4
    iget-object p1, p0, Lcn/mucang/android/jiakaoyi/signal/communicate/o;->g:Ljava/lang/Object;

    monitor-enter p1

    const/4 p2, 0x1

    .line 5
    :try_start_0
    iput-boolean p2, p0, Lcn/mucang/android/jiakaoyi/signal/communicate/o;->e:Z

    .line 6
    iget-object p2, p0, Lcn/mucang/android/jiakaoyi/signal/communicate/o;->g:Ljava/lang/Object;

    invoke-virtual {p2}, Ljava/lang/Object;->notifyAll()V

    .line 7
    monitor-exit p1

    goto :goto_0

    :catchall_0
    move-exception p2

    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p2

    :cond_0
    :goto_0
    return-void
.end method
