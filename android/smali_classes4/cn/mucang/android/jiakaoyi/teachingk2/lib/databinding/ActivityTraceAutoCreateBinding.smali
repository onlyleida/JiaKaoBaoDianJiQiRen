.class public final Lcn/mucang/android/jiakaoyi/teachingk2/lib/databinding/ActivityTraceAutoCreateBinding;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/viewbinding/a;


# instance fields
.field public final divider:Landroid/view/View;

.field public final mapView:Lcn/mucang/android/jiakaoyi/hpmap/view/MapView;

.field private final rootView:Landroidx/constraintlayout/widget/ConstraintLayout;

.field public final studyLayout:Lcn/mucang/android/jiakaoyi/teachingk2/lib/databinding/LayoutTraceAutoStudyBinding;

.field public final threeLayout:Lcn/mucang/android/jiakaoyi/teachingk2/lib/databinding/LayoutTraceAutoButtonBinding;

.field public final threeTv:Landroid/widget/TextView;

.field public final titleLayout:Lcom/mucang/android/jiakaoyi/uilib/databinding/CommonTitleBinding;

.field public final twoTv:Landroid/widget/TextView;

.field public final wheelTv:Landroid/widget/TextView;


# direct methods
.method private constructor <init>(Landroidx/constraintlayout/widget/ConstraintLayout;Landroid/view/View;Lcn/mucang/android/jiakaoyi/hpmap/view/MapView;Lcn/mucang/android/jiakaoyi/teachingk2/lib/databinding/LayoutTraceAutoStudyBinding;Lcn/mucang/android/jiakaoyi/teachingk2/lib/databinding/LayoutTraceAutoButtonBinding;Landroid/widget/TextView;Lcom/mucang/android/jiakaoyi/uilib/databinding/CommonTitleBinding;Landroid/widget/TextView;Landroid/widget/TextView;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcn/mucang/android/jiakaoyi/teachingk2/lib/databinding/ActivityTraceAutoCreateBinding;->rootView:Landroidx/constraintlayout/widget/ConstraintLayout;

    .line 3
    iput-object p2, p0, Lcn/mucang/android/jiakaoyi/teachingk2/lib/databinding/ActivityTraceAutoCreateBinding;->divider:Landroid/view/View;

    .line 4
    iput-object p3, p0, Lcn/mucang/android/jiakaoyi/teachingk2/lib/databinding/ActivityTraceAutoCreateBinding;->mapView:Lcn/mucang/android/jiakaoyi/hpmap/view/MapView;

    .line 5
    iput-object p4, p0, Lcn/mucang/android/jiakaoyi/teachingk2/lib/databinding/ActivityTraceAutoCreateBinding;->studyLayout:Lcn/mucang/android/jiakaoyi/teachingk2/lib/databinding/LayoutTraceAutoStudyBinding;

    .line 6
    iput-object p5, p0, Lcn/mucang/android/jiakaoyi/teachingk2/lib/databinding/ActivityTraceAutoCreateBinding;->threeLayout:Lcn/mucang/android/jiakaoyi/teachingk2/lib/databinding/LayoutTraceAutoButtonBinding;

    .line 7
    iput-object p6, p0, Lcn/mucang/android/jiakaoyi/teachingk2/lib/databinding/ActivityTraceAutoCreateBinding;->threeTv:Landroid/widget/TextView;

    .line 8
    iput-object p7, p0, Lcn/mucang/android/jiakaoyi/teachingk2/lib/databinding/ActivityTraceAutoCreateBinding;->titleLayout:Lcom/mucang/android/jiakaoyi/uilib/databinding/CommonTitleBinding;

    .line 9
    iput-object p8, p0, Lcn/mucang/android/jiakaoyi/teachingk2/lib/databinding/ActivityTraceAutoCreateBinding;->twoTv:Landroid/widget/TextView;

    .line 10
    iput-object p9, p0, Lcn/mucang/android/jiakaoyi/teachingk2/lib/databinding/ActivityTraceAutoCreateBinding;->wheelTv:Landroid/widget/TextView;

    return-void
.end method

.method public static bind(Landroid/view/View;)Lcn/mucang/android/jiakaoyi/teachingk2/lib/databinding/ActivityTraceAutoCreateBinding;
    .locals 11

    .line 1
    sget v0, Lcn/mucang/android/jiakaoyi/teachingk2/lib/R$id;->divider:I

    .line 2
    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 3
    sget v0, Lcn/mucang/android/jiakaoyi/teachingk2/lib/R$id;->mapView:I

    .line 4
    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    move-object v4, v1

    check-cast v4, Lcn/mucang/android/jiakaoyi/hpmap/view/MapView;

    if-eqz v4, :cond_0

    .line 5
    sget v0, Lcn/mucang/android/jiakaoyi/teachingk2/lib/R$id;->studyLayout:I

    .line 6
    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 7
    invoke-static {v1}, Lcn/mucang/android/jiakaoyi/teachingk2/lib/databinding/LayoutTraceAutoStudyBinding;->bind(Landroid/view/View;)Lcn/mucang/android/jiakaoyi/teachingk2/lib/databinding/LayoutTraceAutoStudyBinding;

    move-result-object v5

    .line 8
    sget v0, Lcn/mucang/android/jiakaoyi/teachingk2/lib/R$id;->threeLayout:I

    .line 9
    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 10
    invoke-static {v1}, Lcn/mucang/android/jiakaoyi/teachingk2/lib/databinding/LayoutTraceAutoButtonBinding;->bind(Landroid/view/View;)Lcn/mucang/android/jiakaoyi/teachingk2/lib/databinding/LayoutTraceAutoButtonBinding;

    move-result-object v6

    .line 11
    sget v0, Lcn/mucang/android/jiakaoyi/teachingk2/lib/R$id;->threeTv:I

    .line 12
    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    move-object v7, v1

    check-cast v7, Landroid/widget/TextView;

    if-eqz v7, :cond_0

    .line 13
    sget v0, Lcn/mucang/android/jiakaoyi/teachingk2/lib/R$id;->titleLayout:I

    .line 14
    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 15
    invoke-static {v1}, Lcom/mucang/android/jiakaoyi/uilib/databinding/CommonTitleBinding;->bind(Landroid/view/View;)Lcom/mucang/android/jiakaoyi/uilib/databinding/CommonTitleBinding;

    move-result-object v8

    .line 16
    sget v0, Lcn/mucang/android/jiakaoyi/teachingk2/lib/R$id;->twoTv:I

    .line 17
    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    move-object v9, v1

    check-cast v9, Landroid/widget/TextView;

    if-eqz v9, :cond_0

    .line 18
    sget v0, Lcn/mucang/android/jiakaoyi/teachingk2/lib/R$id;->wheelTv:I

    .line 19
    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    move-object v10, v1

    check-cast v10, Landroid/widget/TextView;

    if-eqz v10, :cond_0

    .line 20
    new-instance v0, Lcn/mucang/android/jiakaoyi/teachingk2/lib/databinding/ActivityTraceAutoCreateBinding;

    move-object v2, p0

    check-cast v2, Landroidx/constraintlayout/widget/ConstraintLayout;

    move-object v1, v0

    invoke-direct/range {v1 .. v10}, Lcn/mucang/android/jiakaoyi/teachingk2/lib/databinding/ActivityTraceAutoCreateBinding;-><init>(Landroidx/constraintlayout/widget/ConstraintLayout;Landroid/view/View;Lcn/mucang/android/jiakaoyi/hpmap/view/MapView;Lcn/mucang/android/jiakaoyi/teachingk2/lib/databinding/LayoutTraceAutoStudyBinding;Lcn/mucang/android/jiakaoyi/teachingk2/lib/databinding/LayoutTraceAutoButtonBinding;Landroid/widget/TextView;Lcom/mucang/android/jiakaoyi/uilib/databinding/CommonTitleBinding;Landroid/widget/TextView;Landroid/widget/TextView;)V

    return-object v0

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

.method public static inflate(Landroid/view/LayoutInflater;)Lcn/mucang/android/jiakaoyi/teachingk2/lib/databinding/ActivityTraceAutoCreateBinding;
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 1
    invoke-static {p0, v0, v1}, Lcn/mucang/android/jiakaoyi/teachingk2/lib/databinding/ActivityTraceAutoCreateBinding;->inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lcn/mucang/android/jiakaoyi/teachingk2/lib/databinding/ActivityTraceAutoCreateBinding;

    move-result-object p0

    return-object p0
.end method

.method public static inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lcn/mucang/android/jiakaoyi/teachingk2/lib/databinding/ActivityTraceAutoCreateBinding;
    .locals 2

    .line 2
    sget v0, Lcn/mucang/android/jiakaoyi/teachingk2/lib/R$layout;->activity_trace_auto_create:I

    const/4 v1, 0x0

    invoke-virtual {p0, v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p0

    if-eqz p2, :cond_0

    .line 3
    invoke-virtual {p1, p0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 4
    :cond_0
    invoke-static {p0}, Lcn/mucang/android/jiakaoyi/teachingk2/lib/databinding/ActivityTraceAutoCreateBinding;->bind(Landroid/view/View;)Lcn/mucang/android/jiakaoyi/teachingk2/lib/databinding/ActivityTraceAutoCreateBinding;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public bridge synthetic getRoot()Landroid/view/View;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcn/mucang/android/jiakaoyi/teachingk2/lib/databinding/ActivityTraceAutoCreateBinding;->getRoot()Landroidx/constraintlayout/widget/ConstraintLayout;

    move-result-object v0

    return-object v0
.end method

.method public getRoot()Landroidx/constraintlayout/widget/ConstraintLayout;
    .locals 1

    .line 2
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/lib/databinding/ActivityTraceAutoCreateBinding;->rootView:Landroidx/constraintlayout/widget/ConstraintLayout;

    return-object v0
.end method
