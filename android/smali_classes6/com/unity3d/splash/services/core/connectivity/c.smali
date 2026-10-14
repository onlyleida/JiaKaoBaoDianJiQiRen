.class public Lcom/unity3d/splash/services/core/connectivity/c;
.super Landroid/net/ConnectivityManager$NetworkCallback;
.source "SourceFile"


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0x15
.end annotation


# static fields
.field private static a:Lcom/unity3d/splash/services/core/connectivity/c;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroid/net/ConnectivityManager$NetworkCallback;-><init>()V

    return-void
.end method

.method public static a()V
    .locals 3

    sget-object v0, Lcom/unity3d/splash/services/core/connectivity/c;->a:Lcom/unity3d/splash/services/core/connectivity/c;

    if-nez v0, :cond_0

    new-instance v0, Lcom/unity3d/splash/services/core/connectivity/c;

    invoke-direct {v0}, Lcom/unity3d/splash/services/core/connectivity/c;-><init>()V

    sput-object v0, Lcom/unity3d/splash/services/core/connectivity/c;->a:Lcom/unity3d/splash/services/core/connectivity/c;

    invoke-static {}, Lcom/unity3d/splash/services/c/b/a;->b()Landroid/content/Context;

    move-result-object v0

    const-string v1, "connectivity"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    new-instance v1, Landroid/net/NetworkRequest$Builder;

    invoke-direct {v1}, Landroid/net/NetworkRequest$Builder;-><init>()V

    invoke-virtual {v1}, Landroid/net/NetworkRequest$Builder;->build()Landroid/net/NetworkRequest;

    move-result-object v1

    sget-object v2, Lcom/unity3d/splash/services/core/connectivity/c;->a:Lcom/unity3d/splash/services/core/connectivity/c;

    invoke-virtual {v0, v1, v2}, Landroid/net/ConnectivityManager;->registerNetworkCallback(Landroid/net/NetworkRequest;Landroid/net/ConnectivityManager$NetworkCallback;)V

    :cond_0
    return-void
.end method

.method public static b()V
    .locals 2

    sget-object v0, Lcom/unity3d/splash/services/core/connectivity/c;->a:Lcom/unity3d/splash/services/core/connectivity/c;

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/unity3d/splash/services/c/b/a;->b()Landroid/content/Context;

    move-result-object v0

    const-string v1, "connectivity"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    sget-object v1, Lcom/unity3d/splash/services/core/connectivity/c;->a:Lcom/unity3d/splash/services/core/connectivity/c;

    invoke-virtual {v0, v1}, Landroid/net/ConnectivityManager;->unregisterNetworkCallback(Landroid/net/ConnectivityManager$NetworkCallback;)V

    const/4 v0, 0x0

    sput-object v0, Lcom/unity3d/splash/services/core/connectivity/c;->a:Lcom/unity3d/splash/services/core/connectivity/c;

    :cond_0
    return-void
.end method


# virtual methods
.method public onAvailable(Landroid/net/Network;)V
    .locals 0

    invoke-static {}, Lcom/unity3d/splash/services/core/connectivity/b;->b()V

    return-void
.end method

.method public onCapabilitiesChanged(Landroid/net/Network;Landroid/net/NetworkCapabilities;)V
    .locals 0

    invoke-static {}, Lcom/unity3d/splash/services/core/connectivity/b;->c()V

    return-void
.end method

.method public onLinkPropertiesChanged(Landroid/net/Network;Landroid/net/LinkProperties;)V
    .locals 0

    invoke-static {}, Lcom/unity3d/splash/services/core/connectivity/b;->c()V

    return-void
.end method

.method public onLost(Landroid/net/Network;)V
    .locals 0

    invoke-static {}, Lcom/unity3d/splash/services/core/connectivity/b;->d()V

    return-void
.end method
