.class public Lme/drakeet/multitype/d;
.super Landroidx/recyclerview/widget/RecyclerView$Adapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/recyclerview/widget/RecyclerView$Adapter<",
        "Landroidx/recyclerview/widget/RecyclerView$c0;",
        ">;"
    }
.end annotation


# instance fields
.field private a:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "*>;"
        }
    .end annotation
.end field

.field private b:Lme/drakeet/multitype/g;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    invoke-direct {p0, v0}, Lme/drakeet/multitype/d;-><init>(Ljava/util/List;)V

    return-void
.end method

.method public constructor <init>(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "*>;)V"
        }
    .end annotation

    .line 2
    new-instance v0, Lme/drakeet/multitype/e;

    invoke-direct {v0}, Lme/drakeet/multitype/e;-><init>()V

    invoke-direct {p0, p1, v0}, Lme/drakeet/multitype/d;-><init>(Ljava/util/List;Lme/drakeet/multitype/g;)V

    return-void
.end method

.method public constructor <init>(Ljava/util/List;Lme/drakeet/multitype/g;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "*>;",
            "Lme/drakeet/multitype/g;",
            ")V"
        }
    .end annotation

    .line 3
    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;-><init>()V

    .line 4
    invoke-static {p1}, Lme/drakeet/multitype/f;->a(Ljava/lang/Object;)Ljava/lang/Object;

    .line 5
    invoke-static {p2}, Lme/drakeet/multitype/f;->a(Ljava/lang/Object;)Ljava/lang/Object;

    .line 6
    iput-object p1, p0, Lme/drakeet/multitype/d;->a:Ljava/util/List;

    .line 7
    iput-object p2, p0, Lme/drakeet/multitype/d;->b:Lme/drakeet/multitype/g;

    return-void
.end method

