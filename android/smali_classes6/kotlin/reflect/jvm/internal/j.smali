.class public final Lkotlin/reflect/jvm/internal/j;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000 \n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\u001a\u0008\u0010\u0005\u001a\u00020\u0006H\u0000\u001a\u0010\u0010\u0007\u001a\u00020\u0004*\u0006\u0012\u0002\u0008\u00030\u0008H\u0000\" \u0010\u0000\u001a\u0014\u0012\u0004\u0012\u00020\u0002\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\u00040\u00030\u0001X\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006\t"
    }
    d2 = {
        "moduleByClassLoader",
        "Ljava/util/concurrent/ConcurrentMap;",
        "Lkotlin/reflect/jvm/internal/WeakClassLoaderBox;",
        "Ljava/lang/ref/WeakReference;",
        "Lkotlin/reflect/jvm/internal/impl/descriptors/runtime/components/RuntimeModuleData;",
        "clearModuleByClassLoaderCache",
        "",
        "getOrCreateModule",
        "Ljava/lang/Class;",
        "kotlin-reflection"
    }
    k = 0x2
    mv = {
        0x1,
        0x5,
        0x1
    }
.end annotation


# static fields
.field private static final a:Ljava/util/concurrent/ConcurrentMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentMap<",
            "Lkotlin/reflect/jvm/internal/r;",
            "Ljava/lang/ref/WeakReference<",
            "Lkotlin/reflect/jvm/internal/impl/descriptors/c1/a/k;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    sput-object v0, Lkotlin/reflect/jvm/internal/j;->a:Ljava/util/concurrent/ConcurrentMap;

    return-void
.end method

.method public static final a(Ljava/lang/Class;)Lkotlin/reflect/jvm/internal/impl/descriptors/c1/a/k;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)",
            "Lkotlin/reflect/jvm/internal/impl/descriptors/c1/a/k;"
        }
    .end annotation

    const-string v0, "$this$getOrCreateModule"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-static {p0}, Lkotlin/reflect/jvm/internal/impl/descriptors/runtime/structure/ReflectClassUtilKt;->e(Ljava/lang/Class;)Ljava/lang/ClassLoader;

    move-result-object p0

    .line 2
    new-instance v0, Lkotlin/reflect/jvm/internal/r;

    invoke-direct {v0, p0}, Lkotlin/reflect/jvm/internal/r;-><init>(Ljava/lang/ClassLoader;)V

    .line 3
    sget-object v1, Lkotlin/reflect/jvm/internal/j;->a:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v1, v0}, Ljava/util/concurrent/ConcurrentMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/ref/WeakReference;

    if-eqz v2, :cond_1

    .line 4
    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lkotlin/reflect/jvm/internal/impl/descriptors/c1/a/k;

    if-eqz v3, :cond_0

    const-string p0, "it"

    invoke-static {v3, p0}, Lkotlin/jvm/internal/r;->d(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v3

    .line 5
    :cond_0
    invoke-interface {v1, v0, v2}, Ljava/util/concurrent/ConcurrentMap;->remove(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 6
    :cond_1
    sget-object v1, Lkotlin/reflect/jvm/internal/impl/descriptors/c1/a/k;->c:Lkotlin/reflect/jvm/internal/impl/descriptors/c1/a/k$a;

    invoke-virtual {v1, p0}, Lkotlin/reflect/jvm/internal/impl/descriptors/c1/a/k$a;->a(Ljava/lang/ClassLoader;)Lkotlin/reflect/jvm/internal/impl/descriptors/c1/a/k;

    move-result-object p0

    :goto_0
    const/4 v1, 0x0

    .line 7
    :try_start_0
    sget-object v2, Lkotlin/reflect/jvm/internal/j;->a:Ljava/util/concurrent/ConcurrentMap;

    new-instance v3, Ljava/lang/ref/WeakReference;

    invoke-direct {v3, p0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-interface {v2, v0, v3}, Ljava/util/concurrent/ConcurrentMap;->putIfAbsent(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/ref/WeakReference;

    if-eqz v3, :cond_3

    .line 8
    invoke-virtual {v3}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lkotlin/reflect/jvm/internal/impl/descriptors/c1/a/k;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v4, :cond_2

    .line 9
    invoke-virtual {v0, v1}, Lkotlin/reflect/jvm/internal/r;->a(Ljava/lang/ClassLoader;)V

    return-object v4

    .line 10
    :cond_2
    :try_start_1
    invoke-interface {v2, v0, v3}, Ljava/util/concurrent/ConcurrentMap;->remove(Ljava/lang/Object;Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 11
    :cond_3
    invoke-virtual {v0, v1}, Lkotlin/reflect/jvm/internal/r;->a(Ljava/lang/ClassLoader;)V

    return-object p0

    :catchall_0
    move-exception p0

    invoke-virtual {v0, v1}, Lkotlin/reflect/jvm/internal/r;->a(Ljava/lang/ClassLoader;)V

    throw p0
.end method
