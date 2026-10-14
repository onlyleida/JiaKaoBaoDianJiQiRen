.class public Landroidx/lifecycle/t;
.super Landroidx/lifecycle/Lifecycle;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/lifecycle/t$a;
    }
.end annotation


# instance fields
.field private b:Landroidx/arch/core/b/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/arch/core/b/a<",
            "Landroidx/lifecycle/q;",
            "Landroidx/lifecycle/t$a;",
            ">;"
        }
    .end annotation
.end field

.field private c:Landroidx/lifecycle/Lifecycle$State;

.field private final d:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Landroidx/lifecycle/r;",
            ">;"
        }
    .end annotation
.end field

.field private e:I

.field private f:Z

.field private g:Z

.field private h:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroidx/lifecycle/Lifecycle$State;",
            ">;"
        }
    .end annotation
.end field

.field private final i:Z


# direct methods
.method public constructor <init>(Landroidx/lifecycle/r;)V
    .locals 1

    const/4 v0, 0x1

    .line 1
    invoke-direct {p0, p1, v0}, Landroidx/lifecycle/t;-><init>(Landroidx/lifecycle/r;Z)V

    return-void
.end method

.method private constructor <init>(Landroidx/lifecycle/r;Z)V
    .locals 1

    .line 2
    invoke-direct {p0}, Landroidx/lifecycle/Lifecycle;-><init>()V

    .line 3
    new-instance v0, Landroidx/arch/core/b/a;

    invoke-direct {v0}, Landroidx/arch/core/b/a;-><init>()V

    iput-object v0, p0, Landroidx/lifecycle/t;->b:Landroidx/arch/core/b/a;

    const/4 v0, 0x0

    .line 4
    iput v0, p0, Landroidx/lifecycle/t;->e:I

    .line 5
    iput-boolean v0, p0, Landroidx/lifecycle/t;->f:Z

    .line 6
    iput-boolean v0, p0, Landroidx/lifecycle/t;->g:Z

    .line 7
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroidx/lifecycle/t;->h:Ljava/util/ArrayList;

    .line 8
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Landroidx/lifecycle/t;->d:Ljava/lang/ref/WeakReference;

    .line 9
    sget-object p1, Landroidx/lifecycle/Lifecycle$State;->INITIALIZED:Landroidx/lifecycle/Lifecycle$State;

    iput-object p1, p0, Landroidx/lifecycle/t;->c:Landroidx/lifecycle/Lifecycle$State;

    .line 10
    iput-boolean p2, p0, Landroidx/lifecycle/t;->i:Z

    return-void
.end method

.method private d(Landroidx/lifecycle/r;)V
    .locals 5

    .line 1
    iget-object v0, p0, Landroidx/lifecycle/t;->b:Landroidx/arch/core/b/a;

    .line 2
    invoke-virtual {v0}, Landroidx/arch/core/b/b;->descendingIterator()Ljava/util/Iterator;

    move-result-object v0

    .line 3
    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    iget-boolean v1, p0, Landroidx/lifecycle/t;->g:Z

    if-nez v1, :cond_2

    .line 4
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 5
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/lifecycle/t$a;

    .line 6
    :goto_0
    iget-object v3, v2, Landroidx/lifecycle/t$a;->a:Landroidx/lifecycle/Lifecycle$State;

    iget-object v4, p0, Landroidx/lifecycle/t;->c:Landroidx/lifecycle/Lifecycle$State;

    invoke-virtual {v3, v4}, Ljava/lang/Enum;->compareTo(Ljava/lang/Enum;)I

    move-result v3

    if-lez v3, :cond_0

    iget-boolean v3, p0, Landroidx/lifecycle/t;->g:Z

    if-nez v3, :cond_0

    iget-object v3, p0, Landroidx/lifecycle/t;->b:Landroidx/arch/core/b/a;

    .line 7
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroidx/arch/core/b/a;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 8
    iget-object v3, v2, Landroidx/lifecycle/t$a;->a:Landroidx/lifecycle/Lifecycle$State;

    invoke-static {v3}, Landroidx/lifecycle/Lifecycle$Event;->downFrom(Landroidx/lifecycle/Lifecycle$State;)Landroidx/lifecycle/Lifecycle$Event;

    move-result-object v3

    if-eqz v3, :cond_1

    .line 9
    invoke-virtual {v3}, Landroidx/lifecycle/Lifecycle$Event;->getTargetState()Landroidx/lifecycle/Lifecycle$State;

    move-result-object v4

    invoke-direct {p0, v4}, Landroidx/lifecycle/t;->n(Landroidx/lifecycle/Lifecycle$State;)V

    .line 10
    invoke-virtual {v2, p1, v3}, Landroidx/lifecycle/t$a;->a(Landroidx/lifecycle/r;Landroidx/lifecycle/Lifecycle$Event;)V

    .line 11
    invoke-direct {p0}, Landroidx/lifecycle/t;->m()V

    goto :goto_0

    .line 12
    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "no event down from "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, v2, Landroidx/lifecycle/t$a;->a:Landroidx/lifecycle/Lifecycle$State;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    return-void
