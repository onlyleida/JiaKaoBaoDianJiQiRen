.class public Lcom/drakeet/multitype/f;
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
            "+",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private b:Lcom/drakeet/multitype/h;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 6

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x7

    const/4 v5, 0x0

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/drakeet/multitype/f;-><init>(Ljava/util/List;ILcom/drakeet/multitype/h;ILkotlin/jvm/internal/o;)V

    return-void
.end method

.method public constructor <init>(Ljava/util/List;ILcom/drakeet/multitype/h;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "+",
            "Ljava/lang/Object;",
            ">;I",
            "Lcom/drakeet/multitype/h;",
            ")V"
        }
    .end annotation

    const-string p2, "items"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/r;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p2, "types"

    invoke-static {p3, p2}, Lkotlin/jvm/internal/r;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3
    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;-><init>()V

    iput-object p1, p0, Lcom/drakeet/multitype/f;->a:Ljava/util/List;

    iput-object p3, p0, Lcom/drakeet/multitype/f;->b:Lcom/drakeet/multitype/h;

    return-void
.end method

.method public synthetic constructor <init>(Ljava/util/List;ILcom/drakeet/multitype/h;ILkotlin/jvm/internal/o;)V
    .locals 0

    and-int/lit8 p5, p4, 0x1

    if-eqz p5, :cond_0

    .line 1
    invoke-static {}, Lkotlin/collections/s;->j()Ljava/util/List;

    move-result-object p1

    :cond_0
    and-int/lit8 p5, p4, 0x2

    if-eqz p5, :cond_1

    const/4 p2, 0x0

    :cond_1
    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_2

    .line 2
    new-instance p3, Lcom/drakeet/multitype/MutableTypes;

    const/4 p4, 0x0

    const/4 p5, 0x2

    invoke-direct {p3, p2, p4, p5, p4}, Lcom/drakeet/multitype/MutableTypes;-><init>(ILjava/util/List;ILkotlin/jvm/internal/o;)V

    :cond_2
    invoke-direct {p0, p1, p2, p3}, Lcom/drakeet/multitype/f;-><init>(Ljava/util/List;ILcom/drakeet/multitype/h;)V

    return-void
.end method

