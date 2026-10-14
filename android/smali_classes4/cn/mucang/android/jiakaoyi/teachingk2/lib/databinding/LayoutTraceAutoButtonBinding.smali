.class public final Lcn/mucang/android/jiakaoyi/teachingk2/lib/databinding/LayoutTraceAutoButtonBinding;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/viewbinding/a;


# instance fields
.field public final backTv:Landroid/widget/TextView;

.field public final cefangGroup:Landroidx/constraintlayout/widget/Group;

.field public final daokuGroup:Landroidx/constraintlayout/widget/Group;

.field public final distanceEt:Landroid/widget/EditText;

.field public final func1Tv:Landroid/widget/TextView;

.field public final func2Tv:Landroid/widget/TextView;

.field public final func3Tv:Landroid/widget/TextView;

.field public final func4Tv:Landroid/widget/RadioGroup;

.field public final func5Tv:Landroid/widget/LinearLayout;

.field public final func6Tv:Landroid/widget/TextView;

.field public final func7Tv:Landroid/widget/TextView;

.field public final notTurnCb:Landroid/widget/RadioButton;

.field public final resultTv:Landroid/widget/TextView;

.field private final rootView:Landroidx/constraintlayout/widget/ConstraintLayout;

.field public final turnCb:Landroid/widget/RadioButton;

.field public final zhijiaoGroup:Landroidx/constraintlayout/widget/Group;


# direct methods
.method private constructor <init>(Landroidx/constraintlayout/widget/ConstraintLayout;Landroid/widget/TextView;Landroidx/constraintlayout/widget/Group;Landroidx/constraintlayout/widget/Group;Landroid/widget/EditText;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/RadioGroup;Landroid/widget/LinearLayout;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/RadioButton;Landroid/widget/TextView;Landroid/widget/RadioButton;Landroidx/constraintlayout/widget/Group;)V
    .locals 2

    move-object v0, p0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    move-object v1, p1

    .line 2
    iput-object v1, v0, Lcn/mucang/android/jiakaoyi/teachingk2/lib/databinding/LayoutTraceAutoButtonBinding;->rootView:Landroidx/constraintlayout/widget/ConstraintLayout;

    move-object v1, p2

    .line 3
    iput-object v1, v0, Lcn/mucang/android/jiakaoyi/teachingk2/lib/databinding/LayoutTraceAutoButtonBinding;->backTv:Landroid/widget/TextView;

    move-object v1, p3

    .line 4
    iput-object v1, v0, Lcn/mucang/android/jiakaoyi/teachingk2/lib/databinding/LayoutTraceAutoButtonBinding;->cefangGroup:Landroidx/constraintlayout/widget/Group;

    move-object v1, p4

    .line 5
    iput-object v1, v0, Lcn/mucang/android/jiakaoyi/teachingk2/lib/databinding/LayoutTraceAutoButtonBinding;->daokuGroup:Landroidx/constraintlayout/widget/Group;

    move-object v1, p5

    .line 6
    iput-object v1, v0, Lcn/mucang/android/jiakaoyi/teachingk2/lib/databinding/LayoutTraceAutoButtonBinding;->distanceEt:Landroid/widget/EditText;

    move-object v1, p6

    .line 7
    iput-object v1, v0, Lcn/mucang/android/jiakaoyi/teachingk2/lib/databinding/LayoutTraceAutoButtonBinding;->func1Tv:Landroid/widget/TextView;

    move-object v1, p7

    .line 8
    iput-object v1, v0, Lcn/mucang/android/jiakaoyi/teachingk2/lib/databinding/LayoutTraceAutoButtonBinding;->func2Tv:Landroid/widget/TextView;

    move-object v1, p8

    .line 9
    iput-object v1, v0, Lcn/mucang/android/jiakaoyi/teachingk2/lib/databinding/LayoutTraceAutoButtonBinding;->func3Tv:Landroid/widget/TextView;

    move-object v1, p9

    .line 10
    iput-object v1, v0, Lcn/mucang/android/jiakaoyi/teachingk2/lib/databinding/LayoutTraceAutoButtonBinding;->func4Tv:Landroid/widget/RadioGroup;

    move-object v1, p10

    .line 11
    iput-object v1, v0, Lcn/mucang/android/jiakaoyi/teachingk2/lib/databinding/LayoutTraceAutoButtonBinding;->func5Tv:Landroid/widget/LinearLayout;

    move-object v1, p11

    .line 12
    iput-object v1, v0, Lcn/mucang/android/jiakaoyi/teachingk2/lib/databinding/LayoutTraceAutoButtonBinding;->func6Tv:Landroid/widget/TextView;

    move-object v1, p12

    .line 13
    iput-object v1, v0, Lcn/mucang/android/jiakaoyi/teachingk2/lib/databinding/LayoutTraceAutoButtonBinding;->func7Tv:Landroid/widget/TextView;

    move-object v1, p13

    .line 14
    iput-object v1, v0, Lcn/mucang/android/jiakaoyi/teachingk2/lib/databinding/LayoutTraceAutoButtonBinding;->notTurnCb:Landroid/widget/RadioButton;

    move-object/from16 v1, p14

    .line 15
    iput-object v1, v0, Lcn/mucang/android/jiakaoyi/teachingk2/lib/databinding/LayoutTraceAutoButtonBinding;->resultTv:Landroid/widget/TextView;

    move-object/from16 v1, p15

    .line 16
    iput-object v1, v0, Lcn/mucang/android/jiakaoyi/teachingk2/lib/databinding/LayoutTraceAutoButtonBinding;->turnCb:Landroid/widget/RadioButton;

    move-object/from16 v1, p16

    .line 17
    iput-object v1, v0, Lcn/mucang/android/jiakaoyi/teachingk2/lib/databinding/LayoutTraceAutoButtonBinding;->zhijiaoGroup:Landroidx/constraintlayout/widget/Group;

    return-void
