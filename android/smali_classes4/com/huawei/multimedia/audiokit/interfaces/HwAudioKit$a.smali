.class Lcom/huawei/multimedia/audiokit/interfaces/HwAudioKit$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/huawei/multimedia/audiokit/interfaces/HwAudioKit;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/huawei/multimedia/audiokit/interfaces/HwAudioKit;


# direct methods
.method constructor <init>(Lcom/huawei/multimedia/audiokit/interfaces/HwAudioKit;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/huawei/multimedia/audiokit/interfaces/HwAudioKit$a;->a:Lcom/huawei/multimedia/audiokit/interfaces/HwAudioKit;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 2

    .line 1
    iget-object p1, p0, Lcom/huawei/multimedia/audiokit/interfaces/HwAudioKit$a;->a:Lcom/huawei/multimedia/audiokit/interfaces/HwAudioKit;

    invoke-static {p2}, Lg/d/a/a/a$a;->n(Landroid/os/IBinder;)Lg/d/a/a/a;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/huawei/multimedia/audiokit/interfaces/HwAudioKit;->b(Lcom/huawei/multimedia/audiokit/interfaces/HwAudioKit;Lg/d/a/a/a;)Lg/d/a/a/a;

    const-string p1, "HwAudioKit.HwAudioKit"

    const-string v0, "onServiceConnected"

    .line 2
    invoke-static {p1, v0}, Lg/d/a/b/a/a;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 3
    iget-object v0, p0, Lcom/huawei/multimedia/audiokit/interfaces/HwAudioKit$a;->a:Lcom/huawei/multimedia/audiokit/interfaces/HwAudioKit;

    invoke-static {v0}, Lcom/huawei/multimedia/audiokit/interfaces/HwAudioKit;->a(Lcom/huawei/multimedia/audiokit/interfaces/HwAudioKit;)Lg/d/a/a/a;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 4
    iget-object v0, p0, Lcom/huawei/multimedia/audiokit/interfaces/HwAudioKit$a;->a:Lcom/huawei/multimedia/audiokit/interfaces/HwAudioKit;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/huawei/multimedia/audiokit/interfaces/HwAudioKit;->c(Lcom/huawei/multimedia/audiokit/interfaces/HwAudioKit;Z)Z

    const-string v0, "onServiceConnected, mIHwAudioEngine is not null"

    .line 5
    invoke-static {p1, v0}, Lg/d/a/b/a/a;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 6
    iget-object p1, p0, Lcom/huawei/multimedia/audiokit/interfaces/HwAudioKit$a;->a:Lcom/huawei/multimedia/audiokit/interfaces/HwAudioKit;

    invoke-static {p1}, Lcom/huawei/multimedia/audiokit/interfaces/HwAudioKit;->d(Lcom/huawei/multimedia/audiokit/interfaces/HwAudioKit;)Lcom/huawei/multimedia/audiokit/interfaces/b;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/huawei/multimedia/audiokit/interfaces/b;->f(I)V

    .line 7
    iget-object p1, p0, Lcom/huawei/multimedia/audiokit/interfaces/HwAudioKit$a;->a:Lcom/huawei/multimedia/audiokit/interfaces/HwAudioKit;

    invoke-static {p1}, Lcom/huawei/multimedia/audiokit/interfaces/HwAudioKit;->e(Lcom/huawei/multimedia/audiokit/interfaces/HwAudioKit;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "1.0.1"

    invoke-static {p1, v0, v1}, Lcom/huawei/multimedia/audiokit/interfaces/HwAudioKit;->f(Lcom/huawei/multimedia/audiokit/interfaces/HwAudioKit;Ljava/lang/String;Ljava/lang/String;)V

    .line 8
    iget-object p1, p0, Lcom/huawei/multimedia/audiokit/interfaces/HwAudioKit$a;->a:Lcom/huawei/multimedia/audiokit/interfaces/HwAudioKit;

    invoke-static {p1, p2}, Lcom/huawei/multimedia/audiokit/interfaces/HwAudioKit;->g(Lcom/huawei/multimedia/audiokit/interfaces/HwAudioKit;Landroid/os/IBinder;)V

    :cond_0
    return-void
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 1

    const-string p1, "HwAudioKit.HwAudioKit"

    const-string v0, "onServiceDisconnected"

    .line 1
    invoke-static {p1, v0}, Lg/d/a/b/a/a;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    iget-object p1, p0, Lcom/huawei/multimedia/audiokit/interfaces/HwAudioKit$a;->a:Lcom/huawei/multimedia/audiokit/interfaces/HwAudioKit;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/huawei/multimedia/audiokit/interfaces/HwAudioKit;->b(Lcom/huawei/multimedia/audiokit/interfaces/HwAudioKit;Lg/d/a/a/a;)Lg/d/a/a/a;

    .line 3
    iget-object p1, p0, Lcom/huawei/multimedia/audiokit/interfaces/HwAudioKit$a;->a:Lcom/huawei/multimedia/audiokit/interfaces/HwAudioKit;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/huawei/multimedia/audiokit/interfaces/HwAudioKit;->c(Lcom/huawei/multimedia/audiokit/interfaces/HwAudioKit;Z)Z

    .line 4
    iget-object p1, p0, Lcom/huawei/multimedia/audiokit/interfaces/HwAudioKit$a;->a:Lcom/huawei/multimedia/audiokit/interfaces/HwAudioKit;

    invoke-static {p1}, Lcom/huawei/multimedia/audiokit/interfaces/HwAudioKit;->d(Lcom/huawei/multimedia/audiokit/interfaces/HwAudioKit;)Lcom/huawei/multimedia/audiokit/interfaces/b;

    move-result-object p1

    const/4 v0, 0x4

    invoke-virtual {p1, v0}, Lcom/huawei/multimedia/audiokit/interfaces/b;->f(I)V

    return-void
.end method