.method private final d(Landroidx/recyclerview/widget/RecyclerView$c0;)Lcom/drakeet/multitype/c;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/recyclerview/widget/RecyclerView$c0;",
            ")",
            "Lcom/drakeet/multitype/c<",
            "Ljava/lang/Object;",
            "Landroidx/recyclerview/widget/RecyclerView$c0;",
            ">;"
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lcom/drakeet/multitype/f;->e()Lcom/drakeet/multitype/h;

    move-result-object v0

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$c0;->getItemViewType()I

    move-result p1

    invoke-interface {v0, p1}, Lcom/drakeet/multitype/h;->getType(I)Lcom/drakeet/multitype/g;

    move-result-object p1

    invoke-virtual {p1}, Lcom/drakeet/multitype/g;->b()Lcom/drakeet/multitype/c;

    move-result-object p1

    if-eqz p1, :cond_0

    return-object p1

    :cond_0
    new-instance p1, Lkotlin/TypeCastException;

    const-string v0, "null cannot be cast to non-null type com.drakeet.multitype.ItemViewDelegate<kotlin.Any, androidx.recyclerview.widget.RecyclerView.ViewHolder>"

    invoke-direct {p1, v0}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private final j(Ljava/lang/Class;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)V"
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lcom/drakeet/multitype/f;->e()Lcom/drakeet/multitype/h;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/drakeet/multitype/h;->b(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "The type "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " you originally registered is now overwritten."

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "MultiTypeAdapter"

    invoke-static {v0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method


# virtual methods
.method public c()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/drakeet/multitype/f;->a:Ljava/util/List;

    return-object v0
.end method

.method public e()Lcom/drakeet/multitype/h;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/drakeet/multitype/f;->b:Lcom/drakeet/multitype/h;

    return-object v0
.end method

.method public final f(ILjava/lang/Object;)I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/drakeet/multitype/DelegateNotFoundException;
        }
    .end annotation

    const-string v0, "item"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/r;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-virtual {p0}, Lcom/drakeet/multitype/f;->e()Lcom/drakeet/multitype/h;

    move-result-object v0

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/drakeet/multitype/h;->a(Ljava/lang/Class;)I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 2
    invoke-virtual {p0}, Lcom/drakeet/multitype/f;->e()Lcom/drakeet/multitype/h;

    move-result-object v1

    invoke-interface {v1, v0}, Lcom/drakeet/multitype/h;->getType(I)Lcom/drakeet/multitype/g;

    move-result-object v1

    invoke-virtual {v1}, Lcom/drakeet/multitype/g;->c()Lcom/drakeet/multitype/e;

    move-result-object v1

    .line 3
    invoke-interface {v1, p1, p2}, Lcom/drakeet/multitype/e;->a(ILjava/lang/Object;)I

    move-result p1

    add-int/2addr v0, p1

    return v0

    .line 4
    :cond_0
    new-instance p1, Lcom/drakeet/multitype/DelegateNotFoundException;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p2

    invoke-direct {p1, p2}, Lcom/drakeet/multitype/DelegateNotFoundException;-><init>(Ljava/lang/Class;)V

    throw p1
.end method

.method public final g(Ljava/lang/Class;Lcom/drakeet/multitype/c;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;",
            "Lcom/drakeet/multitype/c<",
            "TT;*>;)V"
        }
    .end annotation

    const-string v0, "clazz"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "delegate"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/r;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0, p1}, Lcom/drakeet/multitype/f;->j(Ljava/lang/Class;)V

    .line 2
    new-instance v0, Lcom/drakeet/multitype/g;

    new-instance v1, Lcom/drakeet/multitype/a;

    invoke-direct {v1}, Lcom/drakeet/multitype/a;-><init>()V

    invoke-direct {v0, p1, p2, v1}, Lcom/drakeet/multitype/g;-><init>(Ljava/lang/Class;Lcom/drakeet/multitype/c;Lcom/drakeet/multitype/e;)V

    invoke-virtual {p0, v0}, Lcom/drakeet/multitype/f;->h(Lcom/drakeet/multitype/g;)V

    return-void
.end method

.method public getItemCount()I
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/drakeet/multitype/f;->c()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getItemId(I)J
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/drakeet/multitype/f;->c()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    .line 2
    invoke-virtual {p0, p1}, Lcom/drakeet/multitype/f;->getItemViewType(I)I

    move-result p1

    .line 3
    invoke-virtual {p0}, Lcom/drakeet/multitype/f;->e()Lcom/drakeet/multitype/h;

    move-result-object v1

    invoke-interface {v1, p1}, Lcom/drakeet/multitype/h;->getType(I)Lcom/drakeet/multitype/g;

    move-result-object p1

    invoke-virtual {p1}, Lcom/drakeet/multitype/g;->b()Lcom/drakeet/multitype/c;

    move-result-object p1

    invoke-virtual {p1, v0}, Lcom/drakeet/multitype/c;->b(Ljava/lang/Object;)J

    move-result-wide v0

    return-wide v0
.end method

.method public getItemViewType(I)I
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/drakeet/multitype/f;->c()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcom/drakeet/multitype/f;->f(ILjava/lang/Object;)I

    move-result p1

    return p1
.end method

.method public final h(Lcom/drakeet/multitype/g;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/drakeet/multitype/g<",
            "TT;>;)V"
        }
    .end annotation

    const-string v0, "type"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-virtual {p0}, Lcom/drakeet/multitype/f;->e()Lcom/drakeet/multitype/h;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/drakeet/multitype/h;->c(Lcom/drakeet/multitype/g;)V

    .line 2
    invoke-virtual {p1}, Lcom/drakeet/multitype/g;->b()Lcom/drakeet/multitype/c;

    move-result-object p1

    invoke-virtual {p1, p0}, Lcom/drakeet/multitype/c;->j(Lcom/drakeet/multitype/f;)V

    return-void
