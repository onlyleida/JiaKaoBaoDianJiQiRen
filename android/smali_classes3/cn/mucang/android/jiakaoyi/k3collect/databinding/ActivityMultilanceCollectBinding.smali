.class public final Lcn/mucang/android/jiakaoyi/k3collect/databinding/ActivityMultilanceCollectBinding;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/viewbinding/a;


# instance fields
.field public final containerMulti:Landroid/widget/FrameLayout;

.field public final gpsBaseX:Landroid/widget/TextView;

.field public final gpsBaseXValue:Landroid/widget/TextView;

.field public final gpsBaseY:Landroid/widget/TextView;

.field public final gpsBaseYValue:Landroid/widget/TextView;

.field public final gpsInfo:Landroid/widget/TextView;

.field public final gpsInfoValue:Landroid/widget/TextView;

.field public final gpsLatitude:Landroid/widget/TextView;

.field public final gpsLatitudeValue:Landroid/widget/TextView;

.field public final gpsLongitude:Landroid/widget/TextView;

.field public final gpsLongitudeValue:Landroid/widget/TextView;

.field public final gpsStatus:Landroid/widget/TextView;

.field public final gpsStatusValue:Landroid/widget/TextView;

.field private final rootView:Landroidx/constraintlayout/widget/ConstraintLayout;


