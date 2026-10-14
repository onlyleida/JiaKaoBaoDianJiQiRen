.class public Lcom/mobile/auth/k/z;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mobile/auth/k/z$b;
    }
.end annotation


# static fields
.field static a:Landroid/net/ConnectivityManager;

.field private static b:Lcom/mobile/auth/k/z;


# instance fields
.field private c:Landroid/net/Network;

.field private d:Landroid/net/ConnectivityManager$NetworkCallback;

.field private e:Z


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "connectivity"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/net/ConnectivityManager;

    sput-object p1, Lcom/mobile/auth/k/z;->a:Landroid/net/ConnectivityManager;

    return-void
.end method

.method static a(Ljava/lang/String;)I
    .locals 2

    :try_start_0
    invoke-static {p0}, Ljava/net/InetAddress;->getByName(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object p0
    :try_end_0
    .catch Ljava/net/UnknownHostException; {:try_start_0 .. :try_end_0} :catch_0

    invoke-virtual {p0}, Ljava/net/InetAddress;->getAddress()[B

    move-result-object p0

    const/4 v0, 0x3

    aget-byte v0, p0, v0

    and-int/lit16 v0, v0, 0xff

    shl-int/lit8 v0, v0, 0x18

    const/4 v1, 0x2

    aget-byte v1, p0, v1

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x10

    or-int/2addr v0, v1

    const/4 v1, 0x1

    aget-byte v1, p0, v1

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x8

    or-int/2addr v0, v1

    const/4 v1, 0x0

    aget-byte p0, p0, v1

    and-int/lit16 p0, p0, 0xff

    or-int/2addr p0, v0

    return p0

    :catch_0
    const/4 p0, -0x1

    return p0
.end method

.method static synthetic a(Lcom/mobile/auth/k/z;Landroid/net/Network;)Landroid/net/Network;
    .locals 0

    iput-object p1, p0, Lcom/mobile/auth/k/z;->c:Landroid/net/Network;

    return-object p1
.end method

.method public static a(Landroid/content/Context;)Lcom/mobile/auth/k/z;
    .locals 2

    sget-object v0, Lcom/mobile/auth/k/z;->b:Lcom/mobile/auth/k/z;

    if-nez v0, :cond_1

    const-class v0, Lcom/mobile/auth/k/z;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/mobile/auth/k/z;->b:Lcom/mobile/auth/k/z;

    if-nez v1, :cond_0

    new-instance v1, Lcom/mobile/auth/k/z;

    invoke-direct {v1, p0}, Lcom/mobile/auth/k/z;-><init>(Landroid/content/Context;)V

    sput-object v1, Lcom/mobile/auth/k/z;->b:Lcom/mobile/auth/k/z;

    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0

    :cond_1
    :goto_0
    sget-object p0, Lcom/mobile/auth/k/z;->b:Lcom/mobile/auth/k/z;

    return-object p0
.end method

.method static synthetic a(Lcom/mobile/auth/k/z;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/mobile/auth/k/z;->e:Z

    return p1
.end method

.method static b(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    const-string v0, "://"

    invoke-virtual {p0, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    if-lez v0, :cond_0

    add-int/lit8 v0, v0, 0x3

    invoke-virtual {p0, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    :cond_0
    const/16 v0, 0x3a

    invoke-virtual {p0, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    const/4 v1, 0x0

    if-ltz v0, :cond_1

    invoke-virtual {p0, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    :cond_1
    const/16 v0, 0x2f

    invoke-virtual {p0, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    if-ltz v0, :cond_2

    invoke-virtual {p0, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    :cond_2
    const/16 v0, 0x3f

    invoke-virtual {p0, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    if-ltz v0, :cond_3

    invoke-virtual {p0, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    :cond_3
    return-object p0
.end method


# virtual methods
.method public a()V
    .locals 2

    :try_start_0
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-lt v0, v1, :cond_2

    sget-object v0, Lcom/mobile/auth/k/z;->a:Landroid/net/ConnectivityManager;

    if-eqz v0, :cond_1

    iget-object v1, p0, Lcom/mobile/auth/k/z;->d:Landroid/net/ConnectivityManager$NetworkCallback;

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {v0, v1}, Landroid/net/ConnectivityManager;->unregisterNetworkCallback(Landroid/net/ConnectivityManager$NetworkCallback;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/mobile/auth/k/z;->d:Landroid/net/ConnectivityManager$NetworkCallback;

    iput-object v0, p0, Lcom/mobile/auth/k/z;->c:Landroid/net/Network;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :cond_1
    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_2
    :goto_1
    return-void
.end method

.method a(Lcom/mobile/auth/k/z$b;)V
    .locals 2

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-ge v0, v1, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/mobile/auth/k/z;->c:Landroid/net/Network;

    if-eqz v0, :cond_1

    iget-boolean v1, p0, Lcom/mobile/auth/k/z;->e:Z

    if-nez v1, :cond_1

    sget-object v1, Lcom/mobile/auth/k/z;->a:Landroid/net/ConnectivityManager;

    invoke-virtual {v1, v0}, Landroid/net/ConnectivityManager;->getNetworkInfo(Landroid/net/Network;)Landroid/net/NetworkInfo;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/net/NetworkInfo;->isAvailable()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/mobile/auth/k/z;->c:Landroid/net/Network;

    invoke-interface {p1, v0}, Lcom/mobile/auth/k/z$b;->a(Landroid/net/Network;)V

    return-void

    :cond_1
    iget-object v0, p0, Lcom/mobile/auth/k/z;->d:Landroid/net/ConnectivityManager$NetworkCallback;

    if-eqz v0, :cond_2

    :try_start_0
    sget-object v1, Lcom/mobile/auth/k/z;->a:Landroid/net/ConnectivityManager;

    invoke-virtual {v1, v0}, Landroid/net/ConnectivityManager;->unregisterNetworkCallback(Landroid/net/ConnectivityManager$NetworkCallback;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/mobile/auth/k/z;->d:Landroid/net/ConnectivityManager$NetworkCallback;

    :goto_0
    const-string v0, "HttpUtils"

    const-string v1, "clear: "

    invoke-static {v0, v1}, Lcom/mobile/auth/k/f;->a(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    new-instance v0, Landroid/net/NetworkRequest$Builder;

    invoke-direct {v0}, Landroid/net/NetworkRequest$Builder;-><init>()V

    const/16 v1, 0xc

    invoke-virtual {v0, v1}, Landroid/net/NetworkRequest$Builder;->addCapability(I)Landroid/net/NetworkRequest$Builder;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/net/NetworkRequest$Builder;->addTransportType(I)Landroid/net/NetworkRequest$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/NetworkRequest$Builder;->build()Landroid/net/NetworkRequest;

    move-result-object v0

    new-instance v1, Lcom/mobile/auth/k/z$a;

    invoke-direct {v1, p0, p1}, Lcom/mobile/auth/k/z$a;-><init>(Lcom/mobile/auth/k/z;Lcom/mobile/auth/k/z$b;)V

    iput-object v1, p0, Lcom/mobile/auth/k/z;->d:Landroid/net/ConnectivityManager$NetworkCallback;

    sget-object p1, Lcom/mobile/auth/k/z;->a:Landroid/net/ConnectivityManager;

    invoke-virtual {p1, v0, v1}, Landroid/net/ConnectivityManager;->requestNetwork(Landroid/net/NetworkRequest;Landroid/net/ConnectivityManager$NetworkCallback;)V

    return-void
.end method
