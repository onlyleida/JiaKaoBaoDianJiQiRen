.class public final Lcn/mucang/android/jiakaoyi/teachbase/databinding/ActivityCalibartionBinding;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/viewbinding/a;


# instance fields
.field public final assistLayout:Lcn/mucang/android/jiakaoyi/teachbase/databinding/AutoAssistCalibartionBinding;

.field public final brakeTravel:Landroid/widget/TextView;

.field public final clutchTravel:Landroid/widget/TextView;

.field public final dataRv:Landroidx/recyclerview/widget/RecyclerView;

.field public final halfClutchLayout:Lcn/mucang/android/jiakaoyi/teachbase/databinding/HalfClutchCalibartionBinding;

.field public final menuRv:Landroidx/recyclerview/widget/RecyclerView;

.field public final motorLayout:Lcn/mucang/android/jiakaoyi/teachbase/databinding/MotorCalibartionBinding;

.field private final rootView:Landroidx/constraintlayout/widget/ConstraintLayout;

.field public final rpmTv:Landroid/widget/TextView;

.field public final speedTv:Landroid/widget/TextView;

.field public final throttleTravel:Landroid/widget/TextView;

.field public final title:Lcn/mucang/android/jiakaoyi/teachingk2/lib/databinding/TeachingTitleBinding;

.field public final wheelDegree:Landroid/widget/TextView;


