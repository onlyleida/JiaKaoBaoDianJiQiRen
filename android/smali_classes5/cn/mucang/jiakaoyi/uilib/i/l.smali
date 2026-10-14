.class public Lcn/mucang/jiakaoyi/uilib/i/l;
.super Lcn/mucang/jiakaoyi/uilib/i/h;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010 \n\u0002\u0008\u0002\u0008\u0016\u0018\u0000 \u000f2\u00020\u0001:\u0001\u000fB\u0005\u00a2\u0006\u0002\u0010\u0002J\u0008\u0010\u0003\u001a\u00020\u0004H\u0016J\u0012\u0010\u0005\u001a\u0004\u0018\u00010\u00062\u0006\u0010\u0007\u001a\u00020\u0008H\u0003J+\u0010\u0005\u001a\u0004\u0018\u0001H\t\"\u0004\u0008\u0000\u0010\t2\u0006\u0010\u0007\u001a\u00020\u00082\u000c\u0010\n\u001a\u0008\u0012\u0004\u0012\u0002H\t0\u000bH\u0007\u00a2\u0006\u0002\u0010\u000cJ,\u0010\r\u001a\n\u0012\u0004\u0012\u0002H\t\u0018\u00010\u000e\"\u0004\u0008\u0000\u0010\t2\u0006\u0010\u0007\u001a\u00020\u00082\u000c\u0010\n\u001a\u0008\u0012\u0004\u0012\u0002H\t0\u000bH\u0007\u00a8\u0006\u0010"
    }
    d2 = {
        "Lcn/mucang/jiakaoyi/uilib/api/RemoteConfigApi;",
        "Lcn/mucang/jiakaoyi/uilib/api/JBaseCacheApi;",
        "()V",
        "getCacheConfig",
        "Lcn/mucang/android/core/api/cache/CacheConfig;",
        "getConfig",
        "Lcn/mucang/android/core/api/ApiResponse;",
        "key",
        "",
        "T",
        "clazz",
        "Ljava/lang/Class;",
        "(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;",
        "getConfigList",
        "",
        "Companion",
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


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcn/mucang/jiakaoyi/uilib/i/h;-><init>()V

    return-void
.end method

.method private final c(Ljava/lang/String;)Lcn/mucang/android/core/api/ApiResponse;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcn/mucang/android/core/api/exception/ApiException;,
            Lcn/mucang/android/core/api/exception/HttpException;,
            Lcn/mucang/android/core/api/exception/InternalException;
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lcn/mucang/jiakaoyi/uilib/i/l;->b()Lcn/mucang/android/core/api/cache/c;

    move-result-object v0

    const-string v1, "/api/open/config/get-config.htm?key="

    invoke-static {v1, p1}, Lkotlin/jvm/internal/r;->m(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, v0, p1}, Lcn/mucang/android/core/api/cache/b;->httpGet(Lcn/mucang/android/core/api/cache/c;Ljava/lang/String;)Lcn/mucang/android/core/api/ApiResponse;

    move-result-object p1

    return-object p1
.end method


# virtual methods
.method public b()Lcn/mucang/android/core/api/cache/c;
    .locals 2

    .line 1
    iget-object v0, p0, Lcn/mucang/android/core/api/cache/b;->defaultCacheConfig:Lcn/mucang/android/core/api/cache/c;

    const-string v1, "defaultCacheConfig"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/r;->d(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v0
.end method

.method public final d(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            "Ljava/lang/Class<",
            "TT;>;)TT;"
        }
    .end annotation

    const-string v0, "key"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "clazz"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 1
    :try_start_0
    invoke-direct {p0, p1}, Lcn/mucang/jiakaoyi/uilib/i/l;->c(Ljava/lang/String;)Lcn/mucang/android/core/api/ApiResponse;

    move-result-object v1

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {v1, p2}, Lcn/mucang/android/core/api/ApiResponse;->getData(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-object v0

    :catch_0
    move-exception p2

    const-string v1, "\u83b7\u53d6Misc\u914d\u7f6e\u5931\u8d25:"

    .line 2
    invoke-static {v1, p1}, Lkotlin/jvm/internal/r;->m(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const-string v1, "RemoteConfigApi"

    invoke-static {v1, p1, p2}, Lcn/mucang/android/core/utils/t;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-object v0
.end method