# direct methods
.method private constructor <init>(Landroidx/constraintlayout/widget/ConstraintLayout;Landroid/widget/FrameLayout;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcn/mucang/android/jiakaoyi/k3collect/databinding/ActivityMultilanceCollectBinding;->rootView:Landroidx/constraintlayout/widget/ConstraintLayout;

    .line 3
    iput-object p2, p0, Lcn/mucang/android/jiakaoyi/k3collect/databinding/ActivityMultilanceCollectBinding;->containerMulti:Landroid/widget/FrameLayout;

    .line 4
    iput-object p3, p0, Lcn/mucang/android/jiakaoyi/k3collect/databinding/ActivityMultilanceCollectBinding;->gpsBaseX:Landroid/widget/TextView;

    .line 5
    iput-object p4, p0, Lcn/mucang/android/jiakaoyi/k3collect/databinding/ActivityMultilanceCollectBinding;->gpsBaseXValue:Landroid/widget/TextView;

    .line 6
    iput-object p5, p0, Lcn/mucang/android/jiakaoyi/k3collect/databinding/ActivityMultilanceCollectBinding;->gpsBaseY:Landroid/widget/TextView;

    .line 7
    iput-object p6, p0, Lcn/mucang/android/jiakaoyi/k3collect/databinding/ActivityMultilanceCollectBinding;->gpsBaseYValue:Landroid/widget/TextView;

    .line 8
    iput-object p7, p0, Lcn/mucang/android/jiakaoyi/k3collect/databinding/ActivityMultilanceCollectBinding;->gpsInfo:Landroid/widget/TextView;

    .line 9
    iput-object p8, p0, Lcn/mucang/android/jiakaoyi/k3collect/databinding/ActivityMultilanceCollectBinding;->gpsInfoValue:Landroid/widget/TextView;

    .line 10
    iput-object p9, p0, Lcn/mucang/android/jiakaoyi/k3collect/databinding/ActivityMultilanceCollectBinding;->gpsLatitude:Landroid/widget/TextView;

    .line 11
    iput-object p10, p0, Lcn/mucang/android/jiakaoyi/k3collect/databinding/ActivityMultilanceCollectBinding;->gpsLatitudeValue:Landroid/widget/TextView;

    .line 12
    iput-object p11, p0, Lcn/mucang/android/jiakaoyi/k3collect/databinding/ActivityMultilanceCollectBinding;->gpsLongitude:Landroid/widget/TextView;

    .line 13
    iput-object p12, p0, Lcn/mucang/android/jiakaoyi/k3collect/databinding/ActivityMultilanceCollectBinding;->gpsLongitudeValue:Landroid/widget/TextView;

    .line 14
    iput-object p13, p0, Lcn/mucang/android/jiakaoyi/k3collect/databinding/ActivityMultilanceCollectBinding;->gpsStatus:Landroid/widget/TextView;

    .line 15
    iput-object p14, p0, Lcn/mucang/android/jiakaoyi/k3collect/databinding/ActivityMultilanceCollectBinding;->gpsStatusValue:Landroid/widget/TextView;

    return-void
.end method

.method public static bind(Landroid/view/View;)Lcn/mucang/android/jiakaoyi/k3collect/databinding/ActivityMultilanceCollectBinding;
    .locals 18

    move-object/from16 v0, p0

    .line 1
    sget v1, Lcn/mucang/android/jiakaoyi/k3collect/R$id;->containerMulti:I

    .line 2
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    move-object v5, v2

    check-cast v5, Landroid/widget/FrameLayout;

    if-eqz v5, :cond_0

    .line 3
    sget v1, Lcn/mucang/android/jiakaoyi/k3collect/R$id;->gps_baseX:I

    .line 4
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    move-object v6, v2

    check-cast v6, Landroid/widget/TextView;

    if-eqz v6, :cond_0

    .line 5
    sget v1, Lcn/mucang/android/jiakaoyi/k3collect/R$id;->gps_baseX_value:I

    .line 6
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    move-object v7, v2

    check-cast v7, Landroid/widget/TextView;

    if-eqz v7, :cond_0

    .line 7
    sget v1, Lcn/mucang/android/jiakaoyi/k3collect/R$id;->gps_baseY:I

    .line 8
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    move-object v8, v2

    check-cast v8, Landroid/widget/TextView;

    if-eqz v8, :cond_0

    .line 9
    sget v1, Lcn/mucang/android/jiakaoyi/k3collect/R$id;->gps_baseY_value:I

    .line 10
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    move-object v9, v2

    check-cast v9, Landroid/widget/TextView;

    if-eqz v9, :cond_0

    .line 11
    sget v1, Lcn/mucang/android/jiakaoyi/k3collect/R$id;->gps_info:I

    .line 12
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    move-object v10, v2

    check-cast v10, Landroid/widget/TextView;

    if-eqz v10, :cond_0

    .line 13
    sget v1, Lcn/mucang/android/jiakaoyi/k3collect/R$id;->gps_info_value:I

    .line 14
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    move-object v11, v2

    check-cast v11, Landroid/widget/TextView;

    if-eqz v11, :cond_0

    .line 15
    sget v1, Lcn/mucang/android/jiakaoyi/k3collect/R$id;->gps_latitude:I

    .line 16
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    move-object v12, v2

    check-cast v12, Landroid/widget/TextView;

    if-eqz v12, :cond_0

    .line 17
    sget v1, Lcn/mucang/android/jiakaoyi/k3collect/R$id;->gps_latitude_value:I

    .line 18
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    move-object v13, v2

    check-cast v13, Landroid/widget/TextView;

    if-eqz v13, :cond_0

    .line 19
    sget v1, Lcn/mucang/android/jiakaoyi/k3collect/R$id;->gps_longitude:I

    .line 20
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    move-object v14, v2

    check-cast v14, Landroid/widget/TextView;

    if-eqz v14, :cond_0

    .line 21
    sget v1, Lcn/mucang/android/jiakaoyi/k3collect/R$id;->gps_longitude_value:I

    .line 22
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    move-object v15, v2

    check-cast v15, Landroid/widget/TextView;

    if-eqz v15, :cond_0

    .line 23
    sget v1, Lcn/mucang/android/jiakaoyi/k3collect/R$id;->gps_status:I

    .line 24
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    move-object/from16 v16, v2

    check-cast v16, Landroid/widget/TextView;

    if-eqz v16, :cond_0

    .line 25
    sget v1, Lcn/mucang/android/jiakaoyi/k3collect/R$id;->gps_status_value:I

    .line 26
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    move-object/from16 v17, v2

    check-cast v17, Landroid/widget/TextView;

    if-eqz v17, :cond_0

    .line 27
    new-instance v1, Lcn/mucang/android/jiakaoyi/k3collect/databinding/ActivityMultilanceCollectBinding;

    move-object v4, v0

    check-cast v4, Landroidx/constraintlayout/widget/ConstraintLayout;

    move-object v3, v1

    invoke-direct/range {v3 .. v17}, Lcn/mucang/android/jiakaoyi/k3collect/databinding/ActivityMultilanceCollectBinding;-><init>(Landroidx/constraintlayout/widget/ConstraintLayout;Landroid/widget/FrameLayout;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;)V

    return-object v1

    .line 28
    :cond_0
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getResourceName(I)Ljava/lang/String;

    move-result-object v0

    .line 29
    new-instance v1, Ljava/lang/NullPointerException;

    const-string v2, "Missing required view with ID: "

    invoke-virtual {v2, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public static inflate(Landroid/view/LayoutInflater;)Lcn/mucang/android/jiakaoyi/k3collect/databinding/ActivityMultilanceCollectBinding;
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 1
    invoke-static {p0, v0, v1}, Lcn/mucang/android/jiakaoyi/k3collect/databinding/ActivityMultilanceCollectBinding;->inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lcn/mucang/android/jiakaoyi/k3collect/databinding/ActivityMultilanceCollectBinding;

    move-result-object p0

    return-object p0
.end method

.method public static inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lcn/mucang/android/jiakaoyi/k3collect/databinding/ActivityMultilanceCollectBinding;
    .locals 2

    .line 2
    sget v0, Lcn/mucang/android/jiakaoyi/k3collect/R$layout;->activity_multilance_collect:I

    const/4 v1, 0x0

    invoke-virtual {p0, v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p0

    if-eqz p2, :cond_0

    .line 3
    invoke-virtual {p1, p0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 4
    :cond_0
    invoke-static {p0}, Lcn/mucang/android/jiakaoyi/k3collect/databinding/ActivityMultilanceCollectBinding;->bind(Landroid/view/View;)Lcn/mucang/android/jiakaoyi/k3collect/databinding/ActivityMultilanceCollectBinding;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public bridge synthetic getRoot()Landroid/view/View;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcn/mucang/android/jiakaoyi/k3collect/databinding/ActivityMultilanceCollectBinding;->getRoot()Landroidx/constraintlayout/widget/ConstraintLayout;

    move-result-object v0

    return-object v0
.end method

.method public getRoot()Landroidx/constraintlayout/widget/ConstraintLayout;
    .locals 1

    .line 2
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/k3collect/databinding/ActivityMultilanceCollectBinding;->rootView:Landroidx/constraintlayout/widget/ConstraintLayout;

    return-object v0
.end method
