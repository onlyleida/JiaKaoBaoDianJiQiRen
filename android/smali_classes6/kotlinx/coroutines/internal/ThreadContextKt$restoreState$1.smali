.class final Lkotlinx/coroutines/internal/ThreadContextKt$restoreState$1;
.super Lkotlin/jvm/internal/Lambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/b/p;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lkotlinx/coroutines/internal/ThreadContextKt;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/b/p<",
        "Lkotlinx/coroutines/internal/e0;",
        "Lkotlin/coroutines/CoroutineContext$a;",
        "Lkotlinx/coroutines/internal/e0;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000\u000e\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0004\u0010\u0006\u001a\u00020\u00002\u0006\u0010\u0001\u001a\u00020\u00002\u0006\u0010\u0003\u001a\u00020\u0002H\n\u00a2\u0006\u0004\u0008\u0004\u0010\u0005"
    }
    d2 = {
        "Lkotlinx/coroutines/internal/e0;",
        "state",
        "Lkotlin/coroutines/CoroutineContext$a;",
        "element",
        "invoke",
        "(Lkotlinx/coroutines/internal/e0;Lkotlin/coroutines/CoroutineContext$a;)Lkotlinx/coroutines/internal/e0;",
        "<no name provided>"
    }
    k = 0x3
    mv = {
        0x1,
        0x1,
        0xf
    }
.end annotation


# static fields
.field public static final INSTANCE:Lkotlinx/coroutines/internal/ThreadContextKt$restoreState$1;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lkotlinx/coroutines/internal/ThreadContextKt$restoreState$1;

    invoke-direct {v0}, Lkotlinx/coroutines/internal/ThreadContextKt$restoreState$1;-><init>()V

    sput-object v0, Lkotlinx/coroutines/internal/ThreadContextKt$restoreState$1;->INSTANCE:Lkotlinx/coroutines/internal/ThreadContextKt$restoreState$1;

    return-void
.end method

.method constructor <init>()V
    .locals 1

    const/4 v0, 0x2

    invoke-direct {p0, v0}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lkotlinx/coroutines/internal/e0;

    check-cast p2, Lkotlin/coroutines/CoroutineContext$a;

    invoke-virtual {p0, p1, p2}, Lkotlinx/coroutines/internal/ThreadContextKt$restoreState$1;->invoke(Lkotlinx/coroutines/internal/e0;Lkotlin/coroutines/CoroutineContext$a;)Lkotlinx/coroutines/internal/e0;

    move-result-object p1

    return-object p1
.end method

.method public final invoke(Lkotlinx/coroutines/internal/e0;Lkotlin/coroutines/CoroutineContext$a;)Lkotlinx/coroutines/internal/e0;
    .locals 2

    .line 1
    instance-of v0, p2, Lkotlinx/coroutines/q2;

    if-eqz v0, :cond_0

    .line 2
    check-cast p2, Lkotlinx/coroutines/q2;

    invoke-virtual {p1}, Lkotlinx/coroutines/internal/e0;->b()Lkotlin/coroutines/CoroutineContext;

    move-result-object v0

    invoke-virtual {p1}, Lkotlinx/coroutines/internal/e0;->d()Ljava/lang/Object;

    move-result-object v1

    invoke-interface {p2, v0, v1}, Lkotlinx/coroutines/q2;->p(Lkotlin/coroutines/CoroutineContext;Ljava/lang/Object;)V

    :cond_0
    return-object p1
.end method
