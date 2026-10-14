.class Lcn/mucang/android/jiakaoyi/mapcollect/collect/v0$b;
.super Landroidx/recyclerview/widget/RecyclerView$Adapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/mucang/android/jiakaoyi/mapcollect/collect/v0;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "b"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/recyclerview/widget/RecyclerView$Adapter<",
        "Lcn/mucang/android/jiakaoyi/mapcollect/collect/v0$c;",
        ">;"
    }
.end annotation


# instance fields
.field private final a:Landroid/view/View$OnClickListener;

.field private final b:Landroid/view/View$OnLongClickListener;

.field private final c:Landroid/view/View$OnClickListener;

.field private final d:Landroid/view/View$OnClickListener;

.field private final e:Landroid/view/View$OnClickListener;

.field final synthetic f:Lcn/mucang/android/jiakaoyi/mapcollect/collect/v0;


# direct methods
.method private constructor <init>(Lcn/mucang/android/jiakaoyi/mapcollect/collect/v0;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcn/mucang/android/jiakaoyi/mapcollect/collect/v0$b;->f:Lcn/mucang/android/jiakaoyi/mapcollect/collect/v0;

    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;-><init>()V

    .line 2
    new-instance p1, Lcn/mucang/android/jiakaoyi/mapcollect/collect/j0;

    invoke-direct {p1, p0}, Lcn/mucang/android/jiakaoyi/mapcollect/collect/j0;-><init>(Lcn/mucang/android/jiakaoyi/mapcollect/collect/v0$b;)V

    iput-object p1, p0, Lcn/mucang/android/jiakaoyi/mapcollect/collect/v0$b;->a:Landroid/view/View$OnClickListener;

    .line 3
    new-instance p1, Lcn/mucang/android/jiakaoyi/mapcollect/collect/v0$b$a;

    invoke-direct {p1, p0}, Lcn/mucang/android/jiakaoyi/mapcollect/collect/v0$b$a;-><init>(Lcn/mucang/android/jiakaoyi/mapcollect/collect/v0$b;)V

    iput-object p1, p0, Lcn/mucang/android/jiakaoyi/mapcollect/collect/v0$b;->b:Landroid/view/View$OnLongClickListener;

    .line 4
    new-instance p1, Lcn/mucang/android/jiakaoyi/mapcollect/collect/i0;

    invoke-direct {p1, p0}, Lcn/mucang/android/jiakaoyi/mapcollect/collect/i0;-><init>(Lcn/mucang/android/jiakaoyi/mapcollect/collect/v0$b;)V

    iput-object p1, p0, Lcn/mucang/android/jiakaoyi/mapcollect/collect/v0$b;->c:Landroid/view/View$OnClickListener;

    .line 5
    new-instance p1, Lcn/mucang/android/jiakaoyi/mapcollect/collect/h0;

    invoke-direct {p1, p0}, Lcn/mucang/android/jiakaoyi/mapcollect/collect/h0;-><init>(Lcn/mucang/android/jiakaoyi/mapcollect/collect/v0$b;)V

    iput-object p1, p0, Lcn/mucang/android/jiakaoyi/mapcollect/collect/v0$b;->d:Landroid/view/View$OnClickListener;

    .line 6
    new-instance p1, Lcn/mucang/android/jiakaoyi/mapcollect/collect/v0$b$b;

    invoke-direct {p1, p0}, Lcn/mucang/android/jiakaoyi/mapcollect/collect/v0$b$b;-><init>(Lcn/mucang/android/jiakaoyi/mapcollect/collect/v0$b;)V

    iput-object p1, p0, Lcn/mucang/android/jiakaoyi/mapcollect/collect/v0$b;->e:Landroid/view/View$OnClickListener;

    return-void
.end method

.method synthetic constructor <init>(Lcn/mucang/android/jiakaoyi/mapcollect/collect/v0;Lcn/mucang/android/jiakaoyi/mapcollect/collect/v0$a;)V
    .locals 0

    .line 7
    invoke-direct {p0, p1}, Lcn/mucang/android/jiakaoyi/mapcollect/collect/v0$b;-><init>(Lcn/mucang/android/jiakaoyi/mapcollect/collect/v0;)V

    return-void
.end method

.method static synthetic c(Lcn/mucang/android/jiakaoyi/mapcollect/collect/v0$b;Ljava/lang/String;)Lcn/mucang/android/jiakaoyi/engine/model/Step;
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcn/mucang/android/jiakaoyi/mapcollect/collect/v0$b;->d(Ljava/lang/String;)Lcn/mucang/android/jiakaoyi/engine/model/Step;

    move-result-object p0

    return-object p0
.end method

.method private d(Ljava/lang/String;)Lcn/mucang/android/jiakaoyi/engine/model/Step;
    .locals 3

    .line 1
    invoke-static {}, Lcn/mucang/android/jiakaoyi/engine/model/Step;->k2Steps()Ljava/util/List;

    move-result-object v0

    .line 2
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcn/mucang/android/jiakaoyi/engine/model/Step;

    .line 3
    invoke-virtual {v1}, Lcn/mucang/android/jiakaoyi/engine/model/Step;->getStepName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    return-object v1

    :cond_1
    const/4 p1, 0x0

    return-object p1
.end method

.method private synthetic e(Landroid/view/View;)V
    .locals 1

    .line 1
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcn/mucang/android/jiakaoyi/mapcollect/collect/data/SourceData;

    .line 2
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/mapcollect/collect/v0$b;->f:Lcn/mucang/android/jiakaoyi/mapcollect/collect/v0;

    invoke-static {v0, p1}, Lcn/mucang/android/jiakaoyi/mapcollect/collect/v0;->e(Lcn/mucang/android/jiakaoyi/mapcollect/collect/v0;Lcn/mucang/android/jiakaoyi/mapcollect/collect/data/SourceData;)V

    return-void
.end method

.method private synthetic g(Landroid/view/View;)V
    .locals 1

    .line 1
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcn/mucang/android/jiakaoyi/mapcollect/collect/data/SourceData;

    .line 2
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/mapcollect/collect/v0$b;->f:Lcn/mucang/android/jiakaoyi/mapcollect/collect/v0;

    invoke-static {v0, p1}, Lcn/mucang/android/jiakaoyi/mapcollect/collect/v0;->d(Lcn/mucang/android/jiakaoyi/mapcollect/collect/v0;Lcn/mucang/android/jiakaoyi/mapcollect/collect/data/SourceData;)V

    return-void
.end method

.method private synthetic i(Landroid/view/View;)V
    .locals 1

    .line 1
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcn/mucang/android/jiakaoyi/mapcollect/collect/data/SourceData;

    .line 2
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/mapcollect/collect/v0$b;->f:Lcn/mucang/android/jiakaoyi/mapcollect/collect/v0;

    invoke-static {v0, p1}, Lcn/mucang/android/jiakaoyi/mapcollect/collect/v0;->c(Lcn/mucang/android/jiakaoyi/mapcollect/collect/v0;Lcn/mucang/android/jiakaoyi/mapcollect/collect/data/SourceData;)V

    return-void
.end method


# virtual methods
.method public synthetic f(Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lcn/mucang/android/jiakaoyi/mapcollect/collect/v0$b;->e(Landroid/view/View;)V

    return-void
.end method

.method public getItemCount()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/mapcollect/collect/v0$b;->f:Lcn/mucang/android/jiakaoyi/mapcollect/collect/v0;

    invoke-static {v0}, Lcn/mucang/android/jiakaoyi/mapcollect/collect/v0;->a(Lcn/mucang/android/jiakaoyi/mapcollect/collect/v0;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public synthetic h(Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lcn/mucang/android/jiakaoyi/mapcollect/collect/v0$b;->g(Landroid/view/View;)V

    return-void
.end method

.method public synthetic j(Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lcn/mucang/android/jiakaoyi/mapcollect/collect/v0$b;->i(Landroid/view/View;)V

    return-void
.end method

.method public k(Lcn/mucang/android/jiakaoyi/mapcollect/collect/v0$c;I)V
    .locals 4

    .line 1
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/mapcollect/collect/v0$b;->f:Lcn/mucang/android/jiakaoyi/mapcollect/collect/v0;

    invoke-static {v0}, Lcn/mucang/android/jiakaoyi/mapcollect/collect/v0;->a(Lcn/mucang/android/jiakaoyi/mapcollect/collect/v0;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcn/mucang/android/jiakaoyi/mapcollect/collect/data/SourceData;

    .line 2
    invoke-interface {p2}, Lcn/mucang/android/jiakaoyi/mapcollect/collect/data/SourceData;->getName()Ljava/lang/String;

    move-result-object v0

    .line 3
    iget-object v1, p0, Lcn/mucang/android/jiakaoyi/mapcollect/collect/v0$b;->f:Lcn/mucang/android/jiakaoyi/mapcollect/collect/v0;

    invoke-static {v1}, Lcn/mucang/android/jiakaoyi/mapcollect/collect/v0;->f(Lcn/mucang/android/jiakaoyi/mapcollect/collect/v0;)Lcn/mucang/android/jiakaoyi/mapcollect/collect/PosCollectActivity;

    move-result-object v1

    invoke-virtual {v1}, Lcn/mucang/android/jiakaoyi/mapcollect/collect/PosCollectActivity;->p()Lcn/mucang/android/jiakaoyi/mapcollect/collect/data/SourceData;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 4
    invoke-interface {v1}, Lcn/mucang/android/jiakaoyi/mapcollect/collect/data/SourceData;->getName()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 5
    :goto_0
    invoke-static {p1}, Lcn/mucang/android/jiakaoyi/mapcollect/collect/v0$c;->a(Lcn/mucang/android/jiakaoyi/mapcollect/collect/v0$c;)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    const/4 v0, 0x4

    :goto_1
    invoke-virtual {v2, v0}, Landroid/view/View;->setVisibility(I)V

    .line 6
    invoke-static {p1}, Lcn/mucang/android/jiakaoyi/mapcollect/collect/v0$c;->b(Lcn/mucang/android/jiakaoyi/mapcollect/collect/v0$c;)Landroid/widget/TextView;

    move-result-object v0

    invoke-interface {p2}, Lcn/mucang/android/jiakaoyi/mapcollect/collect/data/SourceData;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 7
    invoke-static {p1}, Lcn/mucang/android/jiakaoyi/mapcollect/collect/v0$c;->c(Lcn/mucang/android/jiakaoyi/mapcollect/collect/v0$c;)Landroid/view/View;

    move-result-object v0

    invoke-interface {p2}, Lcn/mucang/android/jiakaoyi/mapcollect/collect/data/SourceData;->canTurnOrientation()Z

    move-result v2

    const/16 v3, 0x8

    if-eqz v2, :cond_2

    const/4 v2, 0x0

    goto :goto_2

    :cond_2
    const/16 v2, 0x8

    :goto_2
    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 8
    instance-of v0, p2, Lcn/mucang/android/jiakaoyi/mapcollect/collect/source/c2/C2DaoKuSrcData;

    if-eqz v0, :cond_3

    move-object v0, p2

    check-cast v0, Lcn/mucang/android/jiakaoyi/mapcollect/collect/source/c2/C2DaoKuSrcData;

    iget-boolean v0, v0, Lcn/mucang/android/jiakaoyi/mapcollect/collect/source/c2/C2DaoKuSrcData;->hasTurnOrientation:Z

    if-nez v0, :cond_3

    .line 9
    invoke-static {p1}, Lcn/mucang/android/jiakaoyi/mapcollect/collect/v0$c;->d(Lcn/mucang/android/jiakaoyi/mapcollect/collect/v0$c;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_3

    .line 10
    :cond_3
    invoke-static {p1}, Lcn/mucang/android/jiakaoyi/mapcollect/collect/v0$c;->d(Lcn/mucang/android/jiakaoyi/mapcollect/collect/v0$c;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 11
    :goto_3
    invoke-static {p1}, Lcn/mucang/android/jiakaoyi/mapcollect/collect/v0$c;->e(Lcn/mucang/android/jiakaoyi/mapcollect/collect/v0$c;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p2}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 12
    invoke-static {p1}, Lcn/mucang/android/jiakaoyi/mapcollect/collect/v0$c;->c(Lcn/mucang/android/jiakaoyi/mapcollect/collect/v0$c;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p2}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 13
    invoke-static {p1}, Lcn/mucang/android/jiakaoyi/mapcollect/collect/v0$c;->d(Lcn/mucang/android/jiakaoyi/mapcollect/collect/v0$c;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p2}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 14
    iget-object v0, p1, Landroidx/recyclerview/widget/RecyclerView$c0;->itemView:Landroid/view/View;

    invoke-virtual {v0, p2}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 15
    invoke-static {p1}, Lcn/mucang/android/jiakaoyi/mapcollect/collect/v0$c;->e(Lcn/mucang/android/jiakaoyi/mapcollect/collect/v0$c;)Landroid/view/View;

    move-result-object p2

    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/mapcollect/collect/v0$b;->a:Landroid/view/View$OnClickListener;

    invoke-virtual {p2, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 16
    invoke-static {p1}, Lcn/mucang/android/jiakaoyi/mapcollect/collect/v0$c;->c(Lcn/mucang/android/jiakaoyi/mapcollect/collect/v0$c;)Landroid/view/View;

    move-result-object p2

    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/mapcollect/collect/v0$b;->c:Landroid/view/View$OnClickListener;

    invoke-virtual {p2, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 17
    invoke-static {p1}, Lcn/mucang/android/jiakaoyi/mapcollect/collect/v0$c;->d(Lcn/mucang/android/jiakaoyi/mapcollect/collect/v0$c;)Landroid/view/View;

    move-result-object p2

    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/mapcollect/collect/v0$b;->d:Landroid/view/View$OnClickListener;

    invoke-virtual {p2, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 18
    iget-object p2, p1, Landroidx/recyclerview/widget/RecyclerView$c0;->itemView:Landroid/view/View;

    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/mapcollect/collect/v0$b;->e:Landroid/view/View$OnClickListener;

    invoke-virtual {p2, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 19
    iget-object p1, p1, Landroidx/recyclerview/widget/RecyclerView$c0;->itemView:Landroid/view/View;

    iget-object p2, p0, Lcn/mucang/android/jiakaoyi/mapcollect/collect/v0$b;->b:Landroid/view/View$OnLongClickListener;

    invoke-virtual {p1, p2}, Landroid/view/View;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    return-void
.end method

.method public l(Landroid/view/ViewGroup;I)Lcn/mucang/android/jiakaoyi/mapcollect/collect/v0$c;
    .locals 3

    .line 1
    new-instance p2, Lcn/mucang/android/jiakaoyi/mapcollect/collect/v0$c;

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    sget v1, Lcn/mucang/android/jiakaoyi/mapcollect/R$layout;->hpmap__collect_step_item:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    invoke-direct {p2, p1}, Lcn/mucang/android/jiakaoyi/mapcollect/collect/v0$c;-><init>(Landroid/view/View;)V

    return-object p2
.end method

.method public bridge synthetic onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$c0;I)V
    .locals 0

    .line 1
    check-cast p1, Lcn/mucang/android/jiakaoyi/mapcollect/collect/v0$c;

    invoke-virtual {p0, p1, p2}, Lcn/mucang/android/jiakaoyi/mapcollect/collect/v0$b;->k(Lcn/mucang/android/jiakaoyi/mapcollect/collect/v0$c;I)V

    return-void
.end method

.method public bridge synthetic onCreateViewHolder(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$c0;
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2}, Lcn/mucang/android/jiakaoyi/mapcollect/collect/v0$b;->l(Landroid/view/ViewGroup;I)Lcn/mucang/android/jiakaoyi/mapcollect/collect/v0$c;

    move-result-object p1

    return-object p1
.end method
