.class public Lcn/mucang/android/selectcity/SelectCityByProvinceActivity;
.super Lcn/mucang/android/core/config/n;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Landroid/widget/AdapterView$OnItemClickListener;


# static fields
.field public static final EXTRA_PROVINCE:Ljava/lang/String; = "EXTRA_PROVINCE"

.field public static final EXTRA_SELECT_REGION:Ljava/lang/String; = "EXTRA_SELECT_REGION"

.field public static final EXTRA_SHOW_WHOLE_PROVINCE:Ljava/lang/String; = "EXTRA_SHOW_WHOLE_PROVINCE"

.field private static final REQUEST_SELECT_REGION:I = 0x1

.field public static final RESULT_CITY:Ljava/lang/String; = "RESULT_CITY"

.field public static final TAG:Ljava/lang/String;


# instance fields
.field private mCitiesListView:Landroid/widget/ListView;

.field private mNeedSelectRegion:Z

.field private mProvince:Lcn/mucang/android/selectcity/Area;

.field private mShowWholeProvince:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    const-class v0, Lcn/mucang/android/selectcity/SelectCityByProvinceActivity;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcn/mucang/android/selectcity/SelectCityByProvinceActivity;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcn/mucang/android/core/config/n;-><init>()V

    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Lcn/mucang/android/selectcity/SelectCityByProvinceActivity;->mShowWholeProvince:Z

    const/4 v0, 0x0

    .line 3
    iput-boolean v0, p0, Lcn/mucang/android/selectcity/SelectCityByProvinceActivity;->mNeedSelectRegion:Z

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

.method private synthetic g(Ljava/util/List;)V
    .locals 5

    .line 1
    iget-boolean v0, p0, Lcn/mucang/android/selectcity/SelectCityByProvinceActivity;->mShowWholeProvince:Z

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {p0}, Landroidx/appcompat/app/d;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcn/mucang/android/framework/select/city/R$string;->select_city__whole_province_title:I

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    iget-object v3, p0, Lcn/mucang/android/selectcity/SelectCityByProvinceActivity;->mProvince:Lcn/mucang/android/selectcity/Area;

    invoke-virtual {v3}, Lcn/mucang/android/selectcity/Area;->getAreaName()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    aput-object v3, v2, v4

    invoke-virtual {v0, v1, v2}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 3
    iget-object v1, p0, Lcn/mucang/android/selectcity/SelectCityByProvinceActivity;->mProvince:Lcn/mucang/android/selectcity/Area;

    invoke-virtual {v1, v0}, Lcn/mucang/android/selectcity/Area;->setAreaName(Ljava/lang/String;)V

    .line 4
    new-instance v0, Lcn/mucang/android/selectcity/a0/a;

    iget-object v1, p0, Lcn/mucang/android/selectcity/SelectCityByProvinceActivity;->mProvince:Lcn/mucang/android/selectcity/Area;

    invoke-direct {v0, v1, v4}, Lcn/mucang/android/selectcity/a0/a;-><init>(Lcn/mucang/android/selectcity/Area;I)V

    invoke-interface {p1, v4, v0}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 5
    :cond_0
    iget-object v0, p0, Lcn/mucang/android/selectcity/SelectCityByProvinceActivity;->mCitiesListView:Landroid/widget/ListView;

    new-instance v1, Lcn/mucang/android/selectcity/z/b;

    invoke-direct {v1, p0, p1}, Lcn/mucang/android/selectcity/z/b;-><init>(Landroid/content/Context;Ljava/util/List;)V

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 6
    iget-object p1, p0, Lcn/mucang/android/selectcity/SelectCityByProvinceActivity;->mCitiesListView:Landroid/widget/ListView;

    invoke-virtual {p1, p0}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    return-void
.end method