.end method

.method private e(Landroidx/lifecycle/q;)Landroidx/lifecycle/Lifecycle$State;
    .locals 2

    .line 1
    iget-object v0, p0, Landroidx/lifecycle/t;->b:Landroidx/arch/core/b/a;

    invoke-virtual {v0, p1}, Landroidx/arch/core/b/a;->n(Ljava/lang/Object;)Ljava/util/Map$Entry;

    move-result-object p1

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    .line 2
    invoke-interface {p1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroidx/lifecycle/t$a;

    iget-object p1, p1, Landroidx/lifecycle/t$a;->a:Landroidx/lifecycle/Lifecycle$State;

    goto :goto_0

    :cond_0
    move-object p1, v0

    .line 3
    :goto_0
    iget-object v1, p0, Landroidx/lifecycle/t;->h:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_1

    iget-object v0, p0, Landroidx/lifecycle/t;->h:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/lifecycle/Lifecycle$State;

    .line 4
    :cond_1
    iget-object v1, p0, Landroidx/lifecycle/t;->c:Landroidx/lifecycle/Lifecycle$State;

    invoke-static {v1, p1}, Landroidx/lifecycle/t;->k(Landroidx/lifecycle/Lifecycle$State;Landroidx/lifecycle/Lifecycle$State;)Landroidx/lifecycle/Lifecycle$State;

    move-result-object p1

    invoke-static {p1, v0}, Landroidx/lifecycle/t;->k(Landroidx/lifecycle/Lifecycle$State;Landroidx/lifecycle/Lifecycle$State;)Landroidx/lifecycle/Lifecycle$State;

    move-result-object p1

    return-object p1
.end method

.method private f(Ljava/lang/String;)V
    .locals 3
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "RestrictedApi"
        }
    .end annotation

    .line 1
    iget-boolean v0, p0, Landroidx/lifecycle/t;->i:Z

    if-eqz v0, :cond_1

    .line 2
    invoke-static {}, Landroidx/arch/core/a/a;->c()Landroidx/arch/core/a/a;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/arch/core/a/a;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 3
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Method "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " must be called on the main thread"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    :goto_0
    return-void
.end method

.method private g(Landroidx/lifecycle/r;)V
    .locals 5

    .line 1
    iget-object v0, p0, Landroidx/lifecycle/t;->b:Landroidx/arch/core/b/a;

    .line 2
    invoke-virtual {v0}, Landroidx/arch/core/b/b;->f()Landroidx/arch/core/b/b$d;

    move-result-object v0

    .line 3
    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    iget-boolean v1, p0, Landroidx/lifecycle/t;->g:Z

    if-nez v1, :cond_2

    .line 4
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 5
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/lifecycle/t$a;

    .line 6
    :goto_0
    iget-object v3, v2, Landroidx/lifecycle/t$a;->a:Landroidx/lifecycle/Lifecycle$State;

    iget-object v4, p0, Landroidx/lifecycle/t;->c:Landroidx/lifecycle/Lifecycle$State;

    invoke-virtual {v3, v4}, Ljava/lang/Enum;->compareTo(Ljava/lang/Enum;)I

    move-result v3

    if-gez v3, :cond_0

    iget-boolean v3, p0, Landroidx/lifecycle/t;->g:Z

    if-nez v3, :cond_0

    iget-object v3, p0, Landroidx/lifecycle/t;->b:Landroidx/arch/core/b/a;

    .line 7
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroidx/arch/core/b/a;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 8
    iget-object v3, v2, Landroidx/lifecycle/t$a;->a:Landroidx/lifecycle/Lifecycle$State;

    invoke-direct {p0, v3}, Landroidx/lifecycle/t;->n(Landroidx/lifecycle/Lifecycle$State;)V

    .line 9
    iget-object v3, v2, Landroidx/lifecycle/t$a;->a:Landroidx/lifecycle/Lifecycle$State;

    invoke-static {v3}, Landroidx/lifecycle/Lifecycle$Event;->upFrom(Landroidx/lifecycle/Lifecycle$State;)Landroidx/lifecycle/Lifecycle$Event;

    move-result-object v3

    if-eqz v3, :cond_1

    .line 10
    invoke-virtual {v2, p1, v3}, Landroidx/lifecycle/t$a;->a(Landroidx/lifecycle/r;Landroidx/lifecycle/Lifecycle$Event;)V

    .line 11
    invoke-direct {p0}, Landroidx/lifecycle/t;->m()V

    goto :goto_0

    .line 12
    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "no event up from "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, v2, Landroidx/lifecycle/t$a;->a:Landroidx/lifecycle/Lifecycle$State;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    return-void
