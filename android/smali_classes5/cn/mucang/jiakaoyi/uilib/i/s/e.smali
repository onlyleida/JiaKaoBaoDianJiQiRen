.class public final Lcn/mucang/jiakaoyi/uilib/i/s/e;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u001c\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\t\n\u0002\u0010\u000b\n\u0002\u0008\u0003\u0008\u00c6\u0002\u0018\u00002\u00020\u0001B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002J\u0010\u0010\u000c\u001a\u0004\u0018\u00010\u00042\u0006\u0010\r\u001a\u00020\u000eJ\n\u0010\u000f\u001a\u0004\u0018\u00010\u0004H\u0002J\n\u0010\u0010\u001a\u0004\u0018\u00010\u0004H\u0002R\u001c\u0010\u0003\u001a\u0004\u0018\u00010\u0004X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0005\u0010\u0006\"\u0004\u0008\u0007\u0010\u0008R\u001c\u0010\t\u001a\u0004\u0018\u00010\u0004X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\n\u0010\u0006\"\u0004\u0008\u000b\u0010\u0008\u00a8\u0006\u0011"
    }
    d2 = {
        "Lcn/mucang/jiakaoyi/uilib/api/cache/JkyCacheConfig;",
        "",
        "()V",
        "cacheConfig",
        "Lcn/mucang/android/core/api/cache/CacheConfig;",
        "getCacheConfig",
        "()Lcn/mucang/android/core/api/cache/CacheConfig;",
        "setCacheConfig",
        "(Lcn/mucang/android/core/api/cache/CacheConfig;)V",
        "noCacheConfig",
        "getNoCacheConfig",
        "setNoCacheConfig",
        "createConfig",
        "needCache",
        "",
        "createDefault",
        "createNoCache",
        "uilib_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x5,
        0x1
    }
    xi = 0x30
.end annotation


# static fields
.field public static final a:Lcn/mucang/jiakaoyi/uilib/i/s/e;

.field private static b:Lcn/mucang/android/core/api/cache/c;

.field private static c:Lcn/mucang/android/core/api/cache/c;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcn/mucang/jiakaoyi/uilib/i/s/e;

    invoke-direct {v0}, Lcn/mucang/jiakaoyi/uilib/i/s/e;-><init>()V

    sput-object v0, Lcn/mucang/jiakaoyi/uilib/i/s/e;->a:Lcn/mucang/jiakaoyi/uilib/i/s/e;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private final b()Lcn/mucang/android/core/api/cache/c;
    .locals 4

    .line 1
    :try_start_0
    invoke-static {}, Lcn/mucang/android/core/config/MucangConfig;->getContext()Landroid/app/Application;

    move-result-object v0

    invoke-static {v0}, Lcn/mucang/android/core/api/cache/i;->a(Landroid/content/Context;)Ljava/io/File;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    .line 2
    :cond_0
    new-instance v1, Lcn/mucang/android/core/api/cache/impl/d$b;

    invoke-direct {v1}, Lcn/mucang/android/core/api/cache/impl/d$b;-><init>()V

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcn/mucang/android/core/api/cache/impl/d$b;->b(Ljava/lang/String;)Lcn/mucang/android/core/api/cache/impl/d$b;

    invoke-virtual {v1}, Lcn/mucang/android/core/api/cache/impl/d$b;->a()Lcn/mucang/android/core/api/cache/impl/d;

    move-result-object v0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    if-nez v0, :cond_1

    .line 3
    new-instance v0, Lcn/mucang/android/core/api/cache/c$a;

    invoke-direct {v0}, Lcn/mucang/android/core/api/cache/c$a;-><init>()V

    invoke-virtual {v0}, Lcn/mucang/android/core/api/cache/c$a;->a()Lcn/mucang/android/core/api/cache/c;

    move-result-object v0

    return-object v0

    .line 4
    :cond_1
    new-instance v1, Lcn/mucang/android/core/api/cache/c$a;

    invoke-direct {v1}, Lcn/mucang/android/core/api/cache/c$a;-><init>()V

    .line 5
    sget-object v2, Lcn/mucang/android/core/api/cache/CacheMode;->REMOTE_FIRST:Lcn/mucang/android/core/api/cache/CacheMode;

    invoke-virtual {v1, v2}, Lcn/mucang/android/core/api/cache/c$a;->c(Lcn/mucang/android/core/api/cache/CacheMode;)Lcn/mucang/android/core/api/cache/c$a;

    .line 6
    invoke-virtual {v1, v0}, Lcn/mucang/android/core/api/cache/c$a;->d(Lcn/mucang/android/core/api/cache/e;)Lcn/mucang/android/core/api/cache/c$a;

    .line 7
    new-instance v0, Lcn/mucang/jiakaoyi/uilib/i/s/f;

    invoke-direct {v0}, Lcn/mucang/jiakaoyi/uilib/i/s/f;-><init>()V

    invoke-virtual {v1, v0}, Lcn/mucang/android/core/api/cache/c$a;->b(Lcn/mucang/android/core/api/cache/d;)Lcn/mucang/android/core/api/cache/c$a;

    sget-object v0, Lcn/mucang/jiakaoyi/uilib/i/s/c;->a:Lcn/mucang/jiakaoyi/uilib/i/s/c;

    .line 8
    invoke-virtual {v1, v0}, Lcn/mucang/android/core/api/cache/c$a;->e(Lcn/mucang/android/core/api/cache/f;)Lcn/mucang/android/core/api/cache/c$a;

    sget-object v0, Lcn/mucang/jiakaoyi/uilib/i/s/a;->a:Lcn/mucang/jiakaoyi/uilib/i/s/a;

    .line 9
    invoke-virtual {v1, v0}, Lcn/mucang/android/core/api/cache/c$a;->f(Lcn/mucang/android/core/api/cache/g;)Lcn/mucang/android/core/api/cache/c$a;

    const-wide/16 v2, 0x2710

    .line 10
    invoke-virtual {v1, v2, v3}, Lcn/mucang/android/core/api/cache/c$a;->g(J)Lcn/mucang/android/core/api/cache/c$a;

    const/4 v0, 0x1

    .line 11
    invoke-virtual {v1, v0}, Lcn/mucang/android/core/api/cache/c$a;->h(Z)Lcn/mucang/android/core/api/cache/c$a;

    .line 12
    invoke-virtual {v1}, Lcn/mucang/android/core/api/cache/c$a;->a()Lcn/mucang/android/core/api/cache/c;

    move-result-object v0

    return-object v0

    .line 13
    :catch_0
    new-instance v0, Lcn/mucang/android/core/api/cache/c$a;

    invoke-direct {v0}, Lcn/mucang/android/core/api/cache/c$a;-><init>()V

    invoke-virtual {v0}, Lcn/mucang/android/core/api/cache/c$a;->a()Lcn/mucang/android/core/api/cache/c;

    move-result-object v0

    return-object v0
