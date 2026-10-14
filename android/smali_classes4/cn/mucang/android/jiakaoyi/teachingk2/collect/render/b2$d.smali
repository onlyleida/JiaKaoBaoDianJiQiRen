.class Lcn/mucang/android/jiakaoyi/teachingk2/collect/render/b2$d;
.super Landroidx/recyclerview/widget/RecyclerView$Adapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/mucang/android/jiakaoyi/teachingk2/collect/render/b2;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "d"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/recyclerview/widget/RecyclerView$Adapter<",
        "Landroidx/recyclerview/widget/RecyclerView$c0;",
        ">;"
    }
.end annotation


# instance fields
.field private final a:Landroid/view/View$OnClickListener;

.field private final b:Landroid/view/View$OnClickListener;

.field private final c:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private final d:Lcn/mucang/android/jiakaoyi/framework/h/b;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcn/mucang/android/jiakaoyi/framework/h/b<",
            "Lcn/mucang/android/jiakaoyi/teachingk2/data/TeachModel;",
            ">;"
        }
    .end annotation
.end field

.field private final e:Lcn/mucang/android/jiakaoyi/framework/h/b;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcn/mucang/android/jiakaoyi/framework/h/b<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic f:Lcn/mucang/android/jiakaoyi/teachingk2/collect/render/b2;


