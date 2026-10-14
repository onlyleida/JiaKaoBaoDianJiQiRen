.class public final Lcom/mucang/android/jiakaoyi/uilib/databinding/ActivityGearCelibrationBinding;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/viewbinding/a;


# instance fields
.field public final activityMain:Landroidx/constraintlayout/widget/ConstraintLayout;

.field public final deviceInfo:Landroid/widget/TextView;

.field public final deviceInfoCoverBg:Landroid/view/View;

.field public final deviceInfoZone:Landroid/widget/LinearLayout;

.field public final gearsDataZone:Lcom/mucang/android/jiakaoyi/uilib/databinding/GearsIncludeGearsDataZoneBinding;

.field public final gearsGuideZone:Lcom/mucang/android/jiakaoyi/uilib/databinding/GearsIncludeGearsGuideZoneBinding;

.field public final gearsSketchZone:Lcom/mucang/android/jiakaoyi/uilib/databinding/GearsIncludeGearsSketchZoneBinding;

.field private final rootView:Landroidx/constraintlayout/widget/ConstraintLayout;

.field public final title:Lcom/mucang/android/jiakaoyi/uilib/databinding/CommonTitleBinding;


# direct methods
.method private constructor <init>(Landroidx/constraintlayout/widget/ConstraintLayout;Landroidx/constraintlayout/widget/ConstraintLayout;Landroid/widget/TextView;Landroid/view/View;Landroid/widget/LinearLayout;Lcom/mucang/android/jiakaoyi/uilib/databinding/GearsIncludeGearsDataZoneBinding;Lcom/mucang/android/jiakaoyi/uilib/databinding/GearsIncludeGearsGuideZoneBinding;Lcom/mucang/android/jiakaoyi/uilib/databinding/GearsIncludeGearsSketchZoneBinding;Lcom/mucang/android/jiakaoyi/uilib/databinding/CommonTitleBinding;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/mucang/android/jiakaoyi/uilib/databinding/ActivityGearCelibrationBinding;->rootView:Landroidx/constraintlayout/widget/ConstraintLayout;

    .line 3
    iput-object p2, p0, Lcom/mucang/android/jiakaoyi/uilib/databinding/ActivityGearCelibrationBinding;->activityMain:Landroidx/constraintlayout/widget/ConstraintLayout;

    .line 4
    iput-object p3, p0, Lcom/mucang/android/jiakaoyi/uilib/databinding/ActivityGearCelibrationBinding;->deviceInfo:Landroid/widget/TextView;

    .line 5
    iput-object p4, p0, Lcom/mucang/android/jiakaoyi/uilib/databinding/ActivityGearCelibrationBinding;->deviceInfoCoverBg:Landroid/view/View;

    .line 6
    iput-object p5, p0, Lcom/mucang/android/jiakaoyi/uilib/databinding/ActivityGearCelibrationBinding;->deviceInfoZone:Landroid/widget/LinearLayout;

    .line 7
    iput-object p6, p0, Lcom/mucang/android/jiakaoyi/uilib/databinding/ActivityGearCelibrationBinding;->gearsDataZone:Lcom/mucang/android/jiakaoyi/uilib/databinding/GearsIncludeGearsDataZoneBinding;

    .line 8
    iput-object p7, p0, Lcom/mucang/android/jiakaoyi/uilib/databinding/ActivityGearCelibrationBinding;->gearsGuideZone:Lcom/mucang/android/jiakaoyi/uilib/databinding/GearsIncludeGearsGuideZoneBinding;

    .line 9
    iput-object p8, p0, Lcom/mucang/android/jiakaoyi/uilib/databinding/ActivityGearCelibrationBinding;->gearsSketchZone:Lcom/mucang/android/jiakaoyi/uilib/databinding/GearsIncludeGearsSketchZoneBinding;

    .line 10
    iput-object p9, p0, Lcom/mucang/android/jiakaoyi/uilib/databinding/ActivityGearCelibrationBinding;->title:Lcom/mucang/android/jiakaoyi/uilib/databinding/CommonTitleBinding;

    return-void
.end method

.method public static bind(Landroid/view/View;)Lcom/mucang/android/jiakaoyi/uilib/databinding/ActivityGearCelibrationBinding;
    .locals 10

    .line 1
    move-object v2, p0

    check-cast v2, Landroidx/constraintlayout/widget/ConstraintLayout;

    .line 2
    sget v0, Lcom/mucang/android/jiakaoyi/uilib/R$id;->device_info:I

    .line 3
    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    move-object v3, v1

    check-cast v3, Landroid/widget/TextView;

    if-eqz v3, :cond_0

    .line 4
    sget v0, Lcom/mucang/android/jiakaoyi/uilib/R$id;->device_info_cover_bg:I

    .line 5
    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    if-eqz v4, :cond_0

    .line 6
    sget v0, Lcom/mucang/android/jiakaoyi/uilib/R$id;->device_info_zone:I

    .line 7
    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    move-object v5, v1

    check-cast v5, Landroid/widget/LinearLayout;

    if-eqz v5, :cond_0

    .line 8
    sget v0, Lcom/mucang/android/jiakaoyi/uilib/R$id;->gears_data_zone:I

    .line 9
    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 10
    invoke-static {v1}, Lcom/mucang/android/jiakaoyi/uilib/databinding/GearsIncludeGearsDataZoneBinding;->bind(Landroid/view/View;)Lcom/mucang/android/jiakaoyi/uilib/databinding/GearsIncludeGearsDataZoneBinding;

    move-result-object v6

    .line 11
    sget v0, Lcom/mucang/android/jiakaoyi/uilib/R$id;->gears_guide_zone:I

    .line 12
    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 13
    invoke-static {v1}, Lcom/mucang/android/jiakaoyi/uilib/databinding/GearsIncludeGearsGuideZoneBinding;->bind(Landroid/view/View;)Lcom/mucang/android/jiakaoyi/uilib/databinding/GearsIncludeGearsGuideZoneBinding;

    move-result-object v7

    .line 14
    sget v0, Lcom/mucang/android/jiakaoyi/uilib/R$id;->gears_sketch_zone:I

    .line 15
    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 16
    invoke-static {v1}, Lcom/mucang/android/jiakaoyi/uilib/databinding/GearsIncludeGearsSketchZoneBinding;->bind(Landroid/view/View;)Lcom/mucang/android/jiakaoyi/uilib/databinding/GearsIncludeGearsSketchZoneBinding;

    move-result-object v8

    .line 17
    sget v0, Lcom/mucang/android/jiakaoyi/uilib/R$id;->title:I

    .line 18
    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 19
    invoke-static {v1}, Lcom/mucang/android/jiakaoyi/uilib/databinding/CommonTitleBinding;->bind(Landroid/view/View;)Lcom/mucang/android/jiakaoyi/uilib/databinding/CommonTitleBinding;

    move-result-object v9

    .line 20
    new-instance p0, Lcom/mucang/android/jiakaoyi/uilib/databinding/ActivityGearCelibrationBinding;

    move-object v0, p0

    move-object v1, v2

    invoke-direct/range {v0 .. v9}, Lcom/mucang/android/jiakaoyi/uilib/databinding/ActivityGearCelibrationBinding;-><init>(Landroidx/constraintlayout/widget/ConstraintLayout;Landroidx/constraintlayout/widget/ConstraintLayout;Landroid/widget/TextView;Landroid/view/View;Landroid/widget/LinearLayout;Lcom/mucang/android/jiakaoyi/uilib/databinding/GearsIncludeGearsDataZoneBinding;Lcom/mucang/android/jiakaoyi/uilib/databinding/GearsIncludeGearsGuideZoneBinding;Lcom/mucang/android/jiakaoyi/uilib/databinding/GearsIncludeGearsSketchZoneBinding;Lcom/mucang/android/jiakaoyi/uilib/databinding/CommonTitleBinding;)V

    return-object p0

    .line 21
    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getResourceName(I)Ljava/lang/String;

    move-result-object p0

    .line 22
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Missing required view with ID: "

    invoke-virtual {v1, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static inflate(Landroid/view/LayoutInflater;)Lcom/mucang/android/jiakaoyi/uilib/databinding/ActivityGearCelibrationBinding;
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 1
    invoke-static {p0, v0, v1}, Lcom/mucang/android/jiakaoyi/uilib/databinding/ActivityGearCelibrationBinding;->inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lcom/mucang/android/jiakaoyi/uilib/databinding/ActivityGearCelibrationBinding;

    move-result-object p0

    return-object p0
.end method

.method public static inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lcom/mucang/android/jiakaoyi/uilib/databinding/ActivityGearCelibrationBinding;
    .locals 2

    .line 2
    sget v0, Lcom/mucang/android/jiakaoyi/uilib/R$layout;->activity_gear_celibration:I

    const/4 v1, 0x0

    invoke-virtual {p0, v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p0

    if-eqz p2, :cond_0

    .line 3
    invoke-virtual {p1, p0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 4
    :cond_0
    invoke-static {p0}, Lcom/mucang/android/jiakaoyi/uilib/databinding/ActivityGearCelibrationBinding;->bind(Landroid/view/View;)Lcom/mucang/android/jiakaoyi/uilib/databinding/ActivityGearCelibrationBinding;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public bridge synthetic getRoot()Landroid/view/View;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/mucang/android/jiakaoyi/uilib/databinding/ActivityGearCelibrationBinding;->getRoot()Landroidx/constraintlayout/widget/ConstraintLayout;

    move-result-object v0

    return-object v0
.end method

.method public getRoot()Landroidx/constraintlayout/widget/ConstraintLayout;
    .locals 1

    .line 2
    iget-object v0, p0, Lcom/mucang/android/jiakaoyi/uilib/databinding/ActivityGearCelibrationBinding;->rootView:Landroidx/constraintlayout/widget/ConstraintLayout;

    return-object v0
.end method
