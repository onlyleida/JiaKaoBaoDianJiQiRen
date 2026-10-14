.class public final Lcn/mucang/android/jiakaoyi/teachingk2/lib/databinding/LayoutTraceAutoStudyBinding;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/viewbinding/a;


# instance fields
.field public final backTv:Landroid/widget/TextView;

.field public final func1Tv:Landroid/widget/TextView;

.field public final resultTv:Landroid/widget/TextView;

.field private final rootView:Landroidx/constraintlayout/widget/ConstraintLayout;

.field public final signalInfo:Landroid/widget/TextView;


# direct methods
.method private constructor <init>(Landroidx/constraintlayout/widget/ConstraintLayout;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcn/mucang/android/jiakaoyi/teachingk2/lib/databinding/LayoutTraceAutoStudyBinding;->rootView:Landroidx/constraintlayout/widget/ConstraintLayout;

    .line 3
    iput-object p2, p0, Lcn/mucang/android/jiakaoyi/teachingk2/lib/databinding/LayoutTraceAutoStudyBinding;->backTv:Landroid/widget/TextView;

    .line 4
    iput-object p3, p0, Lcn/mucang/android/jiakaoyi/teachingk2/lib/databinding/LayoutTraceAutoStudyBinding;->func1Tv:Landroid/widget/TextView;

    .line 5
    iput-object p4, p0, Lcn/mucang/android/jiakaoyi/teachingk2/lib/databinding/LayoutTraceAutoStudyBinding;->resultTv:Landroid/widget/TextView;

    .line 6
    iput-object p5, p0, Lcn/mucang/android/jiakaoyi/teachingk2/lib/databinding/LayoutTraceAutoStudyBinding;->signalInfo:Landroid/widget/TextView;

    return-void
.end method

.method public static bind(Landroid/view/View;)Lcn/mucang/android/jiakaoyi/teachingk2/lib/databinding/LayoutTraceAutoStudyBinding;
    .locals 8

    .line 1
    sget v0, Lcn/mucang/android/jiakaoyi/teachingk2/lib/R$id;->backTv:I

    .line 2
    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    move-object v4, v1

    check-cast v4, Landroid/widget/TextView;

    if-eqz v4, :cond_0

    .line 3
    sget v0, Lcn/mucang/android/jiakaoyi/teachingk2/lib/R$id;->func1Tv:I

    .line 4
    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    move-object v5, v1

    check-cast v5, Landroid/widget/TextView;

    if-eqz v5, :cond_0

    .line 5
    sget v0, Lcn/mucang/android/jiakaoyi/teachingk2/lib/R$id;->resultTv:I

    .line 6
    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    move-object v6, v1

    check-cast v6, Landroid/widget/TextView;

    if-eqz v6, :cond_0

    .line 7
    sget v0, Lcn/mucang/android/jiakaoyi/teachingk2/lib/R$id;->signalInfo:I

    .line 8
    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    move-object v7, v1

    check-cast v7, Landroid/widget/TextView;

    if-eqz v7, :cond_0

    .line 9
    new-instance v0, Lcn/mucang/android/jiakaoyi/teachingk2/lib/databinding/LayoutTraceAutoStudyBinding;

    move-object v3, p0

    check-cast v3, Landroidx/constraintlayout/widget/ConstraintLayout;

    move-object v2, v0

    invoke-direct/range {v2 .. v7}, Lcn/mucang/android/jiakaoyi/teachingk2/lib/databinding/LayoutTraceAutoStudyBinding;-><init>(Landroidx/constraintlayout/widget/ConstraintLayout;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;)V

    return-object v0

    .line 10
    :cond_0
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

.method public static inflate(Landroid/view/LayoutInflater;)Lcn/mucang/android/jiakaoyi/teachingk2/lib/databinding/LayoutTraceAutoStudyBinding;
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 1
    invoke-static {p0, v0, v1}, Lcn/mucang/android/jiakaoyi/teachingk2/lib/databinding/LayoutTraceAutoStudyBinding;->inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lcn/mucang/android/jiakaoyi/teachingk2/lib/databinding/LayoutTraceAutoStudyBinding;

    move-result-object p0

    return-object p0
.end method

.method public static inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lcn/mucang/android/jiakaoyi/teachingk2/lib/databinding/LayoutTraceAutoStudyBinding;
    .locals 2

    .line 2
    sget v0, Lcn/mucang/android/jiakaoyi/teachingk2/lib/R$layout;->layout_trace_auto_study:I

    const/4 v1, 0x0

    invoke-virtual {p0, v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p0

    if-eqz p2, :cond_0

    .line 3
    invoke-virtual {p1, p0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 4
    :cond_0
    invoke-static {p0}, Lcn/mucang/android/jiakaoyi/teachingk2/lib/databinding/LayoutTraceAutoStudyBinding;->bind(Landroid/view/View;)Lcn/mucang/android/jiakaoyi/teachingk2/lib/databinding/LayoutTraceAutoStudyBinding;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public bridge synthetic getRoot()Landroid/view/View;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcn/mucang/android/jiakaoyi/teachingk2/lib/databinding/LayoutTraceAutoStudyBinding;->getRoot()Landroidx/constraintlayout/widget/ConstraintLayout;

    move-result-object v0

    return-object v0
.end method

.method public getRoot()Landroidx/constraintlayout/widget/ConstraintLayout;
    .locals 1

    .line 2
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/lib/databinding/LayoutTraceAutoStudyBinding;->rootView:Landroidx/constraintlayout/widget/ConstraintLayout;

    return-object v0
.end method
