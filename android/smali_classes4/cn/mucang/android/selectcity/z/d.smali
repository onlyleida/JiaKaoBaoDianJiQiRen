.class public Lcn/mucang/android/selectcity/z/d;
.super Lf/a/a/e/a/b/a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lf/a/a/e/a/b/a<",
        "Lcn/mucang/android/selectcity/CityNameCodeMapping$MucangPOI;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lf/a/a/e/a/b/a;-><init>()V

    return-void
.end method


# virtual methods
.method protected c(Landroid/view/View;I)Lcn/mucang/android/ui/framework/mvp/a;
    .locals 0

    .line 1
    new-instance p2, Lcn/mucang/android/selectcity/adapter/mvp/a;

    check-cast p1, Lcn/mucang/android/selectcity/adapter/mvp/CityListItemView;

    invoke-direct {p2, p1}, Lcn/mucang/android/selectcity/adapter/mvp/a;-><init>(Lcn/mucang/android/selectcity/adapter/mvp/CityListItemView;)V

    return-object p2
.end method

.method protected d(Landroid/view/ViewGroup;I)Lcn/mucang/android/ui/framework/mvp/b;
    .locals 0

    .line 1
    invoke-static {p1}, Lcn/mucang/android/selectcity/adapter/mvp/CityListItemView;->b(Landroid/view/ViewGroup;)Lcn/mucang/android/selectcity/adapter/mvp/CityListItemView;

    move-result-object p1

    return-object p1
.end method
