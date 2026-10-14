.class public final synthetic Lcn/mucang/android/selectcity/c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Lcn/mucang/android/selectcity/SelectCityByProvinceActivity;

.field public final synthetic b:Lcn/mucang/android/selectcity/Area;


# direct methods
.method public synthetic constructor <init>(Lcn/mucang/android/selectcity/SelectCityByProvinceActivity;Lcn/mucang/android/selectcity/Area;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcn/mucang/android/selectcity/c;->a:Lcn/mucang/android/selectcity/SelectCityByProvinceActivity;

    iput-object p2, p0, Lcn/mucang/android/selectcity/c;->b:Lcn/mucang/android/selectcity/Area;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcn/mucang/android/selectcity/c;->a:Lcn/mucang/android/selectcity/SelectCityByProvinceActivity;

    iget-object v1, p0, Lcn/mucang/android/selectcity/c;->b:Lcn/mucang/android/selectcity/Area;

    invoke-virtual {v0, v1}, Lcn/mucang/android/selectcity/SelectCityByProvinceActivity;->n(Lcn/mucang/android/selectcity/Area;)V

    return-void
.end method
