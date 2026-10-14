.class public interface abstract Lkotlinx/coroutines/t1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lkotlin/coroutines/CoroutineContext$a;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lkotlinx/coroutines/t1$a;,
        Lkotlinx/coroutines/t1$b;
    }
.end annotation


# static fields
.field public static final R:Lkotlinx/coroutines/t1$b;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    sget-object v0, Lkotlinx/coroutines/t1$b;->a:Lkotlinx/coroutines/t1$b;

    sput-object v0, Lkotlinx/coroutines/t1;->R:Lkotlinx/coroutines/t1$b;

    return-void
.end method


# virtual methods
.method public abstract I(Lkotlinx/coroutines/s;)Lkotlinx/coroutines/q;
.end method

.method public abstract a(Ljava/util/concurrent/CancellationException;)V
.end method

.method public abstract h(ZZLkotlin/jvm/b/l;)Lkotlinx/coroutines/y0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ZZ",
            "Lkotlin/jvm/b/l<",
            "-",
            "Ljava/lang/Throwable;",
            "Lkotlin/v;",
            ">;)",
            "Lkotlinx/coroutines/y0;"
        }
    .end annotation
.end method

.method public abstract i()Ljava/util/concurrent/CancellationException;
.end method

.method public abstract isActive()Z
.end method

.method public abstract isCancelled()Z
.end method

.method public abstract n(Lkotlin/jvm/b/l;)Lkotlinx/coroutines/y0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/b/l<",
            "-",
            "Ljava/lang/Throwable;",
            "Lkotlin/v;",
            ">;)",
            "Lkotlinx/coroutines/y0;"
        }
    .end annotation
.end method

.method public abstract start()Z
.end method

.method public abstract x(Lkotlin/coroutines/c;)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/coroutines/c<",
            "-",
            "Lkotlin/v;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation
.end method
