.class public Lcom/serenegiant/net/ConnectivityHelper;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/serenegiant/net/ConnectivityHelper$NetworkChangedReceiver;,
        Lcom/serenegiant/net/ConnectivityHelper$MyNetworkCallback;,
        Lcom/serenegiant/net/ConnectivityHelper$MyOnNetworkActiveListener;,
        Lcom/serenegiant/net/ConnectivityHelper$ConnectivityCallback;
    }
.end annotation


# static fields
.field private static final ACTION_GLOBAL_CONNECTIVITY_CHANGE:Ljava/lang/String; = "android.net.conn.CONNECTIVITY_CHANGE"

.field private static final DEBUG:Z = false

.field public static final NETWORK_TYPE_BLUETOOTH:I = 0x80

.field public static final NETWORK_TYPE_ETHERNET:I = 0x200

.field public static final NETWORK_TYPE_MOBILE:I = 0x1

.field public static final NETWORK_TYPE_NON:I = 0x0

.field public static final NETWORK_TYPE_WIFI:I = 0x2

.field private static final TAG:Ljava/lang/String; = "ConnectivityHelper"


# instance fields
.field private mActiveNetworkType:I

.field private mAsyncHandler:Landroid/os/Handler;

.field private final mCallback:Lcom/serenegiant/net/ConnectivityHelper$ConnectivityCallback;

.field private mNetworkCallback:Landroid/net/ConnectivityManager$NetworkCallback;

.field private mNetworkChangedReceiver:Landroid/content/BroadcastReceiver;

.field private mOnNetworkActiveListener:Landroid/net/ConnectivityManager$OnNetworkActiveListener;

.field private final mSync:Ljava/lang/Object;

.field private final mWeakContext:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Landroid/content/Context;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/serenegiant/net/ConnectivityHelper$ConnectivityCallback;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/serenegiant/net/ConnectivityHelper;->mSync:Ljava/lang/Object;

    const/4 v0, 0x0

    .line 3
    iput v0, p0, Lcom/serenegiant/net/ConnectivityHelper;->mActiveNetworkType:I

    .line 4
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/serenegiant/net/ConnectivityHelper;->mWeakContext:Ljava/lang/ref/WeakReference;

    .line 5
    iput-object p2, p0, Lcom/serenegiant/net/ConnectivityHelper;->mCallback:Lcom/serenegiant/net/ConnectivityHelper$ConnectivityCallback;

    .line 6
    sget-object p1, Lcom/serenegiant/net/ConnectivityHelper;->TAG:Ljava/lang/String;

    invoke-static {p1}, Lcom/serenegiant/utils/HandlerThreadHandler;->createHandler(Ljava/lang/String;)Lcom/serenegiant/utils/HandlerThreadHandler;

    move-result-object p1

    iput-object p1, p0, Lcom/serenegiant/net/ConnectivityHelper;->mAsyncHandler:Landroid/os/Handler;

    .line 7
    invoke-direct {p0}, Lcom/serenegiant/net/ConnectivityHelper;->init()V

    return-void
.end method

