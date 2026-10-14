.class public final Landroidx/lifecycle/l0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lkotlin/f;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<VM:",
        "Landroidx/lifecycle/j0;",
        ">",
        "Ljava/lang/Object;",
        "Lkotlin/f<",
        "TVM;>;"
    }
.end annotation


# instance fields
.field private a:Landroidx/lifecycle/j0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TVM;"
        }
    .end annotation
.end field

.field private final b:Lkotlin/reflect/d;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/reflect/d<",
            "TVM;>;"
        }
    .end annotation
.end field

.field private final c:Lkotlin/jvm/b/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/b/a<",
            "Landroidx/lifecycle/n0;",
            ">;"
        }
    .end annotation
.end field

.field private final d:Lkotlin/jvm/b/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/b/a<",
            "Landroidx/lifecycle/m0$b;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lkotlin/reflect/d;Lkotlin/jvm/b/a;Lkotlin/jvm/b/a;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/reflect/d<",
            "TVM;>;",
            "Lkotlin/jvm/b/a<",
            "+",
            "Landroidx/lifecycle/n0;",
            ">;",
            "Lkotlin/jvm/b/a<",
            "+",
            "Landroidx/lifecycle/m0$b;",
            ">;)V"
        }
    .end annotation

    const-string v0, "viewModelClass"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "storeProducer"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "factoryProducer"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/lifecycle/l0;->b:Lkotlin/reflect/d;

    iput-object p2, p0, Landroidx/lifecycle/l0;->c:Lkotlin/jvm/b/a;

    iput-object p3, p0, Landroidx/lifecycle/l0;->d:Lkotlin/jvm/b/a;

    return-void
.end method


# virtual methods
.method public a()Landroidx/lifecycle/j0;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TVM;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Landroidx/lifecycle/l0;->a:Landroidx/lifecycle/j0;

    if-nez v0, :cond_0

    .line 2
    iget-object v0, p0, Landroidx/lifecycle/l0;->d:Lkotlin/jvm/b/a;

    invoke-interface {v0}, Lkotlin/jvm/b/a;->invoke()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/lifecycle/m0$b;

    .line 3
    iget-object v1, p0, Landroidx/lifecycle/l0;->c:Lkotlin/jvm/b/a;

    invoke-interface {v1}, Lkotlin/jvm/b/a;->invoke()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/lifecycle/n0;

    .line 4
    new-instance v2, Landroidx/lifecycle/m0;

    invoke-direct {v2, v1, v0}, Landroidx/lifecycle/m0;-><init>(Landroidx/lifecycle/n0;Landroidx/lifecycle/m0$b;)V

    iget-object v0, p0, Landroidx/lifecycle/l0;->b:Lkotlin/reflect/d;

    invoke-static {v0}, Lkotlin/jvm/a;->b(Lkotlin/reflect/d;)Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroidx/lifecycle/m0;->a(Ljava/lang/Class;)Landroidx/lifecycle/j0;

    move-result-object v0

    .line 5
    iput-object v0, p0, Landroidx/lifecycle/l0;->a:Landroidx/lifecycle/j0;

    const-string v1, "ViewModelProvider(store,\u2026ed = it\n                }"

    .line 6
    invoke-static {v0, v1}, Lkotlin/jvm/internal/r;->d(Ljava/lang/Object;Ljava/lang/String;)V

    :cond_0
    return-object v0
.end method

.method public bridge synthetic getValue()Ljava/lang/Object;
    .locals 1

    .line 1
    invoke-virtual {p0}, Landroidx/lifecycle/l0;->a()Landroidx/lifecycle/j0;

    move-result-object v0

    return-object v0
.end method
