.class public final Lcom/mucang/android/jiakaoyi/uilib/databinding/GearsIncludeGearsSketchZoneBinding;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/viewbinding/a;


# instance fields
.field public final gearsItemTip:Landroid/widget/TextView;

.field public final gearsSketch:Lcn/mucang/jiakaoyi/uilib/ui/setting/gear/celibration/view/GearSketchViewGroup;

.field private final rootView:Landroidx/constraintlayout/widget/ConstraintLayout;

.field public final switchGearsCategory:Landroid/widget/TextView;


# direct methods
.method private constructor <init>(Landroidx/constraintlayout/widget/ConstraintLayout;Landroid/widget/TextView;Lcn/mucang/jiakaoyi/uilib/ui/setting/gear/celibration/view/GearSketchViewGroup;Landroid/widget/TextView;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/mucang/android/jiakaoyi/uilib/databinding/GearsIncludeGearsSketchZoneBinding;->rootView:Landroidx/constraintlayout/widget/ConstraintLayout;

    .line 3
    iput-object p2, p0, Lcom/mucang/android/jiakaoyi/uilib/databinding/GearsIncludeGearsSketchZoneBinding;->gearsItemTip:Landroid/widget/TextView;

    .line 4
    iput-object p3, p0, Lcom/mucang/android/jiakaoyi/uilib/databinding/GearsIncludeGearsSketchZoneBinding;->gearsSketch:Lcn/mucang/jiakaoyi/uilib/ui/setting/gear/celibration/view/GearSketchViewGroup;

    .line 5
    iput-object p4, p0, Lcom/mucang/android/jiakaoyi/uilib/databinding/GearsIncludeGearsSketchZoneBinding;->switchGearsCategory:Landroid/widget/TextView;

    return-void
.end method

.method public static bind(Landroid/view/View;)Lcom/mucang/android/jiakaoyi/uilib/databinding/GearsIncludeGearsSketchZoneBinding;
    .locals 4

    .line 1
    sget v0, Lcom/mucang/android/jiakaoyi/uilib/R$id;->gears_item_tip:I

    .line 2
    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    if-eqz v1, :cond_0

    .line 3
    sget v0, Lcom/mucang/android/jiakaoyi/uilib/R$id;->gears_sketch:I

    .line 4
    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcn/mucang/jiakaoyi/uilib/ui/setting/gear/celibration/view/GearSketchViewGroup;

    if-eqz v2, :cond_0

    .line 5
    sget v0, Lcom/mucang/android/jiakaoyi/uilib/R$id;->switch_gears_category:I

    .line 6
    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    if-eqz v3, :cond_0

    .line 7
    new-instance v0, Lcom/mucang/android/jiakaoyi/uilib/databinding/GearsIncludeGearsSketchZoneBinding;

    check-cast p0, Landroidx/constraintlayout/widget/ConstraintLayout;

    invoke-direct {v0, p0, v1, v2, v3}, Lcom/mucang/android/jiakaoyi/uilib/databinding/GearsIncludeGearsSketchZoneBinding;-><init>(Landroidx/constraintlayout/widget/ConstraintLayout;Landroid/widget/TextView;Lcn/mucang/jiakaoyi/uilib/ui/setting/gear/celibration/view/GearSketchViewGroup;Landroid/widget/TextView;)V

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

.method public static inflate(Landroid/view/LayoutInflater;)Lcom/mucang/android/jiakaoyi/uilib/databinding/GearsIncludeGearsSketchZoneBinding;
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 1
    invoke-static {p0, v0, v1}, Lcom/mucang/android/jiakaoyi/uilib/databinding/GearsIncludeGearsSketchZoneBinding;->inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lcom/mucang/android/jiakaoyi/uilib/databinding/GearsIncludeGearsSketchZoneBinding;

    move-result-object p0

    return-object p0
.end method

.method public static inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lcom/mucang/android/jiakaoyi/uilib/databinding/GearsIncludeGearsSketchZoneBinding;
    .locals 2

    .line 2
    sget v0, Lcom/mucang/android/jiakaoyi/uilib/R$layout;->gears__include__gears_sketch_zone:I

    const/4 v1, 0x0

    invoke-virtual {p0, v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p0

    if-eqz p2, :cond_0

    .line 3
    invoke-virtual {p1, p0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 4
    :cond_0
    invoke-static {p0}, Lcom/mucang/android/jiakaoyi/uilib/databinding/GearsIncludeGearsSketchZoneBinding;->bind(Landroid/view/View;)Lcom/mucang/android/jiakaoyi/uilib/databinding/GearsIncludeGearsSketchZoneBinding;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public bridge synthetic getRoot()Landroid/view/View;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/mucang/android/jiakaoyi/uilib/databinding/GearsIncludeGearsSketchZoneBinding;->getRoot()Landroidx/constraintlayout/widget/ConstraintLayout;

    move-result-object v0

    return-object v0
.end method

.method public getRoot()Landroidx/constraintlayout/widget/ConstraintLayout;
    .locals 1

    .line 2
    iget-object v0, p0, Lcom/mucang/android/jiakaoyi/uilib/databinding/GearsIncludeGearsSketchZoneBinding;->rootView:Landroidx/constraintlayout/widget/ConstraintLayout;

    return-object v0
.end method