.end method

.method public i(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "+",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iput-object p1, p0, Lcom/drakeet/multitype/f;->a:Ljava/util/List;

    return-void
.end method

.method public onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$c0;I)V
    .locals 1

    const-string v0, "holder"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-static {}, Lkotlin/collections/s;->j()Ljava/util/List;

    move-result-object v0

    invoke-virtual {p0, p1, p2, v0}, Lcom/drakeet/multitype/f;->onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$c0;ILjava/util/List;)V

    return-void
.end method

.method public onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$c0;ILjava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/recyclerview/widget/RecyclerView$c0;",
            "I",
            "Ljava/util/List<",
            "+",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    const-string v0, "holder"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "payloads"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/r;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    invoke-virtual {p0}, Lcom/drakeet/multitype/f;->c()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    .line 3
    invoke-direct {p0, p1}, Lcom/drakeet/multitype/f;->d(Landroidx/recyclerview/widget/RecyclerView$c0;)Lcom/drakeet/multitype/c;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3}, Lcom/drakeet/multitype/c;->d(Landroidx/recyclerview/widget/RecyclerView$c0;Ljava/lang/Object;Ljava/util/List;)V

    return-void
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$c0;
    .locals 2

    const-string v0, "parent"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-virtual {p0}, Lcom/drakeet/multitype/f;->e()Lcom/drakeet/multitype/h;

    move-result-object v0

    invoke-interface {v0, p2}, Lcom/drakeet/multitype/h;->getType(I)Lcom/drakeet/multitype/g;

    move-result-object p2

    invoke-virtual {p2}, Lcom/drakeet/multitype/g;->b()Lcom/drakeet/multitype/c;

    move-result-object p2

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "parent.context"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/r;->b(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p2, v0, p1}, Lcom/drakeet/multitype/c;->e(Landroid/content/Context;Landroid/view/ViewGroup;)Landroidx/recyclerview/widget/RecyclerView$c0;

    move-result-object p1

    return-object p1
.end method

.method public onFailedToRecycleView(Landroidx/recyclerview/widget/RecyclerView$c0;)Z
    .locals 1

    const-string v0, "holder"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0, p1}, Lcom/drakeet/multitype/f;->d(Landroidx/recyclerview/widget/RecyclerView$c0;)Lcom/drakeet/multitype/c;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/drakeet/multitype/c;->f(Landroidx/recyclerview/widget/RecyclerView$c0;)Z

    move-result p1

    return p1
.end method

.method public onViewAttachedToWindow(Landroidx/recyclerview/widget/RecyclerView$c0;)V
    .locals 1

    const-string v0, "holder"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0, p1}, Lcom/drakeet/multitype/f;->d(Landroidx/recyclerview/widget/RecyclerView$c0;)Lcom/drakeet/multitype/c;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/drakeet/multitype/c;->g(Landroidx/recyclerview/widget/RecyclerView$c0;)V

    return-void
.end method

.method public onViewDetachedFromWindow(Landroidx/recyclerview/widget/RecyclerView$c0;)V
    .locals 1

    const-string v0, "holder"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0, p1}, Lcom/drakeet/multitype/f;->d(Landroidx/recyclerview/widget/RecyclerView$c0;)Lcom/drakeet/multitype/c;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/drakeet/multitype/c;->h(Landroidx/recyclerview/widget/RecyclerView$c0;)V

    return-void
.end method

.method public onViewRecycled(Landroidx/recyclerview/widget/RecyclerView$c0;)V
    .locals 1

    const-string v0, "holder"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0, p1}, Lcom/drakeet/multitype/f;->d(Landroidx/recyclerview/widget/RecyclerView$c0;)Lcom/drakeet/multitype/c;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/drakeet/multitype/c;->i(Landroidx/recyclerview/widget/RecyclerView$c0;)V

    return-void
.end method
