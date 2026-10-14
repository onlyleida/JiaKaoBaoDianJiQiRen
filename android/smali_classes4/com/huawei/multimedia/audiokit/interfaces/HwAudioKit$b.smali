.class Lcom/huawei/multimedia/audiokit/interfaces/HwAudioKit$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/IBinder$DeathRecipient;


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
    iput-object p1, p0, Lcom/huawei/multimedia/audiokit/interfaces/HwAudioKit$b;->a:Lcom/huawei/multimedia/audiokit/interfaces/HwAudioKit;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public binderDied()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/huawei/multimedia/audiokit/interfaces/HwAudioKit$b;->a:Lcom/huawei/multimedia/audiokit/interfaces/HwAudioKit;

    invoke-static {v0}, Lcom/huawei/multimedia/audiokit/interfaces/HwAudioKit;->i(Lcom/huawei/multimedia/audiokit/interfaces/HwAudioKit;)Landroid/os/IBinder;

    move-result-object v0

    iget-object v1, p0, Lcom/huawei/multimedia/audiokit/interfaces/HwAudioKit$b;->a:Lcom/huawei/multimedia/audiokit/interfaces/HwAudioKit;

    invoke-static {v1}, Lcom/huawei/multimedia/audiokit/interfaces/HwAudioKit;->h(Lcom/huawei/multimedia/audiokit/interfaces/HwAudioKit;)Landroid/os/IBinder$DeathRecipient;

    move-result-object v1

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z

    .line 2
    iget-object v0, p0, Lcom/huawei/multimedia/audiokit/interfaces/HwAudioKit$b;->a:Lcom/huawei/multimedia/audiokit/interfaces/HwAudioKit;

    invoke-static {v0}, Lcom/huawei/multimedia/audiokit/interfaces/HwAudioKit;->d(Lcom/huawei/multimedia/audiokit/interfaces/HwAudioKit;)Lcom/huawei/multimedia/audiokit/interfaces/b;

    move-result-object v0

    const/4 v1, 0x6

    invoke-virtual {v0, v1}, Lcom/huawei/multimedia/audiokit/interfaces/b;->f(I)V

    const-string v0, "HwAudioKit.HwAudioKit"

    const-string v1, "service binder died"

    .line 3
    invoke-static {v0, v1}, Lg/d/a/b/a/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 4
    iget-object v0, p0, Lcom/huawei/multimedia/audiokit/interfaces/HwAudioKit$b;->a:Lcom/huawei/multimedia/audiokit/interfaces/HwAudioKit;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/huawei/multimedia/audiokit/interfaces/HwAudioKit;->j(Lcom/huawei/multimedia/audiokit/interfaces/HwAudioKit;Landroid/os/IBinder;)Landroid/os/IBinder;

    return-void
.end method
