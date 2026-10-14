.class public Lcn/mucang/android/selectcity/SelectRegionByCityActivity;
.super Lcn/mucang/android/core/config/n;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Landroid/widget/AdapterView$OnItemClickListener;


# instance fields
.field private a:Landroid/widget/ListView;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcn/mucang/android/core/config/n;-><init>()V

    return-void
.end method

.method private finishWithLocation(Lcn/mucang/android/selectcity/Area;)V
    .locals 2

    .line 1
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string v1, "RESULT_CITY"

    .line 2
    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    const/4 p1, -0x1

    .line 3
    invoke-virtual {p0, p1, v0}, Landroid/app/Activity;->setResult(ILandroid/content/Intent;)V

    .line 4
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    return-void
.end method

.method private g(Ljava/lang/String;)V
    .locals 1

    .line 1
    new-instance v0, Lcn/mucang/android/selectcity/s;

    invoke-direct {v0, p0, p1}, Lcn/mucang/android/selectcity/s;-><init>(Lcn/mucang/android/selectcity/SelectRegionByCityActivity;Ljava/lang/String;)V

    invoke-static {v0}, Lcn/mucang/android/core/config/MucangConfig;->f(Ljava/lang/Runnable;)V

    return-void
.end method

.method private synthetic h(Ljava/lang/String;)V
    .locals 1

    .line 1
    invoke-static {p1}, Lcn/mucang/android/selectcity/c0/a;->n(Ljava/lang/String;)Ljava/util/List;

    move-result-object p1

    .line 2
    new-instance v0, Lcn/mucang/android/selectcity/t;

    invoke-direct {v0, p0, p1}, Lcn/mucang/android/selectcity/t;-><init>(Lcn/mucang/android/selectcity/SelectRegionByCityActivity;Ljava/util/List;)V

    invoke-static {v0}, Lcn/mucang/android/core/utils/u;->c(Ljava/lang/Runnable;)V

    return-void
.end method

