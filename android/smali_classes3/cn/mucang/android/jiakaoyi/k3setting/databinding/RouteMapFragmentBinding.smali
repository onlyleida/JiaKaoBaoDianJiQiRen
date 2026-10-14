.class public final Lcn/mucang/android/jiakaoyi/k3setting/databinding/RouteMapFragmentBinding;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/viewbinding/a;


# instance fields
.field public final distance:Lcn/mucang/android/jiakaoyi/k3setting/databinding/RouteMapDistanceBinding;

.field public final header:Lcn/mucang/android/jiakaoyi/k3setting/databinding/RouteMapHeaderBinding;

.field public final mapView:Lcom/amap/api/maps/MapView;

.field private final rootView:Landroidx/constraintlayout/widget/ConstraintLayout;


# direct methods
.method private constructor <init>(Landroidx/constraintlayout/widget/ConstraintLayout;Lcn/mucang/android/jiakaoyi/k3setting/databinding/RouteMapDistanceBinding;Lcn/mucang/android/jiakaoyi/k3setting/databinding/RouteMapHeaderBinding;Lcom/amap/api/maps/MapView;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcn/mucang/android/jiakaoyi/k3setting/databinding/RouteMapFragmentBinding;->rootView:Landroidx/constraintlayout/widget/ConstraintLayout;

    .line 3
    iput-object p2, p0, Lcn/mucang/android/jiakaoyi/k3setting/databinding/RouteMapFragmentBinding;->distance:Lcn/mucang/android/jiakaoyi/k3setting/databinding/RouteMapDistanceBinding;

    .line 4
    iput-object p3, p0, Lcn/mucang/android/jiakaoyi/k3setting/databinding/RouteMapFragmentBinding;->header:Lcn/mucang/android/jiakaoyi/k3setting/databinding/RouteMapHeaderBinding;

    .line 5
    iput-object p4, p0, Lcn/mucang/android/jiakaoyi/k3setting/databinding/RouteMapFragmentBinding;->mapView:Lcom/amap/api/maps/MapView;

    return-void
.end method

.method public static bind(Landroid/view/View;)Lcn/mucang/android/jiakaoyi/k3setting/databinding/RouteMapFragmentBinding;
    .locals 4

    .line 1
    sget v0, Lcn/mucang/android/jiakaoyi/k3setting/R$id;->distance:I

    .line 2
    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 3
    invoke-static {v1}, Lcn/mucang/android/jiakaoyi/k3setting/databinding/RouteMapDistanceBinding;->bind(Landroid/view/View;)Lcn/mucang/android/jiakaoyi/k3setting/databinding/RouteMapDistanceBinding;

    move-result-object v0

    .line 4
    sget v1, Lcn/mucang/android/jiakaoyi/k3setting/R$id;->header:I

    .line 5
    invoke-virtual {p0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 6
    invoke-static {v2}, Lcn/mucang/android/jiakaoyi/k3setting/databinding/RouteMapHeaderBinding;->bind(Landroid/view/View;)Lcn/mucang/android/jiakaoyi/k3setting/databinding/RouteMapHeaderBinding;

    move-result-object v1

    .line 7
    sget v2, Lcn/mucang/android/jiakaoyi/k3setting/R$id;->mapView:I

    .line 8
    invoke-virtual {p0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/amap/api/maps/MapView;

    if-eqz v3, :cond_0

    .line 9
    new-instance v2, Lcn/mucang/android/jiakaoyi/k3setting/databinding/RouteMapFragmentBinding;

    check-cast p0, Landroidx/constraintlayout/widget/ConstraintLayout;

    invoke-direct {v2, p0, v0, v1, v3}, Lcn/mucang/android/jiakaoyi/k3setting/databinding/RouteMapFragmentBinding;-><init>(Landroidx/constraintlayout/widget/ConstraintLayout;Lcn/mucang/android/jiakaoyi/k3setting/databinding/RouteMapDistanceBinding;Lcn/mucang/android/jiakaoyi/k3setting/databinding/RouteMapHeaderBinding;Lcom/amap/api/maps/MapView;)V

    return-object v2

    :cond_0
    move v0, v2

    goto :goto_0

    :cond_1
    move v0, v1

    .line 10
    :cond_2
    :goto_0
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getResourceName(I)Ljava/lang/String;

    move-result-object p0

    .line 11
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Missing required view with ID: "

    invoke-virtual {v1, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static inflate(Landroid/view/LayoutInflater;)Lcn/mucang/android/jiakaoyi/k3setting/databinding/RouteMapFragmentBinding;
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 1
    invoke-static {p0, v0, v1}, Lcn/mucang/android/jiakaoyi/k3setting/databinding/RouteMapFragmentBinding;->inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lcn/mucang/android/jiakaoyi/k3setting/databinding/RouteMapFragmentBinding;

    move-result-object p0

    return-object p0
.end method

.method public static inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lcn/mucang/android/jiakaoyi/k3setting/databinding/RouteMapFragmentBinding;
    .locals 2

    .line 2
    sget v0, Lcn/mucang/android/jiakaoyi/k3setting/R$layout;->route_map_fragment:I

    const/4 v1, 0x0

    invoke-virtual {p0, v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p0

    if-eqz p2, :cond_0

    .line 3
    invoke-virtual {p1, p0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 4
    :cond_0
    invoke-static {p0}, Lcn/mucang/android/jiakaoyi/k3setting/databinding/RouteMapFragmentBinding;->bind(Landroid/view/View;)Lcn/mucang/android/jiakaoyi/k3setting/databinding/RouteMapFragmentBinding;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public bridge synthetic getRoot()Landroid/view/View;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcn/mucang/android/jiakaoyi/k3setting/databinding/RouteMapFragmentBinding;->getRoot()Landroidx/constraintlayout/widget/ConstraintLayout;

    move-result-object v0

    return-object v0
.end method

.method public getRoot()Landroidx/constraintlayout/widget/ConstraintLayout;
    .locals 1

    .line 2
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/k3setting/databinding/RouteMapFragmentBinding;->rootView:Landroidx/constraintlayout/widget/ConstraintLayout;

    return-object v0
.end method
