.class public final Lcn/mucang/android/jiakaoyi/teachbase/databinding/LayoutRadarSignalSmallBinding;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/viewbinding/a;


# instance fields
.field public final backRadar:Lcn/mucang/android/jiakaoyi/teachingk2/safe/ui/signal/RadarSignalView;

.field public final car:Landroid/widget/ImageView;

.field public final frontRadar:Lcn/mucang/android/jiakaoyi/teachingk2/safe/ui/signal/RadarSignalView;

.field private final rootView:Landroidx/constraintlayout/widget/ConstraintLayout;


# direct methods
.method private constructor <init>(Landroidx/constraintlayout/widget/ConstraintLayout;Lcn/mucang/android/jiakaoyi/teachingk2/safe/ui/signal/RadarSignalView;Landroid/widget/ImageView;Lcn/mucang/android/jiakaoyi/teachingk2/safe/ui/signal/RadarSignalView;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcn/mucang/android/jiakaoyi/teachbase/databinding/LayoutRadarSignalSmallBinding;->rootView:Landroidx/constraintlayout/widget/ConstraintLayout;

    .line 3
    iput-object p2, p0, Lcn/mucang/android/jiakaoyi/teachbase/databinding/LayoutRadarSignalSmallBinding;->backRadar:Lcn/mucang/android/jiakaoyi/teachingk2/safe/ui/signal/RadarSignalView;

    .line 4
    iput-object p3, p0, Lcn/mucang/android/jiakaoyi/teachbase/databinding/LayoutRadarSignalSmallBinding;->car:Landroid/widget/ImageView;

    .line 5
    iput-object p4, p0, Lcn/mucang/android/jiakaoyi/teachbase/databinding/LayoutRadarSignalSmallBinding;->frontRadar:Lcn/mucang/android/jiakaoyi/teachingk2/safe/ui/signal/RadarSignalView;

    return-void
.end method

.method public static bind(Landroid/view/View;)Lcn/mucang/android/jiakaoyi/teachbase/databinding/LayoutRadarSignalSmallBinding;
    .locals 4

    .line 1
    sget v0, Lcn/mucang/android/jiakaoyi/teachbase/R$id;->backRadar:I

    .line 2
    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcn/mucang/android/jiakaoyi/teachingk2/safe/ui/signal/RadarSignalView;

    if-eqz v1, :cond_0

    .line 3
    sget v0, Lcn/mucang/android/jiakaoyi/teachbase/R$id;->car:I

    .line 4
    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    if-eqz v2, :cond_0

    .line 5
    sget v0, Lcn/mucang/android/jiakaoyi/teachbase/R$id;->frontRadar:I

    .line 6
    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcn/mucang/android/jiakaoyi/teachingk2/safe/ui/signal/RadarSignalView;

    if-eqz v3, :cond_0

    .line 7
    new-instance v0, Lcn/mucang/android/jiakaoyi/teachbase/databinding/LayoutRadarSignalSmallBinding;

    check-cast p0, Landroidx/constraintlayout/widget/ConstraintLayout;

    invoke-direct {v0, p0, v1, v2, v3}, Lcn/mucang/android/jiakaoyi/teachbase/databinding/LayoutRadarSignalSmallBinding;-><init>(Landroidx/constraintlayout/widget/ConstraintLayout;Lcn/mucang/android/jiakaoyi/teachingk2/safe/ui/signal/RadarSignalView;Landroid/widget/ImageView;Lcn/mucang/android/jiakaoyi/teachingk2/safe/ui/signal/RadarSignalView;)V

    return-object v0

    .line 8
    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getResourceName(I)Ljava/lang/String;

    move-result-object p0

    .line 9
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Missing required view with ID: "

    invoke-virtual {v1, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static inflate(Landroid/view/LayoutInflater;)Lcn/mucang/android/jiakaoyi/teachbase/databinding/LayoutRadarSignalSmallBinding;
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 1
    invoke-static {p0, v0, v1}, Lcn/mucang/android/jiakaoyi/teachbase/databinding/LayoutRadarSignalSmallBinding;->inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lcn/mucang/android/jiakaoyi/teachbase/databinding/LayoutRadarSignalSmallBinding;

    move-result-object p0

    return-object p0
.end method

.method public static inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lcn/mucang/android/jiakaoyi/teachbase/databinding/LayoutRadarSignalSmallBinding;
    .locals 2

    .line 2
    sget v0, Lcn/mucang/android/jiakaoyi/teachbase/R$layout;->layout_radar_signal_small:I

    const/4 v1, 0x0

    invoke-virtual {p0, v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p0

    if-eqz p2, :cond_0

    .line 3
    invoke-virtual {p1, p0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 4
    :cond_0
    invoke-static {p0}, Lcn/mucang/android/jiakaoyi/teachbase/databinding/LayoutRadarSignalSmallBinding;->bind(Landroid/view/View;)Lcn/mucang/android/jiakaoyi/teachbase/databinding/LayoutRadarSignalSmallBinding;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public bridge synthetic getRoot()Landroid/view/View;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcn/mucang/android/jiakaoyi/teachbase/databinding/LayoutRadarSignalSmallBinding;->getRoot()Landroidx/constraintlayout/widget/ConstraintLayout;

    move-result-object v0

    return-object v0
.end method

.method public getRoot()Landroidx/constraintlayout/widget/ConstraintLayout;
    .locals 1

    .line 2
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/teachbase/databinding/LayoutRadarSignalSmallBinding;->rootView:Landroidx/constraintlayout/widget/ConstraintLayout;

    return-object v0
.end method