# direct methods
.method private constructor <init>(Landroidx/constraintlayout/widget/ConstraintLayout;Lcn/mucang/android/jiakaoyi/teachbase/databinding/AutoAssistCalibartionBinding;Landroid/widget/TextView;Landroid/widget/TextView;Landroidx/recyclerview/widget/RecyclerView;Lcn/mucang/android/jiakaoyi/teachbase/databinding/HalfClutchCalibartionBinding;Landroidx/recyclerview/widget/RecyclerView;Lcn/mucang/android/jiakaoyi/teachbase/databinding/MotorCalibartionBinding;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;Lcn/mucang/android/jiakaoyi/teachingk2/lib/databinding/TeachingTitleBinding;Landroid/widget/TextView;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcn/mucang/android/jiakaoyi/teachbase/databinding/ActivityCalibartionBinding;->rootView:Landroidx/constraintlayout/widget/ConstraintLayout;

    .line 3
    iput-object p2, p0, Lcn/mucang/android/jiakaoyi/teachbase/databinding/ActivityCalibartionBinding;->assistLayout:Lcn/mucang/android/jiakaoyi/teachbase/databinding/AutoAssistCalibartionBinding;

    .line 4
    iput-object p3, p0, Lcn/mucang/android/jiakaoyi/teachbase/databinding/ActivityCalibartionBinding;->brakeTravel:Landroid/widget/TextView;

    .line 5
    iput-object p4, p0, Lcn/mucang/android/jiakaoyi/teachbase/databinding/ActivityCalibartionBinding;->clutchTravel:Landroid/widget/TextView;

    .line 6
    iput-object p5, p0, Lcn/mucang/android/jiakaoyi/teachbase/databinding/ActivityCalibartionBinding;->dataRv:Landroidx/recyclerview/widget/RecyclerView;

    .line 7
    iput-object p6, p0, Lcn/mucang/android/jiakaoyi/teachbase/databinding/ActivityCalibartionBinding;->halfClutchLayout:Lcn/mucang/android/jiakaoyi/teachbase/databinding/HalfClutchCalibartionBinding;

    .line 8
    iput-object p7, p0, Lcn/mucang/android/jiakaoyi/teachbase/databinding/ActivityCalibartionBinding;->menuRv:Landroidx/recyclerview/widget/RecyclerView;

    .line 9
    iput-object p8, p0, Lcn/mucang/android/jiakaoyi/teachbase/databinding/ActivityCalibartionBinding;->motorLayout:Lcn/mucang/android/jiakaoyi/teachbase/databinding/MotorCalibartionBinding;

    .line 10
    iput-object p9, p0, Lcn/mucang/android/jiakaoyi/teachbase/databinding/ActivityCalibartionBinding;->rpmTv:Landroid/widget/TextView;

    .line 11
    iput-object p10, p0, Lcn/mucang/android/jiakaoyi/teachbase/databinding/ActivityCalibartionBinding;->speedTv:Landroid/widget/TextView;

    .line 12
    iput-object p11, p0, Lcn/mucang/android/jiakaoyi/teachbase/databinding/ActivityCalibartionBinding;->throttleTravel:Landroid/widget/TextView;

    .line 13
    iput-object p12, p0, Lcn/mucang/android/jiakaoyi/teachbase/databinding/ActivityCalibartionBinding;->title:Lcn/mucang/android/jiakaoyi/teachingk2/lib/databinding/TeachingTitleBinding;

    .line 14
    iput-object p13, p0, Lcn/mucang/android/jiakaoyi/teachbase/databinding/ActivityCalibartionBinding;->wheelDegree:Landroid/widget/TextView;

    return-void
.end method

.method public static bind(Landroid/view/View;)Lcn/mucang/android/jiakaoyi/teachbase/databinding/ActivityCalibartionBinding;
    .locals 17

    move-object/from16 v0, p0

    .line 1
    sget v1, Lcn/mucang/android/jiakaoyi/teachbase/R$id;->assistLayout:I

    .line 2
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 3
    invoke-static {v2}, Lcn/mucang/android/jiakaoyi/teachbase/databinding/AutoAssistCalibartionBinding;->bind(Landroid/view/View;)Lcn/mucang/android/jiakaoyi/teachbase/databinding/AutoAssistCalibartionBinding;

    move-result-object v5

    .line 4
    sget v1, Lcn/mucang/android/jiakaoyi/teachbase/R$id;->brakeTravel:I

    .line 5
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    move-object v6, v2

    check-cast v6, Landroid/widget/TextView;

    if-eqz v6, :cond_0

    .line 6
    sget v1, Lcn/mucang/android/jiakaoyi/teachbase/R$id;->clutchTravel:I

    .line 7
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    move-object v7, v2

    check-cast v7, Landroid/widget/TextView;

    if-eqz v7, :cond_0

    .line 8
    sget v1, Lcn/mucang/android/jiakaoyi/teachbase/R$id;->dataRv:I

    .line 9
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    move-object v8, v2

    check-cast v8, Landroidx/recyclerview/widget/RecyclerView;

    if-eqz v8, :cond_0

    .line 10
    sget v1, Lcn/mucang/android/jiakaoyi/teachbase/R$id;->halfClutchLayout:I

    .line 11
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 12
    invoke-static {v2}, Lcn/mucang/android/jiakaoyi/teachbase/databinding/HalfClutchCalibartionBinding;->bind(Landroid/view/View;)Lcn/mucang/android/jiakaoyi/teachbase/databinding/HalfClutchCalibartionBinding;

    move-result-object v9

    .line 13
    sget v1, Lcn/mucang/android/jiakaoyi/teachbase/R$id;->menuRv:I

    .line 14
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    move-object v10, v2

    check-cast v10, Landroidx/recyclerview/widget/RecyclerView;

    if-eqz v10, :cond_0

    .line 15
    sget v1, Lcn/mucang/android/jiakaoyi/teachbase/R$id;->motorLayout:I

    .line 16
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 17
    invoke-static {v2}, Lcn/mucang/android/jiakaoyi/teachbase/databinding/MotorCalibartionBinding;->bind(Landroid/view/View;)Lcn/mucang/android/jiakaoyi/teachbase/databinding/MotorCalibartionBinding;

    move-result-object v11

    .line 18
    sget v1, Lcn/mucang/android/jiakaoyi/teachbase/R$id;->rpmTv:I

    .line 19
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    move-object v12, v2

    check-cast v12, Landroid/widget/TextView;

    if-eqz v12, :cond_0

    .line 20
    sget v1, Lcn/mucang/android/jiakaoyi/teachbase/R$id;->speedTv:I

    .line 21
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    move-object v13, v2

    check-cast v13, Landroid/widget/TextView;

    if-eqz v13, :cond_0

    .line 22
    sget v1, Lcn/mucang/android/jiakaoyi/teachbase/R$id;->throttleTravel:I

    .line 23
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    move-object v14, v2

    check-cast v14, Landroid/widget/TextView;

    if-eqz v14, :cond_0

    .line 24
    sget v1, Lcn/mucang/android/jiakaoyi/teachbase/R$id;->title:I

    .line 25
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 26
    invoke-static {v2}, Lcn/mucang/android/jiakaoyi/teachingk2/lib/databinding/TeachingTitleBinding;->bind(Landroid/view/View;)Lcn/mucang/android/jiakaoyi/teachingk2/lib/databinding/TeachingTitleBinding;

    move-result-object v15

    .line 27
    sget v1, Lcn/mucang/android/jiakaoyi/teachbase/R$id;->wheelDegree:I

    .line 28
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    move-object/from16 v16, v2

    check-cast v16, Landroid/widget/TextView;

    if-eqz v16, :cond_0

    .line 29
    new-instance v1, Lcn/mucang/android/jiakaoyi/teachbase/databinding/ActivityCalibartionBinding;

    move-object v4, v0

    check-cast v4, Landroidx/constraintlayout/widget/ConstraintLayout;

    move-object v3, v1

    invoke-direct/range {v3 .. v16}, Lcn/mucang/android/jiakaoyi/teachbase/databinding/ActivityCalibartionBinding;-><init>(Landroidx/constraintlayout/widget/ConstraintLayout;Lcn/mucang/android/jiakaoyi/teachbase/databinding/AutoAssistCalibartionBinding;Landroid/widget/TextView;Landroid/widget/TextView;Landroidx/recyclerview/widget/RecyclerView;Lcn/mucang/android/jiakaoyi/teachbase/databinding/HalfClutchCalibartionBinding;Landroidx/recyclerview/widget/RecyclerView;Lcn/mucang/android/jiakaoyi/teachbase/databinding/MotorCalibartionBinding;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;Lcn/mucang/android/jiakaoyi/teachingk2/lib/databinding/TeachingTitleBinding;Landroid/widget/TextView;)V

    return-object v1

    .line 30
    :cond_0
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getResourceName(I)Ljava/lang/String;

    move-result-object v0

    .line 31
    new-instance v1, Ljava/lang/NullPointerException;

    const-string v2, "Missing required view with ID: "

    invoke-virtual {v2, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public static inflate(Landroid/view/LayoutInflater;)Lcn/mucang/android/jiakaoyi/teachbase/databinding/ActivityCalibartionBinding;
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 1
    invoke-static {p0, v0, v1}, Lcn/mucang/android/jiakaoyi/teachbase/databinding/ActivityCalibartionBinding;->inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lcn/mucang/android/jiakaoyi/teachbase/databinding/ActivityCalibartionBinding;

    move-result-object p0

    return-object p0
.end method

.method public static inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lcn/mucang/android/jiakaoyi/teachbase/databinding/ActivityCalibartionBinding;
    .locals 2

    .line 2
    sget v0, Lcn/mucang/android/jiakaoyi/teachbase/R$layout;->activity_calibartion:I

    const/4 v1, 0x0

    invoke-virtual {p0, v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p0

    if-eqz p2, :cond_0

    .line 3
    invoke-virtual {p1, p0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 4
    :cond_0
    invoke-static {p0}, Lcn/mucang/android/jiakaoyi/teachbase/databinding/ActivityCalibartionBinding;->bind(Landroid/view/View;)Lcn/mucang/android/jiakaoyi/teachbase/databinding/ActivityCalibartionBinding;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public bridge synthetic getRoot()Landroid/view/View;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcn/mucang/android/jiakaoyi/teachbase/databinding/ActivityCalibartionBinding;->getRoot()Landroidx/constraintlayout/widget/ConstraintLayout;

    move-result-object v0

    return-object v0
.end method

.method public getRoot()Landroidx/constraintlayout/widget/ConstraintLayout;
    .locals 1

    .line 2
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/teachbase/databinding/ActivityCalibartionBinding;->rootView:Landroidx/constraintlayout/widget/ConstraintLayout;

    return-object v0
.end method
