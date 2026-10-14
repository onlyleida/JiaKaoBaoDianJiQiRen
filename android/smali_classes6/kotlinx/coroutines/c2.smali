.class final Lkotlinx/coroutines/c2;
.super Lkotlinx/coroutines/n2;
.source "SourceFile"


# instance fields
.field private final d:Lkotlin/coroutines/c;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/coroutines/c<",
            "Lkotlin/v;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lkotlin/coroutines/CoroutineContext;Lkotlin/jvm/b/p;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/coroutines/CoroutineContext;",
            "Lkotlin/jvm/b/p<",
            "-",
            "Lkotlinx/coroutines/i0;",
            "-",
            "Lkotlin/coroutines/c<",
            "-",
            "Lkotlin/v;",
            ">;+",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, p1, v0}, Lkotlinx/coroutines/n2;-><init>(Lkotlin/coroutines/CoroutineContext;Z)V

    .line 2
    invoke-static {p2, p0, p0}, Lkotlin/coroutines/intrinsics/a;->b(Lkotlin/jvm/b/p;Ljava/lang/Object;Lkotlin/coroutines/c;)Lkotlin/coroutines/c;

    move-result-object p1

    iput-object p1, p0, Lkotlinx/coroutines/c2;->d:Lkotlin/coroutines/c;

    return-void
.end method


# virtual methods
.method protected V0()V
    .locals 1

    .line 1
    iget-object v0, p0, Lkotlinx/coroutines/c2;->d:Lkotlin/coroutines/c;

    invoke-static {v0, p0}, Lkotlinx/coroutines/a3/a;->a(Lkotlin/coroutines/c;Lkotlin/coroutines/c;)V

    return-void
.end method
