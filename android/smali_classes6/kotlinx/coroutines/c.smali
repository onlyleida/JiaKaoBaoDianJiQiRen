.class final Lkotlinx/coroutines/c;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lkotlinx/coroutines/c$b;,
        Lkotlinx/coroutines/c$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# static fields
.field static final b:Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;


# instance fields
.field private final a:[Lkotlinx/coroutines/p0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "Lkotlinx/coroutines/p0<",
            "TT;>;"
        }
    .end annotation
.end field

.field volatile notCompletedCount:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const-class v0, Lkotlinx/coroutines/c;

    const-string v1, "notCompletedCount"

    invoke-static {v0, v1}, Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;->newUpdater(Ljava/lang/Class;Ljava/lang/String;)Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;

    move-result-object v0

    sput-object v0, Lkotlinx/coroutines/c;->b:Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;

    return-void
.end method

.method public constructor <init>([Lkotlinx/coroutines/p0;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Lkotlinx/coroutines/p0<",
            "+TT;>;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lkotlinx/coroutines/c;->a:[Lkotlinx/coroutines/p0;

    .line 2
    array-length p1, p1

    iput p1, p0, Lkotlinx/coroutines/c;->notCompletedCount:I

    return-void
.end method

.method public static final synthetic a(Lkotlinx/coroutines/c;)[Lkotlinx/coroutines/p0;
    .locals 0

    .line 1
    iget-object p0, p0, Lkotlinx/coroutines/c;->a:[Lkotlinx/coroutines/p0;

    return-object p0
.end method


# virtual methods
.method public final b(Lkotlin/coroutines/c;)Ljava/lang/Object;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/coroutines/c<",
            "-",
            "Ljava/util/List<",
            "+TT;>;>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 1
    new-instance v0, Lkotlinx/coroutines/l;

    invoke-static {p1}, Lkotlin/coroutines/intrinsics/a;->c(Lkotlin/coroutines/c;)Lkotlin/coroutines/c;

    move-result-object v1

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lkotlinx/coroutines/l;-><init>(Lkotlin/coroutines/c;I)V

    .line 2
    invoke-virtual {v0}, Lkotlinx/coroutines/l;->z()V

    .line 3
    invoke-static {p0}, Lkotlinx/coroutines/c;->a(Lkotlinx/coroutines/c;)[Lkotlinx/coroutines/p0;

    move-result-object v1

    array-length v1, v1

    new-array v2, v1, [Lkotlinx/coroutines/c$a;

    const/4 v3, 0x0

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v1, :cond_0

    invoke-static {v4}, Lkotlin/coroutines/jvm/internal/a;->d(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Number;->intValue()I

    move-result v5

    .line 4
    invoke-static {p0}, Lkotlinx/coroutines/c;->a(Lkotlinx/coroutines/c;)[Lkotlinx/coroutines/p0;

    move-result-object v6

    aget-object v5, v6, v5

    .line 5
    invoke-interface {v5}, Lkotlinx/coroutines/t1;->start()Z

    .line 6
    new-instance v6, Lkotlinx/coroutines/c$a;

    invoke-direct {v6, p0, v0, v5}, Lkotlinx/coroutines/c$a;-><init>(Lkotlinx/coroutines/c;Lkotlinx/coroutines/k;Lkotlinx/coroutines/t1;)V

    .line 7
    invoke-interface {v5, v6}, Lkotlinx/coroutines/t1;->n(Lkotlin/jvm/b/l;)Lkotlinx/coroutines/y0;

    move-result-object v5

    invoke-virtual {v6, v5}, Lkotlinx/coroutines/c$a;->V(Lkotlinx/coroutines/y0;)V

    .line 8
    aput-object v6, v2, v4

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 9
    :cond_0
    new-instance v4, Lkotlinx/coroutines/c$b;

    invoke-direct {v4, p0, v2}, Lkotlinx/coroutines/c$b;-><init>(Lkotlinx/coroutines/c;[Lkotlinx/coroutines/c$a;)V

    :goto_1
    if-ge v3, v1, :cond_1

    .line 10
    aget-object v5, v2, v3

    .line 11
    invoke-virtual {v5, v4}, Lkotlinx/coroutines/c$a;->U(Lkotlinx/coroutines/c$b;)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 12
    :cond_1
    invoke-interface {v0}, Lkotlinx/coroutines/k;->w()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 13
    invoke-virtual {v4}, Lkotlinx/coroutines/c$b;->b()V

    goto :goto_2

    .line 14
    :cond_2
    invoke-interface {v0, v4}, Lkotlinx/coroutines/k;->l(Lkotlin/jvm/b/l;)V

    .line 15
    :goto_2
    invoke-virtual {v0}, Lkotlinx/coroutines/l;->x()Ljava/lang/Object;

    move-result-object v0

    .line 16
    invoke-static {}, Lkotlin/coroutines/intrinsics/a;->d()Ljava/lang/Object;

    move-result-object v1

    if-ne v0, v1, :cond_3

    invoke-static {p1}, Lkotlin/coroutines/jvm/internal/f;->c(Lkotlin/coroutines/c;)V

    :cond_3
    return-object v0
.end method
