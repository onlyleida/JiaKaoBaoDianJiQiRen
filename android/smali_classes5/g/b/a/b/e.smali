.class public final Lg/b/a/b/e;
.super Lcom/coloros/ocs/base/common/c/c;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/coloros/ocs/base/common/c/c<",
        "Ljava/lang/Object;",
        "Lg/b/a/b/e;",
        ">;"
    }
.end annotation


# static fields
.field private static final j:Lcom/coloros/ocs/base/common/c/a$f;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/coloros/ocs/base/common/c/a$f<",
            "Lg/b/a/b/b;",
            ">;"
        }
    .end annotation
.end field

.field private static final k:Lcom/coloros/ocs/base/common/c/a$a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/coloros/ocs/base/common/c/a$a<",
            "Lg/b/a/b/b;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private static final l:Lcom/coloros/ocs/base/common/c/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/coloros/ocs/base/common/c/a<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private static m:Lg/b/a/b/e;


# instance fields
.field private f:Lg/b/a/b/a;

.field private final g:Landroid/os/IBinder;

.field private h:Landroid/content/Context;

.field private i:Landroid/content/ServiceConnection;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 1
    new-instance v0, Lcom/coloros/ocs/base/common/c/a$f;

    invoke-direct {v0}, Lcom/coloros/ocs/base/common/c/a$f;-><init>()V

    sput-object v0, Lg/b/a/b/e;->j:Lcom/coloros/ocs/base/common/c/a$f;

    .line 2
    new-instance v1, Lg/b/a/b/c;

    invoke-direct {v1}, Lg/b/a/b/c;-><init>()V

    sput-object v1, Lg/b/a/b/e;->k:Lcom/coloros/ocs/base/common/c/a$a;

    .line 3
    new-instance v2, Lcom/coloros/ocs/base/common/c/a;

    const-string v3, "MediaClient.API"

    invoke-direct {v2, v3, v1, v0}, Lcom/coloros/ocs/base/common/c/a;-><init>(Ljava/lang/String;Lcom/coloros/ocs/base/common/c/a$a;Lcom/coloros/ocs/base/common/c/a$f;)V

    sput-object v2, Lg/b/a/b/e;->l:Lcom/coloros/ocs/base/common/c/a;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 5

    .line 1
    sget-object v0, Lg/b/a/b/e;->l:Lcom/coloros/ocs/base/common/c/a;

    new-instance v1, Lg/b/a/a/d/a;

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    const/4 v4, 0x1

    invoke-direct {v1, v2, v4, v3}, Lg/b/a/a/d/a;-><init>(Ljava/lang/String;ILjava/util/List;)V

    const/4 v2, 0x0

    invoke-direct {p0, p1, v0, v2, v1}, Lcom/coloros/ocs/base/common/c/c;-><init>(Landroid/content/Context;Lcom/coloros/ocs/base/common/c/a;Lcom/coloros/ocs/base/common/c/a$c;Lg/b/a/a/d/a;)V

    .line 2
    new-instance v0, Landroid/os/Binder;

    invoke-direct {v0}, Landroid/os/Binder;-><init>()V

    iput-object v0, p0, Lg/b/a/b/e;->g:Landroid/os/IBinder;

    .line 3
    iput-object p1, p0, Lg/b/a/b/e;->h:Landroid/content/Context;

    .line 4
    invoke-virtual {p0}, Lg/b/a/b/e;->o()V

    return-void
.end method

.method static synthetic g(Lg/b/a/b/e;)Lg/b/a/b/a;
    .locals 0

    .line 1
    iget-object p0, p0, Lg/b/a/b/e;->f:Lg/b/a/b/a;

    return-object p0
.end method

.method static synthetic h(Lg/b/a/b/e;Lg/b/a/b/a;)Lg/b/a/b/a;
    .locals 0

    .line 1
    iput-object p1, p0, Lg/b/a/b/e;->f:Lg/b/a/b/a;

    return-object p1
.end method

.method static synthetic i(Lg/b/a/b/e;)Landroid/os/IBinder;
    .locals 0

    .line 1
    iget-object p0, p0, Lg/b/a/b/e;->g:Landroid/os/IBinder;

    return-object p0
.end method