.end method

.method private static final c(Lcn/mucang/android/core/api/ApiResponse;)I
    .locals 0

    const p0, 0x1e13380

    return p0
.end method

.method private static final d(Lcn/mucang/android/core/api/ApiResponse;)I
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method private final e()Lcn/mucang/android/core/api/cache/c;
    .locals 4

    .line 1
    :try_start_0
    invoke-static {}, Lcn/mucang/android/core/config/MucangConfig;->getContext()Landroid/app/Application;

    move-result-object v0

    invoke-static {v0}, Lcn/mucang/android/core/api/cache/i;->a(Landroid/content/Context;)Ljava/io/File;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    .line 2
    :cond_0
    new-instance v1, Lcn/mucang/android/core/api/cache/impl/d$b;

    invoke-direct {v1}, Lcn/mucang/android/core/api/cache/impl/d$b;-><init>()V

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcn/mucang/android/core/api/cache/impl/d$b;->b(Ljava/lang/String;)Lcn/mucang/android/core/api/cache/impl/d$b;

    invoke-virtual {v1}, Lcn/mucang/android/core/api/cache/impl/d$b;->a()Lcn/mucang/android/core/api/cache/impl/d;

    move-result-object v0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    if-nez v0, :cond_1

    .line 3
    new-instance v0, Lcn/mucang/android/core/api/cache/c$a;

    invoke-direct {v0}, Lcn/mucang/android/core/api/cache/c$a;-><init>()V

    invoke-virtual {v0}, Lcn/mucang/android/core/api/cache/c$a;->a()Lcn/mucang/android/core/api/cache/c;

    move-result-object v0

    return-object v0

    .line 4
    :cond_1
    new-instance v1, Lcn/mucang/android/core/api/cache/c$a;

    invoke-direct {v1}, Lcn/mucang/android/core/api/cache/c$a;-><init>()V

    .line 5
    sget-object v2, Lcn/mucang/android/core/api/cache/CacheMode;->REMOTE_FIRST:Lcn/mucang/android/core/api/cache/CacheMode;

    invoke-virtual {v1, v2}, Lcn/mucang/android/core/api/cache/c$a;->c(Lcn/mucang/android/core/api/cache/CacheMode;)Lcn/mucang/android/core/api/cache/c$a;

    .line 6
    invoke-virtual {v1, v0}, Lcn/mucang/android/core/api/cache/c$a;->d(Lcn/mucang/android/core/api/cache/e;)Lcn/mucang/android/core/api/cache/c$a;

    .line 7
    new-instance v0, Lcn/mucang/jiakaoyi/uilib/i/s/f;

    invoke-direct {v0}, Lcn/mucang/jiakaoyi/uilib/i/s/f;-><init>()V

    invoke-virtual {v1, v0}, Lcn/mucang/android/core/api/cache/c$a;->b(Lcn/mucang/android/core/api/cache/d;)Lcn/mucang/android/core/api/cache/c$a;

    sget-object v0, Lcn/mucang/jiakaoyi/uilib/i/s/d;->a:Lcn/mucang/jiakaoyi/uilib/i/s/d;

    .line 8
    invoke-virtual {v1, v0}, Lcn/mucang/android/core/api/cache/c$a;->e(Lcn/mucang/android/core/api/cache/f;)Lcn/mucang/android/core/api/cache/c$a;

    sget-object v0, Lcn/mucang/jiakaoyi/uilib/i/s/b;->a:Lcn/mucang/jiakaoyi/uilib/i/s/b;

    .line 9
    invoke-virtual {v1, v0}, Lcn/mucang/android/core/api/cache/c$a;->f(Lcn/mucang/android/core/api/cache/g;)Lcn/mucang/android/core/api/cache/c$a;

    const-wide/16 v2, 0x2710

    .line 10
    invoke-virtual {v1, v2, v3}, Lcn/mucang/android/core/api/cache/c$a;->g(J)Lcn/mucang/android/core/api/cache/c$a;

    const/4 v0, 0x1

    .line 11
    invoke-virtual {v1, v0}, Lcn/mucang/android/core/api/cache/c$a;->h(Z)Lcn/mucang/android/core/api/cache/c$a;

    .line 12
    invoke-virtual {v1}, Lcn/mucang/android/core/api/cache/c$a;->a()Lcn/mucang/android/core/api/cache/c;

    move-result-object v0

    return-object v0

    .line 13
    :catch_0
    new-instance v0, Lcn/mucang/android/core/api/cache/c$a;

    invoke-direct {v0}, Lcn/mucang/android/core/api/cache/c$a;-><init>()V

    invoke-virtual {v0}, Lcn/mucang/android/core/api/cache/c$a;->a()Lcn/mucang/android/core/api/cache/c;

    move-result-object v0

    return-object v0
