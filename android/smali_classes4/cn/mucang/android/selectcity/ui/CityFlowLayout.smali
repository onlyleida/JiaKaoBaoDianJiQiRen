.class public Lcn/mucang/android/selectcity/ui/CityFlowLayout;
.super Lcn/mucang/android/selectcity/ui/a;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/mucang/android/selectcity/ui/CityFlowLayout$a;
    }
.end annotation


# instance fields
.field private d:Lcn/mucang/android/selectcity/ui/CityFlowLayout$a;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lcn/mucang/android/selectcity/ui/a;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .line 1
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    .line 2
    iget-object v1, p0, Lcn/mucang/android/selectcity/ui/CityFlowLayout;->d:Lcn/mucang/android/selectcity/ui/CityFlowLayout$a;

    if-eqz v1, :cond_0

    if-eqz v0, :cond_0

    .line 3
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcn/mucang/android/selectcity/Area;

    invoke-interface {v1, p1}, Lcn/mucang/android/selectcity/ui/CityFlowLayout$a;->a(Lcn/mucang/android/selectcity/Area;)V

    :cond_0
    return-void
.end method

.method public setCities(Ljava/util/List;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcn/mucang/android/selectcity/Area;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 2
    invoke-static {}, Lcn/mucang/android/core/utils/j;->i()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    const/high16 v1, 0x41700000    # 15.0f

    .line 3
    invoke-static {v1}, Lcn/mucang/android/core/utils/s0;->a(F)I

    move-result v1

    mul-int/lit8 v2, v1, 0x4

    sub-int/2addr v0, v2

    int-to-float v0, v0

    const/high16 v2, 0x3f800000    # 1.0f

    mul-float v0, v0, v2

    const/high16 v2, 0x40400000    # 3.0f

    div-float/2addr v0, v2

    float-to-int v0, v0

    .line 4
    invoke-virtual {p0, v1}, Lcn/mucang/android/selectcity/ui/a;->setColumnSpacing(I)V

    const/high16 v1, 0x41200000    # 10.0f

    .line 5
    invoke-static {v1}, Lcn/mucang/android/core/utils/s0;->a(F)I

    move-result v2

    invoke-virtual {p0, v2}, Lcn/mucang/android/selectcity/ui/a;->setLineSpacing(I)V

    .line 6
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcn/mucang/android/selectcity/Area;

    .line 7
    new-instance v3, Landroid/widget/TextView;

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-direct {v3, v4}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 8
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    sget v5, Lcn/mucang/android/framework/select/city/R$color;->select_city__list_item_title_color:I

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getColor(I)I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setTextColor(I)V

    .line 9
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    sget v5, Lcn/mucang/android/framework/select/city/R$dimen;->select_city__list_item_title_size:I

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    int-to-float v4, v4

    const/4 v5, 0x0

    invoke-virtual {v3, v5, v4}, Landroid/widget/TextView;->setTextSize(IF)V

    const/16 v4, 0x11

    .line 10
    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setGravity(I)V

    .line 11
    sget v4, Lcn/mucang/android/framework/select/city/R$drawable;->select_city__hot_city_item_bg:I

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setBackgroundResource(I)V

    .line 12
    invoke-virtual {v3, v2}, Landroid/widget/TextView;->setTag(Ljava/lang/Object;)V

    .line 13
    invoke-virtual {v2}, Lcn/mucang/android/selectcity/Area;->getAreaName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 14
    new-instance v2, Landroid/view/ViewGroup$LayoutParams;

    const/4 v4, -0x2

    invoke-direct {v2, v0, v4}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v3, v2}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 15
    invoke-static {v1}, Lcn/mucang/android/core/utils/s0;->a(F)I

    move-result v2

    invoke-static {v1}, Lcn/mucang/android/core/utils/s0;->a(F)I

    move-result v4

    invoke-virtual {v3, v5, v2, v5, v4}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 16
    invoke-virtual {v3, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 17
    invoke-virtual {p0, v3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public setListener(Lcn/mucang/android/selectcity/ui/CityFlowLayout$a;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcn/mucang/android/selectcity/ui/CityFlowLayout;->d:Lcn/mucang/android/selectcity/ui/CityFlowLayout$a;

    return-void
.end method
