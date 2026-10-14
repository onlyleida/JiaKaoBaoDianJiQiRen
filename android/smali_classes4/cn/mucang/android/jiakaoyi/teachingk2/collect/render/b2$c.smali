.class Lcn/mucang/android/jiakaoyi/teachingk2/collect/render/b2$c;
.super Landroidx/recyclerview/widget/g$f;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/mucang/android/jiakaoyi/teachingk2/collect/render/b2;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic d:Lcn/mucang/android/jiakaoyi/teachingk2/collect/render/b2;


# direct methods
.method constructor <init>(Lcn/mucang/android/jiakaoyi/teachingk2/collect/render/b2;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcn/mucang/android/jiakaoyi/teachingk2/collect/render/b2$c;->d:Lcn/mucang/android/jiakaoyi/teachingk2/collect/render/b2;

    invoke-direct {p0}, Landroidx/recyclerview/widget/g$f;-><init>()V

    return-void
.end method


# virtual methods
.method public B(Landroidx/recyclerview/widget/RecyclerView$c0;I)V
    .locals 0

    return-void
.end method

.method public k(Landroidx/recyclerview/widget/RecyclerView;Landroidx/recyclerview/widget/RecyclerView$c0;)I
    .locals 0

    .line 1
    instance-of p1, p2, Lcn/mucang/android/jiakaoyi/teachingk2/collect/render/b2$h;

    const/4 p2, 0x0

    if-eqz p1, :cond_0

    const/4 p1, 0x3

    .line 2
    invoke-static {p1, p2}, Landroidx/recyclerview/widget/g$f;->t(II)I

    move-result p1

    return p1

    :cond_0
    return p2
.end method

.method public y(Landroidx/recyclerview/widget/RecyclerView;Landroidx/recyclerview/widget/RecyclerView$c0;Landroidx/recyclerview/widget/RecyclerView$c0;)Z
    .locals 6

    .line 1
    invoke-virtual {p2}, Landroidx/recyclerview/widget/RecyclerView$c0;->getAdapterPosition()I

    move-result p1

    .line 2
    invoke-virtual {p3}, Landroidx/recyclerview/widget/RecyclerView$c0;->getAdapterPosition()I

    move-result v0

    add-int/lit8 v1, p1, 0x1

    .line 3
    :goto_0
    iget-object v2, p0, Lcn/mucang/android/jiakaoyi/teachingk2/collect/render/b2$c;->d:Lcn/mucang/android/jiakaoyi/teachingk2/collect/render/b2;

    invoke-static {v2}, Lcn/mucang/android/jiakaoyi/teachingk2/collect/render/b2;->g(Lcn/mucang/android/jiakaoyi/teachingk2/collect/render/b2;)Lcn/mucang/android/jiakaoyi/teachingk2/collect/render/b2$d;

    move-result-object v2

    invoke-static {v2}, Lcn/mucang/android/jiakaoyi/teachingk2/collect/render/b2$d;->d(Lcn/mucang/android/jiakaoyi/teachingk2/collect/render/b2$d;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 4
    iget-object v2, p0, Lcn/mucang/android/jiakaoyi/teachingk2/collect/render/b2$c;->d:Lcn/mucang/android/jiakaoyi/teachingk2/collect/render/b2;

    invoke-static {v2}, Lcn/mucang/android/jiakaoyi/teachingk2/collect/render/b2;->g(Lcn/mucang/android/jiakaoyi/teachingk2/collect/render/b2;)Lcn/mucang/android/jiakaoyi/teachingk2/collect/render/b2$d;

    move-result-object v2

    invoke-static {v2}, Lcn/mucang/android/jiakaoyi/teachingk2/collect/render/b2$d;->d(Lcn/mucang/android/jiakaoyi/teachingk2/collect/render/b2$d;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    .line 5
    instance-of v3, v2, Lcn/mucang/android/jiakaoyi/teachingk2/data/TeachModel;

    if-eqz v3, :cond_1

    check-cast v2, Lcn/mucang/android/jiakaoyi/teachingk2/data/TeachModel;

    invoke-virtual {v2}, Lcn/mucang/android/jiakaoyi/teachingk2/data/TeachModel;->isTraceTeach()Z

    move-result v2

    if-eqz v2, :cond_0

    goto :goto_1

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    :goto_1
    const/4 v2, -0x1

    add-int/2addr v1, v2

    add-int/lit8 v3, p1, -0x1

    :goto_2
    if-le v3, v2, :cond_3

    .line 6
    iget-object v4, p0, Lcn/mucang/android/jiakaoyi/teachingk2/collect/render/b2$c;->d:Lcn/mucang/android/jiakaoyi/teachingk2/collect/render/b2;

    invoke-static {v4}, Lcn/mucang/android/jiakaoyi/teachingk2/collect/render/b2;->g(Lcn/mucang/android/jiakaoyi/teachingk2/collect/render/b2;)Lcn/mucang/android/jiakaoyi/teachingk2/collect/render/b2$d;

    move-result-object v4

    invoke-static {v4}, Lcn/mucang/android/jiakaoyi/teachingk2/collect/render/b2$d;->d(Lcn/mucang/android/jiakaoyi/teachingk2/collect/render/b2$d;)Ljava/util/List;

    move-result-object v4

    invoke-interface {v4, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    .line 7
    instance-of v5, v4, Lcn/mucang/android/jiakaoyi/teachingk2/data/TeachModel;

    if-eqz v5, :cond_3

    check-cast v4, Lcn/mucang/android/jiakaoyi/teachingk2/data/TeachModel;

    invoke-virtual {v4}, Lcn/mucang/android/jiakaoyi/teachingk2/data/TeachModel;->isTraceTeach()Z

    move-result v4

    if-eqz v4, :cond_2

    goto :goto_3

    :cond_2
    add-int/lit8 v3, v3, -0x1

    goto :goto_2

    :cond_3
    :goto_3
    const/4 v2, 0x1

    add-int/2addr v3, v2

    const/4 v4, 0x0

    if-lt v0, v3, :cond_7

    if-le v0, v1, :cond_4

    goto :goto_4

    .line 8
    :cond_4
    iget-object v1, p0, Lcn/mucang/android/jiakaoyi/teachingk2/collect/render/b2$c;->d:Lcn/mucang/android/jiakaoyi/teachingk2/collect/render/b2;

    invoke-static {v1}, Lcn/mucang/android/jiakaoyi/teachingk2/collect/render/b2;->g(Lcn/mucang/android/jiakaoyi/teachingk2/collect/render/b2;)Lcn/mucang/android/jiakaoyi/teachingk2/collect/render/b2$d;

    move-result-object v1

    invoke-virtual {v1, p1, v0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemMoved(II)V

    .line 9
    iget-object v1, p0, Lcn/mucang/android/jiakaoyi/teachingk2/collect/render/b2$c;->d:Lcn/mucang/android/jiakaoyi/teachingk2/collect/render/b2;

    invoke-static {v1}, Lcn/mucang/android/jiakaoyi/teachingk2/collect/render/b2;->g(Lcn/mucang/android/jiakaoyi/teachingk2/collect/render/b2;)Lcn/mucang/android/jiakaoyi/teachingk2/collect/render/b2$d;

    move-result-object v1

    invoke-static {v1}, Lcn/mucang/android/jiakaoyi/teachingk2/collect/render/b2$d;->d(Lcn/mucang/android/jiakaoyi/teachingk2/collect/render/b2$d;)Ljava/util/List;

    move-result-object v1

    invoke-static {v1, p1, v0}, Ljava/util/Collections;->swap(Ljava/util/List;II)V

    .line 10
    instance-of v1, p2, Lcn/mucang/android/jiakaoyi/teachingk2/collect/render/b2$h;

    if-eqz v1, :cond_5

    .line 11
    check-cast p2, Lcn/mucang/android/jiakaoyi/teachingk2/collect/render/b2$h;

    iget-object p2, p2, Lcn/mucang/android/jiakaoyi/teachingk2/collect/render/b2$h;->b:Landroid/view/View;

    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p2

    .line 12
    instance-of v1, p2, Lcn/mucang/android/jiakaoyi/teachingk2/data/TeachModel;

    if-eqz v1, :cond_5

    .line 13
    check-cast p2, Lcn/mucang/android/jiakaoyi/teachingk2/data/TeachModel;

    iput v0, p2, Lcn/mucang/android/jiakaoyi/teachingk2/data/TeachModel;->position:I

    .line 14
    :cond_5
    instance-of p2, p3, Lcn/mucang/android/jiakaoyi/teachingk2/collect/render/b2$h;

    if-eqz p2, :cond_6

    .line 15
    check-cast p3, Lcn/mucang/android/jiakaoyi/teachingk2/collect/render/b2$h;

    iget-object p2, p3, Lcn/mucang/android/jiakaoyi/teachingk2/collect/render/b2$h;->b:Landroid/view/View;

    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p2

    .line 16
    instance-of p3, p2, Lcn/mucang/android/jiakaoyi/teachingk2/data/TeachModel;

    if-eqz p3, :cond_6

    .line 17
    check-cast p2, Lcn/mucang/android/jiakaoyi/teachingk2/data/TeachModel;

    iput p1, p2, Lcn/mucang/android/jiakaoyi/teachingk2/data/TeachModel;->position:I

    .line 18
    :cond_6
    iget-object p1, p0, Lcn/mucang/android/jiakaoyi/teachingk2/collect/render/b2$c;->d:Lcn/mucang/android/jiakaoyi/teachingk2/collect/render/b2;

    invoke-static {p1, v2}, Lcn/mucang/android/jiakaoyi/teachingk2/collect/render/b2;->k(Lcn/mucang/android/jiakaoyi/teachingk2/collect/render/b2;Z)Z

    :cond_7
    :goto_4
    return v4
.end method
