.class public abstract Lkotlinx/coroutines/channels/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lkotlinx/coroutines/channels/t;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lkotlinx/coroutines/channels/b$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lkotlinx/coroutines/channels/t<",
        "TE;>;"
    }
.end annotation


# static fields
.field private static final c:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;


# instance fields
.field private final a:Lkotlinx/coroutines/internal/l;

.field protected final b:Lkotlin/jvm/b/l;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/b/l<",
            "TE;",
            "Lkotlin/v;",
            ">;"
        }
    .end annotation
.end field

.field private volatile onCloseHandler:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const-class v0, Lkotlinx/coroutines/channels/b;

    const-class v1, Ljava/lang/Object;

    const-string v2, "onCloseHandler"

    invoke-static {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->newUpdater(Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/String;)Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    move-result-object v0

    sput-object v0, Lkotlinx/coroutines/channels/b;->c:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    return-void
.end method

.method public constructor <init>(Lkotlin/jvm/b/l;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/b/l<",
            "-TE;",
            "Lkotlin/v;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lkotlinx/coroutines/channels/b;->b:Lkotlin/jvm/b/l;

    .line 2
    new-instance p1, Lkotlinx/coroutines/internal/l;

    invoke-direct {p1}, Lkotlinx/coroutines/internal/l;-><init>()V

    iput-object p1, p0, Lkotlinx/coroutines/channels/b;->a:Lkotlinx/coroutines/internal/l;

    const/4 p1, 0x0

    .line 3
    iput-object p1, p0, Lkotlinx/coroutines/channels/b;->onCloseHandler:Ljava/lang/Object;

    return-void
.end method

.method public static final synthetic b(Lkotlinx/coroutines/channels/b;Lkotlin/coroutines/c;Ljava/lang/Object;Lkotlinx/coroutines/channels/j;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2, p3}, Lkotlinx/coroutines/channels/b;->n(Lkotlin/coroutines/c;Ljava/lang/Object;Lkotlinx/coroutines/channels/j;)V

    return-void
.end method

.method private final c()I
    .locals 4

    .line 1
    iget-object v0, p0, Lkotlinx/coroutines/channels/b;->a:Lkotlinx/coroutines/internal/l;

    .line 2
    invoke-virtual {v0}, Lkotlinx/coroutines/internal/n;->G()Ljava/lang/Object;

    move-result-object v1

    const-string v2, "null cannot be cast to non-null type kotlinx.coroutines.internal.Node /* = kotlinx.coroutines.internal.LockFreeLinkedListNode */"

    invoke-static {v1, v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    check-cast v1, Lkotlinx/coroutines/internal/n;

    const/4 v2, 0x0

    .line 3
    :goto_0
    invoke-static {v1, v0}, Lkotlin/jvm/internal/r;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    xor-int/lit8 v3, v3, 0x1

    if-eqz v3, :cond_1

    .line 4
    instance-of v3, v1, Lkotlinx/coroutines/internal/n;

    if-eqz v3, :cond_0

    add-int/lit8 v2, v2, 0x1

    .line 5
    :cond_0
    invoke-virtual {v1}, Lkotlinx/coroutines/internal/n;->H()Lkotlinx/coroutines/internal/n;

    move-result-object v1

    goto :goto_0

    :cond_1
    return v2
.end method

.method private final j()Ljava/lang/String;
    .locals 3

    .line 1
    iget-object v0, p0, Lkotlinx/coroutines/channels/b;->a:Lkotlinx/coroutines/internal/l;

    invoke-virtual {v0}, Lkotlinx/coroutines/internal/n;->H()Lkotlinx/coroutines/internal/n;

    move-result-object v0

    .line 2
    iget-object v1, p0, Lkotlinx/coroutines/channels/b;->a:Lkotlinx/coroutines/internal/l;

    if-ne v0, v1, :cond_0

    const-string v0, "EmptyQueue"

    return-object v0

    .line 3
    :cond_0
    instance-of v1, v0, Lkotlinx/coroutines/channels/j;

    if-eqz v1, :cond_1

    invoke-virtual {v0}, Lkotlinx/coroutines/internal/n;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 4
    :cond_1
    instance-of v1, v0, Lkotlinx/coroutines/channels/o;

    if-eqz v1, :cond_2

    const-string v1, "ReceiveQueued"

    goto :goto_0

    .line 5
    :cond_2
    instance-of v1, v0, Lkotlinx/coroutines/channels/s;

    if-eqz v1, :cond_3

    const-string v1, "SendQueued"

    goto :goto_0

    .line 6
    :cond_3
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "UNEXPECTED:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 7
    :goto_0
    iget-object v2, p0, Lkotlinx/coroutines/channels/b;->a:Lkotlinx/coroutines/internal/l;

    invoke-virtual {v2}, Lkotlinx/coroutines/internal/n;->I()Lkotlinx/coroutines/internal/n;

    move-result-object v2

    if-eq v2, v0, :cond_4

    .line 8
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ",queueSize="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0}, Lkotlinx/coroutines/channels/b;->c()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 9
    instance-of v0, v2, Lkotlinx/coroutines/channels/j;

    if-eqz v0, :cond_4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ",closedForSend="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    :cond_4
    return-object v1
.end method

.method private final l(Lkotlinx/coroutines/channels/j;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlinx/coroutines/channels/j<",
            "*>;)V"
        }
    .end annotation

    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 1
    invoke-static {v0, v1, v0}, Lkotlinx/coroutines/internal/k;->b(Ljava/lang/Object;ILkotlin/jvm/internal/o;)Ljava/lang/Object;

    move-result-object v2

    .line 2
    :goto_0
    invoke-virtual {p1}, Lkotlinx/coroutines/internal/n;->I()Lkotlinx/coroutines/internal/n;

    move-result-object v3

    instance-of v4, v3, Lkotlinx/coroutines/channels/o;

    if-nez v4, :cond_0

    move-object v3, v0

    :cond_0
    check-cast v3, Lkotlinx/coroutines/channels/o;

    if-eqz v3, :cond_2

    .line 3
    invoke-virtual {v3}, Lkotlinx/coroutines/internal/n;->N()Z

    move-result v4

    if-nez v4, :cond_1

    .line 4
    invoke-virtual {v3}, Lkotlinx/coroutines/internal/n;->K()V

    goto :goto_0

    .line 5
    :cond_1
    invoke-static {v2, v3}, Lkotlinx/coroutines/internal/k;->c(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    goto :goto_0

    :cond_2
    if-nez v2, :cond_3

    goto :goto_2

    .line 6
    :cond_3
    instance-of v0, v2, Ljava/util/ArrayList;

    if-nez v0, :cond_4

    check-cast v2, Lkotlinx/coroutines/channels/o;

    .line 7
    invoke-virtual {v2, p1}, Lkotlinx/coroutines/channels/o;->T(Lkotlinx/coroutines/channels/j;)V

    goto :goto_2

    :cond_4
    const-string v0, "null cannot be cast to non-null type kotlin.collections.ArrayList<E> /* = java.util.ArrayList<E> */"

    .line 8
    invoke-static {v2, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    check-cast v2, Ljava/util/ArrayList;

    .line 9
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v0

    sub-int/2addr v0, v1

    :goto_1
    if-ltz v0, :cond_5

    .line 10
    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lkotlinx/coroutines/channels/o;

    .line 11
    invoke-virtual {v1, p1}, Lkotlinx/coroutines/channels/o;->T(Lkotlinx/coroutines/channels/j;)V

    add-int/lit8 v0, v0, -0x1

    goto :goto_1

    .line 12
    :cond_5
    :goto_2
    invoke-virtual {p0, p1}, Lkotlinx/coroutines/channels/b;->w(Lkotlinx/coroutines/internal/n;)V

    return-void
.end method

.method private final m(Ljava/lang/Object;Lkotlinx/coroutines/channels/j;)Ljava/lang/Throwable;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;",
            "Lkotlinx/coroutines/channels/j<",
            "*>;)",
            "Ljava/lang/Throwable;"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p2}, Lkotlinx/coroutines/channels/b;->l(Lkotlinx/coroutines/channels/j;)V

    .line 2
    iget-object v0, p0, Lkotlinx/coroutines/channels/b;->b:Lkotlin/jvm/b/l;

    if-eqz v0, :cond_1

    const/4 v1, 0x2

    const/4 v2, 0x0

    invoke-static {v0, p1, v2, v1, v2}, Lkotlinx/coroutines/internal/OnUndeliveredElementKt;->d(Lkotlin/jvm/b/l;Ljava/lang/Object;Lkotlinx/coroutines/internal/UndeliveredElementException;ILjava/lang/Object;)Lkotlinx/coroutines/internal/UndeliveredElementException;

    move-result-object p1

    if-nez p1, :cond_0

    goto :goto_0

    .line 3
    :cond_0
    invoke-virtual {p2}, Lkotlinx/coroutines/channels/j;->Z()Ljava/lang/Throwable;

    move-result-object p2

    invoke-static {p1, p2}, Lkotlin/a;->a(Ljava/lang/Throwable;Ljava/lang/Throwable;)V

    .line 4
    throw p1

    .line 5
    :cond_1
    :goto_0
    invoke-virtual {p2}, Lkotlinx/coroutines/channels/j;->Z()Ljava/lang/Throwable;

    move-result-object p1

    return-object p1
.end method

.method private final n(Lkotlin/coroutines/c;Ljava/lang/Object;Lkotlinx/coroutines/channels/j;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/coroutines/c<",
            "*>;TE;",
            "Lkotlinx/coroutines/channels/j<",
            "*>;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p3}, Lkotlinx/coroutines/channels/b;->l(Lkotlinx/coroutines/channels/j;)V

    .line 2
    invoke-virtual {p3}, Lkotlinx/coroutines/channels/j;->Z()Ljava/lang/Throwable;

    move-result-object p3

    .line 3
    iget-object v0, p0, Lkotlinx/coroutines/channels/b;->b:Lkotlin/jvm/b/l;

    if-eqz v0, :cond_0

    const/4 v1, 0x2

    const/4 v2, 0x0

    invoke-static {v0, p2, v2, v1, v2}, Lkotlinx/coroutines/internal/OnUndeliveredElementKt;->d(Lkotlin/jvm/b/l;Ljava/lang/Object;Lkotlinx/coroutines/internal/UndeliveredElementException;ILjava/lang/Object;)Lkotlinx/coroutines/internal/UndeliveredElementException;

    move-result-object p2

    if-eqz p2, :cond_0

    .line 4
    invoke-static {p2, p3}, Lkotlin/a;->a(Ljava/lang/Throwable;Ljava/lang/Throwable;)V

    .line 5
    sget-object p3, Lkotlin/Result;->Companion:Lkotlin/Result$a;

    invoke-static {p2}, Lkotlin/k;->a(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object p2

    invoke-static {p2}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    invoke-interface {p1, p2}, Lkotlin/coroutines/c;->resumeWith(Ljava/lang/Object;)V

    return-void

    .line 6
    :cond_0
    sget-object p2, Lkotlin/Result;->Companion:Lkotlin/Result$a;

    invoke-static {p3}, Lkotlin/k;->a(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object p2

    invoke-static {p2}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    invoke-interface {p1, p2}, Lkotlin/coroutines/c;->resumeWith(Ljava/lang/Object;)V

    return-void
.end method

.method private final p(Ljava/lang/Throwable;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lkotlinx/coroutines/channels/b;->onCloseHandler:Ljava/lang/Object;

    if-eqz v0, :cond_0

    .line 2
    sget-object v1, Lkotlinx/coroutines/channels/a;->f:Lkotlinx/coroutines/internal/y;

    if-eq v0, v1, :cond_0

    sget-object v2, Lkotlinx/coroutines/channels/b;->c:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    invoke-virtual {v2, p0, v0, v1}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    .line 3
    invoke-static {v0, v1}, Lkotlin/jvm/internal/z;->e(Ljava/lang/Object;I)Ljava/lang/Object;

    check-cast v0, Lkotlin/jvm/b/l;

    invoke-interface {v0, p1}, Lkotlin/jvm/b/l;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-void
.end method


# virtual methods
.method final synthetic B(Ljava/lang/Object;Lkotlin/coroutines/c;)Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;",
            "Lkotlin/coroutines/c<",
            "-",
            "Lkotlin/v;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 1
    invoke-static {p2}, Lkotlin/coroutines/intrinsics/a;->c(Lkotlin/coroutines/c;)Lkotlin/coroutines/c;

    move-result-object v0

    invoke-static {v0}, Lkotlinx/coroutines/n;->b(Lkotlin/coroutines/c;)Lkotlinx/coroutines/l;

    move-result-object v0

    .line 2
    :goto_0
    invoke-virtual {p0}, Lkotlinx/coroutines/channels/b;->s()Z

    move-result v1

    if-eqz v1, :cond_5

    .line 3
    iget-object v1, p0, Lkotlinx/coroutines/channels/b;->b:Lkotlin/jvm/b/l;

    if-nez v1, :cond_0

    .line 4
    new-instance v1, Lkotlinx/coroutines/channels/u;

    invoke-direct {v1, p1, v0}, Lkotlinx/coroutines/channels/u;-><init>(Ljava/lang/Object;Lkotlinx/coroutines/k;)V

    goto :goto_1

    .line 5
    :cond_0
    new-instance v1, Lkotlinx/coroutines/channels/v;

    iget-object v2, p0, Lkotlinx/coroutines/channels/b;->b:Lkotlin/jvm/b/l;

    invoke-direct {v1, p1, v0, v2}, Lkotlinx/coroutines/channels/v;-><init>(Ljava/lang/Object;Lkotlinx/coroutines/k;Lkotlin/jvm/b/l;)V

    .line 6
    :goto_1
    invoke-virtual {p0, v1}, Lkotlinx/coroutines/channels/b;->d(Lkotlinx/coroutines/channels/s;)Ljava/lang/Object;

    move-result-object v2

    if-nez v2, :cond_1

    .line 7
    invoke-static {v0, v1}, Lkotlinx/coroutines/n;->c(Lkotlinx/coroutines/k;Lkotlinx/coroutines/internal/n;)V

    goto :goto_3

    .line 8
    :cond_1
    instance-of v1, v2, Lkotlinx/coroutines/channels/j;

    if-eqz v1, :cond_2

    .line 9
    check-cast v2, Lkotlinx/coroutines/channels/j;

    invoke-static {p0, v0, p1, v2}, Lkotlinx/coroutines/channels/b;->b(Lkotlinx/coroutines/channels/b;Lkotlin/coroutines/c;Ljava/lang/Object;Lkotlinx/coroutines/channels/j;)V

    goto :goto_3

    .line 10
    :cond_2
    sget-object v1, Lkotlinx/coroutines/channels/a;->e:Lkotlinx/coroutines/internal/y;

    if-ne v2, v1, :cond_3

    goto :goto_2

    .line 11
    :cond_3
    instance-of v1, v2, Lkotlinx/coroutines/channels/o;

    if-eqz v1, :cond_4

    goto :goto_2

    .line 12
    :cond_4
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "enqueueSend returned "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    new-instance p2, Ljava/lang/IllegalStateException;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p2

    .line 13
    :cond_5
    :goto_2
    invoke-virtual {p0, p1}, Lkotlinx/coroutines/channels/b;->u(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 14
    sget-object v2, Lkotlinx/coroutines/channels/a;->b:Lkotlinx/coroutines/internal/y;

    if-ne v1, v2, :cond_6

    .line 15
    sget-object p1, Lkotlin/v;->a:Lkotlin/v;

    sget-object v1, Lkotlin/Result;->Companion:Lkotlin/Result$a;

    invoke-static {p1}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    invoke-interface {v0, p1}, Lkotlin/coroutines/c;->resumeWith(Ljava/lang/Object;)V

    goto :goto_3

    .line 16
    :cond_6
    sget-object v2, Lkotlinx/coroutines/channels/a;->c:Lkotlinx/coroutines/internal/y;

    if-ne v1, v2, :cond_7

    goto :goto_0

    .line 17
    :cond_7
    instance-of v2, v1, Lkotlinx/coroutines/channels/j;

    if-eqz v2, :cond_9

    .line 18
    check-cast v1, Lkotlinx/coroutines/channels/j;

    invoke-static {p0, v0, p1, v1}, Lkotlinx/coroutines/channels/b;->b(Lkotlinx/coroutines/channels/b;Lkotlin/coroutines/c;Ljava/lang/Object;Lkotlinx/coroutines/channels/j;)V

    .line 19
    :goto_3
    invoke-virtual {v0}, Lkotlinx/coroutines/l;->x()Ljava/lang/Object;

    move-result-object p1

    .line 20
    invoke-static {}, Lkotlin/coroutines/intrinsics/a;->d()Ljava/lang/Object;

    move-result-object v0

    if-ne p1, v0, :cond_8

    invoke-static {p2}, Lkotlin/coroutines/jvm/internal/f;->c(Lkotlin/coroutines/c;)V

    :cond_8
    return-object p1

    .line 21
    :cond_9
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "offerInternal returned "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    new-instance p2, Ljava/lang/IllegalStateException;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p2
.end method

.method protected C()Lkotlinx/coroutines/channels/q;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlinx/coroutines/channels/q<",
            "TE;>;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lkotlinx/coroutines/channels/b;->a:Lkotlinx/coroutines/internal/l;

    .line 2
    :goto_0
    invoke-virtual {v0}, Lkotlinx/coroutines/internal/n;->G()Ljava/lang/Object;

    move-result-object v1

    const-string v2, "null cannot be cast to non-null type kotlinx.coroutines.internal.Node /* = kotlinx.coroutines.internal.LockFreeLinkedListNode */"

    invoke-static {v1, v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    check-cast v1, Lkotlinx/coroutines/internal/n;

    const/4 v2, 0x0

    if-ne v1, v0, :cond_0

    :goto_1
    move-object v1, v2

    goto :goto_2

    .line 3
    :cond_0
    instance-of v3, v1, Lkotlinx/coroutines/channels/q;

    if-nez v3, :cond_1

    goto :goto_1

    .line 4
    :cond_1
    move-object v2, v1

    check-cast v2, Lkotlinx/coroutines/channels/q;

    .line 5
    instance-of v2, v2, Lkotlinx/coroutines/channels/j;

    if-eqz v2, :cond_2

    .line 6
    invoke-virtual {v1}, Lkotlinx/coroutines/internal/n;->M()Z

    move-result v2

    if-nez v2, :cond_2

    goto :goto_2

    .line 7
    :cond_2
    invoke-virtual {v1}, Lkotlinx/coroutines/internal/n;->O()Lkotlinx/coroutines/internal/n;

    move-result-object v2

    if-nez v2, :cond_3

    .line 8
    :goto_2
    check-cast v1, Lkotlinx/coroutines/channels/q;

    return-object v1

    .line 9
    :cond_3
    invoke-virtual {v2}, Lkotlinx/coroutines/internal/n;->L()V

    goto :goto_0
.end method

.method public D(Ljava/lang/Throwable;)Z
    .locals 5

    .line 1
    new-instance v0, Lkotlinx/coroutines/channels/j;

    invoke-direct {v0, p1}, Lkotlinx/coroutines/channels/j;-><init>(Ljava/lang/Throwable;)V

    .line 2
    iget-object v1, p0, Lkotlinx/coroutines/channels/b;->a:Lkotlinx/coroutines/internal/l;

    .line 3
    :cond_0
    invoke-virtual {v1}, Lkotlinx/coroutines/internal/n;->I()Lkotlinx/coroutines/internal/n;

    move-result-object v2

    .line 4
    instance-of v3, v2, Lkotlinx/coroutines/channels/j;

    const/4 v4, 0x1

    xor-int/2addr v3, v4

    if-nez v3, :cond_1

    const/4 v4, 0x0

    goto :goto_0

    .line 5
    :cond_1
    invoke-virtual {v2, v0, v1}, Lkotlinx/coroutines/internal/n;->z(Lkotlinx/coroutines/internal/n;Lkotlinx/coroutines/internal/n;)Z

    move-result v2

    if-eqz v2, :cond_0

    :goto_0
    if-eqz v4, :cond_2

    goto :goto_1

    .line 6
    :cond_2
    iget-object v0, p0, Lkotlinx/coroutines/channels/b;->a:Lkotlinx/coroutines/internal/l;

    invoke-virtual {v0}, Lkotlinx/coroutines/internal/n;->I()Lkotlinx/coroutines/internal/n;

    move-result-object v0

    const-string v1, "null cannot be cast to non-null type kotlinx.coroutines.channels.Closed<*>"

    invoke-static {v0, v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    check-cast v0, Lkotlinx/coroutines/channels/j;

    .line 7
    :goto_1
    invoke-direct {p0, v0}, Lkotlinx/coroutines/channels/b;->l(Lkotlinx/coroutines/channels/j;)V

    if-eqz v4, :cond_3

    .line 8
    invoke-direct {p0, p1}, Lkotlinx/coroutines/channels/b;->p(Ljava/lang/Throwable;)V

    :cond_3
    return v4
.end method

.method protected final E()Lkotlinx/coroutines/channels/s;
    .locals 4

    .line 1
    iget-object v0, p0, Lkotlinx/coroutines/channels/b;->a:Lkotlinx/coroutines/internal/l;

    .line 2
    :goto_0
    invoke-virtual {v0}, Lkotlinx/coroutines/internal/n;->G()Ljava/lang/Object;

    move-result-object v1

    const-string v2, "null cannot be cast to non-null type kotlinx.coroutines.internal.Node /* = kotlinx.coroutines.internal.LockFreeLinkedListNode */"

    invoke-static {v1, v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    check-cast v1, Lkotlinx/coroutines/internal/n;

    const/4 v2, 0x0

    if-ne v1, v0, :cond_0

    :goto_1
    move-object v1, v2

    goto :goto_2

    .line 3
    :cond_0
    instance-of v3, v1, Lkotlinx/coroutines/channels/s;

    if-nez v3, :cond_1

    goto :goto_1

    .line 4
    :cond_1
    move-object v2, v1

    check-cast v2, Lkotlinx/coroutines/channels/s;

    .line 5
    instance-of v2, v2, Lkotlinx/coroutines/channels/j;

    if-eqz v2, :cond_2

    .line 6
    invoke-virtual {v1}, Lkotlinx/coroutines/internal/n;->M()Z

    move-result v2

    if-nez v2, :cond_2

    goto :goto_2

    .line 7
    :cond_2
    invoke-virtual {v1}, Lkotlinx/coroutines/internal/n;->O()Lkotlinx/coroutines/internal/n;

    move-result-object v2

    if-nez v2, :cond_3

    .line 8
    :goto_2
    check-cast v1, Lkotlinx/coroutines/channels/s;

    return-object v1

    .line 9
    :cond_3
    invoke-virtual {v2}, Lkotlinx/coroutines/internal/n;->L()V

    goto :goto_0
.end method

.method public final F(Ljava/lang/Object;Lkotlin/coroutines/c;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;",
            "Lkotlin/coroutines/c<",
            "-",
            "Lkotlin/v;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 1
    invoke-virtual {p0, p1}, Lkotlinx/coroutines/channels/b;->u(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    sget-object v1, Lkotlinx/coroutines/channels/a;->b:Lkotlinx/coroutines/internal/y;

    if-ne v0, v1, :cond_0

    sget-object p1, Lkotlin/v;->a:Lkotlin/v;

    return-object p1

    .line 2
    :cond_0
    invoke-virtual {p0, p1, p2}, Lkotlinx/coroutines/channels/b;->B(Ljava/lang/Object;Lkotlin/coroutines/c;)Ljava/lang/Object;

    move-result-object p1

    invoke-static {}, Lkotlin/coroutines/intrinsics/a;->d()Ljava/lang/Object;

    move-result-object p2

    if-ne p1, p2, :cond_1

    return-object p1

    :cond_1
    sget-object p1, Lkotlin/v;->a:Lkotlin/v;

    return-object p1
.end method

.method public final G()Z
    .locals 1

    .line 1
    invoke-virtual {p0}, Lkotlinx/coroutines/channels/b;->h()Lkotlinx/coroutines/channels/j;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method protected d(Lkotlinx/coroutines/channels/s;)Ljava/lang/Object;
    .locals 4

    .line 1
    invoke-virtual {p0}, Lkotlinx/coroutines/channels/b;->q()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 2
    iget-object v0, p0, Lkotlinx/coroutines/channels/b;->a:Lkotlinx/coroutines/internal/l;

    .line 3
    :cond_0
    invoke-virtual {v0}, Lkotlinx/coroutines/internal/n;->I()Lkotlinx/coroutines/internal/n;

    move-result-object v1

    .line 4
    instance-of v2, v1, Lkotlinx/coroutines/channels/q;

    if-eqz v2, :cond_1

    return-object v1

    .line 5
    :cond_1
    invoke-virtual {v1, p1, v0}, Lkotlinx/coroutines/internal/n;->z(Lkotlinx/coroutines/internal/n;Lkotlinx/coroutines/internal/n;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_1

    .line 6
    :cond_2
    iget-object v0, p0, Lkotlinx/coroutines/channels/b;->a:Lkotlinx/coroutines/internal/l;

    .line 7
    new-instance v1, Lkotlinx/coroutines/channels/b$b;

    invoke-direct {v1, p1, p1, p0}, Lkotlinx/coroutines/channels/b$b;-><init>(Lkotlinx/coroutines/internal/n;Lkotlinx/coroutines/internal/n;Lkotlinx/coroutines/channels/b;)V

    .line 8
    :goto_0
    invoke-virtual {v0}, Lkotlinx/coroutines/internal/n;->I()Lkotlinx/coroutines/internal/n;

    move-result-object v2

    .line 9
    instance-of v3, v2, Lkotlinx/coroutines/channels/q;

    if-eqz v3, :cond_3

    return-object v2

    .line 10
    :cond_3
    invoke-virtual {v2, p1, v0, v1}, Lkotlinx/coroutines/internal/n;->Q(Lkotlinx/coroutines/internal/n;Lkotlinx/coroutines/internal/n;Lkotlinx/coroutines/internal/n$b;)I

    move-result v2

    const/4 v3, 0x1

    if-eq v2, v3, :cond_5

    const/4 v3, 0x2

    if-eq v2, v3, :cond_4

    goto :goto_0

    :cond_4
    const/4 v3, 0x0

    :cond_5
    if-nez v3, :cond_6

    .line 11
    sget-object p1, Lkotlinx/coroutines/channels/a;->e:Lkotlinx/coroutines/internal/y;

    return-object p1

    :cond_6
    :goto_1
    const/4 p1, 0x0

    return-object p1
.end method

.method protected e()Ljava/lang/String;
    .locals 1

    const-string v0, ""

    return-object v0
.end method

.method protected final f()Lkotlinx/coroutines/channels/j;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlinx/coroutines/channels/j<",
            "*>;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lkotlinx/coroutines/channels/b;->a:Lkotlinx/coroutines/internal/l;

    invoke-virtual {v0}, Lkotlinx/coroutines/internal/n;->H()Lkotlinx/coroutines/internal/n;

    move-result-object v0

    instance-of v1, v0, Lkotlinx/coroutines/channels/j;

    const/4 v2, 0x0

    if-nez v1, :cond_0

    move-object v0, v2

    :cond_0
    check-cast v0, Lkotlinx/coroutines/channels/j;

    if-eqz v0, :cond_1

    invoke-direct {p0, v0}, Lkotlinx/coroutines/channels/b;->l(Lkotlinx/coroutines/channels/j;)V

    move-object v2, v0

    :cond_1
    return-object v2
.end method

.method protected final h()Lkotlinx/coroutines/channels/j;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlinx/coroutines/channels/j<",
            "*>;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lkotlinx/coroutines/channels/b;->a:Lkotlinx/coroutines/internal/l;

    invoke-virtual {v0}, Lkotlinx/coroutines/internal/n;->I()Lkotlinx/coroutines/internal/n;

    move-result-object v0

    instance-of v1, v0, Lkotlinx/coroutines/channels/j;

    const/4 v2, 0x0

    if-nez v1, :cond_0

    move-object v0, v2

    :cond_0
    check-cast v0, Lkotlinx/coroutines/channels/j;

    if-eqz v0, :cond_1

    invoke-direct {p0, v0}, Lkotlinx/coroutines/channels/b;->l(Lkotlinx/coroutines/channels/j;)V

    move-object v2, v0

    :cond_1
    return-object v2
.end method

.method protected final i()Lkotlinx/coroutines/internal/l;
    .locals 1

    .line 1
    iget-object v0, p0, Lkotlinx/coroutines/channels/b;->a:Lkotlinx/coroutines/internal/l;

    return-object v0
.end method

.method public final offer(Ljava/lang/Object;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)Z"
        }
    .end annotation

    .line 1
    invoke-virtual {p0, p1}, Lkotlinx/coroutines/channels/b;->u(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 2
    sget-object v1, Lkotlinx/coroutines/channels/a;->b:Lkotlinx/coroutines/internal/y;

    if-ne v0, v1, :cond_0

    const/4 p1, 0x1

    return p1

    .line 3
    :cond_0
    sget-object v1, Lkotlinx/coroutines/channels/a;->c:Lkotlinx/coroutines/internal/y;

    if-ne v0, v1, :cond_2

    .line 4
    invoke-virtual {p0}, Lkotlinx/coroutines/channels/b;->h()Lkotlinx/coroutines/channels/j;

    move-result-object v0

    if-nez v0, :cond_1

    const/4 p1, 0x0

    return p1

    :cond_1
    invoke-direct {p0, p1, v0}, Lkotlinx/coroutines/channels/b;->m(Ljava/lang/Object;Lkotlinx/coroutines/channels/j;)Ljava/lang/Throwable;

    move-result-object p1

    invoke-static {p1}, Lkotlinx/coroutines/internal/x;->k(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    move-result-object p1

    throw p1

    .line 5
    :cond_2
    instance-of v1, v0, Lkotlinx/coroutines/channels/j;

    if-eqz v1, :cond_3

    .line 6
    check-cast v0, Lkotlinx/coroutines/channels/j;

    invoke-direct {p0, p1, v0}, Lkotlinx/coroutines/channels/b;->m(Ljava/lang/Object;Lkotlinx/coroutines/channels/j;)Ljava/lang/Throwable;

    move-result-object p1

    invoke-static {p1}, Lkotlinx/coroutines/internal/x;->k(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    move-result-object p1

    throw p1

    .line 7
    :cond_3
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "offerInternal returned "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected abstract q()Z
.end method

.method protected abstract r()Z
.end method

.method protected final s()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lkotlinx/coroutines/channels/b;->a:Lkotlinx/coroutines/internal/l;

    invoke-virtual {v0}, Lkotlinx/coroutines/internal/n;->H()Lkotlinx/coroutines/internal/n;

    move-result-object v0

    instance-of v0, v0, Lkotlinx/coroutines/channels/q;

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lkotlinx/coroutines/channels/b;->r()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public t(Lkotlin/jvm/b/l;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/b/l<",
            "-",
            "Ljava/lang/Throwable;",
            "Lkotlin/v;",
            ">;)V"
        }
    .end annotation

    .line 1
    sget-object v0, Lkotlinx/coroutines/channels/b;->c:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    const/4 v1, 0x0

    invoke-virtual {v0, p0, v1, p1}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 2
    iget-object p1, p0, Lkotlinx/coroutines/channels/b;->onCloseHandler:Ljava/lang/Object;

    .line 3
    sget-object v0, Lkotlinx/coroutines/channels/a;->f:Lkotlinx/coroutines/internal/y;

    if-ne p1, v0, :cond_0

    .line 4
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "Another handler was already registered and successfully invoked"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 5
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Another handler was already registered: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 6
    :cond_1
    invoke-virtual {p0}, Lkotlinx/coroutines/channels/b;->h()Lkotlinx/coroutines/channels/j;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 7
    sget-object v2, Lkotlinx/coroutines/channels/a;->f:Lkotlinx/coroutines/internal/y;

    invoke-virtual {v0, p0, p1, v2}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 8
    iget-object v0, v1, Lkotlinx/coroutines/channels/j;->d:Ljava/lang/Throwable;

    invoke-interface {p1, v0}, Lkotlin/jvm/b/l;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p0}, Lkotlinx/coroutines/m0;->a(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x40

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-static {p0}, Lkotlinx/coroutines/m0;->b(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x7b

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-direct {p0}, Lkotlinx/coroutines/channels/b;->j()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lkotlinx/coroutines/channels/b;->e()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected u(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 1
    :cond_0
    invoke-virtual {p0}, Lkotlinx/coroutines/channels/b;->C()Lkotlinx/coroutines/channels/q;

    move-result-object v0

    if-eqz v0, :cond_4

    const/4 v1, 0x0

    .line 2
    invoke-interface {v0, p1, v1}, Lkotlinx/coroutines/channels/q;->s(Ljava/lang/Object;Lkotlinx/coroutines/internal/n$c;)Lkotlinx/coroutines/internal/y;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 3
    invoke-static {}, Lkotlinx/coroutines/l0;->a()Z

    move-result v2

    if-eqz v2, :cond_3

    sget-object v2, Lkotlinx/coroutines/m;->a:Lkotlinx/coroutines/internal/y;

    if-ne v1, v2, :cond_1

    const/4 v1, 0x1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :goto_0
    if-eqz v1, :cond_2

    goto :goto_1

    :cond_2
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    .line 4
    :cond_3
    :goto_1
    invoke-interface {v0, p1}, Lkotlinx/coroutines/channels/q;->g(Ljava/lang/Object;)V

    .line 5
    invoke-interface {v0}, Lkotlinx/coroutines/channels/q;->a()Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 6
    :cond_4
    sget-object p1, Lkotlinx/coroutines/channels/a;->c:Lkotlinx/coroutines/internal/y;

    return-object p1
.end method

.method protected w(Lkotlinx/coroutines/internal/n;)V
    .locals 0

    return-void
.end method

.method protected final x(Ljava/lang/Object;)Lkotlinx/coroutines/channels/q;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)",
            "Lkotlinx/coroutines/channels/q<",
            "*>;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lkotlinx/coroutines/channels/b;->a:Lkotlinx/coroutines/internal/l;

    new-instance v1, Lkotlinx/coroutines/channels/b$a;

    invoke-direct {v1, p1}, Lkotlinx/coroutines/channels/b$a;-><init>(Ljava/lang/Object;)V

    .line 2
    :cond_0
    invoke-virtual {v0}, Lkotlinx/coroutines/internal/n;->I()Lkotlinx/coroutines/internal/n;

    move-result-object p1

    .line 3
    instance-of v2, p1, Lkotlinx/coroutines/channels/q;

    if-eqz v2, :cond_1

    check-cast p1, Lkotlinx/coroutines/channels/q;

    return-object p1

    .line 4
    :cond_1
    invoke-virtual {p1, v1, v0}, Lkotlinx/coroutines/internal/n;->z(Lkotlinx/coroutines/internal/n;Lkotlinx/coroutines/internal/n;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    return-object p1
.end method