.end method

.method private static final f(Lcn/mucang/android/core/api/ApiResponse;)I
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method private static final g(Lcn/mucang/android/core/api/ApiResponse;)I
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public static synthetic h(Lcn/mucang/android/core/api/ApiResponse;)I
    .locals 0

    invoke-static {p0}, Lcn/mucang/jiakaoyi/uilib/i/s/e;->d(Lcn/mucang/android/core/api/ApiResponse;)I

    move-result p0

    return p0
.end method

.method public static synthetic i(Lcn/mucang/android/core/api/ApiResponse;)I
    .locals 0

    invoke-static {p0}, Lcn/mucang/jiakaoyi/uilib/i/s/e;->g(Lcn/mucang/android/core/api/ApiResponse;)I

    move-result p0

    return p0
.end method

.method public static synthetic j(Lcn/mucang/android/core/api/ApiResponse;)I
    .locals 0

    invoke-static {p0}, Lcn/mucang/jiakaoyi/uilib/i/s/e;->c(Lcn/mucang/android/core/api/ApiResponse;)I

    move-result p0

    return p0
.end method

.method public static synthetic k(Lcn/mucang/android/core/api/ApiResponse;)I
    .locals 0

    invoke-static {p0}, Lcn/mucang/jiakaoyi/uilib/i/s/e;->f(Lcn/mucang/android/core/api/ApiResponse;)I

    move-result p0

    return p0
.end method


# virtual methods
.method public final a(Z)Lcn/mucang/android/core/api/cache/c;
    .locals 0

    if-eqz p1, :cond_1

    .line 1
    sget-object p1, Lcn/mucang/jiakaoyi/uilib/i/s/e;->b:Lcn/mucang/android/core/api/cache/c;

    if-nez p1, :cond_0

    .line 2
    invoke-direct {p0}, Lcn/mucang/jiakaoyi/uilib/i/s/e;->b()Lcn/mucang/android/core/api/cache/c;

    move-result-object p1

    sput-object p1, Lcn/mucang/jiakaoyi/uilib/i/s/e;->b:Lcn/mucang/android/core/api/cache/c;

    .line 3
    :cond_0
    sget-object p1, Lcn/mucang/jiakaoyi/uilib/i/s/e;->b:Lcn/mucang/android/core/api/cache/c;

    goto :goto_0

    .line 4
    :cond_1
    sget-object p1, Lcn/mucang/jiakaoyi/uilib/i/s/e;->c:Lcn/mucang/android/core/api/cache/c;

    if-nez p1, :cond_2

    .line 5
    invoke-direct {p0}, Lcn/mucang/jiakaoyi/uilib/i/s/e;->e()Lcn/mucang/android/core/api/cache/c;

    move-result-object p1

    sput-object p1, Lcn/mucang/jiakaoyi/uilib/i/s/e;->c:Lcn/mucang/android/core/api/cache/c;

    .line 6
    :cond_2
    sget-object p1, Lcn/mucang/jiakaoyi/uilib/i/s/e;->c:Lcn/mucang/android/core/api/cache/c;

    :goto_0
    return-object p1
.end method
