.class final Lkotlinx/coroutines/d1$a;
.super Lkotlinx/coroutines/d1$c;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lkotlinx/coroutines/d1;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "a"
.end annotation


# instance fields
.field private final d:Lkotlinx/coroutines/k;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlinx/coroutines/k<",
            "Lkotlin/v;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic e:Lkotlinx/coroutines/d1;


# direct methods
.method public constructor <init>(Lkotlinx/coroutines/d1;JLkotlinx/coroutines/k;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Lkotlinx/coroutines/k<",
            "-",
            "Lkotlin/v;",
            ">;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lkotlinx/coroutines/d1$a;->e:Lkotlinx/coroutines/d1;

    .line 2
    invoke-direct {p0, p2, p3}, Lkotlinx/coroutines/d1$c;-><init>(J)V

    iput-object p4, p0, Lkotlinx/coroutines/d1$a;->d:Lkotlinx/coroutines/k;

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 1
    iget-object v0, p0, Lkotlinx/coroutines/d1$a;->d:Lkotlinx/coroutines/k;

    iget-object v1, p0, Lkotlinx/coroutines/d1$a;->e:Lkotlinx/coroutines/d1;

    sget-object v2, Lkotlin/v;->a:Lkotlin/v;

    invoke-interface {v0, v1, v2}, Lkotlinx/coroutines/k;->C(Lkotlinx/coroutines/CoroutineDispatcher;Ljava/lang/Object;)V

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-super {p0}, Lkotlinx/coroutines/d1$c;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lkotlinx/coroutines/d1$a;->d:Lkotlinx/coroutines/k;

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