.end method

.method public static bind(Landroid/view/View;)Lcn/mucang/android/jiakaoyi/teachingk2/lib/databinding/LayoutTraceAutoButtonBinding;
    .locals 20

    move-object/from16 v0, p0

    .line 1
    sget v1, Lcn/mucang/android/jiakaoyi/teachingk2/lib/R$id;->backTv:I

    .line 2
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    move-object v5, v2

    check-cast v5, Landroid/widget/TextView;

    if-eqz v5, :cond_0

    .line 3
    sget v1, Lcn/mucang/android/jiakaoyi/teachingk2/lib/R$id;->cefangGroup:I

    .line 4
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    move-object v6, v2

    check-cast v6, Landroidx/constraintlayout/widget/Group;

    if-eqz v6, :cond_0

    .line 5
    sget v1, Lcn/mucang/android/jiakaoyi/teachingk2/lib/R$id;->daokuGroup:I

    .line 6
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    move-object v7, v2

    check-cast v7, Landroidx/constraintlayout/widget/Group;

    if-eqz v7, :cond_0

    .line 7
    sget v1, Lcn/mucang/android/jiakaoyi/teachingk2/lib/R$id;->distanceEt:I

    .line 8
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    move-object v8, v2

    check-cast v8, Landroid/widget/EditText;

    if-eqz v8, :cond_0

    .line 9
    sget v1, Lcn/mucang/android/jiakaoyi/teachingk2/lib/R$id;->func1Tv:I

    .line 10
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    move-object v9, v2

    check-cast v9, Landroid/widget/TextView;

    if-eqz v9, :cond_0

    .line 11
    sget v1, Lcn/mucang/android/jiakaoyi/teachingk2/lib/R$id;->func2Tv:I

    .line 12
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    move-object v10, v2

    check-cast v10, Landroid/widget/TextView;

    if-eqz v10, :cond_0

    .line 13
    sget v1, Lcn/mucang/android/jiakaoyi/teachingk2/lib/R$id;->func3Tv:I

    .line 14
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    move-object v11, v2

    check-cast v11, Landroid/widget/TextView;

    if-eqz v11, :cond_0

    .line 15
    sget v1, Lcn/mucang/android/jiakaoyi/teachingk2/lib/R$id;->func4Tv:I

    .line 16
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    move-object v12, v2

    check-cast v12, Landroid/widget/RadioGroup;

    if-eqz v12, :cond_0

    .line 17
    sget v1, Lcn/mucang/android/jiakaoyi/teachingk2/lib/R$id;->func5Tv:I

    .line 18
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    move-object v13, v2

    check-cast v13, Landroid/widget/LinearLayout;

    if-eqz v13, :cond_0

    .line 19
    sget v1, Lcn/mucang/android/jiakaoyi/teachingk2/lib/R$id;->func6Tv:I

    .line 20
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    move-object v14, v2

    check-cast v14, Landroid/widget/TextView;

    if-eqz v14, :cond_0

    .line 21
    sget v1, Lcn/mucang/android/jiakaoyi/teachingk2/lib/R$id;->func7Tv:I

    .line 22
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    move-object v15, v2

    check-cast v15, Landroid/widget/TextView;

    if-eqz v15, :cond_0

    .line 23
    sget v1, Lcn/mucang/android/jiakaoyi/teachingk2/lib/R$id;->notTurnCb:I

    .line 24
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    move-object/from16 v16, v2

    check-cast v16, Landroid/widget/RadioButton;

    if-eqz v16, :cond_0

    .line 25
    sget v1, Lcn/mucang/android/jiakaoyi/teachingk2/lib/R$id;->resultTv:I

    .line 26
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    move-object/from16 v17, v2

    check-cast v17, Landroid/widget/TextView;

    if-eqz v17, :cond_0

    .line 27
    sget v1, Lcn/mucang/android/jiakaoyi/teachingk2/lib/R$id;->turnCb:I

    .line 28
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    move-object/from16 v18, v2

    check-cast v18, Landroid/widget/RadioButton;

    if-eqz v18, :cond_0

    .line 29
    sget v1, Lcn/mucang/android/jiakaoyi/teachingk2/lib/R$id;->zhijiaoGroup:I

    .line 30
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    move-object/from16 v19, v2

    check-cast v19, Landroidx/constraintlayout/widget/Group;

    if-eqz v19, :cond_0

    .line 31
    new-instance v1, Lcn/mucang/android/jiakaoyi/teachingk2/lib/databinding/LayoutTraceAutoButtonBinding;

    move-object v3, v1

    move-object v4, v0

    check-cast v4, Landroidx/constraintlayout/widget/ConstraintLayout;

    invoke-direct/range {v3 .. v19}, Lcn/mucang/android/jiakaoyi/teachingk2/lib/databinding/LayoutTraceAutoButtonBinding;-><init>(Landroidx/constraintlayout/widget/ConstraintLayout;Landroid/widget/TextView;Landroidx/constraintlayout/widget/Group;Landroidx/constraintlayout/widget/Group;Landroid/widget/EditText;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/RadioGroup;Landroid/widget/LinearLayout;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/RadioButton;Landroid/widget/TextView;Landroid/widget/RadioButton;Landroidx/constraintlayout/widget/Group;)V

    return-object v1

    .line 32
    :cond_0
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getResourceName(I)Ljava/lang/String;

    move-result-object v0

    .line 33
    new-instance v1, Ljava/lang/NullPointerException;

    const-string v2, "Missing required view with ID: "

    invoke-virtual {v2, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public static inflate(Landroid/view/LayoutInflater;)Lcn/mucang/android/jiakaoyi/teachingk2/lib/databinding/LayoutTraceAutoButtonBinding;
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 1
    invoke-static {p0, v0, v1}, Lcn/mucang/android/jiakaoyi/teachingk2/lib/databinding/LayoutTraceAutoButtonBinding;->inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lcn/mucang/android/jiakaoyi/teachingk2/lib/databinding/LayoutTraceAutoButtonBinding;

    move-result-object p0

    return-object p0
.end method

.method public static inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lcn/mucang/android/jiakaoyi/teachingk2/lib/databinding/LayoutTraceAutoButtonBinding;
    .locals 2

    .line 2
    sget v0, Lcn/mucang/android/jiakaoyi/teachingk2/lib/R$layout;->layout_trace_auto_button:I

    const/4 v1, 0x0

    invoke-virtual {p0, v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p0

    if-eqz p2, :cond_0

    .line 3
    invoke-virtual {p1, p0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 4
    :cond_0
    invoke-static {p0}, Lcn/mucang/android/jiakaoyi/teachingk2/lib/databinding/LayoutTraceAutoButtonBinding;->bind(Landroid/view/View;)Lcn/mucang/android/jiakaoyi/teachingk2/lib/databinding/LayoutTraceAutoButtonBinding;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public bridge synthetic getRoot()Landroid/view/View;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcn/mucang/android/jiakaoyi/teachingk2/lib/databinding/LayoutTraceAutoButtonBinding;->getRoot()Landroidx/constraintlayout/widget/ConstraintLayout;

    move-result-object v0

    return-object v0
.end method

.method public getRoot()Landroidx/constraintlayout/widget/ConstraintLayout;
    .locals 1

    .line 2
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/lib/databinding/LayoutTraceAutoButtonBinding;->rootView:Landroidx/constraintlayout/widget/ConstraintLayout;

    return-object v0
.end method
