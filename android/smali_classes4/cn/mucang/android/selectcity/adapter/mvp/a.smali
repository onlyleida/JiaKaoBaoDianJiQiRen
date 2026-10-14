.class public Lcn/mucang/android/selectcity/adapter/mvp/a;
.super Lcn/mucang/android/ui/framework/mvp/a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcn/mucang/android/ui/framework/mvp/a<",
        "Lcn/mucang/android/selectcity/adapter/mvp/CityListItemView;",
        "Lcn/mucang/android/selectcity/CityNameCodeMapping$MucangPOI;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>(Lcn/mucang/android/selectcity/adapter/mvp/CityListItemView;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcn/mucang/android/ui/framework/mvp/a;-><init>(Lcn/mucang/android/ui/framework/mvp/b;)V

    return-void
.end method


# virtual methods
.method public bridge synthetic a(Lcn/mucang/android/ui/framework/mvp/BaseModel;)V
    .locals 0

    .line 1
    check-cast p1, Lcn/mucang/android/selectcity/CityNameCodeMapping$MucangPOI;

    invoke-virtual {p0, p1}, Lcn/mucang/android/selectcity/adapter/mvp/a;->h(Lcn/mucang/android/selectcity/CityNameCodeMapping$MucangPOI;)V

    return-void
.end method

.method public h(Lcn/mucang/android/selectcity/CityNameCodeMapping$MucangPOI;)V
    .locals 1

    if-nez p1, :cond_0

    return-void

    .line 1
    :cond_0
    iget-object v0, p0, Lcn/mucang/android/ui/framework/mvp/a;->a:Lcn/mucang/android/ui/framework/mvp/b;

    check-cast v0, Lcn/mucang/android/selectcity/adapter/mvp/CityListItemView;

    invoke-virtual {v0}, Lcn/mucang/android/selectcity/adapter/mvp/CityListItemView;->getCityName()Landroid/widget/TextView;

    move-result-object v0

    iget-object p1, p1, Lcn/mucang/android/selectcity/CityNameCodeMapping$MucangPOI;->name:Ljava/lang/String;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method