.end method

.method private i()Z
    .locals 3

    .line 1
    iget-object v0, p0, Landroidx/lifecycle/t;->b:Landroidx/arch/core/b/a;

    invoke-virtual {v0}, Landroidx/arch/core/b/b;->size()I

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_0

    return v1

    .line 2
    :cond_0
    iget-object v0, p0, Landroidx/lifecycle/t;->b:Landroidx/arch/core/b/a;

    invoke-virtual {v0}, Landroidx/arch/core/b/b;->a()Ljava/util/Map$Entry;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/lifecycle/t$a;

    iget-object v0, v0, Landroidx/lifecycle/t$a;->a:Landroidx/lifecycle/Lifecycle$State;

    .line 3
    iget-object v2, p0, Landroidx/lifecycle/t;->b:Landroidx/arch/core/b/a;

    invoke-virtual {v2}, Landroidx/arch/core/b/b;->i()Ljava/util/Map$Entry;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/lifecycle/t$a;

    iget-object v2, v2, Landroidx/lifecycle/t$a;->a:Landroidx/lifecycle/Lifecycle$State;

    if-ne v0, v2, :cond_1

    .line 4
    iget-object v0, p0, Landroidx/lifecycle/t;->c:Landroidx/lifecycle/Lifecycle$State;

    if-ne v0, v2, :cond_1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method static k(Landroidx/lifecycle/Lifecycle$State;Landroidx/lifecycle/Lifecycle$State;)Landroidx/lifecycle/Lifecycle$State;
    .locals 1

    if-eqz p1, :cond_0

    .line 1
    invoke-virtual {p1, p0}, Ljava/lang/Enum;->compareTo(Ljava/lang/Enum;)I

    move-result v0

    if-gez v0, :cond_0

    move-object p0, p1

    :cond_0
    return-object p0
.end method

.method private l(Landroidx/lifecycle/Lifecycle$State;)V
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/lifecycle/t;->c:Landroidx/lifecycle/Lifecycle$State;

    if-ne v0, p1, :cond_0

    return-void

    .line 2
    :cond_0
    iput-object p1, p0, Landroidx/lifecycle/t;->c:Landroidx/lifecycle/Lifecycle$State;

    .line 3
    iget-boolean p1, p0, Landroidx/lifecycle/t;->f:Z

    const/4 v0, 0x1

    if-nez p1, :cond_2

    iget p1, p0, Landroidx/lifecycle/t;->e:I

    if-eqz p1, :cond_1

    goto :goto_0

    .line 4
    :cond_1
    iput-boolean v0, p0, Landroidx/lifecycle/t;->f:Z

    .line 5
    invoke-direct {p0}, Landroidx/lifecycle/t;->p()V

    const/4 p1, 0x0

    .line 6
    iput-boolean p1, p0, Landroidx/lifecycle/t;->f:Z

    return-void

    .line 7
    :cond_2
    :goto_0
    iput-boolean v0, p0, Landroidx/lifecycle/t;->g:Z

    return-void
.end method

.method private m()V
    .locals 2

    .line 1
    iget-object v0, p0, Landroidx/lifecycle/t;->h:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    return-void
.end method

