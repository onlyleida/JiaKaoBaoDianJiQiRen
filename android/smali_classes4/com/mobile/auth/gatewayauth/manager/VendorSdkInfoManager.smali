.class public Lcom/mobile/auth/gatewayauth/manager/VendorSdkInfoManager;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private a:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Lcom/mobile/auth/gatewayauth/model/VendorConfig;",
            ">;"
        }
    .end annotation
.end field

.field private b:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Lcom/mobile/auth/gatewayauth/model/VendorConfig;",
            ">;"
        }
    .end annotation
.end field

.field private c:Ljava/lang/String;

.field private d:Ljava/lang/String;

.field private e:Lcom/mobile/auth/gatewayauth/manager/d;

.field private f:Lcom/mobile/auth/gatewayauth/manager/SystemManager;

.field private g:Lcom/mobile/auth/o/a;

.field private h:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "auth_number_product-2.12.1.2-log-online-standard-release_alijtca_plus"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Lcom/mobile/auth/gatewayauth/manager/d;Lcom/mobile/auth/gatewayauth/manager/SystemManager;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/mobile/auth/gatewayauth/manager/base/b;

    const/4 v1, 0x3

    invoke-direct {v0, v1}, Lcom/mobile/auth/gatewayauth/manager/base/b;-><init>(I)V

    iput-object v0, p0, Lcom/mobile/auth/gatewayauth/manager/VendorSdkInfoManager;->a:Landroid/util/SparseArray;

    new-instance v0, Lcom/mobile/auth/gatewayauth/manager/base/b;

    invoke-direct {v0, v1}, Lcom/mobile/auth/gatewayauth/manager/base/b;-><init>(I)V

    iput-object v0, p0, Lcom/mobile/auth/gatewayauth/manager/VendorSdkInfoManager;->b:Landroid/util/SparseArray;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/mobile/auth/gatewayauth/manager/VendorSdkInfoManager;->h:Z

    iput-object p1, p0, Lcom/mobile/auth/gatewayauth/manager/VendorSdkInfoManager;->e:Lcom/mobile/auth/gatewayauth/manager/d;

    invoke-virtual {p1}, Lcom/mobile/auth/gatewayauth/manager/d;->a()Lcom/mobile/auth/o/a;

    move-result-object p1

    iput-object p1, p0, Lcom/mobile/auth/gatewayauth/manager/VendorSdkInfoManager;->g:Lcom/mobile/auth/o/a;

    iput-object p2, p0, Lcom/mobile/auth/gatewayauth/manager/VendorSdkInfoManager;->f:Lcom/mobile/auth/gatewayauth/manager/SystemManager;

    return-void
.end method

