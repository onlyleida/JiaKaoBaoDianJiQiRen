.class public Lcom/huawei/multimedia/audiokit/interfaces/HwAudioKit;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/huawei/multimedia/audiokit/interfaces/HwAudioKit$FeatureType;
    }
.end annotation


# instance fields
.field private a:Landroid/content/Context;

.field private b:Lg/d/a/a/a;

.field private c:Z

.field private d:Lcom/huawei/multimedia/audiokit/interfaces/b;

.field private e:Landroid/os/IBinder;

.field private f:Landroid/content/ServiceConnection;

.field private g:Landroid/os/IBinder$DeathRecipient;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/huawei/multimedia/audiokit/interfaces/c;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput-object v0, p0, Lcom/huawei/multimedia/audiokit/interfaces/HwAudioKit;->a:Landroid/content/Context;

    .line 3
    iput-object v0, p0, Lcom/huawei/multimedia/audiokit/interfaces/HwAudioKit;->b:Lg/d/a/a/a;

    const/4 v1, 0x0

    .line 4
    iput-boolean v1, p0, Lcom/huawei/multimedia/audiokit/interfaces/HwAudioKit;->c:Z

    .line 5
    iput-object v0, p0, Lcom/huawei/multimedia/audiokit/interfaces/HwAudioKit;->e:Landroid/os/IBinder;

    .line 6
    new-instance v0, Lcom/huawei/multimedia/audiokit/interfaces/HwAudioKit$a;

    invoke-direct {v0, p0}, Lcom/huawei/multimedia/audiokit/interfaces/HwAudioKit$a;-><init>(Lcom/huawei/multimedia/audiokit/interfaces/HwAudioKit;)V

    iput-object v0, p0, Lcom/huawei/multimedia/audiokit/interfaces/HwAudioKit;->f:Landroid/content/ServiceConnection;

    .line 7
    new-instance v0, Lcom/huawei/multimedia/audiokit/interfaces/HwAudioKit$b;

    invoke-direct {v0, p0}, Lcom/huawei/multimedia/audiokit/interfaces/HwAudioKit$b;-><init>(Lcom/huawei/multimedia/audiokit/interfaces/HwAudioKit;)V

    iput-object v0, p0, Lcom/huawei/multimedia/audiokit/interfaces/HwAudioKit;->g:Landroid/os/IBinder$DeathRecipient;

    .line 8
    invoke-static {}, Lcom/huawei/multimedia/audiokit/interfaces/b;->d()Lcom/huawei/multimedia/audiokit/interfaces/b;

    move-result-object v0

    iput-object v0, p0, Lcom/huawei/multimedia/audiokit/interfaces/HwAudioKit;->d:Lcom/huawei/multimedia/audiokit/interfaces/b;

    .line 9
    invoke-virtual {v0, p2}, Lcom/huawei/multimedia/audiokit/interfaces/b;->g(Lcom/huawei/multimedia/audiokit/interfaces/c;)V

    .line 10
    iput-object p1, p0, Lcom/huawei/multimedia/audiokit/interfaces/HwAudioKit;->a:Landroid/content/Context;

    return-void
.end method

.method static synthetic a(Lcom/huawei/multimedia/audiokit/interfaces/HwAudioKit;)Lg/d/a/a/a;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/huawei/multimedia/audiokit/interfaces/HwAudioKit;->b:Lg/d/a/a/a;

    return-object p0
.end method

.method static synthetic b(Lcom/huawei/multimedia/audiokit/interfaces/HwAudioKit;Lg/d/a/a/a;)Lg/d/a/a/a;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/huawei/multimedia/audiokit/interfaces/HwAudioKit;->b:Lg/d/a/a/a;

    return-object p1
.end method

.method static synthetic c(Lcom/huawei/multimedia/audiokit/interfaces/HwAudioKit;Z)Z
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/huawei/multimedia/audiokit/interfaces/HwAudioKit;->c:Z

    return p1
.end method

.method static synthetic d(Lcom/huawei/multimedia/audiokit/interfaces/HwAudioKit;)Lcom/huawei/multimedia/audiokit/interfaces/b;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/huawei/multimedia/audiokit/interfaces/HwAudioKit;->d:Lcom/huawei/multimedia/audiokit/interfaces/b;

    return-object p0
.end method

