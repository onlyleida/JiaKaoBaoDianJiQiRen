.class public final Lcn/mucang/android/jiakaoyi/teachbase/databinding/DialogRadarSignalBinding;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/viewbinding/a;


# instance fields
.field public final bgView:Landroidx/constraintlayout/widget/ConstraintLayout;

.field public final closeIv:Landroid/widget/ImageView;

.field public final guide:Landroidx/constraintlayout/widget/Guideline;

.field public final ivArrow:Landroid/widget/ImageView;

.field public final ivBall:Landroidx/constraintlayout/widget/ConstraintLayout;

.field public final radarContainer:Lcn/mucang/android/jiakaoyi/teachbase/databinding/LayoutRadarSignalSmallBinding;

.field private final rootView:Lcn/mucang/android/jiakaoyi/framework/base/view/ScrollableView;

.field public final scrollableView:Lcn/mucang/android/jiakaoyi/framework/base/view/ScrollableView;

.field public final textView:Landroid/widget/TextView;

.field public final tvDistance:Landroid/widget/TextView;


# direct methods
.method private constructor <init>(Lcn/mucang/android/jiakaoyi/framework/base/view/ScrollableView;Landroidx/constraintlayout/widget/ConstraintLayout;Landroid/widget/ImageView;Landroidx/constraintlayout/widget/Guideline;Landroid/widget/ImageView;Landroidx/constraintlayout/widget/ConstraintLayout;Lcn/mucang/android/jiakaoyi/teachbase/databinding/LayoutRadarSignalSmallBinding;Lcn/mucang/android/jiakaoyi/framework/base/view/ScrollableView;Landroid/widget/TextView;Landroid/widget/TextView;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcn/mucang/android/jiakaoyi/teachbase/databinding/DialogRadarSignalBinding;->rootView:Lcn/mucang/android/jiakaoyi/framework/base/view/ScrollableView;

    .line 3
    iput-object p2, p0, Lcn/mucang/android/jiakaoyi/teachbase/databinding/DialogRadarSignalBinding;->bgView:Landroidx/constraintlayout/widget/ConstraintLayout;

    .line 4
    iput-object p3, p0, Lcn/mucang/android/jiakaoyi/teachbase/databinding/DialogRadarSignalBinding;->closeIv:Landroid/widget/ImageView;

    .line 5
    iput-object p4, p0, Lcn/mucang/android/jiakaoyi/teachbase/databinding/DialogRadarSignalBinding;->guide:Landroidx/constraintlayout/widget/Guideline;

    .line 6
    iput-object p5, p0, Lcn/mucang/android/jiakaoyi/teachbase/databinding/DialogRadarSignalBinding;->ivArrow:Landroid/widget/ImageView;

    .line 7
    iput-object p6, p0, Lcn/mucang/android/jiakaoyi/teachbase/databinding/DialogRadarSignalBinding;->ivBall:Landroidx/constraintlayout/widget/ConstraintLayout;

    .line 8
    iput-object p7, p0, Lcn/mucang/android/jiakaoyi/teachbase/databinding/DialogRadarSignalBinding;->radarContainer:Lcn/mucang/android/jiakaoyi/teachbase/databinding/LayoutRadarSignalSmallBinding;

    .line 9
    iput-object p8, p0, Lcn/mucang/android/jiakaoyi/teachbase/databinding/DialogRadarSignalBinding;->scrollableView:Lcn/mucang/android/jiakaoyi/framework/base/view/ScrollableView;

    .line 10
    iput-object p9, p0, Lcn/mucang/android/jiakaoyi/teachbase/databinding/DialogRadarSignalBinding;->textView:Landroid/widget/TextView;

    .line 11
    iput-object p10, p0, Lcn/mucang/android/jiakaoyi/teachbase/databinding/DialogRadarSignalBinding;->tvDistance:Landroid/widget/TextView;

    return-void
.end method

.method public static bind(Landroid/view/View;)Lcn/mucang/android/jiakaoyi/teachbase/databinding/DialogRadarSignalBinding;
    .locals 13

    .line 1
    sget v0, Lcn/mucang/android/jiakaoyi/teachbase/R$id;->bgView:I

    .line 2
    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    move-object v4, v1

    check-cast v4, Landroidx/constraintlayout/widget/ConstraintLayout;

    if-eqz v4, :cond_0

    .line 3
    sget v0, Lcn/mucang/android/jiakaoyi/teachbase/R$id;->closeIv:I

    .line 4
    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    move-object v5, v1

    check-cast v5, Landroid/widget/ImageView;

    if-eqz v5, :cond_0

    .line 5
    sget v0, Lcn/mucang/android/jiakaoyi/teachbase/R$id;->guide:I

    .line 6
    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    move-object v6, v1

    check-cast v6, Landroidx/constraintlayout/widget/Guideline;

    if-eqz v6, :cond_0

    .line 7
    sget v0, Lcn/mucang/android/jiakaoyi/teachbase/R$id;->ivArrow:I

    .line 8
    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    move-object v7, v1

    check-cast v7, Landroid/widget/ImageView;

    if-eqz v7, :cond_0

    .line 9
    sget v0, Lcn/mucang/android/jiakaoyi/teachbase/R$id;->ivBall:I

    .line 10
    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    move-object v8, v1

    check-cast v8, Landroidx/constraintlayout/widget/ConstraintLayout;

    if-eqz v8, :cond_0

    .line 11
    sget v0, Lcn/mucang/android/jiakaoyi/teachbase/R$id;->radarContainer:I

    .line 12
    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 13
    invoke-static {v1}, Lcn/mucang/android/jiakaoyi/teachbase/databinding/LayoutRadarSignalSmallBinding;->bind(Landroid/view/View;)Lcn/mucang/android/jiakaoyi/teachbase/databinding/LayoutRadarSignalSmallBinding;

    move-result-object v9

    .line 14
    move-object v10, p0

    check-cast v10, Lcn/mucang/android/jiakaoyi/framework/base/view/ScrollableView;

    .line 15
    sget v0, Lcn/mucang/android/jiakaoyi/teachbase/R$id;->textView:I

    .line 16
    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    move-object v11, v1

    check-cast v11, Landroid/widget/TextView;

    if-eqz v11, :cond_0

    .line 17
    sget v0, Lcn/mucang/android/jiakaoyi/teachbase/R$id;->tvDistance:I

    .line 18
    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    move-object v12, v1

    check-cast v12, Landroid/widget/TextView;

    if-eqz v12, :cond_0

    .line 19
    new-instance p0, Lcn/mucang/android/jiakaoyi/teachbase/databinding/DialogRadarSignalBinding;

    move-object v2, p0

    move-object v3, v10

    invoke-direct/range {v2 .. v12}, Lcn/mucang/android/jiakaoyi/teachbase/databinding/DialogRadarSignalBinding;-><init>(Lcn/mucang/android/jiakaoyi/framework/base/view/ScrollableView;Landroidx/constraintlayout/widget/ConstraintLayout;Landroid/widget/ImageView;Landroidx/constraintlayout/widget/Guideline;Landroid/widget/ImageView;Landroidx/constraintlayout/widget/ConstraintLayout;Lcn/mucang/android/jiakaoyi/teachbase/databinding/LayoutRadarSignalSmallBinding;Lcn/mucang/android/jiakaoyi/framework/base/view/ScrollableView;Landroid/widget/TextView;Landroid/widget/TextView;)V

    return-object p0

    .line 20
    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getResourceName(I)Ljava/lang/String;

    move-result-object p0

    .line 21
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Missing required view with ID: "

    invoke-virtual {v1, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static inflate(Landroid/view/LayoutInflater;)Lcn/mucang/android/jiakaoyi/teachbase/databinding/DialogRadarSignalBinding;
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 1
    invoke-static {p0, v0, v1}, Lcn/mucang/android/jiakaoyi/teachbase/databinding/DialogRadarSignalBinding;->inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lcn/mucang/android/jiakaoyi/teachbase/databinding/DialogRadarSignalBinding;

    move-result-object p0

    return-object p0
.end method

.method public static inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lcn/mucang/android/jiakaoyi/teachbase/databinding/DialogRadarSignalBinding;
    .locals 2

    .line 2
    sget v0, Lcn/mucang/android/jiakaoyi/teachbase/R$layout;->dialog_radar_signal:I

    const/4 v1, 0x0

    invoke-virtual {p0, v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p0

    if-eqz p2, :cond_0

    .line 3
    invoke-virtual {p1, p0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 4
    :cond_0
    invoke-static {p0}, Lcn/mucang/android/jiakaoyi/teachbase/databinding/DialogRadarSignalBinding;->bind(Landroid/view/View;)Lcn/mucang/android/jiakaoyi/teachbase/databinding/DialogRadarSignalBinding;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public bridge synthetic getRoot()Landroid/view/View;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcn/mucang/android/jiakaoyi/teachbase/databinding/DialogRadarSignalBinding;->getRoot()Lcn/mucang/android/jiakaoyi/framework/base/view/ScrollableView;

    move-result-object v0

    return-object v0
.end method

.method public getRoot()Lcn/mucang/android/jiakaoyi/framework/base/view/ScrollableView;
    .locals 1

    .line 2
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/teachbase/databinding/DialogRadarSignalBinding;->rootView:Lcn/mucang/android/jiakaoyi/framework/base/view/ScrollableView;

    return-object v0
.end method
