.class public final Lcn/mucang/android/core/identity/cache/a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000&\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\u0008\u00c1\u0002\u0018\u00002\u00020\u0001B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002J\u001a\u0010\u0005\u001a\u00020\u00062\u0006\u0010\u0007\u001a\u00020\u00042\u0008\u0010\u0008\u001a\u0004\u0018\u00010\u0004H\u0007J0\u0010\t\u001a\u0004\u0018\u00010\u00042\u0006\u0010\u0007\u001a\u00020\u00042\u0008\u0008\u0002\u0010\n\u001a\u00020\u000b2\u0012\u0008\u0002\u0010\u000c\u001a\u000c\u0012\u0006\u0012\u0004\u0018\u00010\u0004\u0018\u00010\rH\u0007R\u000e\u0010\u0003\u001a\u00020\u0004X\u0082T\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u000e"
    }
    d2 = {
        "Lcn/mucang/android/core/identity/cache/CacheHelper;",
        "",
        "()V",
        "CACHE_HELPER_KEY",
        "",
        "cached",
        "",
        "key",
        "value",
        "getCached",
        "cacheInvalidStrategy",
        "Lcn/mucang/android/core/identity/cache/CacheInvalidStrategy;",
        "provider",
        "Lkotlin/Function0;",
        "core-lib_release"
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
.field public static final a:Lcn/mucang/android/core/identity/cache/a;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcn/mucang/android/core/identity/cache/a;

    invoke-direct {v0}, Lcn/mucang/android/core/identity/cache/a;-><init>()V

    sput-object v0, Lcn/mucang/android/core/identity/cache/a;->a:Lcn/mucang/android/core/identity/cache/a;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    const-string v0, "key"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    new-instance v0, Lcn/mucang/android/core/identity/cache/CacheItem;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-direct {v0, v1, v2, p1}, Lcn/mucang/android/core/identity/cache/CacheItem;-><init>(JLjava/lang/String;)V

    invoke-static {v0}, Lcom/alibaba/fastjson/JSON;->toJSONString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "_cache_helper_file_key_"

    .line 2
    invoke-static {v0, p0, p1}, Lcn/mucang/android/core/utils/j0;->k(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static final b(Ljava/lang/String;Lcn/mucang/android/core/identity/cache/b;Lkotlin/jvm/b/a;)Ljava/lang/String;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcn/mucang/android/core/identity/cache/b;",
            "Lkotlin/jvm/b/a<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    const-string v0, "key"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "cacheInvalidStrategy"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "_cache_helper_file_key_"

    const/4 v1, 0x0

    .line 1
    invoke-static {v0, p0, v1}, Lcn/mucang/android/core/utils/j0;->f(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 2
    invoke-static {v0}, Lkotlin/text/l;->r(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v2, 0x1

    :goto_1
    if-eqz v2, :cond_4

    if-nez p2, :cond_2

    move-object p1, v1

    goto :goto_2

    .line 3
    :cond_2
    invoke-interface {p2}, Lkotlin/jvm/b/a;->invoke()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    :goto_2
    if-nez p1, :cond_3

    return-object v1

    .line 4
    :cond_3
    invoke-static {p0, p1}, Lcn/mucang/android/core/identity/cache/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    return-object p1

    .line 5
    :cond_4
    :try_start_0
    sget-object v2, Lkotlin/Result;->Companion:Lkotlin/Result$a;

    .line 6
    const-class v2, Lcn/mucang/android/core/identity/cache/CacheItem;

    invoke-static {v0, v2}, Lcom/alibaba/fastjson/JSON;->parseObject(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcn/mucang/android/core/identity/cache/CacheItem;

    .line 7
    invoke-static {v0}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_3

    :catchall_0
    move-exception v0

    sget-object v2, Lkotlin/Result;->Companion:Lkotlin/Result$a;

    invoke-static {v0}, Lkotlin/k;->a(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 8
    :goto_3
    invoke-static {v0}, Lkotlin/Result;->isFailure-impl(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    move-object v0, v1

    :cond_5
    check-cast v0, Lcn/mucang/android/core/identity/cache/CacheItem;

    .line 9
    invoke-interface {p1, v0}, Lcn/mucang/android/core/identity/cache/b;->a(Lcn/mucang/android/core/identity/cache/CacheItem;)Z

    move-result p1

    if-eqz p1, :cond_8

    if-nez p2, :cond_6

    move-object p1, v1

    goto :goto_4

    .line 10
    :cond_6
    invoke-interface {p2}, Lkotlin/jvm/b/a;->invoke()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    :goto_4
    if-nez p1, :cond_7

    return-object v1

    .line 11
    :cond_7
    invoke-static {p0, p1}, Lcn/mucang/android/core/identity/cache/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    return-object p1

    :cond_8
    if-nez v0, :cond_9

    goto :goto_5

    .line 12
    :cond_9
    invoke-virtual {v0}, Lcn/mucang/android/core/identity/cache/CacheItem;->getCachedValue()Ljava/lang/String;

    move-result-object v1

    :goto_5
    return-object v1
.end method