.method private n(Landroidx/lifecycle/Lifecycle$State;)V
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/lifecycle/t;->h:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method private p()V
    .locals 3

    .line 1
    iget-object v0, p0, Landroidx/lifecycle/t;->d:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/lifecycle/r;

    if-eqz v0, :cond_3

    .line 2
    :cond_0
    :goto_0
    invoke-direct {p0}, Landroidx/lifecycle/t;->i()Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_2

    .line 3
    iput-boolean v2, p0, Landroidx/lifecycle/t;->g:Z

    .line 4
    iget-object v1, p0, Landroidx/lifecycle/t;->c:Landroidx/lifecycle/Lifecycle$State;

    iget-object v2, p0, Landroidx/lifecycle/t;->b:Landroidx/arch/core/b/a;

    invoke-virtual {v2}, Landroidx/arch/core/b/b;->a()Ljava/util/Map$Entry;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/lifecycle/t$a;

    iget-object v2, v2, Landroidx/lifecycle/t$a;->a:Landroidx/lifecycle/Lifecycle$State;

    invoke-virtual {v1, v2}, Ljava/lang/Enum;->compareTo(Ljava/lang/Enum;)I

    move-result v1

    if-gez v1, :cond_1

    .line 5
    invoke-direct {p0, v0}, Landroidx/lifecycle/t;->d(Landroidx/lifecycle/r;)V

    .line 6
    :cond_1
    iget-object v1, p0, Landroidx/lifecycle/t;->b:Landroidx/arch/core/b/a;

    invoke-virtual {v1}, Landroidx/arch/core/b/b;->i()Ljava/util/Map$Entry;

    move-result-object v1

    .line 7
    iget-boolean v2, p0, Landroidx/lifecycle/t;->g:Z

    if-nez v2, :cond_0

    if-eqz v1, :cond_0

    iget-object v2, p0, Landroidx/lifecycle/t;->c:Landroidx/lifecycle/Lifecycle$State;

    .line 8
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/lifecycle/t$a;

    iget-object v1, v1, Landroidx/lifecycle/t$a;->a:Landroidx/lifecycle/Lifecycle$State;

    invoke-virtual {v2, v1}, Ljava/lang/Enum;->compareTo(Ljava/lang/Enum;)I

    move-result v1

    if-lez v1, :cond_0

    .line 9
    invoke-direct {p0, v0}, Landroidx/lifecycle/t;->g(Landroidx/lifecycle/r;)V

    goto :goto_0

    .line 10
    :cond_2
    iput-boolean v2, p0, Landroidx/lifecycle/t;->g:Z

    return-void

    .line 11
    :cond_3
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "LifecycleOwner of this LifecycleRegistry is alreadygarbage collected. It is too late to change lifecycle state."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public a(Landroidx/lifecycle/q;)V
    .locals 6

    const-string v0, "addObserver"

    .line 1
    invoke-direct {p0, v0}, Landroidx/lifecycle/t;->f(Ljava/lang/String;)V

    .line 2
    iget-object v0, p0, Landroidx/lifecycle/t;->c:Landroidx/lifecycle/Lifecycle$State;

    sget-object v1, Landroidx/lifecycle/Lifecycle$State;->DESTROYED:Landroidx/lifecycle/Lifecycle$State;

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    sget-object v1, Landroidx/lifecycle/Lifecycle$State;->INITIALIZED:Landroidx/lifecycle/Lifecycle$State;

    .line 3
    :goto_0
    new-instance v0, Landroidx/lifecycle/t$a;

    invoke-direct {v0, p1, v1}, Landroidx/lifecycle/t$a;-><init>(Landroidx/lifecycle/q;Landroidx/lifecycle/Lifecycle$State;)V

    .line 4
    iget-object v1, p0, Landroidx/lifecycle/t;->b:Landroidx/arch/core/b/a;

    invoke-virtual {v1, p1, v0}, Landroidx/arch/core/b/a;->l(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/lifecycle/t$a;

    if-eqz v1, :cond_1

    return-void

    .line 5
    :cond_1
    iget-object v1, p0, Landroidx/lifecycle/t;->d:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/lifecycle/r;

    if-nez v1, :cond_2

    return-void

    .line 6
    :cond_2
    iget v2, p0, Landroidx/lifecycle/t;->e:I

    const/4 v3, 0x1

    if-nez v2, :cond_4

    iget-boolean v2, p0, Landroidx/lifecycle/t;->f:Z

    if-eqz v2, :cond_3

    goto :goto_1

    :cond_3
    const/4 v2, 0x0

    goto :goto_2

    :cond_4
    :goto_1
    const/4 v2, 0x1

    .line 7
    :goto_2
    invoke-direct {p0, p1}, Landroidx/lifecycle/t;->e(Landroidx/lifecycle/q;)Landroidx/lifecycle/Lifecycle$State;

    move-result-object v4

    .line 8
    iget v5, p0, Landroidx/lifecycle/t;->e:I

    add-int/2addr v5, v3

    iput v5, p0, Landroidx/lifecycle/t;->e:I

    .line 9
    :goto_3
    iget-object v5, v0, Landroidx/lifecycle/t$a;->a:Landroidx/lifecycle/Lifecycle$State;

    invoke-virtual {v5, v4}, Ljava/lang/Enum;->compareTo(Ljava/lang/Enum;)I

    move-result v4

    if-gez v4, :cond_6

    iget-object v4, p0, Landroidx/lifecycle/t;->b:Landroidx/arch/core/b/a;

    .line 10
    invoke-virtual {v4, p1}, Landroidx/arch/core/b/a;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_6

    .line 11
    iget-object v4, v0, Landroidx/lifecycle/t$a;->a:Landroidx/lifecycle/Lifecycle$State;

    invoke-direct {p0, v4}, Landroidx/lifecycle/t;->n(Landroidx/lifecycle/Lifecycle$State;)V

    .line 12
    iget-object v4, v0, Landroidx/lifecycle/t$a;->a:Landroidx/lifecycle/Lifecycle$State;

    invoke-static {v4}, Landroidx/lifecycle/Lifecycle$Event;->upFrom(Landroidx/lifecycle/Lifecycle$State;)Landroidx/lifecycle/Lifecycle$Event;

    move-result-object v4

    if-eqz v4, :cond_5

    .line 13
    invoke-virtual {v0, v1, v4}, Landroidx/lifecycle/t$a;->a(Landroidx/lifecycle/r;Landroidx/lifecycle/Lifecycle$Event;)V

    .line 14
    invoke-direct {p0}, Landroidx/lifecycle/t;->m()V

    .line 15
    invoke-direct {p0, p1}, Landroidx/lifecycle/t;->e(Landroidx/lifecycle/q;)Landroidx/lifecycle/Lifecycle$State;

    move-result-object v4

    goto :goto_3

    .line 16
    :cond_5
    new-instance p1, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "no event up from "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, v0, Landroidx/lifecycle/t$a;->a:Landroidx/lifecycle/Lifecycle$State;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_6
    if-nez v2, :cond_7

    .line 17
    invoke-direct {p0}, Landroidx/lifecycle/t;->p()V

    .line 18
    :cond_7
    iget p1, p0, Landroidx/lifecycle/t;->e:I

    sub-int/2addr p1, v3

    iput p1, p0, Landroidx/lifecycle/t;->e:I

    return-void
.end method

.method public b()Landroidx/lifecycle/Lifecycle$State;
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/lifecycle/t;->c:Landroidx/lifecycle/Lifecycle$State;

    return-object v0
.end method

.method public c(Landroidx/lifecycle/q;)V
    .locals 1

    const-string v0, "removeObserver"

    .line 1
    invoke-direct {p0, v0}, Landroidx/lifecycle/t;->f(Ljava/lang/String;)V

    .line 2
    iget-object v0, p0, Landroidx/lifecycle/t;->b:Landroidx/arch/core/b/a;

    invoke-virtual {v0, p1}, Landroidx/arch/core/b/a;->m(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public h(Landroidx/lifecycle/Lifecycle$Event;)V
    .locals 1

    const-string v0, "handleLifecycleEvent"

    .line 1
    invoke-direct {p0, v0}, Landroidx/lifecycle/t;->f(Ljava/lang/String;)V

    .line 2
    invoke-virtual {p1}, Landroidx/lifecycle/Lifecycle$Event;->getTargetState()Landroidx/lifecycle/Lifecycle$State;

    move-result-object p1

    invoke-direct {p0, p1}, Landroidx/lifecycle/t;->l(Landroidx/lifecycle/Lifecycle$State;)V

    return-void
.end method

.method public j(Landroidx/lifecycle/Lifecycle$State;)V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const-string v0, "markState"

    .line 1
    invoke-direct {p0, v0}, Landroidx/lifecycle/t;->f(Ljava/lang/String;)V

    .line 2
    invoke-virtual {p0, p1}, Landroidx/lifecycle/t;->o(Landroidx/lifecycle/Lifecycle$State;)V

    return-void
.end method

.method public o(Landroidx/lifecycle/Lifecycle$State;)V
    .locals 1

    const-string v0, "setCurrentState"

    .line 1
    invoke-direct {p0, v0}, Landroidx/lifecycle/t;->f(Ljava/lang/String;)V

    .line 2
    invoke-direct {p0, p1}, Landroidx/lifecycle/t;->l(Landroidx/lifecycle/Lifecycle$State;)V

    return-void
.end method