.method static synthetic j(Lg/b/a/b/e;)Landroid/content/Context;
    .locals 0

    .line 1
    iget-object p0, p0, Lg/b/a/b/e;->h:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic k(Lg/b/a/b/e;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lg/b/a/b/e;->l()V

    return-void
.end method

.method private l()V
    .locals 4

    .line 1
    new-instance v0, Lg/b/a/b/e$a;

    invoke-direct {v0, p0}, Lg/b/a/b/e$a;-><init>(Lg/b/a/b/e;)V

    iput-object v0, p0, Lg/b/a/b/e;->i:Landroid/content/ServiceConnection;

    .line 2
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.coloros.opencapabilityservice"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 3
    new-instance v1, Landroid/content/ComponentName;

    const-string v2, "com.coloros.ocs.opencapabilityservice"

    const-string v3, "com.coloros.ocs.opencapabilityservice.capability.karaoke.KaraokeService"

    invoke-direct {v1, v2, v3}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 4
    iget-object v1, p0, Lg/b/a/b/e;->h:Landroid/content/Context;

    iget-object v2, p0, Lg/b/a/b/e;->i:Landroid/content/ServiceConnection;

    const/4 v3, 0x1

    invoke-virtual {v1, v0, v2, v3}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    return-void
.end method

.method private static m(Landroid/content/Context;)V
    .locals 1

    .line 1
    new-instance v0, Lg/b/a/b/e;

    invoke-direct {v0, p0}, Lg/b/a/b/e;-><init>(Landroid/content/Context;)V

    sput-object v0, Lg/b/a/b/e;->m:Lg/b/a/b/e;

    return-void
.end method

.method private n()V
    .locals 2

    .line 1
    iget-object v0, p0, Lg/b/a/b/e;->h:Landroid/content/Context;

    iget-object v1, p0, Lg/b/a/b/e;->i:Landroid/content/ServiceConnection;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    return-void
.end method

.method protected static declared-synchronized p(Landroid/content/Context;)Lg/b/a/b/e;
    .locals 2

    const-class v0, Lg/b/a/b/e;

    monitor-enter v0

    .line 1
    :try_start_0
    sget-object v1, Lg/b/a/b/e;->m:Lg/b/a/b/e;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_0

    .line 2
    monitor-exit v0

    return-object v1

    .line 3
    :cond_0
    :try_start_1
    invoke-static {p0}, Lg/b/a/b/e;->m(Landroid/content/Context;)V

    .line 4
    sget-object p0, Lg/b/a/b/e;->m:Lg/b/a/b/e;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit v0

    return-object p0

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method public static q()V
    .locals 1

    .line 1
    sget-object v0, Lg/b/a/b/e;->m:Lg/b/a/b/e;

    invoke-direct {v0}, Lg/b/a/b/e;->n()V

    return-void
.end method


# virtual methods
.method public f()I
    .locals 3

    .line 1
    new-instance v0, Lg/b/a/b/e$d;

    invoke-direct {v0, p0}, Lg/b/a/b/e$d;-><init>(Lg/b/a/b/e;)V

    .line 2
    new-instance v1, Lg/b/a/b/e$e;

    invoke-direct {v1, p0}, Lg/b/a/b/e$e;-><init>(Lg/b/a/b/e;)V

    .line 3
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-virtual {p0, v2, v0, v1}, Lcom/coloros/ocs/base/common/c/c;->c(Landroid/os/Looper;Lcom/coloros/ocs/base/common/c/g$b;Lcom/coloros/ocs/base/common/c/g$a;)Lg/b/a/a/e/a;

    const/4 v0, 0x0

    return v0
.end method

.method protected o()V
    .locals 0

    return-void
.end method

.method public r()I
    .locals 3

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "requestAudioLoopback "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lg/b/a/b/e;->g:Landroid/os/IBinder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "MediaUnitClientImpl"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2
    new-instance v0, Lg/b/a/b/e$b;

    invoke-direct {v0, p0}, Lg/b/a/b/e$b;-><init>(Lg/b/a/b/e;)V

    .line 3
    new-instance v1, Lg/b/a/b/e$c;

    invoke-direct {v1, p0}, Lg/b/a/b/e$c;-><init>(Lg/b/a/b/e;)V

    .line 4
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-virtual {p0, v2, v0, v1}, Lcom/coloros/ocs/base/common/c/c;->c(Landroid/os/Looper;Lcom/coloros/ocs/base/common/c/g$b;Lcom/coloros/ocs/base/common/c/g$a;)Lg/b/a/a/e/a;

    const/4 v0, 0x0

    return v0
.end method
