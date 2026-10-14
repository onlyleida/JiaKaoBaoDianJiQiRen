.class public Lcom/unity3d/splash/services/core/configuration/d;
.super Ljava/lang/Thread;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/unity3d/splash/services/core/configuration/d$l;,
        Lcom/unity3d/splash/services/core/configuration/d$j;,
        Lcom/unity3d/splash/services/core/configuration/d$f;,
        Lcom/unity3d/splash/services/core/configuration/d$c;,
        Lcom/unity3d/splash/services/core/configuration/d$e;,
        Lcom/unity3d/splash/services/core/configuration/d$i;,
        Lcom/unity3d/splash/services/core/configuration/d$h;,
        Lcom/unity3d/splash/services/core/configuration/d$d;,
        Lcom/unity3d/splash/services/core/configuration/d$g;,
        Lcom/unity3d/splash/services/core/configuration/d$k;,
        Lcom/unity3d/splash/services/core/configuration/d$b;
    }
.end annotation


# static fields
.field private static c:Lcom/unity3d/splash/services/core/configuration/d;


# instance fields
.field private a:Lcom/unity3d/splash/services/core/configuration/d$b;

.field private b:Z


# direct methods
.method private constructor <init>(Lcom/unity3d/splash/services/core/configuration/d$b;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/unity3d/splash/services/core/configuration/d;->b:Z

    iput-object p1, p0, Lcom/unity3d/splash/services/core/configuration/d;->a:Lcom/unity3d/splash/services/core/configuration/d$b;

    return-void
.end method

.method public static declared-synchronized a(Lcom/unity3d/splash/services/core/configuration/a;)V
    .locals 3

    const-class v0, Lcom/unity3d/splash/services/core/configuration/d;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/unity3d/splash/services/core/configuration/d;->c:Lcom/unity3d/splash/services/core/configuration/d;

    if-nez v1, :cond_0

    new-instance v1, Lcom/unity3d/splash/services/core/configuration/d;

    new-instance v2, Lcom/unity3d/splash/services/core/configuration/d$k;

    invoke-direct {v2, p0}, Lcom/unity3d/splash/services/core/configuration/d$k;-><init>(Lcom/unity3d/splash/services/core/configuration/a;)V

    invoke-direct {v1, v2}, Lcom/unity3d/splash/services/core/configuration/d;-><init>(Lcom/unity3d/splash/services/core/configuration/d$b;)V

    sput-object v1, Lcom/unity3d/splash/services/core/configuration/d;->c:Lcom/unity3d/splash/services/core/configuration/d;

    const-string p0, "UnityAdsInitializeThread"

    invoke-virtual {v1, p0}, Ljava/lang/Thread;->setName(Ljava/lang/String;)V

    sget-object p0, Lcom/unity3d/splash/services/core/configuration/d;->c:Lcom/unity3d/splash/services/core/configuration/d;

    invoke-virtual {p0}, Ljava/lang/Thread;->start()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method


# virtual methods
.method public run()V
    .locals 2

    :goto_0
    iget-object v0, p0, Lcom/unity3d/splash/services/core/configuration/d;->a:Lcom/unity3d/splash/services/core/configuration/d$b;

    if-eqz v0, :cond_0

    instance-of v1, v0, Lcom/unity3d/splash/services/core/configuration/d$c;

    if-nez v1, :cond_0

    iget-boolean v1, p0, Lcom/unity3d/splash/services/core/configuration/d;->b:Z

    if-nez v1, :cond_0

    invoke-virtual {v0}, Lcom/unity3d/splash/services/core/configuration/d$b;->b()Lcom/unity3d/splash/services/core/configuration/d$b;

    move-result-object v0

    iput-object v0, p0, Lcom/unity3d/splash/services/core/configuration/d;->a:Lcom/unity3d/splash/services/core/configuration/d$b;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    sput-object v0, Lcom/unity3d/splash/services/core/configuration/d;->c:Lcom/unity3d/splash/services/core/configuration/d;

    return-void
.end method
