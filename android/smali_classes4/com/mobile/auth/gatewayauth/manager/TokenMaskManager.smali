.class public Lcom/mobile/auth/gatewayauth/manager/TokenMaskManager;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private a:Lcom/mobile/auth/gatewayauth/manager/b;

.field private b:Lcom/mobile/auth/gatewayauth/manager/SystemManager;

.field private c:Lcom/mobile/auth/gatewayauth/manager/d;

.field private d:Lcom/mobile/auth/gatewayauth/manager/VendorSdkInfoManager;

.field private e:Lcom/mobile/auth/gatewayauth/manager/f;

.field private f:Lcom/mobile/auth/gatewayauth/utils/TokenGenerator;

.field private g:Lcom/mobile/auth/o/a;

.field private volatile h:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/mobile/auth/gatewayauth/model/LoginPhoneInfo;",
            ">;"
        }
    .end annotation
.end field

.field private volatile i:Lcom/mobile/auth/gatewayauth/manager/base/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/mobile/auth/gatewayauth/manager/base/a<",
            "Lcom/mobile/auth/gatewayauth/model/LoginPhoneInfo;",
            ">;"
        }
    .end annotation
.end field

.field private volatile j:Landroid/util/LruCache;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/LruCache<",
            "Ljava/lang/String;",
            "Lcom/mobile/auth/gatewayauth/manager/base/a<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field

.field private volatile k:Landroid/util/LruCache;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/LruCache<",
            "Ljava/lang/String;",
            "Lcom/mobile/auth/gatewayauth/manager/base/a<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field

.field private l:Lcom/nirvana/tools/cache/CacheHandler;

.field private m:Lcom/nirvana/tools/cache/CacheHandler;

.field private n:Lcom/nirvana/tools/cache/CacheHandler;

.field private o:Lcom/nirvana/tools/cache/CacheHandler;

