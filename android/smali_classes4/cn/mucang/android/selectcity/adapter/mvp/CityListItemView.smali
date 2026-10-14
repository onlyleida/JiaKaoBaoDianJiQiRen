.class public Lcn/mucang/android/selectcity/adapter/mvp/CityListItemView;
.super Landroid/widget/LinearLayout;
.source "SourceFile"

# interfaces
.implements Lcn/mucang/android/ui/framework/mvp/b;


# instance fields
.field private a:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method private a()V
    .locals 1

    .line 1
    sget v0, Lcn/mucang/android/framework/select/city/R$id;->city_name:I

    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcn/mucang/android/selectcity/adapter/mvp/CityListItemView;->a:Landroid/widget/TextView;

    return-void
.end method

.method public static b(Landroid/view/ViewGroup;)Lcn/mucang/android/selectcity/adapter/mvp/CityListItemView;
    .locals 1

    .line 1
    sget v0, Lcn/mucang/android/framework/select/city/R$layout;->core__select_city_list_item:I

    invoke-static {p0, v0}, Lcn/mucang/android/core/utils/t0;->b(Landroid/view/ViewGroup;I)Landroid/view/View;

    move-result-object p0

    check-cast p0, Lcn/mucang/android/selectcity/adapter/mvp/CityListItemView;

    return-object p0
.end method


# virtual methods
.method public getCityName()Landroid/widget/TextView;
    .locals 1

    .line 1
    iget-object v0, p0, Lcn/mucang/android/selectcity/adapter/mvp/CityListItemView;->a:Landroid/widget/TextView;

    return-object v0
.end method

.method public getView()Landroid/view/View;
    .locals 0

    return-object p0
.end method

.method protected onFinishInflate()V
    .locals 0

    .line 1
    invoke-super {p0}, Landroid/widget/LinearLayout;->onFinishInflate()V

    .line 2
    invoke-direct {p0}, Lcn/mucang/android/selectcity/adapter/mvp/CityListItemView;->a()V

    return-void
.end method