.method private c(Ljava/lang/Class;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)V"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lme/drakeet/multitype/d;->b:Lme/drakeet/multitype/g;

    invoke-interface {v0, p1}, Lme/drakeet/multitype/g;->b(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "You have registered the "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " type. "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "It will override the original binder(s)."

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "MultiTypeAdapter"

    invoke-static {v0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method

.method private d(Landroidx/recyclerview/widget/RecyclerView$c0;)Lme/drakeet/multitype/b;
    .locals 1

    .line 1
    iget-object v0, p0, Lme/drakeet/multitype/d;->b:Lme/drakeet/multitype/g;

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$c0;->getItemViewType()I

    move-result p1

    invoke-interface {v0, p1}, Lme/drakeet/multitype/g;->c(I)Lme/drakeet/multitype/b;

    move-result-object p1

    return-object p1
.end method


# virtual methods
.method e(ILjava/lang/Object;)I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lme/drakeet/multitype/BinderNotFoundException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lme/drakeet/multitype/d;->b:Lme/drakeet/multitype/g;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-interface {v0, v1}, Lme/drakeet/multitype/g;->a(Ljava/lang/Class;)I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 2
    iget-object v1, p0, Lme/drakeet/multitype/d;->b:Lme/drakeet/multitype/g;

    invoke-interface {v1, v0}, Lme/drakeet/multitype/g;->d(I)Lme/drakeet/multitype/c;

    move-result-object v1

    .line 3
    invoke-interface {v1, p1, p2}, Lme/drakeet/multitype/c;->a(ILjava/lang/Object;)I

    move-result p1

    add-int/2addr v0, p1

    return v0

    .line 4
    :cond_0
    new-instance p1, Lme/drakeet/multitype/BinderNotFoundException;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p2

    invoke-direct {p1, p2}, Lme/drakeet/multitype/BinderNotFoundException;-><init>(Ljava/lang/Class;)V

    throw p1
.end method

.method public f(Ljava/lang/Class;Lme/drakeet/multitype/b;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "+TT;>;",
            "Lme/drakeet/multitype/b<",
            "TT;*>;)V"
        }
    .end annotation

    .line 1
    invoke-static {p1}, Lme/drakeet/multitype/f;->a(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    invoke-static {p2}, Lme/drakeet/multitype/f;->a(Ljava/lang/Object;)Ljava/lang/Object;

    .line 3
    invoke-direct {p0, p1}, Lme/drakeet/multitype/d;->c(Ljava/lang/Class;)V

    .line 4
    new-instance v0, Lme/drakeet/multitype/a;

    invoke-direct {v0}, Lme/drakeet/multitype/a;-><init>()V

    invoke-virtual {p0, p1, p2, v0}, Lme/drakeet/multitype/d;->g(Ljava/lang/Class;Lme/drakeet/multitype/b;Lme/drakeet/multitype/c;)V

    return-void
.end method

.method g(Ljava/lang/Class;Lme/drakeet/multitype/b;Lme/drakeet/multitype/c;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "+TT;>;",
            "Lme/drakeet/multitype/b<",
            "TT;*>;",
            "Lme/drakeet/multitype/c<",
            "TT;>;)V"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lme/drakeet/multitype/d;->b:Lme/drakeet/multitype/g;

    invoke-interface {v0, p1, p2, p3}, Lme/drakeet/multitype/g;->e(Ljava/lang/Class;Lme/drakeet/multitype/b;Lme/drakeet/multitype/c;)V

    .line 2
    iput-object p0, p2, Lme/drakeet/multitype/b;->adapter:Lme/drakeet/multitype/d;

    return-void
.end method

.method public final getItemCount()I
    .locals 1

    .line 1
    iget-object v0, p0, Lme/drakeet/multitype/d;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public final getItemId(I)J
    .locals 2

    .line 1
    iget-object v0, p0, Lme/drakeet/multitype/d;->a:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    .line 2
    invoke-virtual {p0, p1}, Lme/drakeet/multitype/d;->getItemViewType(I)I

    move-result p1

    .line 3
    iget-object v1, p0, Lme/drakeet/multitype/d;->b:Lme/drakeet/multitype/g;

    invoke-interface {v1, p1}, Lme/drakeet/multitype/g;->c(I)Lme/drakeet/multitype/b;

    move-result-object p1

    .line 4
    invoke-virtual {p1, v0}, Lme/drakeet/multitype/b;->getItemId(Ljava/lang/Object;)J

    move-result-wide v0

    return-wide v0
.end method

.method public final getItemViewType(I)I
    .locals 1

    .line 1
    iget-object v0, p0, Lme/drakeet/multitype/d;->a:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    .line 2
    invoke-virtual {p0, p1, v0}, Lme/drakeet/multitype/d;->e(ILjava/lang/Object;)I

    move-result p1

    return p1
.end method

.method public h(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "*>;)V"
        }
    .end annotation

    .line 1
    invoke-static {p1}, Lme/drakeet/multitype/f;->a(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    iput-object p1, p0, Lme/drakeet/multitype/d;->a:Ljava/util/List;

    return-void
.end method

.method public final onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$c0;I)V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    invoke-virtual {p0, p1, p2, v0}, Lme/drakeet/multitype/d;->onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$c0;ILjava/util/List;)V

    return-void
.end method

.method public final onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$c0;ILjava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/recyclerview/widget/RecyclerView$c0;",
            "I",
            "Ljava/util/List<",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .line 2
    iget-object v0, p0, Lme/drakeet/multitype/d;->a:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    .line 3
    iget-object v0, p0, Lme/drakeet/multitype/d;->b:Lme/drakeet/multitype/g;

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$c0;->getItemViewType()I

    move-result v1

    invoke-interface {v0, v1}, Lme/drakeet/multitype/g;->c(I)Lme/drakeet/multitype/b;

    move-result-object v0

    .line 4
    invoke-virtual {v0, p1, p2, p3}, Lme/drakeet/multitype/b;->onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$c0;Ljava/lang/Object;Ljava/util/List;)V

    return-void
.end method

.method public final onCreateViewHolder(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$c0;
    .locals 2

    .line 1
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    .line 2
    iget-object v1, p0, Lme/drakeet/multitype/d;->b:Lme/drakeet/multitype/g;

    invoke-interface {v1, p2}, Lme/drakeet/multitype/g;->c(I)Lme/drakeet/multitype/b;

    move-result-object p2

    .line 3
    invoke-virtual {p2, v0, p1}, Lme/drakeet/multitype/b;->onCreateViewHolder(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;)Landroidx/recyclerview/widget/RecyclerView$c0;

    move-result-object p1

    return-object p1
.end method

.method public final onFailedToRecycleView(Landroidx/recyclerview/widget/RecyclerView$c0;)Z
    .locals 1

    .line 1
    invoke-direct {p0, p1}, Lme/drakeet/multitype/d;->d(Landroidx/recyclerview/widget/RecyclerView$c0;)Lme/drakeet/multitype/b;

    move-result-object v0

    invoke-virtual {v0, p1}, Lme/drakeet/multitype/b;->onFailedToRecycleView(Landroidx/recyclerview/widget/RecyclerView$c0;)Z

    move-result p1

    return p1
.end method

.method public final onViewAttachedToWindow(Landroidx/recyclerview/widget/RecyclerView$c0;)V
    .locals 1

    .line 1
    invoke-direct {p0, p1}, Lme/drakeet/multitype/d;->d(Landroidx/recyclerview/widget/RecyclerView$c0;)Lme/drakeet/multitype/b;

    move-result-object v0

    invoke-virtual {v0, p1}, Lme/drakeet/multitype/b;->onViewAttachedToWindow(Landroidx/recyclerview/widget/RecyclerView$c0;)V

    return-void
.end method

.method public final onViewDetachedFromWindow(Landroidx/recyclerview/widget/RecyclerView$c0;)V
    .locals 1

    .line 1
    invoke-direct {p0, p1}, Lme/drakeet/multitype/d;->d(Landroidx/recyclerview/widget/RecyclerView$c0;)Lme/drakeet/multitype/b;

    move-result-object v0

    invoke-virtual {v0, p1}, Lme/drakeet/multitype/b;->onViewDetachedFromWindow(Landroidx/recyclerview/widget/RecyclerView$c0;)V

    return-void
.end method

.method public final onViewRecycled(Landroidx/recyclerview/widget/RecyclerView$c0;)V
    .locals 1

    .line 1
    invoke-direct {p0, p1}, Lme/drakeet/multitype/d;->d(Landroidx/recyclerview/widget/RecyclerView$c0;)Lme/drakeet/multitype/b;

    move-result-object v0

    invoke-virtual {v0, p1}, Lme/drakeet/multitype/b;->onViewRecycled(Landroidx/recyclerview/widget/RecyclerView$c0;)V

    return-void
.end method
