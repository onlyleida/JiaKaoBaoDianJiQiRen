.class public final Lcn/mucang/android/jiakaoyi/k3setting/databinding/RouteEditMapBinding;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/viewbinding/a;


# instance fields
.field public final bottomTv:Landroid/widget/TextView;

.field public final distance:Lcn/mucang/android/jiakaoyi/k3setting/databinding/RouteMapDistanceBinding;

.field public final funcLl:Lcn/mucang/android/jiakaoyi/k3setting/databinding/IncludeRouteEditClickAreaLayoutBinding;

.field public final funcLlTeach:Lcn/mucang/android/jiakaoyi/k3setting/databinding/IncludeRouteEditTeachLayoutBinding;

.field public final header:Lcn/mucang/android/jiakaoyi/k3setting/databinding/RouteMapHeaderBinding;

.field public final hpMapView:Lcn/mucang/android/jiakaoyi/hpmap/view/MapView;

.field public final mapModeSwitch:Landroid/widget/TextView;

.field public final mapView:Lcom/amap/api/maps/MapView;

.field public final orderRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

.field public final recyclerView:Landroidx/recyclerview/widget/RecyclerView;

.field private final rootView:Landroidx/constraintlayout/widget/ConstraintLayout;


# direct methods
.method private constructor <init>(Landroidx/constraintlayout/widget/ConstraintLayout;Landroid/widget/TextView;Lcn/mucang/android/jiakaoyi/k3setting/databinding/RouteMapDistanceBinding;Lcn/mucang/android/jiakaoyi/k3setting/databinding/IncludeRouteEditClickAreaLayoutBinding;Lcn/mucang/android/jiakaoyi/k3setting/databinding/IncludeRouteEditTeachLayoutBinding;Lcn/mucang/android/jiakaoyi/k3setting/databinding/RouteMapHeaderBinding;Lcn/mucang/android/jiakaoyi/hpmap/view/MapView;Landroid/widget/TextView;Lcom/amap/api/maps/MapView;Landroidx/recyclerview/widget/RecyclerView;Landroidx/recyclerview/widget/RecyclerView;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcn/mucang/android/jiakaoyi/k3setting/databinding/RouteEditMapBinding;->rootView:Landroidx/constraintlayout/widget/ConstraintLayout;

    .line 3
    iput-object p2, p0, Lcn/mucang/android/jiakaoyi/k3setting/databinding/RouteEditMapBinding;->bottomTv:Landroid/widget/TextView;

    .line 4
    iput-object p3, p0, Lcn/mucang/android/jiakaoyi/k3setting/databinding/RouteEditMapBinding;->distance:Lcn/mucang/android/jiakaoyi/k3setting/databinding/RouteMapDistanceBinding;

    .line 5
    iput-object p4, p0, Lcn/mucang/android/jiakaoyi/k3setting/databinding/RouteEditMapBinding;->funcLl:Lcn/mucang/android/jiakaoyi/k3setting/databinding/IncludeRouteEditClickAreaLayoutBinding;

    .line 6
    iput-object p5, p0, Lcn/mucang/android/jiakaoyi/k3setting/databinding/RouteEditMapBinding;->funcLlTeach:Lcn/mucang/android/jiakaoyi/k3setting/databinding/IncludeRouteEditTeachLayoutBinding;

    .line 7
    iput-object p6, p0, Lcn/mucang/android/jiakaoyi/k3setting/databinding/RouteEditMapBinding;->header:Lcn/mucang/android/jiakaoyi/k3setting/databinding/RouteMapHeaderBinding;

    .line 8
    iput-object p7, p0, Lcn/mucang/android/jiakaoyi/k3setting/databinding/RouteEditMapBinding;->hpMapView:Lcn/mucang/android/jiakaoyi/hpmap/view/MapView;

    .line 9
    iput-object p8, p0, Lcn/mucang/android/jiakaoyi/k3setting/databinding/RouteEditMapBinding;->mapModeSwitch:Landroid/widget/TextView;

    .line 10
    iput-object p9, p0, Lcn/mucang/android/jiakaoyi/k3setting/databinding/RouteEditMapBinding;->mapView:Lcom/amap/api/maps/MapView;

    .line 11
    iput-object p10, p0, Lcn/mucang/android/jiakaoyi/k3setting/databinding/RouteEditMapBinding;->orderRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    .line 12
    iput-object p11, p0, Lcn/mucang/android/jiakaoyi/k3setting/databinding/RouteEditMapBinding;->recyclerView:Landroidx/recyclerview/widget/RecyclerView;

    return-void
.end method

.method public static bind(Landroid/view/View;)Lcn/mucang/android/jiakaoyi/k3setting/databinding/RouteEditMapBinding;
    .locals 14

    .line 1
    sget v0, Lcn/mucang/android/jiakaoyi/k3setting/R$id;->bottomTv:I

    .line 2
    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    move-object v4, v1

    check-cast v4, Landroid/widget/TextView;

    if-eqz v4, :cond_0

    .line 3
    sget v0, Lcn/mucang/android/jiakaoyi/k3setting/R$id;->distance:I

    .line 4
    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 5
    invoke-static {v1}, Lcn/mucang/android/jiakaoyi/k3setting/databinding/RouteMapDistanceBinding;->bind(Landroid/view/View;)Lcn/mucang/android/jiakaoyi/k3setting/databinding/RouteMapDistanceBinding;

    move-result-object v5

    .line 6
    sget v0, Lcn/mucang/android/jiakaoyi/k3setting/R$id;->funcLl:I

    .line 7
    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 8
    invoke-static {v1}, Lcn/mucang/android/jiakaoyi/k3setting/databinding/IncludeRouteEditClickAreaLayoutBinding;->bind(Landroid/view/View;)Lcn/mucang/android/jiakaoyi/k3setting/databinding/IncludeRouteEditClickAreaLayoutBinding;

    move-result-object v6

    .line 9
    sget v0, Lcn/mucang/android/jiakaoyi/k3setting/R$id;->funcLlTeach:I

    .line 10
    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 11
    invoke-static {v1}, Lcn/mucang/android/jiakaoyi/k3setting/databinding/IncludeRouteEditTeachLayoutBinding;->bind(Landroid/view/View;)Lcn/mucang/android/jiakaoyi/k3setting/databinding/IncludeRouteEditTeachLayoutBinding;

    move-result-object v7

    .line 12
    sget v0, Lcn/mucang/android/jiakaoyi/k3setting/R$id;->header:I

    .line 13
    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 14
    invoke-static {v1}, Lcn/mucang/android/jiakaoyi/k3setting/databinding/RouteMapHeaderBinding;->bind(Landroid/view/View;)Lcn/mucang/android/jiakaoyi/k3setting/databinding/RouteMapHeaderBinding;

    move-result-object v8

    .line 15
    sget v0, Lcn/mucang/android/jiakaoyi/k3setting/R$id;->hpMapView:I

    .line 16
    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    move-object v9, v1

    check-cast v9, Lcn/mucang/android/jiakaoyi/hpmap/view/MapView;

    if-eqz v9, :cond_0

    .line 17
    sget v0, Lcn/mucang/android/jiakaoyi/k3setting/R$id;->map_mode_switch:I

    .line 18
    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    move-object v10, v1

    check-cast v10, Landroid/widget/TextView;

    if-eqz v10, :cond_0

    .line 19
    sget v0, Lcn/mucang/android/jiakaoyi/k3setting/R$id;->mapView:I

    .line 20
    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    move-object v11, v1

    check-cast v11, Lcom/amap/api/maps/MapView;

    if-eqz v11, :cond_0

    .line 21
    sget v0, Lcn/mucang/android/jiakaoyi/k3setting/R$id;->orderRecyclerView:I

    .line 22
    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    move-object v12, v1

    check-cast v12, Landroidx/recyclerview/widget/RecyclerView;

    if-eqz v12, :cond_0

    .line 23
    sget v0, Lcn/mucang/android/jiakaoyi/k3setting/R$id;->recyclerView:I

    .line 24
    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    move-object v13, v1

    check-cast v13, Landroidx/recyclerview/widget/RecyclerView;

    if-eqz v13, :cond_0

    .line 25
    new-instance v0, Lcn/mucang/android/jiakaoyi/k3setting/databinding/RouteEditMapBinding;

    move-object v3, p0

    check-cast v3, Landroidx/constraintlayout/widget/ConstraintLayout;

    move-object v2, v0

    invoke-direct/range {v2 .. v13}, Lcn/mucang/android/jiakaoyi/k3setting/databinding/RouteEditMapBinding;-><init>(Landroidx/constraintlayout/widget/ConstraintLayout;Landroid/widget/TextView;Lcn/mucang/android/jiakaoyi/k3setting/databinding/RouteMapDistanceBinding;Lcn/mucang/android/jiakaoyi/k3setting/databinding/IncludeRouteEditClickAreaLayoutBinding;Lcn/mucang/android/jiakaoyi/k3setting/databinding/IncludeRouteEditTeachLayoutBinding;Lcn/mucang/android/jiakaoyi/k3setting/databinding/RouteMapHeaderBinding;Lcn/mucang/android/jiakaoyi/hpmap/view/MapView;Landroid/widget/TextView;Lcom/amap/api/maps/MapView;Landroidx/recyclerview/widget/RecyclerView;Landroidx/recyclerview/widget/RecyclerView;)V

    return-object v0

    .line 26
    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getResourceName(I)Ljava/lang/String;

    move-result-object p0

    .line 27
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Missing required view with ID: "

    invoke-virtual {v1, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static inflate(Landroid/view/LayoutInflater;)Lcn/mucang/android/jiakaoyi/k3setting/databinding/RouteEditMapBinding;
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 1
    invoke-static {p0, v0, v1}, Lcn/mucang/android/jiakaoyi/k3setting/databinding/RouteEditMapBinding;->inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lcn/mucang/android/jiakaoyi/k3setting/databinding/RouteEditMapBinding;

    move-result-object p0

    return-object p0
.end method

.method public static inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lcn/mucang/android/jiakaoyi/k3setting/databinding/RouteEditMapBinding;
    .locals 2

    .line 2
    sget v0, Lcn/mucang/android/jiakaoyi/k3setting/R$layout;->route_edit_map:I

    const/4 v1, 0x0

    invoke-virtual {p0, v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p0

    if-eqz p2, :cond_0

    .line 3
    invoke-virtual {p1, p0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 4
    :cond_0
    invoke-static {p0}, Lcn/mucang/android/jiakaoyi/k3setting/databinding/RouteEditMapBinding;->bind(Landroid/view/View;)Lcn/mucang/android/jiakaoyi/k3setting/databinding/RouteEditMapBinding;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public bridge synthetic getRoot()Landroid/view/View;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcn/mucang/android/jiakaoyi/k3setting/databinding/RouteEditMapBinding;->getRoot()Landroidx/constraintlayout/widget/ConstraintLayout;

    move-result-object v0

    return-object v0
.end method

.method public getRoot()Landroidx/constraintlayout/widget/ConstraintLayout;
    .locals 1

    .line 2
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/k3setting/databinding/RouteEditMapBinding;->rootView:Landroidx/constraintlayout/widget/ConstraintLayout;

    return-object v0
.end method