.field private p:Lcom/nirvana/tools/cache/CacheManager;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "auth_number_product-2.12.1.2-log-online-standard-release_alijtca_plus"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Lcom/mobile/auth/gatewayauth/manager/b;Lcom/mobile/auth/gatewayauth/manager/SystemManager;Lcom/mobile/auth/gatewayauth/manager/d;Lcom/mobile/auth/gatewayauth/manager/f;Lcom/mobile/auth/gatewayauth/manager/VendorSdkInfoManager;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/mobile/auth/gatewayauth/manager/TokenMaskManager;->h:Ljava/util/Map;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/mobile/auth/gatewayauth/manager/TokenMaskManager;->i:Lcom/mobile/auth/gatewayauth/manager/base/a;

    new-instance v0, Landroid/util/LruCache;

    const/16 v1, 0xa

    invoke-direct {v0, v1}, Landroid/util/LruCache;-><init>(I)V

    iput-object v0, p0, Lcom/mobile/auth/gatewayauth/manager/TokenMaskManager;->j:Landroid/util/LruCache;

    new-instance v0, Landroid/util/LruCache;

    invoke-direct {v0, v1}, Landroid/util/LruCache;-><init>(I)V

    iput-object v0, p0, Lcom/mobile/auth/gatewayauth/manager/TokenMaskManager;->k:Landroid/util/LruCache;

    iput-object p1, p0, Lcom/mobile/auth/gatewayauth/manager/TokenMaskManager;->a:Lcom/mobile/auth/gatewayauth/manager/b;

    iput-object p2, p0, Lcom/mobile/auth/gatewayauth/manager/TokenMaskManager;->b:Lcom/mobile/auth/gatewayauth/manager/SystemManager;

    iput-object p3, p0, Lcom/mobile/auth/gatewayauth/manager/TokenMaskManager;->c:Lcom/mobile/auth/gatewayauth/manager/d;

    invoke-virtual {p3}, Lcom/mobile/auth/gatewayauth/manager/d;->a()Lcom/mobile/auth/o/a;

    move-result-object p1

    iput-object p1, p0, Lcom/mobile/auth/gatewayauth/manager/TokenMaskManager;->g:Lcom/mobile/auth/o/a;

    iput-object p5, p0, Lcom/mobile/auth/gatewayauth/manager/TokenMaskManager;->d:Lcom/mobile/auth/gatewayauth/manager/VendorSdkInfoManager;

    iput-object p4, p0, Lcom/mobile/auth/gatewayauth/manager/TokenMaskManager;->e:Lcom/mobile/auth/gatewayauth/manager/f;

    new-instance p1, Lcom/mobile/auth/gatewayauth/utils/TokenGenerator;

    iget-object p2, p0, Lcom/mobile/auth/gatewayauth/manager/TokenMaskManager;->g:Lcom/mobile/auth/o/a;

    iget-object p3, p0, Lcom/mobile/auth/gatewayauth/manager/TokenMaskManager;->b:Lcom/mobile/auth/gatewayauth/manager/SystemManager;

    iget-object p4, p0, Lcom/mobile/auth/gatewayauth/manager/TokenMaskManager;->d:Lcom/mobile/auth/gatewayauth/manager/VendorSdkInfoManager;

    invoke-direct {p1, p2, p3, p4}, Lcom/mobile/auth/gatewayauth/utils/TokenGenerator;-><init>(Lcom/mobile/auth/o/a;Lcom/mobile/auth/gatewayauth/manager/SystemManager;Lcom/mobile/auth/gatewayauth/manager/VendorSdkInfoManager;)V

    iput-object p1, p0, Lcom/mobile/auth/gatewayauth/manager/TokenMaskManager;->f:Lcom/mobile/auth/gatewayauth/utils/TokenGenerator;

    iget-object p1, p0, Lcom/mobile/auth/gatewayauth/manager/TokenMaskManager;->b:Lcom/mobile/auth/gatewayauth/manager/SystemManager;

    invoke-virtual {p1}, Lcom/mobile/auth/gatewayauth/manager/SystemManager;->g()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/nirvana/tools/cache/CacheManager;->getInstance(Landroid/content/Context;)Lcom/nirvana/tools/cache/CacheManager;

    move-result-object p1

    iput-object p1, p0, Lcom/mobile/auth/gatewayauth/manager/TokenMaskManager;->p:Lcom/nirvana/tools/cache/CacheManager;

    invoke-direct {p0}, Lcom/mobile/auth/gatewayauth/manager/TokenMaskManager;->b()V

    new-instance p1, Lcom/mobile/auth/gatewayauth/manager/TokenMaskManager$1;

    invoke-direct {p1, p0}, Lcom/mobile/auth/gatewayauth/manager/TokenMaskManager$1;-><init>(Lcom/mobile/auth/gatewayauth/manager/TokenMaskManager;)V

    invoke-static {p1}, Lcom/mobile/auth/gatewayauth/utils/b;->a(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    return-void
.end method

.method static synthetic a(Lcom/mobile/auth/gatewayauth/manager/TokenMaskManager;Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/String;
    .locals 0

    :try_start_0
    invoke-direct {p0, p1, p2, p3}, Lcom/mobile/auth/gatewayauth/manager/TokenMaskManager;->a(Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object p0

    :catchall_0
    move-exception p0

    const/4 p1, 0x0

    :try_start_1
    invoke-static {p0}, Lcom/mobile/auth/gatewayauth/a;->a(Ljava/lang/Throwable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    return-object p1

    :catchall_1
    move-exception p0

    invoke-static {p0}, Lcom/mobile/auth/gatewayauth/a;->a(Ljava/lang/Throwable;)V

    return-object p1
.end method

.method private native a(Ljava/lang/String;Lcom/mobile/auth/gatewayauth/manager/base/CacheKey;J)Ljava/lang/String;
.end method

.method private native a(Ljava/lang/String;Ljava/lang/String;Lcom/mobile/auth/gatewayauth/manager/base/CacheKey;J)Ljava/lang/String;
.end method

.method private native a(Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/String;
.end method

.method static synthetic a(Lcom/mobile/auth/gatewayauth/manager/TokenMaskManager;)V
    .locals 0

    :try_start_0
    invoke-direct {p0}, Lcom/mobile/auth/gatewayauth/manager/TokenMaskManager;->c()V
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

.method static synthetic a(Lcom/mobile/auth/gatewayauth/manager/TokenMaskManager;Lcom/mobile/auth/gatewayauth/manager/base/CacheKey;Lcom/mobile/auth/gatewayauth/model/LoginPhoneInfo;Ljava/lang/String;)V
    .locals 0

    :try_start_0
    invoke-direct {p0, p1, p2, p3}, Lcom/mobile/auth/gatewayauth/manager/TokenMaskManager;->a(Lcom/mobile/auth/gatewayauth/manager/base/CacheKey;Lcom/mobile/auth/gatewayauth/model/LoginPhoneInfo;Ljava/lang/String;)V
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

.method static synthetic a(Lcom/mobile/auth/gatewayauth/manager/TokenMaskManager;Ljava/lang/String;Ljava/lang/String;Lcom/mobile/auth/gatewayauth/manager/base/CacheKey;Ljava/lang/String;J)V
    .locals 0

    :try_start_0
    invoke-direct/range {p0 .. p6}, Lcom/mobile/auth/gatewayauth/manager/TokenMaskManager;->b(Ljava/lang/String;Ljava/lang/String;Lcom/mobile/auth/gatewayauth/manager/base/CacheKey;Ljava/lang/String;J)V
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

.method private synchronized native a(Lcom/mobile/auth/gatewayauth/manager/base/CacheKey;Lcom/mobile/auth/gatewayauth/model/LoginPhoneInfo;Ljava/lang/String;)V
.end method

.method private synchronized native a(Ljava/lang/String;Ljava/lang/String;Lcom/mobile/auth/gatewayauth/manager/base/CacheKey;Ljava/lang/String;J)V
.end method

.method private native a(Ljava/lang/String;Ljava/lang/String;J)Z
.end method

.method private synchronized native a(Ljava/lang/String;Ljava/lang/String;Landroid/util/LruCache;J)Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Landroid/util/LruCache<",
            "Ljava/lang/String;",
            "Lcom/mobile/auth/gatewayauth/manager/base/a<",
            "Ljava/lang/String;",
            ">;>;J)Z"
        }
    .end annotation
.end method

.method private native b()V
.end method

.method static synthetic b(Lcom/mobile/auth/gatewayauth/manager/TokenMaskManager;)V
    .locals 0

    :try_start_0
    invoke-direct {p0}, Lcom/mobile/auth/gatewayauth/manager/TokenMaskManager;->d()V
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

.method static synthetic b(Lcom/mobile/auth/gatewayauth/manager/TokenMaskManager;Ljava/lang/String;Ljava/lang/String;Lcom/mobile/auth/gatewayauth/manager/base/CacheKey;Ljava/lang/String;J)V
    .locals 0

    :try_start_0
    invoke-direct/range {p0 .. p6}, Lcom/mobile/auth/gatewayauth/manager/TokenMaskManager;->a(Ljava/lang/String;Ljava/lang/String;Lcom/mobile/auth/gatewayauth/manager/base/CacheKey;Ljava/lang/String;J)V
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

.method private synchronized native b(Ljava/lang/String;Ljava/lang/String;Lcom/mobile/auth/gatewayauth/manager/base/CacheKey;Ljava/lang/String;J)V
.end method

.method private native b(Lcom/mobile/auth/gatewayauth/manager/base/CacheKey;)Z
.end method

.method private synchronized native c()V
.end method

.method static synthetic c(Lcom/mobile/auth/gatewayauth/manager/TokenMaskManager;)V
    .locals 0

    :try_start_0
    invoke-direct {p0}, Lcom/mobile/auth/gatewayauth/manager/TokenMaskManager;->e()V
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

.method static synthetic d(Lcom/mobile/auth/gatewayauth/manager/TokenMaskManager;)Lcom/mobile/auth/o/a;
    .locals 1

    :try_start_0
    iget-object p0, p0, Lcom/mobile/auth/gatewayauth/manager/TokenMaskManager;->g:Lcom/mobile/auth/o/a;
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

.method private synchronized native d()V
.end method

.method static synthetic e(Lcom/mobile/auth/gatewayauth/manager/TokenMaskManager;)Lcom/mobile/auth/gatewayauth/manager/base/a;
    .locals 1

    :try_start_0
    iget-object p0, p0, Lcom/mobile/auth/gatewayauth/manager/TokenMaskManager;->i:Lcom/mobile/auth/gatewayauth/manager/base/a;
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

.method private synchronized native e()V
.end method

.method static synthetic f(Lcom/mobile/auth/gatewayauth/manager/TokenMaskManager;)Lcom/mobile/auth/gatewayauth/manager/SystemManager;
    .locals 1

    :try_start_0
    iget-object p0, p0, Lcom/mobile/auth/gatewayauth/manager/TokenMaskManager;->b:Lcom/mobile/auth/gatewayauth/manager/SystemManager;
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

.method private synchronized native f()V
.end method

.method static synthetic g(Lcom/mobile/auth/gatewayauth/manager/TokenMaskManager;)Lcom/nirvana/tools/cache/CacheHandler;
    .locals 1

    :try_start_0
    iget-object p0, p0, Lcom/mobile/auth/gatewayauth/manager/TokenMaskManager;->o:Lcom/nirvana/tools/cache/CacheHandler;
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

.method private synchronized native g()V
.end method

.method static synthetic h(Lcom/mobile/auth/gatewayauth/manager/TokenMaskManager;)Lcom/nirvana/tools/cache/CacheHandler;
    .locals 1

    :try_start_0
    iget-object p0, p0, Lcom/mobile/auth/gatewayauth/manager/TokenMaskManager;->n:Lcom/nirvana/tools/cache/CacheHandler;
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

.method private synchronized native h()V
.end method

.method private synchronized native popToken(Ljava/lang/String;Lcom/mobile/auth/gatewayauth/manager/base/CacheKey;Lcom/nirvana/tools/cache/CacheHandler;Landroid/util/LruCache;J)Ljava/lang/String;
    .annotation build Lcom/mobile/auth/gatewayauth/annotations/SafeProtector;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/mobile/auth/gatewayauth/manager/base/CacheKey;",
            "Lcom/nirvana/tools/cache/CacheHandler;",
            "Landroid/util/LruCache<",
            "Ljava/lang/String;",
            "Lcom/mobile/auth/gatewayauth/manager/base/a<",
            "Ljava/lang/String;",
            ">;>;J)",
            "Ljava/lang/String;"
        }
    .end annotation
.end method

.method private requestMask(JLjava/lang/String;Lcom/mobile/auth/gatewayauth/manager/RequestCallback;Lcom/mobile/auth/gatewayauth/manager/base/CacheKey;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V
    .locals 6
    .annotation build Lcom/mobile/auth/gatewayauth/annotations/SafeProtector;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/lang/String;",
            "Lcom/mobile/auth/gatewayauth/manager/RequestCallback<",
            "Lcom/mobile/auth/u/e;",
            "Lcom/mobile/auth/gatewayauth/manager/base/c;",
            ">;",
            "Lcom/mobile/auth/gatewayauth/manager/base/CacheKey;",
            "Ljava/lang/String;",
            "I",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    :try_start_0
    iget-object p5, p0, Lcom/mobile/auth/gatewayauth/manager/TokenMaskManager;->a:Lcom/mobile/auth/gatewayauth/manager/b;

    invoke-virtual {p5, p7}, Lcom/mobile/auth/gatewayauth/manager/b;->a(I)Z

    move-result p5

    if-eqz p5, :cond_0

    const-string p1, "-10010"

    const-string p2, "\u8be5\u529f\u80fd\u5df2\u8fbe\u6700\u5927\u8c03\u7528\u6b21\u6570"

    invoke-static {p1, p2}, Lcom/mobile/auth/gatewayauth/manager/base/c;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/mobile/auth/gatewayauth/manager/base/c;

    move-result-object p1

    invoke-interface {p4, p1}, Lcom/mobile/auth/gatewayauth/manager/RequestCallback;->onError(Ljava/lang/Object;)V

    return-void

    :cond_0
    iget-object p5, p0, Lcom/mobile/auth/gatewayauth/manager/TokenMaskManager;->a:Lcom/mobile/auth/gatewayauth/manager/b;

    invoke-virtual {p5, p7}, Lcom/mobile/auth/gatewayauth/manager/b;->b(I)V

    new-instance p5, Lcom/mobile/auth/gatewayauth/manager/TokenMaskManager$9;

    sget-object v2, Lcom/nirvana/tools/requestqueue/strategy/ThreadStrategy;->SAME_WITH_CALLABLE:Lcom/nirvana/tools/requestqueue/strategy/ThreadStrategy;

    const-wide/16 v3, 0x7d0

    move-object v0, p5

    move-object v1, p0

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/mobile/auth/gatewayauth/manager/TokenMaskManager$9;-><init>(Lcom/mobile/auth/gatewayauth/manager/TokenMaskManager;Lcom/nirvana/tools/requestqueue/strategy/ThreadStrategy;JLcom/mobile/auth/gatewayauth/manager/RequestCallback;)V

    new-instance p4, Lcom/mobile/auth/t/c;

    new-instance p6, Lcom/mobile/auth/gatewayauth/manager/TokenMaskManager$10;

    iget-object v2, p0, Lcom/mobile/auth/gatewayauth/manager/TokenMaskManager;->e:Lcom/mobile/auth/gatewayauth/manager/f;

    move-object v0, p6

    move-object v1, p0

    move-object v3, p3

    move-object v4, p8

    move-object v5, p9

    invoke-direct/range {v0 .. v5}, Lcom/mobile/auth/gatewayauth/manager/TokenMaskManager$10;-><init>(Lcom/mobile/auth/gatewayauth/manager/TokenMaskManager;Lcom/mobile/auth/gatewayauth/manager/f;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p4, p6, p5, p1, p2}, Lcom/mobile/auth/t/c;-><init>(Lcom/mobile/auth/p/e;Lcom/nirvana/tools/requestqueue/Callback;J)V

    invoke-static {}, Lcom/nirvana/tools/requestqueue/RequestQueue;->getInstance()Lcom/nirvana/tools/requestqueue/RequestQueue;

    move-result-object p1

    invoke-virtual {p1, p4}, Lcom/nirvana/tools/requestqueue/RequestQueue;->pushRequest(Lcom/nirvana/tools/requestqueue/Request;)V
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


# virtual methods
.method public native a(Lcom/mobile/auth/gatewayauth/manager/base/CacheKey;)Lcom/mobile/auth/gatewayauth/model/LoginPhoneInfo;
.end method

.method public synchronized native a()V
.end method

.method public native a(JLjava/lang/String;Lcom/mobile/auth/gatewayauth/manager/RequestCallback;Lcom/mobile/auth/gatewayauth/manager/base/CacheKey;JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/lang/String;",
            "Lcom/mobile/auth/gatewayauth/manager/RequestCallback<",
            "Lcom/mobile/auth/gatewayauth/manager/base/c;",
            "Lcom/mobile/auth/gatewayauth/manager/base/c;",
            ">;",
            "Lcom/mobile/auth/gatewayauth/manager/base/CacheKey;",
            "J",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation
.end method

.method public native a(JLjava/lang/String;Lcom/mobile/auth/gatewayauth/manager/RequestCallback;Lcom/mobile/auth/gatewayauth/manager/base/CacheKey;Ljava/lang/String;JILjava/lang/String;Ljava/lang/String;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/lang/String;",
            "Lcom/mobile/auth/gatewayauth/manager/RequestCallback<",
            "Lcom/mobile/auth/gatewayauth/manager/base/c;",
            "Lcom/mobile/auth/gatewayauth/manager/base/c;",
            ">;",
            "Lcom/mobile/auth/gatewayauth/manager/base/CacheKey;",
            "Ljava/lang/String;",
            "JI",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation
.end method

.method public native b(JLjava/lang/String;Lcom/mobile/auth/gatewayauth/manager/RequestCallback;Lcom/mobile/auth/gatewayauth/manager/base/CacheKey;JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/lang/String;",
            "Lcom/mobile/auth/gatewayauth/manager/RequestCallback<",
            "Ljava/lang/String;",
            "Lcom/mobile/auth/gatewayauth/manager/base/c;",
            ">;",
            "Lcom/mobile/auth/gatewayauth/manager/base/CacheKey;",
            "J",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation
.end method

.method public native updateMask(JLjava/lang/String;Lcom/mobile/auth/gatewayauth/manager/RequestCallback;Lcom/mobile/auth/gatewayauth/manager/base/CacheKey;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .annotation build Lcom/mobile/auth/gatewayauth/annotations/SafeProtector;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/lang/String;",
            "Lcom/mobile/auth/gatewayauth/manager/RequestCallback<",
            "Lcom/mobile/auth/gatewayauth/manager/base/c;",
            "Lcom/mobile/auth/gatewayauth/manager/base/c;",
            ">;",
            "Lcom/mobile/auth/gatewayauth/manager/base/CacheKey;",
            "I",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation
.end method
