.class Lcn/mucang/android/jiakaoyi/mapcollect/collect/r0$e;
.super Landroidx/recyclerview/widget/RecyclerView$Adapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/mucang/android/jiakaoyi/mapcollect/collect/r0;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "e"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/recyclerview/widget/RecyclerView$Adapter<",
        "Lcn/mucang/android/jiakaoyi/mapcollect/collect/r0$d;",
        ">;"
    }
.end annotation


# instance fields
.field private a:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcn/mucang/android/jiakaoyi/signal/pos/Pos;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic b:Lcn/mucang/android/jiakaoyi/mapcollect/collect/r0;


# direct methods
.method private constructor <init>(Lcn/mucang/android/jiakaoyi/mapcollect/collect/r0;Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcn/mucang/android/jiakaoyi/signal/pos/Pos;",
            ">;)V"
        }
    .end annotation

    .line 2
    iput-object p1, p0, Lcn/mucang/android/jiakaoyi/mapcollect/collect/r0$e;->b:Lcn/mucang/android/jiakaoyi/mapcollect/collect/r0;

    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;-><init>()V

    .line 3
    iput-object p2, p0, Lcn/mucang/android/jiakaoyi/mapcollect/collect/r0$e;->a:Ljava/util/List;

    return-void
.end method

.method synthetic constructor <init>(Lcn/mucang/android/jiakaoyi/mapcollect/collect/r0;Ljava/util/List;Lcn/mucang/android/jiakaoyi/mapcollect/collect/r0$a;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lcn/mucang/android/jiakaoyi/mapcollect/collect/r0$e;-><init>(Lcn/mucang/android/jiakaoyi/mapcollect/collect/r0;Ljava/util/List;)V

    return-void
.end method

.method static synthetic c(Lcn/mucang/android/jiakaoyi/mapcollect/collect/r0$e;Ljava/util/List;)Ljava/util/List;
    .locals 0

    .line 1
    iput-object p1, p0, Lcn/mucang/android/jiakaoyi/mapcollect/collect/r0$e;->a:Ljava/util/List;

    return-object p1
.end method

.method private synthetic d(ILandroid/view/View;)V
    .locals 2

    .line 1
    iget-object p2, p0, Lcn/mucang/android/jiakaoyi/mapcollect/collect/r0$e;->b:Lcn/mucang/android/jiakaoyi/mapcollect/collect/r0;

    invoke-static {p2}, Lcn/mucang/android/jiakaoyi/mapcollect/collect/r0;->k(Lcn/mucang/android/jiakaoyi/mapcollect/collect/r0;)Lcn/mucang/android/jiakaoyi/mapcollect/collect/PosCollectActivity;

    move-result-object p2

    iget-object p2, p2, Lcn/mucang/android/jiakaoyi/mapcollect/collect/PosCollectActivity;->v:Lcn/mucang/android/jiakaoyi/mapcollect/collect/s0;

    invoke-virtual {p2}, Lcn/mucang/android/jiakaoyi/mapcollect/collect/s0;->b()Lcn/mucang/android/jiakaoyi/signal/pos/Gps;

    move-result-object p2

    if-nez p2, :cond_0

    return-void

    .line 2
    :cond_0
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/mapcollect/collect/r0$e;->b:Lcn/mucang/android/jiakaoyi/mapcollect/collect/r0;

    invoke-static {v0}, Lcn/mucang/android/jiakaoyi/mapcollect/collect/r0;->f(Lcn/mucang/android/jiakaoyi/mapcollect/collect/r0;)Landroid/widget/Spinner;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Spinner;->getSelectedItemPosition()I

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_1

    .line 3
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/mapcollect/collect/r0$e;->b:Lcn/mucang/android/jiakaoyi/mapcollect/collect/r0;

    invoke-static {v0}, Lcn/mucang/android/jiakaoyi/mapcollect/collect/r0;->l(Lcn/mucang/android/jiakaoyi/mapcollect/collect/r0;)Lcn/mucang/android/jiakaoyi/mapcollect/collect/car/d;

    move-result-object v0

    invoke-virtual {v0, p1, p2, v1}, Lcn/mucang/android/jiakaoyi/mapcollect/collect/car/d;->B(ILcn/mucang/android/jiakaoyi/signal/pos/Gps;Z)Z

    move-result p1

    goto :goto_0

    .line 4
    :cond_1
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/mapcollect/collect/r0$e;->b:Lcn/mucang/android/jiakaoyi/mapcollect/collect/r0;

    invoke-static {v0}, Lcn/mucang/android/jiakaoyi/mapcollect/collect/r0;->f(Lcn/mucang/android/jiakaoyi/mapcollect/collect/r0;)Landroid/widget/Spinner;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Spinner;->getSelectedItemPosition()I

    move-result v0

    if-ne v0, v1, :cond_2

    .line 5
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/mapcollect/collect/r0$e;->b:Lcn/mucang/android/jiakaoyi/mapcollect/collect/r0;

    invoke-static {v0}, Lcn/mucang/android/jiakaoyi/mapcollect/collect/r0;->l(Lcn/mucang/android/jiakaoyi/mapcollect/collect/r0;)Lcn/mucang/android/jiakaoyi/mapcollect/collect/car/d;

    move-result-object v0

    invoke-virtual {v0, p1, p2, v1}, Lcn/mucang/android/jiakaoyi/mapcollect/collect/car/d;->y(ILcn/mucang/android/jiakaoyi/signal/pos/Gps;Z)Z

    move-result p1

    goto :goto_0

    .line 6
    :cond_2
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/mapcollect/collect/r0$e;->b:Lcn/mucang/android/jiakaoyi/mapcollect/collect/r0;

    invoke-static {v0}, Lcn/mucang/android/jiakaoyi/mapcollect/collect/r0;->l(Lcn/mucang/android/jiakaoyi/mapcollect/collect/r0;)Lcn/mucang/android/jiakaoyi/mapcollect/collect/car/d;

    move-result-object v0

    invoke-virtual {v0, p1, p2, v1}, Lcn/mucang/android/jiakaoyi/mapcollect/collect/car/d;->G(ILcn/mucang/android/jiakaoyi/signal/pos/Gps;Z)Z

    move-result p1

    :goto_0
    if-eqz p1, :cond_3

    .line 7
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    .line 8
    iget-object p1, p0, Lcn/mucang/android/jiakaoyi/mapcollect/collect/r0$e;->b:Lcn/mucang/android/jiakaoyi/mapcollect/collect/r0;

    invoke-static {p1}, Lcn/mucang/android/jiakaoyi/mapcollect/collect/r0;->m(Lcn/mucang/android/jiakaoyi/mapcollect/collect/r0;)V

    :cond_3
    return-void
.end method


# virtual methods
.method public synthetic e(ILandroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcn/mucang/android/jiakaoyi/mapcollect/collect/r0$e;->d(ILandroid/view/View;)V

    return-void
.end method

.method public f(Lcn/mucang/android/jiakaoyi/mapcollect/collect/r0$d;I)V
    .locals 6

    .line 1
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/mapcollect/collect/r0$e;->a:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    if-nez v0, :cond_0

    .line 2
    invoke-static {p1}, Lcn/mucang/android/jiakaoyi/mapcollect/collect/r0$d;->a(Lcn/mucang/android/jiakaoyi/mapcollect/collect/r0$d;)Landroid/widget/TextView;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    add-int/lit8 p2, p2, 0x1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, ".\u672a\u91c7\u96c6"

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 3
    invoke-static {p1}, Lcn/mucang/android/jiakaoyi/mapcollect/collect/r0$d;->b(Lcn/mucang/android/jiakaoyi/mapcollect/collect/r0$d;)Landroid/widget/TextView;

    move-result-object p2

    const/4 v0, 0x0

    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 4
    invoke-static {p1}, Lcn/mucang/android/jiakaoyi/mapcollect/collect/r0$d;->b(Lcn/mucang/android/jiakaoyi/mapcollect/collect/r0$d;)Landroid/widget/TextView;

    move-result-object p1

    const/16 p2, 0x8

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0

    .line 5
    :cond_0
    invoke-static {p1}, Lcn/mucang/android/jiakaoyi/mapcollect/collect/r0$d;->b(Lcn/mucang/android/jiakaoyi/mapcollect/collect/r0$d;)Landroid/widget/TextView;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 6
    invoke-static {p1}, Lcn/mucang/android/jiakaoyi/mapcollect/collect/r0$d;->a(Lcn/mucang/android/jiakaoyi/mapcollect/collect/r0$d;)Landroid/widget/TextView;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    add-int/lit8 v3, p2, 0x1

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ".X="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcn/mucang/android/jiakaoyi/mapcollect/collect/r0$e;->b:Lcn/mucang/android/jiakaoyi/mapcollect/collect/r0;

    iget-wide v4, v0, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;->x:D

    invoke-static {v3, v4, v5}, Lcn/mucang/android/jiakaoyi/mapcollect/collect/r0;->e(Lcn/mucang/android/jiakaoyi/mapcollect/collect/r0;D)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ",Y="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcn/mucang/android/jiakaoyi/mapcollect/collect/r0$e;->b:Lcn/mucang/android/jiakaoyi/mapcollect/collect/r0;

    iget-wide v4, v0, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;->y:D

    invoke-static {v3, v4, v5}, Lcn/mucang/android/jiakaoyi/mapcollect/collect/r0;->e(Lcn/mucang/android/jiakaoyi/mapcollect/collect/r0;D)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 7
    invoke-static {p1}, Lcn/mucang/android/jiakaoyi/mapcollect/collect/r0$d;->b(Lcn/mucang/android/jiakaoyi/mapcollect/collect/r0$d;)Landroid/widget/TextView;

    move-result-object p1

    new-instance v0, Lcn/mucang/android/jiakaoyi/mapcollect/collect/d;

    invoke-direct {v0, p0, p2}, Lcn/mucang/android/jiakaoyi/mapcollect/collect/d;-><init>(Lcn/mucang/android/jiakaoyi/mapcollect/collect/r0$e;I)V

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :goto_0
    return-void
.end method

.method public g(Landroid/view/ViewGroup;I)Lcn/mucang/android/jiakaoyi/mapcollect/collect/r0$d;
    .locals 3

    .line 1
    new-instance p2, Lcn/mucang/android/jiakaoyi/mapcollect/collect/r0$d;

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    sget v1, Lcn/mucang/android/jiakaoyi/mapcollect/R$layout;->hpmap__collect_car_point:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    invoke-direct {p2, p1}, Lcn/mucang/android/jiakaoyi/mapcollect/collect/r0$d;-><init>(Landroid/view/View;)V

    return-object p2
.end method

.method public getItemCount()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/mapcollect/collect/r0$e;->a:Ljava/util/List;

    invoke-static {v0}, Lcn/mucang/android/core/utils/g;->b(Ljava/util/Collection;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/mapcollect/collect/r0$e;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    :goto_0
    return v0
.end method

.method public bridge synthetic onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$c0;I)V
    .locals 0

    .line 1
    check-cast p1, Lcn/mucang/android/jiakaoyi/mapcollect/collect/r0$d;

    invoke-virtual {p0, p1, p2}, Lcn/mucang/android/jiakaoyi/mapcollect/collect/r0$e;->f(Lcn/mucang/android/jiakaoyi/mapcollect/collect/r0$d;I)V

    return-void
.end method

.method public bridge synthetic onCreateViewHolder(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$c0;
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2}, Lcn/mucang/android/jiakaoyi/mapcollect/collect/r0$e;->g(Landroid/view/ViewGroup;I)Lcn/mucang/android/jiakaoyi/mapcollect/collect/r0$d;

    move-result-object p1

    return-object p1
.end method
