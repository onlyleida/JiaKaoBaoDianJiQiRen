.class public final Lkotlinx/coroutines/debug/internal/c;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lkotlinx/coroutines/debug/internal/c$a;
    }
.end annotation


# static fields
.field private static final a:Lkotlinx/coroutines/debug/internal/ConcurrentWeakMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlinx/coroutines/debug/internal/ConcurrentWeakMap<",
            "Lkotlinx/coroutines/debug/internal/c$a<",
            "*>;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private static final b:Lkotlin/jvm/b/l;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/b/l<",
            "Ljava/lang/Boolean;",
            "Lkotlin/v;",
            ">;"
        }
    .end annotation
.end field

.field private static final c:Lkotlinx/coroutines/debug/internal/ConcurrentWeakMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlinx/coroutines/debug/internal/ConcurrentWeakMap<",
            "Lkotlin/coroutines/jvm/internal/c;",
            "Lkotlinx/coroutines/debug/internal/b;",
            ">;"
        }
    .end annotation
.end field

.field public static final d:Lkotlinx/coroutines/debug/internal/c;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .line 1
    new-instance v0, Lkotlinx/coroutines/debug/internal/c;

    invoke-direct {v0}, Lkotlinx/coroutines/debug/internal/c;-><init>()V

    sput-object v0, Lkotlinx/coroutines/debug/internal/c;->d:Lkotlinx/coroutines/debug/internal/c;

    .line 2
    new-instance v1, Ljava/text/SimpleDateFormat;

    const-string v2, "yyyy/MM/dd HH:mm:ss"

    invoke-direct {v1, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 3
    new-instance v1, Lkotlinx/coroutines/debug/internal/ConcurrentWeakMap;

    const/4 v2, 0x0

    const/4 v3, 0x1

    const/4 v4, 0x0

    invoke-direct {v1, v2, v3, v4}, Lkotlinx/coroutines/debug/internal/ConcurrentWeakMap;-><init>(ZILkotlin/jvm/internal/o;)V

    sput-object v1, Lkotlinx/coroutines/debug/internal/c;->a:Lkotlinx/coroutines/debug/internal/ConcurrentWeakMap;

    .line 4
    new-instance v1, Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-direct {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;-><init>()V

    .line 5
    invoke-direct {v0}, Lkotlinx/coroutines/debug/internal/c;->d()Lkotlin/jvm/b/l;

    move-result-object v0

    sput-object v0, Lkotlinx/coroutines/debug/internal/c;->b:Lkotlin/jvm/b/l;

    .line 6
    new-instance v0, Lkotlinx/coroutines/debug/internal/ConcurrentWeakMap;

    invoke-direct {v0, v3}, Lkotlinx/coroutines/debug/internal/ConcurrentWeakMap;-><init>(Z)V

    sput-object v0, Lkotlinx/coroutines/debug/internal/c;->c:Lkotlinx/coroutines/debug/internal/ConcurrentWeakMap;

    const-class v0, Lkotlinx/coroutines/debug/internal/d;

    const-string v1, "sequenceNumber"

    invoke-static {v0, v1}, Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;->newUpdater(Ljava/lang/Class;Ljava/lang/String;)Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final synthetic a(Lkotlinx/coroutines/debug/internal/c;)Lkotlinx/coroutines/debug/internal/ConcurrentWeakMap;
    .locals 0

    .line 1
    sget-object p0, Lkotlinx/coroutines/debug/internal/c;->c:Lkotlinx/coroutines/debug/internal/ConcurrentWeakMap;

    return-object p0
.end method

.method public static final synthetic b(Lkotlinx/coroutines/debug/internal/c;Lkotlinx/coroutines/debug/internal/c$a;)Z
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lkotlinx/coroutines/debug/internal/c;->e(Lkotlinx/coroutines/debug/internal/c$a;)Z

    const/4 p0, 0x0

    throw p0
.end method

.method public static final synthetic c(Lkotlinx/coroutines/debug/internal/c;Lkotlinx/coroutines/debug/internal/c$a;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lkotlinx/coroutines/debug/internal/c;->f(Lkotlinx/coroutines/debug/internal/c$a;)V

    const/4 p0, 0x0

    throw p0
.end method

.method private final d()Lkotlin/jvm/b/l;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlin/jvm/b/l<",
            "Ljava/lang/Boolean;",
            "Lkotlin/v;",
            ">;"
        }
    .end annotation

    .line 1
    :try_start_0
    sget-object v0, Lkotlin/Result;->Companion:Lkotlin/Result$a;

    const-string v0, "kotlinx.coroutines.debug.internal.ByteBuddyDynamicAttach"

    .line 2
    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 3
    invoke-virtual {v0}, Ljava/lang/Class;->getConstructors()[Ljava/lang/reflect/Constructor;

    move-result-object v0

    const/4 v1, 0x0

    aget-object v0, v0, v1

    new-array v1, v1, [Ljava/lang/Object;

    .line 4
    invoke-virtual {v0, v1}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lkotlin/jvm/internal/z;->e(Ljava/lang/Object;I)Ljava/lang/Object;

    check-cast v0, Lkotlin/jvm/b/l;

    .line 5
    invoke-static {v0}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_0

    .line 6
    :cond_0
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "null cannot be cast to non-null type (kotlin.Boolean) -> kotlin.Unit"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    move-exception v0

    .line 7
    sget-object v1, Lkotlin/Result;->Companion:Lkotlin/Result$a;

    invoke-static {v0}, Lkotlin/k;->a(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 8
    :goto_0
    invoke-static {v0}, Lkotlin/Result;->isFailure-impl(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v0, 0x0

    :cond_1
    check-cast v0, Lkotlin/jvm/b/l;

    return-object v0
.end method

.method private final e(Lkotlinx/coroutines/debug/internal/c$a;)Z
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlinx/coroutines/debug/internal/c$a<",
            "*>;)Z"
        }
    .end annotation

    .line 1
    iget-object p1, p1, Lkotlinx/coroutines/debug/internal/c$a;->b:Lkotlinx/coroutines/debug/internal/b;

    invoke-virtual {p1}, Lkotlinx/coroutines/debug/internal/b;->a()Lkotlin/coroutines/CoroutineContext;

    const/4 p1, 0x0

    throw p1
.end method

.method private final f(Lkotlinx/coroutines/debug/internal/c$a;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlinx/coroutines/debug/internal/c$a<",
            "*>;)V"
        }
    .end annotation

    .line 1
    sget-object v0, Lkotlinx/coroutines/debug/internal/c;->a:Lkotlinx/coroutines/debug/internal/ConcurrentWeakMap;

    invoke-virtual {v0, p1}, Lkotlinx/coroutines/debug/internal/ConcurrentWeakMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    iget-object p1, p1, Lkotlinx/coroutines/debug/internal/c$a;->b:Lkotlinx/coroutines/debug/internal/b;

    invoke-virtual {p1}, Lkotlinx/coroutines/debug/internal/b;->b()Lkotlin/coroutines/jvm/internal/c;

    const/4 p1, 0x0

    throw p1
.end method
