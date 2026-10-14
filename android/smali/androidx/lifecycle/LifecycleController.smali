.class public final Landroidx/lifecycle/LifecycleController;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final a:Landroidx/lifecycle/o;

.field private final b:Landroidx/lifecycle/Lifecycle;

.field private final c:Landroidx/lifecycle/Lifecycle$State;

.field private final d:Landroidx/lifecycle/g;


# direct methods
.method public constructor <init>(Landroidx/lifecycle/Lifecycle;Landroidx/lifecycle/Lifecycle$State;Landroidx/lifecycle/g;Lkotlinx/coroutines/t1;)V
    .locals 1

    const-string v0, "lifecycle"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "minState"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "dispatchQueue"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "parentJob"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/lifecycle/LifecycleController;->b:Landroidx/lifecycle/Lifecycle;

    iput-object p2, p0, Landroidx/lifecycle/LifecycleController;->c:Landroidx/lifecycle/Lifecycle$State;

    iput-object p3, p0, Landroidx/lifecycle/LifecycleController;->d:Landroidx/lifecycle/g;

    .line 2
    new-instance p2, Landroidx/lifecycle/LifecycleController$observer$1;

    invoke-direct {p2, p0, p4}, Landroidx/lifecycle/LifecycleController$observer$1;-><init>(Landroidx/lifecycle/LifecycleController;Lkotlinx/coroutines/t1;)V

    iput-object p2, p0, Landroidx/lifecycle/LifecycleController;->a:Landroidx/lifecycle/o;

    .line 3
    invoke-virtual {p1}, Landroidx/lifecycle/Lifecycle;->b()Landroidx/lifecycle/Lifecycle$State;

    move-result-object p3

    sget-object v0, Landroidx/lifecycle/Lifecycle$State;->DESTROYED:Landroidx/lifecycle/Lifecycle$State;

    if-ne p3, v0, :cond_0

    const/4 p1, 0x1

    const/4 p2, 0x0

    .line 4
    invoke-static {p4, p2, p1, p2}, Lkotlinx/coroutines/t1$a;->a(Lkotlinx/coroutines/t1;Ljava/util/concurrent/CancellationException;ILjava/lang/Object;)V

    .line 5
    invoke-virtual {p0}, Landroidx/lifecycle/LifecycleController;->c()V

    goto :goto_0

    .line 6
    :cond_0
    invoke-virtual {p1, p2}, Landroidx/lifecycle/Lifecycle;->a(Landroidx/lifecycle/q;)V

    :goto_0
    return-void
.end method

.method public static final synthetic a(Landroidx/lifecycle/LifecycleController;)Landroidx/lifecycle/g;
    .locals 0

    .line 1
    iget-object p0, p0, Landroidx/lifecycle/LifecycleController;->d:Landroidx/lifecycle/g;

    return-object p0
.end method

.method public static final synthetic b(Landroidx/lifecycle/LifecycleController;)Landroidx/lifecycle/Lifecycle$State;
    .locals 0

    .line 1
    iget-object p0, p0, Landroidx/lifecycle/LifecycleController;->c:Landroidx/lifecycle/Lifecycle$State;

    return-object p0
.end method


# virtual methods
.method public final c()V
    .locals 2

    .line 1
    iget-object v0, p0, Landroidx/lifecycle/LifecycleController;->b:Landroidx/lifecycle/Lifecycle;

    iget-object v1, p0, Landroidx/lifecycle/LifecycleController;->a:Landroidx/lifecycle/o;

    invoke-virtual {v0, v1}, Landroidx/lifecycle/Lifecycle;->c(Landroidx/lifecycle/q;)V

    .line 2
    iget-object v0, p0, Landroidx/lifecycle/LifecycleController;->d:Landroidx/lifecycle/g;

    invoke-virtual {v0}, Landroidx/lifecycle/g;->f()V

    return-void
.end method
