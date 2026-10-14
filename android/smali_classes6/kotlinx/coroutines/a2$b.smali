.class final Lkotlinx/coroutines/a2$b;
.super Lkotlinx/coroutines/z1;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lkotlinx/coroutines/a2;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "b"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlinx/coroutines/z1<",
        "Lkotlinx/coroutines/t1;",
        ">;"
    }
.end annotation


# instance fields
.field private final e:Lkotlinx/coroutines/a2;

.field private final f:Lkotlinx/coroutines/a2$c;

.field private final g:Lkotlinx/coroutines/r;

.field private final h:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Lkotlinx/coroutines/a2;Lkotlinx/coroutines/a2$c;Lkotlinx/coroutines/r;Ljava/lang/Object;)V
    .locals 1

    .line 1
    iget-object v0, p3, Lkotlinx/coroutines/r;->e:Lkotlinx/coroutines/s;

    invoke-direct {p0, v0}, Lkotlinx/coroutines/z1;-><init>(Lkotlinx/coroutines/t1;)V

    iput-object p1, p0, Lkotlinx/coroutines/a2$b;->e:Lkotlinx/coroutines/a2;

    iput-object p2, p0, Lkotlinx/coroutines/a2$b;->f:Lkotlinx/coroutines/a2$c;

    iput-object p3, p0, Lkotlinx/coroutines/a2$b;->g:Lkotlinx/coroutines/r;

    iput-object p4, p0, Lkotlinx/coroutines/a2$b;->h:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public R(Ljava/lang/Throwable;)V
    .locals 3

    .line 1
    iget-object p1, p0, Lkotlinx/coroutines/a2$b;->e:Lkotlinx/coroutines/a2;

    iget-object v0, p0, Lkotlinx/coroutines/a2$b;->f:Lkotlinx/coroutines/a2$c;

    iget-object v1, p0, Lkotlinx/coroutines/a2$b;->g:Lkotlinx/coroutines/r;

    iget-object v2, p0, Lkotlinx/coroutines/a2$b;->h:Ljava/lang/Object;

    invoke-static {p1, v0, v1, v2}, Lkotlinx/coroutines/a2;->L(Lkotlinx/coroutines/a2;Lkotlinx/coroutines/a2$c;Lkotlinx/coroutines/r;Ljava/lang/Object;)V

    return-void
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p1, Ljava/lang/Throwable;

    invoke-virtual {p0, p1}, Lkotlinx/coroutines/a2$b;->R(Ljava/lang/Throwable;)V

    sget-object p1, Lkotlin/v;->a:Lkotlin/v;

    return-object p1
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ChildCompletion["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lkotlinx/coroutines/a2$b;->g:Lkotlinx/coroutines/r;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lkotlinx/coroutines/a2$b;->h:Ljava/lang/Object;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 v1, 0x5d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