# direct methods
.method private constructor <init>(Lcn/mucang/android/jiakaoyi/teachingk2/collect/render/b2;Ljava/util/List;Lcn/mucang/android/jiakaoyi/framework/h/b;Lcn/mucang/android/jiakaoyi/framework/h/b;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Object;",
            ">;",
            "Lcn/mucang/android/jiakaoyi/framework/h/b<",
            "Lcn/mucang/android/jiakaoyi/teachingk2/data/TeachModel;",
            ">;",
            "Lcn/mucang/android/jiakaoyi/framework/h/b<",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .line 2
    iput-object p1, p0, Lcn/mucang/android/jiakaoyi/teachingk2/collect/render/b2$d;->f:Lcn/mucang/android/jiakaoyi/teachingk2/collect/render/b2;

    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;-><init>()V

    .line 3
    new-instance p1, Lcn/mucang/android/jiakaoyi/teachingk2/collect/render/b2$d$a;

    invoke-direct {p1, p0}, Lcn/mucang/android/jiakaoyi/teachingk2/collect/render/b2$d$a;-><init>(Lcn/mucang/android/jiakaoyi/teachingk2/collect/render/b2$d;)V

    iput-object p1, p0, Lcn/mucang/android/jiakaoyi/teachingk2/collect/render/b2$d;->a:Landroid/view/View$OnClickListener;

    .line 4
    new-instance p1, Lcn/mucang/android/jiakaoyi/teachingk2/collect/render/b2$d$b;

    invoke-direct {p1, p0}, Lcn/mucang/android/jiakaoyi/teachingk2/collect/render/b2$d$b;-><init>(Lcn/mucang/android/jiakaoyi/teachingk2/collect/render/b2$d;)V

    iput-object p1, p0, Lcn/mucang/android/jiakaoyi/teachingk2/collect/render/b2$d;->b:Landroid/view/View$OnClickListener;

    .line 5
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcn/mucang/android/jiakaoyi/teachingk2/collect/render/b2$d;->c:Ljava/util/List;

    .line 6
    iput-object p4, p0, Lcn/mucang/android/jiakaoyi/teachingk2/collect/render/b2$d;->e:Lcn/mucang/android/jiakaoyi/framework/h/b;

    .line 7
    invoke-interface {p1, p2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 8
    iput-object p3, p0, Lcn/mucang/android/jiakaoyi/teachingk2/collect/render/b2$d;->d:Lcn/mucang/android/jiakaoyi/framework/h/b;

    return-void
.end method

.method synthetic constructor <init>(Lcn/mucang/android/jiakaoyi/teachingk2/collect/render/b2;Ljava/util/List;Lcn/mucang/android/jiakaoyi/framework/h/b;Lcn/mucang/android/jiakaoyi/framework/h/b;Lcn/mucang/android/jiakaoyi/teachingk2/collect/render/b2$a;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2, p3, p4}, Lcn/mucang/android/jiakaoyi/teachingk2/collect/render/b2$d;-><init>(Lcn/mucang/android/jiakaoyi/teachingk2/collect/render/b2;Ljava/util/List;Lcn/mucang/android/jiakaoyi/framework/h/b;Lcn/mucang/android/jiakaoyi/framework/h/b;)V

    return-void
.end method

.method static synthetic c(Lcn/mucang/android/jiakaoyi/teachingk2/collect/render/b2$d;)Lcn/mucang/android/jiakaoyi/framework/h/b;
    .locals 0

    .line 1
    iget-object p0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/collect/render/b2$d;->e:Lcn/mucang/android/jiakaoyi/framework/h/b;

    return-object p0
.end method

.method static synthetic d(Lcn/mucang/android/jiakaoyi/teachingk2/collect/render/b2$d;)Ljava/util/List;
    .locals 0

    .line 1
    iget-object p0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/collect/render/b2$d;->c:Ljava/util/List;

    return-object p0
.end method

.method static synthetic e(Lcn/mucang/android/jiakaoyi/teachingk2/collect/render/b2$d;)Lcn/mucang/android/jiakaoyi/framework/h/b;
    .locals 0

    .line 1
    iget-object p0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/collect/render/b2$d;->d:Lcn/mucang/android/jiakaoyi/framework/h/b;

    return-object p0
.end method

.method private synthetic g(Lcn/mucang/android/jiakaoyi/teachingk2/collect/render/data/b;Landroid/view/View;)V
    .locals 0

    .line 1
    iget-object p2, p0, Lcn/mucang/android/jiakaoyi/teachingk2/collect/render/b2$d;->f:Lcn/mucang/android/jiakaoyi/teachingk2/collect/render/b2;

    invoke-static {p2, p1}, Lcn/mucang/android/jiakaoyi/teachingk2/collect/render/b2;->e(Lcn/mucang/android/jiakaoyi/teachingk2/collect/render/b2;Lcn/mucang/android/jiakaoyi/teachingk2/collect/render/data/b;)V

    return-void
.end method

.method private synthetic i(Lcn/mucang/android/jiakaoyi/teachingk2/collect/render/data/b;Landroid/view/View;)V
    .locals 0

    .line 1
    iget-object p2, p0, Lcn/mucang/android/jiakaoyi/teachingk2/collect/render/b2$d;->f:Lcn/mucang/android/jiakaoyi/teachingk2/collect/render/b2;

    invoke-static {p2, p1}, Lcn/mucang/android/jiakaoyi/teachingk2/collect/render/b2;->d(Lcn/mucang/android/jiakaoyi/teachingk2/collect/render/b2;Lcn/mucang/android/jiakaoyi/teachingk2/collect/render/data/b;)V

    return-void
.end method

.method private synthetic k(Lcn/mucang/android/jiakaoyi/teachingk2/collect/render/data/b;Landroid/view/View;)V
    .locals 0

    .line 1
    iget-object p2, p0, Lcn/mucang/android/jiakaoyi/teachingk2/collect/render/b2$d;->f:Lcn/mucang/android/jiakaoyi/teachingk2/collect/render/b2;

    invoke-static {p2, p1}, Lcn/mucang/android/jiakaoyi/teachingk2/collect/render/b2;->c(Lcn/mucang/android/jiakaoyi/teachingk2/collect/render/b2;Lcn/mucang/android/jiakaoyi/teachingk2/collect/render/data/b;)V

    return-void
.end method


# virtual methods
.method f(Ljava/util/List;)V
    .locals 1
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NotifyDataSetChanged"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/collect/render/b2$d;->c:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 2
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/collect/render/b2$d;->c:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 3
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    return-void
.end method

.method public getItemCount()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/collect/render/b2$d;->c:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getItemViewType(I)I
    .locals 2

    .line 1
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/collect/render/b2$d;->c:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    .line 2
    instance-of v1, v0, Lcn/mucang/android/jiakaoyi/teachingk2/collect/render/data/b;

    if-eqz v1, :cond_0

    const/4 p1, 0x1

    return p1

    .line 3
    :cond_0
    instance-of v0, v0, Lcn/mucang/android/jiakaoyi/teachingk2/collect/render/data/c;

    if-eqz v0, :cond_1

    const/4 p1, 0x2

    return p1

    .line 4
    :cond_1
    invoke-super {p0, p1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->getItemViewType(I)I

    move-result p1

    return p1
.end method

.method public synthetic h(Lcn/mucang/android/jiakaoyi/teachingk2/collect/render/data/b;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcn/mucang/android/jiakaoyi/teachingk2/collect/render/b2$d;->g(Lcn/mucang/android/jiakaoyi/teachingk2/collect/render/data/b;Landroid/view/View;)V

    return-void
.end method

.method public synthetic j(Lcn/mucang/android/jiakaoyi/teachingk2/collect/render/data/b;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcn/mucang/android/jiakaoyi/teachingk2/collect/render/b2$d;->i(Lcn/mucang/android/jiakaoyi/teachingk2/collect/render/data/b;Landroid/view/View;)V

    return-void
.end method

.method public synthetic l(Lcn/mucang/android/jiakaoyi/teachingk2/collect/render/data/b;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcn/mucang/android/jiakaoyi/teachingk2/collect/render/b2$d;->k(Lcn/mucang/android/jiakaoyi/teachingk2/collect/render/data/b;Landroid/view/View;)V

    return-void
.end method

.method public onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$c0;I)V
    .locals 6
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "SetTextI18n"
        }
    .end annotation

    .line 1
    iget-object p2, p0, Lcn/mucang/android/jiakaoyi/teachingk2/collect/render/b2$d;->c:Ljava/util/List;

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$c0;->getAdapterPosition()I

    move-result v0

    invoke-interface {p2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    .line 2
    iget-object v0, p1, Landroidx/recyclerview/widget/RecyclerView$c0;->itemView:Landroid/view/View;

    invoke-virtual {v0, p2}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 3
    iget-object v0, p1, Landroidx/recyclerview/widget/RecyclerView$c0;->itemView:Landroid/view/View;

    iget-object v1, p0, Lcn/mucang/android/jiakaoyi/teachingk2/collect/render/b2$d;->b:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 4
    instance-of v0, p2, Lcn/mucang/android/jiakaoyi/teachingk2/collect/render/data/b;

    const/4 v1, 0x0

    if-eqz v0, :cond_4

    .line 5
    check-cast p2, Lcn/mucang/android/jiakaoyi/teachingk2/collect/render/data/b;

    .line 6
    check-cast p1, Lcn/mucang/android/jiakaoyi/teachingk2/collect/render/b2$f;

    iget-object v0, p1, Lcn/mucang/android/jiakaoyi/teachingk2/collect/render/b2$f;->a:Landroid/widget/TextView;

    .line 7
    iget-object v2, p2, Lcn/mucang/android/jiakaoyi/teachingk2/collect/render/data/b;->a:Lcn/mucang/android/jiakaoyi/engine/model/Step;

    iget v3, p2, Lcn/mucang/android/jiakaoyi/teachingk2/collect/render/data/b;->b:I

    invoke-static {v2, v3}, Lcn/mucang/android/jiakaoyi/teachingk2/collect/render/b2;->t(Lcn/mucang/android/jiakaoyi/engine/model/Step;I)Ljava/lang/String;

    move-result-object v2

    .line 8
    iget-object v3, p1, Lcn/mucang/android/jiakaoyi/teachingk2/collect/render/b2$f;->b:Landroid/widget/ImageView;

    invoke-static {v2}, Lcn/mucang/android/core/utils/n0;->g(Ljava/lang/String;)Z

    move-result v4

    const/16 v5, 0x8

    if-eqz v4, :cond_0

    iget-object v4, p2, Lcn/mucang/android/jiakaoyi/teachingk2/collect/render/data/b;->c:Ljava/lang/String;

    invoke-static {v4}, Lcn/mucang/android/core/utils/n0;->f(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    const/4 v4, 0x0

    goto :goto_0

    :cond_0
    const/16 v4, 0x8

    :goto_0
    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 9
    iget-object v3, p1, Lcn/mucang/android/jiakaoyi/teachingk2/collect/render/b2$f;->b:Landroid/widget/ImageView;

    new-instance v4, Lcn/mucang/android/jiakaoyi/teachingk2/collect/render/i;

    invoke-direct {v4, p0, p2}, Lcn/mucang/android/jiakaoyi/teachingk2/collect/render/i;-><init>(Lcn/mucang/android/jiakaoyi/teachingk2/collect/render/b2$d;Lcn/mucang/android/jiakaoyi/teachingk2/collect/render/data/b;)V

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 10
    iget-object v3, p1, Lcn/mucang/android/jiakaoyi/teachingk2/collect/render/b2$f;->c:Landroid/widget/ImageView;

    iget-object v4, p2, Lcn/mucang/android/jiakaoyi/teachingk2/collect/render/data/b;->c:Ljava/lang/String;

    invoke-static {v4}, Lcn/mucang/android/core/utils/n0;->f(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1

    const/4 v4, 0x0

    goto :goto_1

    :cond_1
    const/16 v4, 0x8

    :goto_1
    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 11
    iget-object v3, p1, Lcn/mucang/android/jiakaoyi/teachingk2/collect/render/b2$f;->c:Landroid/widget/ImageView;

    new-instance v4, Lcn/mucang/android/jiakaoyi/teachingk2/collect/render/j;

    invoke-direct {v4, p0, p2}, Lcn/mucang/android/jiakaoyi/teachingk2/collect/render/j;-><init>(Lcn/mucang/android/jiakaoyi/teachingk2/collect/render/b2$d;Lcn/mucang/android/jiakaoyi/teachingk2/collect/render/data/b;)V

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 12
    iget-object v3, p1, Lcn/mucang/android/jiakaoyi/teachingk2/collect/render/b2$f;->d:Landroid/widget/ImageView;

    iget-object v4, p2, Lcn/mucang/android/jiakaoyi/teachingk2/collect/render/data/b;->c:Ljava/lang/String;

    invoke-static {v4}, Lcn/mucang/android/core/utils/n0;->f(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_2

    const/4 v5, 0x0

    :cond_2
    invoke-virtual {v3, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 13
    iget-object p1, p1, Lcn/mucang/android/jiakaoyi/teachingk2/collect/render/b2$f;->d:Landroid/widget/ImageView;

    new-instance v3, Lcn/mucang/android/jiakaoyi/teachingk2/collect/render/k;

    invoke-direct {v3, p0, p2}, Lcn/mucang/android/jiakaoyi/teachingk2/collect/render/k;-><init>(Lcn/mucang/android/jiakaoyi/teachingk2/collect/render/b2$d;Lcn/mucang/android/jiakaoyi/teachingk2/collect/render/data/b;)V

    invoke-virtual {p1, v3}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 14
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p2, Lcn/mucang/android/jiakaoyi/teachingk2/collect/render/data/b;->a:Lcn/mucang/android/jiakaoyi/engine/model/Step;

    invoke-virtual {v3}, Lcn/mucang/android/jiakaoyi/engine/model/Step;->getStepName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p2, Lcn/mucang/android/jiakaoyi/teachingk2/collect/render/data/b;->c:Ljava/lang/String;

    invoke-static {v2}, Lcn/mucang/android/jiakaoyi/teachingk2/collect/render/b2;->s(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 15
    iget-boolean p1, p2, Lcn/mucang/android/jiakaoyi/teachingk2/collect/render/data/b;->e:Z

    if-eqz p1, :cond_3

    sget p1, Lcn/mucang/android/jiakaoyi/teachingk2/lib/R$drawable;->collect_ic_expend:I

    goto :goto_2

    :cond_3
    sget p1, Lcn/mucang/android/jiakaoyi/teachingk2/lib/R$drawable;->collect_ic_close:I

    :goto_2
    invoke-virtual {v0, p1, v1, v1, v1}, Landroid/widget/TextView;->setCompoundDrawablesWithIntrinsicBounds(IIII)V

    goto :goto_4

    .line 16
    :cond_4
    instance-of v0, p2, Lcn/mucang/android/jiakaoyi/teachingk2/collect/render/data/c;

    if-eqz v0, :cond_6

    .line 17
    check-cast p1, Lcn/mucang/android/jiakaoyi/teachingk2/collect/render/b2$f;

    iget-object p1, p1, Lcn/mucang/android/jiakaoyi/teachingk2/collect/render/b2$f;->a:Landroid/widget/TextView;

    .line 18
    check-cast p2, Lcn/mucang/android/jiakaoyi/teachingk2/collect/render/data/c;

    iget-object v0, p2, Lcn/mucang/android/jiakaoyi/teachingk2/collect/render/data/c;->a:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 19
    iget-boolean p2, p2, Lcn/mucang/android/jiakaoyi/teachingk2/collect/render/data/c;->d:Z

    if-eqz p2, :cond_5

    sget p2, Lcn/mucang/android/jiakaoyi/teachingk2/lib/R$drawable;->collect_ic_expend:I

    goto :goto_3

    :cond_5
    sget p2, Lcn/mucang/android/jiakaoyi/teachingk2/lib/R$drawable;->collect_ic_close:I

    :goto_3
    invoke-virtual {p1, p2, v1, v1, v1}, Landroid/widget/TextView;->setCompoundDrawablesWithIntrinsicBounds(IIII)V

    goto :goto_4

    .line 20
    :cond_6
    move-object v0, p1

    check-cast v0, Lcn/mucang/android/jiakaoyi/teachingk2/collect/render/b2$h;

    .line 21
    check-cast p2, Lcn/mucang/android/jiakaoyi/teachingk2/data/TeachModel;

    .line 22
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$c0;->getAdapterPosition()I

    move-result p1

    iput p1, p2, Lcn/mucang/android/jiakaoyi/teachingk2/data/TeachModel;->position:I

    .line 23
    iget-object p1, v0, Lcn/mucang/android/jiakaoyi/teachingk2/collect/render/b2$h;->a:Landroid/widget/TextView;

    invoke-virtual {p2}, Lcn/mucang/android/jiakaoyi/teachingk2/data/TeachModel;->findText()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 24
    iget-object p1, v0, Lcn/mucang/android/jiakaoyi/teachingk2/collect/render/b2$h;->b:Landroid/view/View;

    invoke-virtual {p1, p2}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 25
    iget-object p1, v0, Lcn/mucang/android/jiakaoyi/teachingk2/collect/render/b2$h;->b:Landroid/view/View;

    iget-object v2, p0, Lcn/mucang/android/jiakaoyi/teachingk2/collect/render/b2$d;->a:Landroid/view/View$OnClickListener;

    invoke-virtual {p1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 26
    iget-object p1, v0, Landroidx/recyclerview/widget/RecyclerView$c0;->itemView:Landroid/view/View;

    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/collect/render/b2$d;->f:Lcn/mucang/android/jiakaoyi/teachingk2/collect/render/b2;

    invoke-static {v0}, Lcn/mucang/android/jiakaoyi/teachingk2/collect/render/b2;->i(Lcn/mucang/android/jiakaoyi/teachingk2/collect/render/b2;)Lcn/mucang/android/jiakaoyi/teachingk2/data/TeachModel;

    move-result-object v0

    if-ne p2, v0, :cond_7

    const v1, -0xbcb7b1

    :cond_7
    invoke-virtual {p1, v1}, Landroid/view/View;->setBackgroundColor(I)V

    :goto_4
    return-void
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$c0;
    .locals 3

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-ne p2, v1, :cond_0

    .line 1
    new-instance p2, Lcn/mucang/android/jiakaoyi/teachingk2/collect/render/b2$f;

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    sget v2, Lcn/mucang/android/jiakaoyi/teachingk2/lib/R$layout;->teach_collect_item:I

    invoke-virtual {v1, v2, p1, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    invoke-direct {p2, p1}, Lcn/mucang/android/jiakaoyi/teachingk2/collect/render/b2$f;-><init>(Landroid/view/View;)V

    return-object p2

    :cond_0
    const/4 v1, 0x2

    if-ne p2, v1, :cond_1

    .line 2
    new-instance p2, Lcn/mucang/android/jiakaoyi/teachingk2/collect/render/b2$f;

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    sget v2, Lcn/mucang/android/jiakaoyi/teachingk2/lib/R$layout;->teach_collect_step_item:I

    invoke-virtual {v1, v2, p1, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    invoke-direct {p2, p1}, Lcn/mucang/android/jiakaoyi/teachingk2/collect/render/b2$f;-><init>(Landroid/view/View;)V

    return-object p2

    .line 3
    :cond_1
    new-instance p2, Lcn/mucang/android/jiakaoyi/teachingk2/collect/render/b2$h;

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    sget v2, Lcn/mucang/android/jiakaoyi/teachingk2/lib/R$layout;->teach_collect_variable_item:I

    invoke-virtual {v1, v2, p1, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    invoke-direct {p2, p1}, Lcn/mucang/android/jiakaoyi/teachingk2/collect/render/b2$h;-><init>(Landroid/view/View;)V

    return-object p2
.end method