.method private synthetic a(Ljava/lang/Throwable;)V
    .locals 1

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/serenegiant/net/ConnectivityHelper;->mCallback:Lcom/serenegiant/net/ConnectivityHelper$ConnectivityCallback;

    invoke-interface {v0, p1}, Lcom/serenegiant/net/ConnectivityHelper$ConnectivityCallback;->onError(Ljava/lang/Throwable;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 2
    sget-object v0, Lcom/serenegiant/net/ConnectivityHelper;->TAG:Ljava/lang/String;

    invoke-static {v0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    return-void
.end method

.method static synthetic access$000(Lcom/serenegiant/net/ConnectivityHelper;Landroid/net/Network;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/serenegiant/net/ConnectivityHelper;->updateActiveNetwork(Landroid/net/Network;)V

    return-void
.end method

.method static synthetic access$100(Lcom/serenegiant/net/ConnectivityHelper;I)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/serenegiant/net/ConnectivityHelper;->updateActiveNetwork(I)V

    return-void
.end method

.method static synthetic access$200(Lcom/serenegiant/net/ConnectivityHelper;Landroid/net/NetworkInfo;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/serenegiant/net/ConnectivityHelper;->updateActiveNetwork(Landroid/net/NetworkInfo;)V

    return-void
.end method

.method private synthetic c(I)V
    .locals 1

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/serenegiant/net/ConnectivityHelper;->mCallback:Lcom/serenegiant/net/ConnectivityHelper$ConnectivityCallback;

    invoke-interface {v0, p1}, Lcom/serenegiant/net/ConnectivityHelper$ConnectivityCallback;->onNetworkChanged(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 2
    invoke-direct {p0, p1}, Lcom/serenegiant/net/ConnectivityHelper;->callOnError(Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method

.method private callOnError(Ljava/lang/Throwable;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/serenegiant/net/ConnectivityHelper;->mSync:Ljava/lang/Object;

    monitor-enter v0

    .line 2
    :try_start_0
    iget-object v1, p0, Lcom/serenegiant/net/ConnectivityHelper;->mAsyncHandler:Landroid/os/Handler;

    if-eqz v1, :cond_0

    .line 3
    new-instance v2, Lcom/serenegiant/net/a;

    invoke-direct {v2, p0, p1}, Lcom/serenegiant/net/a;-><init>(Lcom/serenegiant/net/ConnectivityHelper;Ljava/lang/Throwable;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    .line 4
    :cond_0
    sget-object p1, Lcom/serenegiant/net/ConnectivityHelper;->TAG:Ljava/lang/String;

    const-string v1, "already released?"

    invoke-static {p1, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 5
    :goto_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method private callOnNetworkChanged(I)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/serenegiant/net/ConnectivityHelper;->mSync:Ljava/lang/Object;

    monitor-enter v0

    .line 2
    :try_start_0
    iget-object v1, p0, Lcom/serenegiant/net/ConnectivityHelper;->mAsyncHandler:Landroid/os/Handler;

    if-eqz v1, :cond_0

    .line 3
    new-instance v2, Lcom/serenegiant/net/b;

    invoke-direct {v2, p0, p1}, Lcom/serenegiant/net/b;-><init>(Lcom/serenegiant/net/ConnectivityHelper;I)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    .line 4
    :cond_0
    sget-object p1, Lcom/serenegiant/net/ConnectivityHelper;->TAG:Ljava/lang/String;

    const-string v1, "already released?"

    invoke-static {p1, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 5
    :goto_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method private getContext()Landroid/content/Context;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/serenegiant/net/ConnectivityHelper;->mWeakContext:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    if-eqz v0, :cond_0

    return-object v0

    .line 2
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "context is already released"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static getNetworkTypeString(I)Ljava/lang/String;
    .locals 3

    if-eqz p0, :cond_4

    const/4 v0, 0x1

    if-eq p0, v0, :cond_3

    const/4 v1, 0x2

    if-eq p0, v1, :cond_2

    const/16 v1, 0x80

    if-eq p0, v1, :cond_1

    const/16 v1, 0x200

    if-eq p0, v1, :cond_0

    .line 1
    sget-object v1, Ljava/util/Locale;->US:Ljava/util/Locale;

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    aput-object p0, v0, v2

    const-string p0, "UNKNOWN(%d)"

    invoke-static {v1, p0, v0}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_0
    const-string p0, "ETHERNET"

    return-object p0

    :cond_1
    const-string p0, "BLUETOOTH"

    return-object p0

    :cond_2
    const-string p0, "WIFI"

    return-object p0

    :cond_3
    const-string p0, "MOBILE"

    return-object p0

    :cond_4
    const-string p0, "NON"

    return-object p0
.end method

.method private init()V
    .locals 3
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Lcom/serenegiant/net/ConnectivityHelper;->requireConnectivityManager()Landroid/net/ConnectivityManager;

    move-result-object v0

    .line 2
    invoke-static {}, Lcom/serenegiant/utils/BuildCheck;->isLollipop()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 3
    new-instance v1, Lcom/serenegiant/net/ConnectivityHelper$MyOnNetworkActiveListener;

    invoke-direct {v1, p0}, Lcom/serenegiant/net/ConnectivityHelper$MyOnNetworkActiveListener;-><init>(Lcom/serenegiant/net/ConnectivityHelper;)V

    iput-object v1, p0, Lcom/serenegiant/net/ConnectivityHelper;->mOnNetworkActiveListener:Landroid/net/ConnectivityManager$OnNetworkActiveListener;

    .line 4
    invoke-virtual {v0, v1}, Landroid/net/ConnectivityManager;->addDefaultNetworkActiveListener(Landroid/net/ConnectivityManager$OnNetworkActiveListener;)V

    .line 5
    new-instance v1, Lcom/serenegiant/net/ConnectivityHelper$MyNetworkCallback;

    invoke-direct {v1, p0}, Lcom/serenegiant/net/ConnectivityHelper$MyNetworkCallback;-><init>(Lcom/serenegiant/net/ConnectivityHelper;)V

    iput-object v1, p0, Lcom/serenegiant/net/ConnectivityHelper;->mNetworkCallback:Landroid/net/ConnectivityManager$NetworkCallback;

    .line 6
    invoke-static {}, Lcom/serenegiant/utils/BuildCheck;->isNougat()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 7
    iget-object v1, p0, Lcom/serenegiant/net/ConnectivityHelper;->mNetworkCallback:Landroid/net/ConnectivityManager$NetworkCallback;

    invoke-virtual {v0, v1}, Landroid/net/ConnectivityManager;->registerDefaultNetworkCallback(Landroid/net/ConnectivityManager$NetworkCallback;)V

    goto :goto_0

    .line 8
    :cond_0
    invoke-static {}, Lcom/serenegiant/utils/BuildCheck;->isOreo()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 9
    iget-object v1, p0, Lcom/serenegiant/net/ConnectivityHelper;->mNetworkCallback:Landroid/net/ConnectivityManager$NetworkCallback;

    iget-object v2, p0, Lcom/serenegiant/net/ConnectivityHelper;->mAsyncHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1, v2}, Landroid/net/ConnectivityManager;->registerDefaultNetworkCallback(Landroid/net/ConnectivityManager$NetworkCallback;Landroid/os/Handler;)V

    goto :goto_0

    .line 10
    :cond_1
    new-instance v1, Landroid/net/NetworkRequest$Builder;

    invoke-direct {v1}, Landroid/net/NetworkRequest$Builder;-><init>()V

    .line 11
    invoke-virtual {v1}, Landroid/net/NetworkRequest$Builder;->build()Landroid/net/NetworkRequest;

    move-result-object v1

    iget-object v2, p0, Lcom/serenegiant/net/ConnectivityHelper;->mNetworkCallback:Landroid/net/ConnectivityManager$NetworkCallback;

    .line 12
    invoke-virtual {v0, v1, v2}, Landroid/net/ConnectivityManager;->registerNetworkCallback(Landroid/net/NetworkRequest;Landroid/net/ConnectivityManager$NetworkCallback;)V

    goto :goto_0

    .line 13
    :cond_2
    new-instance v0, Lcom/serenegiant/net/ConnectivityHelper$NetworkChangedReceiver;

    invoke-direct {v0, p0}, Lcom/serenegiant/net/ConnectivityHelper$NetworkChangedReceiver;-><init>(Lcom/serenegiant/net/ConnectivityHelper;)V

    iput-object v0, p0, Lcom/serenegiant/net/ConnectivityHelper;->mNetworkChangedReceiver:Landroid/content/BroadcastReceiver;

    .line 14
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string v1, "android.net.conn.CONNECTIVITY_CHANGE"

    .line 15
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 16
    invoke-direct {p0}, Lcom/serenegiant/net/ConnectivityHelper;->requireContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/serenegiant/net/ConnectivityHelper;->mNetworkChangedReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    :goto_0
    return-void
.end method

.method private static isBluetoothNetworkReachable(Landroid/net/NetworkCapabilities;Landroid/net/NetworkInfo;)Z
    .locals 1
    .annotation build Landroid/annotation/TargetApi;
        value = 0x15
    .end annotation

    const/4 v0, 0x2

    .line 1
    invoke-virtual {p0, v0}, Landroid/net/NetworkCapabilities;->hasTransport(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    invoke-static {p0, p1}, Lcom/serenegiant/net/ConnectivityHelper;->isNetworkReachable(Landroid/net/NetworkCapabilities;Landroid/net/NetworkInfo;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static isMobileNetworkReachable(Landroid/content/Context;)Z
    .locals 7
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    const-string v0, "connectivity"

    .line 1
    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/net/ConnectivityManager;

    .line 2
    invoke-static {}, Lcom/serenegiant/utils/BuildCheck;->isLollipop()Z

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_3

    .line 3
    invoke-static {}, Lcom/serenegiant/utils/BuildCheck;->isMarshmallow()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 4
    invoke-virtual {p0}, Landroid/net/ConnectivityManager;->getActiveNetwork()Landroid/net/Network;

    move-result-object v0

    .line 5
    invoke-virtual {p0, v0}, Landroid/net/ConnectivityManager;->getNetworkCapabilities(Landroid/net/Network;)Landroid/net/NetworkCapabilities;

    move-result-object v3

    .line 6
    invoke-virtual {p0, v0}, Landroid/net/ConnectivityManager;->getNetworkInfo(Landroid/net/Network;)Landroid/net/NetworkInfo;

    move-result-object p0

    if-eqz v3, :cond_0

    if-eqz p0, :cond_0

    .line 7
    invoke-static {v3, p0}, Lcom/serenegiant/net/ConnectivityHelper;->isMobileNetworkReachable(Landroid/net/NetworkCapabilities;Landroid/net/NetworkInfo;)Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1

    .line 8
    :cond_1
    invoke-virtual {p0}, Landroid/net/ConnectivityManager;->getAllNetworks()[Landroid/net/Network;

    move-result-object v0

    .line 9
    array-length v3, v0

    const/4 v4, 0x0

    :goto_1
    if-ge v4, v3, :cond_5

    aget-object v5, v0, v4

    .line 10
    invoke-virtual {p0, v5}, Landroid/net/ConnectivityManager;->getNetworkCapabilities(Landroid/net/Network;)Landroid/net/NetworkCapabilities;

    move-result-object v6

    .line 11
    invoke-virtual {p0, v5}, Landroid/net/ConnectivityManager;->getNetworkInfo(Landroid/net/Network;)Landroid/net/NetworkInfo;

    move-result-object v5

    if-eqz v6, :cond_2

    if-eqz v5, :cond_2

    .line 12
    invoke-static {v6, v5}, Lcom/serenegiant/net/ConnectivityHelper;->isMobileNetworkReachable(Landroid/net/NetworkCapabilities;Landroid/net/NetworkInfo;)Z

    move-result v5

    if-eqz v5, :cond_2

    return v1

    :cond_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 13
    :cond_3
    invoke-virtual {p0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object p0

    if-eqz p0, :cond_5

    .line 14
    invoke-virtual {p0}, Landroid/net/NetworkInfo;->isConnectedOrConnecting()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 15
    invoke-virtual {p0}, Landroid/net/NetworkInfo;->getType()I

    move-result p0

    if-nez p0, :cond_4

    goto :goto_2

    :cond_4
    const/4 v1, 0x0

    :goto_2
    return v1

    :cond_5
    return v2
.end method

.method private static isMobileNetworkReachable(Landroid/net/NetworkCapabilities;Landroid/net/NetworkInfo;)Z
    .locals 3
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    .annotation build Landroid/annotation/TargetApi;
        value = 0x15
    .end annotation

    .line 16
    invoke-static {}, Lcom/serenegiant/utils/BuildCheck;->isOreoMR1()Z

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_2

    .line 17
    invoke-virtual {p0, v2}, Landroid/net/NetworkCapabilities;->hasTransport(I)Z

    move-result v0

    if-nez v0, :cond_1

    const/4 v0, 0x6

    .line 18
    invoke-virtual {p0, v0}, Landroid/net/NetworkCapabilities;->hasTransport(I)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    goto :goto_1

    .line 19
    :cond_2
    invoke-virtual {p0, v2}, Landroid/net/NetworkCapabilities;->hasTransport(I)Z

    move-result v0

    :goto_1
    if-eqz v0, :cond_3

    .line 20
    invoke-static {p0, p1}, Lcom/serenegiant/net/ConnectivityHelper;->isNetworkReachable(Landroid/net/NetworkCapabilities;Landroid/net/NetworkInfo;)Z

    move-result p0

    if-eqz p0, :cond_3

    goto :goto_2

    :cond_3
    const/4 v1, 0x0

    :goto_2
    return v1
.end method

.method public static isNetworkReachable(Landroid/content/Context;)Z
    .locals 7
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    const-string v0, "connectivity"

    .line 1
    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/net/ConnectivityManager;

    .line 2
    invoke-static {}, Lcom/serenegiant/utils/BuildCheck;->isLollipop()Z

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_4

    .line 3
    invoke-static {}, Lcom/serenegiant/utils/BuildCheck;->isMarshmallow()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 4
    invoke-virtual {p0}, Landroid/net/ConnectivityManager;->getActiveNetwork()Landroid/net/Network;

    move-result-object v0

    .line 5
    invoke-virtual {p0, v0}, Landroid/net/ConnectivityManager;->getNetworkCapabilities(Landroid/net/Network;)Landroid/net/NetworkCapabilities;

    move-result-object v3

    .line 6
    invoke-virtual {p0, v0}, Landroid/net/ConnectivityManager;->getNetworkInfo(Landroid/net/Network;)Landroid/net/NetworkInfo;

    move-result-object p0

    if-eqz v3, :cond_0

    if-eqz p0, :cond_0

    .line 7
    invoke-static {v3, p0}, Lcom/serenegiant/net/ConnectivityHelper;->isNetworkReachable(Landroid/net/NetworkCapabilities;Landroid/net/NetworkInfo;)Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1

    .line 8
    :cond_1
    invoke-virtual {p0}, Landroid/net/ConnectivityManager;->getAllNetworks()[Landroid/net/Network;

    move-result-object v0

    .line 9
    array-length v3, v0

    const/4 v4, 0x0

    :goto_1
    if-ge v4, v3, :cond_3

    aget-object v5, v0, v4

    .line 10
    invoke-virtual {p0, v5}, Landroid/net/ConnectivityManager;->getNetworkCapabilities(Landroid/net/Network;)Landroid/net/NetworkCapabilities;

    move-result-object v6

    .line 11
    invoke-virtual {p0, v5}, Landroid/net/ConnectivityManager;->getNetworkInfo(Landroid/net/Network;)Landroid/net/NetworkInfo;

    move-result-object v5

    if-eqz v6, :cond_2

    if-eqz v5, :cond_2

    .line 12
    invoke-static {v6, v5}, Lcom/serenegiant/net/ConnectivityHelper;->isNetworkReachable(Landroid/net/NetworkCapabilities;Landroid/net/NetworkInfo;)Z

    move-result v5

    if-eqz v5, :cond_2

    return v1

    :cond_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_3
    return v2

    .line 13
    :cond_4
    invoke-virtual {p0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object p0

    if-eqz p0, :cond_5

    .line 14
    invoke-virtual {p0}, Landroid/net/NetworkInfo;->isConnectedOrConnecting()Z

    move-result p0

    if-eqz p0, :cond_5

    goto :goto_2

    :cond_5
    const/4 v1, 0x0

    :goto_2
    return v1
.end method

.method private static isNetworkReachable(Landroid/net/NetworkCapabilities;Landroid/net/NetworkInfo;)Z
    .locals 5
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    .annotation build Landroid/annotation/TargetApi;
        value = 0x15
    .end annotation

    .line 15
    invoke-virtual {p1}, Landroid/net/NetworkInfo;->getDetailedState()Landroid/net/NetworkInfo$DetailedState;

    move-result-object p1

    .line 16
    sget-object v0, Landroid/net/NetworkInfo$DetailedState;->CONNECTED:Landroid/net/NetworkInfo$DetailedState;

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eq p1, v0, :cond_1

    sget-object v0, Landroid/net/NetworkInfo$DetailedState;->CONNECTING:Landroid/net/NetworkInfo$DetailedState;

    if-ne p1, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    .line 17
    :goto_1
    invoke-static {}, Lcom/serenegiant/utils/BuildCheck;->isPie()Z

    move-result v0

    const/16 v3, 0x10

    const/16 v4, 0xc

    if-eqz v0, :cond_4

    .line 18
    invoke-virtual {p0, v4}, Landroid/net/NetworkCapabilities;->hasCapability(I)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 19
    invoke-virtual {p0, v3}, Landroid/net/NetworkCapabilities;->hasCapability(I)Z

    move-result v0

    if-eqz v0, :cond_3

    const/16 v0, 0x15

    .line 20
    invoke-virtual {p0, v0}, Landroid/net/NetworkCapabilities;->hasCapability(I)Z

    move-result v0

    if-nez v0, :cond_2

    const/16 v0, 0x13

    .line 21
    invoke-virtual {p0, v0}, Landroid/net/NetworkCapabilities;->hasCapability(I)Z

    move-result p0

    if-eqz p0, :cond_3

    :cond_2
    :goto_2
    const/4 p0, 0x1

    goto :goto_3

    :cond_3
    const/4 p0, 0x0

    goto :goto_3

    .line 22
    :cond_4
    invoke-static {}, Lcom/serenegiant/utils/BuildCheck;->isMarshmallow()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 23
    invoke-virtual {p0, v4}, Landroid/net/NetworkCapabilities;->hasCapability(I)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 24
    invoke-virtual {p0, v3}, Landroid/net/NetworkCapabilities;->hasCapability(I)Z

    move-result p0

    if-eqz p0, :cond_3

    goto :goto_2

    .line 25
    :cond_5
    invoke-virtual {p0, v4}, Landroid/net/NetworkCapabilities;->hasCapability(I)Z

    move-result p0

    :goto_3
    if-eqz p1, :cond_6

    if-eqz p0, :cond_6

    const/4 v1, 0x1

    :cond_6
    return v1
.end method

.method public static isWifiNetworkReachable(Landroid/content/Context;)Z
    .locals 7
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    const-string v0, "connectivity"

    .line 1
    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/net/ConnectivityManager;

    .line 2
    invoke-static {}, Lcom/serenegiant/utils/BuildCheck;->isLollipop()Z

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_3

    .line 3
    invoke-static {}, Lcom/serenegiant/utils/BuildCheck;->isMarshmallow()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 4
    invoke-virtual {p0}, Landroid/net/ConnectivityManager;->getActiveNetwork()Landroid/net/Network;

    move-result-object v0

    .line 5
    invoke-virtual {p0, v0}, Landroid/net/ConnectivityManager;->getNetworkCapabilities(Landroid/net/Network;)Landroid/net/NetworkCapabilities;

    move-result-object v3

    .line 6
    invoke-virtual {p0, v0}, Landroid/net/ConnectivityManager;->getNetworkInfo(Landroid/net/Network;)Landroid/net/NetworkInfo;

    move-result-object p0

    if-eqz v3, :cond_0

    if-eqz p0, :cond_0

    .line 7
    invoke-static {v3, p0}, Lcom/serenegiant/net/ConnectivityHelper;->isWifiNetworkReachable(Landroid/net/NetworkCapabilities;Landroid/net/NetworkInfo;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 v1, 0x1

    :cond_0
    return v1

    .line 8
    :cond_1
    invoke-virtual {p0}, Landroid/net/ConnectivityManager;->getAllNetworks()[Landroid/net/Network;

    move-result-object v0

    .line 9
    array-length v3, v0

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v3, :cond_5

    aget-object v5, v0, v4

    .line 10
    invoke-virtual {p0, v5}, Landroid/net/ConnectivityManager;->getNetworkCapabilities(Landroid/net/Network;)Landroid/net/NetworkCapabilities;

    move-result-object v6

    .line 11
    invoke-virtual {p0, v5}, Landroid/net/ConnectivityManager;->getNetworkInfo(Landroid/net/Network;)Landroid/net/NetworkInfo;

    move-result-object v5

    if-eqz v6, :cond_2

    if-eqz v5, :cond_2

    .line 12
    invoke-static {v6, v5}, Lcom/serenegiant/net/ConnectivityHelper;->isWifiNetworkReachable(Landroid/net/NetworkCapabilities;Landroid/net/NetworkInfo;)Z

    move-result v5

    if-eqz v5, :cond_2

    return v2

    :cond_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 13
    :cond_3
    invoke-virtual {p0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object p0

    if-eqz p0, :cond_5

    .line 14
    invoke-virtual {p0}, Landroid/net/NetworkInfo;->isConnectedOrConnecting()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 15
    invoke-virtual {p0}, Landroid/net/NetworkInfo;->getType()I

    move-result p0

    if-eq p0, v2, :cond_4

    const/4 v0, 0x6

    if-eq p0, v0, :cond_4

    const/4 v0, 0x7

    if-eq p0, v0, :cond_4

    const/16 v0, 0x9

    if-ne p0, v0, :cond_5

    :cond_4
    const/4 v1, 0x1

    :cond_5
    return v1
.end method

.method private static isWifiNetworkReachable(Landroid/net/NetworkCapabilities;Landroid/net/NetworkInfo;)Z
    .locals 4
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    .annotation build Landroid/annotation/TargetApi;
        value = 0x15
    .end annotation

    .line 16
    invoke-static {}, Lcom/serenegiant/utils/BuildCheck;->isOreo()Z

    move-result v0

    const/4 v1, 0x3

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v0, :cond_2

    .line 17
    invoke-virtual {p0, v3}, Landroid/net/NetworkCapabilities;->hasTransport(I)Z

    move-result v0

    if-nez v0, :cond_1

    .line 18
    invoke-virtual {p0, v1}, Landroid/net/NetworkCapabilities;->hasTransport(I)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    goto :goto_1

    .line 19
    :cond_2
    invoke-virtual {p0, v3}, Landroid/net/NetworkCapabilities;->hasTransport(I)Z

    move-result v0

    if-nez v0, :cond_1

    .line 20
    invoke-virtual {p0, v1}, Landroid/net/NetworkCapabilities;->hasTransport(I)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :goto_1
    if-eqz v0, :cond_3

    .line 21
    invoke-static {p0, p1}, Lcom/serenegiant/net/ConnectivityHelper;->isNetworkReachable(Landroid/net/NetworkCapabilities;Landroid/net/NetworkInfo;)Z

    move-result p0

    if-eqz p0, :cond_3

    const/4 v2, 0x1

    :cond_3
    return v2
.end method

.method private requireConnectivityManager()Landroid/net/ConnectivityManager;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Lcom/serenegiant/net/ConnectivityHelper;->requireContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "connectivity"

    .line 2
    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    if-eqz v0, :cond_0

    return-object v0

    .line 3
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "failed to get ConnectivityManager"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private requireContext()Landroid/content/Context;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/serenegiant/net/ConnectivityHelper;->mWeakContext:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    if-eqz v0, :cond_0

    return-object v0

    .line 2
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "context is already released"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private updateActiveNetwork(I)V
    .locals 2

    .line 12
    iget-object v0, p0, Lcom/serenegiant/net/ConnectivityHelper;->mSync:Ljava/lang/Object;

    monitor-enter v0

    .line 13
    :try_start_0
    iget v1, p0, Lcom/serenegiant/net/ConnectivityHelper;->mActiveNetworkType:I

    if-eq v1, p1, :cond_0

    .line 14
    iput p1, p0, Lcom/serenegiant/net/ConnectivityHelper;->mActiveNetworkType:I

    .line 15
    invoke-direct {p0, p1}, Lcom/serenegiant/net/ConnectivityHelper;->callOnNetworkChanged(I)V

    .line 16
    :cond_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method private updateActiveNetwork(Landroid/net/Network;)V
    .locals 2
    .annotation build Landroid/annotation/TargetApi;
        value = 0x15
    .end annotation

    .line 1
    invoke-direct {p0}, Lcom/serenegiant/net/ConnectivityHelper;->requireConnectivityManager()Landroid/net/ConnectivityManager;

    move-result-object v0

    .line 2
    invoke-virtual {v0, p1}, Landroid/net/ConnectivityManager;->getNetworkCapabilities(Landroid/net/Network;)Landroid/net/NetworkCapabilities;

    move-result-object v1

    .line 3
    invoke-virtual {v0, p1}, Landroid/net/ConnectivityManager;->getNetworkInfo(Landroid/net/Network;)Landroid/net/NetworkInfo;

    move-result-object p1

    if-eqz v1, :cond_3

    if-eqz p1, :cond_3

    .line 4
    invoke-static {v1, p1}, Lcom/serenegiant/net/ConnectivityHelper;->isWifiNetworkReachable(Landroid/net/NetworkCapabilities;Landroid/net/NetworkInfo;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p1, 0x2

    goto :goto_0

    .line 5
    :cond_0
    invoke-static {v1, p1}, Lcom/serenegiant/net/ConnectivityHelper;->isMobileNetworkReachable(Landroid/net/NetworkCapabilities;Landroid/net/NetworkInfo;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 p1, 0x1

    goto :goto_0

    .line 6
    :cond_1
    invoke-static {v1, p1}, Lcom/serenegiant/net/ConnectivityHelper;->isBluetoothNetworkReachable(Landroid/net/NetworkCapabilities;Landroid/net/NetworkInfo;)Z

    move-result v0

    if-eqz v0, :cond_2

    const/16 p1, 0x80

    goto :goto_0

    .line 7
    :cond_2
    invoke-static {v1, p1}, Lcom/serenegiant/net/ConnectivityHelper;->isNetworkReachable(Landroid/net/NetworkCapabilities;Landroid/net/NetworkInfo;)Z

    move-result p1

    if-eqz p1, :cond_3

    const/16 p1, 0x200

    goto :goto_0

    :cond_3
    const/4 p1, 0x0

    .line 8
    :goto_0
    invoke-direct {p0, p1}, Lcom/serenegiant/net/ConnectivityHelper;->updateActiveNetwork(I)V

    return-void
.end method

.method private updateActiveNetwork(Landroid/net/NetworkInfo;)V
    .locals 2

    if-eqz p1, :cond_0

    .line 9
    invoke-virtual {p1}, Landroid/net/NetworkInfo;->isConnectedOrConnecting()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 10
    invoke-virtual {p1}, Landroid/net/NetworkInfo;->getType()I

    move-result p1

    goto :goto_0

    :cond_0
    const/4 p1, -0x1

    :goto_0
    const/4 v0, 0x0

    const/4 v1, 0x1

    if-eqz p1, :cond_3

    if-eq p1, v1, :cond_2

    const/16 v1, 0x9

    if-eq p1, v1, :cond_1

    goto :goto_1

    :cond_1
    const/16 v0, 0x200

    goto :goto_1

    :cond_2
    const/4 v0, 0x2

    goto :goto_1

    :cond_3
    const/4 v0, 0x1

    .line 11
    :goto_1
    invoke-direct {p0, v0}, Lcom/serenegiant/net/ConnectivityHelper;->updateActiveNetwork(I)V

    return-void
.end method


# virtual methods
.method public synthetic b(Ljava/lang/Throwable;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/serenegiant/net/ConnectivityHelper;->a(Ljava/lang/Throwable;)V

    return-void
.end method

.method public synthetic d(I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/serenegiant/net/ConnectivityHelper;->c(I)V

    return-void
.end method

.method protected finalize()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 1
    :try_start_0
    invoke-virtual {p0}, Lcom/serenegiant/net/ConnectivityHelper;->release()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    return-void

    :catchall_0
    move-exception v0

    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    throw v0
.end method

.method public getActiveNetworkType()I
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/serenegiant/net/ConnectivityHelper;->mSync:Ljava/lang/Object;

    monitor-enter v0

    .line 2
    :try_start_0
    iget v1, p0, Lcom/serenegiant/net/ConnectivityHelper;->mActiveNetworkType:I

    monitor-exit v0

    return v1

    :catchall_0
    move-exception v1

    .line 3
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public isValid()Z
    .locals 1

    .line 1
    :try_start_0
    invoke-direct {p0}, Lcom/serenegiant/net/ConnectivityHelper;->requireConnectivityManager()Landroid/net/ConnectivityManager;
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v0, 0x1

    return v0

    :catch_0
    const/4 v0, 0x0

    return v0
.end method

.method public release()V
    .locals 5
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, v0}, Lcom/serenegiant/net/ConnectivityHelper;->updateActiveNetwork(I)V

    .line 2
    invoke-direct {p0}, Lcom/serenegiant/net/ConnectivityHelper;->getContext()Landroid/content/Context;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    .line 3
    invoke-static {}, Lcom/serenegiant/utils/BuildCheck;->isLollipop()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 4
    invoke-direct {p0}, Lcom/serenegiant/net/ConnectivityHelper;->requireConnectivityManager()Landroid/net/ConnectivityManager;

    move-result-object v2

    .line 5
    iget-object v3, p0, Lcom/serenegiant/net/ConnectivityHelper;->mOnNetworkActiveListener:Landroid/net/ConnectivityManager$OnNetworkActiveListener;

    if-eqz v3, :cond_0

    .line 6
    :try_start_0
    invoke-virtual {v2, v3}, Landroid/net/ConnectivityManager;->removeDefaultNetworkActiveListener(Landroid/net/ConnectivityManager$OnNetworkActiveListener;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v3

    .line 7
    sget-object v4, Lcom/serenegiant/net/ConnectivityHelper;->TAG:Ljava/lang/String;

    invoke-static {v4, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 8
    :goto_0
    iput-object v1, p0, Lcom/serenegiant/net/ConnectivityHelper;->mOnNetworkActiveListener:Landroid/net/ConnectivityManager$OnNetworkActiveListener;

    .line 9
    :cond_0
    iget-object v3, p0, Lcom/serenegiant/net/ConnectivityHelper;->mNetworkCallback:Landroid/net/ConnectivityManager$NetworkCallback;

    if-eqz v3, :cond_1

    .line 10
    invoke-virtual {v2, v3}, Landroid/net/ConnectivityManager;->unregisterNetworkCallback(Landroid/net/ConnectivityManager$NetworkCallback;)V

    .line 11
    iput-object v1, p0, Lcom/serenegiant/net/ConnectivityHelper;->mNetworkCallback:Landroid/net/ConnectivityManager$NetworkCallback;

    .line 12
    :cond_1
    iget-object v2, p0, Lcom/serenegiant/net/ConnectivityHelper;->mNetworkChangedReceiver:Landroid/content/BroadcastReceiver;

    if-eqz v2, :cond_2

    .line 13
    :try_start_1
    invoke-virtual {v0, v2}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    :catch_1
    move-exception v0

    .line 14
    sget-object v2, Lcom/serenegiant/net/ConnectivityHelper;->TAG:Ljava/lang/String;

    invoke-static {v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 15
    :goto_1
    iput-object v1, p0, Lcom/serenegiant/net/ConnectivityHelper;->mNetworkChangedReceiver:Landroid/content/BroadcastReceiver;

    .line 16
    :cond_2
    iget-object v0, p0, Lcom/serenegiant/net/ConnectivityHelper;->mSync:Ljava/lang/Object;

    monitor-enter v0

    .line 17
    :try_start_2
    iget-object v2, p0, Lcom/serenegiant/net/ConnectivityHelper;->mAsyncHandler:Landroid/os/Handler;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-eqz v2, :cond_3

    .line 18
    :try_start_3
    invoke-virtual {v2, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 19
    iget-object v2, p0, Lcom/serenegiant/net/ConnectivityHelper;->mAsyncHandler:Landroid/os/Handler;

    invoke-virtual {v2}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-virtual {v2}, Landroid/os/Looper;->quit()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_2

    :catch_2
    move-exception v2

    .line 20
    :try_start_4
    sget-object v3, Lcom/serenegiant/net/ConnectivityHelper;->TAG:Ljava/lang/String;

    invoke-static {v3, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 21
    :goto_2
    iput-object v1, p0, Lcom/serenegiant/net/ConnectivityHelper;->mAsyncHandler:Landroid/os/Handler;

    .line 22
    :cond_3
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    throw v1
.end method
