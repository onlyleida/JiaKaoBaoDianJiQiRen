.class public final Lkotlinx/coroutines/w0;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final a:Lkotlinx/coroutines/CoroutineDispatcher;

.field private static final b:Lkotlinx/coroutines/CoroutineDispatcher;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    invoke-static {}, Lkotlinx/coroutines/d0;->a()Lkotlinx/coroutines/CoroutineDispatcher;

    move-result-object v0

    sput-object v0, Lkotlinx/coroutines/w0;->a:Lkotlinx/coroutines/CoroutineDispatcher;

    .line 2
    sget-object v0, Lkotlinx/coroutines/w2;->b:Lkotlinx/coroutines/w2;

    .line 3
    sget-object v0, Lkotlinx/coroutines/scheduling/b;->h:Lkotlinx/coroutines/scheduling/b;

    invoke-virtual {v0}, Lkotlinx/coroutines/scheduling/b;->E()Lkotlinx/coroutines/CoroutineDispatcher;

    move-result-object v0

    sput-object v0, Lkotlinx/coroutines/w0;->b:Lkotlinx/coroutines/CoroutineDispatcher;

    return-void
.end method

.method public static final a()Lkotlinx/coroutines/CoroutineDispatcher;
    .locals 1

    .line 1
    sget-object v0, Lkotlinx/coroutines/w0;->a:Lkotlinx/coroutines/CoroutineDispatcher;

    return-object v0
.end method

.method public static final b()Lkotlinx/coroutines/CoroutineDispatcher;
    .locals 1

    .line 1
    sget-object v0, Lkotlinx/coroutines/w0;->b:Lkotlinx/coroutines/CoroutineDispatcher;

    return-object v0
.end method

.method public static final c()Lkotlinx/coroutines/d2;
    .locals 1

    .line 1
    sget-object v0, Lkotlinx/coroutines/internal/r;->b:Lkotlinx/coroutines/d2;

    return-object v0
.end method