.method static synthetic e(Lcom/huawei/multimedia/audiokit/interfaces/HwAudioKit;)Landroid/content/Context;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/huawei/multimedia/audiokit/interfaces/HwAudioKit;->a:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic f(Lcom/huawei/multimedia/audiokit/interfaces/HwAudioKit;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/huawei/multimedia/audiokit/interfaces/HwAudioKit;->o(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic g(Lcom/huawei/multimedia/audiokit/interfaces/HwAudioKit;Landroid/os/IBinder;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/huawei/multimedia/audiokit/interfaces/HwAudioKit;->p(Landroid/os/IBinder;)V

    return-void
.end method

.method static synthetic h(Lcom/huawei/multimedia/audiokit/interfaces/HwAudioKit;)Landroid/os/IBinder$DeathRecipient;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/huawei/multimedia/audiokit/interfaces/HwAudioKit;->g:Landroid/os/IBinder$DeathRecipient;

    return-object p0
.end method

.method static synthetic i(Lcom/huawei/multimedia/audiokit/interfaces/HwAudioKit;)Landroid/os/IBinder;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/huawei/multimedia/audiokit/interfaces/HwAudioKit;->e:Landroid/os/IBinder;

    return-object p0
.end method

.method static synthetic j(Lcom/huawei/multimedia/audiokit/interfaces/HwAudioKit;Landroid/os/IBinder;)Landroid/os/IBinder;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/huawei/multimedia/audiokit/interfaces/HwAudioKit;->e:Landroid/os/IBinder;

    return-object p1
.end method

.method private k(Landroid/content/Context;)V
    .locals 3

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Boolean;

    .line 1
    iget-boolean v1, p0, Lcom/huawei/multimedia/audiokit/interfaces/HwAudioKit;->c:Z

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const-string v1, "HwAudioKit.HwAudioKit"

    const-string v2, "bindService, mIsServiceConnected = {}"

    invoke-static {v1, v2, v0}, Lg/d/a/b/a/a;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 2
    iget-object v0, p0, Lcom/huawei/multimedia/audiokit/interfaces/HwAudioKit;->d:Lcom/huawei/multimedia/audiokit/interfaces/b;

    if-eqz v0, :cond_0

    iget-boolean v1, p0, Lcom/huawei/multimedia/audiokit/interfaces/HwAudioKit;->c:Z

    if-nez v1, :cond_0

    .line 3
    iget-object v1, p0, Lcom/huawei/multimedia/audiokit/interfaces/HwAudioKit;->f:Landroid/content/ServiceConnection;

    const-string v2, "com.huawei.multimedia.audioengine.HwAudioEngineService"

    invoke-virtual {v0, p1, v1, v2}, Lcom/huawei/multimedia/audiokit/interfaces/b;->a(Landroid/content/Context;Landroid/content/ServiceConnection;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method private o(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    const-string v0, "HwAudioKit.HwAudioKit"

    const-string v1, "serviceInit"

    .line 1
    invoke-static {v0, v1}, Lg/d/a/b/a/a;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    :try_start_0
    iget-object v1, p0, Lcom/huawei/multimedia/audiokit/interfaces/HwAudioKit;->b:Lg/d/a/a/a;

    if-eqz v1, :cond_0

    iget-boolean v2, p0, Lcom/huawei/multimedia/audiokit/interfaces/HwAudioKit;->c:Z

    if-eqz v2, :cond_0

    .line 3
    invoke-interface {v1, p1, p2}, Lg/d/a/a/a;->b(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    const/4 p2, 0x1

    new-array p2, p2, [Ljava/lang/String;

    const/4 v1, 0x0

    .line 4
    invoke-virtual {p1}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object p1

    aput-object p1, p2, v1

    const-string p1, "isFeatureSupported,RemoteException ex : {}"

    invoke-static {v0, p1, p2}, Lg/d/a/b/a/a;->b(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_0
    :goto_0
    return-void
.end method

.method private p(Landroid/os/IBinder;)V
    .locals 2

    .line 1
    iput-object p1, p0, Lcom/huawei/multimedia/audiokit/interfaces/HwAudioKit;->e:Landroid/os/IBinder;

    if-eqz p1, :cond_0

    .line 2
    :try_start_0
    iget-object v0, p0, Lcom/huawei/multimedia/audiokit/interfaces/HwAudioKit;->g:Landroid/os/IBinder$DeathRecipient;

    const/4 v1, 0x0

    invoke-interface {p1, v0, v1}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 3
    :catch_0
    iget-object p1, p0, Lcom/huawei/multimedia/audiokit/interfaces/HwAudioKit;->d:Lcom/huawei/multimedia/audiokit/interfaces/b;

    const/4 v0, 0x5

    invoke-virtual {p1, v0}, Lcom/huawei/multimedia/audiokit/interfaces/b;->f(I)V

    const-string p1, "HwAudioKit.HwAudioKit"

    const-string v0, "serviceLinkToDeath, RemoteException"

    .line 4
    invoke-static {p1, v0}, Lg/d/a/b/a/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    :goto_0
    return-void
.end method


# virtual methods
.method public l(Lcom/huawei/multimedia/audiokit/interfaces/HwAudioKit$FeatureType;)Lcom/huawei/multimedia/audiokit/interfaces/a;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lcom/huawei/multimedia/audiokit/interfaces/a;",
            ">(",
            "Lcom/huawei/multimedia/audiokit/interfaces/HwAudioKit$FeatureType;",
            ")TT;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/huawei/multimedia/audiokit/interfaces/HwAudioKit;->d:Lcom/huawei/multimedia/audiokit/interfaces/b;

    invoke-virtual {p1}, Lcom/huawei/multimedia/audiokit/interfaces/HwAudioKit$FeatureType;->getFeatureType()I

    move-result p1

    iget-object v1, p0, Lcom/huawei/multimedia/audiokit/interfaces/HwAudioKit;->a:Landroid/content/Context;

    invoke-virtual {v0, p1, v1}, Lcom/huawei/multimedia/audiokit/interfaces/b;->b(ILandroid/content/Context;)Lcom/huawei/multimedia/audiokit/interfaces/a;

    move-result-object p1

    return-object p1
.end method

.method public m()V
    .locals 4

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Boolean;

    .line 1
    iget-boolean v1, p0, Lcom/huawei/multimedia/audiokit/interfaces/HwAudioKit;->c:Z

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const-string v1, "HwAudioKit.HwAudioKit"

    const-string v3, "destroy, mIsServiceConnected = {}"

    invoke-static {v1, v3, v0}, Lg/d/a/b/a/a;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 2
    iget-boolean v0, p0, Lcom/huawei/multimedia/audiokit/interfaces/HwAudioKit;->c:Z

    if-eqz v0, :cond_0

    .line 3
    iput-boolean v2, p0, Lcom/huawei/multimedia/audiokit/interfaces/HwAudioKit;->c:Z

    .line 4
    iget-object v0, p0, Lcom/huawei/multimedia/audiokit/interfaces/HwAudioKit;->d:Lcom/huawei/multimedia/audiokit/interfaces/b;

    iget-object v1, p0, Lcom/huawei/multimedia/audiokit/interfaces/HwAudioKit;->a:Landroid/content/Context;

    iget-object v2, p0, Lcom/huawei/multimedia/audiokit/interfaces/HwAudioKit;->f:Landroid/content/ServiceConnection;

    invoke-virtual {v0, v1, v2}, Lcom/huawei/multimedia/audiokit/interfaces/b;->h(Landroid/content/Context;Landroid/content/ServiceConnection;)V

    :cond_0
    return-void
.end method

.method public n()V
    .locals 3

    const-string v0, "HwAudioKit.HwAudioKit"

    const-string v1, "initialize"

    .line 1
    invoke-static {v0, v1}, Lg/d/a/b/a/a;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    iget-object v1, p0, Lcom/huawei/multimedia/audiokit/interfaces/HwAudioKit;->a:Landroid/content/Context;

    if-nez v1, :cond_0

    const-string v1, "mContext is null"

    .line 3
    invoke-static {v0, v1}, Lg/d/a/b/a/a;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 4
    iget-object v0, p0, Lcom/huawei/multimedia/audiokit/interfaces/HwAudioKit;->d:Lcom/huawei/multimedia/audiokit/interfaces/b;

    const/4 v1, 0x7

    invoke-virtual {v0, v1}, Lcom/huawei/multimedia/audiokit/interfaces/b;->f(I)V

    return-void

    .line 5
    :cond_0
    iget-object v2, p0, Lcom/huawei/multimedia/audiokit/interfaces/HwAudioKit;->d:Lcom/huawei/multimedia/audiokit/interfaces/b;

    invoke-virtual {v2, v1}, Lcom/huawei/multimedia/audiokit/interfaces/b;->e(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_1

    const-string v1, "not install AudioKitEngine"

    .line 6
    invoke-static {v0, v1}, Lg/d/a/b/a/a;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 7
    iget-object v0, p0, Lcom/huawei/multimedia/audiokit/interfaces/HwAudioKit;->d:Lcom/huawei/multimedia/audiokit/interfaces/b;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/huawei/multimedia/audiokit/interfaces/b;->f(I)V

    return-void

    .line 8
    :cond_1
    iget-object v0, p0, Lcom/huawei/multimedia/audiokit/interfaces/HwAudioKit;->a:Landroid/content/Context;

    invoke-direct {p0, v0}, Lcom/huawei/multimedia/audiokit/interfaces/HwAudioKit;->k(Landroid/content/Context;)V

    return-void
.end method
