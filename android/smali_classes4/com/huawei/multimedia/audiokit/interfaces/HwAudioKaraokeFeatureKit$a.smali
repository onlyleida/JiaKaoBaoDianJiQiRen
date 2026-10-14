.class Lcom/huawei/multimedia/audiokit/interfaces/HwAudioKaraokeFeatureKit$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/huawei/multimedia/audiokit/interfaces/HwAudioKaraokeFeatureKit;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/huawei/multimedia/audiokit/interfaces/HwAudioKaraokeFeatureKit;


# direct methods
.method constructor <init>(Lcom/huawei/multimedia/audiokit/interfaces/HwAudioKaraokeFeatureKit;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/huawei/multimedia/audiokit/interfaces/HwAudioKaraokeFeatureKit$a;->a:Lcom/huawei/multimedia/audiokit/interfaces/HwAudioKaraokeFeatureKit;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 1

    const-string p1, "HwAudioKit.HwAudioKaraokeFeatureKit"

    const-string v0, "onServiceConnected"

    .line 1
    invoke-static {p1, v0}, Lg/d/a/b/a/a;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    iget-object p1, p0, Lcom/huawei/multimedia/audiokit/interfaces/HwAudioKaraokeFeatureKit$a;->a:Lcom/huawei/multimedia/audiokit/interfaces/HwAudioKaraokeFeatureKit;

    invoke-static {p2}, Lg/d/a/a/b$a;->n(Landroid/os/IBinder;)Lg/d/a/a/b;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/huawei/multimedia/audiokit/interfaces/HwAudioKaraokeFeatureKit;->b(Lcom/huawei/multimedia/audiokit/interfaces/HwAudioKaraokeFeatureKit;Lg/d/a/a/b;)Lg/d/a/a/b;

    .line 3
    iget-object p1, p0, Lcom/huawei/multimedia/audiokit/interfaces/HwAudioKaraokeFeatureKit$a;->a:Lcom/huawei/multimedia/audiokit/interfaces/HwAudioKaraokeFeatureKit;

    invoke-static {p1}, Lcom/huawei/multimedia/audiokit/interfaces/HwAudioKaraokeFeatureKit;->a(Lcom/huawei/multimedia/audiokit/interfaces/HwAudioKaraokeFeatureKit;)Lg/d/a/a/b;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 4
    iget-object p1, p0, Lcom/huawei/multimedia/audiokit/interfaces/HwAudioKaraokeFeatureKit$a;->a:Lcom/huawei/multimedia/audiokit/interfaces/HwAudioKaraokeFeatureKit;

    const/4 v0, 0x1

    invoke-static {p1, v0}, Lcom/huawei/multimedia/audiokit/interfaces/HwAudioKaraokeFeatureKit;->c(Lcom/huawei/multimedia/audiokit/interfaces/HwAudioKaraokeFeatureKit;Z)Z

    .line 5
    iget-object p1, p0, Lcom/huawei/multimedia/audiokit/interfaces/HwAudioKaraokeFeatureKit$a;->a:Lcom/huawei/multimedia/audiokit/interfaces/HwAudioKaraokeFeatureKit;

    invoke-static {p1}, Lcom/huawei/multimedia/audiokit/interfaces/HwAudioKaraokeFeatureKit;->d(Lcom/huawei/multimedia/audiokit/interfaces/HwAudioKaraokeFeatureKit;)Lcom/huawei/multimedia/audiokit/interfaces/b;

    move-result-object p1

    const/16 v0, 0x3e8

    invoke-virtual {p1, v0}, Lcom/huawei/multimedia/audiokit/interfaces/b;->f(I)V

    .line 6
    iget-object p1, p0, Lcom/huawei/multimedia/audiokit/interfaces/HwAudioKaraokeFeatureKit$a;->a:Lcom/huawei/multimedia/audiokit/interfaces/HwAudioKaraokeFeatureKit;

    invoke-static {p1}, Lcom/huawei/multimedia/audiokit/interfaces/HwAudioKaraokeFeatureKit;->e(Lcom/huawei/multimedia/audiokit/interfaces/HwAudioKaraokeFeatureKit;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/huawei/multimedia/audiokit/interfaces/HwAudioKaraokeFeatureKit;->f(Lcom/huawei/multimedia/audiokit/interfaces/HwAudioKaraokeFeatureKit;Ljava/lang/String;)V

    .line 7
    iget-object p1, p0, Lcom/huawei/multimedia/audiokit/interfaces/HwAudioKaraokeFeatureKit$a;->a:Lcom/huawei/multimedia/audiokit/interfaces/HwAudioKaraokeFeatureKit;

    invoke-static {p1, p2}, Lcom/huawei/multimedia/audiokit/interfaces/HwAudioKaraokeFeatureKit;->g(Lcom/huawei/multimedia/audiokit/interfaces/HwAudioKaraokeFeatureKit;Landroid/os/IBinder;)V

    :cond_0
    return-void
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 1

    const-string p1, "HwAudioKit.HwAudioKaraokeFeatureKit"

    const-string v0, "onServiceDisconnected"

    .line 1
    invoke-static {p1, v0}, Lg/d/a/b/a/a;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    iget-object p1, p0, Lcom/huawei/multimedia/audiokit/interfaces/HwAudioKaraokeFeatureKit$a;->a:Lcom/huawei/multimedia/audiokit/interfaces/HwAudioKaraokeFeatureKit;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/huawei/multimedia/audiokit/interfaces/HwAudioKaraokeFeatureKit;->c(Lcom/huawei/multimedia/audiokit/interfaces/HwAudioKaraokeFeatureKit;Z)Z

    .line 3
    iget-object p1, p0, Lcom/huawei/multimedia/audiokit/interfaces/HwAudioKaraokeFeatureKit$a;->a:Lcom/huawei/multimedia/audiokit/interfaces/HwAudioKaraokeFeatureKit;

    invoke-static {p1}, Lcom/huawei/multimedia/audiokit/interfaces/HwAudioKaraokeFeatureKit;->d(Lcom/huawei/multimedia/audiokit/interfaces/HwAudioKaraokeFeatureKit;)Lcom/huawei/multimedia/audiokit/interfaces/b;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 4
    iget-object p1, p0, Lcom/huawei/multimedia/audiokit/interfaces/HwAudioKaraokeFeatureKit$a;->a:Lcom/huawei/multimedia/audiokit/interfaces/HwAudioKaraokeFeatureKit;

    invoke-static {p1}, Lcom/huawei/multimedia/audiokit/interfaces/HwAudioKaraokeFeatureKit;->d(Lcom/huawei/multimedia/audiokit/interfaces/HwAudioKaraokeFeatureKit;)Lcom/huawei/multimedia/audiokit/interfaces/b;

    move-result-object p1

    const/16 v0, 0x3e9

    invoke-virtual {p1, v0}, Lcom/huawei/multimedia/audiokit/interfaces/b;->f(I)V

    :cond_0
    return-void
.end method