.method private synthetic i(Ljava/util/List;Lcn/mucang/android/selectcity/Area;)V
    .locals 1

    .line 1
    invoke-static {p1}, Lcn/mucang/android/core/utils/g;->d(Ljava/util/Collection;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p2, 0x1

    .line 2
    invoke-static {p0, p2, p1}, Lcn/mucang/android/selectcity/SelectRegionByCityActivity;->l(Landroid/app/Activity;ILjava/util/List;)V

    return-void

    .line 3
    :cond_0
    sget-object p1, Lcn/mucang/android/selectcity/SelectCityByProvinceActivity;->TAG:Ljava/lang/String;

    const-string v0, "\u5f53\u524d\u57ce\u5e02\u6ca1\u6709\u5206\u533a"

    invoke-static {p1, v0}, Lcn/mucang/android/core/utils/t;->a(Ljava/lang/String;Ljava/lang/String;)I

    .line 4
    invoke-direct {p0, p2}, Lcn/mucang/android/selectcity/SelectCityByProvinceActivity;->finishWithLocation(Lcn/mucang/android/selectcity/Area;)V

    return-void
.end method

.method private synthetic k()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcn/mucang/android/selectcity/SelectCityByProvinceActivity;->mProvince:Lcn/mucang/android/selectcity/Area;

    invoke-virtual {v0}, Lcn/mucang/android/selectcity/Area;->getAreaCode()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcn/mucang/android/selectcity/c0/a;->g(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    .line 2
    new-instance v1, Lcn/mucang/android/selectcity/d;

    invoke-direct {v1, p0, v0}, Lcn/mucang/android/selectcity/d;-><init>(Lcn/mucang/android/selectcity/SelectCityByProvinceActivity;Ljava/util/List;)V

    invoke-static {v1}, Lcn/mucang/android/core/utils/u;->c(Ljava/lang/Runnable;)V

    return-void
.end method

.method public static launchForResult(Landroid/app/Activity;IZLcn/mucang/android/selectcity/Area;Z)V
    .locals 2

    if-eqz p4, :cond_0

    const/4 p2, 0x0

    .line 1
    :cond_0
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcn/mucang/android/selectcity/SelectCityByProvinceActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v1, "EXTRA_PROVINCE"

    .line 2
    invoke-virtual {v0, v1, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    const-string p3, "EXTRA_SHOW_WHOLE_PROVINCE"

    .line 3
    invoke-virtual {v0, p3, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string p2, "EXTRA_SELECT_REGION"

    .line 4
    invoke-virtual {v0, p2, p4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 5
    invoke-virtual {p0, v0, p1}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    return-void
.end method

.method public static launchForResult(Landroidx/fragment/app/Fragment;IZLcn/mucang/android/selectcity/Area;Z)V
    .locals 3

    if-eqz p4, :cond_0

    const/4 p2, 0x0

    .line 6
    :cond_0
    new-instance v0, Landroid/content/Intent;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/d;

    move-result-object v1

    const-class v2, Lcn/mucang/android/selectcity/SelectCityByProvinceActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v1, "EXTRA_PROVINCE"

    .line 7
    invoke-virtual {v0, v1, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    const-string p3, "EXTRA_SHOW_WHOLE_PROVINCE"

    .line 8
    invoke-virtual {v0, p3, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string p2, "EXTRA_SELECT_REGION"

    .line 9
    invoke-virtual {v0, p2, p4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 10
    invoke-virtual {p0, v0, p1}, Landroidx/fragment/app/Fragment;->startActivityForResult(Landroid/content/Intent;I)V

    return-void
.end method

.method private synthetic m(Lcn/mucang/android/selectcity/Area;)V
    .locals 2

    .line 1
    invoke-virtual {p1}, Lcn/mucang/android/selectcity/Area;->getAreaCode()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcn/mucang/android/selectcity/c0/a;->n(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    .line 2
    new-instance v1, Lcn/mucang/android/selectcity/e;

    invoke-direct {v1, p0, v0, p1}, Lcn/mucang/android/selectcity/e;-><init>(Lcn/mucang/android/selectcity/SelectCityByProvinceActivity;Ljava/util/List;Lcn/mucang/android/selectcity/Area;)V

    invoke-static {v1}, Lcn/mucang/android/core/utils/u;->c(Ljava/lang/Runnable;)V

    return-void
.end method

.method private pickRegionIfExist(Lcn/mucang/android/selectcity/Area;)V
    .locals 1

    .line 1
    new-instance v0, Lcn/mucang/android/selectcity/c;

    invoke-direct {v0, p0, p1}, Lcn/mucang/android/selectcity/c;-><init>(Lcn/mucang/android/selectcity/SelectCityByProvinceActivity;Lcn/mucang/android/selectcity/Area;)V

    invoke-static {v0}, Lcn/mucang/android/core/config/MucangConfig;->f(Ljava/lang/Runnable;)V

    return-void
.end method


# virtual methods
.method public getStatName()Ljava/lang/String;
    .locals 1

    const-string v0, "\u9009\u62e9\u57ce\u5e02"

    return-object v0
.end method

.method public synthetic h(Ljava/util/List;)V
    .locals 0

    invoke-direct {p0, p1}, Lcn/mucang/android/selectcity/SelectCityByProvinceActivity;->g(Ljava/util/List;)V

    return-void
.end method

.method public synthetic j(Ljava/util/List;Lcn/mucang/android/selectcity/Area;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcn/mucang/android/selectcity/SelectCityByProvinceActivity;->i(Ljava/util/List;Lcn/mucang/android/selectcity/Area;)V

    return-void
.end method

.method public synthetic l()V
    .locals 0

    invoke-direct {p0}, Lcn/mucang/android/selectcity/SelectCityByProvinceActivity;->k()V

    return-void
.end method

.method public synthetic n(Lcn/mucang/android/selectcity/Area;)V
    .locals 0

    invoke-direct {p0, p1}, Lcn/mucang/android/selectcity/SelectCityByProvinceActivity;->m(Lcn/mucang/android/selectcity/Area;)V

    return-void
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 1

    .line 1
    invoke-super {p0, p1, p2, p3}, Landroidx/fragment/app/d;->onActivityResult(IILandroid/content/Intent;)V

    const/4 v0, -0x1

    if-ne p2, v0, :cond_1

    if-nez p3, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    if-ne p1, v0, :cond_1

    .line 2
    invoke-virtual {p0, p2, p3}, Landroid/app/Activity;->setResult(ILandroid/content/Intent;)V

    .line 3
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    :cond_1
    :goto_0
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
    .locals 2

    .line 1
    invoke-super {p0, p1}, Lcn/mucang/android/core/config/n;->onCreate(Landroid/os/Bundle;)V

    .line 2
    sget p1, Lcn/mucang/android/framework/select/city/R$layout;->select_city__by_province_activity:I

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

    const-string v0, "\u9009\u62e9\u57ce\u5e02"

    .line 5
    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 6
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object p1

    if-eqz p1, :cond_0

    const-string v0, "EXTRA_PROVINCE"

    .line 7
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcn/mucang/android/selectcity/Area;

    iput-object v0, p0, Lcn/mucang/android/selectcity/SelectCityByProvinceActivity;->mProvince:Lcn/mucang/android/selectcity/Area;

    .line 8
    iget-boolean v0, p0, Lcn/mucang/android/selectcity/SelectCityByProvinceActivity;->mShowWholeProvince:Z

    const-string v1, "EXTRA_SHOW_WHOLE_PROVINCE"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcn/mucang/android/selectcity/SelectCityByProvinceActivity;->mShowWholeProvince:Z

    .line 9
    iget-boolean v0, p0, Lcn/mucang/android/selectcity/SelectCityByProvinceActivity;->mNeedSelectRegion:Z

    const-string v1, "EXTRA_SELECT_REGION"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result p1

    iput-boolean p1, p0, Lcn/mucang/android/selectcity/SelectCityByProvinceActivity;->mNeedSelectRegion:Z

    .line 10
    :cond_0
    sget p1, Lcn/mucang/android/framework/select/city/R$id;->cities:I

    invoke-virtual {p0, p1}, Landroidx/appcompat/app/d;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ListView;

    iput-object p1, p0, Lcn/mucang/android/selectcity/SelectCityByProvinceActivity;->mCitiesListView:Landroid/widget/ListView;

    const/4 v0, 0x0

    .line 11
    invoke-virtual {p1, v0}, Landroid/widget/ListView;->setDividerHeight(I)V

    .line 12
    new-instance p1, Lcn/mucang/android/selectcity/b;

    invoke-direct {p1, p0}, Lcn/mucang/android/selectcity/b;-><init>(Lcn/mucang/android/selectcity/SelectCityByProvinceActivity;)V

    invoke-static {p1}, Lcn/mucang/android/core/config/MucangConfig;->f(Ljava/lang/Runnable;)V

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
    iget-object p1, p0, Lcn/mucang/android/selectcity/SelectCityByProvinceActivity;->mCitiesListView:Landroid/widget/ListView;

    invoke-virtual {p1}, Landroid/widget/ListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object p1

    check-cast p1, Lcn/mucang/android/selectcity/z/b;

    .line 2
    invoke-virtual {p1, p3}, Lcn/mucang/android/selectcity/z/a;->getItem(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcn/mucang/android/selectcity/a0/a;

    .line 3
    iget-boolean p2, p0, Lcn/mucang/android/selectcity/SelectCityByProvinceActivity;->mNeedSelectRegion:Z

    if-eqz p2, :cond_0

    .line 4
    invoke-virtual {p1}, Lcn/mucang/android/selectcity/a0/a;->a()Lcn/mucang/android/selectcity/Area;

    move-result-object p1

    invoke-direct {p0, p1}, Lcn/mucang/android/selectcity/SelectCityByProvinceActivity;->pickRegionIfExist(Lcn/mucang/android/selectcity/Area;)V

    goto :goto_0

    .line 5
    :cond_0
    invoke-virtual {p1}, Lcn/mucang/android/selectcity/a0/a;->a()Lcn/mucang/android/selectcity/Area;

    move-result-object p1

    invoke-direct {p0, p1}, Lcn/mucang/android/selectcity/SelectCityByProvinceActivity;->finishWithLocation(Lcn/mucang/android/selectcity/Area;)V

    :goto_0
    return-void
.end method