.method private synthetic j(Ljava/util/List;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcn/mucang/android/selectcity/SelectRegionByCityActivity;->n(Ljava/util/List;)V

    return-void
.end method

.method public static l(Landroid/app/Activity;ILjava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
            "I",
            "Ljava/util/List<",
            "Lcn/mucang/android/selectcity/Area;",
            ">;)V"
        }
    .end annotation

    .line 1
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcn/mucang/android/selectcity/SelectRegionByCityActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 2
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1, p2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    const-string p2, "EXTRA_REGION_LIST"

    invoke-virtual {v0, p2, v1}, Landroid/content/Intent;->putParcelableArrayListExtra(Ljava/lang/String;Ljava/util/ArrayList;)Landroid/content/Intent;

    .line 3
    invoke-virtual {p0, v0, p1}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    return-void
.end method

.method public static m(Landroidx/fragment/app/Fragment;ILjava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/fragment/app/Fragment;",
            "I",
            "Ljava/util/List<",
            "Lcn/mucang/android/selectcity/Area;",
            ">;)V"
        }
    .end annotation

    .line 1
    new-instance v0, Landroid/content/Intent;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/d;

    move-result-object v1

    const-class v2, Lcn/mucang/android/selectcity/SelectRegionByCityActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 2
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1, p2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    const-string p2, "EXTRA_REGION_LIST"

    invoke-virtual {v0, p2, v1}, Landroid/content/Intent;->putParcelableArrayListExtra(Ljava/lang/String;Ljava/util/ArrayList;)Landroid/content/Intent;

    .line 3
    invoke-virtual {p0, v0, p1}, Landroidx/fragment/app/Fragment;->startActivityForResult(Landroid/content/Intent;I)V

    return-void
.end method

.method private n(Ljava/util/List;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcn/mucang/android/selectcity/Area;",
            ">;)V"
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 2
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcn/mucang/android/selectcity/Area;

    .line 3
    new-instance v2, Lcn/mucang/android/selectcity/a0/a;

    const/4 v3, -0x1

    invoke-direct {v2, v1, v3}, Lcn/mucang/android/selectcity/a0/a;-><init>(Lcn/mucang/android/selectcity/Area;I)V

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 4
    :cond_0
    iget-object p1, p0, Lcn/mucang/android/selectcity/SelectRegionByCityActivity;->a:Landroid/widget/ListView;

    new-instance v1, Lcn/mucang/android/selectcity/z/b;

    invoke-direct {v1, p0, v0}, Lcn/mucang/android/selectcity/z/b;-><init>(Landroid/content/Context;Ljava/util/List;)V

    invoke-virtual {p1, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 5
    iget-object p1, p0, Lcn/mucang/android/selectcity/SelectRegionByCityActivity;->a:Landroid/widget/ListView;

    invoke-virtual {p1, p0}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    return-void
.end method


# virtual methods
.method public getStatName()Ljava/lang/String;
    .locals 1

    const-string v0, "\u9009\u62e9\u533a\u53bf"

    return-object v0
.end method

.method public synthetic i(Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lcn/mucang/android/selectcity/SelectRegionByCityActivity;->h(Ljava/lang/String;)V

    return-void
.end method

.method public synthetic k(Ljava/util/List;)V
    .locals 0

    invoke-direct {p0, p1}, Lcn/mucang/android/selectcity/SelectRegionByCityActivity;->j(Ljava/util/List;)V

    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 1
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    .line 2
    sget v0, Lcn/mucang/android/framework/select/city/R$id;->back:I

    if-ne p1, v0, :cond_0

    .line 3
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    :cond_0
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3

    .line 1
    invoke-super {p0, p1}, Lcn/mucang/android/core/config/n;->onCreate(Landroid/os/Bundle;)V

    .line 2
    sget p1, Lcn/mucang/android/framework/select/city/R$layout;->select_region__by_city_activity:I

    invoke-virtual {p0, p1}, Lcn/mucang/android/core/config/n;->setContentView(I)V

    .line 3
    sget p1, Lcn/mucang/android/framework/select/city/R$id;->back:I

    invoke-virtual {p0, p1}, Landroidx/appcompat/app/d;->findViewById(I)Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 4
    sget p1, Lcn/mucang/android/framework/select/city/R$id;->selected_cities_bar_title:I

    invoke-virtual {p0, p1}, Landroidx/appcompat/app/d;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    const-string v0, "\u9009\u62e9\u533a\u53bf"

    .line 5
    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 6
    sget p1, Lcn/mucang/android/framework/select/city/R$id;->cities:I

    invoke-virtual {p0, p1}, Landroidx/appcompat/app/d;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ListView;

    iput-object p1, p0, Lcn/mucang/android/selectcity/SelectRegionByCityActivity;->a:Landroid/widget/ListView;

    const/4 v0, 0x0

    .line 7
    invoke-virtual {p1, v0}, Landroid/widget/ListView;->setDividerHeight(I)V

    .line 8
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    const-string v1, "EXTRA_CITY_CODE"

    invoke-virtual {p1, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 9
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string v2, "EXTRA_REGION_LIST"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->getParcelableArrayListExtra(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v1

    .line 10
    invoke-static {v1}, Lcn/mucang/android/core/utils/g;->d(Ljava/util/Collection;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 11
    invoke-direct {p0, v1}, Lcn/mucang/android/selectcity/SelectRegionByCityActivity;->n(Ljava/util/List;)V

    return-void

    .line 12
    :cond_0
    invoke-static {p1}, Lcn/mucang/android/core/utils/n0;->g(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 13
    invoke-direct {p0, p1}, Lcn/mucang/android/selectcity/SelectRegionByCityActivity;->g(Ljava/lang/String;)V

    return-void

    .line 14
    :cond_1
    invoke-virtual {p0, v0}, Landroid/app/Activity;->setResult(I)V

    .line 15
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    return-void
.end method

.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView<",
            "*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .line 1
    iget-object p1, p0, Lcn/mucang/android/selectcity/SelectRegionByCityActivity;->a:Landroid/widget/ListView;

    invoke-virtual {p1}, Landroid/widget/ListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object p1

    check-cast p1, Lcn/mucang/android/selectcity/z/b;

    .line 2
    invoke-virtual {p1, p3}, Lcn/mucang/android/selectcity/z/a;->getItem(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcn/mucang/android/selectcity/a0/a;

    .line 3
    invoke-virtual {p1}, Lcn/mucang/android/selectcity/a0/a;->a()Lcn/mucang/android/selectcity/Area;

    move-result-object p1

    invoke-direct {p0, p1}, Lcn/mucang/android/selectcity/SelectRegionByCityActivity;->finishWithLocation(Lcn/mucang/android/selectcity/Area;)V

    return-void
.end method
