.class public final Lkotlinx/coroutines/flow/StartedLazily$command$1$invokeSuspend$$inlined$collect$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lkotlinx/coroutines/flow/d;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lkotlinx/coroutines/flow/StartedLazily$command$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lkotlinx/coroutines/flow/d<",
        "Ljava/lang/Integer;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lkotlinx/coroutines/flow/d;

.field final synthetic b:Lkotlin/jvm/internal/Ref$BooleanRef;


# direct methods
.method public constructor <init>(Lkotlinx/coroutines/flow/d;Lkotlin/jvm/internal/Ref$BooleanRef;)V
    .locals 0

    iput-object p1, p0, Lkotlinx/coroutines/flow/StartedLazily$command$1$invokeSuspend$$inlined$collect$1;->a:Lkotlinx/coroutines/flow/d;

    iput-object p2, p0, Lkotlinx/coroutines/flow/StartedLazily$command$1$invokeSuspend$$inlined$collect$1;->b:Lkotlin/jvm/internal/Ref$BooleanRef;

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public emit(Ljava/lang/Object;Lkotlin/coroutines/c;)Ljava/lang/Object;
    .locals 5

    instance-of v0, p2, Lkotlinx/coroutines/flow/StartedLazily$command$1$invokeSuspend$$inlined$collect$1$1;

    if-eqz v0, :cond_0

    move-object v0, p2

    check-cast v0, Lkotlinx/coroutines/flow/StartedLazily$command$1$invokeSuspend$$inlined$collect$1$1;

    iget v1, v0, Lkotlinx/coroutines/flow/StartedLazily$command$1$invokeSuspend$$inlined$collect$1$1;->label:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_0

    sub-int/2addr v1, v2

    iput v1, v0, Lkotlinx/coroutines/flow/StartedLazily$command$1$invokeSuspend$$inlined$collect$1$1;->label:I

    goto :goto_0

    :cond_0
    new-instance v0, Lkotlinx/coroutines/flow/StartedLazily$command$1$invokeSuspend$$inlined$collect$1$1;

    invoke-direct {v0, p0, p2}, Lkotlinx/coroutines/flow/StartedLazily$command$1$invokeSuspend$$inlined$collect$1$1;-><init>(Lkotlinx/coroutines/flow/StartedLazily$command$1$invokeSuspend$$inlined$collect$1;Lkotlin/coroutines/c;)V

    :goto_0
    iget-object p2, v0, Lkotlinx/coroutines/flow/StartedLazily$command$1$invokeSuspend$$inlined$collect$1$1;->result:Ljava/lang/Object;

    invoke-static {}, Lkotlin/coroutines/intrinsics/a;->d()Ljava/lang/Object;

    move-result-object v1

    .line 1
    iget v2, v0, Lkotlinx/coroutines/flow/StartedLazily$command$1$invokeSuspend$$inlined$collect$1$1;->label:I

    const/4 v3, 0x1

    if-eqz v2, :cond_2

    if-ne v2, v3, :cond_1

    iget p1, v0, Lkotlinx/coroutines/flow/StartedLazily$command$1$invokeSuspend$$inlined$collect$1$1;->I$0:I

    iget-object p1, v0, Lkotlinx/coroutines/flow/StartedLazily$command$1$invokeSuspend$$inlined$collect$1$1;->L$2:Ljava/lang/Object;

    check-cast p1, Lkotlin/coroutines/c;

    iget-object p1, v0, Lkotlinx/coroutines/flow/StartedLazily$command$1$invokeSuspend$$inlined$collect$1$1;->L$1:Ljava/lang/Object;

    iget-object p1, v0, Lkotlinx/coroutines/flow/StartedLazily$command$1$invokeSuspend$$inlined$collect$1$1;->L$0:Ljava/lang/Object;

    check-cast p1, Lkotlinx/coroutines/flow/StartedLazily$command$1$invokeSuspend$$inlined$collect$1;

    invoke-static {p2}, Lkotlin/k;->b(Ljava/lang/Object;)V

    goto :goto_1

    .line 2
    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 3
    :cond_2
    invoke-static {p2}, Lkotlin/k;->b(Ljava/lang/Object;)V

    .line 4
    move-object p2, p1

    check-cast p2, Ljava/lang/Number;

    invoke-virtual {p2}, Ljava/lang/Number;->intValue()I

    move-result p2

    if-lez p2, :cond_3

    .line 5
    iget-object v2, p0, Lkotlinx/coroutines/flow/StartedLazily$command$1$invokeSuspend$$inlined$collect$1;->b:Lkotlin/jvm/internal/Ref$BooleanRef;

    iget-boolean v4, v2, Lkotlin/jvm/internal/Ref$BooleanRef;->element:Z

    if-nez v4, :cond_3

    .line 6
    iput-boolean v3, v2, Lkotlin/jvm/internal/Ref$BooleanRef;->element:Z

    .line 7
    iget-object v2, p0, Lkotlinx/coroutines/flow/StartedLazily$command$1$invokeSuspend$$inlined$collect$1;->a:Lkotlinx/coroutines/flow/d;

    sget-object v4, Lkotlinx/coroutines/flow/SharingCommand;->START:Lkotlinx/coroutines/flow/SharingCommand;

    iput-object p0, v0, Lkotlinx/coroutines/flow/StartedLazily$command$1$invokeSuspend$$inlined$collect$1$1;->L$0:Ljava/lang/Object;

    iput-object p1, v0, Lkotlinx/coroutines/flow/StartedLazily$command$1$invokeSuspend$$inlined$collect$1$1;->L$1:Ljava/lang/Object;

    iput-object v0, v0, Lkotlinx/coroutines/flow/StartedLazily$command$1$invokeSuspend$$inlined$collect$1$1;->L$2:Ljava/lang/Object;

    iput p2, v0, Lkotlinx/coroutines/flow/StartedLazily$command$1$invokeSuspend$$inlined$collect$1$1;->I$0:I

    iput v3, v0, Lkotlinx/coroutines/flow/StartedLazily$command$1$invokeSuspend$$inlined$collect$1$1;->label:I

    invoke-interface {v2, v4, v0}, Lkotlinx/coroutines/flow/d;->emit(Ljava/lang/Object;Lkotlin/coroutines/c;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v1, :cond_3

    return-object v1

    .line 8
    :cond_3
    :goto_1
    sget-object p1, Lkotlin/v;->a:Lkotlin/v;

    return-object p1
.end method