.method static synthetic a(Lcom/mobile/auth/gatewayauth/manager/VendorSdkInfoManager;)Landroid/util/SparseArray;
    .locals 1

    :try_start_0
    iget-object p0, p0, Lcom/mobile/auth/gatewayauth/manager/VendorSdkInfoManager;->b:Landroid/util/SparseArray;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object p0

    :catchall_0
    move-exception p0

    const/4 v0, 0x0

    :try_start_1
    invoke-static {p0}, Lcom/mobile/auth/gatewayauth/a;->a(Ljava/lang/Throwable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    return-object v0

    :catchall_1
    move-exception p0

    invoke-static {p0}, Lcom/mobile/auth/gatewayauth/a;->a(Ljava/lang/Throwable;)V

    return-object v0
.end method

.method private a(Ljava/lang/String;)Lcom/mobile/auth/gatewayauth/model/MonitorStruct;
    .locals 3

    :try_start_0
    new-instance v0, Lcom/mobile/auth/gatewayauth/model/MonitorStruct;

    invoke-direct {v0}, Lcom/mobile/auth/gatewayauth/model/MonitorStruct;-><init>()V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/mobile/auth/gatewayauth/model/MonitorStruct;->setStartTime(J)V

    invoke-virtual {v0, p1}, Lcom/mobile/auth/gatewayauth/model/MonitorStruct;->setSessionId(Ljava/lang/String;)V

    iget-object p1, p0, Lcom/mobile/auth/gatewayauth/manager/VendorSdkInfoManager;->e:Lcom/mobile/auth/gatewayauth/manager/d;

    invoke-virtual {p1}, Lcom/mobile/auth/gatewayauth/manager/d;->f()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/mobile/auth/gatewayauth/model/MonitorStruct;->setRequestId(Ljava/lang/String;)V

    const-string p1, "pns.vendor.querylist"

    invoke-virtual {v0, p1}, Lcom/mobile/auth/gatewayauth/model/MonitorStruct;->setAction(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object v0

    :catchall_0
    move-exception p1

    const/4 v0, 0x0

    :try_start_1
    invoke-static {p1}, Lcom/mobile/auth/gatewayauth/a;->a(Ljava/lang/Throwable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    return-object v0

    :catchall_1
    move-exception p1

    invoke-static {p1}, Lcom/mobile/auth/gatewayauth/a;->a(Ljava/lang/Throwable;)V

    return-object v0
.end method

.method static synthetic a(Lcom/mobile/auth/gatewayauth/manager/VendorSdkInfoManager;Lcom/mobile/auth/gatewayauth/model/MonitorStruct;)V
    .locals 0

    :try_start_0
    invoke-direct {p0, p1}, Lcom/mobile/auth/gatewayauth/manager/VendorSdkInfoManager;->a(Lcom/mobile/auth/gatewayauth/model/MonitorStruct;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p0

    :try_start_1
    invoke-static {p0}, Lcom/mobile/auth/gatewayauth/a;->a(Ljava/lang/Throwable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_0

    :catchall_1
    move-exception p0

    invoke-static {p0}, Lcom/mobile/auth/gatewayauth/a;->a(Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method

.method static synthetic a(Lcom/mobile/auth/gatewayauth/manager/VendorSdkInfoManager;Ljava/lang/String;)V
    .locals 0

    :try_start_0
    invoke-direct {p0, p1}, Lcom/mobile/auth/gatewayauth/manager/VendorSdkInfoManager;->storeVendorConfigsBySceneCodeToDisk(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p0

    :try_start_1
    invoke-static {p0}, Lcom/mobile/auth/gatewayauth/a;->a(Ljava/lang/Throwable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_0

    :catchall_1
    move-exception p0

    invoke-static {p0}, Lcom/mobile/auth/gatewayauth/a;->a(Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method

.method private a(Lcom/mobile/auth/gatewayauth/model/MonitorStruct;)V
    .locals 1

    :try_start_0
    new-instance v0, Lcom/mobile/auth/gatewayauth/manager/VendorSdkInfoManager$3;

    invoke-direct {v0, p0, p1}, Lcom/mobile/auth/gatewayauth/manager/VendorSdkInfoManager$3;-><init>(Lcom/mobile/auth/gatewayauth/manager/VendorSdkInfoManager;Lcom/mobile/auth/gatewayauth/model/MonitorStruct;)V

    invoke-static {v0}, Lcom/mobile/auth/gatewayauth/utils/b;->a(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    :try_start_1
    invoke-static {p1}, Lcom/mobile/auth/gatewayauth/a;->a(Ljava/lang/Throwable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_0

    :catchall_1
    move-exception p1

    invoke-static {p1}, Lcom/mobile/auth/gatewayauth/a;->a(Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method

.method private a([Ljava/lang/String;)V
    .locals 2

    if-nez p1, :cond_0

    return-void

    :cond_0
    :try_start_0
    array-length v0, p1

    const/16 v1, 0x8

    if-le v0, v1, :cond_1

    const-string v0, "1"

    aget-object p1, p1, v1

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/mobile/auth/gatewayauth/manager/VendorSdkInfoManager;->h:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    :try_start_1
    invoke-static {p1}, Lcom/mobile/auth/gatewayauth/a;->a(Ljava/lang/Throwable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_0

    :catchall_1
    move-exception p1

    invoke-static {p1}, Lcom/mobile/auth/gatewayauth/a;->a(Ljava/lang/Throwable;)V

    :cond_1
    :goto_0
    return-void
.end method

.method private a([Ljava/lang/String;Landroid/util/SparseArray;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/String;",
            "Landroid/util/SparseArray<",
            "Lcom/mobile/auth/gatewayauth/model/VendorConfig;",
            ">;)V"
        }
    .end annotation

    if-eqz p1, :cond_4

    :try_start_0
    array-length v0, p1

    const/4 v1, 0x6

    if-lt v0, v1, :cond_4

    if-nez p2, :cond_0

    goto :goto_2

    :cond_0
    const/4 v0, 0x0

    :goto_0
    const/4 v1, 0x3

    if-ge v0, v1, :cond_4

    new-instance v2, Lcom/mobile/auth/gatewayauth/model/VendorConfig;

    invoke-direct {v2}, Lcom/mobile/auth/gatewayauth/model/VendorConfig;-><init>()V

    mul-int/lit8 v3, v0, 0x2

    aget-object v4, p1, v3

    invoke-virtual {v2, v4}, Lcom/mobile/auth/gatewayauth/model/VendorConfig;->setVendorAccessId(Ljava/lang/String;)V

    add-int/lit8 v3, v3, 0x1

    aget-object v3, p1, v3

    invoke-virtual {v2, v3}, Lcom/mobile/auth/gatewayauth/model/VendorConfig;->setVendorAccessSecret(Ljava/lang/String;)V

    const/4 v3, 0x1

    if-eqz v0, :cond_3

    const/4 v4, 0x2

    if-eq v0, v3, :cond_2

    if-eq v0, v4, :cond_1

    goto :goto_1

    :cond_1
    const-string v3, "ct_sjl"

    invoke-virtual {v2, v3}, Lcom/mobile/auth/gatewayauth/model/VendorConfig;->setVendorKey(Ljava/lang/String;)V

    invoke-virtual {p2, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    goto :goto_1

    :cond_2
    const-string v1, "cu_xw"

    invoke-virtual {v2, v1}, Lcom/mobile/auth/gatewayauth/model/VendorConfig;->setVendorKey(Ljava/lang/String;)V

    invoke-virtual {p2, v4, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    goto :goto_1

    :cond_3
    const-string v1, "cm_zyhl"

    invoke-virtual {v2, v1}, Lcom/mobile/auth/gatewayauth/model/VendorConfig;->setVendorKey(Ljava/lang/String;)V

    invoke-virtual {p2, v3, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :catchall_0
    move-exception p1

    :try_start_1
    invoke-static {p1}, Lcom/mobile/auth/gatewayauth/a;->a(Ljava/lang/Throwable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_2

    :catchall_1
    move-exception p1

    invoke-static {p1}, Lcom/mobile/auth/gatewayauth/a;->a(Ljava/lang/Throwable;)V

    :cond_4
    :goto_2
    return-void
.end method

.method static synthetic b(Lcom/mobile/auth/gatewayauth/manager/VendorSdkInfoManager;)Ljava/lang/String;
    .locals 1

    :try_start_0
    iget-object p0, p0, Lcom/mobile/auth/gatewayauth/manager/VendorSdkInfoManager;->c:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object p0

    :catchall_0
    move-exception p0

    const/4 v0, 0x0

    :try_start_1
    invoke-static {p0}, Lcom/mobile/auth/gatewayauth/a;->a(Ljava/lang/Throwable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    return-object v0

    :catchall_1
    move-exception p0

    invoke-static {p0}, Lcom/mobile/auth/gatewayauth/a;->a(Ljava/lang/Throwable;)V

    return-object v0
.end method

.method private b([Ljava/lang/String;)V
    .locals 2

    if-nez p1, :cond_0

    return-void

    :cond_0
    :try_start_0
    array-length v0, p1

    const/16 v1, 0x8

    if-lt v0, v1, :cond_1

    const/4 v0, 0x6

    aget-object p1, p1, v0

    iput-object p1, p0, Lcom/mobile/auth/gatewayauth/manager/VendorSdkInfoManager;->c:Ljava/lang/String;

    iget-object v0, p0, Lcom/mobile/auth/gatewayauth/manager/VendorSdkInfoManager;->e:Lcom/mobile/auth/gatewayauth/manager/d;

    invoke-virtual {v0, p1}, Lcom/mobile/auth/gatewayauth/manager/d;->a(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    :try_start_1
    invoke-static {p1}, Lcom/mobile/auth/gatewayauth/a;->a(Ljava/lang/Throwable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_0

    :catchall_1
    move-exception p1

    invoke-static {p1}, Lcom/mobile/auth/gatewayauth/a;->a(Ljava/lang/Throwable;)V

    :cond_1
    :goto_0
    return-void
.end method

.method static synthetic c(Lcom/mobile/auth/gatewayauth/manager/VendorSdkInfoManager;)Lcom/mobile/auth/gatewayauth/manager/d;
    .locals 1

    :try_start_0
    iget-object p0, p0, Lcom/mobile/auth/gatewayauth/manager/VendorSdkInfoManager;->e:Lcom/mobile/auth/gatewayauth/manager/d;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object p0

    :catchall_0
    move-exception p0

    const/4 v0, 0x0

    :try_start_1
    invoke-static {p0}, Lcom/mobile/auth/gatewayauth/a;->a(Ljava/lang/Throwable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    return-object v0

    :catchall_1
    move-exception p0

    invoke-static {p0}, Lcom/mobile/auth/gatewayauth/a;->a(Ljava/lang/Throwable;)V

    return-object v0
.end method

.method private c([Ljava/lang/String;)V
    .locals 2

    if-nez p1, :cond_0

    return-void

    :cond_0
    :try_start_0
    array-length v0, p1

    const/16 v1, 0xa

    if-lt v0, v1, :cond_1

    const/16 v0, 0x9

    aget-object p1, p1, v0

    iput-object p1, p0, Lcom/mobile/auth/gatewayauth/manager/VendorSdkInfoManager;->d:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    :try_start_1
    invoke-static {p1}, Lcom/mobile/auth/gatewayauth/a;->a(Ljava/lang/Throwable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_0

    :catchall_1
    move-exception p1

    invoke-static {p1}, Lcom/mobile/auth/gatewayauth/a;->a(Ljava/lang/Throwable;)V

    :cond_1
    :goto_0
    return-void
.end method

.method static synthetic d(Lcom/mobile/auth/gatewayauth/manager/VendorSdkInfoManager;)Lcom/mobile/auth/o/a;
    .locals 1

    :try_start_0
    iget-object p0, p0, Lcom/mobile/auth/gatewayauth/manager/VendorSdkInfoManager;->g:Lcom/mobile/auth/o/a;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object p0

    :catchall_0
    move-exception p0

    const/4 v0, 0x0

    :try_start_1
    invoke-static {p0}, Lcom/mobile/auth/gatewayauth/a;->a(Ljava/lang/Throwable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    return-object v0

    :catchall_1
    move-exception p0

    invoke-static {p0}, Lcom/mobile/auth/gatewayauth/a;->a(Ljava/lang/Throwable;)V

    return-object v0
.end method

.method private native loadVendorConfigsBySceneCodeFromDisk(Ljava/lang/String;)V
    .annotation build Lcom/mobile/auth/gatewayauth/annotations/SafeProtector;
    .end annotation
.end method

.method private native storeVendorConfigsBySceneCodeToDisk(Ljava/lang/String;)V
    .annotation build Lcom/mobile/auth/gatewayauth/annotations/SafeProtector;
    .end annotation
.end method


# virtual methods
.method public a(I)Lcom/mobile/auth/gatewayauth/model/VendorConfig;
    .locals 1

    :try_start_0
    iget-object v0, p0, Lcom/mobile/auth/gatewayauth/manager/VendorSdkInfoManager;->b:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mobile/auth/gatewayauth/model/VendorConfig;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/mobile/auth/gatewayauth/manager/VendorSdkInfoManager;->a:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/mobile/auth/gatewayauth/model/VendorConfig;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object p1

    :catchall_0
    move-exception p1

    const/4 v0, 0x0

    :try_start_1
    invoke-static {p1}, Lcom/mobile/auth/gatewayauth/a;->a(Ljava/lang/Throwable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    return-object v0

    :catchall_1
    move-exception p1

    invoke-static {p1}, Lcom/mobile/auth/gatewayauth/a;->a(Ljava/lang/Throwable;)V

    return-object v0
.end method

.method public a(Z)Ljava/lang/String;
    .locals 1

    if-eqz p1, :cond_0

    :try_start_0
    const-string p1, "SceneCode"

    return-object p1

    :cond_0
    iget-object p1, p0, Lcom/mobile/auth/gatewayauth/manager/VendorSdkInfoManager;->c:Ljava/lang/String;

    if-nez p1, :cond_1

    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_1
    return-object p1

    :catchall_0
    move-exception p1

    const/4 v0, 0x0

    :try_start_1
    invoke-static {p1}, Lcom/mobile/auth/gatewayauth/a;->a(Ljava/lang/Throwable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    return-object v0

    :catchall_1
    move-exception p1

    invoke-static {p1}, Lcom/mobile/auth/gatewayauth/a;->a(Ljava/lang/Throwable;)V

    return-object v0
.end method

.method public a(Ljava/lang/String;Lcom/mobile/auth/gatewayauth/manager/RequestCallback;Lcom/mobile/auth/gatewayauth/manager/e;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/mobile/auth/gatewayauth/manager/RequestCallback<",
            "Ljava/lang/Void;",
            "Ljava/lang/String;",
            ">;",
            "Lcom/mobile/auth/gatewayauth/manager/e;",
            ")V"
        }
    .end annotation

    if-nez p2, :cond_0

    return-void

    :cond_0
    if-eqz p3, :cond_1

    :try_start_0
    invoke-direct {p0, p1}, Lcom/mobile/auth/gatewayauth/manager/VendorSdkInfoManager;->a(Ljava/lang/String;)Lcom/mobile/auth/gatewayauth/model/MonitorStruct;

    move-result-object p1

    new-instance v0, Lcom/mobile/auth/gatewayauth/manager/VendorSdkInfoManager$2;

    invoke-direct {v0, p0, p1, p2}, Lcom/mobile/auth/gatewayauth/manager/VendorSdkInfoManager$2;-><init>(Lcom/mobile/auth/gatewayauth/manager/VendorSdkInfoManager;Lcom/mobile/auth/gatewayauth/model/MonitorStruct;Lcom/mobile/auth/gatewayauth/manager/RequestCallback;)V

    invoke-virtual {p3, v0}, Lcom/mobile/auth/gatewayauth/manager/e;->a(Lcom/mobile/auth/gatewayauth/manager/e$a;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    :try_start_1
    invoke-static {p1}, Lcom/mobile/auth/gatewayauth/a;->a(Ljava/lang/Throwable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_0

    :catchall_1
    move-exception p1

    invoke-static {p1}, Lcom/mobile/auth/gatewayauth/a;->a(Ljava/lang/Throwable;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public a()Z
    .locals 2

    :try_start_0
    iget-object v0, p0, Lcom/mobile/auth/gatewayauth/manager/VendorSdkInfoManager;->c:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    xor-int/lit8 v0, v0, 0x1

    return v0

    :catchall_0
    move-exception v0

    const/4 v1, 0x0

    :try_start_1
    invoke-static {v0}, Lcom/mobile/auth/gatewayauth/a;->a(Ljava/lang/Throwable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    return v1

    :catchall_1
    move-exception v0

    invoke-static {v0}, Lcom/mobile/auth/gatewayauth/a;->a(Ljava/lang/Throwable;)V

    return v1
.end method

.method public a(Ljava/lang/String;Lcom/mobile/auth/gatewayauth/manager/e;)Z
    .locals 2

    :try_start_0
    invoke-virtual {p0}, Lcom/mobile/auth/gatewayauth/manager/VendorSdkInfoManager;->b()Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Lcom/mobile/auth/gatewayauth/manager/VendorSdkInfoManager$1;

    invoke-direct {v0, p0, p1, p2}, Lcom/mobile/auth/gatewayauth/manager/VendorSdkInfoManager$1;-><init>(Lcom/mobile/auth/gatewayauth/manager/VendorSdkInfoManager;Ljava/lang/String;Lcom/mobile/auth/gatewayauth/manager/e;)V

    invoke-static {v0}, Lcom/mobile/auth/gatewayauth/utils/b;->a(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const-wide/16 v0, 0xbb8

    :try_start_1
    sget-object p2, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface {p1, v0, v1, p2}, Ljava/util/concurrent/Future;->get(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catch_0
    :cond_0
    :try_start_2
    invoke-virtual {p0}, Lcom/mobile/auth/gatewayauth/manager/VendorSdkInfoManager;->b()Z

    move-result p1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    return p1

    :catchall_0
    move-exception p1

    const/4 p2, 0x0

    :try_start_3
    invoke-static {p1}, Lcom/mobile/auth/gatewayauth/a;->a(Ljava/lang/Throwable;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    return p2

    :catchall_1
    move-exception p1

    invoke-static {p1}, Lcom/mobile/auth/gatewayauth/a;->a(Ljava/lang/Throwable;)V

    return p2
.end method

.method public b()Z
    .locals 2

    const/4 v0, 0x0

    :try_start_0
    iget-object v1, p0, Lcom/mobile/auth/gatewayauth/manager/VendorSdkInfoManager;->b:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v1

    if-gtz v1, :cond_0

    iget-object v1, p0, Lcom/mobile/auth/gatewayauth/manager/VendorSdkInfoManager;->a:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-lez v1, :cond_1

    :cond_0
    const/4 v0, 0x1

    :cond_1
    return v0

    :catchall_0
    move-exception v1

    :try_start_1
    invoke-static {v1}, Lcom/mobile/auth/gatewayauth/a;->a(Ljava/lang/Throwable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    return v0

    :catchall_1
    move-exception v1

    invoke-static {v1}, Lcom/mobile/auth/gatewayauth/a;->a(Ljava/lang/Throwable;)V

    return v0
.end method

.method public c()Ljava/lang/String;
    .locals 2

    :try_start_0
    iget-object v0, p0, Lcom/mobile/auth/gatewayauth/manager/VendorSdkInfoManager;->c:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object v0

    :catchall_0
    move-exception v0

    const/4 v1, 0x0

    :try_start_1
    invoke-static {v0}, Lcom/mobile/auth/gatewayauth/a;->a(Ljava/lang/Throwable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    return-object v1

    :catchall_1
    move-exception v0

    invoke-static {v0}, Lcom/mobile/auth/gatewayauth/a;->a(Ljava/lang/Throwable;)V

    return-object v1
.end method

.method public d()Z
    .locals 2

    :try_start_0
    iget-boolean v0, p0, Lcom/mobile/auth/gatewayauth/manager/VendorSdkInfoManager;->h:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return v0

    :catchall_0
    move-exception v0

    const/4 v1, 0x0

    :try_start_1
    invoke-static {v0}, Lcom/mobile/auth/gatewayauth/a;->a(Ljava/lang/Throwable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    return v1

    :catchall_1
    move-exception v0

    invoke-static {v0}, Lcom/mobile/auth/gatewayauth/a;->a(Ljava/lang/Throwable;)V

    return v1
.end method

.method public native setLocalVendorSdkInfo(Ljava/lang/String;)V
    .annotation build Lcom/mobile/auth/gatewayauth/annotations/SafeProtector;
    .end annotation
.end method
