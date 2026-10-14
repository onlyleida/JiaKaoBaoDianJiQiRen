.class public Lcom/huawei/multimedia/audiokit/interfaces/HwAudioKaraokeFeatureKit;
.super Lcom/huawei/multimedia/audiokit/interfaces/a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/huawei/multimedia/audiokit/interfaces/HwAudioKaraokeFeatureKit$ParameName;
    }
.end annotation


# instance fields
.field private a:Landroid/content/Context;

.field private b:Lcom/huawei/multimedia/audiokit/interfaces/b;

.field private c:Z

.field private d:Lg/d/a/a/b;

.field private e:Landroid/os/IBinder;

.field private f:Landroid/content/ServiceConnection;

.field private g:Landroid/os/IBinder$DeathRecipient;


# direct methods
.method protected constructor <init>(Landroid/content/Context;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Lcom/huawei/multimedia/audiokit/interfaces/a;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput-object v0, p0, Lcom/huawei/multimedia/audiokit/interfaces/HwAudioKaraokeFeatureKit;->b:Lcom/huawei/multimedia/audiokit/interfaces/b;

    const/4 v1, 0x0

    .line 3
    iput-boolean v1, p0, Lcom/huawei/multimedia/audiokit/interfaces/HwAudioKaraokeFeatureKit;->c:Z

    .line 4
    iput-object v0, p0, Lcom/huawei/multimedia/audiokit/interfaces/HwAudioKaraokeFeatureKit;->e:Landroid/os/IBinder;

    .line 5
    new-instance v0, Lcom/huawei/multimedia/audiokit/interfaces/HwAudioKaraokeFeatureKit$a;

    invoke-direct {v0, p0}, Lcom/huawei/multimedia/audiokit/interfaces/HwAudioKaraokeFeatureKit$a;-><init>(Lcom/huawei/multimedia/audiokit/interfaces/HwAudioKaraokeFeatureKit;)V

    iput-object v0, p0, Lcom/huawei/multimedia/audiokit/interfaces/HwAudioKaraokeFeatureKit;->f:Landroid/content/ServiceConnection;

    .line 6
    new-instance v0, Lcom/huawei/multimedia/audiokit/interfaces/HwAudioKaraokeFeatureKit$b;

    invoke-direct {v0, p0}, Lcom/huawei/multimedia/audiokit/interfaces/HwAudioKaraokeFeatureKit$b;-><init>(Lcom/huawei/multimedia/audiokit/interfaces/HwAudioKaraokeFeatureKit;)V

    iput-object v0, p0, Lcom/huawei/multimedia/audiokit/interfaces/HwAudioKaraokeFeatureKit;->g:Landroid/os/IBinder$DeathRecipient;

    .line 7
    invoke-static {}, Lcom/huawei/multimedia/audiokit/interfaces/b;->d()Lcom/huawei/multimedia/audiokit/interfaces/b;

    move-result-object v0

    iput-object v0, p0, Lcom/huawei/multimedia/audiokit/interfaces/HwAudioKaraokeFeatureKit;->b:Lcom/huawei/multimedia/audiokit/interfaces/b;

    .line 8
    iput-object p1, p0, Lcom/huawei/multimedia/audiokit/interfaces/HwAudioKaraokeFeatureKit;->a:Landroid/content/Context;

    return-void
.end method

.method static synthetic a(Lcom/huawei/multimedia/audiokit/interfaces/HwAudioKaraokeFeatureKit;)Lg/d/a/a/b;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/huawei/multimedia/audiokit/interfaces/HwAudioKaraokeFeatureKit;->d:Lg/d/a/a/b;

    return-object p0
.end method

.method static synthetic b(Lcom/huawei/multimedia/audiokit/interfaces/HwAudioKaraokeFeatureKit;Lg/d/a/a/b;)Lg/d/a/a/b;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/huawei/multimedia/audiokit/interfaces/HwAudioKaraokeFeatureKit;->d:Lg/d/a/a/b;

    return-object p1
.end method

.method static synthetic c(Lcom/huawei/multimedia/audiokit/interfaces/HwAudioKaraokeFeatureKit;Z)Z
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/huawei/multimedia/audiokit/interfaces/HwAudioKaraokeFeatureKit;->c:Z

    return p1
.end method

.method static synthetic d(Lcom/huawei/multimedia/audiokit/interfaces/HwAudioKaraokeFeatureKit;)Lcom/huawei/multimedia/audiokit/interfaces/b;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/huawei/multimedia/audiokit/interfaces/HwAudioKaraokeFeatureKit;->b:Lcom/huawei/multimedia/audiokit/interfaces/b;

    return-object p0
.end method

.method static synthetic e(Lcom/huawei/multimedia/audiokit/interfaces/HwAudioKaraokeFeatureKit;)Landroid/content/Context;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/huawei/multimedia/audiokit/interfaces/HwAudioKaraokeFeatureKit;->a:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic f(Lcom/huawei/multimedia/audiokit/interfaces/HwAudioKaraokeFeatureKit;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/huawei/multimedia/audiokit/interfaces/HwAudioKaraokeFeatureKit;->q(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic g(Lcom/huawei/multimedia/audiokit/interfaces/HwAudioKaraokeFeatureKit;Landroid/os/IBinder;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/huawei/multimedia/audiokit/interfaces/HwAudioKaraokeFeatureKit;->r(Landroid/os/IBinder;)V

    return-void
.end method

.method static synthetic h(Lcom/huawei/multimedia/audiokit/interfaces/HwAudioKaraokeFeatureKit;)Landroid/os/IBinder$DeathRecipient;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/huawei/multimedia/audiokit/interfaces/HwAudioKaraokeFeatureKit;->g:Landroid/os/IBinder$DeathRecipient;

    return-object p0
.end method

.method static synthetic i(Lcom/huawei/multimedia/audiokit/interfaces/HwAudioKaraokeFeatureKit;)Landroid/os/IBinder;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/huawei/multimedia/audiokit/interfaces/HwAudioKaraokeFeatureKit;->e:Landroid/os/IBinder;

    return-object p0
.end method

.method static synthetic j(Lcom/huawei/multimedia/audiokit/interfaces/HwAudioKaraokeFeatureKit;Landroid/os/IBinder;)Landroid/os/IBinder;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/huawei/multimedia/audiokit/interfaces/HwAudioKaraokeFeatureKit;->e:Landroid/os/IBinder;

    return-object p1
.end method

.method private k(Landroid/content/Context;)V
    .locals 3

    const-string v0, "HwAudioKit.HwAudioKaraokeFeatureKit"

    const-string v1, "bindService"

    .line 1
    invoke-static {v0, v1}, Lg/d/a/b/a/a;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    iget-object v0, p0, Lcom/huawei/multimedia/audiokit/interfaces/HwAudioKaraokeFeatureKit;->b:Lcom/huawei/multimedia/audiokit/interfaces/b;

    if-eqz v0, :cond_0

    iget-boolean v1, p0, Lcom/huawei/multimedia/audiokit/interfaces/HwAudioKaraokeFeatureKit;->c:Z

    if-nez v1, :cond_0

    .line 3
    iget-object v1, p0, Lcom/huawei/multimedia/audiokit/interfaces/HwAudioKaraokeFeatureKit;->f:Landroid/content/ServiceConnection;

    const-string v2, "com.huawei.multimedia.audioengine.HwAudioKaraokeFeatureService"

    invoke-virtual {v0, p1, v1, v2}, Lcom/huawei/multimedia/audiokit/interfaces/b;->a(Landroid/content/Context;Landroid/content/ServiceConnection;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method private q(Ljava/lang/String;)V
    .locals 2

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/huawei/multimedia/audiokit/interfaces/HwAudioKaraokeFeatureKit;->d:Lg/d/a/a/b;

    if-eqz v0, :cond_0

    iget-boolean v1, p0, Lcom/huawei/multimedia/audiokit/interfaces/HwAudioKaraokeFeatureKit;->c:Z

    if-eqz v1, :cond_0

    .line 2
    invoke-interface {v0, p1}, Lg/d/a/a/b;->j(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    .line 3
    invoke-virtual {p1}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object p1

    aput-object p1, v0, v1

    const-string p1, "HwAudioKit.HwAudioKaraokeFeatureKit"

    const-string v1, "isFeatureSupported,RemoteException ex : {}"

    invoke-static {p1, v1, v0}, Lg/d/a/b/a/a;->b(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_0
    :goto_0
    return-void
.end method

.method private r(Landroid/os/IBinder;)V
    .locals 2

    .line 1
    iput-object p1, p0, Lcom/huawei/multimedia/audiokit/interfaces/HwAudioKaraokeFeatureKit;->e:Landroid/os/IBinder;

    if-eqz p1, :cond_0

    .line 2
    :try_start_0
    iget-object v0, p0, Lcom/huawei/multimedia/audiokit/interfaces/HwAudioKaraokeFeatureKit;->g:Landroid/os/IBinder$DeathRecipient;

    const/4 v1, 0x0

    invoke-interface {p1, v0, v1}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 3
    :catch_0
    iget-object p1, p0, Lcom/huawei/multimedia/audiokit/interfaces/HwAudioKaraokeFeatureKit;->b:Lcom/huawei/multimedia/audiokit/interfaces/b;

    const/16 v0, 0x3ea

    invoke-virtual {p1, v0}, Lcom/huawei/multimedia/audiokit/interfaces/b;->f(I)V

    const-string p1, "HwAudioKit.HwAudioKaraokeFeatureKit"

    const-string v0, "serviceLinkToDeath, RemoteException"

    .line 4
    invoke-static {p1, v0}, Lg/d/a/b/a/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    :goto_0
    return-void
.end method


# virtual methods
.method public l()V
    .locals 4

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Boolean;

    .line 1
    iget-boolean v1, p0, Lcom/huawei/multimedia/audiokit/interfaces/HwAudioKaraokeFeatureKit;->c:Z

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const-string v1, "HwAudioKit.HwAudioKaraokeFeatureKit"

    const-string v3, "destroy, mIsServiceConnected = {}"

    invoke-static {v1, v3, v0}, Lg/d/a/b/a/a;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 2
    iget-boolean v0, p0, Lcom/huawei/multimedia/audiokit/interfaces/HwAudioKaraokeFeatureKit;->c:Z

    if-eqz v0, :cond_0

    .line 3
    iput-boolean v2, p0, Lcom/huawei/multimedia/audiokit/interfaces/HwAudioKaraokeFeatureKit;->c:Z

    .line 4
    iget-object v0, p0, Lcom/huawei/multimedia/audiokit/interfaces/HwAudioKaraokeFeatureKit;->b:Lcom/huawei/multimedia/audiokit/interfaces/b;

    iget-object v1, p0, Lcom/huawei/multimedia/audiokit/interfaces/HwAudioKaraokeFeatureKit;->a:Landroid/content/Context;

    iget-object v2, p0, Lcom/huawei/multimedia/audiokit/interfaces/HwAudioKaraokeFeatureKit;->f:Landroid/content/ServiceConnection;

    invoke-virtual {v0, v1, v2}, Lcom/huawei/multimedia/audiokit/interfaces/b;->h(Landroid/content/Context;Landroid/content/ServiceConnection;)V

    :cond_0
    return-void
.end method

.method public m(Z)I
    .locals 5

    const/4 v0, 0x1

    new-array v1, v0, [Ljava/lang/Boolean;

    .line 1
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    const-string v2, "HwAudioKit.HwAudioKaraokeFeatureKit"

    const-string v4, "enableKaraokeFeature, enable = {}"

    invoke-static {v2, v4, v1}, Lg/d/a/b/a/a;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 2
    :try_start_0
    iget-object v1, p0, Lcom/huawei/multimedia/audiokit/interfaces/HwAudioKaraokeFeatureKit;->d:Lg/d/a/a/b;

    if-eqz v1, :cond_0

    iget-boolean v4, p0, Lcom/huawei/multimedia/audiokit/interfaces/HwAudioKaraokeFeatureKit;->c:Z

    if-eqz v4, :cond_0

    .line 3
    invoke-interface {v1, p1}, Lg/d/a/a/b;->d(Z)I

    move-result p1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return p1

    :catch_0
    move-exception p1

    new-array v0, v0, [Ljava/lang/String;

    .line 4
    invoke-virtual {p1}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object p1

    aput-object p1, v0, v3

    const-string p1, "enableKaraokeFeature,RemoteException ex : {}"

    invoke-static {v2, p1, v0}, Lg/d/a/b/a/a;->b(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_0
    const/4 p1, -0x2

    return p1
.end method

.method public n()I
    .locals 4

    const-string v0, "HwAudioKit.HwAudioKaraokeFeatureKit"

    const-string v1, "getKaraokeLatency"

    .line 1
    invoke-static {v0, v1}, Lg/d/a/b/a/a;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    :try_start_0
    iget-object v1, p0, Lcom/huawei/multimedia/audiokit/interfaces/HwAudioKaraokeFeatureKit;->d:Lg/d/a/a/b;

    if-eqz v1, :cond_0

    iget-boolean v2, p0, Lcom/huawei/multimedia/audiokit/interfaces/HwAudioKaraokeFeatureKit;->c:Z

    if-eqz v2, :cond_0

    .line 3
    invoke-interface {v1}, Lg/d/a/a/b;->k()I

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v1

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    .line 4
    invoke-virtual {v1}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v2, v3

    const-string v1, "getKaraokeLatency,RemoteException ex : {}"

    invoke-static {v0, v1, v2}, Lg/d/a/b/a/a;->b(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_0
    const/4 v0, -0x1

    return v0
.end method

.method protected o(Landroid/content/Context;)V
    .locals 2

    const-string v0, "HwAudioKit.HwAudioKaraokeFeatureKit"

    const-string v1, "initialize"

    .line 1
    invoke-static {v0, v1}, Lg/d/a/b/a/a;->d(Ljava/lang/String;Ljava/lang/String;)V

    if-nez p1, :cond_0

    const-string p1, "initialize, context is null"

    .line 2
    invoke-static {v0, p1}, Lg/d/a/b/a/a;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 3
    :cond_0
    iget-object v1, p0, Lcom/huawei/multimedia/audiokit/interfaces/HwAudioKaraokeFeatureKit;->b:Lcom/huawei/multimedia/audiokit/interfaces/b;

    invoke-virtual {v1, p1}, Lcom/huawei/multimedia/audiokit/interfaces/b;->e(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 4
    iget-object p1, p0, Lcom/huawei/multimedia/audiokit/interfaces/HwAudioKaraokeFeatureKit;->b:Lcom/huawei/multimedia/audiokit/interfaces/b;

    const/4 v1, 0x2

    invoke-virtual {p1, v1}, Lcom/huawei/multimedia/audiokit/interfaces/b;->f(I)V

    const-string p1, "initialize, not install AudioEngine"

    .line 5
    invoke-static {v0, p1}, Lg/d/a/b/a/a;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 6
    :cond_1
    invoke-direct {p0, p1}, Lcom/huawei/multimedia/audiokit/interfaces/HwAudioKaraokeFeatureKit;->k(Landroid/content/Context;)V

    return-void
.end method

.method public p()Z
    .locals 4

    const-string v0, "HwAudioKit.HwAudioKaraokeFeatureKit"

    const-string v1, "isKaraokeFeatureSupport"

    .line 1
    invoke-static {v0, v1}, Lg/d/a/b/a/a;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v1, 0x0

    .line 2
    :try_start_0
    iget-object v2, p0, Lcom/huawei/multimedia/audiokit/interfaces/HwAudioKaraokeFeatureKit;->d:Lg/d/a/a/b;

    if-eqz v2, :cond_0

    iget-boolean v3, p0, Lcom/huawei/multimedia/audiokit/interfaces/HwAudioKaraokeFeatureKit;->c:Z

    if-eqz v3, :cond_0

    .line 3
    invoke-interface {v2}, Lg/d/a/a/b;->l()Z

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v2

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/String;

    .line 4
    invoke-virtual {v2}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v3, v1

    const-string v2, "isFeatureSupported,RemoteException ex : {}"

    invoke-static {v0, v2, v3}, Lg/d/a/b/a/a;->b(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_0
    return v1
.end method

.method public s(Lcom/huawei/multimedia/audiokit/interfaces/HwAudioKaraokeFeatureKit$ParameName;I)I
    .locals 6

    const-string v0, "HwAudioKit.HwAudioKaraokeFeatureKit"

    const/4 v1, 0x0

    const/4 v2, 0x1

    :try_start_0
    const-string v3, "parame.getParameName() = {}, parameValue = {}"

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/io/Serializable;

    .line 1
    invoke-virtual {p1}, Lcom/huawei/multimedia/audiokit/interfaces/HwAudioKaraokeFeatureKit$ParameName;->getParameName()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v1

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v2

    invoke-static {v0, v3, v4}, Lg/d/a/b/a/a;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 2
    iget-object v3, p0, Lcom/huawei/multimedia/audiokit/interfaces/HwAudioKaraokeFeatureKit;->d:Lg/d/a/a/b;

    if-eqz v3, :cond_0

    iget-boolean v4, p0, Lcom/huawei/multimedia/audiokit/interfaces/HwAudioKaraokeFeatureKit;->c:Z

    if-eqz v4, :cond_0

    .line 3
    invoke-virtual {p1}, Lcom/huawei/multimedia/audiokit/interfaces/HwAudioKaraokeFeatureKit$ParameName;->getParameName()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v3, p1, p2}, Lg/d/a/a/b;->e(Ljava/lang/String;I)I

    move-result p1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return p1

    :catch_0
    move-exception p1

    new-array p2, v2, [Ljava/lang/String;

    .line 4
    invoke-virtual {p1}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object p1

    aput-object p1, p2, v1

    const-string p1, "setParameter,RemoteException ex : {}"

    invoke-static {v0, p1, p2}, Lg/d/a/b/a/a;->b(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_0
    const/4 p1, -0x2

    return p1
.end method
