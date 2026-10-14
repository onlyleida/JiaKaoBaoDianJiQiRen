.class public abstract Lcn/mucang/android/selectcity/z/a;
.super Landroid/widget/BaseAdapter;
.source "SourceFile"

# interfaces
.implements Lcn/mucang/android/wuhan/widget/PinnedHeaderListView$c;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/mucang/android/selectcity/z/a$a;
    }
.end annotation


# instance fields
.field protected a:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcn/mucang/android/selectcity/a0/a;",
            ">;"
        }
    .end annotation
.end field

.field private final b:Landroid/content/Context;

.field private c:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List<",
            "Lcn/mucang/android/selectcity/a0/a;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 2
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcn/mucang/android/selectcity/z/a;->a:Ljava/util/List;

    .line 3
    iput-object p1, p0, Lcn/mucang/android/selectcity/z/a;->b:Landroid/content/Context;

    .line 4
    invoke-static {p2}, Lcn/mucang/android/core/utils/g;->d(Ljava/util/Collection;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 5
    iget-object p1, p0, Lcn/mucang/android/selectcity/z/a;->a:Ljava/util/List;

    invoke-interface {p1, p2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 6
    :cond_0
    new-instance p1, Landroid/util/SparseArray;

    invoke-direct {p1}, Landroid/util/SparseArray;-><init>()V

    iput-object p1, p0, Lcn/mucang/android/selectcity/z/a;->c:Landroid/util/SparseArray;

    return-void
.end method


# virtual methods
.method public a(I)Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcn/mucang/android/selectcity/z/a;->a:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcn/mucang/android/selectcity/a0/a;

    invoke-virtual {p1}, Lcn/mucang/android/selectcity/a0/a;->b()I

    move-result p1

    if-nez p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public c(I)I
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public d(I)I
    .locals 1

    .line 1
    iget-object v0, p0, Lcn/mucang/android/selectcity/z/a;->a:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcn/mucang/android/selectcity/a0/a;

    invoke-virtual {p1}, Lcn/mucang/android/selectcity/a0/a;->d()I

    move-result p1

    return p1
.end method

.method public e(I)Ljava/lang/String;
    .locals 4

    .line 1
    iget-object v0, p0, Lcn/mucang/android/selectcity/z/a;->c:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 2
    invoke-static {v0}, Lcn/mucang/android/core/utils/n0;->e(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 3
    iget-object v1, p0, Lcn/mucang/android/selectcity/z/a;->a:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcn/mucang/android/selectcity/a0/a;

    .line 4
    invoke-virtual {v2}, Lcn/mucang/android/selectcity/a0/a;->b()I

    move-result v3

    if-nez v3, :cond_0

    invoke-virtual {v2}, Lcn/mucang/android/selectcity/a0/a;->d()I

    move-result v3

    if-ne v3, p1, :cond_0

    .line 5
    invoke-virtual {v2}, Lcn/mucang/android/selectcity/a0/a;->c()Lcn/mucang/android/selectcity/a0/b;

    move-result-object v0

    invoke-virtual {v0}, Lcn/mucang/android/selectcity/a0/b;->a()Ljava/lang/String;

    move-result-object v0

    .line 6
    iget-object v2, p0, Lcn/mucang/android/selectcity/z/a;->c:Landroid/util/SparseArray;

    invoke-virtual {v2, p1, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    goto :goto_0

    :cond_1
    return-object v0
.end method

.method public f(Ljava/util/List;)Lcn/mucang/android/selectcity/z/a;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcn/mucang/android/selectcity/a0/a;",
            ">;)",
            "Lcn/mucang/android/selectcity/z/a;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcn/mucang/android/selectcity/z/a;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 2
    invoke-static {p1}, Lcn/mucang/android/core/utils/g;->d(Ljava/util/Collection;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3
    iget-object v0, p0, Lcn/mucang/android/selectcity/z/a;->a:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    :cond_0
    return-object p0
.end method

.method public getCount()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcn/mucang/android/selectcity/z/a;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1

    .line 1
    iget-object v0, p0, Lcn/mucang/android/selectcity/z/a;->a:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public getItemId(I)J
    .locals 2

    int-to-long v0, p1

    return-wide v0
.end method

.method public getItemViewType(I)I
    .locals 1

    .line 1
    iget-object v0, p0, Lcn/mucang/android/selectcity/z/a;->a:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcn/mucang/android/selectcity/a0/a;

    invoke-virtual {p1}, Lcn/mucang/android/selectcity/a0/a;->b()I

    move-result p1

    return p1
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 5

    .line 1
    iget-object v0, p0, Lcn/mucang/android/selectcity/z/a;->a:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcn/mucang/android/selectcity/a0/a;

    if-nez p2, :cond_1

    .line 2
    new-instance p2, Lcn/mucang/android/selectcity/z/a$a;

    invoke-direct {p2}, Lcn/mucang/android/selectcity/z/a$a;-><init>()V

    .line 3
    invoke-virtual {v0}, Lcn/mucang/android/selectcity/a0/a;->b()I

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_0

    .line 4
    invoke-interface {p0, p1, v2, p3}, Lcn/mucang/android/wuhan/widget/PinnedHeaderListView$c;->b(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p3

    .line 5
    new-instance v1, Landroid/widget/AbsListView$LayoutParams;

    const/4 v2, -0x1

    const/4 v3, -0x2

    invoke-direct {v1, v2, v3}, Landroid/widget/AbsListView$LayoutParams;-><init>(II)V

    invoke-virtual {p3, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 6
    move-object v1, p3

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p2, Lcn/mucang/android/selectcity/z/a$a;->a:Landroid/widget/TextView;

    goto :goto_0

    .line 7
    :cond_0
    iget-object p3, p0, Lcn/mucang/android/selectcity/z/a;->b:Landroid/content/Context;

    sget v1, Lcn/mucang/android/framework/select/city/R$layout;->select_city__list_item:I

    invoke-static {p3, v1, v2}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p3

    .line 8
    sget v1, Lcn/mucang/android/framework/select/city/R$id;->item_title:I

    invoke-virtual {p3, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p2, Lcn/mucang/android/selectcity/z/a$a;->a:Landroid/widget/TextView;

    .line 9
    sget v1, Lcn/mucang/android/framework/select/city/R$id;->line:I

    invoke-virtual {p3, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p2, Lcn/mucang/android/selectcity/z/a$a;->b:Landroid/view/View;

    .line 10
    :goto_0
    invoke-virtual {p3, p2}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    goto :goto_1

    .line 11
    :cond_1
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcn/mucang/android/selectcity/z/a$a;

    move-object v4, p3

    move-object p3, p2

    move-object p2, v4

    .line 12
    :goto_1
    invoke-virtual {v0}, Lcn/mucang/android/selectcity/a0/a;->b()I

    move-result v0

    if-nez v0, :cond_2

    .line 13
    iget-object p2, p2, Lcn/mucang/android/selectcity/z/a$a;->a:Landroid/widget/TextView;

    iget-object v0, p0, Lcn/mucang/android/selectcity/z/a;->a:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcn/mucang/android/selectcity/a0/a;

    invoke-virtual {p1}, Lcn/mucang/android/selectcity/a0/a;->c()Lcn/mucang/android/selectcity/a0/b;

    move-result-object p1

    invoke-virtual {p1}, Lcn/mucang/android/selectcity/a0/b;->a()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_2

    .line 14
    :cond_2
    iget-object v0, p0, Lcn/mucang/android/selectcity/z/a;->a:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcn/mucang/android/selectcity/a0/a;

    invoke-virtual {v0}, Lcn/mucang/android/selectcity/a0/a;->a()Lcn/mucang/android/selectcity/Area;

    move-result-object v0

    .line 15
    iget-object v1, p2, Lcn/mucang/android/selectcity/z/a$a;->a:Landroid/widget/TextView;

    invoke-virtual {v0}, Lcn/mucang/android/selectcity/Area;->getAreaName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 16
    invoke-virtual {p0}, Lcn/mucang/android/selectcity/z/a;->getCount()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    if-eq p1, v0, :cond_3

    iget-object v0, p0, Lcn/mucang/android/selectcity/z/a;->a:Ljava/util/List;

    add-int/lit8 p1, p1, 0x1

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcn/mucang/android/selectcity/a0/a;

    invoke-virtual {p1}, Lcn/mucang/android/selectcity/a0/a;->b()I

    move-result p1

    if-nez p1, :cond_3

    .line 17
    iget-object p1, p2, Lcn/mucang/android/selectcity/z/a$a;->b:Landroid/view/View;

    const/16 p2, 0x8

    invoke-virtual {p1, p2}, Landroid/view/View;->setVisibility(I)V

    goto :goto_2

    .line 18
    :cond_3
    iget-object p1, p2, Lcn/mucang/android/selectcity/z/a$a;->b:Landroid/view/View;

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Landroid/view/View;->setVisibility(I)V

    :goto_2
    return-object p3
.end method

.method public getViewTypeCount()I
    .locals 1

    const/4 v0, 0x2

    return v0
.end method
